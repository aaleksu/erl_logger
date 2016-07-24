-module(logger).
-vsn(0.1).

-export([log/1, log/2, log/3]).

-define(LOGGER_FILE, "/tmp/erlang_logger.log").
-define(LOGGER_MODE, [append]).

log(Msg) ->
    log(?LOGGER_FILE, Msg, ?LOGGER_MODE)
.

log(File, Msg) ->
    log(File, Msg, ?LOGGER_MODE)
.

log(File, Msg, Mode) ->
    file:write_file(File, io_lib:format("~s\n", [Msg]), Mode)
.
