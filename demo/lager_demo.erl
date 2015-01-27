-module(lager_demo).
-export([start/0, levels_demo/0, record_demo/0]).
-compile([{parse_transform, lager_transform}]).

-record(contact, {name, surname, phones = [], emails = []}).

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

record_demo() ->
  Record = #contact{name = "Janusz", surname = "Tester", emails = ["janusz@testy.com"], phones = [123, 456, 789]},
  lager:info("Pretty record ~p", [lager:pr(Record, ?MODULE)]).