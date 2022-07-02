-module(www_index).
-include_lib("nitrogen_core/include/wf.hrl").

-export([
    main/0
]).


main() ->
    #template { text="Loaded" }.
