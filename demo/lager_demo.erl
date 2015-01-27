-module(lager_demo).
-export([start/0, levels_demo/0]).
-compile([{parse_transform, lager_transform}]).

start() ->
  lager:start(),
  ok.

levels_demo() ->
  lager:debug("debug"),
  lager:info("info"),
  lager:notice("notice"),
  lager:warning("warning"),
  lager:error("error"),
  lager:critical("critical"),
  lager:alert("alert"),
  lager:emergency("emergency").
