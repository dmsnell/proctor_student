%%%-------------------------------------------------------------------
%% @doc proctor_student public API
%% @end
%%%-------------------------------------------------------------------

-module(proctor_student_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    web_server:start(),
    proctor_student_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
