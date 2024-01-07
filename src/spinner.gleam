import glearray.{type Array}
import repeatedly.{type Repeater}
import gleam_community/ansi
import gleam/io

pub const clock_frames = [
  "🕛", "🕐", "🕑", "🕒", "🕓", "🕔", "🕕", "🕖", "🕗", "🕘",
  "🕙", "🕚",
]

pub const half_circle_frames = ["◐", "◓", "◑", "◒"]

pub const moon_frames = [
  "🌑", "🌒", "🌓", "🌔", "🌕", "🌖", "🌗", "🌘",
]

pub const negative_dots_frames = [
  "⣾", "⣽", "⣻", "⢿", "⡿", "⣟", "⣯", "⣷",
]

pub const snake_frames = [
  "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏",
]

pub const triangle_frames = ["◢", "◣", "◤", "◥"]

pub const walking_frames = ["⢄", "⢂", "⢁", "⡁", "⡈", "⡐", "⡠"]

pub opaque type Spinner {
  Spinner(repeater: Repeater(String), frames: Array(String))
}

pub opaque type Builder {
  Builder(frames: List(String), text: String)
}

// TODO: document
pub fn new(text: String) -> Builder {
  Builder(snake_frames, text)
}

// TODO: document
// TODO: test
pub fn with_frames(builder: Builder, frames: List(String)) -> Builder {
  Builder(..builder, frames: frames)
}

// TODO: document
pub fn start(builder: Builder) -> Spinner {
  let frames = glearray.from_list(builder.frames)
  let repeater =
    repeatedly.call(80, builder.text, fn(text, i) {
      print(frames, text, i)
      text
    })
  Spinner(repeater, frames)
}

pub fn set_text(spinner: Spinner, text: String) -> Nil {
  repeatedly.set_state(spinner.repeater, text)
}

pub fn stop(spinner: Spinner) -> Nil {
  repeatedly.stop(spinner.repeater)
  // Show cursor
  io.println("\u{001b}[?25h")
}

fn print(frames: Array(String), text: String, index: Int) -> Nil {
  let hide_cursor = "\u{001b}[?25l"
  let clear_line = "\u{001b}[2K"
  let go_to_start = "\r"
  io.print(
    hide_cursor
      <> clear_line
      <> go_to_start
      <> ansi.pink(frame(frames, index))
      <> " "
      <> text,
  )
}

fn frame(frames: Array(String), index: Int) -> String {
  let assert Ok(frame) = glearray.get(frames, index % glearray.length(frames))
  frame
}
