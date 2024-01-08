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
  Spinner(repeater: Repeater(State), frames: Array(String))
}

type State {
  State(text: String, colour: fn(String) -> String)
}

pub opaque type Builder {
  Builder(frames: List(String), text: String, colour: fn(String) -> String)
}

/// Start a spinner that runs concurrently in another Erlang process or
/// JavaScript task.
///
pub fn new(text: String) -> Builder {
  Builder(snake_frames, text, ansi.pink)
}

pub fn with_frames(builder: Builder, frames: List(String)) -> Builder {
  Builder(..builder, frames: frames)
}

pub fn with_colour(builder: Builder, colour: fn(String) -> String) -> Builder {
  Builder(..builder, colour: colour)
}

pub fn start(builder: Builder) -> Spinner {
  let frames = glearray.from_list(builder.frames)
  let repeater =
    repeatedly.call(80, State(builder.text, builder.colour), fn(state, i) {
      print(frames, state, i)
      state
    })
  Spinner(repeater, frames)
}

pub fn set_text(spinner: Spinner, text: String) -> Nil {
  repeatedly.update_state(spinner.repeater, fn(state) {
    State(..state, text: text)
  })
}

pub fn set_colour(spinner: Spinner, colour: fn(String) -> String) -> Nil {
  repeatedly.update_state(spinner.repeater, fn(state) {
    State(..state, colour: colour)
  })
}

/// Stop the spinner.
///
/// This should be called before your program ends to re-enable the terminal
/// cursor.
///
pub fn stop(spinner: Spinner) -> Nil {
  repeatedly.stop(spinner.repeater)
  // Show cursor
  io.println("\u{001b}[?25h")
}

fn print(frames: Array(String), state: State, index: Int) -> Nil {
  let hide_cursor = "\u{001b}[?25l"
  let clear_line = "\u{001b}[2K"
  let go_to_start = "\r"
  io.print(
    hide_cursor
      <> clear_line
      <> go_to_start
      <> state.colour(frame(frames, index))
      <> " "
      <> state.text,
  )
}

fn frame(frames: Array(String), index: Int) -> String {
  let assert Ok(frame) = glearray.get(frames, index % glearray.length(frames))
  frame
}
