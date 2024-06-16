import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// import 'package:wakelock/wakelock.dart';

import 'drawer.dart';
import 'suras.dart';
import 'surasx.dart' as xx;

class Bond extends StatefulWidget {
  static const routeName = '/bond';

  const Bond({super.key});

  @override
  State<Bond> createState() => _BondState();
}

class _BondState extends State<Bond> {
  String? aya;
  String? suraname;
  String? aya_view;
  int? randomItem;
  String? onerandomfatiha;
  String? tworandombakra;
  String? threerandomalemran;
  String? fourrandomalnesaa;
  String? fiverandomalmaeda;
  String? sixrandomalanaam;
  String? sevenrandomalaaraf;
  String? eightrandomalanfal;
  String? ninerandomaltawba;
  String? tenrandomyunus;
  String? elevenrandomhoud;
  String? twelverandomyusuf;
  String? thirteenrandomalraad;
  String? fourteenrandomebrahim;
  String? fivteenrandomalhijr;
  String? sixteenrandomalnahl;
  String? seventeenrandomalesraa;
  String? eighteenrandomalkahf;
  String? nineteenrandommariem;
  String? twentyrandomtaha;
  String? x21randomalanbyaa;
  String? x22randomalhaj;
  String? x23randomalmouemnoun;
  String? x24randomalnour;
  String? x25randomalfourkan;
  String? x26randomalshouaraa;
  String? x27randomalnaml;
  String? x28randomalqasas;
  String? x29randomalankabout;
  String? x30randomalroum;
  String? x31randomlouqman;
  String? x32randomalsajda;
  String? x33randomalahzab;
  String? x34randomsabaa;
  String? x35randomfater;
  String? x36randomyassin;
  String? x37randomalsaffat;
  String? x38randomsad;
  String? x39randomalzumur;
  String? x40randomghafer;
  String? x41randomfusselat;
  String? x42randomalshura;
  String? x43randomalzukhrof;
  String? x44randomaldukhan;
  String? x45randomalgathya;
  String? x46randomalahqaf;
  String? x47randommuhammed;
  String? x48randomalfath;
  String? x49randomalhujurat;
  String? x50randomkaf;
  String? x51randomalzaryat;
  String? x52randomaltour;
  String? x53randomalnajm;
  String? x54randomalqamar;
  String? x55randomalrahman;
  String? x56randomalwaqeaa;
  String? x57randomalhadeed;
  String? x58randomalmujadela;
  String? x59randomalhashr;
  String? x60randomalmumtahena;
  String? x61randomalsaff;
  String? x62randomaljumaa;
  String? x63randomalmunafeqoon;
  String? x64randomaltghabon;
  String? x65randomaltlaq;
  String? x66randomaltahreem;
  String? x67randomalmulk;
  String? x68randomalqalam;
  String? x69randomalhaqa;
  String? x70randomalmaarej;
  String? x71randomnooh;
  String? x72randomaljenn;
  String? x73randomalmzzamel;
  String? x74randomalmdather;
  String? x75randomalqyama;
  String? x76randomalensan;
  String? x77randomalmursalat;
  String? x78randomalnabaa;
  String? x79randomalzeaat;
  String? x80randomabasa;
  String? x81randomaltakweer;
  String? x82randomalenfetar;
  String? x83randomalmutaffen;
  String? x84randomalinsheqaq;
  String? x85randomalbrouj;
  String? x86randomaltareq;
  String? x87randomalaala;
  String? x88randomalghashya;
  String? x89randomalfajr;
  String? x90randomalbalad;
  String? x91randomalshams;
  String? x92randomallayl;
  String? x93randomalduha;
  String? x94randomalsharh;
  String? x95randomalteen;
  String? x96randomalalaq;
  String? x97randomalqadr;
  String? x98randomalbayeena;
  String? x99randomalzalzala;
  String? x100randomaladyat;
  String? x101randomalqareaa;
  String? x102randomaltkathor;
  String? x103randomalasr;
  String? x104randomalhamza;
  String? x105randomalfeel;
  String? x106randomqraysh;
  String? x107randomalmaaun;
  String? x108randomalkawthar;
  String? x109randomalkaferoon;
  String? x110randomalnasr;
  String? x111randomalmasad;
  String? x112randomalekhlas;
  String? x113randomalfalaq;
  String? x114randomalnas;
  bool showpress = false;
  bool showtext = false;
  bool showstatic = false;
  bool _showstatic = false;
  bool swipe = false;
  int _counter = 0;
  int _counterx = 0;
  bool jump = false;
  bool switchh = false;
  bool scrollend = false;
  List? currentSuraList;
  String ind = '';
  @override
  void initState() {
    setState(() {
      currentSuraList = [];
      aya = '';
      suraname = '';
      aya_view = '';
      randomItem = 0;
      onerandomfatiha = '';
      tworandombakra = '';
      threerandomalemran = '';
      fourrandomalnesaa = '';
      fiverandomalmaeda = '';
      sixrandomalanaam = '';
      sevenrandomalaaraf = '';
      eightrandomalanfal = '';
      ninerandomaltawba = '';
      tenrandomyunus = '';
      elevenrandomhoud = '';
      twelverandomyusuf = '';
      thirteenrandomalraad = '';
      fourteenrandomebrahim = '';
      fivteenrandomalhijr = '';
      sixteenrandomalnahl = '';
      seventeenrandomalesraa = '';
      eighteenrandomalkahf = '';
      nineteenrandommariem = '';
      twentyrandomtaha = '';
      x21randomalanbyaa = '';
      x22randomalhaj = '';
      x23randomalmouemnoun = '';
      x24randomalnour = '';
      x25randomalfourkan = '';
      x26randomalshouaraa = '';
      x27randomalnaml = '';
      x28randomalqasas = '';
      x29randomalankabout = '';
      x30randomalroum = '';
      x31randomlouqman = '';
      x32randomalsajda = '';
      x33randomalahzab = '';
      x34randomsabaa = '';
      x35randomfater = '';
      x36randomyassin = '';
      x37randomalsaffat = '';
      x38randomsad = '';
      x39randomalzumur = '';
      x40randomghafer = '';
      x41randomfusselat = '';
      x42randomalshura = '';
      x43randomalzukhrof = '';
      x44randomaldukhan = '';
      x45randomalgathya = '';
      x46randomalahqaf = '';
      x47randommuhammed = '';
      x48randomalfath = '';
      x49randomalhujurat = '';
      x50randomkaf = '';
      x51randomalzaryat = '';
      x52randomaltour = '';
      x53randomalnajm = '';
      x54randomalqamar = '';
      x55randomalrahman = '';
      x56randomalwaqeaa = '';
      x57randomalhadeed = '';
      x58randomalmujadela = '';
      x59randomalhashr = '';
      x60randomalmumtahena = '';
      x61randomalsaff = '';
      x62randomaljumaa = '';
      x63randomalmunafeqoon = '';
      x64randomaltghabon = '';
      x65randomaltlaq = '';
      x66randomaltahreem = '';
      x67randomalmulk = '';
      x68randomalqalam = '';
      x69randomalhaqa = '';
      x70randomalmaarej = '';
      x71randomnooh = '';
      x72randomaljenn = '';
      x73randomalmzzamel = '';
      x74randomalmdather = '';
      x75randomalqyama = '';
      x76randomalensan = '';
      x77randomalmursalat = '';
      x78randomalnabaa = '';
      x79randomalzeaat = '';
      x80randomabasa = '';
      x81randomaltakweer = '';
      x82randomalenfetar = '';
      x83randomalmutaffen = '';
      x84randomalinsheqaq = '';
      x85randomalbrouj = '';
      x86randomaltareq = '';
      x87randomalaala = '';
      x88randomalghashya = '';
      x89randomalfajr = '';
      x90randomalbalad = '';
      x91randomalshams = '';
      x92randomallayl = '';
      x93randomalduha = '';
      x94randomalsharh = '';
      x95randomalteen = '';
      x96randomalalaq = '';
      x97randomalqadr = '';
      x98randomalbayeena = '';
      x99randomalzalzala = '';
      x100randomaladyat = '';
      x101randomalqareaa = '';
      x102randomaltkathor = '';
      x103randomalasr = '';
      x104randomalhamza = '';
      x105randomalfeel = '';
      x106randomqraysh = '';
      x107randomalmaaun = '';
      x108randomalkawthar = '';
      x109randomalkaferoon = '';
      x110randomalnasr = '';
      x111randomalmasad = '';
      x112randomalekhlas = '';
      x113randomalfalaq = '';
      x114randomalnas = '';
    });
    super.initState();
  }

  void incrementCounterx() {
    setState(() {
      _counter++;

      randomItem = // 5;
          (totalList!..shuffle()).first;
      onerandomfatiha = (fatiha!..shuffle()).first;
      tworandombakra = (bakra!..shuffle()).first;
      threerandomalemran = (alemran!..shuffle()).first;
      fourrandomalnesaa = (alnesaa!..shuffle()).first;
      fiverandomalmaeda = //almaeda![4];
          (almaeda!..shuffle()).first;
      sixrandomalanaam = (alanaam!..shuffle()).first;
      sevenrandomalaaraf = (alaaraf!..shuffle()).first;
      eightrandomalanfal = (alanfal!..shuffle()).first;
      ninerandomaltawba = (altawba!..shuffle()).first;
      tenrandomyunus = (younus!..shuffle()).first;
      elevenrandomhoud = (houd!..shuffle()).first;
      twelverandomyusuf = (yusuf!..shuffle()).first;
      thirteenrandomalraad = (alraad!..shuffle()).first;
      fourteenrandomebrahim = (ibrahim!..shuffle()).first;
      fivteenrandomalhijr = (alhagr!..shuffle()).first;
      sixteenrandomalnahl = (alnahl!..shuffle()).first;
      seventeenrandomalesraa = (alesraa!..shuffle()).first;
      eighteenrandomalkahf = (alkahf!..shuffle()).first;
      nineteenrandommariem = (mariem!..shuffle()).first;
      twentyrandomtaha = (taha!..shuffle()).first;
      x21randomalanbyaa = (alanbyaa!..shuffle()).first;
      x22randomalhaj = (alhaj!..shuffle()).first;
      x23randomalmouemnoun = (almou2menoon!..shuffle()).first;
      x24randomalnour = (alnour!..shuffle()).first;
      x25randomalfourkan = (alfurkan!..shuffle()).first;
      x26randomalshouaraa = (alshuaaraa!..shuffle()).first;
      x27randomalnaml = (alnaml!..shuffle()).first;
      x28randomalqasas = (alqasas!..shuffle()).first;
      x29randomalankabout = (alankabout!..shuffle()).first;
      x30randomalroum = (alroum!..shuffle()).first;
      x31randomlouqman = (luqman!..shuffle()).first;
      x32randomalsajda = (alsagda!..shuffle()).first;
      x33randomalahzab = (alahzab!..shuffle()).first;
      x34randomsabaa = (sabaa!..shuffle()).first;
      x35randomfater = (fater!..shuffle()).first;
      x36randomyassin = (yasin!..shuffle()).first;
      x37randomalsaffat = (alsaffat!..shuffle()).first;
      x38randomsad = (sad!..shuffle()).first;
      x39randomalzumur = (alzumur!..shuffle()).first;
      x40randomghafer = (ghafer!..shuffle()).first;
      x41randomfusselat = (fusselat!..shuffle()).first;
      x42randomalshura = (alshoura!..shuffle()).first;
      x43randomalzukhrof = (alzukhruf!..shuffle()).first;
      x44randomaldukhan = (aldukhan!..shuffle()).first;
      x45randomalgathya = (algathya!..shuffle()).first;
      x46randomalahqaf = (alahqaf!..shuffle()).first;
      x47randommuhammed = (muhammed!..shuffle()).first;
      x48randomalfath = (alfath!..shuffle()).first;
      x49randomalhujurat = (alhujurat!..shuffle()).first;
      x50randomkaf = (qaf!..shuffle()).first;
      x51randomalzaryat = (alzaryat!..shuffle()).first;
      x52randomaltour = (altour!..shuffle()).first;
      x53randomalnajm = (alnajm!..shuffle()).first;
      x54randomalqamar = (alqamar!..shuffle()).first;
      x55randomalrahman = (alrahman!..shuffle()).first;
      x56randomalwaqeaa = (alwaqea!..shuffle()).first;
      x57randomalhadeed = (alhadeed!..shuffle()).first;
      x58randomalmujadela = (almugadela!..shuffle()).first;
      x59randomalhashr = (alhashr!..shuffle()).first;
      x60randomalmumtahena = (almumtahena!..shuffle()).first;
      x61randomalsaff = (alsaff!..shuffle()).first;
      x62randomaljumaa = (aljumaa!..shuffle()).first;
      x63randomalmunafeqoon = (almunafeqoon!..shuffle()).first;
      x64randomaltghabon = (altghabun!..shuffle()).first;
      x65randomaltlaq = (altlaq!..shuffle()).first;
      x66randomaltahreem = (altahreem!..shuffle()).first;
      x67randomalmulk = (almulk!..shuffle()).first;
      x68randomalqalam = (alqlam!..shuffle()).first;
      x69randomalhaqa = (alhaqqah!..shuffle()).first;
      x70randomalmaarej = (almaarej!..shuffle()).first;
      x71randomnooh = (noah!..shuffle()).first;
      x72randomaljenn = (aljenn!..shuffle()).first;
      x73randomalmzzamel = (almuzzamel!..shuffle()).first;
      x74randomalmdather = (almuddather!..shuffle()).first;
      x75randomalqyama = (alqyama!..shuffle()).first;
      x76randomalensan = (alensan!..shuffle()).first;
      x77randomalmursalat = (almursalat!..shuffle()).first;
      x78randomalnabaa = (alnabaa!..shuffle()).first;
      x79randomalzeaat = (alnazeaat!..shuffle()).first;
      x80randomabasa = (abasa!..shuffle()).first;
      x81randomaltakweer = (altakweer!..shuffle()).first;
      x82randomalenfetar = (alenfitar!..shuffle()).first;
      x83randomalmutaffen = (almutafifeen!..shuffle()).first;
      x84randomalinsheqaq = (alinsheqaq!..shuffle()).first;
      x85randomalbrouj = (albruj!..shuffle()).first;
      x86randomaltareq = (altareq!..shuffle()).first;
      x87randomalaala = (alaala!..shuffle()).first;
      x88randomalghashya = (alghashya!..shuffle()).first;
      x89randomalfajr = (alfajr!..shuffle()).first;
      x90randomalbalad = (albalad!..shuffle()).first;
      x91randomalshams = (alshams!..shuffle()).first;
      x92randomallayl = (allayl!..shuffle()).first;
      x93randomalduha = (alduha!..shuffle()).first;
      x94randomalsharh = (alsarh!..shuffle()).first;
      x95randomalteen = (alteen!..shuffle()).first;
      x96randomalalaq = (alalaq!..shuffle()).first;
      x97randomalqadr = (alqadr!..shuffle()).first;
      x98randomalbayeena = (albaiyena!..shuffle()).first;
      x99randomalzalzala = (alzalzala!..shuffle()).first;
      x100randomaladyat = (aladyat!..shuffle()).first;
      x101randomalqareaa = (alqareaa!..shuffle()).first;
      x102randomaltkathor = (altkathur!..shuffle()).first;
      x103randomalasr = (alasr!..shuffle()).first;
      x104randomalhamza = (alhamza!..shuffle()).first;
      x105randomalfeel = (alfeel!..shuffle()).first;
      x106randomqraysh = (qraysh!..shuffle()).first;
      x107randomalmaaun = (almaaun!..shuffle()).first;
      x108randomalkawthar = (alkawthar!..shuffle()).first;
      x109randomalkaferoon = (alkaferoon!..shuffle()).first;
      x110randomalnasr = (alnasr!..shuffle()).first;
      x111randomalmasad = (almasad!..shuffle()).first;
      x112randomalekhlas = (alekhlas!..shuffle()).first;
      x113randomalfalaq = (alfalakq!..shuffle()).first;
      x114randomalnas = (alnas!..shuffle()).first;

      // print((x114randomalnas!.split('(').last).toString().split(')').first);

      if (randomItem == 0) {
        aya = '';
        suraname = '';
        aya_view = '';
      }
      if (randomItem == 1) {
        currentSuraList = fatiha;
        aya = onerandomfatiha;
        suraname = '1- الفاتحة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=1&aya=${(onerandomfatiha!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 2) {
        currentSuraList = bakra;

        aya = tworandombakra;
        suraname = '2- البقرة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=2&aya=${(tworandombakra!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 3) {
        currentSuraList = alemran;

        aya = threerandomalemran;
        suraname = '3- آل عمران';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=3&aya=${(threerandomalemran!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 4) {
        currentSuraList = alnesaa;

        aya = fourrandomalnesaa;
        suraname = '4- النساء';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=4&aya=${(fourrandomalnesaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 5) {
        currentSuraList = almaeda;

        aya = fiverandomalmaeda;
        suraname = '5- المائدة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=5&aya=${(fiverandomalmaeda!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 6) {
        currentSuraList = alanaam;

        aya = sixrandomalanaam;
        suraname = '6- الأنعام';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=6&aya=${(sixrandomalanaam!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 7) {
        currentSuraList = alaaraf;

        aya = sevenrandomalaaraf;
        suraname = '7- الأعراف';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=7&aya=${(sevenrandomalaaraf!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 8) {
        currentSuraList = alanfal;

        aya = eightrandomalanfal;
        suraname = '8- الأنفال';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=8&aya=${(eightrandomalanfal!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 9) {
        currentSuraList = altawba;

        aya = ninerandomaltawba;
        suraname = '9- التوبة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=9&aya=${(ninerandomaltawba!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 10) {
        currentSuraList = younus;

        aya = tenrandomyunus;
        suraname = '10- يونس';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=10&aya=${(tenrandomyunus!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 11) {
        currentSuraList = houd;

        aya = elevenrandomhoud;
        suraname = '11- هود';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=11&aya=${(elevenrandomhoud!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 12) {
        currentSuraList = yusuf;

        aya = twelverandomyusuf;
        suraname = '12- يوسف';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=12&aya=${(twelverandomyusuf!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 13) {
        currentSuraList = alraad;

        aya = thirteenrandomalraad;
        suraname = '13- الرعد';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=13&aya=${(thirteenrandomalraad!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 14) {
        currentSuraList = ibrahim;

        aya = fourteenrandomebrahim;
        suraname = '14- إبراهيم';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=14&aya=${(fourteenrandomebrahim!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 15) {
        currentSuraList = alhagr;

        aya = fivteenrandomalhijr;
        suraname = '15- الحجر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=15&aya=${(fivteenrandomalhijr!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 16) {
        currentSuraList = alnahl;

        aya = sixteenrandomalnahl;
        suraname = '16- النحل';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=16&aya=${(sixteenrandomalnahl!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 17) {
        currentSuraList = alesraa;

        aya = seventeenrandomalesraa;
        suraname = '17- الإسراء';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=17&aya=${(seventeenrandomalesraa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 18) {
        currentSuraList = alkahf;

        aya = eighteenrandomalkahf;
        suraname = '18- الكهف';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=18&aya=${(eighteenrandomalkahf!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 19) {
        currentSuraList = mariem;

        aya = nineteenrandommariem;
        suraname = '19- مريم';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=19&aya=${(nineteenrandommariem!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 20) {
        currentSuraList = taha;

        aya = twentyrandomtaha;
        suraname = '20- طه';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=20&aya=${(twentyrandomtaha!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 21) {
        currentSuraList = alanbyaa;

        aya = x21randomalanbyaa;
        suraname = '21- الأنبياء';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=21&aya=${(x21randomalanbyaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 22) {
        currentSuraList = alhaj;

        aya = x22randomalhaj;
        suraname = '22- الحج';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=22&aya=${(x22randomalhaj!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 23) {
        currentSuraList = almou2menoon;

        aya = x23randomalmouemnoun;
        suraname = '23- المؤمنون';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=23&aya=${(x23randomalmouemnoun!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 24) {
        currentSuraList = alnour;

        aya = x24randomalnour;
        suraname = '24- النور';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=24&aya=${(x24randomalnour!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 25) {
        currentSuraList = alfurkan;

        aya = x25randomalfourkan;
        suraname = '25- الفرقان';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=25&aya=${(x25randomalfourkan!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 26) {
        currentSuraList = alshuaaraa;

        aya = x26randomalshouaraa;
        suraname = '26- الشعراء';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=26&aya=${(x26randomalshouaraa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 27) {
        currentSuraList = alnaml;

        aya = x27randomalnaml;
        suraname = '27- النمل';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=27&aya=${(x27randomalnaml!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 28) {
        currentSuraList = alqasas;

        aya = x28randomalqasas;
        suraname = '28- القصص';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=28&aya=${(x28randomalqasas!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 29) {
        currentSuraList = alankabout;

        aya = x29randomalankabout;
        suraname = '29- العنكبوت';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=29&aya=${(x29randomalankabout!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 30) {
        currentSuraList = alroum;

        aya = x30randomalroum;
        suraname = '30- الروم';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=30&aya=${(x30randomalroum!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 31) {
        currentSuraList = luqman;

        aya = x31randomlouqman;
        suraname = '31- لقمان';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=31&aya=${(x31randomlouqman!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 32) {
        currentSuraList = alsagda;

        aya = x32randomalsajda;
        suraname = '32- السجدة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=32&aya=${(x32randomalsajda!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 33) {
        currentSuraList = alahzab;

        aya = x33randomalahzab;
        suraname = '33- الأحزاب';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=33&aya=${(x33randomalahzab!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 34) {
        currentSuraList = sabaa;

        aya = x34randomsabaa;
        suraname = '34- سبأ';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=34&aya=${(x34randomsabaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 35) {
        currentSuraList = fater;

        aya = x35randomfater;
        suraname = '35- فاطر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=35&aya=${(x35randomfater!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 36) {
        currentSuraList = yasin;

        aya = x36randomyassin;
        suraname = '36- يس';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=36&aya=${(x36randomyassin!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 37) {
        currentSuraList = alsaffat;

        aya = x37randomalsaffat;
        suraname = '37- الصافات';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=37&aya=${(x37randomalsaffat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 38) {
        currentSuraList = sad;

        aya = x38randomsad;
        suraname = '38- ص';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=38&aya=${(x38randomsad!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 39) {
        currentSuraList = alzumur;

        aya = x39randomalzumur;
        suraname = '39- الزمر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=39&aya=${(x39randomalzumur!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 40) {
        currentSuraList = ghafer;

        aya = x40randomghafer;
        suraname = '40- غافر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=40&aya=${(x40randomghafer!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 41) {
        currentSuraList = fusselat;

        aya = x41randomfusselat;
        suraname = '41- فصلت';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=41&aya=${(x41randomfusselat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 42) {
        currentSuraList = alshoura;

        aya = x42randomalshura;
        suraname = '42- الشورى';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=42&aya=${(x42randomalshura!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 43) {
        currentSuraList = alzukhruf;

        aya = x43randomalzukhrof;
        suraname = '43- الزخرف';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=43&aya=${(x43randomalzukhrof!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 44) {
        currentSuraList = aldukhan;

        aya = x44randomaldukhan;
        suraname = '44- الدخان';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=44&aya=${(x44randomaldukhan!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 45) {
        currentSuraList = algathya;

        aya = x45randomalgathya;
        suraname = '45- الجاثية';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=45&aya=${(x45randomalgathya!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 46) {
        currentSuraList = alahqaf;

        aya = x46randomalahqaf;
        suraname = '46- الأحقاف';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=46&aya=${(x46randomalahqaf!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 47) {
        currentSuraList = muhammed;

        aya = x47randommuhammed;
        suraname = '47- محمد';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=47&aya=${(x47randommuhammed!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 48) {
        currentSuraList = alfath;

        aya = x48randomalfath;
        suraname = '48- الفتح';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=48&aya=${(x48randomalfath!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 49) {
        currentSuraList = alhujurat;

        aya = x49randomalhujurat;
        suraname = '49- الحجرات';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=49&aya=${(x49randomalhujurat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 50) {
        currentSuraList = qaf;

        aya = x50randomkaf;
        suraname = '50- ق';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=50&aya=${(x50randomkaf!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 51) {
        currentSuraList = alzaryat;

        aya = x51randomalzaryat;
        suraname = '51- الذاريات';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=51&aya=${(x51randomalzaryat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 52) {
        currentSuraList = altour;

        aya = x52randomaltour;
        suraname = '52- الطور';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=52&aya=${(x52randomaltour!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 53) {
        currentSuraList = alnajm;

        aya = x53randomalnajm;
        suraname = '53- النجم';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=53&aya=${(x53randomalnajm!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 54) {
        currentSuraList = alqamar;

        aya = x54randomalqamar;
        suraname = '54- القمر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=54&aya=${(x54randomalqamar!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 55) {
        currentSuraList = alrahman;

        aya = x55randomalrahman;
        suraname = '55- الرحمن';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=55&aya=${(x55randomalrahman!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 56) {
        currentSuraList = alwaqea;

        aya = x56randomalwaqeaa;
        suraname = '56- الواقعة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=56&aya=${(x56randomalwaqeaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 57) {
        currentSuraList = alhadeed;

        aya = x57randomalhadeed;
        suraname = '57- الحديد';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=57&aya=${(x57randomalhadeed!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 58) {
        currentSuraList = almugadela;

        aya = x58randomalmujadela;
        suraname = '58- المجادلة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=58&aya=${(x58randomalmujadela!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 59) {
        currentSuraList = alhashr;

        aya = x59randomalhashr;
        suraname = '59- الحشر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=59&aya=${(x59randomalhashr!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 60) {
        currentSuraList = almumtahena;

        aya = x60randomalmumtahena;
        suraname = '60- الممتحنة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=60&aya=${(x60randomalmumtahena!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 61) {
        currentSuraList = alsaff;

        aya = x61randomalsaff;
        suraname = '61- الصف';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=61&aya=${(x61randomalsaff!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 62) {
        currentSuraList = aljumaa;

        aya = x62randomaljumaa;
        suraname = '62- الجمعة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=62&aya=${(x62randomaljumaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 63) {
        currentSuraList = almunafeqoon;

        aya = x63randomalmunafeqoon;
        suraname = '63- المنافقون';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=63&aya=${(x63randomalmunafeqoon!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 64) {
        currentSuraList = altghabun;

        aya = x64randomaltghabon;
        suraname = '64- التغابن';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=64&aya=${(x64randomaltghabon!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 65) {
        currentSuraList = altlaq;

        aya = x65randomaltlaq;
        suraname = '65- الطلاق';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=65&aya=${(x65randomaltlaq!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 66) {
        currentSuraList = altahreem;

        aya = x66randomaltahreem;
        suraname = '66- التحريم';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=66&aya=${(x66randomaltahreem!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 67) {
        currentSuraList = almulk;

        aya = x67randomalmulk;
        suraname = '67- الملك';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=67&aya=${(x67randomalmulk!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 68) {
        currentSuraList = alqlam;

        aya = x68randomalqalam;
        suraname = '68- القلم';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=68&aya=${(x68randomalqalam!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 69) {
        currentSuraList = alhaqqah;

        aya = x69randomalhaqa;
        suraname = '69- الحاقة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=69&aya=${(x69randomalhaqa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 70) {
        currentSuraList = almaarej;

        aya = x70randomalmaarej;
        suraname = '70- المعارج';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=70&aya=${(x70randomalmaarej!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 71) {
        currentSuraList = noah;

        aya = x71randomnooh;
        suraname = '71- نوح';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=71&aya=${(x71randomnooh!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 72) {
        currentSuraList = aljenn;

        aya = x72randomaljenn;
        suraname = '72- الجن';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=72&aya=${(x72randomaljenn!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 73) {
        currentSuraList = almuzzamel;

        aya = x73randomalmzzamel;
        suraname = '73- المزّمِّل';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=73&aya=${(x73randomalmzzamel!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 74) {
        currentSuraList = almuddather;

        aya = x74randomalmdather;
        suraname = '74- المدّثر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=74&aya=${(x74randomalmdather!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 75) {
        currentSuraList = alqyama;

        aya = x75randomalqyama;
        suraname = '75- القيامة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=75&aya=${(x75randomalqyama!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 76) {
        currentSuraList = alensan;

        aya = x76randomalensan;
        suraname = '76- الإنسان';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=76&aya=${(x76randomalensan!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 77) {
        currentSuraList = almursalat;

        aya = x77randomalmursalat;
        suraname = '77- المرسلات';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=77&aya=${(x77randomalmursalat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 78) {
        currentSuraList = alnabaa;

        aya = x78randomalnabaa;
        suraname = '78- النبأ';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=78&aya=${(x78randomalnabaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 79) {
        currentSuraList = alnazeaat;

        aya = x79randomalzeaat;
        suraname = '79- النازعات';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=79&aya=${(x79randomalzeaat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 80) {
        currentSuraList = abasa;

        aya = x80randomabasa;
        suraname = '80- عبس';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=80&aya=${(x80randomabasa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 81) {
        currentSuraList = altakweer;

        aya = x81randomaltakweer;
        suraname = '81- التكوير';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=81&aya=${(x81randomaltakweer!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 82) {
        currentSuraList = alenfitar;

        aya = x82randomalenfetar;
        suraname = '82- الإنفطار';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=82&aya=${(x82randomalenfetar!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 83) {
        currentSuraList = almutafifeen;

        aya = x83randomalmutaffen;
        suraname = '83- المطففين';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=83&aya=${(x83randomalmutaffen!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 84) {
        currentSuraList = alinsheqaq;

        aya = x84randomalinsheqaq;
        suraname = '84- الانشقاق';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=84&aya=${(x84randomalinsheqaq!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 85) {
        currentSuraList = albruj;

        aya = x85randomalbrouj;
        suraname = '85- البروج';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=85&aya=${(x85randomalbrouj!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 86) {
        currentSuraList = altareq;

        aya = x86randomaltareq;
        suraname = '86- الطارق';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=86&aya=${(x86randomaltareq!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 87) {
        currentSuraList = alaala;

        aya = x87randomalaala;
        suraname = '87- الأعلى';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=87&aya=${(x87randomalaala!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 88) {
        currentSuraList = alghashya;

        aya = x88randomalghashya;
        suraname = '88- الغاشية';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=88&aya=${(x88randomalghashya!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 89) {
        currentSuraList = alfajr;

        aya = x89randomalfajr;
        suraname = '89- الفجر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=89&aya=${(x89randomalfajr!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 90) {
        currentSuraList = albalad;

        aya = x90randomalbalad;
        suraname = '90- البلد';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=90&aya=${(x90randomalbalad!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 91) {
        currentSuraList = alshams;

        aya = x91randomalshams;
        suraname = '91- الشمس';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=91&aya=${(x91randomalshams!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 92) {
        currentSuraList = allayl;

        aya = x92randomallayl;
        suraname = '92- الليل';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=92&aya=${(x92randomallayl!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 93) {
        currentSuraList = alduha;

        aya = x93randomalduha;
        suraname = '93- الضحى';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=93&aya=${(x93randomalduha!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 94) {
        currentSuraList = alsarh;

        aya = x94randomalsharh;
        suraname = '94- الشرح';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=94&aya=${(x94randomalsharh!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 95) {
        currentSuraList = alteen;

        aya = x95randomalteen;
        suraname = '95- التين';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=95&aya=${(x95randomalteen!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 96) {
        currentSuraList = alalaq;

        aya = x96randomalalaq;
        suraname = '96- العلق';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=96&aya=${(x96randomalalaq!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 97) {
        currentSuraList = alqadr;

        aya = x97randomalqadr;
        suraname = '97- القدر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=97&aya=${(x97randomalqadr!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 98) {
        currentSuraList = albaiyena;

        aya = x98randomalbayeena;
        suraname = '98- البينة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=98&aya=${(x98randomalbayeena!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 99) {
        currentSuraList = alzalzala;

        aya = x99randomalzalzala;
        suraname = '99- الزلزلة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=99&aya=${(x99randomalzalzala!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 100) {
        currentSuraList = aladyat;

        aya = x100randomaladyat;
        suraname = '100- العاديات';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=100&aya=${(x100randomaladyat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 101) {
        currentSuraList = alqareaa;

        aya = x101randomalqareaa;
        suraname = '101- القارعة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=101&aya=${(x101randomalqareaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 102) {
        currentSuraList = altkathur;

        aya = x102randomaltkathor;
        suraname = '102- التكاثر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=102&aya=${(x102randomaltkathor!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 103) {
        currentSuraList = alasr;

        aya = x103randomalasr;
        suraname = '103- العصر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=103&aya=${(x103randomalasr!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 104) {
        currentSuraList = alhamza;

        aya = x104randomalhamza;
        suraname = '104- الهُمَزَة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=104&aya=${(x104randomalhamza!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 105) {
        currentSuraList = alfeel;

        aya = x105randomalfeel;
        suraname = '105- الفيل';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=105&aya=${(x105randomalfeel!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 106) {
        currentSuraList = qraysh;

        aya = x106randomqraysh;
        suraname = '106- قريش';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=106&aya=${(x106randomqraysh!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 107) {
        currentSuraList = almaaun;

        aya = x107randomalmaaun;
        suraname = '107- الماعون';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=107&aya=${(x107randomalmaaun!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 108) {
        currentSuraList = alkawthar;

        aya = x108randomalkawthar;
        suraname = '108- الكوثر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=108&aya=${(x108randomalkawthar!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 109) {
        currentSuraList = alkaferoon;

        aya = x109randomalkaferoon;
        suraname = '109- الكافرون';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=109&aya=${(x109randomalkaferoon!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 110) {
        currentSuraList = alnasr;

        aya = x110randomalnasr;
        suraname = '110- النصر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=110&aya=${(x110randomalnasr!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 111) {
        currentSuraList = almasad;

        aya = x111randomalmasad;
        suraname = '111- المسد';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=111&aya=${(x111randomalmasad!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 112) {
        currentSuraList = alekhlas;

        aya = x112randomalekhlas;
        suraname = '112- الإخلاص';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=112&aya=${(x112randomalekhlas!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 113) {
        currentSuraList = alfalakq;

        aya = x113randomalfalaq;
        suraname = '113- الفلق';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=113&aya=${(x113randomalfalaq!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 114) {
        currentSuraList = alnas;

        aya = x114randomalnas;
        suraname = '114- الناس';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=114&aya=${(x114randomalnas!.split('(').last).toString().split(')').first}';
      }
      // if (aya != '') {
      //   Future.delayed(const Duration(seconds: 3), (() {
      //     currentAya(aya!, scrollend, suraname);
      //     //  print(aya);
      //   }));
      // }
    });
  }

  void incrementCounterxx(ScrollController controller) {
    setState(() {
      // controller .animateTo(1, duration: Duration(milliseconds: 200), curve: Curves.linear) ;

      //   _counter++;

      // randomItem = (totalList!..shuffle()).first;
      onerandomfatiha = fatiha!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      tworandombakra = bakra!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      threerandomalemran = alemran!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      fourrandomalnesaa = alnesaa!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      fiverandomalmaeda = almaeda!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      sixrandomalanaam = alanaam!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      sevenrandomalaaraf = alaaraf!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      eightrandomalanfal = alanfal!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      ninerandomaltawba = altawba!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      tenrandomyunus = younus!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      elevenrandomhoud = houd!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      twelverandomyusuf = yusuf!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      thirteenrandomalraad = alraad!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      fourteenrandomebrahim = ibrahim!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      fivteenrandomalhijr = alhagr!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      sixteenrandomalnahl = alnahl!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      seventeenrandomalesraa = alesraa!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      eighteenrandomalkahf = alkahf!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      nineteenrandommariem = mariem!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      twentyrandomtaha = taha!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x21randomalanbyaa = alanbyaa!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x22randomalhaj = alhaj!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x23randomalmouemnoun = almou2menoon!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x24randomalnour = alnour!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x25randomalfourkan = alfurkan!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x26randomalshouaraa = alshuaaraa!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x27randomalnaml = alnaml!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x28randomalqasas = alqasas!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x29randomalankabout = alankabout!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x30randomalroum = alroum!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x31randomlouqman = luqman!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x32randomalsajda = alsagda!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x33randomalahzab = alahzab!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x34randomsabaa = sabaa!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x35randomfater = fater!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x36randomyassin = yasin!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x37randomalsaffat = alsaffat!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x38randomsad = sad!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x39randomalzumur = alzumur!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x40randomghafer = ghafer!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x41randomfusselat = fusselat!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x42randomalshura = alshoura!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x43randomalzukhrof = alzukhruf!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x44randomaldukhan = aldukhan!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x45randomalgathya = algathya!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x46randomalahqaf = alahqaf!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x47randommuhammed = muhammed!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x48randomalfath = alfath!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x49randomalhujurat = alhujurat!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x50randomkaf = qaf!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x51randomalzaryat = alzaryat!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x52randomaltour = altour!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x53randomalnajm = alnajm!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x54randomalqamar = alqamar!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x55randomalrahman = alrahman!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x56randomalwaqeaa = alwaqea!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x57randomalhadeed = alhadeed!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x58randomalmujadela = almugadela!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x59randomalhashr = alhashr!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x60randomalmumtahena = almumtahena!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x61randomalsaff = alsaff!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x62randomaljumaa = aljumaa!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x63randomalmunafeqoon = almunafeqoon!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x64randomaltghabon = altghabun!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x65randomaltlaq = altlaq!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x66randomaltahreem = altahreem!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x67randomalmulk = almulk!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x68randomalqalam = alqlam!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x69randomalhaqa = alhaqqah!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x70randomalmaarej = almaarej!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x71randomnooh = noah!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x72randomaljenn = aljenn!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x73randomalmzzamel = almuzzamel!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x74randomalmdather = almuddather!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x75randomalqyama = alqyama!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x76randomalensan = alensan!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x77randomalmursalat = almursalat!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x78randomalnabaa = alnabaa!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x79randomalzeaat = alnazeaat!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x80randomabasa = abasa!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x81randomaltakweer = altakweer!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x82randomalenfetar = alenfitar!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x83randomalmutaffen = almutafifeen!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x84randomalinsheqaq = alinsheqaq!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x85randomalbrouj = albruj!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x86randomaltareq = altareq!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x87randomalaala = alaala!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x88randomalghashya = alghashya!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x89randomalfajr = alfajr!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x90randomalbalad = albalad!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x91randomalshams = alshams!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x92randomallayl = allayl!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x93randomalduha = alduha!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x94randomalsharh = alsarh!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x95randomalteen = alteen!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x96randomalalaq = alalaq!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x97randomalqadr = alqadr!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x98randomalbayeena = albaiyena!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x99randomalzalzala = alzalzala!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x100randomaladyat = aladyat!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x101randomalqareaa = alqareaa!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x102randomaltkathor = altkathur!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x103randomalasr = alasr!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x104randomalhamza = alhamza!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x105randomalfeel = alfeel!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x106randomqraysh = qraysh!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x107randomalmaaun = almaaun!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x108randomalkawthar = alkawthar!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x109randomalkaferoon = alkaferoon!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x110randomalnasr = alnasr!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x111randomalmasad = almasad!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x112randomalekhlas = alekhlas!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x113randomalfalaq = alfalakq!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');
      x114randomalnas = alnas!.firstWhere((element) =>
          (element.toString().split('(').last.split(')').first) == '1');

      // print((x114randomalnas!.split('(').last).toString().split(')').first);

      if (randomItem == 0) {
        aya = '';
        suraname = '';
        aya_view = '';
      }
      if (randomItem == 1) {
        currentSuraList = fatiha;
        aya = onerandomfatiha!;
        suraname = '1- الفاتحة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=1&aya=${(onerandomfatiha!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 2) {
        currentSuraList = bakra;

        aya = tworandombakra!;
        suraname = '2- البقرة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=2&aya=${(tworandombakra!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 3) {
        currentSuraList = alemran;

        aya = threerandomalemran!;
        suraname = '3- آل عمران';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=3&aya=${(threerandomalemran!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 4) {
        currentSuraList = alnesaa;

        aya = fourrandomalnesaa!;
        suraname = '4- النساء';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=4&aya=${(fourrandomalnesaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 5) {
        currentSuraList = almaeda;

        aya = fiverandomalmaeda!;
        suraname = '5- المائدة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=5&aya=${(fiverandomalmaeda!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 6) {
        currentSuraList = alanaam;

        aya = sixrandomalanaam!;
        suraname = '6- الأنعام';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=6&aya=${(sixrandomalanaam!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 7) {
        currentSuraList = alaaraf;

        aya = sevenrandomalaaraf!;
        suraname = '7- الأعراف';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=7&aya=${(sevenrandomalaaraf!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 8) {
        currentSuraList = alanfal;

        aya = eightrandomalanfal!;
        suraname = '8- الأنفال';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=8&aya=${(eightrandomalanfal!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 9) {
        currentSuraList = altawba;

        aya = ninerandomaltawba!;
        suraname = '9- التوبة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=9&aya=${(ninerandomaltawba!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 10) {
        currentSuraList = younus;

        aya = tenrandomyunus!;
        suraname = '10- يونس';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=10&aya=${(tenrandomyunus!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 11) {
        currentSuraList = houd;

        aya = elevenrandomhoud!;
        suraname = '11- هود';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=11&aya=${(elevenrandomhoud!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 12) {
        currentSuraList = yusuf;

        aya = twelverandomyusuf!;
        suraname = '12- يوسف';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=12&aya=${(twelverandomyusuf!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 13) {
        currentSuraList = alraad;

        aya = thirteenrandomalraad!;
        suraname = '13- الرعد';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=13&aya=${(thirteenrandomalraad!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 14) {
        currentSuraList = ibrahim;

        aya = fourteenrandomebrahim!;
        suraname = '14- إبراهيم';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=14&aya=${(fourteenrandomebrahim!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 15) {
        currentSuraList = alhagr;

        aya = fivteenrandomalhijr!;
        suraname = '15- الحجر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=15&aya=${(fivteenrandomalhijr!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 16) {
        currentSuraList = alnahl;

        aya = sixteenrandomalnahl!;
        suraname = '16- النحل';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=16&aya=${(sixteenrandomalnahl!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 17) {
        currentSuraList = alesraa;

        aya = seventeenrandomalesraa!;
        suraname = '17- الإسراء';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=17&aya=${(seventeenrandomalesraa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 18) {
        currentSuraList = alkahf;

        aya = eighteenrandomalkahf!;
        suraname = '18- الكهف';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=18&aya=${(eighteenrandomalkahf!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 19) {
        currentSuraList = mariem;

        aya = nineteenrandommariem!;
        suraname = '19- مريم';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=19&aya=${(nineteenrandommariem!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 20) {
        currentSuraList = taha;

        aya = twentyrandomtaha!;
        suraname = '20- طه';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=20&aya=${(twentyrandomtaha!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 21) {
        currentSuraList = alanbyaa;

        aya = x21randomalanbyaa!;
        suraname = '21- الأنبياء';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=21&aya=${(x21randomalanbyaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 22) {
        currentSuraList = alhaj;

        aya = x22randomalhaj!;
        suraname = '22- الحج';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=22&aya=${(x22randomalhaj!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 23) {
        currentSuraList = almou2menoon;

        aya = x23randomalmouemnoun!;
        suraname = '23- المؤمنون';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=23&aya=${(x23randomalmouemnoun!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 24) {
        currentSuraList = alnour;

        aya = x24randomalnour!;
        suraname = '24- النور';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=24&aya=${(x24randomalnour!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 25) {
        currentSuraList = alfurkan;

        aya = x25randomalfourkan!;
        suraname = '25- الفرقان';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=25&aya=${(x25randomalfourkan!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 26) {
        currentSuraList = alshuaaraa;

        aya = x26randomalshouaraa!;
        suraname = '26- الشعراء';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=26&aya=${(x26randomalshouaraa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 27) {
        currentSuraList = alnaml;

        aya = x27randomalnaml!;
        suraname = '27- النمل';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=27&aya=${(x27randomalnaml!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 28) {
        currentSuraList = alqasas;

        aya = x28randomalqasas!;
        suraname = '28- القصص';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=28&aya=${(x28randomalqasas!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 29) {
        currentSuraList = alankabout;

        aya = x29randomalankabout!;
        suraname = '29- العنكبوت';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=29&aya=${(x29randomalankabout!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 30) {
        currentSuraList = alroum;

        aya = x30randomalroum!;
        suraname = '30- الروم';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=30&aya=${(x30randomalroum!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 31) {
        currentSuraList = luqman;

        aya = x31randomlouqman!;
        suraname = '31- لقمان';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=31&aya=${(x31randomlouqman!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 32) {
        currentSuraList = alsagda;

        aya = x32randomalsajda!;
        suraname = '32- السجدة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=32&aya=${(x32randomalsajda!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 33) {
        currentSuraList = alahzab;

        aya = x33randomalahzab!;
        suraname = '33- الأحزاب';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=33&aya=${(x33randomalahzab!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 34) {
        currentSuraList = sabaa;

        aya = x34randomsabaa!;
        suraname = '34- سبأ';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=34&aya=${(x34randomsabaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 35) {
        currentSuraList = fater;

        aya = x35randomfater!;
        suraname = '35- فاطر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=35&aya=${(x35randomfater!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 36) {
        currentSuraList = yasin;

        aya = x36randomyassin!;
        suraname = '36- يس';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=36&aya=${(x36randomyassin!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 37) {
        currentSuraList = alsaffat;

        aya = x37randomalsaffat!;
        suraname = '37- الصافات';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=37&aya=${(x37randomalsaffat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 38) {
        currentSuraList = sad;

        aya = x38randomsad!;
        suraname = '38- ص';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=38&aya=${(x38randomsad!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 39) {
        currentSuraList = alzumur;

        aya = x39randomalzumur!;
        suraname = '39- الزمر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=39&aya=${(x39randomalzumur!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 40) {
        currentSuraList = ghafer;

        aya = x40randomghafer!;
        suraname = '40- غافر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=40&aya=${(x40randomghafer!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 41) {
        currentSuraList = fusselat;

        aya = x41randomfusselat!;
        suraname = '41- فصلت';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=41&aya=${(x41randomfusselat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 42) {
        currentSuraList = alshoura;

        aya = x42randomalshura!;
        suraname = '42- الشورى';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=42&aya=${(x42randomalshura!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 43) {
        currentSuraList = alzukhruf;

        aya = x43randomalzukhrof!;
        suraname = '43- الزخرف';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=43&aya=${(x43randomalzukhrof!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 44) {
        currentSuraList = aldukhan;

        aya = x44randomaldukhan!;
        suraname = '44- الدخان';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=44&aya=${(x44randomaldukhan!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 45) {
        currentSuraList = algathya;

        aya = x45randomalgathya!;
        suraname = '45- الجاثية';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=45&aya=${(x45randomalgathya!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 46) {
        currentSuraList = alahqaf;

        aya = x46randomalahqaf!;
        suraname = '46- الأحقاف';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=46&aya=${(x46randomalahqaf!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 47) {
        currentSuraList = muhammed;

        aya = x47randommuhammed!;
        suraname = '47- محمد';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=47&aya=${(x47randommuhammed!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 48) {
        currentSuraList = alfath;

        aya = x48randomalfath!;
        suraname = '48- الفتح';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=48&aya=${(x48randomalfath!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 49) {
        currentSuraList = alhujurat;

        aya = x49randomalhujurat!;
        suraname = '49- الحجرات';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=49&aya=${(x49randomalhujurat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 50) {
        currentSuraList = qaf;

        aya = x50randomkaf!;
        suraname = '50- ق';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=50&aya=${(x50randomkaf!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 51) {
        currentSuraList = alzaryat;

        aya = x51randomalzaryat!;
        suraname = '51- الذاريات';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=51&aya=${(x51randomalzaryat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 52) {
        currentSuraList = altour;

        aya = x52randomaltour!;
        suraname = '52- الطور';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=52&aya=${(x52randomaltour!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 53) {
        currentSuraList = alnajm;

        aya = x53randomalnajm!;
        suraname = '53- النجم';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=53&aya=${(x53randomalnajm!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 54) {
        currentSuraList = alqamar;

        aya = x54randomalqamar!;
        suraname = '54- القمر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=54&aya=${(x54randomalqamar!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 55) {
        currentSuraList = alrahman;

        aya = x55randomalrahman!;
        suraname = '55- الرحمن';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=55&aya=${(x55randomalrahman!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 56) {
        currentSuraList = alwaqea;

        aya = x56randomalwaqeaa!;
        suraname = '56- الواقعة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=56&aya=${(x56randomalwaqeaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 57) {
        currentSuraList = alhadeed;

        aya = x57randomalhadeed!;
        suraname = '57- الحديد';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=57&aya=${(x57randomalhadeed!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 58) {
        currentSuraList = almugadela;

        aya = x58randomalmujadela!;
        suraname = '58- المجادلة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=58&aya=${(x58randomalmujadela!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 59) {
        currentSuraList = alhashr;

        aya = x59randomalhashr!;
        suraname = '59- الحشر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=59&aya=${(x59randomalhashr!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 60) {
        currentSuraList = almumtahena;

        aya = x60randomalmumtahena!;
        suraname = '60- الممتحنة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=60&aya=${(x60randomalmumtahena!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 61) {
        currentSuraList = alsaff;

        aya = x61randomalsaff!;
        suraname = '61- الصف';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=61&aya=${(x61randomalsaff!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 62) {
        currentSuraList = aljumaa;

        aya = x62randomaljumaa!;
        suraname = '62- الجمعة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=62&aya=${(x62randomaljumaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 63) {
        currentSuraList = almunafeqoon;

        aya = x63randomalmunafeqoon!;
        suraname = '63- المنافقون';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=63&aya=${(x63randomalmunafeqoon!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 64) {
        currentSuraList = altghabun;

        aya = x64randomaltghabon!;
        suraname = '64- التغابن';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=64&aya=${(x64randomaltghabon!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 65) {
        currentSuraList = altlaq;

        aya = x65randomaltlaq!;
        suraname = '65- الطلاق';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=65&aya=${(x65randomaltlaq!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 66) {
        currentSuraList = altahreem;

        aya = x66randomaltahreem!;
        suraname = '66- التحريم';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=66&aya=${(x66randomaltahreem!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 67) {
        currentSuraList = almulk;

        aya = x67randomalmulk!;
        suraname = '67- الملك';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=67&aya=${(x67randomalmulk!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 68) {
        currentSuraList = alqlam;

        aya = x68randomalqalam!;
        suraname = '68- القلم';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=68&aya=${(x68randomalqalam!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 69) {
        currentSuraList = alhaqqah;

        aya = x69randomalhaqa!;
        suraname = '69- الحاقة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=69&aya=${(x69randomalhaqa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 70) {
        currentSuraList = almaarej;

        aya = x70randomalmaarej!;
        suraname = '70- المعارج';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=70&aya=${(x70randomalmaarej!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 71) {
        currentSuraList = noah;

        aya = x71randomnooh!;
        suraname = '71- نوح';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=71&aya=${(x71randomnooh!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 72) {
        currentSuraList = aljenn;

        aya = x72randomaljenn!;
        suraname = '72- الجن';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=72&aya=${(x72randomaljenn!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 73) {
        currentSuraList = almuzzamel;

        aya = x73randomalmzzamel!;
        suraname = '73- المزّمِّل';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=73&aya=${(x73randomalmzzamel!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 74) {
        currentSuraList = almuddather;

        aya = x74randomalmdather!;
        suraname = '74- المدّثر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=74&aya=${(x74randomalmdather!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 75) {
        currentSuraList = alqyama;

        aya = x75randomalqyama!;
        suraname = '75- القيامة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=75&aya=${(x75randomalqyama!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 76) {
        currentSuraList = alensan;

        aya = x76randomalensan!;
        suraname = '76- الإنسان';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=76&aya=${(x76randomalensan!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 77) {
        currentSuraList = almursalat;

        aya = x77randomalmursalat!;
        suraname = '77- المرسلات';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=77&aya=${(x77randomalmursalat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 78) {
        currentSuraList = alnabaa;

        aya = x78randomalnabaa!;
        suraname = '78- النبأ';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=78&aya=${(x78randomalnabaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 79) {
        currentSuraList = alnazeaat;

        aya = x79randomalzeaat!;
        suraname = '79- النازعات';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=79&aya=${(x79randomalzeaat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 80) {
        currentSuraList = abasa;

        aya = x80randomabasa!;
        suraname = '80- عبس';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=80&aya=${(x80randomabasa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 81) {
        currentSuraList = altakweer;

        aya = x81randomaltakweer!;
        suraname = '81- التكوير';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=81&aya=${(x81randomaltakweer!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 82) {
        currentSuraList = alenfitar;

        aya = x82randomalenfetar!;
        suraname = '82- الإنفطار';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=82&aya=${(x82randomalenfetar!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 83) {
        currentSuraList = almutafifeen;

        aya = x83randomalmutaffen!;
        suraname = '83- المطففين';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=83&aya=${(x83randomalmutaffen!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 84) {
        currentSuraList = alinsheqaq;

        aya = x84randomalinsheqaq!;
        suraname = '84- الانشقاق';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=84&aya=${(x84randomalinsheqaq!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 85) {
        currentSuraList = albruj;

        aya = x85randomalbrouj!;
        suraname = '85- البروج';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=85&aya=${(x85randomalbrouj!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 86) {
        currentSuraList = altareq;

        aya = x86randomaltareq!;
        suraname = '86- الطارق';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=86&aya=${(x86randomaltareq!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 87) {
        currentSuraList = alaala;

        aya = x87randomalaala!;
        suraname = '87- الأعلى';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=87&aya=${(x87randomalaala!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 88) {
        currentSuraList = alghashya;

        aya = x88randomalghashya!;
        suraname = '88- الغاشية';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=88&aya=${(x88randomalghashya!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 89) {
        currentSuraList = alfajr;

        aya = x89randomalfajr!;
        suraname = '89- الفجر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=89&aya=${(x89randomalfajr!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 90) {
        currentSuraList = albalad;

        aya = x90randomalbalad!;
        suraname = '90- البلد';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=90&aya=${(x90randomalbalad!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 91) {
        currentSuraList = alshams;

        aya = x91randomalshams!;
        suraname = '91- الشمس';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=91&aya=${(x91randomalshams!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 92) {
        currentSuraList = allayl;

        aya = x92randomallayl!;
        suraname = '92- الليل';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=92&aya=${(x92randomallayl!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 93) {
        currentSuraList = alduha;

        aya = x93randomalduha!;
        suraname = '93- الضحى';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=93&aya=${(x93randomalduha!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 94) {
        currentSuraList = alsarh;

        aya = x94randomalsharh!;
        suraname = '94- الشرح';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=94&aya=${(x94randomalsharh!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 95) {
        currentSuraList = alteen;

        aya = x95randomalteen!;
        suraname = '95- التين';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=95&aya=${(x95randomalteen!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 96) {
        currentSuraList = alalaq;

        aya = x96randomalalaq!;
        suraname = '96- العلق';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=96&aya=${(x96randomalalaq!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 97) {
        currentSuraList = alqadr;

        aya = x97randomalqadr!;
        suraname = '97- القدر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=97&aya=${(x97randomalqadr!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 98) {
        currentSuraList = albaiyena;

        aya = x98randomalbayeena!;
        suraname = '98- البينة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=98&aya=${(x98randomalbayeena!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 99) {
        currentSuraList = alzalzala;

        aya = x99randomalzalzala!;
        suraname = '99- الزلزلة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=99&aya=${(x99randomalzalzala!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 100) {
        currentSuraList = aladyat;

        aya = x100randomaladyat!;
        suraname = '100- العاديات';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=100&aya=${(x100randomaladyat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 101) {
        currentSuraList = alqareaa;

        aya = x101randomalqareaa!;
        suraname = '101- القارعة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=101&aya=${(x101randomalqareaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 102) {
        currentSuraList = altkathur;

        aya = x102randomaltkathor!;
        suraname = '102- التكاثر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=102&aya=${(x102randomaltkathor!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 103) {
        currentSuraList = alasr;

        aya = x103randomalasr!;
        suraname = '103- العصر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=103&aya=${(x103randomalasr!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 104) {
        currentSuraList = alhamza;

        aya = x104randomalhamza!;
        suraname = '104- الهُمَزَة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=104&aya=${(x104randomalhamza!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 105) {
        currentSuraList = alfeel;

        aya = x105randomalfeel!;
        suraname = '105- الفيل';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=105&aya=${(x105randomalfeel!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 106) {
        currentSuraList = qraysh;

        aya = x106randomqraysh!;
        suraname = '106- قريش';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=106&aya=${(x106randomqraysh!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 107) {
        currentSuraList = almaaun;

        aya = x107randomalmaaun!;
        suraname = '107- الماعون';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=107&aya=${(x107randomalmaaun!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 108) {
        currentSuraList = alkawthar;

        aya = x108randomalkawthar!;
        suraname = '108- الكوثر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=108&aya=${(x108randomalkawthar!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 109) {
        currentSuraList = alkaferoon;

        aya = x109randomalkaferoon!;
        suraname = '109- الكافرون';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=109&aya=${(x109randomalkaferoon!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 110) {
        currentSuraList = alnasr;

        aya = x110randomalnasr!;
        suraname = '110- النصر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=110&aya=${(x110randomalnasr!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 111) {
        currentSuraList = almasad;

        aya = x111randomalmasad!;
        suraname = '111- المسد';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=111&aya=${(x111randomalmasad!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 112) {
        currentSuraList = alekhlas;

        aya = x112randomalekhlas!;
        suraname = '112- الإخلاص';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=112&aya=${(x112randomalekhlas!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 113) {
        currentSuraList = alfalakq;

        aya = x113randomalfalaq!;
        suraname = '113- الفلق';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=113&aya=${(x113randomalfalaq!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 114) {
        currentSuraList = alnas;

        aya = x114randomalnas!;
        suraname = '114- الناس';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=114&aya=${(x114randomalnas!.split('(').last).toString().split(')').first}';
      }
      // if (aya != '') {
      //   Future.delayed(const Duration(seconds: 3), (() {
      //     currentAya(aya!, scrollend, suraname);
      //     //  print(aya);
      //   }));
      // }
    });
    controller.jumpTo(0);
  }

  void incrementCounterxxx(ScrollController controller) {
    print(algathya!.last);
    setState(() {
      // controller .animateTo(1, duration: Duration(milliseconds: 200), curve: Curves.linear) ;

      //   _counter++;

      // randomItem = (totalList!..shuffle()).first;
      onerandomfatiha = xx.fatiha!.last;
      // fatiha!.firstWhere((element) =>
      //     (element.toString().split('(').last.split(')').first) == '1');
      tworandombakra = xx.bakra!.last;
// bakra!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      threerandomalemran = xx.alemran!.last;
// alemran!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      fourrandomalnesaa = xx.alnesaa!.last;
// alnesaa!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      fiverandomalmaeda = xx.almaeda!.last;
// almaeda!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      sixrandomalanaam = xx.alanaam!.last;
// alanaam!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      sevenrandomalaaraf = xx.alaaraf!.last;
// alaaraf!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      eightrandomalanfal = xx.alanfal!.last;
//  alanfal!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      ninerandomaltawba = xx.altawba!.last;
// altawba!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      tenrandomyunus = xx.younus!.last;
// younus!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      elevenrandomhoud = xx.houd!.last;
// houd!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      twelverandomyusuf = xx.yusuf!.last;
//  yusuf!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      thirteenrandomalraad = xx.alraad!.last;
//  alraad!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      fourteenrandomebrahim = xx.ibrahim!.last;
// ibrahim!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      fivteenrandomalhijr = xx.alhagr!.last;
// alhagr!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      sixteenrandomalnahl = xx.alnahl!.last;
// alnahl!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      seventeenrandomalesraa = xx.alesraa!.last;
// alesraa!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      eighteenrandomalkahf = xx.alkahf!.last;
// alkahf!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      nineteenrandommariem = xx.mariem!.last;
//  mariem!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      twentyrandomtaha = xx.taha!.last;
//  taha!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x21randomalanbyaa = xx.alanbyaa!.last;
// alanbyaa!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x22randomalhaj = xx.alhaj!.last;
// alhaj!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x23randomalmouemnoun = xx.almou2menoon!.last;
//  almou2menoon!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x24randomalnour = xx.alnour!.last;
//  alnour!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x25randomalfourkan = xx.alfurkan!.last;
//  alfurkan!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x26randomalshouaraa = xx.alshuaaraa!.last;
// alshuaaraa!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x27randomalnaml = xx.alnaml!.last;
//  alnaml!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x28randomalqasas = xx.alqasas!.last;
// alqasas!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x29randomalankabout = xx.alankabout!.last;
//  alankabout!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x30randomalroum = xx.alroum!.last;
// alroum!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x31randomlouqman = xx.luqman!.last;
//  luqman!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x32randomalsajda = xx.alsagda!.last;
// alsagda!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x33randomalahzab = xx.alahzab!.last;
// alahzab!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x34randomsabaa = xx.sabaa!.last;
// sabaa!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x35randomfater = xx.fater!.last;
//  fater!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x36randomyassin = xx.yasin!.last;
// yasin!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x37randomalsaffat = xx.alsaffat!.last;
// alsaffat!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x38randomsad = xx.sad!.last;
//  sad!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x39randomalzumur = xx.alzumur!.last;
// alzumur!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x40randomghafer = xx.ghafer!.last;
//  ghafer!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x41randomfusselat = xx.fusselat!.last;
//  fusselat!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x42randomalshura = xx.alshoura!.last;
//  alshoura!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x43randomalzukhrof = xx.alzukhruf!.last;
//  alzukhruf!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x44randomaldukhan = xx.aldukhan!.last;
// aldukhan!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x45randomalgathya = xx.algathya!.last;
// algathya!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x46randomalahqaf = xx.alahqaf!.last;
// alahqaf!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x47randommuhammed = xx.muhammed!.last;
// muhammed!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x48randomalfath = xx.alfath!.last;
// alfath!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x49randomalhujurat = xx.alhujurat!.last;
//  alhujurat!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x50randomkaf = xx.qaf!.last;
//  qaf!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x51randomalzaryat = xx.alzaryat!.last;
// alzaryat!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x52randomaltour = xx.altour!.last;
// altour!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x53randomalnajm = xx.alnajm!.last;
// alnajm!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x54randomalqamar = xx.alqamar!.last;
//  alqamar!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x55randomalrahman = xx.alrahman!.last;
//  alrahman!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x56randomalwaqeaa = xx.alwaqea!.last;
//  alwaqea!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x57randomalhadeed = xx.alhadeed!.last;
// alhadeed!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x58randomalmujadela = xx.almugadela!.last;
// almugadela!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x59randomalhashr = xx.alhashr!.last;
// alhashr!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x60randomalmumtahena = xx.almumtahena!.last;
// almumtahena!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x61randomalsaff = xx.alsaff!.last;
// alsaff!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x62randomaljumaa = xx.aljumaa!.last;
//  aljumaa!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x63randomalmunafeqoon = xx.almunafeqoon!.last;
// almunafeqoon!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x64randomaltghabon = xx.altghabun!.last;
// altghabun!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x65randomaltlaq = xx.altlaq!.last;
//  altlaq!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x66randomaltahreem = xx.altahreem!.last;
// altahreem!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x67randomalmulk = xx.almulk!.last;
// almulk!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x68randomalqalam = xx.alqlam!.last;
// alqlam!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x69randomalhaqa = xx.alhaqqah!.last;
//  alhaqqah!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x70randomalmaarej = xx.almaarej!.last;
// almaarej!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x71randomnooh = xx.noah!.last;
// noah!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x72randomaljenn = xx.aljenn!.last;
// aljenn!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x73randomalmzzamel = xx.almuzzamel!.last;
// almuzzamel!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x74randomalmdather = xx.almuddather!.last;
//  almuddather!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x75randomalqyama = xx.alqyama!.last;
// alqyama!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x76randomalensan = xx.alensan!.last;
// alensan!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x77randomalmursalat = xx.almursalat!.last;
//  almursalat!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x78randomalnabaa = xx.alnabaa!.last;
// alnabaa!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x79randomalzeaat = xx.alnazeaat!.last;
//  alnazeaat!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x80randomabasa = xx.abasa!.last;
//  abasa!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x81randomaltakweer = xx.altakweer!.last;
// altakweer!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x82randomalenfetar = xx.alenfitar!.last;
// alenfitar!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x83randomalmutaffen = xx.almutafifeen!.last;
//  almutafifeen!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x84randomalinsheqaq = xx.alinsheqaq!.last;
// alinsheqaq!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x85randomalbrouj = xx.albruj!.last;
// albruj!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x86randomaltareq = xx.altareq!.last;
// altareq!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x87randomalaala = xx.alaala!.last;
// alaala!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x88randomalghashya = xx.alghashya!.last;
// alghashya!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x89randomalfajr = xx.alfajr!.last;
//  alfajr!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x90randomalbalad = xx.albalad!.last;
// albalad!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x91randomalshams = xx.alshams!.last;
// alshams!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x92randomallayl = xx.allayl!.last;
//  allayl!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x93randomalduha = xx.alduha!.last;
// alduha!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x94randomalsharh = xx.alsarh!.last;
//  alsarh!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x95randomalteen = xx.alteen!.last;
// alteen!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x96randomalalaq = xx.alalaq!.last;
// alalaq!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x97randomalqadr = xx.alqadr!.last;
// alqadr!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x98randomalbayeena = xx.albaiyena!.last;
// albaiyena!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x99randomalzalzala = xx.alzalzala!.last;
// alzalzala!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x100randomaladyat = xx.aladyat!.last;
// aladyat!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x101randomalqareaa = xx.alqareaa!.last;
// alqareaa!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x102randomaltkathor = xx.altkathur!.last;
// altkathur!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x103randomalasr = xx.alasr!.last;
// alasr!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x104randomalhamza = xx.alhamza!.last;
// alhamza!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x105randomalfeel = xx.alfeel!.last;
//  alfeel!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x106randomqraysh = xx.qraysh!.last;
// qraysh!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x107randomalmaaun = xx.almaaun!.last;
// almaaun!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x108randomalkawthar = xx.alkawthar!.last;
// alkawthar!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x109randomalkaferoon = xx.alkaferoon!.last;
// alkaferoon!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x110randomalnasr = xx.alnasr!.last;
//  alnasr!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x111randomalmasad = xx.almasad!.last;
// almasad!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x112randomalekhlas = xx.alekhlas!.last;
//  alekhlas!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x113randomalfalaq = xx.alfalakq!.last;
// alfalakq!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');
      x114randomalnas = xx.alnas!.last;
//  alnas!.firstWhere((element) =>
//           (element.toString().split('(').last.split(')').first) == '1');

      // print((x114randomalnas!.split('(').last).toString().split(')').first);

      if (randomItem == 0) {
        aya = '';
        suraname = '';
        aya_view = '';
      }
      if (randomItem == 1) {
        currentSuraList = fatiha;
        aya = onerandomfatiha!;
        suraname = '1- الفاتحة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=1&aya=${(onerandomfatiha!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 2) {
        currentSuraList = bakra;

        aya = tworandombakra!;
        suraname = '2- البقرة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=2&aya=${(tworandombakra!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 3) {
        currentSuraList = alemran;

        aya = threerandomalemran!;
        suraname = '3- آل عمران';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=3&aya=${(threerandomalemran!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 4) {
        currentSuraList = alnesaa;

        aya = fourrandomalnesaa!;
        suraname = '4- النساء';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=4&aya=${(fourrandomalnesaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 5) {
        currentSuraList = almaeda;

        aya = fiverandomalmaeda!;
        suraname = '5- المائدة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=5&aya=${(fiverandomalmaeda!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 6) {
        currentSuraList = alanaam;

        aya = sixrandomalanaam!;
        suraname = '6- الأنعام';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=6&aya=${(sixrandomalanaam!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 7) {
        currentSuraList = alaaraf;

        aya = sevenrandomalaaraf!;
        suraname = '7- الأعراف';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=7&aya=${(sevenrandomalaaraf!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 8) {
        currentSuraList = alanfal;

        aya = eightrandomalanfal!;
        suraname = '8- الأنفال';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=8&aya=${(eightrandomalanfal!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 9) {
        currentSuraList = altawba;

        aya = ninerandomaltawba!;
        suraname = '9- التوبة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=9&aya=${(ninerandomaltawba!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 10) {
        currentSuraList = younus;

        aya = tenrandomyunus!;
        suraname = '10- يونس';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=10&aya=${(tenrandomyunus!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 11) {
        currentSuraList = houd;

        aya = elevenrandomhoud!;
        suraname = '11- هود';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=11&aya=${(elevenrandomhoud!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 12) {
        currentSuraList = yusuf;

        aya = twelverandomyusuf!;
        suraname = '12- يوسف';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=12&aya=${(twelverandomyusuf!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 13) {
        currentSuraList = alraad;

        aya = thirteenrandomalraad!;
        suraname = '13- الرعد';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=13&aya=${(thirteenrandomalraad!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 14) {
        currentSuraList = ibrahim;

        aya = fourteenrandomebrahim!;
        suraname = '14- إبراهيم';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=14&aya=${(fourteenrandomebrahim!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 15) {
        currentSuraList = alhagr;

        aya = fivteenrandomalhijr!;
        suraname = '15- الحجر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=15&aya=${(fivteenrandomalhijr!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 16) {
        currentSuraList = alnahl;

        aya = sixteenrandomalnahl!;
        suraname = '16- النحل';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=16&aya=${(sixteenrandomalnahl!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 17) {
        currentSuraList = alesraa;

        aya = seventeenrandomalesraa!;
        suraname = '17- الإسراء';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=17&aya=${(seventeenrandomalesraa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 18) {
        currentSuraList = alkahf;

        aya = eighteenrandomalkahf!;
        suraname = '18- الكهف';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=18&aya=${(eighteenrandomalkahf!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 19) {
        currentSuraList = mariem;

        aya = nineteenrandommariem!;
        suraname = '19- مريم';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=19&aya=${(nineteenrandommariem!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 20) {
        currentSuraList = taha;

        aya = twentyrandomtaha!;
        suraname = '20- طه';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=20&aya=${(twentyrandomtaha!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 21) {
        currentSuraList = alanbyaa;

        aya = x21randomalanbyaa!;
        suraname = '21- الأنبياء';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=21&aya=${(x21randomalanbyaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 22) {
        currentSuraList = alhaj;

        aya = x22randomalhaj!;
        suraname = '22- الحج';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=22&aya=${(x22randomalhaj!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 23) {
        currentSuraList = almou2menoon;

        aya = x23randomalmouemnoun!;
        suraname = '23- المؤمنون';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=23&aya=${(x23randomalmouemnoun!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 24) {
        currentSuraList = alnour;

        aya = x24randomalnour!;
        suraname = '24- النور';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=24&aya=${(x24randomalnour!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 25) {
        currentSuraList = alfurkan;

        aya = x25randomalfourkan!;
        suraname = '25- الفرقان';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=25&aya=${(x25randomalfourkan!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 26) {
        currentSuraList = alshuaaraa;

        aya = x26randomalshouaraa!;
        suraname = '26- الشعراء';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=26&aya=${(x26randomalshouaraa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 27) {
        currentSuraList = alnaml;

        aya = x27randomalnaml!;
        suraname = '27- النمل';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=27&aya=${(x27randomalnaml!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 28) {
        currentSuraList = alqasas;

        aya = x28randomalqasas!;
        suraname = '28- القصص';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=28&aya=${(x28randomalqasas!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 29) {
        currentSuraList = alankabout;

        aya = x29randomalankabout!;
        suraname = '29- العنكبوت';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=29&aya=${(x29randomalankabout!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 30) {
        currentSuraList = alroum;

        aya = x30randomalroum!;
        suraname = '30- الروم';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=30&aya=${(x30randomalroum!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 31) {
        currentSuraList = luqman;

        aya = x31randomlouqman!;
        suraname = '31- لقمان';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=31&aya=${(x31randomlouqman!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 32) {
        currentSuraList = alsagda;

        aya = x32randomalsajda!;
        suraname = '32- السجدة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=32&aya=${(x32randomalsajda!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 33) {
        currentSuraList = alahzab;

        aya = x33randomalahzab!;
        suraname = '33- الأحزاب';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=33&aya=${(x33randomalahzab!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 34) {
        currentSuraList = sabaa;

        aya = x34randomsabaa!;
        suraname = '34- سبأ';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=34&aya=${(x34randomsabaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 35) {
        currentSuraList = fater;

        aya = x35randomfater!;
        suraname = '35- فاطر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=35&aya=${(x35randomfater!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 36) {
        currentSuraList = yasin;

        aya = x36randomyassin!;
        suraname = '36- يس';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=36&aya=${(x36randomyassin!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 37) {
        currentSuraList = alsaffat;

        aya = x37randomalsaffat!;
        suraname = '37- الصافات';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=37&aya=${(x37randomalsaffat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 38) {
        currentSuraList = sad;

        aya = x38randomsad!;
        suraname = '38- ص';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=38&aya=${(x38randomsad!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 39) {
        currentSuraList = alzumur;

        aya = x39randomalzumur!;
        suraname = '39- الزمر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=39&aya=${(x39randomalzumur!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 40) {
        currentSuraList = ghafer;

        aya = x40randomghafer!;
        suraname = '40- غافر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=40&aya=${(x40randomghafer!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 41) {
        currentSuraList = fusselat;

        aya = x41randomfusselat!;
        suraname = '41- فصلت';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=41&aya=${(x41randomfusselat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 42) {
        currentSuraList = alshoura;

        aya = x42randomalshura!;
        suraname = '42- الشورى';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=42&aya=${(x42randomalshura!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 43) {
        currentSuraList = alzukhruf;

        aya = x43randomalzukhrof!;
        suraname = '43- الزخرف';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=43&aya=${(x43randomalzukhrof!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 44) {
        currentSuraList = aldukhan;

        aya = x44randomaldukhan!;
        suraname = '44- الدخان';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=44&aya=${(x44randomaldukhan!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 45) {
        currentSuraList = algathya;

        aya = x45randomalgathya!;
        suraname = '45- الجاثية';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=45&aya=${(x45randomalgathya!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 46) {
        currentSuraList = alahqaf;

        aya = x46randomalahqaf!;
        suraname = '46- الأحقاف';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=46&aya=${(x46randomalahqaf!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 47) {
        currentSuraList = muhammed;

        aya = x47randommuhammed!;
        suraname = '47- محمد';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=47&aya=${(x47randommuhammed!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 48) {
        currentSuraList = alfath;

        aya = x48randomalfath!;
        suraname = '48- الفتح';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=48&aya=${(x48randomalfath!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 49) {
        currentSuraList = alhujurat;

        aya = x49randomalhujurat!;
        suraname = '49- الحجرات';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=49&aya=${(x49randomalhujurat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 50) {
        currentSuraList = qaf;

        aya = x50randomkaf!;
        suraname = '50- ق';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=50&aya=${(x50randomkaf!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 51) {
        currentSuraList = alzaryat;

        aya = x51randomalzaryat!;
        suraname = '51- الذاريات';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=51&aya=${(x51randomalzaryat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 52) {
        currentSuraList = altour;

        aya = x52randomaltour!;
        suraname = '52- الطور';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=52&aya=${(x52randomaltour!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 53) {
        currentSuraList = alnajm;

        aya = x53randomalnajm!;
        suraname = '53- النجم';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=53&aya=${(x53randomalnajm!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 54) {
        currentSuraList = alqamar;

        aya = x54randomalqamar!;
        suraname = '54- القمر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=54&aya=${(x54randomalqamar!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 55) {
        currentSuraList = alrahman;

        aya = x55randomalrahman!;
        suraname = '55- الرحمن';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=55&aya=${(x55randomalrahman!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 56) {
        currentSuraList = alwaqea;

        aya = x56randomalwaqeaa!;
        suraname = '56- الواقعة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=56&aya=${(x56randomalwaqeaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 57) {
        currentSuraList = alhadeed;

        aya = x57randomalhadeed!;
        suraname = '57- الحديد';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=57&aya=${(x57randomalhadeed!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 58) {
        currentSuraList = almugadela;

        aya = x58randomalmujadela!;
        suraname = '58- المجادلة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=58&aya=${(x58randomalmujadela!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 59) {
        currentSuraList = alhashr;

        aya = x59randomalhashr!;
        suraname = '59- الحشر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=59&aya=${(x59randomalhashr!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 60) {
        currentSuraList = almumtahena;

        aya = x60randomalmumtahena!;
        suraname = '60- الممتحنة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=60&aya=${(x60randomalmumtahena!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 61) {
        currentSuraList = alsaff;

        aya = x61randomalsaff!;
        suraname = '61- الصف';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=61&aya=${(x61randomalsaff!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 62) {
        currentSuraList = aljumaa;

        aya = x62randomaljumaa!;
        suraname = '62- الجمعة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=62&aya=${(x62randomaljumaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 63) {
        currentSuraList = almunafeqoon;

        aya = x63randomalmunafeqoon!;
        suraname = '63- المنافقون';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=63&aya=${(x63randomalmunafeqoon!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 64) {
        currentSuraList = altghabun;

        aya = x64randomaltghabon!;
        suraname = '64- التغابن';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=64&aya=${(x64randomaltghabon!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 65) {
        currentSuraList = altlaq;

        aya = x65randomaltlaq!;
        suraname = '65- الطلاق';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=65&aya=${(x65randomaltlaq!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 66) {
        currentSuraList = altahreem;

        aya = x66randomaltahreem!;
        suraname = '66- التحريم';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=66&aya=${(x66randomaltahreem!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 67) {
        currentSuraList = almulk;

        aya = x67randomalmulk!;
        suraname = '67- الملك';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=67&aya=${(x67randomalmulk!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 68) {
        currentSuraList = alqlam;

        aya = x68randomalqalam!;
        suraname = '68- القلم';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=68&aya=${(x68randomalqalam!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 69) {
        currentSuraList = alhaqqah;

        aya = x69randomalhaqa!;
        suraname = '69- الحاقة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=69&aya=${(x69randomalhaqa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 70) {
        currentSuraList = almaarej;

        aya = x70randomalmaarej!;
        suraname = '70- المعارج';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=70&aya=${(x70randomalmaarej!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 71) {
        currentSuraList = noah;

        aya = x71randomnooh!;
        suraname = '71- نوح';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=71&aya=${(x71randomnooh!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 72) {
        currentSuraList = aljenn;

        aya = x72randomaljenn!;
        suraname = '72- الجن';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=72&aya=${(x72randomaljenn!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 73) {
        currentSuraList = almuzzamel;

        aya = x73randomalmzzamel!;
        suraname = '73- المزّمِّل';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=73&aya=${(x73randomalmzzamel!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 74) {
        currentSuraList = almuddather;

        aya = x74randomalmdather!;
        suraname = '74- المدّثر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=74&aya=${(x74randomalmdather!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 75) {
        currentSuraList = alqyama;

        aya = x75randomalqyama!;
        suraname = '75- القيامة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=75&aya=${(x75randomalqyama!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 76) {
        currentSuraList = alensan;

        aya = x76randomalensan!;
        suraname = '76- الإنسان';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=76&aya=${(x76randomalensan!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 77) {
        currentSuraList = almursalat;

        aya = x77randomalmursalat!;
        suraname = '77- المرسلات';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=77&aya=${(x77randomalmursalat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 78) {
        currentSuraList = alnabaa;

        aya = x78randomalnabaa!;
        suraname = '78- النبأ';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=78&aya=${(x78randomalnabaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 79) {
        currentSuraList = alnazeaat;

        aya = x79randomalzeaat!;
        suraname = '79- النازعات';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=79&aya=${(x79randomalzeaat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 80) {
        currentSuraList = abasa;

        aya = x80randomabasa!;
        suraname = '80- عبس';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=80&aya=${(x80randomabasa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 81) {
        currentSuraList = altakweer;

        aya = x81randomaltakweer!;
        suraname = '81- التكوير';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=81&aya=${(x81randomaltakweer!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 82) {
        currentSuraList = alenfitar;

        aya = x82randomalenfetar!;
        suraname = '82- الإنفطار';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=82&aya=${(x82randomalenfetar!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 83) {
        currentSuraList = almutafifeen;

        aya = x83randomalmutaffen!;
        suraname = '83- المطففين';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=83&aya=${(x83randomalmutaffen!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 84) {
        currentSuraList = alinsheqaq;

        aya = x84randomalinsheqaq!;
        suraname = '84- الانشقاق';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=84&aya=${(x84randomalinsheqaq!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 85) {
        currentSuraList = albruj;

        aya = x85randomalbrouj!;
        suraname = '85- البروج';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=85&aya=${(x85randomalbrouj!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 86) {
        currentSuraList = altareq;

        aya = x86randomaltareq!;
        suraname = '86- الطارق';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=86&aya=${(x86randomaltareq!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 87) {
        currentSuraList = alaala;

        aya = x87randomalaala!;
        suraname = '87- الأعلى';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=87&aya=${(x87randomalaala!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 88) {
        currentSuraList = alghashya;

        aya = x88randomalghashya!;
        suraname = '88- الغاشية';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=88&aya=${(x88randomalghashya!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 89) {
        currentSuraList = alfajr;

        aya = x89randomalfajr!;
        suraname = '89- الفجر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=89&aya=${(x89randomalfajr!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 90) {
        currentSuraList = albalad;

        aya = x90randomalbalad!;
        suraname = '90- البلد';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=90&aya=${(x90randomalbalad!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 91) {
        currentSuraList = alshams;

        aya = x91randomalshams!;
        suraname = '91- الشمس';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=91&aya=${(x91randomalshams!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 92) {
        currentSuraList = allayl;

        aya = x92randomallayl!;
        suraname = '92- الليل';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=92&aya=${(x92randomallayl!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 93) {
        currentSuraList = alduha;

        aya = x93randomalduha!;
        suraname = '93- الضحى';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=93&aya=${(x93randomalduha!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 94) {
        currentSuraList = alsarh;

        aya = x94randomalsharh!;
        suraname = '94- الشرح';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=94&aya=${(x94randomalsharh!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 95) {
        currentSuraList = alteen;

        aya = x95randomalteen!;
        suraname = '95- التين';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=95&aya=${(x95randomalteen!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 96) {
        currentSuraList = alalaq;

        aya = x96randomalalaq!;
        suraname = '96- العلق';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=96&aya=${(x96randomalalaq!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 97) {
        currentSuraList = alqadr;

        aya = x97randomalqadr!;
        suraname = '97- القدر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=97&aya=${(x97randomalqadr!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 98) {
        currentSuraList = albaiyena;

        aya = x98randomalbayeena!;
        suraname = '98- البينة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=98&aya=${(x98randomalbayeena!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 99) {
        currentSuraList = alzalzala;

        aya = x99randomalzalzala!;
        suraname = '99- الزلزلة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=99&aya=${(x99randomalzalzala!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 100) {
        currentSuraList = aladyat;

        aya = x100randomaladyat!;
        suraname = '100- العاديات';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=100&aya=${(x100randomaladyat!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 101) {
        currentSuraList = alqareaa;

        aya = x101randomalqareaa!;
        suraname = '101- القارعة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=101&aya=${(x101randomalqareaa!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 102) {
        currentSuraList = altkathur;

        aya = x102randomaltkathor!;
        suraname = '102- التكاثر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=102&aya=${(x102randomaltkathor!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 103) {
        currentSuraList = alasr;

        aya = x103randomalasr!;
        suraname = '103- العصر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=103&aya=${(x103randomalasr!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 104) {
        currentSuraList = alhamza;

        aya = x104randomalhamza!;
        suraname = '104- الهُمَزَة';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=104&aya=${(x104randomalhamza!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 105) {
        currentSuraList = alfeel;

        aya = x105randomalfeel!;
        suraname = '105- الفيل';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=105&aya=${(x105randomalfeel!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 106) {
        currentSuraList = qraysh;

        aya = x106randomqraysh!;
        suraname = '106- قريش';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=106&aya=${(x106randomqraysh!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 107) {
        currentSuraList = almaaun;

        aya = x107randomalmaaun!;
        suraname = '107- الماعون';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=107&aya=${(x107randomalmaaun!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 108) {
        currentSuraList = alkawthar;

        aya = x108randomalkawthar!;
        suraname = '108- الكوثر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=108&aya=${(x108randomalkawthar!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 109) {
        currentSuraList = alkaferoon;

        aya = x109randomalkaferoon!;
        suraname = '109- الكافرون';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=109&aya=${(x109randomalkaferoon!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 110) {
        currentSuraList = alnasr;

        aya = x110randomalnasr!;
        suraname = '110- النصر';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=110&aya=${(x110randomalnasr!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 111) {
        currentSuraList = almasad;

        aya = x111randomalmasad!;
        suraname = '111- المسد';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=111&aya=${(x111randomalmasad!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 112) {
        currentSuraList = alekhlas;

        aya = x112randomalekhlas!;
        suraname = '112- الإخلاص';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=112&aya=${(x112randomalekhlas!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 113) {
        currentSuraList = alfalakq;

        aya = x113randomalfalaq!;
        suraname = '113- الفلق';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=113&aya=${(x113randomalfalaq!.split('(').last).toString().split(')').first}';
      } else if (randomItem == 114) {
        currentSuraList = alnas;

        aya = x114randomalnas!;
        suraname = '114- الناس';
        aya_view =
            'https://surahquran.com/aya_view.php?sora=114&aya=${(x114randomalnas!.split('(').last).toString().split(')').first}';
      }
      // if (aya != '') {
      //   Future.delayed(const Duration(seconds: 3), (() {
      //     currentAya(aya!, scrollend, suraname);
      //     //  print(aya);
      //   }));
      // }
    });
    controller.jumpTo(0);
  }

  currentAya(String currentaya, ScrollController controller, suranamee) {
    // Wakelock.enable();
    setState(() {
      scrollend = false;
      _counterx++;
    });

    var currentMap =
        allquraan.firstWhere((element) => element.containsKey(suranamee));

    var currentMapIndex = allquraan.indexOf(currentMap);
    var myAyaindex =
        int.parse((currentaya.split('(').last).toString().split(')').first);

    for (int i = 0; i < currentSuraList!.length - myAyaindex; i++) {
      setState(() {
        _counterx++;
      });

      var nextaya = allquraan[currentMapIndex].values.first!.firstWhere(
          (element) => element.toString().contains('(${myAyaindex + 1})'));

      Future.delayed(const Duration(seconds: 1), (() {
        setState(() {
          switchh = true;
        });
      }));
      if (switchh && aya != 'مِنَ الْجِنَّةِ وَالنَّاسِ(6)') {
        setState(() {
          switchh = false;
          aya = nextaya;
          aya_view =
              'https://surahquran.com/aya_view.php?sora=${currentMapIndex + 1}&aya=${(aya!.split('(').last).toString().split(')').first}';
        });
      }
    }
    if (myAyaindex == currentSuraList!.length &&
        aya != 'مِنَ الْجِنَّةِ وَالنَّاسِ(6)') {
      setState(() {
        randomItem = randomItem! + 1;
      });
      incrementCounterxx(controller);
    }
    if (aya == 'مِنَ الْجِنَّةِ وَالنَّاسِ(6)') {
      Future.delayed(const Duration(seconds: 7), (() {
        incrementCounterx();
      }));
    }
  }

  prev(String currentaya, ScrollController controller, suranamee) {
    print(algathya!.last);

    // Wakelock.enable();
    setState(() {
      scrollend = false;
      _counterx++;
    });
    var currentMap =
        allquraan.firstWhere((element) => element.containsKey(suranamee));

    var currentMapIndex = allquraan.indexOf(currentMap);
    var myAyaindex =
        int.parse((currentaya.split('(').last).toString().split(')').first);
    print(myAyaindex);
    print(randomItem);

    Future.delayed(const Duration(seconds: 1), (() {
      setState(() {
        switchh = true;
      });
    }));
    if (switchh &&
        aya != '(1)بِسۡمِ ٱللَّهِ ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ' &&
        myAyaindex != 1) {
      var previousaya = allquraan[currentMapIndex].values.first!.firstWhere(
          (element) => element.toString().contains('(${myAyaindex - 1})'));
      setState(() {
        switchh = false;
        aya = previousaya;
        aya_view =
            'https://surahquran.com/aya_view.php?sora=${currentMapIndex + 1}&aya=${(aya!.split('(').last).toString().split(')').first}';
      });
    }

    if (myAyaindex == 1 && aya != '(1)بِسۡمِ ٱللَّهِ ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ') {
      setState(() {
        randomItem = randomItem! - 1;
      });
      print('xxxxxxxxxx');
      incrementCounterxxx(controller);
      print('zzzzzzzzzzz');
    } else {
      null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final appbarheight = kToolbarHeight;
    final heightx = size.height - appbarheight;
    ScrollController controller = ScrollController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: AppDrawerr(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'بسم الله الرحمن الرحيم',
          style: TextStyle(
              // fontFamily: 'Tajawal',
              ),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
          height: heightx,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: appbarheight * 0.25,
                ),
                Text(
                  suraname!,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium, //                  fontFamily: 'Tajawal',
                ),
                SizedBox(
                  height: appbarheight * 0.1,
                ),
                AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        aya == ''
                            ? ''
                            : 'انقر هنا او على النص لتنتقل الى الشرح',
                        textStyle: TextStyle(fontSize: 14),
                        colors: [
                          Colors.lightBlueAccent,
                          const Color.fromARGB(255, 3, 64, 92)
                        ],
                      )
                    ],
                    repeatForever: true,
                    onTap: () {
                      setState(() {
                        showpress = true;
                        switchh = false;
                      });
                      launchUrl((Uri.parse(aya_view!)));
                    },
                    onNext: (p0, p1) {}),
                Text(
                  aya! == ''
                      ? ''
                      : '(${(aya!.split('(').last).toString().split(')').first})',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Tajawal',
                  ),
                ),
                SizedBox(
                    height: heightx * 0.45,
                    child: Center(
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                showpress = true;
                              });
                              launchUrl((Uri.parse(aya_view!)));
                            },
                            onHorizontalDragStart: (details) {
                              setState(() {
                                swipe = true;
                              });
                              prev(aya!, controller, suraname);
                            },
                            child: Card(
                                elevation: 20,
                                shadowColor: showpress
                                    ? Colors.amber
                                    : swipe
                                        ? Colors.red[200]
                                        : null,
                                child: SingleChildScrollView(
                                    //reverse: true,
                                    controller: controller,
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 3, 10, 3),
                                    child: SelectableText(
                                      aya!.toString().split('(').first,
                                      //   'vbncghcghjfchfxhgxdgxdgdxgxdgdxgxdgxdgdxgdxgxdgdx≈c≈ƒƒßfßfsfzsfserestdryfcghgvjhhbkjnljknljkhvjcghxfgzdfzsdzsdzsdzsdzsfxdgcfghvjbhkjkljnklklkj;ko;pkojkljkhvjcgxdfzsdaea`wq`wazedfxgchjvbjbknknkjvcdxewerdtyhgbjkjnjnkoivgbjmnnbhcfxtexrsdfghuyiokjjvgcfgxdrsznsmzsdfx',

                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontFamily: 'Tajawal',
                                      ),

                                      onTap: () {
                                        setState(() {
                                          showpress = true;
                                        });
                                        launchUrl((Uri.parse(aya_view!)));
                                      },
                                    )))))),
                _counter > 0
                    ? AnimatedTextKit(
                        animatedTexts: [
                          ColorizeAnimatedText(
                            '',
                            textStyle: TextStyle(fontSize: 14),
                            colors: [
                              Colors.lightBlueAccent,
                              const Color.fromARGB(255, 3, 64, 92)
                            ],
                          ),
                        ],
                        repeatForever: true,
                        onNext: (p0, p1) {
                          Platform.isIOS
                              ? controller.animateTo(
                                  controller.position.maxScrollExtent + 100,
                                  duration: Duration(seconds: 33),
                                  curve: Curves.linear)
                              : null;
                        },
                      )
                    : SizedBox(),
                _counter > 0
                    ? Center(
                        child: AnimatedTextKit(
                        animatedTexts: [
                          ColorizeAnimatedText(
                            'اسحب يمينا او يسارا او انقر هنا للانتقال الى الآية السابقة',
                            textStyle: TextStyle(
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                            colors: [
                              Colors.lightBlueAccent,
                              const Color.fromARGB(255, 3, 64, 92)
                            ],
                          ),
                        ],
                        repeatForever: true,
                        //                       onNext: (p0, p1) {

                        // Platform.isIOS?controller.animateTo(
                        //                                     controller.position.maxScrollExtent + 300,
                        //                                     duration: Duration(seconds: 33),
                        //                                     curve: Curves.linear):null;
                        //                       },
                        onTap: () {
                          setState(() {
                            swipe = true;
                          });
                          prev(aya!, controller, suraname);
                        },
                      ))
                    : SizedBox(),
                _counter > 0
                    ? AnimatedTextKit(
                        animatedTexts: [
                            ColorizeAnimatedText(
                              '<------------->',
                              textStyle: TextStyle(fontSize: 14),
                              colors: [
                                Colors.lightBlueAccent,
                                const Color.fromARGB(255, 3, 64, 92)
                              ],
                            )
                          ],
                        repeatForever: true,
                        onTap: () {
                          setState(() {
                            swipe = true;
                          });
                          prev(aya!, controller, suraname);
                        },
                        onNext: (p0, p1) {
                          setState(() {
                            showpress = false;
                            swipe = false;
                          });
                          if (_showstatic) {
                            var end = Platform.isAndroid
                                ? controller.position.maxScrollExtent
                                : controller.position.maxScrollExtent;
                            //-300;

                            if (end != controller.position.pixels) {
                              //   controller.jumpTo(0);
                              Platform.isAndroid
                                  ? controller.animateTo(heightx * 1000,
                                      duration: Duration(seconds: 20000),
                                      curve: Curves.linear)
                                  : controller.animateTo(
                                      controller.position.maxScrollExtent + 300,
                                      duration: Duration(seconds: 33),
                                      curve: Curves.linear);
                              if (Platform.isIOS &&
                                  controller.position.maxScrollExtent <=
                                      controller.position.pixels) {
                                controller.jumpTo(0);
                                showstatic
                                    ? currentAya(aya!, controller, suraname)
                                    : null;
                              }
                            } else {
                              if (aya != '') {
                                controller.jumpTo(0);
                                showstatic
                                    ? currentAya(aya!, controller, suraname)
                                    : null;
                              }
                            }

                            setState(() {
                              scrollend = true;
                            });
                          }
                        })
                    : SizedBox(),
                Stack(
                  // direction: Axis.vertical,
                  // crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Center(
                        child: IconButton(
                      onPressed: () {
                        setState(() {
                          _showstatic = true;
                        });
                        incrementCounterx();
                      },
                      icon: Icon(
                        Icons.arrow_drop_down_circle,
                        size: appbarheight,
                        color: Colors.lightBlue,
                      ),
                    )),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _showstatic = true;
                          });
                          incrementCounterx();
                        },
                        child: Container(
                            alignment: Alignment.center,
                            height: appbarheight * 0.7,
                            child: Text(
                              aya! == ''
                                  ? 'انقر لاظهار اية'
                                  : ' انقر لتغيير الاية بشكل عشوائي',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(108, 0, 0, 0)),
                            ))),
                  ],
                ),
                SizedBox(
                  height: appbarheight * 0.1,
                ),
                Text(
                  _counter.toString(),
                  //   Bond().suraname,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
          backgroundColor: ThemeData().secondaryHeaderColor.withOpacity(0.1),
          onPressed: () {
            if (aya! != '') {
              setState(() {
                showstatic = !showstatic;
              });
              showstatic ? currentAya(aya!, controller, suraname) : null;
            }
          },
          tooltip: ' انتقال تلقائي بالترتيب',
          child: Column(children: [
            showstatic
                ? SizedBox(
                    height: 13,
                  )
                : Text(
                    'الآية التالية',
                    style: TextStyle(fontSize: 9),
                  ),
            showstatic ? Icon(Icons.pause) : Icon(Icons.play_arrow_rounded)
          ])),
    );
  }
}
