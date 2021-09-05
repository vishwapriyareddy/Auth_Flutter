import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:roi_app/colors.dart';
import 'package:roi_app/login.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Staffing Services",
              body:
                  "We provide Security staff, Housekeeping peons, Data entry operators, Nursing assistants, Sales staff, Lift operators, Front office executives",
              image: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 15,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("images/staffing.png",
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.contain,),
                ),
              ),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
                title: "Cleaning Services",
                body:
                    "Chair wash / cleaning, Carpet cleaning, Deep cleaning, Electrical Gadgets cleaning, Glass cleaning, Restroom cleaning, Sewage plant cleaning, Water tank cleaning",
                image: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 15,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("images/clean.jpeg",
                          width: MediaQuery.of(context).size.width,
                          height: 200)),
                ),
                decoration: getPageDecoration()),
            PageViewModel(
                title: "Maintenance & Repair",
                body:
                    "Air Conditions, Carpentary, Electrical, Mazon, Painting, Plumber, Raw Water Treatment Plant, Water Purifyer maintenance",
                image: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 15,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "images/maintenanceandrepair.jpg",
                       width: MediaQuery.of(context).size.width*0.05, height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                decoration: getPageDecoration())
          ],
          showSkipButton: true,
          onSkip: () => goToLogin(context),
          skip: Container(
            width: MediaQuery.of(context).size.width * 0.25,
            height: 20,
            decoration: new BoxDecoration(
                color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
                borderRadius: new BorderRadius.circular(20.0)),
            child: Center(
              child: Text(
                "Skip",
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
          done: Container(
            width: MediaQuery.of(context).size.width * 0.25,
            height: 20,
            decoration: new BoxDecoration(
                color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
                borderRadius: new BorderRadius.circular(20.0)),
            child: Center(
              child: Text(
                "Next",
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
          onDone: () => goToLogin(context),
          dotsDecorator: const DotsDecorator(
            size: Size(10.0, 10.0),
            color: Color(0xFFBDBDBD),
            activeSize: Size(22.0, 10.0),
            activeColor: Color(0xFFFF2626),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
          ),
        ),
      );

  void goToLogin(context) => Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_) => Login()));

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.white),
        bodyTextStyle: TextStyle(fontSize: 20, color: Colors.white),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: primaryColor,
      );
}
