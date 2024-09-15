import 'package:flutter/material.dart';
import 'package:gyanie_app/routes/routes_link.dart';
import 'package:gyanie_app/screen/Calculat_screen/Apgar/apgar.dart';
import 'package:gyanie_app/screen/Calculat_screen/Bihop/bioshop_screen.dart';
import 'package:gyanie_app/screen/Calculat_screen/Biophysical/biophysical_scrn.dart';
import 'package:gyanie_app/screen/Calculat_screen/BodyMass/body_mass.dart';
import 'package:gyanie_app/screen/Calculat_screen/Conversation/mainconversation.dart';
import 'package:gyanie_app/screen/Calculat_screen/Conversation/mainconversation/gramtomili.dart';
import 'package:gyanie_app/screen/Calculat_screen/Conversation/mainconversation/micromoleper.dart';
import 'package:gyanie_app/screen/Calculat_screen/Conversation/mainconversation/miligramtogram.dart';
import 'package:gyanie_app/screen/Calculat_screen/Conversation/mainconversation/miliperdelii.dart';
import 'package:gyanie_app/screen/Calculat_screen/Dilution&solution/dilutionscreen.dart';
import 'package:gyanie_app/screen/Calculat_screen/Driprate/driprate.dart';
import 'package:gyanie_app/screen/Calculat_screen/Edinburgh/edinburgh.dart';
import 'package:gyanie_app/screen/Calculat_screen/Endrometrics/endrometrixscreen.dart';
import 'package:gyanie_app/screen/Calculat_screen/GestationPage/maingestation.dart';
import 'package:gyanie_app/screen/Calculat_screen/IronDeficet/irondeficit.dart';
import 'package:gyanie_app/screen/Calculat_screen/Maliganancypage/malagnancy_screen.dart';
import 'package:gyanie_app/screen/Calculat_screen/Neoplasia/neoplasia.dart';
import 'package:gyanie_app/screen/Calculat_screen/Obestetic/obestetic.dart';
import 'package:gyanie_app/screen/Calculat_screen/PUQE/puqe_screen.dart';
import 'package:gyanie_app/screen/Calculat_screen/Sexual/sexualscreen.dart';
import 'package:gyanie_app/screen/Calculat_screen/Suicidal/suicidal.dart';
import 'package:gyanie_app/screen/Calculat_screen/WeightBased/weightbased.dart';
import 'package:gyanie_app/screen/Classification/Cardiotocograph/cardioto_screen.dart';
import 'package:gyanie_app/screen/Classification/Clinicalddim/clinical_screen.dart';
import 'package:gyanie_app/screen/Classification/Contraction/contractionscreen.dart';
import 'package:gyanie_app/screen/Classification/Endometrial/endometrial_screen.dart';
import 'package:gyanie_app/screen/Classification/Fda_aproved/fda_aprovedscreen.dart';
import 'package:gyanie_app/screen/Classification/Femalegenital/female_screen.dart';
import 'package:gyanie_app/screen/Classification/Fibroids/fibroids_screen.dart';
import 'package:gyanie_app/screen/Classification/Gestationaldiabets/gestationaldiabet_screen.dart';
import 'package:gyanie_app/screen/Classification/NUCHAL%20TRANSL/nuchar_trans_screen.dart';
import 'package:gyanie_app/screen/Classification/PelvicFloor/pelvic_floor_screen.dart';
import 'package:gyanie_app/screen/Classification/TNM_AND_FIGO/tnmfigo.dart';
import 'package:gyanie_app/screen/Classification/Tanner/tanner_staging.dart';
import 'package:gyanie_app/screen/home_screen.dart';
import 'package:gyanie_app/screen/splash.dart';
import 'package:gyanie_app/ui/calculator.dart';
import 'package:gyanie_app/ui/classification.dart';
import 'package:gyanie_app/ui/criteria.dart';
import 'package:gyanie_app/ui/diseases.dart';
import 'package:gyanie_app/ui/green_top.dart';
class Routes{
 static  Route<dynamic> generateroutes( RouteSettings settings){
switch(settings.name){
  case RouteLinks.splashscreen:
return MaterialPageRoute(builder: (BuildContext context)=> const SplashScreen());
 case RouteLinks.home:
return MaterialPageRoute(builder: (BuildContext context)=> const HomeScreen());
// start of main page link
  case RouteLinks.calculators:
return MaterialPageRoute(builder: (BuildContext context)=> const CalculatorPage());
// end main page link
 case RouteLinks.gestation:
 return MaterialPageRoute(builder: (BuildContext context)=>  const MAINGESTATIONSCREEN());
  case RouteLinks.apgar:
 return MaterialPageRoute(builder: (BuildContext context)=> const APGARSCREENPAGE());
 case RouteLinks.malignancy:
return MaterialPageRoute(builder: (BuildContext context)=> const MalignancyScreen());
 case RouteLinks.bodymass:
  return MaterialPageRoute(builder: (BuildContext context)=> const BODYMASSSCREEN());
 case RouteLinks.irondefict:
return MaterialPageRoute(builder: (BuildContext context)=> const IRONDEFICET());
 case  RouteLinks.biophysical:
return MaterialPageRoute(builder: (BuildContext context)=> const BIOPHYSICALSCREEN());
 case RouteLinks.pregrency:
return MaterialPageRoute(builder: (BuildContext context)=> const PUQESCREEN());
  case RouteLinks.bishop:
 return MaterialPageRoute(builder: (BuildContext context)=> const BioshopScreen());
   case RouteLinks.edinburgh:
  return MaterialPageRoute(builder: (BuildContext context)=> const EDINBURGHSCREEN());
 case RouteLinks.sucidal:
return MaterialPageRoute(builder: (BuildContext context)=> const SUCIDICALSCREEEN());
 case RouteLinks.obstetric:
return MaterialPageRoute(builder: (BuildContext context)=> const OBESTETICSCREEN());
 case    RouteLinks.endometriosis:
return MaterialPageRoute(builder: (BuildContext context)=> const ENDROMETRISCREEN());
case RouteLinks.desire:
return MaterialPageRoute(builder: (BuildContext context)=> const SXUALSCREEN());
 case RouteLinks.weightbase:
return MaterialPageRoute(builder: (BuildContext context)=> const WEIGHTBASED());
 case RouteLinks.conversation:
return MaterialPageRoute(builder: (BuildContext context)=> const MAINCONVERSTION());
 case RouteLinks.gramstomilli:
return MaterialPageRoute(builder: (BuildContext context)=> const GRAMTOMILLI ());
 case RouteLinks.millitogram:
return MaterialPageRoute(builder: (BuildContext context)=> const MILLIGRAMS());
 case RouteLinks.milliperdeci:
return MaterialPageRoute(builder: (BuildContext context)=> const MILLIPERSCREEN());
 case RouteLinks.microperliter:
return MaterialPageRoute(builder: (BuildContext context)=> const MICROMOLESCREEN());
case RouteLinks.dilution:
return MaterialPageRoute(builder: (BuildContext context)=> const DILUTIONSCREEN());
 case   RouteLinks.driprate:
return MaterialPageRoute(builder: (BuildContext context)=> const DRIPRATESCREEN());
 case RouteLinks. gestational:
return MaterialPageRoute(builder: (BuildContext context)=> const NEOPLASIASCREEN());

 //end of calculate page

 //start of classification page

//start of classification main page link
  case RouteLinks.classifictions:
return MaterialPageRoute(builder: (BuildContext context)=> const ClassificationPage());
//end  of classification main page link
case RouteLinks.clincal:
return MaterialPageRoute(builder: (BuildContext context)=> const CLINICALSCREEN());
  case  RouteLinks.endometrial:
 return MaterialPageRoute(builder: (BuildContext context)=> const ENDOMETRIALSCREEN());
 case RouteLinks.female:
return MaterialPageRoute(builder: (BuildContext context)=>  const FemaleGenitalScreeen());
case RouteLinks.fibroi:
return MaterialPageRoute(builder: (BuildContext context)=>  const FIBROIDSSCREEEN());
case RouteLinks.gestationa: 
return MaterialPageRoute(builder: (BuildContext context)=> const GESTATIONALDIABETSCREEN());
case RouteLinks.nuchal:
return MaterialPageRoute(builder: (BuildContext context)=> const NUCHARTRANSSCREEN());
case RouteLinks.pelvic:
return MaterialPageRoute(builder: (BuildContext context)=> const PELVICFLOORSCREEN());
case RouteLinks.tanner:
return MaterialPageRoute(builder: (BuildContext context)=> const TANNERSTAGINGSCREEN());
case  RouteLinks.tNM:
return MaterialPageRoute(builder: (BuildContext context)=> const TNMANDFIGOSCREEN());
 case RouteLinks.fDA:
return MaterialPageRoute(builder: (BuildContext context)=> const FDASCREEN());
 case RouteLinks.contraception:
return MaterialPageRoute(builder: (BuildContext context)=> const CONTRACETIONSCREEN());
 case RouteLinks.Cardio:
return MaterialPageRoute(builder: (BuildContext context)=> const CARDIOTOCOGRAPSCREEN());
 case RouteLinks.gtn:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
  case RouteLinks.cin:
 return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
 case RouteLinks.degrees:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
 case RouteLinks.placenta:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
 case RouteLinks.haemorrage:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
 //end of classification page code

// start of criteria code
case RouteLinks.criteria: 
return MaterialPageRoute(builder: (BuildContext context)=> const CriteriaPage());
 case RouteLinks.polycystic:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
  case RouteLinks.miscarriage:
 return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
   case RouteLinks.semen:
 return  MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.fetal:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.figo:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks. diagnosis:
 return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
  case RouteLinks. ukmec:
  return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
 case RouteLinks. amniotic:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks. bone:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
// end of critera code page
//start of diessea page code
case RouteLinks.diseases:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.menopausal:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.pregranancyy:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.pregnancyy:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.acute: 
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.chronic:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.labor:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.premenopausal:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.abnormal:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.pelvicc:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.primary:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.sign:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.aims:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.maternal:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.typhoid:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.vomiting:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.anemia:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.antiphospholipid:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.preeclampsia:
 return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.intrahepatic:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.premature:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.bleeding:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.spontaneous:
 return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.ectopic_pregnancy:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.premature_labour:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.post_partum:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
//end of dieseases page code
case RouteLinks.greentopguidlines: 
return MaterialPageRoute(builder: (BuildContext context)=> const GreenTopGuid());
case RouteLinks.twnetytow:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
 case RouteLinks.twentyone:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
 case RouteLinks.tqenty:
return  MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
 case RouteLinks.ninteen:
 return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.eighteen:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
 case  RouteLinks.seventeen:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.sixteen:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case RouteLinks.fifteen:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
 case   RouteLinks.fourteen:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
case  RouteLinks.thirteen:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
 case RouteLinks.twele:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
   case  RouteLinks.eleven:
  return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
 case RouteLinks.ten:
return MaterialPageRoute(builder: (BuildContext context)=> const DiseasesPage());
// start of green to guidline
default:
      return MaterialPageRoute(builder: (_) {
        return Scaffold(
          body: Center(
            child: Text("No route defined for ${settings.name}"),
          ),
        );
      });
  }
}

}
    