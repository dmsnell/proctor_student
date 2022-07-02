-module(nitrogen_main_handler).

-export([
    run/0,
    run/1,
    ws_init/0
]).


handlers() ->
    ok.


run() ->
    handlers(),
    wf_core:run().

run(_Args) ->
    run().


ws_init() ->
    handlers().
