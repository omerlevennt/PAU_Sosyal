class ActivityValidationMixin {
  String validateActivityName(String value){
    if(value.length<2){
      return "İsim en az 2 karakter olmalıdır";
    }
  }

  String validateActivityTimeData(String value){
    if(value.length<2){
      return "Tarih en az 2 karakter olmalıdır";
    }
  }
  String validateActivityLocation(String value){
    if(value.length<2){
      return "İl en az 2 karakter olmalıdır";
    }
  }
  String validateActivityLocationDetail(String value){
    if(value.length<2){
      return "Yer en az 2 karakter olmalıdır";
    }
  }

}