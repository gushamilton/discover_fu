#Clear existing data and graphics
rm(list=ls())

#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('DISCOVER_DATA_2021-03-02_2212.csv')
#Setting Labels

label(data$lab_no)="Study number "
label(data$consent_date)="Date of DISCOVER enrolment "
label(data$site)="Hospital site "
label(data$age)="Age (18+)"
label(data$sex)="Sex"
label(data$ethnic)="Non-white ethnicity? "
label(data$prov_suspec)="Proven or suspected COVID-19?"
label(data$datepositive)="Date of COVID result (+ve or -ve)  (date reported - not date collected)"
label(data$ip_op)="Is patient currently an inpatient or outpatient (day of consent)?"
label(data$onsetdate)="COVID-19 symptom onset date"
label(data$admit_date)="Date of hospital attendance"
label(data$baseline_complete)="Complete?"
label(data$adm_diabetes)="Diabetes?"
label(data$adm_heart)="Heart disease?"
label(data$adm_htn)="Hypertension?"
label(data$adm_lung)="Chronic Lung disease?"
label(data$adm_hiv)="HIV? "
label(data$adm_liver)="Severe Liver disease?"
label(data$adm_kidney)="Severe kidney impairment (eGFR< 30 or dialysis)"
label(data$adm_comorbs_yn)="Any other MAJOR comorbidities documented in the medical notes?"
label(data$adm_comorbs)="Please document the other MAJOR comorbidities"
label(data$adm_symptom___1)="Symptoms experienced prior to ED attendance? (choice=Cough)"
label(data$adm_symptom___2)="Symptoms experienced prior to ED attendance? (choice=Sputum production)"
label(data$adm_symptom___3)="Symptoms experienced prior to ED attendance? (choice=Breathlessness)"
label(data$adm_symptom___4)="Symptoms experienced prior to ED attendance? (choice=Fever)"
label(data$adm_symptom___5)="Symptoms experienced prior to ED attendance? (choice=Diarrhoea)"
label(data$adm_symptom___6)="Symptoms experienced prior to ED attendance? (choice=Chest pain)"
label(data$adm_symptom___7)="Symptoms experienced prior to ED attendance? (choice=Lethargy)"
label(data$adm_symptom___8)="Symptoms experienced prior to ED attendance? (choice=Confusion)"
label(data$adm_symptom___9)="Symptoms experienced prior to ED attendance? (choice=Other (please specify below))"
label(data$adm_sym_other)="Other admission symptoms"
label(data$adm_rockwood)="Rockwood Clinical Frailty Score (1-9 scale which should have been performed in ED or AMU)"
label(data$adm_tep)="Has the patient had a treatment escalation plan made in the medical notes? "
label(data$adm_ceiling)="What is the documented ceiling of treatment for the patient? "
label(data$adm_news)="Admission (ED) NEWS score"
label(data$adm_systolic)="Systolic BP"
label(data$adm_diastolic)="Diastolic BP"
label(data$adm_hr)="Heart rate (bpm)"
label(data$adm_temp)="Temperature (°C)"
label(data$adm_rr)="Respiratory Rate (per min)"
label(data$adm_spo2)="Oxygen saturation "
label(data$adm_o2)="Oxygen supplementation (e.g. 2litre nasal specs, 15litre non rebreath)"
label(data$adm_hb)="Haemoglobin (g/L)"
label(data$adm_wcc)="White cell count (x10^9/L)"
label(data$adm_neutrophils)="Neutrophil count (x10^9/L)"
label(data$adm_lymphocytes)="Lymphocyte count (x10^9/L)"
label(data$adm_platelets)="Platelet count (x10^9/L)"
label(data$adm_sodium)="Sodium (mmol/L)"
label(data$adm_urea)="Urea (mmol/L)"
label(data$adm_egfr)="eGFR ((ml/min/1.73m2))"
label(data$adm_albumin)="Albumin (g/L)"
label(data$adm_crp)="CRP (mg/dl)"
label(data$adm_ferritin)="Ferritin (ug/L)- if performed "
label(data$adm_ddimer)="D-dimer (UNITS)- if performed "
label(data$adm_bnp)="NT-proBNP (pg/ml) - if performed"
label(data$adm_trop)="Troponin (ng/L)- if performed"
label(data$admission_details_complete)="Complete?"
label(data$fu_posneg)="Was this patient recruited as a PROVEN or SUSPECTED COVID-19? "
label(data$fu_swab)="If SUSPECTED did they ever have coronavirus proven on a subsequent swab? "
label(data$fu_swabdate)="What was the date of the positive swab result? "
label(data$fu_cxr)="Please copy and paste the admission chest x-ray report"
label(data$fu_cxr_severity)="Radiographic severity score (DTA will complete)"
label(data$out_status)="Is the patient ALIVE at 28 days? "
label(data$out_deathdate)="Date of death"
label(data$out_discharged)="Has the patient been discharged from the original (consented) admission? "
label(data$out_discharge_date)="Date of original discharge"
label(data$out_readmit_date)="Date of readmission"
label(data$out_discharged_2)="Has the patient been discharged from the readmission admission? "
label(data$out_discharge_date_2)="Date of 2nd discharge"
label(data$out_itu)="Was the patient admitted to Intensive Care or Respiratory High Care for ventilatory support (invasive or non-invasive)? "
label(data$out_niv)="Did the patient receive non-invasive ventilation (CPAP, High flow nasal oxygen or BiPAP) during last 28 days? "
label(data$out_ventilation)="Did the patient receive invasive ventilation (intubation and ventilation) during admission? "
label(data$out_rrt)="Did the patient require renal replacement therapy (haemofiltration or dialysis) during last 28 days? "
label(data$out_inotrop)="Did the patient require inotropic support during last 28 days?  "
label(data$out_oxygen)="Did the patient require oxygen at any point throughout their admission? "
label(data$out_complications___1)="Did the patient experience any of the following complications in the last 28 days (either recorded in hospital notes/discharge summary or Community Connecting Care)  (choice=Acute renal failure)"
label(data$out_complications___2)="Did the patient experience any of the following complications in the last 28 days (either recorded in hospital notes/discharge summary or Community Connecting Care)  (choice=Liver dysfunction)"
label(data$out_complications___3)="Did the patient experience any of the following complications in the last 28 days (either recorded in hospital notes/discharge summary or Community Connecting Care)  (choice=Hospital acquired infection)"
label(data$out_complications___4)="Did the patient experience any of the following complications in the last 28 days (either recorded in hospital notes/discharge summary or Community Connecting Care)  (choice=NSTEMI)"
label(data$out_complications___5)="Did the patient experience any of the following complications in the last 28 days (either recorded in hospital notes/discharge summary or Community Connecting Care)  (choice=STEMI)"
label(data$out_complications___6)="Did the patient experience any of the following complications in the last 28 days (either recorded in hospital notes/discharge summary or Community Connecting Care)  (choice=Myocarditis)"
label(data$out_complications___7)="Did the patient experience any of the following complications in the last 28 days (either recorded in hospital notes/discharge summary or Community Connecting Care)  (choice=Encephalitis/Meningitis)"
label(data$out_complications___8)="Did the patient experience any of the following complications in the last 28 days (either recorded in hospital notes/discharge summary or Community Connecting Care)  (choice=Stroke or brain haemorrhage)"
label(data$out_complications___9)="Did the patient experience any of the following complications in the last 28 days (either recorded in hospital notes/discharge summary or Community Connecting Care)  (choice=New episode of atrial fibrillation)"
label(data$out_complications___10)="Did the patient experience any of the following complications in the last 28 days (either recorded in hospital notes/discharge summary or Community Connecting Care)  (choice=New or worsening congestive heart failure)"
label(data$out_complications___11)="Did the patient experience any of the following complications in the last 28 days (either recorded in hospital notes/discharge summary or Community Connecting Care)  (choice=DVT/PE)"
label(data$out_complications___12)="Did the patient experience any of the following complications in the last 28 days (either recorded in hospital notes/discharge summary or Community Connecting Care)  (choice=Fall in hospital)"
label(data$out_complications___13)="Did the patient experience any of the following complications in the last 28 days (either recorded in hospital notes/discharge summary or Community Connecting Care)  (choice=Reduced mobility)"
label(data$out_complications___14)="Did the patient experience any of the following complications in the last 28 days (either recorded in hospital notes/discharge summary or Community Connecting Care)  (choice=Increasing care requirement on discharge)"
label(data$out_complications___15)="Did the patient experience any of the following complications in the last 28 days (either recorded in hospital notes/discharge summary or Community Connecting Care)  (choice=None)"
label(data$day_outcomes_complete)="Complete?"
label(data$sample_id)="Lab Sample ID (e.g. 002)"
label(data$sp_ferritin)="Ferritin (ug/L)"
label(data$sp_bnp)="pro-BNP (pg/ml)"
label(data$sp_tnt)="TNT (pg/ml)"
label(data$sp_kl6)="KL-6 (U/ml)"
label(data$sp_il6)="IL-6 (pg/ml)"
label(data$sp_pct)="Procalcitonin (ng/ml)"
label(data$sp_ldh)="LDH (U/L)"
label(data$sp_supar)="suPAR (ng/ml)"
label(data$sp_ethnic)="Non-white ethnicity"
label(data$sp_abbott)="Abbott antibody positivity  "
label(data$sp_abbottindex)="Abbott antibody index"
label(data$sp_abbottdate)="Date of antibody test"
label(data$sp_abbott_12)="12-week Abbott antibody positivity  "
label(data$sp_abbottindex_12)="12-week Abbott antibody index"
label(data$sp_abbottdate_12)="Date of 12-week antibody test"
label(data$sp_iron)="Iron"
label(data$sp_uibc)="UIBC"
label(data$sp_tibc)="TIBC"
label(data$sp_transferrin)="Transferrin"
label(data$sp_vitd)="Vitamin D"
label(data$sp_haptoglobin)="Haptoglobin"
label(data$sp_dnaconc)="DNA concentration"
label(data$special_tests_complete)="Complete?"
label(data$fu12_attend)="Did patient attend for face-to-face follow up? "
label(data$fu12_dna)="If not. Why not? "
label(data$fu12_date)="What was the date of their face-to-face appointment? "
label(data$fu12_diagnosis)="Is the diagnosis of COVID-19: "
label(data$fu12_ps)="Performance status: "
label(data$fu12_smoker)="Smoking status"
label(data$fu12_mrc)="MRC score"
label(data$fu12_exercise)="Current exercise tolerance on flat (metres): "
label(data$fu12_symptoms___1)="Ongoing symptoms:  (choice=Breathlessness)"
label(data$fu12_symptoms___2)="Ongoing symptoms:  (choice=Chest pain)"
label(data$fu12_symptoms___3)="Ongoing symptoms:  (choice=Sleeping difficulties)"
label(data$fu12_symptoms___4)="Ongoing symptoms:  (choice=Muscle weakness)"
label(data$fu12_symptoms___5)="Ongoing symptoms:  (choice=Fatigue (excessive))"
label(data$fu12_symptoms___6)="Ongoing symptoms:  (choice=Psychiatric)"
label(data$fu12_symptoms___7)="Ongoing symptoms:  (choice=Anosmia)"
label(data$fu12_symptoms___8)="Ongoing symptoms:  (choice=Cough)"
label(data$fu12_symptoms___9)="Ongoing symptoms:  (choice=Other (see free text for significant associated symptoms))"
label(data$fu12_othersymptom)="Other symptom(s)"
label(data$fu12_exam)="Examination abnormal"
label(data$fu12_examdetail)="Brief detail of abnormal exam"
label(data$fu12_cxr)="CXR performed? "
label(data$fu12_cxrreport)="CXR report (copy and paste/summarise)"
label(data$fu12_fu)="Outcome"
label(data$fu12_inv___1)="Further investigations or referrals requested? (choice=HRCT)"
label(data$fu12_inv___2)="Further investigations or referrals requested? (choice=Echo)"
label(data$fu12_inv___3)="Further investigations or referrals requested? (choice=Full lung function)"
label(data$fu12_inv___4)="Further investigations or referrals requested? (choice=Other)"
label(data$fu12_invother)="Other investigations referrals? "
label(data$fu12_ae)="Did the patient have any adverse events recorded at the 28 day follow up? "
label(data$fu12_aefu)="If so were this resolved by 8-12 week follow up? "
label(data$fu12_sats)="O2 saturation at rest"
label(data$fu12_resprate)="Resp rate"
label(data$fu12_hr)="Pulse"
label(data$fu12_bp)="BP"
label(data$fu12_temp)="Temp"
label(data$fu12_sitstand)="Lowest sats on sit to stand"
label(data$fu12_bmi)="BMI (kg/m2)"
label(data$fu12_race)="Race"
label(data$fu12_fev1)="FEV1 (L)"
label(data$fu12_fev1pred)="FEV1 (%predicted)"
label(data$fu12_fev1sr)="FEV1 SR"
label(data$fu12_fvc)="FVC (L)"
label(data$fu12_fvcpred)="FVC (%predicted)"
label(data$fu12_fvc1sr)="FVC SR"
label(data$fu12_ratio)="Ratio (FEV1%/FVC%- Meas (Pre) column)"
label(data$fu12_spirosum___0)="Summary of spirometry findings (choice=Normal)"
label(data$fu12_spirosum___1)="Summary of spirometry findings (choice=Restrictive)"
label(data$fu12_spirosum___2)="Summary of spirometry findings (choice=Obstructive)"
label(data$fu12_hb)="Haemoglobin (g/L)"
label(data$fu12_wcc)="White cell count (x10^9/L)"
label(data$fu12_neutrophils)="Neutrophil count (x10^9/L)"
label(data$fu12_lymphocytes)="Lymphocytes (x10^9/L)"
label(data$fu12_platelets)="Platelet count (x10^9/L)"
label(data$fu12_bilirubin)="Bilirubin (umol/L)"
label(data$fu12_alp)="ALP (U/L)"
label(data$fu12_alt)="ALT (U/L)"
label(data$fu12_albumin)="Albumin (g/L)"
label(data$fu12_creatinine)="Creatinine (umol/l)"
label(data$fu12_egfr)="eGFR (ml/min)"
label(data$fu12_crp)="CRP (mg/L)"
label(data$fu12_antibody)="Antibody test result"
label(data$fu12_antibodyindex)="Antibody test index (to be filled out later) "
label(data$sf36_1)="1. "
label(data$sf36_2)="2."
label(data$sf36_3)="3. "
label(data$sf36_4)="4."
label(data$sf36_5)="5."
label(data$sf36_6)="6."
label(data$sf36_7)="7."
label(data$sf36_8)="8."
label(data$sf36_9)="9."
label(data$sf36_10)="10."
label(data$sf36_11)="11."
label(data$sf36_12)="12."
label(data$sf36_13)="13."
label(data$sf36_14)="14."
label(data$sf36_15)="15."
label(data$sf36_16)="16."
label(data$sf36_17)="17."
label(data$sf36_19)="18."
label(data$sf36_18)="19."
label(data$sf36_20)="20. "
label(data$sf36_21)="21."
label(data$sf36_22)="22."
label(data$sf36_23)="23."
label(data$sf36_24)="24."
label(data$sf36_25)="25."
label(data$sf36_26)="26."
label(data$sf36_27)="27."
label(data$sf36_28)="28."
label(data$sf36_29)="29."
label(data$sf36_30)="30."
label(data$sf36_31)="31."
label(data$sf36_32)="32. "
label(data$sf36_33)="33."
label(data$sf36_34)="34."
label(data$sf36_35)="35. "
label(data$sf36_36)="36. "
label(data$wemwbs_1)="Ive been feeling optimistic about the future"
label(data$wemwbs_2)="Ive been feeling useful "
label(data$wemwbs_3)="Ive been feeling relaxed"
label(data$wemwbs_4)="Ive been feeling interested in other people "
label(data$wemwbs_5)="Ive had energy to spare "
label(data$wemwbs_6)="Ive been dealing with problems well"
label(data$wemwbs_7)="Ive been thinking clearly"
label(data$wemwbs_8)="Ive been feeling good about myself "
label(data$wemwbs_9)="Ive been feeling close to other people"
label(data$wemwbs_10)="Ive been feeling confident "
label(data$wemwbs_11)="Ive been able to make up my own mind about things"
label(data$wemwbs_12)="Ive been feeling loved"
label(data$wemwbs_13)="Ive been interested in new things"
label(data$wemwbs_14)="Ive been feeling cheerful "
label(data$week_follow_up_complete)="Complete?"
label(data$fu8m_attend)="Did patient attend for face-to-face follow up? "
label(data$fu8m_dna)="If not. Why not? "
label(data$fu8m_date)="What was the date of their face-to-face appointment? "
label(data$fu8m_phone_date)="What was the date of their phone appointment? "
label(data$fu8m_vac_yn)="Has the patient received a COVID-19 vaccination? "
label(data$fu8m_vac_type)="Which vaccine? "
label(data$fu8m_vac_date)="What date was their 1st dose?"
label(data$fu8m_vac_date2)="What date was their 2nd dose?"
label(data$fu8m_ps)="Performance status: "
label(data$fu8m_mrc)="MRC score"
label(data$fu8m_exercise)="Current exercise tolerance on flat (metres): "
label(data$fu8m_chestsym___1)="Ongoing CHEST symptoms:  (choice=Cough)"
label(data$fu8m_chestsym___2)="Ongoing CHEST symptoms:  (choice=Sputum production)"
label(data$fu8m_chestsym___3)="Ongoing CHEST symptoms:  (choice=Breathlessness)"
label(data$fu8m_chestsym___4)="Ongoing CHEST symptoms:  (choice=Chest pain)"
label(data$fu8m_chestsym___5)="Ongoing CHEST symptoms:  (choice=Palpitations)"
label(data$fu8m_entsym___1)="Ongoing ENT symptoms:  (choice=Blocked or runny nose)"
label(data$fu8m_entsym___2)="Ongoing ENT symptoms:  (choice=Sore throat)"
label(data$fu8m_entsym___3)="Ongoing ENT symptoms:  (choice=Altered taste/smell)"
label(data$fu8m_neurosym___1)="Ongoing NEURO symptoms: (choice=Fever)"
label(data$fu8m_neurosym___2)="Ongoing NEURO symptoms: (choice=Fatigue)"
label(data$fu8m_neurosym___3)="Ongoing NEURO symptoms: (choice=Not being able to think straight or focus (brain fog))"
label(data$fu8m_neurosym___4)="Ongoing NEURO symptoms: (choice=Insomnia)"
label(data$fu8m_neurosym___5)="Ongoing NEURO symptoms: (choice=Headache)"
label(data$fu8m_abdosym___1)="Ongoing ABDOMINAL and MSK symptoms (choice=Diarrhoea)"
label(data$fu8m_abdosym___2)="Ongoing ABDOMINAL and MSK symptoms (choice=Abdominal pain)"
label(data$fu8m_abdosym___3)="Ongoing ABDOMINAL and MSK symptoms (choice=Nausea/vomiting)"
label(data$fu8m_abdosym___4)="Ongoing ABDOMINAL and MSK symptoms (choice=Myalgia)"
label(data$fu8m_abdosym___5)="Ongoing ABDOMINAL and MSK symptoms (choice=Arthralgia)"
label(data$fu8m_chestsym_2___1)="PRE/ADMISSION CHEST symptoms:  (choice=Cough)"
label(data$fu8m_chestsym_2___2)="PRE/ADMISSION CHEST symptoms:  (choice=Sputum production)"
label(data$fu8m_chestsym_2___3)="PRE/ADMISSION CHEST symptoms:  (choice=Breathlessness)"
label(data$fu8m_chestsym_2___4)="PRE/ADMISSION CHEST symptoms:  (choice=Chest pain)"
label(data$fu8m_chestsym_2___5)="PRE/ADMISSION CHEST symptoms:  (choice=Palpitations)"
label(data$fu8m_entsym_2___1)="PRE/ADMISSION ENT symptoms:  (choice=Blocked or runny nose)"
label(data$fu8m_entsym_2___2)="PRE/ADMISSION ENT symptoms:  (choice=Sore throat)"
label(data$fu8m_entsym_2___3)="PRE/ADMISSION ENT symptoms:  (choice=Altered taste/smell)"
label(data$fu8m_neurosym_2___1)="PRE/ADMISSION NEURO symptoms: (choice=Fever)"
label(data$fu8m_neurosym_2___2)="PRE/ADMISSION NEURO symptoms: (choice=Fatigue)"
label(data$fu8m_neurosym_2___3)="PRE/ADMISSION NEURO symptoms: (choice=Confusion)"
label(data$fu8m_neurosym_2___4)="PRE/ADMISSION NEURO symptoms: (choice=Insomnia)"
label(data$fu8m_neurosym_2___5)="PRE/ADMISSION NEURO symptoms: (choice=Headache)"
label(data$fu8m_abdosym_2___1)="PRE/ADMISSION ABDOMINAL and MSK symptoms (choice=Diarrhoea)"
label(data$fu8m_abdosym_2___2)="PRE/ADMISSION ABDOMINAL and MSK symptoms (choice=Abdominal pain)"
label(data$fu8m_abdosym_2___3)="PRE/ADMISSION ABDOMINAL and MSK symptoms (choice=Nausea/vomiting)"
label(data$fu8m_abdosym_2___4)="PRE/ADMISSION ABDOMINAL and MSK symptoms (choice=Myalgia)"
label(data$fu8m_abdosym_2___5)="PRE/ADMISSION ABDOMINAL and MSK symptoms (choice=Arthralgia)"
label(data$fu12_sats_8m)="O2 saturation at rest"
label(data$fu12_sitstandreps_8m)="Number of Sit-to- Stand reps in 1 minute"
label(data$fu12_sitstand_8m)="Lowest sats on sit to stand"
label(data$fu8m_cxr_order)="Was a repeat chest x-ray requested? (if 3 month CXR was abnormal)"
label(data$fu8m_cxr_result)="CXR result"
label(data$facets)="Was patient given a FACETS leaflet? "
label(data$fu8m_hb)="Haemoglobin (g/L)"
label(data$fu8m_wcc)="White cell count (x10^9/L)"
label(data$fu8m_neutrophil)="Neutrophil count (x10^9/L)"
label(data$fu8m_lymphocytes)="Lymphocytes (x10^9/L)"
label(data$fu8m_platelets)="Platelet count (x10^9/L)"
label(data$fu8m_bilirubin)="Bilirubin (umol/L)"
label(data$fu8m_alp)="ALP (U/L)"
label(data$fu8m_alt)="ALT (U/L)"
label(data$fu8m_albumin)="Albumin (g/L)"
label(data$fu8m_creatinine)="Creatinine (umol/l)"
label(data$fu8m_egfr)="eGFR (ml/min)"
label(data$fu8m_crp)="CRP (mg/L)"
label(data$fu8m_antibody)="Antibody test result"
label(data$fu12_antibodyindex_8m)="Antibody test index (to be filled out later) "
label(data$sf36_1_8m)="1. "
label(data$sf36_2_8m)="2."
label(data$sf36_3_8m)="3. "
label(data$sf36_4_8m)="4."
label(data$sf36_5_8m)="5."
label(data$sf36_6_8m)="6."
label(data$sf36_7_8m)="7."
label(data$sf36_8_8m)="8."
label(data$sf36_9_8m)="9."
label(data$sf36_10_8m)="10."
label(data$sf36_11_8m)="11."
label(data$sf36_12_8m)="12."
label(data$sf36_13_8m)="13."
label(data$sf36_14_8m)="14."
label(data$sf36_15_8m)="15."
label(data$sf36_16_8m)="16."
label(data$sf36_17_8m)="17."
label(data$sf36_19_8m)="18."
label(data$sf36_18_8m)="19."
label(data$sf36_20_8m)="20. "
label(data$sf36_21_8m)="21."
label(data$sf36_22_8m)="22."
label(data$sf36_23_8m)="23."
label(data$sf36_24_8m)="24."
label(data$sf36_25_8m)="25."
label(data$sf36_26_8m)="26."
label(data$sf36_27_8m)="27."
label(data$sf36_28_8m)="28."
label(data$sf36_29_8m)="29."
label(data$sf36_30_8m)="30."
label(data$sf36_31_8m)="31."
label(data$sf36_32_8m)="32. "
label(data$sf36_33_8m)="33."
label(data$sf36_34_8m)="34."
label(data$sf36_35_8m)="35. "
label(data$sf36_36_8m)="36. "
label(data$wemwbs_1_8m)="Ive been feeling optimistic about the future"
label(data$wemwbs_2_8m)="Ive been feeling useful "
label(data$wemwbs_3_8m)="Ive been feeling relaxed"
label(data$wemwbs_4_8m)="Ive been feeling interested in other people "
label(data$wemwbs_5_8m)="Ive had energy to spare "
label(data$wemwbs_6_8m)="Ive been dealing with problems well"
label(data$wemwbs_7_8m)="Ive been thinking clearly"
label(data$wemwbs_8_8m)="Ive been feeling good about myself "
label(data$wemwbs_9_8m)="Ive been feeling close to other people"
label(data$wemwbs_10_8m)="Ive been feeling confident "
label(data$wemwbs_11_8m)="Ive been able to make up my own mind about things"
label(data$wemwbs_12_8m)="Ive been feeling loved"
label(data$wemwbs_13_8m)="Ive been interested in new things"
label(data$wemwbs_14_8m)="Ive been feeling cheerful "
label(data$month_follow_up_complete)="Complete?"
label(data$vac_control)="Is the participant in the control group or vaccinated group?"
label(data$phone_date_vac)="What was the date of this vaccine study phone appointment? "
label(data$chestsym_vac___1)="New CHEST symptoms:  (choice=Cough)"
label(data$chestsym_vac___2)="New CHEST symptoms:  (choice=Sputum production)"
label(data$chestsym_vac___3)="New CHEST symptoms:  (choice=Breathlessness)"
label(data$chestsym_vac___4)="New CHEST symptoms:  (choice=Chest pain)"
label(data$chestsym_vac___5)="New CHEST symptoms:  (choice=Palpitations)"
label(data$entsym_vac___1)="New ENT symptoms:  (choice=Blocked or runny nose)"
label(data$entsym_vac___2)="New ENT symptoms:  (choice=Sore throat)"
label(data$entsym_vac___3)="New ENT symptoms:  (choice=Altered taste/smell)"
label(data$neurosym_vac___1)="New NEURO symptoms: (choice=Fever)"
label(data$neurosym_vac___2)="New NEURO symptoms: (choice=Fatigue)"
label(data$neurosym_vac___3)="New NEURO symptoms: (choice=Not being able to think straight or focus (brain fog))"
label(data$neurosym_vac___4)="New NEURO symptoms: (choice=Insomnia)"
label(data$neurosym_vac___5)="New NEURO symptoms: (choice=Headache)"
label(data$abdosym_vac___1)="New ABDOMINAL and MSK symptoms (choice=Diarrhoea)"
label(data$abdosym_vac___2)="New ABDOMINAL and MSK symptoms (choice=Abdominal pain)"
label(data$abdosym_vac___3)="New ABDOMINAL and MSK symptoms (choice=Nausea/vomiting)"
label(data$abdosym_vac___4)="New ABDOMINAL and MSK symptoms (choice=Myalgia)"
label(data$abdosym_vac___5)="New ABDOMINAL and MSK symptoms (choice=Arthralgia)"
label(data$ongoingsym_vac)="You mentioned some ongoing symptoms at your last contact? Have these improved, stayed the same, worsened?  List line per symptom.  "
label(data$newsym_vac)="Our records state you had a 1st vaccine dose recently did you experience any immediate (24-48hrs) symptoms?"
label(data$newsym_resolved_vac)="Have these immediate symptoms resolved? "
label(data$sf36_1_8m_vac)="1. "
label(data$sf36_2_8m_vac)="2."
label(data$sf36_3_8m_vac)="3. "
label(data$sf36_4_8m_vac)="4."
label(data$sf36_5_8m_vac)="5."
label(data$sf36_6_8m_vac)="6."
label(data$sf36_7_8m_vac)="7."
label(data$sf36_8_8m_vac)="8."
label(data$sf36_9_8m_vac)="9."
label(data$sf36_10_8m_vac)="10."
label(data$sf36_11_8m_vac)="11."
label(data$sf36_12_8m_vac)="12."
label(data$sf36_13_8m_vac)="13."
label(data$sf36_14_8m_vac)="14."
label(data$sf36_15_8m_vac)="15."
label(data$sf36_16_8m_vac)="16."
label(data$sf36_17_8m_vac)="17."
label(data$sf36_19_8m_vac)="18."
label(data$sf36_18_8m_vac)="19."
label(data$sf36_20_8m_vac)="20. "
label(data$sf36_21_8m_vac)="21."
label(data$sf36_22_8m_vac)="22."
label(data$sf36_23_8m_vac)="23."
label(data$sf36_24_8m_vac)="24."
label(data$sf36_25_8m_vac)="25."
label(data$sf36_26_8m_vac)="26."
label(data$sf36_27_8m_vac)="27."
label(data$sf36_28_8m_vac)="28."
label(data$sf36_29_8m_vac)="29."
label(data$sf36_30_8m_vac)="30."
label(data$sf36_31_8m_vac)="31."
label(data$sf36_32_8m_vac)="32. "
label(data$sf36_33_8m_vac)="33."
label(data$sf36_34_8m_vac)="34."
label(data$sf36_35_8m_vac)="35. "
label(data$sf36_36_8m_vac)="36. "
label(data$wemwbs_1_8m_vac)="Ive been feeling optimistic about the future"
label(data$wemwbs_2_8m_vac)="Ive been feeling useful "
label(data$wemwbs_3_8m_vac)="Ive been feeling relaxed"
label(data$wemwbs_4_8m_vac)="Ive been feeling interested in other people "
label(data$wemwbs_5_8m_vac)="Ive had energy to spare "
label(data$wemwbs_6_8m_vac)="Ive been dealing with problems well"
label(data$wemwbs_7_8m_vac)="Ive been thinking clearly"
label(data$wemwbs_8_8m_vac)="Ive been feeling good about myself "
label(data$wemwbs_9_8m_vac)="Ive been feeling close to other people"
label(data$wemwbs_10_8m_vac)="Ive been feeling confident "
label(data$wemwbs_11_8m_vac)="Ive been able to make up my own mind about things"
label(data$wemwbs_12_8m_vac)="Ive been feeling loved"
label(data$wemwbs_13_8m_vac)="Ive been interested in new things"
label(data$wemwbs_14_8m_vac)="Ive been feeling cheerful "
label(data$post_vaccine_complete)="Complete?"
label(data$patient_consent___1)="Before you start the questionnaire, please read the consent form below and confirm if you agree to take part in the study.  1. I confirm that I have read and understood the DISCOVER Sleep Follow-Up Study participant information sheet (version and date as per attachment on previous page), and that I have had the opportunity to consider the information and have any questions answered.  2. I understand that my participation in the DISCOVER Sleep Follow-up Study is voluntary and that I am free to withdraw at any time without giving any reason, and without my future medical care or legal rights being affected as a consequence.   3. I understand that relevant sections of my medical notes and longer term follow up information from hospital or general practice records, may be looked at by individuals from the local research team, from regulatory authorities or from the NHS Trust, only where it is relevant to my taking part in this research. I give permission for these individuals to have access to my records.  4. I give permission for my answers to the survey and linked anonymised clinical data to be transferred to approved laboratories within North Bristol NHS trust or University of Bristol and other institutions for future research studies.   5. I give permission to be contacted by members of the study team by telephone, or by other means such as text or email, regarding the DISCOVER Study. I understand that my contact details will not be made available to any third parties.  (choice=I agree to take part in this study)"
label(data$background_1)="Have you been diagnosed with any sleep conditions in the past? "
label(data$background_2)="Do you feel COVID-19 infection has impacted upon your sleep?"
label(data$background_4)="In what way did COVID-19  infection impact your sleep?"
label(data$background_5)="Please expand: "
label(data$background_7)="Do you feel that the COVID-19 lockdown(s) has affected your sleep?"
label(data$background_6)="Are you currently satisfied with your sleep?"
label(data$psqi_q1)="1.During the past month, what time have you usually gone to bed at night?"
label(data$psqi_q2)="2. During the past month, how long (in minutes) has it usually taken you to fall asleep each night?"
label(data$psqi_q3)="3. During the past month, what time have you usually gotten up in the morning?"
label(data$psqi_q4)="4. During the past month, how many hours of actual sleep did you get at night? (This may be different than the number of hours you spent in bed.)"
label(data$psqi_q5a)="5a. During the past month, how often have you had trouble sleeping because you cannot go to sleep within 30 minutes. "
label(data$psqi_q5b)="5b.During the past month, how often have you had trouble sleeping because you wake up in the middle of the night or early morning?"
label(data$psqi_q5c)="5c. During the past month, how often have you had trouble sleeping because you have to get up to use the bathroom?"
label(data$psqi_q5d)="5d.During the past month, how often have you had trouble sleeping because you cannot breathe comfortably?"
label(data$psqi_5e)="5e. During the past month, how often have you had trouble sleeping because you cough or snore loudly?"
label(data$psqi_5f)="5f. During the past month, how often have you had trouble sleeping because you feel too cold?"
label(data$psqi_5g)="5g. During the past month, how often have you had trouble sleeping because you feel too hot?"
label(data$psqi_q5h)="5h. During the past month, how often have you had trouble sleeping because you have bad dreams?"
label(data$psqi_q5i)="5i. During the past month, how often have you had trouble sleeping because you have pain?"
label(data$psqi_q5j)="5j. During the past month, how often have you had trouble sleeping because you other reason (s), please describe:"
label(data$psqi_q6)="6. During the past month, how often have you taken medicine to help you sleep (prescribed or over the counter)?"
label(data$psqi_q7)="7. During the past month, how often have you had trouble staying awake while driving, eating meals, or engaging in social activity?"
label(data$psqi_q8)="8. During the past month, how much of a problem has it been for you to keep up enough enthusiasm to get things done?"
label(data$psqi_q9)="9. During the past month, how would you rate your sleep quality overall?"
label(data$psqi_q10)="10. Do you have a bed partner or room mate?"
label(data$psqi_q10a)="11a. If you have a room mate or bed partner, ask him/her how often in the past month you have had loud snoring.           "
label(data$psqi_q11b)="11b. If you have a room mate or bed partner, ask him/her how often in the past month you have had long pauses between breaths while asleep. "
label(data$psqi_q11c)="11c. If you have a room mate or bed partner, ask him/her how often in the past month you have had legs twitching or jerking while you sleep. "
label(data$psqi_q11d)="11d. If you have a room mate or bed partner, ask him/her how often in the past month you have had episodes of disorientation or confusion during sleep. "
label(data$psqi_11e)="11e. If you have a room mate or bed partner, ask him/her how often in the past month you have had other restlessness while you sleep, please describe:"
label(data$gad_7_q1)="1. Feeling nervous, anxious or on edge?"
label(data$gad_7_q2)="2. Not being able to stop or control worrying?"
label(data$gad_7_q3)="3. Worrying too much about different things?"
label(data$gad_7_q4)="4. Trouble relaxing?"
label(data$gad_7_q5)="5. Being so restless that it is hard to sit still?"
label(data$gad_7_q6)="6. Becoming easily annoyed or irritable?"
label(data$gad_7_q7)="7. Feeling afraid as if something awful might happen?"
label(data$phq_9_q1)="1. Little interest or pleasure in doing things. "
label(data$phq_9_q2)="2. Feeling down, depressed, or hopeless"
label(data$phq_9_q3)="3. Trouble falling or staying asleep, or sleeping too much "
label(data$phq_9_q4)="4. Feeling tired or having little energy"
label(data$phd_9_q5)="5. Poor appetite or overeating "
label(data$phd_9_q6)="6. Feeling bad about yourself-or that you are a failure or have let yourself or your family down"
label(data$phq_9_q7)="7. Trouble concentrating on things, such as reading the newspaper or watching television"
label(data$phq_9_q8)="8. Moving or speaking so slowly that other people could have noticed. Or the opposite-being so fidgety or restless that you have been moving around a lot more than usual"
label(data$phd_9_q9)="9. Thoughts that you would be better off dead, or of hurting yourself in some way"
label(data$phq_9_q10)="10. If you checked off any problems, how difficult have these problems made it for you to do your work, take care of things at home, or get along with other people?"
label(data$dbas_q1)="1. I need 8 hours of sleep to feel refreshed and function well during the day."
label(data$dbas_q2)="2. When I dont get proper amount of sleep on a given night, I need to catch up on the next day by napping or on the next night by sleeping longer."
label(data$dbas_q3)="3. I am concerned that chronic insomnia may have serious consequences on my physical health."
label(data$dbas_q4)="4. I am worried that I may lose control over my abilities to sleep."
label(data$dbas_q5)="5. After a poor nights sleep, I know that it will interfere with my daily activities on the next day."
label(data$dbas_q6)="6. In order to be alert and function well during the day, I believe I would be better off taking a sleeping pill rather than having a poor nights sleep."
label(data$dbas_q7)="7. When I feel irritable, depressed, or anxious during the day, it is mostly because I did not sleep well the night before."
label(data$dbas_q8)="8. When I sleep poorly on one night, I know it will disturb my sleep schedule for the whole week."
label(data$dbas_q9)="9. Without an adequate nights sleep, I can hardly function the next day."
label(data$dbas_q10)="10. I cant ever predict whether Ill have a good or poor nights sleep."
label(data$dbas_q11)="11. I have little ability to manage the negative consequences of disturbed sleep."
label(data$dbas_q12)="12. When I feel tired, have no energy, or just seem not to function well during the day, it is generally because I did not sleep well the night before."
label(data$dbas_q13)="13. I believe insomnia is essentially the result of a chemical imbalance. "
label(data$dbas_q14)="14. I feel insomnia is ruining my ability to enjoy life and prevents me from doing what I want."
label(data$dbas_q15)="15. Medication is probably the only solution to sleeplessness."
label(data$dbas_q16)="16. I avoid or cancel obligations (social, family) after a poor nights sleep."
label(data$mctq_q1)="1. I have been a shift- or night-worker in the past three months"
label(data$mctq_q2)="2. Normally, I work _____ days/week."
label(data$mctq_q3)="Please answer all the following questions even if you do not work or work 7 days/ week. Please dont forget to circle AM or PM.  3. On WORKDAYS I normally fall asleep at __:__ AM/PM (this is NOT when you get into bed!)"
label(data$mctq_q4)="Please answer all the following questions even if you do not work or work 7 days/ week. Please dont forget to circle AM or PM.  4. On WORKDAYS I normally wake up at __:__ AM/PM (this is NOT when you get out of bed!)"
label(data$mctq_q5)="Please answer all the following questions even if you do not work or work 7 days/ week. Please dont forget to circle AM or PM.  5. On WORK-FREE DAYS when I DONT use an alarm clock I normally fall asleep at __:__ AM/PM (this is NOT when you get into bed!)"
label(data$mctq_q6)="Please answer all the following questions even if you do not work or work 7 days/ week. Please dont forget to circle AM or PM.  6. On WORK-FREE DAYS when I DONT use an alarm clock I normally wake up at __:__ AM/PM (this is NOT when you get out of bed!)"
label(data$end_2)="1. Wearing an actigraph device (motion watch)"
label(data$end_3)="2. An online cognitive test (DISCOVER Study - Cognitive follow up) "
label(data$sleep_bundle_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$site.factor = factor(data$site,levels=c("1","2","3"))
data$sex.factor = factor(data$sex,levels=c("1","2"))
data$ethnic.factor = factor(data$ethnic,levels=c("1","0"))
data$prov_suspec.factor = factor(data$prov_suspec,levels=c("1","2"))
data$ip_op.factor = factor(data$ip_op,levels=c("1","2"))
data$baseline_complete.factor = factor(data$baseline_complete,levels=c("0","1","2"))
data$adm_diabetes.factor = factor(data$adm_diabetes,levels=c("0","1","2"))
data$adm_heart.factor = factor(data$adm_heart,levels=c("0","1"))
data$adm_htn.factor = factor(data$adm_htn,levels=c("0","1"))
data$adm_lung.factor = factor(data$adm_lung,levels=c("0","1"))
data$adm_hiv.factor = factor(data$adm_hiv,levels=c("0","1"))
data$adm_liver.factor = factor(data$adm_liver,levels=c("0","1"))
data$adm_kidney.factor = factor(data$adm_kidney,levels=c("0","1"))
data$adm_comorbs_yn.factor = factor(data$adm_comorbs_yn,levels=c("0","1"))
data$adm_symptom___1.factor = factor(data$adm_symptom___1,levels=c("0","1"))
data$adm_symptom___2.factor = factor(data$adm_symptom___2,levels=c("0","1"))
data$adm_symptom___3.factor = factor(data$adm_symptom___3,levels=c("0","1"))
data$adm_symptom___4.factor = factor(data$adm_symptom___4,levels=c("0","1"))
data$adm_symptom___5.factor = factor(data$adm_symptom___5,levels=c("0","1"))
data$adm_symptom___6.factor = factor(data$adm_symptom___6,levels=c("0","1"))
data$adm_symptom___7.factor = factor(data$adm_symptom___7,levels=c("0","1"))
data$adm_symptom___8.factor = factor(data$adm_symptom___8,levels=c("0","1"))
data$adm_symptom___9.factor = factor(data$adm_symptom___9,levels=c("0","1"))
data$adm_rockwood.factor = factor(data$adm_rockwood,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$adm_tep.factor = factor(data$adm_tep,levels=c("0","1"))
data$adm_ceiling.factor = factor(data$adm_ceiling,levels=c("1","2","3","4"))
data$adm_news.factor = factor(data$adm_news,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"))
data$admission_details_complete.factor = factor(data$admission_details_complete,levels=c("0","1","2"))
data$fu_posneg.factor = factor(data$fu_posneg,levels=c("1","2"))
data$fu_swab.factor = factor(data$fu_swab,levels=c("0","1"))
data$fu_cxr_severity.factor = factor(data$fu_cxr_severity,levels=c("0","1","2","3","4","5","6","7","8"))
data$out_status.factor = factor(data$out_status,levels=c("1","2"))
data$out_discharged.factor = factor(data$out_discharged,levels=c("0","1","2"))
data$out_discharged_2.factor = factor(data$out_discharged_2,levels=c("0","1","2"))
data$out_itu.factor = factor(data$out_itu,levels=c("0","1","2"))
data$out_niv.factor = factor(data$out_niv,levels=c("0","1","2","3"))
data$out_ventilation.factor = factor(data$out_ventilation,levels=c("0","1"))
data$out_rrt.factor = factor(data$out_rrt,levels=c("0","1"))
data$out_inotrop.factor = factor(data$out_inotrop,levels=c("0","1"))
data$out_oxygen.factor = factor(data$out_oxygen,levels=c("1","2"))
data$out_complications___1.factor = factor(data$out_complications___1,levels=c("0","1"))
data$out_complications___2.factor = factor(data$out_complications___2,levels=c("0","1"))
data$out_complications___3.factor = factor(data$out_complications___3,levels=c("0","1"))
data$out_complications___4.factor = factor(data$out_complications___4,levels=c("0","1"))
data$out_complications___5.factor = factor(data$out_complications___5,levels=c("0","1"))
data$out_complications___6.factor = factor(data$out_complications___6,levels=c("0","1"))
data$out_complications___7.factor = factor(data$out_complications___7,levels=c("0","1"))
data$out_complications___8.factor = factor(data$out_complications___8,levels=c("0","1"))
data$out_complications___9.factor = factor(data$out_complications___9,levels=c("0","1"))
data$out_complications___10.factor = factor(data$out_complications___10,levels=c("0","1"))
data$out_complications___11.factor = factor(data$out_complications___11,levels=c("0","1"))
data$out_complications___12.factor = factor(data$out_complications___12,levels=c("0","1"))
data$out_complications___13.factor = factor(data$out_complications___13,levels=c("0","1"))
data$out_complications___14.factor = factor(data$out_complications___14,levels=c("0","1"))
data$out_complications___15.factor = factor(data$out_complications___15,levels=c("0","1"))
data$day_outcomes_complete.factor = factor(data$day_outcomes_complete,levels=c("0","1","2"))
data$sp_ethnic.factor = factor(data$sp_ethnic,levels=c("1","0"))
data$sp_abbott.factor = factor(data$sp_abbott,levels=c("0","1"))
data$sp_abbott_12.factor = factor(data$sp_abbott_12,levels=c("0","1"))
data$special_tests_complete.factor = factor(data$special_tests_complete,levels=c("0","1","2"))
data$fu12_attend.factor = factor(data$fu12_attend,levels=c("0","1"))
data$fu12_dna.factor = factor(data$fu12_dna,levels=c("1","2","3","4","5"))
data$fu12_diagnosis.factor = factor(data$fu12_diagnosis,levels=c("1","2","3","4","5"))
data$fu12_ps.factor = factor(data$fu12_ps,levels=c("0","1","2","3","4"))
data$fu12_smoker.factor = factor(data$fu12_smoker,levels=c("1","2","3"))
data$fu12_mrc.factor = factor(data$fu12_mrc,levels=c("1","2","3","4","5"))
data$fu12_symptoms___1.factor = factor(data$fu12_symptoms___1,levels=c("0","1"))
data$fu12_symptoms___2.factor = factor(data$fu12_symptoms___2,levels=c("0","1"))
data$fu12_symptoms___3.factor = factor(data$fu12_symptoms___3,levels=c("0","1"))
data$fu12_symptoms___4.factor = factor(data$fu12_symptoms___4,levels=c("0","1"))
data$fu12_symptoms___5.factor = factor(data$fu12_symptoms___5,levels=c("0","1"))
data$fu12_symptoms___6.factor = factor(data$fu12_symptoms___6,levels=c("0","1"))
data$fu12_symptoms___7.factor = factor(data$fu12_symptoms___7,levels=c("0","1"))
data$fu12_symptoms___8.factor = factor(data$fu12_symptoms___8,levels=c("0","1"))
data$fu12_symptoms___9.factor = factor(data$fu12_symptoms___9,levels=c("0","1"))
data$fu12_exam.factor = factor(data$fu12_exam,levels=c("0","1"))
data$fu12_cxr.factor = factor(data$fu12_cxr,levels=c("1","2","3"))
data$fu12_fu.factor = factor(data$fu12_fu,levels=c("1","2","3"))
data$fu12_inv___1.factor = factor(data$fu12_inv___1,levels=c("0","1"))
data$fu12_inv___2.factor = factor(data$fu12_inv___2,levels=c("0","1"))
data$fu12_inv___3.factor = factor(data$fu12_inv___3,levels=c("0","1"))
data$fu12_inv___4.factor = factor(data$fu12_inv___4,levels=c("0","1"))
data$fu12_ae.factor = factor(data$fu12_ae,levels=c("1","2"))
data$fu12_aefu.factor = factor(data$fu12_aefu,levels=c("0","1"))
data$fu12_race.factor = factor(data$fu12_race,levels=c("1","2","3","4","5","6","7","8"))
data$fu12_spirosum___0.factor = factor(data$fu12_spirosum___0,levels=c("0","1"))
data$fu12_spirosum___1.factor = factor(data$fu12_spirosum___1,levels=c("0","1"))
data$fu12_spirosum___2.factor = factor(data$fu12_spirosum___2,levels=c("0","1"))
data$fu12_antibody.factor = factor(data$fu12_antibody,levels=c("0","1"))
data$sf36_1.factor = factor(data$sf36_1,levels=c("1","2","3","4","5"))
data$sf36_2.factor = factor(data$sf36_2,levels=c("1","2","3","4","5"))
data$sf36_3.factor = factor(data$sf36_3,levels=c("1","2","3"))
data$sf36_4.factor = factor(data$sf36_4,levels=c("1","2","3"))
data$sf36_5.factor = factor(data$sf36_5,levels=c("1","2","3"))
data$sf36_6.factor = factor(data$sf36_6,levels=c("1","2","3"))
data$sf36_7.factor = factor(data$sf36_7,levels=c("1","2","3"))
data$sf36_8.factor = factor(data$sf36_8,levels=c("1","2","3"))
data$sf36_9.factor = factor(data$sf36_9,levels=c("1","2","3"))
data$sf36_10.factor = factor(data$sf36_10,levels=c("1","2","3"))
data$sf36_11.factor = factor(data$sf36_11,levels=c("1","2","3"))
data$sf36_12.factor = factor(data$sf36_12,levels=c("1","2","3"))
data$sf36_13.factor = factor(data$sf36_13,levels=c("1","2"))
data$sf36_14.factor = factor(data$sf36_14,levels=c("1","2"))
data$sf36_15.factor = factor(data$sf36_15,levels=c("1","2"))
data$sf36_16.factor = factor(data$sf36_16,levels=c("1","2"))
data$sf36_17.factor = factor(data$sf36_17,levels=c("1","2"))
data$sf36_19.factor = factor(data$sf36_19,levels=c("1","2"))
data$sf36_18.factor = factor(data$sf36_18,levels=c("1","2"))
data$sf36_20.factor = factor(data$sf36_20,levels=c("1","2","3","4","5"))
data$sf36_21.factor = factor(data$sf36_21,levels=c("1","2","3","4","5","6"))
data$sf36_22.factor = factor(data$sf36_22,levels=c("1","2","3","4","5"))
data$sf36_23.factor = factor(data$sf36_23,levels=c("1","2","3","4","5","6"))
data$sf36_24.factor = factor(data$sf36_24,levels=c("1","2","3","4","5","6"))
data$sf36_25.factor = factor(data$sf36_25,levels=c("1","2","3","4","5","6"))
data$sf36_26.factor = factor(data$sf36_26,levels=c("1","2","3","4","5","6"))
data$sf36_27.factor = factor(data$sf36_27,levels=c("1","2","3","4","5","6"))
data$sf36_28.factor = factor(data$sf36_28,levels=c("1","2","3","4","5","6"))
data$sf36_29.factor = factor(data$sf36_29,levels=c("1","2","3","4","5","6"))
data$sf36_30.factor = factor(data$sf36_30,levels=c("1","2","3","4","5","6"))
data$sf36_31.factor = factor(data$sf36_31,levels=c("1","2","3","4","5","6"))
data$sf36_32.factor = factor(data$sf36_32,levels=c("1","2","3","4","5"))
data$sf36_33.factor = factor(data$sf36_33,levels=c("1","2","3","4","5"))
data$sf36_34.factor = factor(data$sf36_34,levels=c("1","2","3","4","5"))
data$sf36_35.factor = factor(data$sf36_35,levels=c("1","2","3","4","5"))
data$sf36_36.factor = factor(data$sf36_36,levels=c("1","2","3","4","5"))
data$wemwbs_1.factor = factor(data$wemwbs_1,levels=c("1","2","3","4","5"))
data$wemwbs_2.factor = factor(data$wemwbs_2,levels=c("1","2","3","4","5"))
data$wemwbs_3.factor = factor(data$wemwbs_3,levels=c("1","2","3","4","5"))
data$wemwbs_4.factor = factor(data$wemwbs_4,levels=c("1","2","3","4","5"))
data$wemwbs_5.factor = factor(data$wemwbs_5,levels=c("1","2","3","4","5"))
data$wemwbs_6.factor = factor(data$wemwbs_6,levels=c("1","2","3","4","5"))
data$wemwbs_7.factor = factor(data$wemwbs_7,levels=c("1","2","3","4","5"))
data$wemwbs_8.factor = factor(data$wemwbs_8,levels=c("1","2","3","4","5"))
data$wemwbs_9.factor = factor(data$wemwbs_9,levels=c("1","2","3","4","5"))
data$wemwbs_10.factor = factor(data$wemwbs_10,levels=c("1","2","3","4","5"))
data$wemwbs_11.factor = factor(data$wemwbs_11,levels=c("1","2","3","4","5"))
data$wemwbs_12.factor = factor(data$wemwbs_12,levels=c("1","2","3","4","5"))
data$wemwbs_13.factor = factor(data$wemwbs_13,levels=c("1","2","3","4","5"))
data$wemwbs_14.factor = factor(data$wemwbs_14,levels=c("1","2","3","4","5"))
data$week_follow_up_complete.factor = factor(data$week_follow_up_complete,levels=c("0","1","2"))
data$fu8m_attend.factor = factor(data$fu8m_attend,levels=c("0","1"))
data$fu8m_dna.factor = factor(data$fu8m_dna,levels=c("1","2","3","4","5","6"))
data$fu8m_vac_yn.factor = factor(data$fu8m_vac_yn,levels=c("0","1"))
data$fu8m_vac_type.factor = factor(data$fu8m_vac_type,levels=c("1","2","3"))
data$fu8m_ps.factor = factor(data$fu8m_ps,levels=c("0","1","2","3","4"))
data$fu8m_mrc.factor = factor(data$fu8m_mrc,levels=c("1","2","3","4","5"))
data$fu8m_chestsym___1.factor = factor(data$fu8m_chestsym___1,levels=c("0","1"))
data$fu8m_chestsym___2.factor = factor(data$fu8m_chestsym___2,levels=c("0","1"))
data$fu8m_chestsym___3.factor = factor(data$fu8m_chestsym___3,levels=c("0","1"))
data$fu8m_chestsym___4.factor = factor(data$fu8m_chestsym___4,levels=c("0","1"))
data$fu8m_chestsym___5.factor = factor(data$fu8m_chestsym___5,levels=c("0","1"))
data$fu8m_entsym___1.factor = factor(data$fu8m_entsym___1,levels=c("0","1"))
data$fu8m_entsym___2.factor = factor(data$fu8m_entsym___2,levels=c("0","1"))
data$fu8m_entsym___3.factor = factor(data$fu8m_entsym___3,levels=c("0","1"))
data$fu8m_neurosym___1.factor = factor(data$fu8m_neurosym___1,levels=c("0","1"))
data$fu8m_neurosym___2.factor = factor(data$fu8m_neurosym___2,levels=c("0","1"))
data$fu8m_neurosym___3.factor = factor(data$fu8m_neurosym___3,levels=c("0","1"))
data$fu8m_neurosym___4.factor = factor(data$fu8m_neurosym___4,levels=c("0","1"))
data$fu8m_neurosym___5.factor = factor(data$fu8m_neurosym___5,levels=c("0","1"))
data$fu8m_abdosym___1.factor = factor(data$fu8m_abdosym___1,levels=c("0","1"))
data$fu8m_abdosym___2.factor = factor(data$fu8m_abdosym___2,levels=c("0","1"))
data$fu8m_abdosym___3.factor = factor(data$fu8m_abdosym___3,levels=c("0","1"))
data$fu8m_abdosym___4.factor = factor(data$fu8m_abdosym___4,levels=c("0","1"))
data$fu8m_abdosym___5.factor = factor(data$fu8m_abdosym___5,levels=c("0","1"))
data$fu8m_chestsym_2___1.factor = factor(data$fu8m_chestsym_2___1,levels=c("0","1"))
data$fu8m_chestsym_2___2.factor = factor(data$fu8m_chestsym_2___2,levels=c("0","1"))
data$fu8m_chestsym_2___3.factor = factor(data$fu8m_chestsym_2___3,levels=c("0","1"))
data$fu8m_chestsym_2___4.factor = factor(data$fu8m_chestsym_2___4,levels=c("0","1"))
data$fu8m_chestsym_2___5.factor = factor(data$fu8m_chestsym_2___5,levels=c("0","1"))
data$fu8m_entsym_2___1.factor = factor(data$fu8m_entsym_2___1,levels=c("0","1"))
data$fu8m_entsym_2___2.factor = factor(data$fu8m_entsym_2___2,levels=c("0","1"))
data$fu8m_entsym_2___3.factor = factor(data$fu8m_entsym_2___3,levels=c("0","1"))
data$fu8m_neurosym_2___1.factor = factor(data$fu8m_neurosym_2___1,levels=c("0","1"))
data$fu8m_neurosym_2___2.factor = factor(data$fu8m_neurosym_2___2,levels=c("0","1"))
data$fu8m_neurosym_2___3.factor = factor(data$fu8m_neurosym_2___3,levels=c("0","1"))
data$fu8m_neurosym_2___4.factor = factor(data$fu8m_neurosym_2___4,levels=c("0","1"))
data$fu8m_neurosym_2___5.factor = factor(data$fu8m_neurosym_2___5,levels=c("0","1"))
data$fu8m_abdosym_2___1.factor = factor(data$fu8m_abdosym_2___1,levels=c("0","1"))
data$fu8m_abdosym_2___2.factor = factor(data$fu8m_abdosym_2___2,levels=c("0","1"))
data$fu8m_abdosym_2___3.factor = factor(data$fu8m_abdosym_2___3,levels=c("0","1"))
data$fu8m_abdosym_2___4.factor = factor(data$fu8m_abdosym_2___4,levels=c("0","1"))
data$fu8m_abdosym_2___5.factor = factor(data$fu8m_abdosym_2___5,levels=c("0","1"))
data$fu8m_cxr_order.factor = factor(data$fu8m_cxr_order,levels=c("1","0"))
data$fu8m_cxr_result.factor = factor(data$fu8m_cxr_result,levels=c("1","2"))
data$facets.factor = factor(data$facets,levels=c("0","1","2"))
data$fu8m_antibody.factor = factor(data$fu8m_antibody,levels=c("0","1"))
data$sf36_1_8m.factor = factor(data$sf36_1_8m,levels=c("1","2","3","4","5"))
data$sf36_2_8m.factor = factor(data$sf36_2_8m,levels=c("1","2","3","4","5"))
data$sf36_3_8m.factor = factor(data$sf36_3_8m,levels=c("1","2","3"))
data$sf36_4_8m.factor = factor(data$sf36_4_8m,levels=c("1","2","3"))
data$sf36_5_8m.factor = factor(data$sf36_5_8m,levels=c("1","2","3"))
data$sf36_6_8m.factor = factor(data$sf36_6_8m,levels=c("1","2","3"))
data$sf36_7_8m.factor = factor(data$sf36_7_8m,levels=c("1","2","3"))
data$sf36_8_8m.factor = factor(data$sf36_8_8m,levels=c("1","2","3"))
data$sf36_9_8m.factor = factor(data$sf36_9_8m,levels=c("1","2","3"))
data$sf36_10_8m.factor = factor(data$sf36_10_8m,levels=c("1","2","3"))
data$sf36_11_8m.factor = factor(data$sf36_11_8m,levels=c("1","2","3"))
data$sf36_12_8m.factor = factor(data$sf36_12_8m,levels=c("1","2","3"))
data$sf36_13_8m.factor = factor(data$sf36_13_8m,levels=c("1","2"))
data$sf36_14_8m.factor = factor(data$sf36_14_8m,levels=c("1","2"))
data$sf36_15_8m.factor = factor(data$sf36_15_8m,levels=c("1","2"))
data$sf36_16_8m.factor = factor(data$sf36_16_8m,levels=c("1","2"))
data$sf36_17_8m.factor = factor(data$sf36_17_8m,levels=c("1","2"))
data$sf36_19_8m.factor = factor(data$sf36_19_8m,levels=c("1","2"))
data$sf36_18_8m.factor = factor(data$sf36_18_8m,levels=c("1","2"))
data$sf36_20_8m.factor = factor(data$sf36_20_8m,levels=c("1","2","3","4","5"))
data$sf36_21_8m.factor = factor(data$sf36_21_8m,levels=c("1","2","3","4","5","6"))
data$sf36_22_8m.factor = factor(data$sf36_22_8m,levels=c("1","2","3","4","5"))
data$sf36_23_8m.factor = factor(data$sf36_23_8m,levels=c("1","2","3","4","5","6"))
data$sf36_24_8m.factor = factor(data$sf36_24_8m,levels=c("1","2","3","4","5","6"))
data$sf36_25_8m.factor = factor(data$sf36_25_8m,levels=c("1","2","3","4","5","6"))
data$sf36_26_8m.factor = factor(data$sf36_26_8m,levels=c("1","2","3","4","5","6"))
data$sf36_27_8m.factor = factor(data$sf36_27_8m,levels=c("1","2","3","4","5","6"))
data$sf36_28_8m.factor = factor(data$sf36_28_8m,levels=c("1","2","3","4","5","6"))
data$sf36_29_8m.factor = factor(data$sf36_29_8m,levels=c("1","2","3","4","5","6"))
data$sf36_30_8m.factor = factor(data$sf36_30_8m,levels=c("1","2","3","4","5","6"))
data$sf36_31_8m.factor = factor(data$sf36_31_8m,levels=c("1","2","3","4","5","6"))
data$sf36_32_8m.factor = factor(data$sf36_32_8m,levels=c("1","2","3","4","5"))
data$sf36_33_8m.factor = factor(data$sf36_33_8m,levels=c("1","2","3","4","5"))
data$sf36_34_8m.factor = factor(data$sf36_34_8m,levels=c("1","2","3","4","5"))
data$sf36_35_8m.factor = factor(data$sf36_35_8m,levels=c("1","2","3","4","5"))
data$sf36_36_8m.factor = factor(data$sf36_36_8m,levels=c("1","2","3","4","5"))
data$wemwbs_1_8m.factor = factor(data$wemwbs_1_8m,levels=c("1","2","3","4","5"))
data$wemwbs_2_8m.factor = factor(data$wemwbs_2_8m,levels=c("1","2","3","4","5"))
data$wemwbs_3_8m.factor = factor(data$wemwbs_3_8m,levels=c("1","2","3","4","5"))
data$wemwbs_4_8m.factor = factor(data$wemwbs_4_8m,levels=c("1","2","3","4","5"))
data$wemwbs_5_8m.factor = factor(data$wemwbs_5_8m,levels=c("1","2","3","4","5"))
data$wemwbs_6_8m.factor = factor(data$wemwbs_6_8m,levels=c("1","2","3","4","5"))
data$wemwbs_7_8m.factor = factor(data$wemwbs_7_8m,levels=c("1","2","3","4","5"))
data$wemwbs_8_8m.factor = factor(data$wemwbs_8_8m,levels=c("1","2","3","4","5"))
data$wemwbs_9_8m.factor = factor(data$wemwbs_9_8m,levels=c("1","2","3","4","5"))
data$wemwbs_10_8m.factor = factor(data$wemwbs_10_8m,levels=c("1","2","3","4","5"))
data$wemwbs_11_8m.factor = factor(data$wemwbs_11_8m,levels=c("1","2","3","4","5"))
data$wemwbs_12_8m.factor = factor(data$wemwbs_12_8m,levels=c("1","2","3","4","5"))
data$wemwbs_13_8m.factor = factor(data$wemwbs_13_8m,levels=c("1","2","3","4","5"))
data$wemwbs_14_8m.factor = factor(data$wemwbs_14_8m,levels=c("1","2","3","4","5"))
data$month_follow_up_complete.factor = factor(data$month_follow_up_complete,levels=c("0","1","2"))
data$vac_control.factor = factor(data$vac_control,levels=c("0","1"))
data$chestsym_vac___1.factor = factor(data$chestsym_vac___1,levels=c("0","1"))
data$chestsym_vac___2.factor = factor(data$chestsym_vac___2,levels=c("0","1"))
data$chestsym_vac___3.factor = factor(data$chestsym_vac___3,levels=c("0","1"))
data$chestsym_vac___4.factor = factor(data$chestsym_vac___4,levels=c("0","1"))
data$chestsym_vac___5.factor = factor(data$chestsym_vac___5,levels=c("0","1"))
data$entsym_vac___1.factor = factor(data$entsym_vac___1,levels=c("0","1"))
data$entsym_vac___2.factor = factor(data$entsym_vac___2,levels=c("0","1"))
data$entsym_vac___3.factor = factor(data$entsym_vac___3,levels=c("0","1"))
data$neurosym_vac___1.factor = factor(data$neurosym_vac___1,levels=c("0","1"))
data$neurosym_vac___2.factor = factor(data$neurosym_vac___2,levels=c("0","1"))
data$neurosym_vac___3.factor = factor(data$neurosym_vac___3,levels=c("0","1"))
data$neurosym_vac___4.factor = factor(data$neurosym_vac___4,levels=c("0","1"))
data$neurosym_vac___5.factor = factor(data$neurosym_vac___5,levels=c("0","1"))
data$abdosym_vac___1.factor = factor(data$abdosym_vac___1,levels=c("0","1"))
data$abdosym_vac___2.factor = factor(data$abdosym_vac___2,levels=c("0","1"))
data$abdosym_vac___3.factor = factor(data$abdosym_vac___3,levels=c("0","1"))
data$abdosym_vac___4.factor = factor(data$abdosym_vac___4,levels=c("0","1"))
data$abdosym_vac___5.factor = factor(data$abdosym_vac___5,levels=c("0","1"))
data$newsym_resolved_vac.factor = factor(data$newsym_resolved_vac,levels=c("1","0"))
data$sf36_1_8m_vac.factor = factor(data$sf36_1_8m_vac,levels=c("1","2","3","4","5"))
data$sf36_2_8m_vac.factor = factor(data$sf36_2_8m_vac,levels=c("1","2","3","4","5"))
data$sf36_3_8m_vac.factor = factor(data$sf36_3_8m_vac,levels=c("1","2","3"))
data$sf36_4_8m_vac.factor = factor(data$sf36_4_8m_vac,levels=c("1","2","3"))
data$sf36_5_8m_vac.factor = factor(data$sf36_5_8m_vac,levels=c("1","2","3"))
data$sf36_6_8m_vac.factor = factor(data$sf36_6_8m_vac,levels=c("1","2","3"))
data$sf36_7_8m_vac.factor = factor(data$sf36_7_8m_vac,levels=c("1","2","3"))
data$sf36_8_8m_vac.factor = factor(data$sf36_8_8m_vac,levels=c("1","2","3"))
data$sf36_9_8m_vac.factor = factor(data$sf36_9_8m_vac,levels=c("1","2","3"))
data$sf36_10_8m_vac.factor = factor(data$sf36_10_8m_vac,levels=c("1","2","3"))
data$sf36_11_8m_vac.factor = factor(data$sf36_11_8m_vac,levels=c("1","2","3"))
data$sf36_12_8m_vac.factor = factor(data$sf36_12_8m_vac,levels=c("1","2","3"))
data$sf36_13_8m_vac.factor = factor(data$sf36_13_8m_vac,levels=c("1","2"))
data$sf36_14_8m_vac.factor = factor(data$sf36_14_8m_vac,levels=c("1","2"))
data$sf36_15_8m_vac.factor = factor(data$sf36_15_8m_vac,levels=c("1","2"))
data$sf36_16_8m_vac.factor = factor(data$sf36_16_8m_vac,levels=c("1","2"))
data$sf36_17_8m_vac.factor = factor(data$sf36_17_8m_vac,levels=c("1","2"))
data$sf36_19_8m_vac.factor = factor(data$sf36_19_8m_vac,levels=c("1","2"))
data$sf36_18_8m_vac.factor = factor(data$sf36_18_8m_vac,levels=c("1","2"))
data$sf36_20_8m_vac.factor = factor(data$sf36_20_8m_vac,levels=c("1","2","3","4","5"))
data$sf36_21_8m_vac.factor = factor(data$sf36_21_8m_vac,levels=c("1","2","3","4","5","6"))
data$sf36_22_8m_vac.factor = factor(data$sf36_22_8m_vac,levels=c("1","2","3","4","5"))
data$sf36_23_8m_vac.factor = factor(data$sf36_23_8m_vac,levels=c("1","2","3","4","5","6"))
data$sf36_24_8m_vac.factor = factor(data$sf36_24_8m_vac,levels=c("1","2","3","4","5","6"))
data$sf36_25_8m_vac.factor = factor(data$sf36_25_8m_vac,levels=c("1","2","3","4","5","6"))
data$sf36_26_8m_vac.factor = factor(data$sf36_26_8m_vac,levels=c("1","2","3","4","5","6"))
data$sf36_27_8m_vac.factor = factor(data$sf36_27_8m_vac,levels=c("1","2","3","4","5","6"))
data$sf36_28_8m_vac.factor = factor(data$sf36_28_8m_vac,levels=c("1","2","3","4","5","6"))
data$sf36_29_8m_vac.factor = factor(data$sf36_29_8m_vac,levels=c("1","2","3","4","5","6"))
data$sf36_30_8m_vac.factor = factor(data$sf36_30_8m_vac,levels=c("1","2","3","4","5","6"))
data$sf36_31_8m_vac.factor = factor(data$sf36_31_8m_vac,levels=c("1","2","3","4","5","6"))
data$sf36_32_8m_vac.factor = factor(data$sf36_32_8m_vac,levels=c("1","2","3","4","5"))
data$sf36_33_8m_vac.factor = factor(data$sf36_33_8m_vac,levels=c("1","2","3","4","5"))
data$sf36_34_8m_vac.factor = factor(data$sf36_34_8m_vac,levels=c("1","2","3","4","5"))
data$sf36_35_8m_vac.factor = factor(data$sf36_35_8m_vac,levels=c("1","2","3","4","5"))
data$sf36_36_8m_vac.factor = factor(data$sf36_36_8m_vac,levels=c("1","2","3","4","5"))
data$wemwbs_1_8m_vac.factor = factor(data$wemwbs_1_8m_vac,levels=c("1","2","3","4","5"))
data$wemwbs_2_8m_vac.factor = factor(data$wemwbs_2_8m_vac,levels=c("1","2","3","4","5"))
data$wemwbs_3_8m_vac.factor = factor(data$wemwbs_3_8m_vac,levels=c("1","2","3","4","5"))
data$wemwbs_4_8m_vac.factor = factor(data$wemwbs_4_8m_vac,levels=c("1","2","3","4","5"))
data$wemwbs_5_8m_vac.factor = factor(data$wemwbs_5_8m_vac,levels=c("1","2","3","4","5"))
data$wemwbs_6_8m_vac.factor = factor(data$wemwbs_6_8m_vac,levels=c("1","2","3","4","5"))
data$wemwbs_7_8m_vac.factor = factor(data$wemwbs_7_8m_vac,levels=c("1","2","3","4","5"))
data$wemwbs_8_8m_vac.factor = factor(data$wemwbs_8_8m_vac,levels=c("1","2","3","4","5"))
data$wemwbs_9_8m_vac.factor = factor(data$wemwbs_9_8m_vac,levels=c("1","2","3","4","5"))
data$wemwbs_10_8m_vac.factor = factor(data$wemwbs_10_8m_vac,levels=c("1","2","3","4","5"))
data$wemwbs_11_8m_vac.factor = factor(data$wemwbs_11_8m_vac,levels=c("1","2","3","4","5"))
data$wemwbs_12_8m_vac.factor = factor(data$wemwbs_12_8m_vac,levels=c("1","2","3","4","5"))
data$wemwbs_13_8m_vac.factor = factor(data$wemwbs_13_8m_vac,levels=c("1","2","3","4","5"))
data$wemwbs_14_8m_vac.factor = factor(data$wemwbs_14_8m_vac,levels=c("1","2","3","4","5"))
data$post_vaccine_complete.factor = factor(data$post_vaccine_complete,levels=c("0","1","2"))
data$patient_consent___1.factor = factor(data$patient_consent___1,levels=c("0","1"))
data$background_1.factor = factor(data$background_1,levels=c("1","0"))
data$background_2.factor = factor(data$background_2,levels=c("1","0"))
data$background_4.factor = factor(data$background_4,levels=c("1","2","3","4","5"))
data$background_7.factor = factor(data$background_7,levels=c("1","0"))
data$background_6.factor = factor(data$background_6,levels=c("1","0"))
data$psqi_q5a.factor = factor(data$psqi_q5a,levels=c("1","2","3","4"))
data$psqi_q5b.factor = factor(data$psqi_q5b,levels=c("1","2","3","4"))
data$psqi_q5c.factor = factor(data$psqi_q5c,levels=c("1","2","3","4"))
data$psqi_q5d.factor = factor(data$psqi_q5d,levels=c("1","2","3","4"))
data$psqi_5e.factor = factor(data$psqi_5e,levels=c("1","2","3","4"))
data$psqi_5f.factor = factor(data$psqi_5f,levels=c("1","2","3","4"))
data$psqi_5g.factor = factor(data$psqi_5g,levels=c("1","2","3","4"))
data$psqi_q5h.factor = factor(data$psqi_q5h,levels=c("1","2","3","4"))
data$psqi_q5i.factor = factor(data$psqi_q5i,levels=c("1","2","3","4"))
data$psqi_q6.factor = factor(data$psqi_q6,levels=c("1","2","3","4"))
data$psqi_q7.factor = factor(data$psqi_q7,levels=c("1","2","3","4"))
data$psqi_q8.factor = factor(data$psqi_q8,levels=c("1","2","3","4"))
data$psqi_q9.factor = factor(data$psqi_q9,levels=c("1","2","3","4"))
data$psqi_q10.factor = factor(data$psqi_q10,levels=c("1","2","3","4"))
data$psqi_q10a.factor = factor(data$psqi_q10a,levels=c("1","2","3","4"))
data$psqi_q11b.factor = factor(data$psqi_q11b,levels=c("1","2","3","4"))
data$psqi_q11c.factor = factor(data$psqi_q11c,levels=c("1","2","3","4"))
data$psqi_q11d.factor = factor(data$psqi_q11d,levels=c("1","2","3","4"))
data$gad_7_q1.factor = factor(data$gad_7_q1,levels=c("1","2","3","4"))
data$gad_7_q2.factor = factor(data$gad_7_q2,levels=c("1","2","3","4"))
data$gad_7_q3.factor = factor(data$gad_7_q3,levels=c("1","2","3","4"))
data$gad_7_q4.factor = factor(data$gad_7_q4,levels=c("1","2","3","4"))
data$gad_7_q5.factor = factor(data$gad_7_q5,levels=c("1","2","3","4"))
data$gad_7_q6.factor = factor(data$gad_7_q6,levels=c("1","2","3","4"))
data$gad_7_q7.factor = factor(data$gad_7_q7,levels=c("1","2","3","4"))
data$phq_9_q1.factor = factor(data$phq_9_q1,levels=c("1","2","3","4"))
data$phq_9_q2.factor = factor(data$phq_9_q2,levels=c("1","2","3","4"))
data$phq_9_q3.factor = factor(data$phq_9_q3,levels=c("1","2","3","4"))
data$phq_9_q4.factor = factor(data$phq_9_q4,levels=c("1","2","3","4"))
data$phd_9_q5.factor = factor(data$phd_9_q5,levels=c("1","2","3","4"))
data$phd_9_q6.factor = factor(data$phd_9_q6,levels=c("1","2","3","4"))
data$phq_9_q7.factor = factor(data$phq_9_q7,levels=c("1","2","3","4"))
data$phq_9_q8.factor = factor(data$phq_9_q8,levels=c("1","2","3","4"))
data$phd_9_q9.factor = factor(data$phd_9_q9,levels=c("1","2","3","4"))
data$phq_9_q10.factor = factor(data$phq_9_q10,levels=c("1","2","3","4"))
data$mctq_q1.factor = factor(data$mctq_q1,levels=c("1","0"))
data$end_2.factor = factor(data$end_2,levels=c("1","0"))
data$end_3.factor = factor(data$end_3,levels=c("1","0"))
data$sleep_bundle_complete.factor = factor(data$sleep_bundle_complete,levels=c("0","1","2"))

levels(data$site.factor)=c("NBT","UHB","GRH")
levels(data$sex.factor)=c("Male","Female")
levels(data$ethnic.factor)=c("Yes","No")
levels(data$prov_suspec.factor)=c("Proven","Suspected")
levels(data$ip_op.factor)=c("Inpatient","Outpatient")
levels(data$baseline_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$adm_diabetes.factor)=c("No","T1DM","T2DM")
levels(data$adm_heart.factor)=c("No","Yes")
levels(data$adm_htn.factor)=c("No","Yes")
levels(data$adm_lung.factor)=c("No","Yes")
levels(data$adm_hiv.factor)=c("No","Yes")
levels(data$adm_liver.factor)=c("No","Yes")
levels(data$adm_kidney.factor)=c("No","Yes")
levels(data$adm_comorbs_yn.factor)=c("No","Yes")
levels(data$adm_symptom___1.factor)=c("Unchecked","Checked")
levels(data$adm_symptom___2.factor)=c("Unchecked","Checked")
levels(data$adm_symptom___3.factor)=c("Unchecked","Checked")
levels(data$adm_symptom___4.factor)=c("Unchecked","Checked")
levels(data$adm_symptom___5.factor)=c("Unchecked","Checked")
levels(data$adm_symptom___6.factor)=c("Unchecked","Checked")
levels(data$adm_symptom___7.factor)=c("Unchecked","Checked")
levels(data$adm_symptom___8.factor)=c("Unchecked","Checked")
levels(data$adm_symptom___9.factor)=c("Unchecked","Checked")
levels(data$adm_rockwood.factor)=c("1- Very Fit. People who are robust, active, energetic and motivated. These people commonly exercise regularly. They are among the fittest for their age.","2-Well. People who have no active disease symptoms but are less fit than category 1. Often, they exercise or are very active occasionally, e.g. seasonally.","3-Managing Well. People whose medical problems are well controlled, but are not regularly active beyond routine walking.","4-Vulnerable. While not dependent on others for daily help, often symptoms limit activities. A common complaint is being slowed up, and/or being tired during the day.","5-Mildly Frail. These people often have more evident slowing, and need help in high order IADLs (finances, transportation, heavy housework, medications). Typically, mild frailty progressively impairs shopping and walking outside alone, meal preparation and housework.","6-Moderately Frail. People need help with all outside activities and with keeping house. Inside, they often have problems with stairs and need help with bathing and might need minimal assistance (cuing, standby) with dressing.","7-Severely Frail. Completely dependent for personal care, from whatever cause (physical or cognitive). Even so, they seem stable and not at high risk of dying (within ~ 6 months).","8- Very Severely Frail. Completely dependent, approaching the end of life. Typically, they could not recover even from a minor illness.","9- Approaching the end of life. This category applies to people with a life expectancy < 6 months, who are not otherwise evidently frail.","NOT RECORDED IN CLERKING")
levels(data$adm_tep.factor)=c("No","Yes")
levels(data$adm_ceiling.factor)=c("For full escalation to ITU including intubation and ventilation","Not for invasive ventilation (intubation & ventilation) but would be for non-invasive ventilation (NIV) or CPAP on ward.","Not for ITU or for NIV/CPAP","For palliative treatments only")
levels(data$adm_news.factor)=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20")
levels(data$admission_details_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$fu_posneg.factor)=c("Proven","Suspected")
levels(data$fu_swab.factor)=c("No- no positive swabs","Yes")
levels(data$fu_cxr_severity.factor)=c("0","1","2","3","4","5","6","7","8")
levels(data$out_status.factor)=c("Yes","No deceased")
levels(data$out_discharged.factor)=c("No- continually an inpatient since consent","Yes- Discharged with no further contact","Yes- Discharged but readmitted")
levels(data$out_discharged_2.factor)=c("No- continually an inpatient since readmission","Yes- Discharged with no further contact","Yes- Discharged but readmitted again")
levels(data$out_itu.factor)=c("No","Intensive care","High Care (Resp/CCU/Recovery)")
levels(data$out_niv.factor)=c("No","CPAP","HFNO","BiPAP")
levels(data$out_ventilation.factor)=c("No","Yes")
levels(data$out_rrt.factor)=c("No","Yes")
levels(data$out_inotrop.factor)=c("No","Yes")
levels(data$out_oxygen.factor)=c("No","Yes")
levels(data$out_complications___1.factor)=c("Unchecked","Checked")
levels(data$out_complications___2.factor)=c("Unchecked","Checked")
levels(data$out_complications___3.factor)=c("Unchecked","Checked")
levels(data$out_complications___4.factor)=c("Unchecked","Checked")
levels(data$out_complications___5.factor)=c("Unchecked","Checked")
levels(data$out_complications___6.factor)=c("Unchecked","Checked")
levels(data$out_complications___7.factor)=c("Unchecked","Checked")
levels(data$out_complications___8.factor)=c("Unchecked","Checked")
levels(data$out_complications___9.factor)=c("Unchecked","Checked")
levels(data$out_complications___10.factor)=c("Unchecked","Checked")
levels(data$out_complications___11.factor)=c("Unchecked","Checked")
levels(data$out_complications___12.factor)=c("Unchecked","Checked")
levels(data$out_complications___13.factor)=c("Unchecked","Checked")
levels(data$out_complications___14.factor)=c("Unchecked","Checked")
levels(data$out_complications___15.factor)=c("Unchecked","Checked")
levels(data$day_outcomes_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$sp_ethnic.factor)=c("Yes","No")
levels(data$sp_abbott.factor)=c("Negative","Positive")
levels(data$sp_abbott_12.factor)=c("Negative","Positive")
levels(data$special_tests_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$fu12_attend.factor)=c("No","Yes")
levels(data$fu12_dna.factor)=c("Not contactable","Did not want to attend (shielding, etc)","Nursing home resident","Current hospital inpatient","Died")
levels(data$fu12_diagnosis.factor)=c("PCR confirmed","Suspected- Definite","Suspected- Probable","Suspected- Possible","Initial presentation unlikely related to COVID-19")
levels(data$fu12_ps.factor)=c("0","1","2","3","4")
levels(data$fu12_smoker.factor)=c("Current","Ex-smoker","Never smoker")
levels(data$fu12_mrc.factor)=c("1","2","3","4","5")
levels(data$fu12_symptoms___1.factor)=c("Unchecked","Checked")
levels(data$fu12_symptoms___2.factor)=c("Unchecked","Checked")
levels(data$fu12_symptoms___3.factor)=c("Unchecked","Checked")
levels(data$fu12_symptoms___4.factor)=c("Unchecked","Checked")
levels(data$fu12_symptoms___5.factor)=c("Unchecked","Checked")
levels(data$fu12_symptoms___6.factor)=c("Unchecked","Checked")
levels(data$fu12_symptoms___7.factor)=c("Unchecked","Checked")
levels(data$fu12_symptoms___8.factor)=c("Unchecked","Checked")
levels(data$fu12_symptoms___9.factor)=c("Unchecked","Checked")
levels(data$fu12_exam.factor)=c("No","Yes")
levels(data$fu12_cxr.factor)=c("CXR performed- normal","CXR performed- abnormal","CXR not performed")
levels(data$fu12_fu.factor)=c("Discharged (no further fu)","Further follow up- no investigations/referrals","Further follow up- investigations/referrals as below")
levels(data$fu12_inv___1.factor)=c("Unchecked","Checked")
levels(data$fu12_inv___2.factor)=c("Unchecked","Checked")
levels(data$fu12_inv___3.factor)=c("Unchecked","Checked")
levels(data$fu12_inv___4.factor)=c("Unchecked","Checked")
levels(data$fu12_ae.factor)=c("No","Yes")
levels(data$fu12_aefu.factor)=c("No","Yes resolved")
levels(data$fu12_race.factor)=c("Asian","Black","Caucasian","Hispanic","NEAsia","Other/mixed","Polynesian","SEAsia")
levels(data$fu12_spirosum___0.factor)=c("Unchecked","Checked")
levels(data$fu12_spirosum___1.factor)=c("Unchecked","Checked")
levels(data$fu12_spirosum___2.factor)=c("Unchecked","Checked")
levels(data$fu12_antibody.factor)=c("Negative","Positive")
levels(data$sf36_1.factor)=c("1","2","3","4","5")
levels(data$sf36_2.factor)=c("1","2","3","4","5")
levels(data$sf36_3.factor)=c("1","2","3")
levels(data$sf36_4.factor)=c("1","2","3")
levels(data$sf36_5.factor)=c("1","2","3")
levels(data$sf36_6.factor)=c("1","2","3")
levels(data$sf36_7.factor)=c("1","2","3")
levels(data$sf36_8.factor)=c("1","2","3")
levels(data$sf36_9.factor)=c("1","2","3")
levels(data$sf36_10.factor)=c("1","2","3")
levels(data$sf36_11.factor)=c("1","2","3")
levels(data$sf36_12.factor)=c("1","2","3")
levels(data$sf36_13.factor)=c("1","2")
levels(data$sf36_14.factor)=c("1","2")
levels(data$sf36_15.factor)=c("1","2")
levels(data$sf36_16.factor)=c("1","2")
levels(data$sf36_17.factor)=c("1","2")
levels(data$sf36_19.factor)=c("1","2")
levels(data$sf36_18.factor)=c("1","2")
levels(data$sf36_20.factor)=c("1","2","3","4","5")
levels(data$sf36_21.factor)=c("1","2","3","4","5","6")
levels(data$sf36_22.factor)=c("1","2","3","4","5")
levels(data$sf36_23.factor)=c("1","2","3","4","5","6")
levels(data$sf36_24.factor)=c("1","2","3","4","5","6")
levels(data$sf36_25.factor)=c("1","2","3","4","5","6")
levels(data$sf36_26.factor)=c("1","2","3","4","5","6")
levels(data$sf36_27.factor)=c("1","2","3","4","5","6")
levels(data$sf36_28.factor)=c("1","2","3","4","5","6")
levels(data$sf36_29.factor)=c("1","2","3","4","5","6")
levels(data$sf36_30.factor)=c("1","2","3","4","5","6")
levels(data$sf36_31.factor)=c("1","2","3","4","5","6")
levels(data$sf36_32.factor)=c("1","2","3","4","5")
levels(data$sf36_33.factor)=c("1","2","3","4","5")
levels(data$sf36_34.factor)=c("1","2","3","4","5")
levels(data$sf36_35.factor)=c("1","2","3","4","5")
levels(data$sf36_36.factor)=c("1","2","3","4","5")
levels(data$wemwbs_1.factor)=c("1","2","3","4","5")
levels(data$wemwbs_2.factor)=c("1","2","3","4","5")
levels(data$wemwbs_3.factor)=c("1","2","3","4","5")
levels(data$wemwbs_4.factor)=c("1","2","3","4","5")
levels(data$wemwbs_5.factor)=c("1","2","3","4","5")
levels(data$wemwbs_6.factor)=c("1","2","3","4","5")
levels(data$wemwbs_7.factor)=c("1","2","3","4","5")
levels(data$wemwbs_8.factor)=c("1","2","3","4","5")
levels(data$wemwbs_9.factor)=c("1","2","3","4","5")
levels(data$wemwbs_10.factor)=c("1","2","3","4","5")
levels(data$wemwbs_11.factor)=c("1","2","3","4","5")
levels(data$wemwbs_12.factor)=c("1","2","3","4","5")
levels(data$wemwbs_13.factor)=c("1","2","3","4","5")
levels(data$wemwbs_14.factor)=c("1","2","3","4","5")
levels(data$week_follow_up_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$fu8m_attend.factor)=c("No","Yes")
levels(data$fu8m_dna.factor)=c("Not contactable","Did not want to attend (shielding, etc)","Nursing home resident","Current hospital inpatient","Died","Wanted phone call instead")
levels(data$fu8m_vac_yn.factor)=c("No","Yes")
levels(data$fu8m_vac_type.factor)=c("Pfizer","AZ","Moderna")
levels(data$fu8m_ps.factor)=c("0","1","2","3","4")
levels(data$fu8m_mrc.factor)=c("1","2","3","4","5")
levels(data$fu8m_chestsym___1.factor)=c("Unchecked","Checked")
levels(data$fu8m_chestsym___2.factor)=c("Unchecked","Checked")
levels(data$fu8m_chestsym___3.factor)=c("Unchecked","Checked")
levels(data$fu8m_chestsym___4.factor)=c("Unchecked","Checked")
levels(data$fu8m_chestsym___5.factor)=c("Unchecked","Checked")
levels(data$fu8m_entsym___1.factor)=c("Unchecked","Checked")
levels(data$fu8m_entsym___2.factor)=c("Unchecked","Checked")
levels(data$fu8m_entsym___3.factor)=c("Unchecked","Checked")
levels(data$fu8m_neurosym___1.factor)=c("Unchecked","Checked")
levels(data$fu8m_neurosym___2.factor)=c("Unchecked","Checked")
levels(data$fu8m_neurosym___3.factor)=c("Unchecked","Checked")
levels(data$fu8m_neurosym___4.factor)=c("Unchecked","Checked")
levels(data$fu8m_neurosym___5.factor)=c("Unchecked","Checked")
levels(data$fu8m_abdosym___1.factor)=c("Unchecked","Checked")
levels(data$fu8m_abdosym___2.factor)=c("Unchecked","Checked")
levels(data$fu8m_abdosym___3.factor)=c("Unchecked","Checked")
levels(data$fu8m_abdosym___4.factor)=c("Unchecked","Checked")
levels(data$fu8m_abdosym___5.factor)=c("Unchecked","Checked")
levels(data$fu8m_chestsym_2___1.factor)=c("Unchecked","Checked")
levels(data$fu8m_chestsym_2___2.factor)=c("Unchecked","Checked")
levels(data$fu8m_chestsym_2___3.factor)=c("Unchecked","Checked")
levels(data$fu8m_chestsym_2___4.factor)=c("Unchecked","Checked")
levels(data$fu8m_chestsym_2___5.factor)=c("Unchecked","Checked")
levels(data$fu8m_entsym_2___1.factor)=c("Unchecked","Checked")
levels(data$fu8m_entsym_2___2.factor)=c("Unchecked","Checked")
levels(data$fu8m_entsym_2___3.factor)=c("Unchecked","Checked")
levels(data$fu8m_neurosym_2___1.factor)=c("Unchecked","Checked")
levels(data$fu8m_neurosym_2___2.factor)=c("Unchecked","Checked")
levels(data$fu8m_neurosym_2___3.factor)=c("Unchecked","Checked")
levels(data$fu8m_neurosym_2___4.factor)=c("Unchecked","Checked")
levels(data$fu8m_neurosym_2___5.factor)=c("Unchecked","Checked")
levels(data$fu8m_abdosym_2___1.factor)=c("Unchecked","Checked")
levels(data$fu8m_abdosym_2___2.factor)=c("Unchecked","Checked")
levels(data$fu8m_abdosym_2___3.factor)=c("Unchecked","Checked")
levels(data$fu8m_abdosym_2___4.factor)=c("Unchecked","Checked")
levels(data$fu8m_abdosym_2___5.factor)=c("Unchecked","Checked")
levels(data$fu8m_cxr_order.factor)=c("Yes","No")
levels(data$fu8m_cxr_result.factor)=c("CXR normal","CXR ABnormal")
levels(data$facets.factor)=c("No- not fatigued","Yes","Fatigued but declined FACETS")
levels(data$fu8m_antibody.factor)=c("Negative","Positive")
levels(data$sf36_1_8m.factor)=c("1","2","3","4","5")
levels(data$sf36_2_8m.factor)=c("1","2","3","4","5")
levels(data$sf36_3_8m.factor)=c("1","2","3")
levels(data$sf36_4_8m.factor)=c("1","2","3")
levels(data$sf36_5_8m.factor)=c("1","2","3")
levels(data$sf36_6_8m.factor)=c("1","2","3")
levels(data$sf36_7_8m.factor)=c("1","2","3")
levels(data$sf36_8_8m.factor)=c("1","2","3")
levels(data$sf36_9_8m.factor)=c("1","2","3")
levels(data$sf36_10_8m.factor)=c("1","2","3")
levels(data$sf36_11_8m.factor)=c("1","2","3")
levels(data$sf36_12_8m.factor)=c("1","2","3")
levels(data$sf36_13_8m.factor)=c("1","2")
levels(data$sf36_14_8m.factor)=c("1","2")
levels(data$sf36_15_8m.factor)=c("1","2")
levels(data$sf36_16_8m.factor)=c("1","2")
levels(data$sf36_17_8m.factor)=c("1","2")
levels(data$sf36_19_8m.factor)=c("1","2")
levels(data$sf36_18_8m.factor)=c("1","2")
levels(data$sf36_20_8m.factor)=c("1","2","3","4","5")
levels(data$sf36_21_8m.factor)=c("1","2","3","4","5","6")
levels(data$sf36_22_8m.factor)=c("1","2","3","4","5")
levels(data$sf36_23_8m.factor)=c("1","2","3","4","5","6")
levels(data$sf36_24_8m.factor)=c("1","2","3","4","5","6")
levels(data$sf36_25_8m.factor)=c("1","2","3","4","5","6")
levels(data$sf36_26_8m.factor)=c("1","2","3","4","5","6")
levels(data$sf36_27_8m.factor)=c("1","2","3","4","5","6")
levels(data$sf36_28_8m.factor)=c("1","2","3","4","5","6")
levels(data$sf36_29_8m.factor)=c("1","2","3","4","5","6")
levels(data$sf36_30_8m.factor)=c("1","2","3","4","5","6")
levels(data$sf36_31_8m.factor)=c("1","2","3","4","5","6")
levels(data$sf36_32_8m.factor)=c("1","2","3","4","5")
levels(data$sf36_33_8m.factor)=c("1","2","3","4","5")
levels(data$sf36_34_8m.factor)=c("1","2","3","4","5")
levels(data$sf36_35_8m.factor)=c("1","2","3","4","5")
levels(data$sf36_36_8m.factor)=c("1","2","3","4","5")
levels(data$wemwbs_1_8m.factor)=c("1","2","3","4","5")
levels(data$wemwbs_2_8m.factor)=c("1","2","3","4","5")
levels(data$wemwbs_3_8m.factor)=c("1","2","3","4","5")
levels(data$wemwbs_4_8m.factor)=c("1","2","3","4","5")
levels(data$wemwbs_5_8m.factor)=c("1","2","3","4","5")
levels(data$wemwbs_6_8m.factor)=c("1","2","3","4","5")
levels(data$wemwbs_7_8m.factor)=c("1","2","3","4","5")
levels(data$wemwbs_8_8m.factor)=c("1","2","3","4","5")
levels(data$wemwbs_9_8m.factor)=c("1","2","3","4","5")
levels(data$wemwbs_10_8m.factor)=c("1","2","3","4","5")
levels(data$wemwbs_11_8m.factor)=c("1","2","3","4","5")
levels(data$wemwbs_12_8m.factor)=c("1","2","3","4","5")
levels(data$wemwbs_13_8m.factor)=c("1","2","3","4","5")
levels(data$wemwbs_14_8m.factor)=c("1","2","3","4","5")
levels(data$month_follow_up_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$vac_control.factor)=c("Control","Vaccinated")
levels(data$chestsym_vac___1.factor)=c("Unchecked","Checked")
levels(data$chestsym_vac___2.factor)=c("Unchecked","Checked")
levels(data$chestsym_vac___3.factor)=c("Unchecked","Checked")
levels(data$chestsym_vac___4.factor)=c("Unchecked","Checked")
levels(data$chestsym_vac___5.factor)=c("Unchecked","Checked")
levels(data$entsym_vac___1.factor)=c("Unchecked","Checked")
levels(data$entsym_vac___2.factor)=c("Unchecked","Checked")
levels(data$entsym_vac___3.factor)=c("Unchecked","Checked")
levels(data$neurosym_vac___1.factor)=c("Unchecked","Checked")
levels(data$neurosym_vac___2.factor)=c("Unchecked","Checked")
levels(data$neurosym_vac___3.factor)=c("Unchecked","Checked")
levels(data$neurosym_vac___4.factor)=c("Unchecked","Checked")
levels(data$neurosym_vac___5.factor)=c("Unchecked","Checked")
levels(data$abdosym_vac___1.factor)=c("Unchecked","Checked")
levels(data$abdosym_vac___2.factor)=c("Unchecked","Checked")
levels(data$abdosym_vac___3.factor)=c("Unchecked","Checked")
levels(data$abdosym_vac___4.factor)=c("Unchecked","Checked")
levels(data$abdosym_vac___5.factor)=c("Unchecked","Checked")
levels(data$newsym_resolved_vac.factor)=c("Yes","No")
levels(data$sf36_1_8m_vac.factor)=c("1","2","3","4","5")
levels(data$sf36_2_8m_vac.factor)=c("1","2","3","4","5")
levels(data$sf36_3_8m_vac.factor)=c("1","2","3")
levels(data$sf36_4_8m_vac.factor)=c("1","2","3")
levels(data$sf36_5_8m_vac.factor)=c("1","2","3")
levels(data$sf36_6_8m_vac.factor)=c("1","2","3")
levels(data$sf36_7_8m_vac.factor)=c("1","2","3")
levels(data$sf36_8_8m_vac.factor)=c("1","2","3")
levels(data$sf36_9_8m_vac.factor)=c("1","2","3")
levels(data$sf36_10_8m_vac.factor)=c("1","2","3")
levels(data$sf36_11_8m_vac.factor)=c("1","2","3")
levels(data$sf36_12_8m_vac.factor)=c("1","2","3")
levels(data$sf36_13_8m_vac.factor)=c("1","2")
levels(data$sf36_14_8m_vac.factor)=c("1","2")
levels(data$sf36_15_8m_vac.factor)=c("1","2")
levels(data$sf36_16_8m_vac.factor)=c("1","2")
levels(data$sf36_17_8m_vac.factor)=c("1","2")
levels(data$sf36_19_8m_vac.factor)=c("1","2")
levels(data$sf36_18_8m_vac.factor)=c("1","2")
levels(data$sf36_20_8m_vac.factor)=c("1","2","3","4","5")
levels(data$sf36_21_8m_vac.factor)=c("1","2","3","4","5","6")
levels(data$sf36_22_8m_vac.factor)=c("1","2","3","4","5")
levels(data$sf36_23_8m_vac.factor)=c("1","2","3","4","5","6")
levels(data$sf36_24_8m_vac.factor)=c("1","2","3","4","5","6")
levels(data$sf36_25_8m_vac.factor)=c("1","2","3","4","5","6")
levels(data$sf36_26_8m_vac.factor)=c("1","2","3","4","5","6")
levels(data$sf36_27_8m_vac.factor)=c("1","2","3","4","5","6")
levels(data$sf36_28_8m_vac.factor)=c("1","2","3","4","5","6")
levels(data$sf36_29_8m_vac.factor)=c("1","2","3","4","5","6")
levels(data$sf36_30_8m_vac.factor)=c("1","2","3","4","5","6")
levels(data$sf36_31_8m_vac.factor)=c("1","2","3","4","5","6")
levels(data$sf36_32_8m_vac.factor)=c("1","2","3","4","5")
levels(data$sf36_33_8m_vac.factor)=c("1","2","3","4","5")
levels(data$sf36_34_8m_vac.factor)=c("1","2","3","4","5")
levels(data$sf36_35_8m_vac.factor)=c("1","2","3","4","5")
levels(data$sf36_36_8m_vac.factor)=c("1","2","3","4","5")
levels(data$wemwbs_1_8m_vac.factor)=c("1","2","3","4","5")
levels(data$wemwbs_2_8m_vac.factor)=c("1","2","3","4","5")
levels(data$wemwbs_3_8m_vac.factor)=c("1","2","3","4","5")
levels(data$wemwbs_4_8m_vac.factor)=c("1","2","3","4","5")
levels(data$wemwbs_5_8m_vac.factor)=c("1","2","3","4","5")
levels(data$wemwbs_6_8m_vac.factor)=c("1","2","3","4","5")
levels(data$wemwbs_7_8m_vac.factor)=c("1","2","3","4","5")
levels(data$wemwbs_8_8m_vac.factor)=c("1","2","3","4","5")
levels(data$wemwbs_9_8m_vac.factor)=c("1","2","3","4","5")
levels(data$wemwbs_10_8m_vac.factor)=c("1","2","3","4","5")
levels(data$wemwbs_11_8m_vac.factor)=c("1","2","3","4","5")
levels(data$wemwbs_12_8m_vac.factor)=c("1","2","3","4","5")
levels(data$wemwbs_13_8m_vac.factor)=c("1","2","3","4","5")
levels(data$wemwbs_14_8m_vac.factor)=c("1","2","3","4","5")
levels(data$post_vaccine_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$patient_consent___1.factor)=c("Unchecked","Checked")
levels(data$background_1.factor)=c("Yes","No")
levels(data$background_2.factor)=c("Yes","No")
levels(data$background_4.factor)=c("Slept less during acute illness - now back to normal","Slept more during acute illness - now back to normal","Ongoing sleep problems - sleeping more (day or night)","Ongoing sleep problems - difficulty sleeping or poor quality sleep","Other")
levels(data$background_7.factor)=c("Yes","No")
levels(data$background_6.factor)=c("Yes","No")
levels(data$psqi_q5a.factor)=c("Not during the past month","Less than once a week","Once or twice a week","Three or more times a week")
levels(data$psqi_q5b.factor)=c("Not during the past month","Less than once a week","Once or twice a week","Three or more times a week")
levels(data$psqi_q5c.factor)=c("Not during the past month","Less than once a week","Once or twice a week","Three or more times a week")
levels(data$psqi_q5d.factor)=c("Not during the past month","Less than once a week","Once or twice a week","Three or more times a week")
levels(data$psqi_5e.factor)=c("Not during the past month","Less than once a week","Once or twice a week","Three or more times a week")
levels(data$psqi_5f.factor)=c("Not during the past month","Less than once a week","Once or twice a week","Three or more times a week")
levels(data$psqi_5g.factor)=c("Not during the past month","Less than once a week","Once or twice a week","Three or more times a week")
levels(data$psqi_q5h.factor)=c("Not during the past month","Less than once a week","Once or twice a week","Three or more times a week")
levels(data$psqi_q5i.factor)=c("Not during the past month","Less than once a week","Once or twice a week","Three or more times a week")
levels(data$psqi_q6.factor)=c("Not during the past month","Less than once a week","Once or twice a week","Three or more times a week")
levels(data$psqi_q7.factor)=c("Not during the past month","Less than once a week","Once or twice a week","Three or more times a week")
levels(data$psqi_q8.factor)=c("No problem at all","Only a very slight problem","Somewhat of a problem","A very big problem")
levels(data$psqi_q9.factor)=c("Very good","Fairly good","Fairly bad","Very bad")
levels(data$psqi_q10.factor)=c("No bed partner or room mate","Partner/room mate in other room","Partner in same room but not the same bed","Partner in same bed")
levels(data$psqi_q10a.factor)=c("Not during the past month","Less than once a week","Once or twice a week","Three or more times a week")
levels(data$psqi_q11b.factor)=c("Not during the past month","Less than once a week","Once or twice a week","Three or more times a week")
levels(data$psqi_q11c.factor)=c("Not during the past month","Less than once a week","Once or twice a week","Three or more times a week")
levels(data$psqi_q11d.factor)=c("Not during the past month","Less than once a week","Once or twice a week","Three or more times a week")
levels(data$gad_7_q1.factor)=c("Not at all","Several days","More than half the days","Nearly every day")
levels(data$gad_7_q2.factor)=c("Not at all","Several days","More than half the days","Nearly every day")
levels(data$gad_7_q3.factor)=c("Not at all","Several days","More than half the days","Nearly every day")
levels(data$gad_7_q4.factor)=c("Not at all","Several days","More than half the days","Nearly every day")
levels(data$gad_7_q5.factor)=c("Not at all","Several days","More than half the days","Nearly every day")
levels(data$gad_7_q6.factor)=c("Not at all","Several days","More than half the days","Nearly every day")
levels(data$gad_7_q7.factor)=c("Not at all","Several days","More than half the days","Nearly every day")
levels(data$phq_9_q1.factor)=c("Not at all","Several days","More than half the days","Nearly every day")
levels(data$phq_9_q2.factor)=c("Not at all","Several days","More than half the days","Nearly every day")
levels(data$phq_9_q3.factor)=c("Not at all","Several days","More than half the days","Nearly every day")
levels(data$phq_9_q4.factor)=c("Not at all","Several days","More than half the days","Nearly every day")
levels(data$phd_9_q5.factor)=c("Not at all","Several days","More than half the days","Nearly every day")
levels(data$phd_9_q6.factor)=c("Not at all","Several days","More than half the days","Nearly every day")
levels(data$phq_9_q7.factor)=c("Not at all","Several days","More than half the days","Nearly every day")
levels(data$phq_9_q8.factor)=c("Not at all","Several days","More than half the days","Nearly every day")
levels(data$phd_9_q9.factor)=c("Not at all","Several days","More than half the days","Nearly every day")
levels(data$phq_9_q10.factor)=c("Not difficult at all","Somewhat difficult","Very difficult","Extremely difficult")
levels(data$mctq_q1.factor)=c("Yes","No")
levels(data$end_2.factor)=c("Yes","No")
levels(data$end_3.factor)=c("Yes","No")
levels(data$sleep_bundle_complete.factor)=c("Incomplete","Unverified","Complete")
