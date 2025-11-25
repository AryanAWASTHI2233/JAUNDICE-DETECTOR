:- dynamic known/2.
:- dynamic patient_history/2.
:- dynamic symptom_weight/2.

% Initial symptom weights (can be updated dynamically)
symptom_weight(yellowing, 0.9).
symptom_weight(change_in_urine_and_stool, 0.8).
symptom_weight(itchy_skin, 0.6).
symptom_weight(fatigue, 0.5).
symptom_weight(abdominal_discomfort, 0.5).
symptom_weight(nausea, 0.4).
symptom_weight(vomiting, 0.4).
symptom_weight(loss_of_apetite, 0.5).
symptom_weight(weight_loss, 0.6).
symptom_weight(fever, 0.4).

% LIST OF ALL SYMPTOMS
symptom_list([
    yellowing,
    change_in_urine_and_stool,
    itchy_skin,
    fatigue,
    abdominal_discomfort,
    nausea,
    vomiting,
    loss_of_apetite,
    weight_loss,
    fever
]).

% ENTRY POINT
jd :-
    write('Enter your name: '),
    read(Name),
    format('Welcome, ~w!~n', [Name]),
    ask_all_symptoms,
    calculate_risk(Risk),
    give_result(Name, Risk),
    save_history(Name, Risk),
    nl, write('--- END OF ANALYSIS ---'), nl.

% --------------------------------------------------------------------
% RECURSION: ASK EACH SYMPTOM
% --------------------------------------------------------------------
ask_all_symptoms :-
    symptom_list(List),
    ask_list(List).

ask_list([]).
ask_list([H|T]) :-
    ask_symptom(H),
    ask_list(T).

ask_symptom(Symptom) :-
    format('Do you have ~w? (yes/no): ', [Symptom]),
    read(Ans),
    process_answer(Symptom, Ans).

process_answer(Symptom, yes) :-
    assertz(known(Symptom, yes)).
process_answer(Symptom, no) :-
    assertz(known(Symptom, no)).
process_answer(_, _) :-
    write('Invalid input. Skipped.'), nl.

% --------------------------------------------------------------------
% RISK CALCULATION (WEIGHTED AVERAGE)
% --------------------------------------------------------------------
calculate_risk(RiskScore) :-
    findall((Symptom, Weight),
           (known(Symptom, yes), symptom_weight(Symptom, Weight)),
            Pairs),

    extract_weights(Pairs, WeightList),
    sum_list(WeightList, Sum),
    length(WeightList, Count),

    ( Count =:= 0 ->
        RiskScore = 0.0
    ;
        RiskScore is Sum / Count
    ).

extract_weights([], []).
extract_weights([(_,W)|T], [W|L]) :-
    extract_weights(T, L).

% --------------------------------------------------------------------
% RISK EXPLANATION
% --------------------------------------------------------------------
give_result(Name, Risk) :-
    nl,
    format('Risk score for ~w is: ~2f~n', [Name, Risk]),
    interpret_risk(Risk).

interpret_risk(R) :-
    ( R >= 0.75 ->
        write('High Risk: Seek a doctor immediately.')
    ; R >= 0.40 ->
        write('Medium Risk: Possible jaundice, monitor symptoms.')
    ;
        write('Low Risk: Unlikely jaundice.')
    ),
    nl.

% --------------------------------------------------------------------
% SAVE USER HISTORY
% --------------------------------------------------------------------
save_history(Name, Risk) :-
    assertz(patient_history(Name, Risk)),
    write('Your result has been saved.'), nl.

% --------------------------------------------------------------------
% STRING UTILITIES (EXAMPLES)
% --------------------------------------------------------------------
string_contains(Big, Small) :-
    sub_string(Big, _, _, _, Small).

to_uppercase(Input, Output) :-
    string_upper(Input, Output).

% --------------------------------------------------------------------
% KNOWLEDGE-GRAPH STYLE REASONING
% --------------------------------------------------------------------
related_symptom(yellowing, liver_issue).
related_symptom(change_in_urine_and_stool, liver_issue).
related_symptom(itchy_skin, bilirubin_issue).
related_symptom(fatigue, energy_depletion).

symptom_cause(Symptom, Cause) :-
    related_symptom(Symptom, Cause),
    known(Symptom, yes).

explain_causes :-
    findall((Symptom, Cause), symptom_cause(Symptom, Cause), List),
    ( List = [] ->
        write('No cause inference possible.')
    ;
        write('Possible causes:'), nl, print_pairs(List)
    ).

print_pairs([]).
print_pairs([(S,C)|T]) :-
    format('~w may indicate ~w.~n', [S, C]),
    print_pairs(T).





















