% Rules 
ask_symptoms :-
    write('Do you have a fever? (yes/no)'), nl,
    read(Answer1),
    (   Answer1 = yes -> assert(symptom(patient,fever)); true),
    write('Do you have a runny nose? (yes/no)'), nl,
    read(Answer2),
    (    Answer2 = yes -> assert(symptom(patient,runny_nose)); true),
    write('Do you have a headache? (yes/no)'), nl,
    read(Answer3),
    (    Answer3 = yes -> assert(symptom(patient,headache)); true),
    write('Do you have a cough? (yes/no)'), nl,
    read(Answer4),
    (    Answer4 = yes -> assert(symptom(patient,cough)); true),
    true.

suggest_diagnosis :-
    (   symptom(patient,fever), symptom(patient,cough), symptom(patient,headache) ->
        write('Based on your symptoms, you may have the flu.'), nl
    ;   symptom(patient,cough), symptom(patient,runny_nose) ->
        write('Based on your symptoms, you may have a common cold.'), nl

/* Example Usage */
start_diagnosis :-
    write('Welcome to the Medical Diagnosis System!'), nl,
    write('Please answer the following questions about your symptoms:'), nl,
    ask_symptoms,
    suggest_diagnosis.
