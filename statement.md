● Problem Statement

Jaundice is a common medical condition caused by elevated bilirubin levels, often indicating liver malfunction, hepatitis, or biliary obstruction. Early detection of the symptoms is crucial for timely medical intervention, but many individuals fail to recognize symptoms early or confuse them with other health issues.
This project aims to build an intelligent, rule-based Prolog expert system that interacts with the user, asks symptom-related questions, and predicts the likelihood of jaundice based on weighted symptom analysis. The system provides a risk assessment score and recommendations for further medical consultation.


---

● Scope of the Project

This project focuses on developing a knowledge-based diagnostic tool using Prolog, which uses recursion, dynamic databases, list processing, and weighted logic to estimate the risk of jaundice.
The scope includes:

Collecting user responses for a predefined list of symptoms.

Using dynamic rules to store and process user data.

Applying weighted scoring for a more “machine-learning inspired” prediction.

Mapping symptoms to possible medical causes using a simple knowledge graph.

Generating a final risk percentage and advice based on the score.

Storing previous user diagnosis in a dynamic database.


The system does not replace professional medical advice; it only assists with early symptom-based detection.


---

● Target Users

The system is intended for:

1. General public who want a preliminary assessment of jaundice symptoms.


2. Students and beginners in AI/Prolog who want to understand expert systems and knowledge-based reasoning.


3. Medical technology learners interested in rule-based diagnosis systems.


4. Developers exploring recursion, dynamic facts, and knowledge representation in Prolog.



It is not intended for clinical or hospital-grade diagnosis.


---

● High-Level Features

1. Interactive Questioning System

Asks users about symptoms one by one using recursive list traversal.



2. Dynamic Symptom Storage (Knowledge Base)

Uses assertz/1 to store user responses during runtime.



3. Weighted Risk Prediction

Each symptom has an associated weight.

System calculates a risk score using weighted averages.



4. Rule-Based Reasoning + Knowledge Graph

Maps symptoms to potential causes (e.g., bilirubin issues, liver malfunction).



5. User Diagnosis History

Stores previous results using patient_history/2.



6. String and Utility Operations

Includes string operations such as substring checking and uppercase conversion.



7. Interpretation Layer

Classifies risk into: Low, Medium, High

Provides recommendation messages.



8. Clean, Modular, Extensible Architecture

Easy to add new symptoms, weights, or medical rules.
