class StationCVisuallyChallengedRequest {
  StationCVisuallyChallengedRequest({
    this.visuallyChallengedRightEye,
    this.visuallyChallengedRightEyeEnucleation,
    this.visuallyChallengedRightEyeEnucleationWhenRemoved,
    this.visuallyChallengedRightEyeEnucleationWhyRemoved,
    this.visuallyChallengedRightEyeEnucleationWhyRemovedOther,
    this.vCRightEyeEnucleationArtificialEyeUsed,
    this.visuallyChallengedRightEyeEnucleationNo,
    this.visuallyChallengedRightEyeEnucleationCataract,
    this.visuallyChallengedRightEyeEnucleationCornealOpacity,
    this.visuallyChallengedRightEyeEnucleationGlaucoma,
    this.visuallyChallengedRightEyeEnucleationPhthisisBulbi,
    this.visuallyChallengedLeftEye,
    this.visuallyChallengedLeftEyeEnucleation,
    this.visuallyChallengedLeftEyeEnucleationWhenRemoved,
    this.visuallyChallengedLeftEyeEnucleationWhyRemoved,
    this.visuallyChallengedLeftEyeEnucleationWhyRemovedOther,
    this.vCLeftEyeEnucleationArtificialEyeUsed,
    this.visuallyChallengedLeftEyeEnucleationNo,
    this.visuallyChallengedLeftEyeEnucleationCataract,
    this.visuallyChallengedLeftEyeEnucleationCornealOpacity,
    this.visuallyChallengedLeftEyeEnucleationGlaucoma,
    this.visuallyChallengedLeftEyeEnucleationPhthisisBulbi,
  });

  StationCVisuallyChallengedRequest.fromJson(dynamic json) {
    visuallyChallengedRightEye = json['Visually_Challenged_Right_Eye'];
    visuallyChallengedRightEyeEnucleation =
        json['Visually_Challenged_Right_Eye_Enucleation'];
    visuallyChallengedRightEyeEnucleationWhenRemoved =
        json['Visually_Challenged_Right_Eye_Enucleation_When_removed'];
    visuallyChallengedRightEyeEnucleationWhyRemoved =
        json['Visually_Challenged_Right_Eye_Enucleation_Why_removed'];
    visuallyChallengedRightEyeEnucleationWhyRemovedOther =
        json['Visually_Challenged_Right_Eye_Enucleation_Why_removed_Other'];
    vCRightEyeEnucleationArtificialEyeUsed =
        json['VC_Right_Eye_Enucleation_Artificial_Eye_Used'];
    visuallyChallengedRightEyeEnucleationNo =
        json['Visually_Challenged_Right_Eye_Enucleation_No'];
    visuallyChallengedRightEyeEnucleationCataract =
        json['Visually_Challenged_Right_Eye_Enucleation_Cataract'];
    visuallyChallengedRightEyeEnucleationCornealOpacity =
        json['Visually_Challenged_Right_Eye_Enucleation_Corneal_opacity'];
    visuallyChallengedRightEyeEnucleationGlaucoma =
        json['Visually_Challenged_Right_Eye_Enucleation_Glaucoma'];
    visuallyChallengedRightEyeEnucleationPhthisisBulbi =
        json['Visually_Challenged_Right_Eye_Enucleation_Phthisis_bulbi'];
    visuallyChallengedLeftEye = json['Visually_Challenged_Left_Eye'];
    visuallyChallengedLeftEyeEnucleation =
        json['Visually_Challenged_Left_Eye_Enucleation'];
    visuallyChallengedLeftEyeEnucleationWhenRemoved =
        json['Visually_Challenged_Left_Eye_Enucleation_When_removed'];
    visuallyChallengedLeftEyeEnucleationWhyRemoved =
        json['Visually_Challenged_Left_Eye_Enucleation_Why_removed'];
    visuallyChallengedLeftEyeEnucleationWhyRemovedOther =
        json['Visually_Challenged_Left_Eye_Enucleation_Why_removed_Other'];
    vCLeftEyeEnucleationArtificialEyeUsed =
        json['VC_Left_Eye_Enucleation_Artificial_Eye_Used'];
    visuallyChallengedLeftEyeEnucleationNo =
        json['Visually_Challenged_Left_Eye_Enucleation_No'];
    visuallyChallengedLeftEyeEnucleationCataract =
        json['Visually_Challenged_Left_Eye_Enucleation_Cataract'];
    visuallyChallengedLeftEyeEnucleationCornealOpacity =
        json['Visually_Challenged_Left_Eye_Enucleation_Corneal_opacity'];
    visuallyChallengedLeftEyeEnucleationGlaucoma =
        json['Visually_Challenged_Left_Eye_Enucleation_Glaucoma'];
    visuallyChallengedLeftEyeEnucleationPhthisisBulbi =
        json['Visually_Challenged_Left_Eye_Enucleation_Phthisis_bulbi'];
  }
  String? visuallyChallengedRightEye;
  String? visuallyChallengedRightEyeEnucleation;
  String? visuallyChallengedRightEyeEnucleationWhenRemoved;
  String? visuallyChallengedRightEyeEnucleationWhyRemoved;
  String? visuallyChallengedRightEyeEnucleationWhyRemovedOther;
  String? vCRightEyeEnucleationArtificialEyeUsed;
  String? visuallyChallengedRightEyeEnucleationNo;
  String? visuallyChallengedRightEyeEnucleationCataract;
  String? visuallyChallengedRightEyeEnucleationCornealOpacity;
  String? visuallyChallengedRightEyeEnucleationGlaucoma;
  String? visuallyChallengedRightEyeEnucleationPhthisisBulbi;
  String? visuallyChallengedLeftEye;
  String? visuallyChallengedLeftEyeEnucleation;
  String? visuallyChallengedLeftEyeEnucleationWhenRemoved;
  String? visuallyChallengedLeftEyeEnucleationWhyRemoved;
  String? visuallyChallengedLeftEyeEnucleationWhyRemovedOther;
  String? vCLeftEyeEnucleationArtificialEyeUsed;
  String? visuallyChallengedLeftEyeEnucleationNo;
  String? visuallyChallengedLeftEyeEnucleationCataract;
  String? visuallyChallengedLeftEyeEnucleationCornealOpacity;
  String? visuallyChallengedLeftEyeEnucleationGlaucoma;
  String? visuallyChallengedLeftEyeEnucleationPhthisisBulbi;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Visually_Challenged_Right_Eye'] = visuallyChallengedRightEye;
    map['Visually_Challenged_Right_Eye_Enucleation'] =
        visuallyChallengedRightEyeEnucleation;
    map['Visually_Challenged_Right_Eye_Enucleation_When_removed'] =
        visuallyChallengedRightEyeEnucleationWhenRemoved;
    map['Visually_Challenged_Right_Eye_Enucleation_Why_removed'] =
        visuallyChallengedRightEyeEnucleationWhyRemoved;
    map['Visually_Challenged_Right_Eye_Enucleation_Why_removed_Other'] =
        visuallyChallengedRightEyeEnucleationWhyRemovedOther;
    map['VC_Right_Eye_Enucleation_Artificial_Eye_Used'] =
        vCRightEyeEnucleationArtificialEyeUsed;
    map['Visually_Challenged_Right_Eye_Enucleation_No'] =
        visuallyChallengedRightEyeEnucleationNo;
    map['Visually_Challenged_Right_Eye_Enucleation_Cataract'] =
        visuallyChallengedRightEyeEnucleationCataract;
    map['Visually_Challenged_Right_Eye_Enucleation_Corneal_opacity'] =
        visuallyChallengedRightEyeEnucleationCornealOpacity;
    map['Visually_Challenged_Right_Eye_Enucleation_Glaucoma'] =
        visuallyChallengedRightEyeEnucleationGlaucoma;
    map['Visually_Challenged_Right_Eye_Enucleation_Phthisis_bulbi'] =
        visuallyChallengedRightEyeEnucleationPhthisisBulbi;
    map['Visually_Challenged_Left_Eye'] = visuallyChallengedLeftEye;
    map['Visually_Challenged_Left_Eye_Enucleation'] =
        visuallyChallengedLeftEyeEnucleation;
    map['Visually_Challenged_Left_Eye_Enucleation_When_removed'] =
        visuallyChallengedLeftEyeEnucleationWhenRemoved;
    map['Visually_Challenged_Left_Eye_Enucleation_Why_removed'] =
        visuallyChallengedLeftEyeEnucleationWhyRemoved;
    map['Visually_Challenged_Left_Eye_Enucleation_Why_removed_Other'] =
        visuallyChallengedLeftEyeEnucleationWhyRemovedOther;
    map['VC_Left_Eye_Enucleation_Artificial_Eye_Used'] =
        vCLeftEyeEnucleationArtificialEyeUsed;
    map['Visually_Challenged_Left_Eye_Enucleation_No'] =
        visuallyChallengedLeftEyeEnucleationNo;
    map['Visually_Challenged_Left_Eye_Enucleation_Cataract'] =
        visuallyChallengedLeftEyeEnucleationCataract;
    map['Visually_Challenged_Left_Eye_Enucleation_Corneal_opacity'] =
        visuallyChallengedLeftEyeEnucleationCornealOpacity;
    map['Visually_Challenged_Left_Eye_Enucleation_Glaucoma'] =
        visuallyChallengedLeftEyeEnucleationGlaucoma;
    map['Visually_Challenged_Left_Eye_Enucleation_Phthisis_bulbi'] =
        visuallyChallengedLeftEyeEnucleationPhthisisBulbi;
    return map;
  }
}
