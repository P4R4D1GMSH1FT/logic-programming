% Rules 
ask_symptoms :-
    write('Do you have a fever? (yes/no)'), nl,
    read(Answer1),
    (   Answer1 = yes -> assert(symptom(patient, fever)); true),
    write('Do you have a runny nose? (yes/no)'), nl,

    % Add more symptom assertions based on user responses
    true.

suggest_diagnosis :-
    symptom(patient, fever),
    % Add rules to link symptoms to potential diagnoses
    % Let's assume a fever suggests a common cold
    write('Based on your symptoms, you may have a common cold.'), nl,
    retractall(symptom(patient, _)).

/* Example Usage */
start_diagnosis :-
    write('Welcome to the Medical Diagnosis System!'), nl,
    write('Please answer the following questions about your symptoms:'), nl,
    ask_symptoms,
    suggest_diagnosis.