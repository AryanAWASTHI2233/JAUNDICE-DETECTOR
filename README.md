# JAUNDICE-DETECTOR
THIS PROJECT HEPLS YOU TO GUIDE THROUGH THE SYMPTOMS OF SPREADING JAUNDICE AND TELLS YOU THE MEASURES OF PRECAUTION
% JAUNDICE PREDICTOR
% ASK USER NAME
amihavingjaundice:-
 write('What is your NAME:'),
 read(INPUT),
 write('welcome to JAUNDICE DETECTOR '), write(INPUT), write('!'), nl,
 symptoms_are.
%----------display SYMPTOMS--------------
symptoms_are :-
    nl,
    write('SELECT SYMPTOM :'), nl,
    write('1. [Yellowing]'), nl,
    write('2. [Change_in_urine_and_stool]'), nl,
    write('3. [Itchy_skin]'), nl,
    write('4. [Fatigue]'), nl,
    write('5. [Abdominal_discomfort]'), nl,
    write('6. [Nausea]'), nl,
    write('7. [Vomiting]'), nl,
    write('8. [Loss_of_apetite]'), nl,
    write('9. [Weight_loss]'), nl,
    write('10. [Fever]'), nl,
    nl,
    write('Enter Number: '), nl,
    read(Choice),
    symptoms(Choice).

%--------SYMPTOM FACTS-----------------
symptoms(1):- user_have(yellowing).
symptoms(2):- user_have(change_in_urine_and_stool).
symptoms(3):- user_have(itchy_skin).
symptoms(4):- user_have(fatigue).
symptoms(5):- user_have(abdominal_discomfort).
symptoms(6):- user_have(nausea).
symptoms(7):- user_have(vomiting).
symptoms(8):- user_have(loss_of_apetite).
symptoms(9):- user_have(weight_loss).
symptoms(10):- user_have(fever).
symptoms( ):-
    write('invalid choice, try again.'),nl,
    symptoms_are.
%symptom facts
symptom(yellowing).
symptom(change_in_urine_and_stool).
symptom(itchy_skin).
symptom(fatigue).
symptom(abdominal_discomfort).
symptom(nausea).
symptom(vomiting).
symptom(loss_of_apetite).
symptom(weight_loss).
symptom(fever).
%symptom confirmer
user_have(X):-
    symptom(X),
    write('##SYMPTOM DETECTED:'), write(X),nl,
    write('{you might be infected},'),nl,
    write('{avoid social contacts},'),nl,
    write('{Eat healthy and avoid junk food},'),nl,
    write('{See a doctor quickly}, '),nl,
    write('!').
