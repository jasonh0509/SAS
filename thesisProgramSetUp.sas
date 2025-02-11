/*
   NOTE: You need to edit the `libname` command to specify the path to the directory
   where the data file is located. For example: "C:\ipums_directory".
   Edit the `filename` command similarly to include the full path (the directory and the data file name).
*/

libname IPUMS "C:\SASLib\thesis";
filename ASCIIDAT "C:\SASLib\thesis\nhis_00001.dat";

proc format cntlout = IPUMS.nhis_00001_f;

value ASTATFLG_f
  0 = "NIU"
  1 = "Sample adult, has record"
  2 = "Sample adult, no record"
  3 = "Not selected as sample adult"
  4 = "No one selected as sample adult"
  5 = "Armed forces member"
  6 = "AF member, selected as sample adult"
;

value CSTATFLG_f
  0 = "NIU"
  1 = "Sample child-has record"
  2 = "Sample child-no record"
  3 = "Not selected as sample child"
  4 = "No one selected as sample child"
  5 = "Emancipated minor"
;

value HINOTCOVE_f
  0 = "NIU"
  1 = "No, has coverage"
  2 = "Yes, has no coverage"
  7 = "Unknown-refused"
  8 = "Unknown-not ascertained"
  9 = "Unknown-don't know"
;

value HIMCAREE_f
  0 = "NIU"
  1 = "No"
  2 = "Yes, information"
  3 = "Yes, but no information"
  7 = "Unknown-refused"
  8 = "Unknown-not ascertained"
  9 = "Unknown-don't know"
;

value HIMCARE_f
  0 = "NIU"
  1 = "Not mentioned or No"
  2 = "Mentioned or Yes"
  7 = "Unknown-refused"
  8 = "Unknown-not ascertained"
  9 = "Unknown-don't know"
;

value ALCDAYSWK_f
  00 = "Less than one day per week"
  10 = "1 day per week"
  20 = "2 days per week"
  30 = "3 days per week"
  40 = "4 days per week"
  50 = "5 days per week"
  60 = "6 days per week"
  70 = "7 days per week"
  80 = "Did not drink in past year"
  95 = "Inconsistent"
  96 = "NIU"
  97 = "Unknown-refused"
  98 = "Unknown-not ascertained"
  99 = "Unknown-don't know"
;

value CIGSDAY_f
  00 = "Less than 1 cigarette per day"
  01 = "1 cigarette"
  02 = "2 cigarettes"
  03 = "3 cigarettes"
  04 = "4 cigarettes"
  05 = "5 cigarettes"
  06 = "6 cigarettes"
  07 = "7 cigarettes"
  08 = "8 cigarettes"
  09 = "9 cigarettes"
  10 = "10 cigarettes"
  11 = "11 cigarettes"
  12 = "12 cigarettes"
  13 = "13 cigarettes"
  14 = "14 cigarettes"
  15 = "15 cigarettes"
  16 = "16 cigarettes"
  17 = "17 cigarettes"
  18 = "18 cigarettes"
  19 = "19 cigarettes"
  20 = "20 cigarettes"
  21 = "21 cigarettes"
  22 = "22 cigarettes"
  23 = "23 cigarettes"
  24 = "24 cigarettes"
  25 = "25 cigarettes"
  26 = "26 cigarettes"
  27 = "27 cigarettes"
  28 = "28 cigarettes"
  29 = "29 cigarettes"
  30 = "30 cigarettes"
  31 = "31 cigarettes"
  32 = "32 cigarettes"
  33 = "33 cigarettes"
  34 = "34 cigarettes"
  35 = "35 cigarettes"
  36 = "36 cigarettes"
  37 = "37 cigarettes"
  38 = "38 cigarettes"
  39 = "39 cigarettes"
  40 = "40 cigarettes"
  41 = "41 cigarettes"
  42 = "42 cigarettes"
  43 = "43 cigarettes"
  44 = "44 cigarettes"
  45 = "45 cigarettes"
  46 = "46 cigarettes"
  47 = "47 cigarettes"
  48 = "48 cigarettes"
  49 = "49 cigarettes"
  50 = "50 cigarettes"
  51 = "51 cigarettes"
  52 = "52 cigarettes"
  53 = "53 cigarettes"
  54 = "54 cigarettes"
  55 = "55 cigarettes"
  56 = "56 cigarettes"
  57 = "57 cigarettes"
  58 = "58 cigarettes"
  59 = "59 cigarettes"
  60 = "60 cigarettes"
  61 = "61 cigarettes"
  62 = "62 cigarettes"
  63 = "63 cigarettes"
  64 = "64 cigarettes"
  65 = "65 cigarettes"
  66 = "66 cigarettes"
  67 = "67 cigarettes"
  68 = "68 cigarettes"
  69 = "69 cigarettes"
  70 = "70 cigarettes"
  71 = "71 cigarettes"
  72 = "72 cigarettes"
  73 = "73 cigarettes"
  74 = "74 cigarettes"
  75 = "75 cigarettes"
  76 = "76 cigarettes"
  77 = "77 cigarettes"
  78 = "78 cigarettes"
  79 = "79 cigarettes"
  80 = "80 cigarettes"
  81 = "81 cigarettes"
  82 = "82 cigarettes"
  83 = "83 cigarettes"
  84 = "84 cigarettes"
  85 = "85 cigarettes"
  86 = "86 cigarettes"
  87 = "87 cigarettes"
  88 = "88 cigarettes"
  89 = "89 cigarettes"
  90 = "90+ cigarettes"
  95 = "Doesn't smoke regularly"
  96 = "NIU"
  97 = "Unknown--refused"
  98 = "Unknown--not ascertained"
  99 = "Unknown--don't know"
;

value CIGSDAY1_f
  00 = "NIU"
  01 = "1 cigarette"
  02 = "2 cigarettes"
  03 = "3 cigarettes"
  04 = "4 cigarettes"
  05 = "5 cigarettes"
  06 = "6 cigarettes"
  07 = "7 cigarettes"
  08 = "8 cigarettes"
  09 = "9 cigarettes"
  10 = "10 cigarettes"
  11 = "11 cigarettes"
  12 = "12 cigarettes"
  13 = "13 cigarettes"
  14 = "14 cigarettes"
  15 = "15 cigarettes"
  16 = "16 cigarettes"
  17 = "17 cigarettes"
  18 = "18 cigarettes"
  19 = "19 cigarettes"
  20 = "20 cigarettes"
  21 = "21 cigarettes"
  22 = "22 cigarettes"
  23 = "23 cigarettes"
  24 = "24 cigarettes"
  25 = "25 cigarettes"
  26 = "26 cigarettes"
  27 = "27 cigarettes"
  28 = "28 cigarettes"
  29 = "29 cigarettes"
  30 = "30 cigarettes"
  31 = "31 cigarettes"
  32 = "32 cigarettes"
  33 = "33 cigarettes"
  34 = "34 cigarettes"
  35 = "35 cigarettes"
  36 = "36 cigarettes"
  37 = "37 cigarettes"
  38 = "38 cigarettes"
  39 = "39 cigarettes"
  40 = "40 cigarettes"
  41 = "41 cigarettes"
  42 = "42 cigarettes"
  43 = "43 cigarettes"
  44 = "44 cigarettes"
  45 = "45 cigarettes"
  46 = "46 cigarettes"
  47 = "47 cigarettes"
  48 = "48 cigarettes"
  49 = "49 cigarettes"
  50 = "50 cigarettes"
  51 = "51 cigarettes"
  52 = "52 cigarettes"
  53 = "53 cigarettes"
  54 = "54 cigarettes"
  55 = "55 cigarettes"
  56 = "56 cigarettes"
  57 = "57 cigarettes"
  58 = "58 cigarettes"
  59 = "59 cigarettes"
  60 = "60 cigarettes"
  61 = "61 cigarettes"
  62 = "62 cigarettes"
  63 = "63 cigarettes"
  64 = "64 cigarettes"
  65 = "65 cigarettes"
  66 = "66 cigarettes"
  67 = "67 cigarettes"
  68 = "68 cigarettes"
  69 = "69 cigarettes"
  70 = "70 cigarettes"
  71 = "71 cigarettes"
  72 = "72 cigarettes"
  73 = "73 cigarettes"
  74 = "74 cigarettes"
  75 = "75 cigarettes"
  76 = "76 cigarettes"
  77 = "77 cigarettes"
  78 = "78 cigarettes"
  79 = "79 cigarettes"
  80 = "80 cigarettes"
  81 = "81 cigarettes"
  82 = "82 cigarettes"
  83 = "83 cigarettes"
  84 = "84 cigarettes"
  85 = "85 cigarettes"
  86 = "86 cigarettes"
  87 = "87 cigarettes"
  88 = "88 cigarettes"
  89 = "89 cigarettes"
  90 = "90 cigarettes"
  91 = "91 cigarettes"
  92 = "92 cigarettes"
  93 = "93 cigarettes"
  94 = "94 cigarettes"
  95 = "95+ cigarettes"
  97 = "Unknown-refused"
  98 = "Unknown-not ascertained"
  99 = "Unknown-don't know"
;

value CIGSDAY2_f
  00 = "NIU"
  01 = "1 cigarette"
  02 = "2 cigarettes"
  03 = "3 cigarettes"
  04 = "4 cigarettes"
  05 = "5 cigarettes"
  06 = "6 cigarettes"
  07 = "7 cigarettes"
  08 = "8 cigarettes"
  09 = "9 cigarettes"
  10 = "10 cigarettes"
  11 = "11 cigarettes"
  12 = "12 cigarettes"
  13 = "13 cigarettes"
  14 = "14 cigarettes"
  15 = "15 cigarettes"
  16 = "16 cigarettes"
  17 = "17 cigarettes"
  18 = "18 cigarettes"
  19 = "19 cigarettes"
  20 = "20 cigarettes"
  21 = "21 cigarettes"
  22 = "22 cigarettes"
  23 = "23 cigarettes"
  24 = "24 cigarettes"
  25 = "25 cigarettes"
  26 = "26 cigarettes"
  27 = "27 cigarettes"
  28 = "28 cigarettes"
  29 = "29 cigarettes"
  30 = "30 cigarettes"
  31 = "31 cigarettes"
  32 = "32 cigarettes"
  33 = "33 cigarettes"
  34 = "34 cigarettes"
  35 = "35 cigarettes"
  36 = "36 cigarettes"
  37 = "37 cigarettes"
  38 = "38 cigarettes"
  39 = "39 cigarettes"
  40 = "40 cigarettes"
  41 = "41 cigarettes"
  42 = "42 cigarettes"
  43 = "43 cigarettes"
  44 = "44 cigarettes"
  45 = "45 cigarettes"
  46 = "46 cigarettes"
  47 = "47 cigarettes"
  48 = "48 cigarettes"
  49 = "49 cigarettes"
  50 = "50 cigarettes"
  51 = "51 cigarettes"
  52 = "52 cigarettes"
  53 = "53 cigarettes"
  54 = "54 cigarettes"
  55 = "55 cigarettes"
  56 = "56 cigarettes"
  57 = "57 cigarettes"
  58 = "58 cigarettes"
  59 = "59 cigarettes"
  60 = "60 cigarettes"
  61 = "61 cigarettes"
  62 = "62 cigarettes"
  63 = "63 cigarettes"
  64 = "64 cigarettes"
  65 = "65 cigarettes"
  66 = "66 cigarettes"
  67 = "67 cigarettes"
  68 = "68 cigarettes"
  69 = "69 cigarettes"
  70 = "70 cigarettes"
  71 = "71 cigarettes"
  72 = "72 cigarettes"
  73 = "73 cigarettes"
  74 = "74 cigarettes"
  75 = "75 cigarettes"
  76 = "76 cigarettes"
  77 = "77 cigarettes"
  78 = "78 cigarettes"
  79 = "79 cigarettes"
  80 = "80 cigarettes"
  81 = "81 cigarettes"
  82 = "82 cigarettes"
  83 = "83 cigarettes"
  84 = "84 cigarettes"
  85 = "85 cigarettes"
  86 = "86 cigarettes"
  87 = "87 cigarettes"
  88 = "88 cigarettes"
  89 = "89 cigarettes"
  90 = "90 cigarettes"
  91 = "91 cigarettes"
  92 = "92 cigarettes"
  93 = "93 cigarettes"
  94 = "94 cigarettes"
  95 = "95+ cigarettes"
  97 = "Unknown-refused"
  98 = "Unknown-not ascertained"
  99 = "Unknown-don't know"
;

value SMOKFREQNOW_f
  0 = "NIU"
  1 = "Not at all"
  2 = "Some days"
  3 = "Every day"
  7 = "Unknown-refused"
  8 = "Unknown-not ascertained"
  9 = "Unknown-don't know"
;

value HRSLEEP_f
  00 = "NIU"
  01 = "1 hour (1990: 0 or 1 hour)"
  02 = "2 hours"
  03 = "3 hours"
  04 = "4 hours"
  05 = "5 hours"
  06 = "6 hours"
  07 = "7 hours"
  08 = "8 hours"
  09 = "9 hours"
  10 = "10 hours"
  11 = "11 hours"
  12 = "12 hours"
  13 = "13 hours"
  14 = "14 hours"
  15 = "15 hours"
  16 = "16 hours"
  17 = "17 hours"
  18 = "18 hours"
  19 = "19 hours"
  20 = "20 hours"
  21 = "21 hours"
  22 = "22 hours"
  23 = "23 hours"
  24 = "24 hours"
  25 = "Less than 1 hour"
  97 = "Unknown-refused"
  98 = "Unknown-not ascertained"
  99 = "Unknown-don't know"
;

value SLEEPRESTFRQ_f
  0 = "NIU"
  1 = "Never"
  2 = "Some days"
  3 = "Most days"
  4 = "Every day"
  7 = "Unknown-refused"
  8 = "Unknown-not ascertained"
  9 = "Unknown-don't know"
;

value PHQCAT_f
  0 = "NIU"
  1 = "None/Minimal"
  2 = "Mild"
  3 = "Moderate"
  4 = "Severe"
  7 = "Unknown-refused"
  8 = "Unknown-not ascertained"
  9 = "Unknown-don't know"
;

run;

data IPUMS.nhis_00001;
infile ASCIIDAT pad missover lrecl=84;

input
  YEAR           1-4
  SERIAL         5-10
  STRATA         11-14
  PSU            15-17
  NHISHID      $ 18-31
  HHWEIGHT       32-37
  PERNUM         38-39
  NHISPID      $ 40-55
  HHX          $ 56-62
  FMX          $ 63-64
  PX           $ 65-66
  ASTATFLG       67-67
  CSTATFLG       68-68
  HINOTCOVE      69-69
  HIMCAREE       70-70
  HIMCARE        71-71
  ALCDAYSWK      72-73
  CIGSDAY        74-75
  CIGSDAY1       76-77
  CIGSDAY2       78-79
  SMOKFREQNOW    80-80
  HRSLEEP        81-82
  SLEEPRESTFRQ   83-83
  PHQCAT         84-84
;

label
  YEAR         = "Survey year"
  SERIAL       = "Sequential Serial Number, Household Record"
  STRATA       = "Stratum for variance estimation"
  PSU          = "Primary sampling unit (PSU) for variance estimation"
  NHISHID      = "NHIS Unique identifier, household"
  HHWEIGHT     = "Household weight, final annual"
  PERNUM       = "Person number within family/household (from reformatting)"
  NHISPID      = "NHIS Unique Identifier, person"
  HHX          = "Household number (from NHIS)"
  FMX          = "Family number (from NHIS)"
  PX           = "Person number of respondent (from NHIS)."
  ASTATFLG     = "Sample adult flag"
  CSTATFLG     = "Sample child flag"
  HINOTCOVE    = "Health Insurance coverage status"
  HIMCAREE     = "Covered by Medicare: Recode"
  HIMCARE      = "Has Medicare insurance"
  ALCDAYSWK    = "Frequency drank alcohol in past year: Days per week"
  CIGSDAY      = "Number cigarettes per day (current smokers)"
  CIGSDAY1     = "Number cigarettes per day (daily smokers)"
  CIGSDAY2     = "Number cigarettes per day (some day smokers)"
  SMOKFREQNOW  = "Smoke every day, some days, or not at all"
  HRSLEEP      = "Usual hours sleep per day"
  SLEEPRESTFRQ = "How often woke up feeling well rested, past 30 days"
  PHQCAT       = "Severity of depressive symptoms (PHQ)"
;

format
  ASTATFLG      ASTATFLG_f.
  CSTATFLG      CSTATFLG_f.
  HINOTCOVE     HINOTCOVE_f.
  HIMCAREE      HIMCAREE_f.
  HIMCARE       HIMCARE_f.
  ALCDAYSWK     ALCDAYSWK_f.
  CIGSDAY       CIGSDAY_f.
  CIGSDAY1      CIGSDAY1_f.
  CIGSDAY2      CIGSDAY2_f.
  SMOKFREQNOW   SMOKFREQNOW_f.
  HRSLEEP       HRSLEEP_f.
  SLEEPRESTFRQ  SLEEPRESTFRQ_f.
  PHQCAT        PHQCAT_f.
;

run;



/*This is for setting up the data*/