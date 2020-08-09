#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('DISCOVER_DATA_2020-08-04_1835.csv')
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
