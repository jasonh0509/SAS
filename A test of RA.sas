proc import datafile="C:\Users\24597\Desktop\SampleDrug.csv" out=work.sample dbms=csv replace;
getnames=YES;
run;

data drug_switches;
    set work.sample;
    by ID;

    /* Retain previous drug and time */
    retain prev_drug prev_time;

    /* Initialize variables for the first record of each ID */
    if first.ID then do;
        prev_drug = "";  /* Initialize to a blank value */
        prev_time = .;   /* Initialize to missing */
    end;

    /* Detect drug switches */
    if prev_drug ne "" and drug ne prev_drug then do;
        switch_pattern = catx(' -> ', prev_drug, drug); /* Capture the switch pattern */
        time_gap = intck('month', prev_time, Time, 'c'); /* Calculate time gap in months */
    end;
    else do;
        switch_pattern = ""; /* No switch */
        time_gap = .;        /* No time gap */
    end;

    /* Update previous drug and time for the next row */
    prev_drug = drug;
    prev_time = Time;
run;

/* Filter rows to only include those with switches */
data drug_switch_patterns;
    set drug_switches;
    where switch_pattern ne "";
run;
