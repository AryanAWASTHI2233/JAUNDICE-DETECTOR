**Project Title**

Jaundice Detection Expert System using Prolog


---

**Project Overview**

This project is a simple expert system built using Prolog, designed to help users identify the presence of jaundice-related symptoms. The system interacts with the user, asks for their name, and then presents a list of symptoms. Based on the user’s selected symptoms, it provides feedback and suggests whether they should seek medical attention.

The system demonstrates rule-based reasoning, user interaction, knowledge-base creation, and menu-driven program design in Prolog — making it ideal for academic projects.


---

 **Features**

 1. User Interaction

Asks user’s name

Greets user and starts evaluation automatically


✔ 2. Symptom Menu

Displays a list of 10 common jaundice symptoms

Lets the user select symptoms using numbers


✔ 3. Knowledge-base

Contains symptom facts such as:

yellowing of skin

nausea

vomiting

fatigue, etc.



✔ 4. Automated Processing

Detects the chosen symptom

Prints informative output

Optionally loops back to check another symptom


✔ 5. Error Handling

Detects invalid choices

Re-displays menu automatically


✔ 6. Beginner-Friendly Expert System

Demonstrates AI concepts like rule-based inference

Easy to expand by adding more diseases and symptoms



---

**Technologies / Tools Used**

Prolog (SWI-Prolog recommended)

Basic text editor or SWI-Prolog built-in editor

Command-line interface (for running the program)



---

**Steps to Install & Run the Project**

1. Install SWI-Prolog

Download from:
https://www.swi-prolog.org/download/stable

Install according to your OS.


---

2. Create a Prolog File

Create a file named:

jaundice.pl

Paste your Prolog code inside it.


---

3. Load the Program

Open SWI-Prolog and run:

?- [jaundice].


---

4. Start the System

Run the main predicate:

?- jd.

The program will:

1. Ask your name


2. Display symptoms


3. Ask for your selection


4. Give results




---

**Instructions for Testing**

✔ 1. Test with a valid symptom number

Example:

?- jd.
What is your name: aryan.
Welcome to jaundice detector aryan!
Select symptom:
1. yellowing
...
Enter number:
|: 1.

Expected Output:

SYMPTOM DETECTED: yellowing
See a doctor quickly!


---

✔ 2. Test invalid input

Enter a wrong number like:

15.

Expected:

Invalid choice, try again.


---

✔ 3. Test multiple symptoms (optional feature)

Enable loop and test selecting different symptoms repeatedly.


---

✔ 4. Test edge cases

Pressing Enter without input

Entering text instead of a number

Case-sensitivity in "yes/no" (if your system asks)
 
 
%JAUNDICE-DETECTOR
%THIS PROJECT HEPLS YOU TO GUIDE THROUGH THE SYMPTOMS OF SPREADING JAUNDICE AND TELLS YOU THE MEASURES OF PRECAUTION
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
