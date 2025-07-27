use fltk::{app, dialog, enums::Shortcut, menu, prelude::*, window::Window, image::PngImage, input::Input, frame::Frame, valuator::Slider, button::Button};
use once_cell::sync::Lazy;
use std::{collections::HashMap, thread, time::Duration};
use rodio::{source::Source};
use rodio::source::SineWave;
use current_platform::{CURRENT_PLATFORM, COMPILED_ON};
use compile_time;
use gettext_ng::Catalog;
use sys_locale::get_locale;
use std::path::Path;
use std::fs::File;

const VERSION: &str = env!("CARGO_PKG_VERSION");


static MORSE_CODE: Lazy<HashMap<char, &str>> = Lazy::new(|| {
    [
        ('A', ".-"),   ('B', "-..."), ('C', "-.-."), ('D', "-.."),  ('E', "."),
        ('F', "..-."), ('G', "--."),  ('H', "...."), ('I', ".."),   ('J', ".---"),
        ('K', "-.-"),  ('L', ".-.."), ('M', "--"),   ('N', "-."),   ('O', "---"),
        ('P', ".--."), ('Q', "--.-"), ('R', ".-."),  ('S', "..."),  ('T', "-"),
        ('U', "..-"),  ('V', "...-"), ('W', ".--"),  ('X', "-..-"), ('Y', "-.--"),
        ('Z', "--.."),
        ('1', ".----"),('2', "..---"),('3', "...--"),('4', "....-"),('5', "....."),
        ('6', "-...."),('7', "--..."),('8', "---.."),('9', "----."),('0', "-----"),
        (' ', "/"),
    ].iter().cloned().collect()
});

fn text_to_morse(text: &str) -> String {
    text.to_uppercase()
        .chars()
        .filter_map(|c| MORSE_CODE.get(&c).copied())
        .collect::<Vec<_>>()
        .join(" ")
}

fn play_morse(morse: &str, wpm: u32) {
    let dot_duration = Duration::from_millis(1200 / wpm as u64); // 1 Einheit
    let dash_duration = dot_duration * 3;
    let intra_char_gap = dot_duration;
    let inter_char_gap = dot_duration * 3;
    let word_gap = dot_duration * 7;

    let stream_handle = rodio::OutputStreamBuilder::open_default_stream()
    .expect("open default audio stream");


    for symbol in morse.chars() {
        match symbol {
            '.' => {
                let sink = rodio::Sink::connect_new(&stream_handle.mixer());
                sink.append(SineWave::new(700.0).take_duration(dot_duration));
                sink.sleep_until_end();
                thread::sleep(intra_char_gap);
            }
            '-' => {
                let sink = rodio::Sink::connect_new(&stream_handle.mixer());
                sink.append(SineWave::new(700.0).take_duration(dash_duration));
                sink.sleep_until_end();
                thread::sleep(intra_char_gap);
            }
            ' ' => {
                thread::sleep(inter_char_gap);
            }
            '/' => {
                thread::sleep(word_gap);
            }
            _ => {}
        }
    }
}


fn main() {
    let current_locale = get_locale().unwrap_or_else(|| String::from("en-US"));
    let filename = format!("{}.mo", current_locale);
    let file_path = format!("{current_locale}.mo");
    let path = Path::new(&file_path);

    let compile_datetime = compile_time::datetime_str!();
    let rustc_version = compile_time::rustc_version_str!();

    if path.exists() {
        println!("LanguageFile: {file_path} exists!");
        let f = File::open(filename).expect("could not open the catalog");
        let catalog = Catalog::parse(f).expect("could not parse the catalog");   

        let app = app::App::default();
        let mut wind = Window::new(100, 100, 400, 300, catalog.gettext("Morse Code Trainer"));
        // Icon laden (PNG)
        let icon = PngImage::load("icon.png").expect("Icon could not be loaded");
        wind.set_icon(Some(icon));

        let mut input = Input::new(120, 90, 300, 30, "Text:");
        let mut morse_frame = Frame::new(120, 130, 300, 30, "");

        let mut slider = Slider::new(20, 70, 20, 50, "WPM:");
        slider.set_range(5.0, 40.0);
        slider.set_value(25.0);
        let mut play_btn = Button::new(120, 250, 100, 40, "Play");



        // Create a menu bar
        let mut menubar = menu::MenuBar::new(0, 0, 400, 30, "");

        // Add File > Quit
        menubar.add(
            catalog.gettext("File/Quit\t"),
            Shortcut::Ctrl | 'q',
            menu::MenuFlag::Normal,
            |_| app::quit(),
        );

        // Add Info > About
        menubar.add(
            catalog.clone().gettext("Info/About"),
            Shortcut::Ctrl | 'b',
            menu::MenuFlag::Normal,
            move |_| {
                let about_msg = format!(
                    "\n{} {VERSION}, \nPlatform: {CURRENT_PLATFORM} \nCompiled on: {COMPILED_ON} \nRust Version: {rustc_version} \nComplied at {compile_datetime} \nAutor: dd6ds", catalog.gettext("Morse Code Trainer\n\nVersion: "),

            );
                dialog::message_default(&about_msg);
            },
        );




        wind.end();
        wind.show();


        input.set_trigger(fltk::enums::CallbackTrigger::Changed);
        input.set_value("CQ CQ CQ DD6DS");

        let update_morse = move |input: &Input, morse_frame: &mut Frame| {
            let morse = text_to_morse(&input.value());
            morse_frame.set_label(&morse);
        };

        let input_c = input.clone();
        let mut morse_frame_c = morse_frame.clone();
        input.set_callback(move |_| update_morse(&input_c, &mut morse_frame_c));

        let input_c = input.clone();
        let _morse_frame_c = morse_frame.clone();
        play_btn.set_callback(move |_| {
            let morse = text_to_morse(&input_c.value());
            let wpm = slider.value() as u32;
            thread::spawn(move || play_morse(&morse, wpm));
        });

        update_morse(&input, &mut morse_frame);    


        app.run().unwrap();
 } else {
    println!("File: {file_path} does not exist! Program abort");
}

}
