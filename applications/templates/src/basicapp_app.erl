%%% @author {{author}} <{{email}}>
%%% @copyright (C) {{year}} {{author}}
%%% @doc
%%% 
%%% @end
%%% Created :  {{created}}: {{author}} <{{email}}>
-module({{appid}}_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

-spec(start/2 :: (StartType :: term(), StartArgs :: term()) -> tuple(ok, pid()) | tuple(error, term())).
start(_StartType, _StartArgs) ->
    case {{appid}}:start_link() of
	{ok, P} -> {ok, P};
	{error, {already_started, P} } -> {ok, P};
	{error, _}=E -> E
    end.

stop(_State) ->
    ok.
