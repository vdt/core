include Core_kernel.Std_kernel

(* Included here instead of in common because time depends on common *)
include Date.Export

(* Can't go in Common for circular-reference reasons *)
let sec = Time.Span.of_sec

let ( ^/ ) = Core_filename.concat

module Caml = Caml
module Command = Command
module Backtrace = Backtrace
module Bigbuffer = Bigbuffer
module Bigstring = Bigstring
module Bigstring_marshal = Bigstring_marshal
module Linux_ext = Linux_ext
module Condition = Core_condition
module Crc = Crc
module Date = Date
module Daemon = Daemon
module Process_env = Process_env
module Filename = Core_filename
module Gc = Core_gc
module Interval = Interval
module Iobuf = Iobuf
module Lock_file = Lock_file
module Mutex = Core_mutex
module Nano_mutex = Nano_mutex
module Piecewise_linear = Piecewise_linear
module Signal = Signal
module Squeue = Squeue
module Sys = Core_sys
module Thread = Core_thread
module Time = Time
module Time_stamp_counter = Time_stamp_counter
module Timing_wheel = Timing_wheel
module Unix = Core_unix
module User_and_group = User_and_group
module Uuid = Uuid
INCLUDE "version_defaults.mlh"
IFDEF BUILD_VERSION_UTIL THEN
  module Version_util = Version_util
ENDIF

let _squelch_unused_module_warning_ = ()
