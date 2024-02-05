class StudentProfile {
  StudentProfile({
    this.id,
    this.studentFirstName,
    this.studentDOB,
    this.mothersFullName,
    this.registeredEmailId,
    this.followingInformationProvidedby,
    this.ifOther,
    this.studentMiddleName1,
    this.studentMiddleName2,
    this.studentLastName,
    this.gender,
    this.bloodGroup,
    this.rhFactor,
    this.numberOfSisters,
    this.numberOfBrothers,
    this.mothersFirstName,
    this.mothersMiddleName1,
    this.mothersMiddleName2,
    this.mothersLastName,
    this.mothersEthnicity,
    this.mothersEthnicityIfOther,
    this.fathersFirstName,
    this.fathersMiddleName1,
    this.fathersMiddleName2,
    this.fathersLastName,
    this.fathersEthnicity,
    this.fathersEthnicityIfOther,
    this.doYouHaveHealthInsurance,
    this.medicalAid,
    this.policyCard,
    this.expiryDate,
    this.buildingName,
    this.apartmentVillaNo,
    this.streetNo,
    this.area,
    this.city,
    this.country,
    this.zipCode,
    this.emergencyMobileNumberRegisteredWithSchool,
    this.alternateMobileNumber,
    this.belongsTo,
    this.emailRegisteredWithSchool,
    this.primaryContact,
    this.primaryContactBelongsTo,
    this.primaryContactBelongsToOther,
    this.primaryContactFullName,
    this.secondaryContact,
    this.secondaryContactBelongsTo,
    this.secondaryContactBelongsToOther,
    this.secondaryContactFullName,
    this.familyDoctorName,
    this.doctorContactNumber,
    this.whatTypeofRecreationalActivityDoesthestudentenjoy,
    this.whichOftheFollowingActivitiesDoesthestudentenjoy,
    this.activitesOther,
    this.istheStudentMemberofasportsTeamatschool,
    this.istheStudentMemberofasportsTeamatschoolYes,
    this.doYouHavePetsAtHome,
    this.doYouHavePetsAtHomeYesAnimal,
    this.doYouHavePetsAtHomeYesDuration,
    this.usualNumberofMealsday,
    this.usualNumberofSnacksday,
    this.whatIsTheStudentsAverageFluidIntake,
    this.typeOfMeal,
    this.typeOfMealOther,
    this.doesTheStudentHaveBreakfastRegularly,
    this.doesTheStudentHaveRegularMealAtSchool,
    this.studentIfYesWhereDoesItComeFrom,
    this.studentIfOther,
    this.isTheStudentIntolerantToAnyFoodGroup,
    this.foodGroupOther,
    this.onAnAverageIstheStudentFreshandrelaxedNightSleep,
    this.doesTheStudentHaveAnySleepRelatedIssues,
    this.sleepRelatedIssuesOther,
    this.whatIsTheStudentsAverageLengthOfSleepPerNight,
    this.whatIsTheStudentsNapCycleDuringDayNap,
    this.howWouldYouDescribeTheSocialPersonalityOftheStudent,
    this.socialPersonalityOther,
    this.specifyIfTheStudentHasAnyIrrationalFearsPhobias,
    this.howWouldYouRateTheStudentsSelfImageSelfWorth,
    this.howWouldYouRateStudentsCooperationInHousedholdChores,
    this.howWouldYouBestDescribeTheStudentReactionToChange,
    this.studentReactionOther,
    this.howWouldYouDescribeStudentRsWithOtherStudents,
    this.howWouldYouDescribeStudentRsWithOtherStudentsOther,
    this.doesTheStudentHaveAnySignificantlyCloseFriends,
    this.studentCloseFriendsYesHowManyGirls,
    this.studentCloseFriendsYesHowManyBoys,
    this.whatIsStudentGeneralOpinionOfSchool,
    this.theStudentGoesToSchool,
    this.howWouldYouRateStudentOverallAttendanceAtSchool,
    this.doYouHaveConcernsFollowingRespectTotheStudent,
    this.howWouldYouRateTheStudentOverallPhysicalHealth,
    this.istheStudentsSchoolPerformanceAffectedByAnyFollowing,
    this.istheStudentSignificantlyDissatisfiedByanyFollowing,
    this.studentDissatisfiedOther,
    this.anyOngoingIllnessconditionMembersoftheStudentsFamily,
    this.anyStudentsFamilyOther,
    this.doesTheStudentHaveAnyMedicalissueInThePast,
    this.doesTheStudentHaveAnyMedicalissueInThePastYes,
    this.doesTheStudentHaveAnyMedicalissueCurrently,
    this.doesTheStudentHaveAnyMedicalissueCurrentlyYes,
    this.pastMedication,
    this.currentMedication,
    this.anyKnownAllergies,
    this.anyKnownAllergiesYes,
    this.bCGDose0,
    this.bCGDose1,
    this.bCGDose2,
    this.bCGDose3,
    this.bCGDose4,
    this.chickenPoxDose0,
    this.chickenPoxDose1,
    this.chickenPoxDose2,
    this.chickenPoxDose3,
    this.chickenPoxDose4,
    this.choleraDose0,
    this.choleraDose1,
    this.choleraDose2,
    this.choleraDose3,
    this.choleraDose4,
    this.cOVIDVaccinationDose0,
    this.cOVIDVaccinationDose1,
    this.cOVIDVaccinationDose2,
    this.cOVIDVaccinationDose3,
    this.cOVIDVaccinationDose4,
    this.dPTDose0,
    this.dPTDose1,
    this.dPTDose2,
    this.dPTDose3,
    this.dPTDose4,
    this.dTDose0,
    this.dTDose1,
    this.dTDose2,
    this.dTDose3,
    this.dTDose4,
    this.hepatitisADose0,
    this.hepatitisADose1,
    this.hepatitisADose2,
    this.hepatitisADose3,
    this.hepatitisADose4,
    this.hepatitisBDose0,
    this.hepatitisBDose1,
    this.hepatitisBDose2,
    this.hepatitisBDose3,
    this.hepatitisBDose4,
    this.hPVDose0,
    this.hPVDose1,
    this.hPVDose2,
    this.hPVDose3,
    this.hPVDose4,
    this.influenzaHIBDose0,
    this.influenzaHIBDose1,
    this.influenzaHIBDose2,
    this.influenzaHIBDose3,
    this.influenzaHIBDose4,
    this.influenzaViralDose0,
    this.influenzaViralDose1,
    this.influenzaViralDose2,
    this.influenzaViralDose3,
    this.influenzaViralDose4,
    this.mMRDose0,
    this.mMRDose1,
    this.mMRDose2,
    this.mMRDose3,
    this.mMRDose4,
    this.mumpsMeaslesDose0,
    this.mumpsMeaslesDose1,
    this.mumpsMeaslesDose2,
    this.mumpsMeaslesDose3,
    this.mumpsMeaslesDose4,
    this.oralPolioDose0,
    this.oralPolioDose1,
    this.oralPolioDose2,
    this.oralPolioDose3,
    this.oralPolioDose4,
    this.rotaVirusDose0,
    this.rotaVirusDose1,
    this.rotaVirusDose2,
    this.rotaVirusDose3,
    this.rotaVirusDose4,
    this.tetanusToxoidDose0,
    this.tetanusToxoidDose1,
    this.tetanusToxoidDose2,
    this.tetanusToxoidDose3,
    this.tetanusToxoidDose4,
    this.typhoidDose0,
    this.typhoidDose1,
    this.typhoidDose2,
    this.typhoidDose3,
    this.typhoidDose4,
    this.yellowFeverDose0,
    this.yellowFeverDose1,
    this.yellowFeverDose2,
    this.yellowFeverDose3,
    this.yellowFeverDose4,
    this.lastDateSignedCopyOfForm,
    this.typeYourName,
    this.gaurdianOf,
    this.ofClass,
    this.signature,
    this.uploadSign,
    this.uploadPhoto,
    this.submittedDate,
    this.place,
    this.termsAndConditions,
  });

  StudentProfile.fromJson(dynamic json) {
    id = json['id'];
    studentFirstName = json['Student_FirstName'];
    studentDOB = json['Student_DOB'];
    mothersFullName = json['Mothers_FullName'];
    registeredEmailId = json['Registered_EmailId'];
    followingInformationProvidedby = json['following_information_providedby'];
    ifOther = json['If_Other'];
    studentMiddleName1 = json['Student_MiddleName1'];
    studentMiddleName2 = json['Student_MiddleName2'];
    studentLastName = json['Student_LastName'];
    gender = json['Gender'];
    bloodGroup = json['BloodGroup'];
    rhFactor = json['Rh_Factor'];
    numberOfSisters = json['Number_Of_Sisters'];
    numberOfBrothers = json['Number_Of_Brothers'];
    mothersFirstName = json['Mothers_FirstName'];
    mothersMiddleName1 = json['Mothers_MiddleName1'];
    mothersMiddleName2 = json['Mothers_MiddleName2'];
    mothersLastName = json['Mothers_LastName'];
    mothersEthnicity = json['Mothers_Ethnicity'];
    mothersEthnicityIfOther = json['Mothers_Ethnicity_If_Other'];
    fathersFirstName = json['Fathers_FirstName'];
    fathersMiddleName1 = json['Fathers_MiddleName1'];
    fathersMiddleName2 = json['Fathers_MiddleName2'];
    fathersLastName = json['Fathers_LastName'];
    fathersEthnicity = json['Fathers_Ethnicity'];
    fathersEthnicityIfOther = json['Fathers_Ethnicity_If_Other'];
    doYouHaveHealthInsurance = json['Do_you_have_health_insurance'];
    medicalAid = json['Medical_Aid'];
    policyCard = json['Policy_Card'];
    expiryDate = json['Expiry_Date'];
    buildingName = json['Building_Name'];
    apartmentVillaNo = json['Apartment_Villa_No'];
    streetNo = json['Street_No'];
    area = json['Area'];
    city = json['City'];
    country = json['Country'];
    zipCode = json['Zip_Code'];
    emergencyMobileNumberRegisteredWithSchool =
        json['Emergency_MobileNumber_Registered_with_school'];
    alternateMobileNumber = json['Alternate_MobileNumber'];
    belongsTo = json['Belongs_To'];
    emailRegisteredWithSchool = json['Email_Registered_With_School'];
    primaryContact = json['Primary_Contact'];
    primaryContactBelongsTo = json['Primary_Contact_Belongs_To'];
    primaryContactBelongsToOther = json['Primary_Contact_Belongs_To_Other'];
    primaryContactFullName = json['Primary_Contact_Full_Name'];
    secondaryContact = json['Secondary_Contact'];
    secondaryContactBelongsTo = json['Secondary_Contact_Belongs_To'];
    secondaryContactBelongsToOther = json['Secondary_Contact_Belongs_To_Other'];
    secondaryContactFullName = json['Secondary_Contact_Full_Name'];
    familyDoctorName = json['Family_Doctor_Name'];
    doctorContactNumber = json['Doctor_Contact_Number'];
    whatTypeofRecreationalActivityDoesthestudentenjoy =
        json['What_typeof_recreational_activity_doesthestudentenjoy'];
    whichOftheFollowingActivitiesDoesthestudentenjoy =
        json['Which_ofthe_following_activities_doesthestudentenjoy'];
    activitesOther = json['Activites_Other'];
    istheStudentMemberofasportsTeamatschool =
        json['Isthe_student_memberofasports_teamatschool'];
    istheStudentMemberofasportsTeamatschoolYes =
        json['Isthe_student_memberofasports_teamatschool_Yes'];
    doYouHavePetsAtHome = json['Do_you_have_pets_at_home'];
    doYouHavePetsAtHomeYesAnimal = json['Do_you_have_pets_at_home_Yes_Animal'];
    doYouHavePetsAtHomeYesDuration =
        json['Do_you_have_pets_at_home_Yes_Duration'];
    usualNumberofMealsday = json['Usual_numberof_mealsday'];
    usualNumberofSnacksday = json['Usual_numberof_snacksday'];
    whatIsTheStudentsAverageFluidIntake =
        json['What_is_the_students_average_fluid_intake'];
    typeOfMeal = json['Type_of_meal'];
    typeOfMealOther = json['Type_of_meal_Other'];
    doesTheStudentHaveBreakfastRegularly =
        json['Does_the_student_have_breakfast_regularly'];
    doesTheStudentHaveRegularMealAtSchool =
        json['Does_the_student_have_regular_meal_at_school'];
    studentIfYesWhereDoesItComeFrom =
        json['Student_If_Yes_where_does_it_come_from'];
    studentIfOther = json['Student_If_Other'];
    isTheStudentIntolerantToAnyFoodGroup =
        json['Is_the_student_intolerant_to_any_food_group'];
    foodGroupOther = json['Food_Group_Other'];
    onAnAverageIstheStudentFreshandrelaxedNightSleep =
        json['On_an_average_isthe_student_freshandrelaxed_night_sleep'];
    doesTheStudentHaveAnySleepRelatedIssues =
        json['Does_the_student_have_any_sleep_related_issues'];
    sleepRelatedIssuesOther = json['Sleep_related_issues_Other'];
    whatIsTheStudentsAverageLengthOfSleepPerNight =
        json['What_is_the_students_average_length_of_sleep_per_night'];
    whatIsTheStudentsNapCycleDuringDayNap =
        json['What_is_the_students_nap_cycle_during_day_Nap'];
    howWouldYouDescribeTheSocialPersonalityOftheStudent =
        json['How_would_you_describe_the_social_personality_ofthe_student'];
    socialPersonalityOther = json['Social_personality_Other'];
    specifyIfTheStudentHasAnyIrrationalFearsPhobias =
        json['Specify_if_the_student_has_any_irrational_fears_phobias'];
    howWouldYouRateTheStudentsSelfImageSelfWorth =
        json['How_would_you_rate_the_students_self_image_self_worth'];
    howWouldYouRateStudentsCooperationInHousedholdChores =
        json['How_would_you_rate_students_cooperation_in_housedhold_chores'];
    howWouldYouBestDescribeTheStudentReactionToChange =
        json['How_would_you_best_describe_the_student_reaction_to_change'];
    studentReactionOther = json['Student_reaction_Other'];
    howWouldYouDescribeStudentRsWithOtherStudents =
        json['How_would_you_describe_student_rs_with_other_students'];
    howWouldYouDescribeStudentRsWithOtherStudentsOther =
        json['How_would_you_describe_student_rs_with_other_students_Other'];
    doesTheStudentHaveAnySignificantlyCloseFriends =
        json['Does_the_student_have_any_significantly_close_friends'];
    studentCloseFriendsYesHowManyGirls =
        json['student_close_friends_yes_how_many_girls'];
    studentCloseFriendsYesHowManyBoys =
        json['student_close_friends_yes_how_many_boys'];
    whatIsStudentGeneralOpinionOfSchool =
        json['What_is_student_general_opinion_of_school'];
    theStudentGoesToSchool = json['The_student_goes_to_school'];
    howWouldYouRateStudentOverallAttendanceAtSchool =
        json['How_would_you_rate_student_overall_attendance_at_school'];
    doYouHaveConcernsFollowingRespectTotheStudent =
        json['Do_you_have_concerns_following_respect_tothe_student'];
    howWouldYouRateTheStudentOverallPhysicalHealth =
        json['How_would_you_rate_the_student_overall_physical_health'];
    istheStudentsSchoolPerformanceAffectedByAnyFollowing =
        json['Isthe_students_school_performance_affected_by_any_following'];
    istheStudentSignificantlyDissatisfiedByanyFollowing =
        json['Isthe_student_significantly_dissatisfied_byany_following'];
    studentDissatisfiedOther = json['Student_dissatisfied_Other'];
    anyOngoingIllnessconditionMembersoftheStudentsFamily =
        json['Any_Ongoing_Illnesscondition_membersofthe_students_family'];
    anyStudentsFamilyOther = json['Any_students_family_Other'];
    doesTheStudentHaveAnyMedicalissueInThePast =
        json['Does_the_student_have_any_medicalissue_In_The_Past'];
    doesTheStudentHaveAnyMedicalissueInThePastYes =
        json['Does_the_student_have_any_medicalissue_In_The_Past_Yes'];
    doesTheStudentHaveAnyMedicalissueCurrently =
        json['Does_the_student_have_any_medicalissue_Currently'];
    doesTheStudentHaveAnyMedicalissueCurrentlyYes =
        json['Does_the_student_have_any_medicalissue_Currently_Yes'];
    pastMedication = json['Past_Medication'];
    currentMedication = json['Current_Medication'];
    anyKnownAllergies = json['Any_Known_Allergies'];
    anyKnownAllergiesYes = json['Any_Known_Allergies_yes'];
    bCGDose0 = json['BCG_Dose0'];
    bCGDose1 = json['BCG_Dose1'];
    bCGDose2 = json['BCG_Dose2'];
    bCGDose3 = json['BCG_Dose3'];
    bCGDose4 = json['BCG_Dose4'];
    chickenPoxDose0 = json['Chicken_Pox_Dose0'];
    chickenPoxDose1 = json['Chicken_Pox_Dose1'];
    chickenPoxDose2 = json['Chicken_Pox_Dose2'];
    chickenPoxDose3 = json['Chicken_Pox_Dose3'];
    chickenPoxDose4 = json['Chicken_Pox_Dose4'];
    choleraDose0 = json['Cholera_Dose0'];
    choleraDose1 = json['Cholera_Dose1'];
    choleraDose2 = json['Cholera_Dose2'];
    choleraDose3 = json['Cholera_Dose3'];
    choleraDose4 = json['Cholera_Dose4'];
    cOVIDVaccinationDose0 = json['COVID_Vaccination_Dose0'];
    cOVIDVaccinationDose1 = json['COVID_Vaccination_Dose1'];
    cOVIDVaccinationDose2 = json['COVID_Vaccination_Dose2'];
    cOVIDVaccinationDose3 = json['COVID_Vaccination_Dose3'];
    cOVIDVaccinationDose4 = json['COVID_Vaccination_Dose4'];
    dPTDose0 = json['DPT_Dose0'];
    dPTDose1 = json['DPT_Dose1'];
    dPTDose2 = json['DPT_Dose2'];
    dPTDose3 = json['DPT_Dose3'];
    dPTDose4 = json['DPT_Dose4'];
    dTDose0 = json['DT_Dose0'];
    dTDose1 = json['DT_Dose1'];
    dTDose2 = json['DT_Dose2'];
    dTDose3 = json['DT_Dose3'];
    dTDose4 = json['DT_Dose4'];
    hepatitisADose0 = json['HepatitisA_Dose0'];
    hepatitisADose1 = json['HepatitisA_Dose1'];
    hepatitisADose2 = json['HepatitisA_Dose2'];
    hepatitisADose3 = json['HepatitisA_Dose3'];
    hepatitisADose4 = json['HepatitisA_Dose4'];
    hepatitisBDose0 = json['HepatitisB_Dose0'];
    hepatitisBDose1 = json['HepatitisB_Dose1'];
    hepatitisBDose2 = json['HepatitisB_Dose2'];
    hepatitisBDose3 = json['HepatitisB_Dose3'];
    hepatitisBDose4 = json['HepatitisB_Dose4'];
    hPVDose0 = json['HPV_Dose0'];
    hPVDose1 = json['HPV_Dose1'];
    hPVDose2 = json['HPV_Dose2'];
    hPVDose3 = json['HPV_Dose3'];
    hPVDose4 = json['HPV_Dose4'];
    influenzaHIBDose0 = json['Influenza_HIB_Dose0'];
    influenzaHIBDose1 = json['Influenza_HIB_Dose1'];
    influenzaHIBDose2 = json['Influenza_HIB_Dose2'];
    influenzaHIBDose3 = json['Influenza_HIB_Dose3'];
    influenzaHIBDose4 = json['Influenza_HIB_Dose4'];
    influenzaViralDose0 = json['Influenza_Viral_Dose0'];
    influenzaViralDose1 = json['Influenza_Viral_Dose1'];
    influenzaViralDose2 = json['Influenza_Viral_Dose2'];
    influenzaViralDose3 = json['Influenza_Viral_Dose3'];
    influenzaViralDose4 = json['Influenza_Viral_Dose4'];
    mMRDose0 = json['MMR_Dose0'];
    mMRDose1 = json['MMR_Dose1'];
    mMRDose2 = json['MMR_Dose2'];
    mMRDose3 = json['MMR_Dose3'];
    mMRDose4 = json['MMR_Dose4'];
    mumpsMeaslesDose0 = json['Mumps_Measles_Dose0'];
    mumpsMeaslesDose1 = json['Mumps_Measles_Dose1'];
    mumpsMeaslesDose2 = json['Mumps_Measles_Dose2'];
    mumpsMeaslesDose3 = json['Mumps_Measles_Dose3'];
    mumpsMeaslesDose4 = json['Mumps_Measles_Dose4'];
    oralPolioDose0 = json['Oral_Polio_Dose0'];
    oralPolioDose1 = json['Oral_Polio_Dose1'];
    oralPolioDose2 = json['Oral_Polio_Dose2'];
    oralPolioDose3 = json['Oral_Polio_Dose3'];
    oralPolioDose4 = json['Oral_Polio_Dose4'];
    rotaVirusDose0 = json['RotaVirus_Dose0'];
    rotaVirusDose1 = json['RotaVirus_Dose1'];
    rotaVirusDose2 = json['RotaVirus_Dose2'];
    rotaVirusDose3 = json['RotaVirus_Dose3'];
    rotaVirusDose4 = json['RotaVirus_Dose4'];
    tetanusToxoidDose0 = json['Tetanus_Toxoid_Dose0'];
    tetanusToxoidDose1 = json['Tetanus_Toxoid_Dose1'];
    tetanusToxoidDose2 = json['Tetanus_Toxoid_Dose2'];
    tetanusToxoidDose3 = json['Tetanus_Toxoid_Dose3'];
    tetanusToxoidDose4 = json['Tetanus_Toxoid_Dose4'];
    typhoidDose0 = json['Typhoid_Dose0'];
    typhoidDose1 = json['Typhoid_Dose1'];
    typhoidDose2 = json['Typhoid_Dose2'];
    typhoidDose3 = json['Typhoid_Dose3'];
    typhoidDose4 = json['Typhoid_Dose4'];
    yellowFeverDose0 = json['Yellow_Fever_Dose0'];
    yellowFeverDose1 = json['Yellow_Fever_Dose1'];
    yellowFeverDose2 = json['Yellow_Fever_Dose2'];
    yellowFeverDose3 = json['Yellow_Fever_Dose3'];
    yellowFeverDose4 = json['Yellow_Fever_Dose4'];
    lastDateSignedCopyOfForm = json['Last_date_signed_copy_of_form'];
    typeYourName = json['type_your_name'];
    gaurdianOf = json['gaurdian_of'];
    ofClass = json['of_class'];
    signature = json['Signature'];
    uploadSign = json['upload_sign'];
    uploadPhoto = json['upload_photo'];
    submittedDate = json['Submitted_date'];
    place = json['place'];
    termsAndConditions = json['Terms_and_conditions'];
  }
  int? id;
  String? studentFirstName;
  String? studentDOB;
  String? mothersFullName;
  String? registeredEmailId;
  String? followingInformationProvidedby;
  dynamic ifOther;
  String? studentMiddleName1;
  String? studentMiddleName2;
  String? studentLastName;
  String? gender;
  String? bloodGroup;
  String? rhFactor;
  int? numberOfSisters;
  int? numberOfBrothers;
  String? mothersFirstName;
  dynamic mothersMiddleName1;
  dynamic mothersMiddleName2;
  String? mothersLastName;
  String? mothersEthnicity;
  dynamic mothersEthnicityIfOther;
  String? fathersFirstName;
  dynamic fathersMiddleName1;
  dynamic fathersMiddleName2;
  String? fathersLastName;
  String? fathersEthnicity;
  dynamic fathersEthnicityIfOther;
  String? doYouHaveHealthInsurance;
  String? medicalAid;
  String? policyCard;
  String? expiryDate;
  String? buildingName;
  String? apartmentVillaNo;
  String? streetNo;
  String? area;
  int? city;
  int? country;
  String? zipCode;
  String? emergencyMobileNumberRegisteredWithSchool;
  String? alternateMobileNumber;
  String? belongsTo;
  String? emailRegisteredWithSchool;
  dynamic primaryContact;
  dynamic primaryContactBelongsTo;
  dynamic primaryContactBelongsToOther;
  dynamic primaryContactFullName;
  dynamic secondaryContact;
  dynamic secondaryContactBelongsTo;
  dynamic secondaryContactBelongsToOther;
  dynamic secondaryContactFullName;
  String? familyDoctorName;
  dynamic doctorContactNumber;
  String? whatTypeofRecreationalActivityDoesthestudentenjoy;
  String? whichOftheFollowingActivitiesDoesthestudentenjoy;
  dynamic activitesOther;
  String? istheStudentMemberofasportsTeamatschool;
  String? istheStudentMemberofasportsTeamatschoolYes;
  String? doYouHavePetsAtHome;
  dynamic doYouHavePetsAtHomeYesAnimal;
  dynamic doYouHavePetsAtHomeYesDuration;
  String? usualNumberofMealsday;
  String? usualNumberofSnacksday;
  String? whatIsTheStudentsAverageFluidIntake;
  String? typeOfMeal;
  dynamic typeOfMealOther;
  String? doesTheStudentHaveBreakfastRegularly;
  String? doesTheStudentHaveRegularMealAtSchool;
  String? studentIfYesWhereDoesItComeFrom;
  dynamic studentIfOther;
  String? isTheStudentIntolerantToAnyFoodGroup;
  dynamic foodGroupOther;
  String? onAnAverageIstheStudentFreshandrelaxedNightSleep;
  String? doesTheStudentHaveAnySleepRelatedIssues;
  String? sleepRelatedIssuesOther;
  String? whatIsTheStudentsAverageLengthOfSleepPerNight;
  String? whatIsTheStudentsNapCycleDuringDayNap;
  String? howWouldYouDescribeTheSocialPersonalityOftheStudent;
  dynamic socialPersonalityOther;
  String? specifyIfTheStudentHasAnyIrrationalFearsPhobias;
  String? howWouldYouRateTheStudentsSelfImageSelfWorth;
  String? howWouldYouRateStudentsCooperationInHousedholdChores;
  String? howWouldYouBestDescribeTheStudentReactionToChange;
  String? studentReactionOther;
  String? howWouldYouDescribeStudentRsWithOtherStudents;
  dynamic howWouldYouDescribeStudentRsWithOtherStudentsOther;
  String? doesTheStudentHaveAnySignificantlyCloseFriends;
  String? studentCloseFriendsYesHowManyGirls;
  String? studentCloseFriendsYesHowManyBoys;
  String? whatIsStudentGeneralOpinionOfSchool;
  String? theStudentGoesToSchool;
  dynamic howWouldYouRateStudentOverallAttendanceAtSchool;
  dynamic doYouHaveConcernsFollowingRespectTotheStudent;
  dynamic howWouldYouRateTheStudentOverallPhysicalHealth;
  dynamic istheStudentsSchoolPerformanceAffectedByAnyFollowing;
  dynamic istheStudentSignificantlyDissatisfiedByanyFollowing;
  dynamic studentDissatisfiedOther;
  String? anyOngoingIllnessconditionMembersoftheStudentsFamily;
  String? anyStudentsFamilyOther;
  dynamic doesTheStudentHaveAnyMedicalissueInThePast;
  dynamic doesTheStudentHaveAnyMedicalissueInThePastYes;
  dynamic doesTheStudentHaveAnyMedicalissueCurrently;
  dynamic doesTheStudentHaveAnyMedicalissueCurrentlyYes;
  dynamic pastMedication;
  String? currentMedication;
  String? anyKnownAllergies;
  String? anyKnownAllergiesYes;
  String? bCGDose0;
  String? bCGDose1;
  String? bCGDose2;
  String? bCGDose3;
  String? bCGDose4;
  String? chickenPoxDose0;
  String? chickenPoxDose1;
  String? chickenPoxDose2;
  String? chickenPoxDose3;
  String? chickenPoxDose4;
  String? choleraDose0;
  String? choleraDose1;
  String? choleraDose2;
  String? choleraDose3;
  String? choleraDose4;
  String? cOVIDVaccinationDose0;
  String? cOVIDVaccinationDose1;
  String? cOVIDVaccinationDose2;
  String? cOVIDVaccinationDose3;
  String? cOVIDVaccinationDose4;
  String? dPTDose0;
  String? dPTDose1;
  String? dPTDose2;
  String? dPTDose3;
  String? dPTDose4;
  String? dTDose0;
  String? dTDose1;
  String? dTDose2;
  String? dTDose3;
  String? dTDose4;
  String? hepatitisADose0;
  String? hepatitisADose1;
  String? hepatitisADose2;
  String? hepatitisADose3;
  String? hepatitisADose4;
  String? hepatitisBDose0;
  String? hepatitisBDose1;
  String? hepatitisBDose2;
  String? hepatitisBDose3;
  String? hepatitisBDose4;
  String? hPVDose0;
  String? hPVDose1;
  String? hPVDose2;
  String? hPVDose3;
  String? hPVDose4;
  String? influenzaHIBDose0;
  String? influenzaHIBDose1;
  String? influenzaHIBDose2;
  String? influenzaHIBDose3;
  String? influenzaHIBDose4;
  String? influenzaViralDose0;
  String? influenzaViralDose1;
  String? influenzaViralDose2;
  String? influenzaViralDose3;
  String? influenzaViralDose4;
  String? mMRDose0;
  String? mMRDose1;
  String? mMRDose2;
  String? mMRDose3;
  String? mMRDose4;
  String? mumpsMeaslesDose0;
  String? mumpsMeaslesDose1;
  String? mumpsMeaslesDose2;
  String? mumpsMeaslesDose3;
  String? mumpsMeaslesDose4;
  String? oralPolioDose0;
  String? oralPolioDose1;
  String? oralPolioDose2;
  String? oralPolioDose3;
  String? oralPolioDose4;
  String? rotaVirusDose0;
  String? rotaVirusDose1;
  String? rotaVirusDose2;
  String? rotaVirusDose3;
  String? rotaVirusDose4;
  String? tetanusToxoidDose0;
  String? tetanusToxoidDose1;
  String? tetanusToxoidDose2;
  String? tetanusToxoidDose3;
  String? tetanusToxoidDose4;
  String? typhoidDose0;
  String? typhoidDose1;
  String? typhoidDose2;
  String? typhoidDose3;
  String? typhoidDose4;
  String? yellowFeverDose0;
  String? yellowFeverDose1;
  String? yellowFeverDose2;
  String? yellowFeverDose3;
  String? yellowFeverDose4;
  String? lastDateSignedCopyOfForm;
  String? typeYourName;
  String? gaurdianOf;
  String? ofClass;
  String? signature;
  String? uploadSign;
  String? uploadPhoto;
  String? submittedDate;
  String? place;
  bool? termsAndConditions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['Student_FirstName'] = studentFirstName;
    map['Student_DOB'] = studentDOB;
    map['Mothers_FullName'] = mothersFullName;
    map['Registered_EmailId'] = registeredEmailId;
    map['following_information_providedby'] = followingInformationProvidedby;
    map['If_Other'] = ifOther;
    map['Student_MiddleName1'] = studentMiddleName1;
    map['Student_MiddleName2'] = studentMiddleName2;
    map['Student_LastName'] = studentLastName;
    map['Gender'] = gender;
    map['BloodGroup'] = bloodGroup;
    map['Rh_Factor'] = rhFactor;
    map['Number_Of_Sisters'] = numberOfSisters;
    map['Number_Of_Brothers'] = numberOfBrothers;
    map['Mothers_FirstName'] = mothersFirstName;
    map['Mothers_MiddleName1'] = mothersMiddleName1;
    map['Mothers_MiddleName2'] = mothersMiddleName2;
    map['Mothers_LastName'] = mothersLastName;
    map['Mothers_Ethnicity'] = mothersEthnicity;
    map['Mothers_Ethnicity_If_Other'] = mothersEthnicityIfOther;
    map['Fathers_FirstName'] = fathersFirstName;
    map['Fathers_MiddleName1'] = fathersMiddleName1;
    map['Fathers_MiddleName2'] = fathersMiddleName2;
    map['Fathers_LastName'] = fathersLastName;
    map['Fathers_Ethnicity'] = fathersEthnicity;
    map['Fathers_Ethnicity_If_Other'] = fathersEthnicityIfOther;
    map['Do_you_have_health_insurance'] = doYouHaveHealthInsurance;
    map['Medical_Aid'] = medicalAid;
    map['Policy_Card'] = policyCard;
    map['Expiry_Date'] = expiryDate;
    map['Building_Name'] = buildingName;
    map['Apartment_Villa_No'] = apartmentVillaNo;
    map['Street_No'] = streetNo;
    map['Area'] = area;
    map['City'] = city;
    map['Country'] = country;
    map['Zip_Code'] = zipCode;
    map['Emergency_MobileNumber_Registered_with_school'] =
        emergencyMobileNumberRegisteredWithSchool;
    map['Alternate_MobileNumber'] = alternateMobileNumber;
    map['Belongs_To'] = belongsTo;
    map['Email_Registered_With_School'] = emailRegisteredWithSchool;
    map['Primary_Contact'] = primaryContact;
    map['Primary_Contact_Belongs_To'] = primaryContactBelongsTo;
    map['Primary_Contact_Belongs_To_Other'] = primaryContactBelongsToOther;
    map['Primary_Contact_Full_Name'] = primaryContactFullName;
    map['Secondary_Contact'] = secondaryContact;
    map['Secondary_Contact_Belongs_To'] = secondaryContactBelongsTo;
    map['Secondary_Contact_Belongs_To_Other'] = secondaryContactBelongsToOther;
    map['Secondary_Contact_Full_Name'] = secondaryContactFullName;
    map['Family_Doctor_Name'] = familyDoctorName;
    map['Doctor_Contact_Number'] = doctorContactNumber;
    map['What_typeof_recreational_activity_doesthestudentenjoy'] =
        whatTypeofRecreationalActivityDoesthestudentenjoy;
    map['Which_ofthe_following_activities_doesthestudentenjoy'] =
        whichOftheFollowingActivitiesDoesthestudentenjoy;
    map['Activites_Other'] = activitesOther;
    map['Isthe_student_memberofasports_teamatschool'] =
        istheStudentMemberofasportsTeamatschool;
    map['Isthe_student_memberofasports_teamatschool_Yes'] =
        istheStudentMemberofasportsTeamatschoolYes;
    map['Do_you_have_pets_at_home'] = doYouHavePetsAtHome;
    map['Do_you_have_pets_at_home_Yes_Animal'] = doYouHavePetsAtHomeYesAnimal;
    map['Do_you_have_pets_at_home_Yes_Duration'] =
        doYouHavePetsAtHomeYesDuration;
    map['Usual_numberof_mealsday'] = usualNumberofMealsday;
    map['Usual_numberof_snacksday'] = usualNumberofSnacksday;
    map['What_is_the_students_average_fluid_intake'] =
        whatIsTheStudentsAverageFluidIntake;
    map['Type_of_meal'] = typeOfMeal;
    map['Type_of_meal_Other'] = typeOfMealOther;
    map['Does_the_student_have_breakfast_regularly'] =
        doesTheStudentHaveBreakfastRegularly;
    map['Does_the_student_have_regular_meal_at_school'] =
        doesTheStudentHaveRegularMealAtSchool;
    map['Student_If_Yes_where_does_it_come_from'] =
        studentIfYesWhereDoesItComeFrom;
    map['Student_If_Other'] = studentIfOther;
    map['Is_the_student_intolerant_to_any_food_group'] =
        isTheStudentIntolerantToAnyFoodGroup;
    map['Food_Group_Other'] = foodGroupOther;
    map['On_an_average_isthe_student_freshandrelaxed_night_sleep'] =
        onAnAverageIstheStudentFreshandrelaxedNightSleep;
    map['Does_the_student_have_any_sleep_related_issues'] =
        doesTheStudentHaveAnySleepRelatedIssues;
    map['Sleep_related_issues_Other'] = sleepRelatedIssuesOther;
    map['What_is_the_students_average_length_of_sleep_per_night'] =
        whatIsTheStudentsAverageLengthOfSleepPerNight;
    map['What_is_the_students_nap_cycle_during_day_Nap'] =
        whatIsTheStudentsNapCycleDuringDayNap;
    map['How_would_you_describe_the_social_personality_ofthe_student'] =
        howWouldYouDescribeTheSocialPersonalityOftheStudent;
    map['Social_personality_Other'] = socialPersonalityOther;
    map['Specify_if_the_student_has_any_irrational_fears_phobias'] =
        specifyIfTheStudentHasAnyIrrationalFearsPhobias;
    map['How_would_you_rate_the_students_self_image_self_worth'] =
        howWouldYouRateTheStudentsSelfImageSelfWorth;
    map['How_would_you_rate_students_cooperation_in_housedhold_chores'] =
        howWouldYouRateStudentsCooperationInHousedholdChores;
    map['How_would_you_best_describe_the_student_reaction_to_change'] =
        howWouldYouBestDescribeTheStudentReactionToChange;
    map['Student_reaction_Other'] = studentReactionOther;
    map['How_would_you_describe_student_rs_with_other_students'] =
        howWouldYouDescribeStudentRsWithOtherStudents;
    map['How_would_you_describe_student_rs_with_other_students_Other'] =
        howWouldYouDescribeStudentRsWithOtherStudentsOther;
    map['Does_the_student_have_any_significantly_close_friends'] =
        doesTheStudentHaveAnySignificantlyCloseFriends;
    map['student_close_friends_yes_how_many_girls'] =
        studentCloseFriendsYesHowManyGirls;
    map['student_close_friends_yes_how_many_boys'] =
        studentCloseFriendsYesHowManyBoys;
    map['What_is_student_general_opinion_of_school'] =
        whatIsStudentGeneralOpinionOfSchool;
    map['The_student_goes_to_school'] = theStudentGoesToSchool;
    map['How_would_you_rate_student_overall_attendance_at_school'] =
        howWouldYouRateStudentOverallAttendanceAtSchool;
    map['Do_you_have_concerns_following_respect_tothe_student'] =
        doYouHaveConcernsFollowingRespectTotheStudent;
    map['How_would_you_rate_the_student_overall_physical_health'] =
        howWouldYouRateTheStudentOverallPhysicalHealth;
    map['Isthe_students_school_performance_affected_by_any_following'] =
        istheStudentsSchoolPerformanceAffectedByAnyFollowing;
    map['Isthe_student_significantly_dissatisfied_byany_following'] =
        istheStudentSignificantlyDissatisfiedByanyFollowing;
    map['Student_dissatisfied_Other'] = studentDissatisfiedOther;
    map['Any_Ongoing_Illnesscondition_membersofthe_students_family'] =
        anyOngoingIllnessconditionMembersoftheStudentsFamily;
    map['Any_students_family_Other'] = anyStudentsFamilyOther;
    map['Does_the_student_have_any_medicalissue_In_The_Past'] =
        doesTheStudentHaveAnyMedicalissueInThePast;
    map['Does_the_student_have_any_medicalissue_In_The_Past_Yes'] =
        doesTheStudentHaveAnyMedicalissueInThePastYes;
    map['Does_the_student_have_any_medicalissue_Currently'] =
        doesTheStudentHaveAnyMedicalissueCurrently;
    map['Does_the_student_have_any_medicalissue_Currently_Yes'] =
        doesTheStudentHaveAnyMedicalissueCurrentlyYes;
    map['Past_Medication'] = pastMedication;
    map['Current_Medication'] = currentMedication;
    map['Any_Known_Allergies'] = anyKnownAllergies;
    map['Any_Known_Allergies_yes'] = anyKnownAllergiesYes;
    map['BCG_Dose0'] = bCGDose0;
    map['BCG_Dose1'] = bCGDose1;
    map['BCG_Dose2'] = bCGDose2;
    map['BCG_Dose3'] = bCGDose3;
    map['BCG_Dose4'] = bCGDose4;
    map['Chicken_Pox_Dose0'] = chickenPoxDose0;
    map['Chicken_Pox_Dose1'] = chickenPoxDose1;
    map['Chicken_Pox_Dose2'] = chickenPoxDose2;
    map['Chicken_Pox_Dose3'] = chickenPoxDose3;
    map['Chicken_Pox_Dose4'] = chickenPoxDose4;
    map['Cholera_Dose0'] = choleraDose0;
    map['Cholera_Dose1'] = choleraDose1;
    map['Cholera_Dose2'] = choleraDose2;
    map['Cholera_Dose3'] = choleraDose3;
    map['Cholera_Dose4'] = choleraDose4;
    map['COVID_Vaccination_Dose0'] = cOVIDVaccinationDose0;
    map['COVID_Vaccination_Dose1'] = cOVIDVaccinationDose1;
    map['COVID_Vaccination_Dose2'] = cOVIDVaccinationDose2;
    map['COVID_Vaccination_Dose3'] = cOVIDVaccinationDose3;
    map['COVID_Vaccination_Dose4'] = cOVIDVaccinationDose4;
    map['DPT_Dose0'] = dPTDose0;
    map['DPT_Dose1'] = dPTDose1;
    map['DPT_Dose2'] = dPTDose2;
    map['DPT_Dose3'] = dPTDose3;
    map['DPT_Dose4'] = dPTDose4;
    map['DT_Dose0'] = dTDose0;
    map['DT_Dose1'] = dTDose1;
    map['DT_Dose2'] = dTDose2;
    map['DT_Dose3'] = dTDose3;
    map['DT_Dose4'] = dTDose4;
    map['HepatitisA_Dose0'] = hepatitisADose0;
    map['HepatitisA_Dose1'] = hepatitisADose1;
    map['HepatitisA_Dose2'] = hepatitisADose2;
    map['HepatitisA_Dose3'] = hepatitisADose3;
    map['HepatitisA_Dose4'] = hepatitisADose4;
    map['HepatitisB_Dose0'] = hepatitisBDose0;
    map['HepatitisB_Dose1'] = hepatitisBDose1;
    map['HepatitisB_Dose2'] = hepatitisBDose2;
    map['HepatitisB_Dose3'] = hepatitisBDose3;
    map['HepatitisB_Dose4'] = hepatitisBDose4;
    map['HPV_Dose0'] = hPVDose0;
    map['HPV_Dose1'] = hPVDose1;
    map['HPV_Dose2'] = hPVDose2;
    map['HPV_Dose3'] = hPVDose3;
    map['HPV_Dose4'] = hPVDose4;
    map['Influenza_HIB_Dose0'] = influenzaHIBDose0;
    map['Influenza_HIB_Dose1'] = influenzaHIBDose1;
    map['Influenza_HIB_Dose2'] = influenzaHIBDose2;
    map['Influenza_HIB_Dose3'] = influenzaHIBDose3;
    map['Influenza_HIB_Dose4'] = influenzaHIBDose4;
    map['Influenza_Viral_Dose0'] = influenzaViralDose0;
    map['Influenza_Viral_Dose1'] = influenzaViralDose1;
    map['Influenza_Viral_Dose2'] = influenzaViralDose2;
    map['Influenza_Viral_Dose3'] = influenzaViralDose3;
    map['Influenza_Viral_Dose4'] = influenzaViralDose4;
    map['MMR_Dose0'] = mMRDose0;
    map['MMR_Dose1'] = mMRDose1;
    map['MMR_Dose2'] = mMRDose2;
    map['MMR_Dose3'] = mMRDose3;
    map['MMR_Dose4'] = mMRDose4;
    map['Mumps_Measles_Dose0'] = mumpsMeaslesDose0;
    map['Mumps_Measles_Dose1'] = mumpsMeaslesDose1;
    map['Mumps_Measles_Dose2'] = mumpsMeaslesDose2;
    map['Mumps_Measles_Dose3'] = mumpsMeaslesDose3;
    map['Mumps_Measles_Dose4'] = mumpsMeaslesDose4;
    map['Oral_Polio_Dose0'] = oralPolioDose0;
    map['Oral_Polio_Dose1'] = oralPolioDose1;
    map['Oral_Polio_Dose2'] = oralPolioDose2;
    map['Oral_Polio_Dose3'] = oralPolioDose3;
    map['Oral_Polio_Dose4'] = oralPolioDose4;
    map['RotaVirus_Dose0'] = rotaVirusDose0;
    map['RotaVirus_Dose1'] = rotaVirusDose1;
    map['RotaVirus_Dose2'] = rotaVirusDose2;
    map['RotaVirus_Dose3'] = rotaVirusDose3;
    map['RotaVirus_Dose4'] = rotaVirusDose4;
    map['Tetanus_Toxoid_Dose0'] = tetanusToxoidDose0;
    map['Tetanus_Toxoid_Dose1'] = tetanusToxoidDose1;
    map['Tetanus_Toxoid_Dose2'] = tetanusToxoidDose2;
    map['Tetanus_Toxoid_Dose3'] = tetanusToxoidDose3;
    map['Tetanus_Toxoid_Dose4'] = tetanusToxoidDose4;
    map['Typhoid_Dose0'] = typhoidDose0;
    map['Typhoid_Dose1'] = typhoidDose1;
    map['Typhoid_Dose2'] = typhoidDose2;
    map['Typhoid_Dose3'] = typhoidDose3;
    map['Typhoid_Dose4'] = typhoidDose4;
    map['Yellow_Fever_Dose0'] = yellowFeverDose0;
    map['Yellow_Fever_Dose1'] = yellowFeverDose1;
    map['Yellow_Fever_Dose2'] = yellowFeverDose2;
    map['Yellow_Fever_Dose3'] = yellowFeverDose3;
    map['Yellow_Fever_Dose4'] = yellowFeverDose4;
    map['Last_date_signed_copy_of_form'] = lastDateSignedCopyOfForm;
    map['type_your_name'] = typeYourName;
    map['gaurdian_of'] = gaurdianOf;
    map['of_class'] = ofClass;
    map['Signature'] = signature;
    map['upload_sign'] = uploadSign;
    map['upload_photo'] = uploadPhoto;
    map['Submitted_date'] = submittedDate;
    map['place'] = place;
    map['Terms_and_conditions'] = termsAndConditions;
    return map;
  }
}
