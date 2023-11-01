%%%-------------------------------------------------------------------
%% @doc awesome public API
%% @end
%%%-------------------------------------------------------------------
-module(awesome_app).
-behaviour(application).
-export([start/2, stop/1]).

%%--------------------------------------------------------------------
%%
%%--------------------------------------------------------------------
start(_, _) ->
    inets:start(),
    awesome_sup:start_link().

%%--------------------------------------------------------------------
%%
%%--------------------------------------------------------------------
stop(_State) -> 
    ok.

    
