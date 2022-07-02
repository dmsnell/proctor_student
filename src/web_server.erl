-module(web_server).

-export([
    start/0
]).


%%%
%%% Interface functions
%%%

start() ->
    Dispatch = cowboy_router:compile([
        {'_', [
            {"/static/[...]", cowboy_static, {priv_dir, proctor_student, "web/static"}},
            {"/[...]", cowboy_simple_bridge_anchor, []}
        ]}
    ]),
    {ok, _} = cowboy:start_clear(
        web_http_listener,
        [{port, port()}],
        #{env => #{dispatch => Dispatch}}
    ),
    ok.


%%%
%%% Internal functions
%%% 

port() ->
    {ok, Port} = application:get_env(proctor_student, web_port),
    Port.
