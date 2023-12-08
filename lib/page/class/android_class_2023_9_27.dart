// 這次的是只有寫class 沒有app
// 公司組織架構與個人履歷表
// 員工履歷表
class PersonalInformation {
  //Resurme
  // 個人資料
  // late String Name; // 姓名
  late String Phone; // 電話
  late String E_mail; // E-mail
  late String Address; // 住址
  late double Age; //年齡
// //   late Image PersonalPhoto; // 個人照片

  late String Autobiography; // 自傳
  late String Education; // 學歷
  late String WorkExperience; // 工作經歷
  late String Skills; // 技能
  late String Summary; //總結

  // 建構子1
  PersonalInformation(
      this.Phone,
      this.E_mail,
      this.Address,
      this.Age,
      this.Autobiography,
      this.Education,
      this.WorkExperience,
      this.Skills,
      this.Summary);
  // 建構子2
  // PersonalInformation(String Name), String Phone, String E_mail, String Address, String Autobiography, String Education, String WorkExperience, String Skills, String Summary){
  //   this.Name = Name; this.E_mail = E_mail; this.Address = Address; this.Autobiography = Autobiography; this.Education = Education; this.WorkExperience = WorkExperience; this.Skills = Skills; this.Summary = Summary;
  // }
}

// 員工
class Employee extends PersonalInformation {
  late String Employees; //
  Employee(
      {Phone,
      E_mail,
      Address,
      Age,
      Autobiography,
      Education,
      WorkExperience,
      Skills,
      Summary,
      required this.Employees})
      : super(Phone, E_mail, Address, Age, Autobiography, Education,
            WorkExperience, Skills, Summary);

  void OutputData() {
    print(
        "員工：${this.Employees}\n電話：${this.Phone}\nE-mail：${this.E_mail}\n住址：${this.Address}\n年齡：${this.Age}\n自傳：${this.Autobiography}\n學歷：${this.Education}\n工作經驗：${this.WorkExperience}\n技能：${this.Skills}\n總結：${this.Summary}");
  }

  // get取得 and set指定
  void setName(String name) => this.Employees = name;
  void setPhone(String phone) => this.Phone = phone;
  void setE_mail(String e_mail) => this.E_mail = e_mail;
  void setAddress(String address) => this.Address = address;
  void setAge(double age) => this.Age = age;
  void setAutobiography(String autobiography) =>
      this.Autobiography = autobiography;
  void setEducation(String education) => this.Employees = education;
  void setWorkExperience(String workExperience) =>
      this.WorkExperience = workExperience;
  void setSkills(String skills) => this.Skills = skills;
  void setSummary(String summary) => this.Summary = summary;

  String getName() {
    return Employees;
  }

  String getPhone() {
    return Phone;
  }

  String getE_mail() {
    return E_mail;
  }

  String getAddress() {
    return Address;
  }

  double getAge() {
    return Age;
  }

  String getAutobiography() {
    return Autobiography;
  }

  String getEducation() {
    return Education;
  }

  String getWorkExperience() {
    return WorkExperience;
  }

  String getSkills() {
    return Skills;
  }

  String getSummary() {
    return Summary;
  }
}

// 部門
// class Department extends Employee{
//   final String Departments; //部門
//   Department({Phone, E_mail, Address, Autobiography, Education, WorkExperience, Skills, Summary, Employees, required this.Departments}) : super(Phone, E_mail, Address, Autobiography, Education, WorkExperience, Skills, Summary, Employees);
// }
main() {
  // 此種方法為在子類別的建構子處不使用{}
  // PersonalInformation FirstEmployee = PersonalInformation("Marry", "0909321197", "5a9b0023", "台南市永康區南臺街1號", "體育", "高中", "無", "學習力強", "無");
  Employee Marry = Employee(
      Employees: "Marry",
      Phone: "0909321197",
      E_mail: "5a9b0023",
      Address: "台南市永康區南臺街1號",
      Age: 18,
      Autobiography: "體育",
      Education: "高中",
      WorkExperience: "無",
      Skills: "寫企劃",
      Summary: "無");
  Marry.OutputData();
  Marry.setAge(20);
  print(Marry.getName()); // print(Marry.Employees);
  print(Marry.getAge());
}

// -----------------------------------------------------------------------------------------------------
/*
// 球員基本資料 聖地牙哥教士
class BasicInformationOfPlayers {
  late String Name; //姓名
  var Birthday; //出生年月日 DateTime.utc(年, 月, 日)
  late String Born; //國籍
  late double Height; //身高
  late double Weight; //體重
  // late String GarrisonPositionData; //守備位置的資料
  // late Map<String, String> GarrisonPosition = {
  //   "P": "Pitcher", //投手
  //   "C": "Catcher", //捕手
  //   "1B": "1st Baseman", //一壘手
  //   "2B": "2nd Baseman", //二壘手
  //   "3B": "3rd Baseman", //三壘手
  //   "SS": "Short Stop", //游擊手
  //   "LF": "Left Fielder", //左外野手
  //   "CF": "Center Fielder", //中外野手
  //   "RF": "Right Fielder", //右外野手
  //   "DH": "Designated Hitter", //指定打擊
  // }; // 選擇的守備位置
  // late String PitchData; //投球資料
  // late String BitData; //打擊資料
  // late Map Pitch = {"R": "Right", "L": "Left"}; //投球 R為右投，L為左投
  // late Map Bit = {"R": "Right", "L": "Left"}; //打擊 R為右打，L為左打

  // 建構子
  // BasicInformationOfPlayers(this.Name, this.Birthday, this.Born, this.Height, this.Weight, this.GarrisonPosition, this.Pitch, this.Bit);
  // BasicInformationOfPlayers(this.Name);
  // set是建構子；get是回傳資料
  void setName(String Name) {this.Name = Name;}
  String getName() {return Name;}

  void setBirthday(String Birthday) {this.Birthday = Birthday;}
  String getBirthday() {return Birthday;}

  void setBorn(String Born) {this.Born = Born;}
  String getBorn() {return Born;}

  void setHeight(double Height) {this.Height = Height;}
  double getHeight() {return Height;}

  void setWeight(double Weight) {this.Weight = Weight;}
  double getWeight() {return Height;}

  // void setGarrisonPosition(Map GarrisonPosition) {this.GarrisonPosition = GarrisonPosition;}
  // Map getGarrisonPosition() {return GarrisonPosition;}

  // void setPitch(String Pitch) {this.PitchData = Pitch;}
  // Map getPitch() {return PitchData;}

  // void setBit(String Bit) {this.BitData = Bit;}
  // Map getBit() {return BitData;}
}

// class Batter extends BasicInformationOfPlayers {
//   // OBP SLG OPS需要更多官方數據才可以計算
//   final double BattingAverage = Hit / AtBats; //打擊率 = 安打/打數
//   late double AtBats; //打數
//   late double Hit; //安打

//   late double RunnsBattedIn; //打點
//   late double Runs; //如果一名球員越過本壘板為他的球隊得分，則他將獲得一分
//   Batter(super.Name, super.Birthday);
// }

void main() {
// Batter Ha_Seong_Kim =  Batter(Name="Ha Seong Kim",Birthday="1995/10/17", Born="South Korea", GarrisonPosition="2B", Pitch="R", Bit="R", )
  // BasicInformationOfPlayers p1 = BasicInformationOfPlayers("Ha Seong Kim");
  // print(p1.Name);
  // p1.setName("Fernando Tatis Jr.");
  // print(p1.getName());
}
*/
// -----------------------------------------------------------------------------------------------------
/*
// 球員基本資料 聖地牙哥教士
class BasicInformationOfPlayers {
  late String Name; //姓名
  // late String Birthday; //出生年月日
  // late String? Born; //國籍
  // late double Height; //身高
  // late double Weight; //體重
  // final Map GarrisonPosition = {
  //   "P": "Pitcher", //投手
  //   "C": "Catcher", //捕手
  //   "1B": "1st Baseman", //一壘手
  //   "2B": "2nd Baseman", //二壘手
  //   "3B": "3rd Baseman", //三壘手
  //   "SS": "Short Stop", //游擊手
  //   "LF": "Left Fielder", //左外野手
  //   "CF": "Center Fielder", //中外野手
  //   "RF": "Right Fielder", //右外野手
  //   "DH": "Designated Hitter", //指定打擊
  // }; // 選擇的守備位置
  // final Map Pitch = {"R": "Right", "L": "Left"}; //投球 R為右投，L為左投
  // final Map Bit = {"R": "Right", "L": "Left"}; //打擊 R為右打，L為左打

  // BasicInformationOfPlayers(this.Name, this.Birthday, this.Born, this.Height, this.Weight, this.GarrisonPosition, this.Pitch, this.Bit);
  // (Name, Birthday, Born, Height, Weight, GarrisonPosition, Pitch, Bit)
  BasicInformationOfPlayers(this.Name);
  void setName(String Name) {
    this.Name = Name;
  }

  String getName() {
    return Name;
  }
}

// class Batter extends BasicInformationOfPlayers {
//   // OBP SLG OPS需要更多官方數據才可以計算
//   final double BattingAverage = Hit / AtBats; //打擊率 = 安打/打數
//   late double AtBats; //打數
//   late double Hit; //安打

//   late double RunnsBattedIn; //打點
//   late double Runs; //如果一名球員越過本壘板為他的球隊得分，則他將獲得一分
//   Batter(super.Name, super.Birthday);
// }

void main() {
// Batter Ha_Seong_Kim = new Batter(Name="Ha Seong Kim",Birthday="1995/10/17", Born="South Korea", GarrisonPosition="2B", Pitch="R", Bit="R", )
  BasicInformationOfPlayers p1 = BasicInformationOfPlayers("Ha Seong Kim");
  print(p1.Name);
  p1.setName("Fernando Tatis Jr.");
  print(p1.getName());
}
*/
