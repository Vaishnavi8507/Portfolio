class Project {
  final String? title, description, link;
  Project({this.title, this.description, this.link});
}

List<Project> demo_projects = [
  Project(
      title: "Pet Buddy",
      description:
          "Pet Buddy application built using Flutter,Dart & Firebase which is operated by owner and volunteer which focuses on pet sitting and pet lost management",
      link: 'https://github.com/Vaishnavi8507/pet_care'),
  Project(
      title: "AI_Assistant",
      description:
          "A application designed using Flutter,Dart & Appwrite which involves chat bot implementation, Ai image generation,Multilingual Translation and Speech To Text conversion and apparently perform the ISL(Indian Sign Language) translation",
      link: "https://github.com/Vaishnavi8507/AI_Assistant"),
  Project(
    title: "Attendance Management",
    description:
        "A dual application built using Flutter,Dart & Firebase which is used by both student and teacher for the effective attendance system by generating the Qr Code along with the implementation of geolocation",
    link: "https://github.com/Vaishnavi8507/Student_attendance",
  ),
  Project(
    title: "Pneumonia Detection ",
    description:
        "A Deep Learning project which uses CNN Algorithm and the pre-trained model VGG16 architecture for detecting the pneumonia(bacterial or viral) using the standard dataset from Kaggle",
    link: "https://github.com/Vaishnavi8507/Pneumonia_Detection",
  ),
  Project(
    title: "HealthSync Hub",
    description:
        "A Web application using HTML,CSS,JS,Node.js,SQL for the efficient doctor appointment system",
    link: "https://github.com/Vaishnavi8507/dbmsproj",
  ),
  Project(
    title: "Automation Testing Using Selenium Web Driver",
    description:
        "Automation testing on Beyoung Website for the efficient working of the website and derive the test cases/suites",
    link: "https://github.com/Vaishnavi8507/Automation-Testing-Using-Selenium",
  ),
];
