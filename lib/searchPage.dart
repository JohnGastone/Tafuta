// ignore_for_file: prefer_const_constructors, prefer_is_empty
// ignore: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tafuta/model/movie_model.dart';
import 'package:tafuta/movieDescription.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  void updateList(String value) {
    // We will filter our list of movies here
    setState(() {
      displayList = movieList
          .where((element) =>
              element.movieTitle!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  static List<MovieModel> movieList = [
    MovieModel('Panguso', 2020, 4.0, 'images/panguso.jpeg',
        'Filamu ya Panguso inasimulia safari ya kundi la vijana katika kutafuta haki yao. Wanapitia changamoto nyingi, lakini hawakati tamaa. Wanagundua nguvu ya umoja na mshikamano. Siri za zamani zinafichuliwa, zikichanganya mapambano yao. Hata hivyo, upendo na urafiki vinazidi majaribu.'),
    MovieModel('Chausiku', 2013, 4.6, 'images/chausiku.jpeg',
        'Chausiku ni hadithi ya mapenzi ambayo inatokea katika mji mzuri wa pwani. Mapenzi, siri, na uaminifu vinajaribiwa. Bahari inashuhudia ahadi na mikataba iliyovunjwa. Usaliti unatishia kuvunja mioyo, lakini ukweli na msamaha vinatawala mwisho. Majaribu yanaleta wanandoa karibu zaidi.'),
    MovieModel('Gusa Unase', 2021, 4.9, 'images/gusa.jpeg',
        'Gusa Unase ni filamu inayoangazia maisha ya mwanamuziki chipukizi. Ana ndoto kubwa lakini njia yake imejaa vikwazo. Talanta yake inavutia wengi, lakini wivu na ushindani viko nyuma ya kila kona. Anapambana kupata nafasi ya kuonyesha kipaji chake. Mwishowe, anafahamu thamani ya kujiamini na kujitolea.'),
    MovieModel('Mwana Ukome', 2017, 4.6, 'images/mwana.jpeg',
        'Mwana Ukome inaangazia maisha ya kijana aliyepambana na umaskini na uhalifu. Ni hadithi ya matumaini na ushindi. Maisha yake yanaleta hamasa kwa wale wote wanaotaabika. Anakuwa mfano wa kuigwa katika jamii yake. Kila hatua na kila uamuzi wake una maana kubwa kwa mustakabali wake.'),
    MovieModel('Mama Kimbo', 2020, 4.5, 'images/kimbo.jpeg',
        'Mama Kimbo ni filamu inayoelezea nguvu ya mwanamke katika jamii. Inatupa mwanga kwenye changamoto anazokutana nazo. Anapambana na mila na desturi zilizopitwa na wakati. Mwanamke huyu jasiri anakabiliana na maadui zake bila woga. Kupitia hekima na ujasiri, anabadilisha maisha ya watu wanaomzunguka.'),
    MovieModel('Safari ya Gwalu', 2023, 5.0, 'images/gwalu.jpg',
        'Safari ya Gwalu ni komedi inayozunguka maisha ya kijiji kimoja ambapo kuku mgeni analeta fujo na kuchekesha. Kila anayekutana naye anakabiliwa na changamoto za kipekee. Kuku huyu si wa kawaida, ana siri zake na anabadilisha maisha ya kijiji. Mwisho wa siku, kuku huyu analeta mabadiliko yasiyotarajiwa.'),
    MovieModel('Paka Shume', 2020, 4.3, 'images/jj.jpeg',
        'Katika Paka Shume, paka mjanja anajikuta katika mfululizo wa matukio ya kusisimua na ya kuchekesha. Anatumia ujanja wake kutoroka hali ngumu na kutafuta maisha bora. Kila rafiki anayekutana naye anamfundisha somo muhimu. Ingawa ni mjanja, paka huyu ana moyo wa kipekee unaovutia wote.'),
    MovieModel('Ukiinama Ntiti ukiinuka Ntiti', 2021, 4.0, 'images/mwana.jpeg',
        'Hii ni filamu ya kitendawili kinachosisimua akili. Inaangazia usemi wa Kiswahili na utamaduni wake. Ni safari ya kugundua maana halisi ya methali za Kiswahili. Shujaa wetu anapita katika mitihani ya hekima na akili. Anajifunza kwamba maisha yenyewe ni kitendawili kikubwa.'),
    MovieModel('Baba Kilakshal', 2020, 4.8, 'images/maneno10.jpeg',
        'Baba Kilakshal ni filamu ya kusisimua inayomfuata baba anayepambana kulinda familia yake dhidi ya maadui. Anakabiliana na changamoto za kifedha na kijamii. Katika safari hii, anagundua maana ya kujitolea na sadaka. Kila uamuzi wake unaweka mustakabali wa familia yake katika mizani.'),
    MovieModel('Mama Mbelemende', 2013, 4.9, 'images/kilakshal.jpeg',
        'Mama Mbelemende inasimulia hadithi ya mama shujaa anayepambana na mila potofu katika kijiji chake. Anaongoza kwa mfano na kuhamasisha mabadiliko. Anaamini katika elimu na uwezeshaji wa wanawake. Anaanzisha harakati za kuelimisha jamii, hasa kuhusu haki za wanawake na watoto.'),
    MovieModel('Kijiwe Samli', 2024, 5.0, 'images/gwalu.jpg',
        'Kijiwe Samli ni filamu inayochunguza maisha ya vijana katika kijiwe cha mijadala, kinachobadilisha maisha yao. Maswala ya kisiasa na kijamii yanajadiliwa na kupatiwa ufumbuzi. Ni muunganiko wa hekima, vijana na mabadiliko ya jamii.'),
    MovieModel('Kijiji cha Tambua Haki', 2020, 4.8, 'images/haki.jpeg',
        'Filamu hii inatupeleka katika kijiji ambacho wanakijiji wanapambana kutambua na kudai haki zao.'),
    MovieModel('Anko JJ', 2021, 4.5, 'images/jj.jpeg',
        'Anko JJ ni komedi inayofuata matukio ya mjomba anayependa kuingilia kati na kusuluhisha matatizo ya watu.'),
    MovieModel('Harakati za pimbi', 2020, 4.4, 'images/kilakshal.jpeg',
        'Harakati za pimbi ni filamu ya kusisimua inayofuata maisha ya kijana mtaani anayetafuta njia ya kutokea.'),
    MovieModel('Shumileta', 2013, 4.5, 'images/shumileta.jpeg',
        'Shumileta ni filamu ya kihistoria inayoangazia mapambano ya kijasiri ya mwanamke dhidi ya ukoloni.'),
    MovieModel('Jumba la Dhahabu', 2024, 4.1, 'images/jumba.jpeg',
        'Jini Kabula ni filamu ya kusisimua inayoangazia hadithi ya kijiji kinachokabiliwa na nguvu za giza.'),
    MovieModel('Panguso', 2020, 4.0, 'images/panguso.jpeg',
        'Filamu ya Panguso inasimulia safari ya kundi la vijana katika kutafuta haki yao. Wanapitia changamoto nyingi, lakini hawakati tamaa. Wanagundua nguvu ya umoja na mshikamano. Siri za zamani zinafichuliwa, zikichanganya mapambano yao. Hata hivyo, upendo na urafiki vinazidi majaribu.'),
    MovieModel('Chausiku', 2013, 4.6, 'images/chausiku.jpeg',
        'Chausiku ni hadithi ya mapenzi ambayo inatokea katika mji mzuri wa pwani. Mapenzi, siri, na uaminifu vinajaribiwa. Bahari inashuhudia ahadi na mikataba iliyovunjwa. Usaliti unatishia kuvunja mioyo, lakini ukweli na msamaha vinatawala mwisho. Majaribu yanaleta wanandoa karibu zaidi.'),
    MovieModel('Gusa Unase', 2021, 4.9, 'images/gusa.jpeg',
        'Gusa Unase ni filamu inayoangazia maisha ya mwanamuziki chipukizi. Ana ndoto kubwa lakini njia yake imejaa vikwazo. Talanta yake inavutia wengi, lakini wivu na ushindani viko nyuma ya kila kona. Anapambana kupata nafasi ya kuonyesha kipaji chake. Mwishowe, anafahamu thamani ya kujiamini na kujitolea.'),
    MovieModel('Mwana Ukome', 2017, 4.6, 'images/mwana.jpeg',
        'Mwana Ukome inaangazia maisha ya kijana aliyepambana na umaskini na uhalifu. Ni hadithi ya matumaini na ushindi. Maisha yake yanaleta hamasa kwa wale wote wanaotaabika. Anakuwa mfano wa kuigwa katika jamii yake. Kila hatua na kila uamuzi wake una maana kubwa kwa mustakabali wake.'),
    MovieModel('Mama Kimbo', 2020, 4.5, 'images/kimbo.jpeg',
        'Mama Kimbo ni filamu inayoelezea nguvu ya mwanamke katika jamii. Inatupa mwanga kwenye changamoto anazokutana nazo. Anapambana na mila na desturi zilizopitwa na wakati. Mwanamke huyu jasiri anakabiliana na maadui zake bila woga. Kupitia hekima na ujasiri, anabadilisha maisha ya watu wanaomzunguka.'),
    MovieModel('Safari ya Gwalu', 2023, 5.0, 'images/gwalu.jpg',
        'Safari ya Gwalu ni komedi inayozunguka maisha ya kijiji kimoja ambapo kuku mgeni analeta fujo na kuchekesha. Kila anayekutana naye anakabiliwa na changamoto za kipekee. Kuku huyu si wa kawaida, ana siri zake na anabadilisha maisha ya kijiji. Mwisho wa siku, kuku huyu analeta mabadiliko yasiyotarajiwa.'),
    MovieModel('Paka Shume', 2020, 4.3, 'images/chausiku.jpeg',
        'Katika Paka Shume, paka mjanja anajikuta katika mfululizo wa matukio ya kusisimua na ya kuchekesha. Anatumia ujanja wake kutoroka hali ngumu na kutafuta maisha bora. Kila rafiki anayekutana naye anamfundisha somo muhimu. Ingawa ni mjanja, paka huyu ana moyo wa kipekee unaovutia wote.'),
    MovieModel('Ukiinama Ntiti ukiinuka Ntiti', 2021, 4.0, 'images/mwana.jpeg',
        'Hii ni filamu ya kitendawili kinachosisimua akili. Inaangazia usemi wa Kiswahili na utamaduni wake. Ni safari ya kugundua maana halisi ya methali za Kiswahili. Shujaa wetu anapita katika mitihani ya hekima na akili. Anajifunza kwamba maisha yenyewe ni kitendawili kikubwa.'),
    MovieModel('Baba Kilakshal', 2020, 4.8, 'images/maneno10.jpeg',
        'Baba Kilakshal ni filamu ya kusisimua inayomfuata baba anayepambana kulinda familia yake dhidi ya maadui. Anakabiliana na changamoto za kifedha na kijamii. Katika safari hii, anagundua maana ya kujitolea na sadaka. Kila uamuzi wake unaweka mustakabali wa familia yake katika mizani.'),
    MovieModel('Mama Mbelemende', 2013, 4.9, 'images/kilakshal.jpeg',
        'Mama Mbelemende inasimulia hadithi ya mama shujaa anayepambana na mila potofu katika kijiji chake. Anaongoza kwa mfano na kuhamasisha mabadiliko. Anaamini katika elimu na uwezeshaji wa wanawake. Anaanzisha harakati za kuelimisha jamii, hasa kuhusu haki za wanawake na watoto.'),
    MovieModel('Kijiwe Samli', 2024, 5.0, 'images/maneno10.jpeg',
        'Kijiwe Samli ni filamu inayochunguza maisha ya vijana katika kijiwe cha mijadala, kinachobadilisha maisha yao. Maswala ya kisiasa na kijamii yanajadiliwa na kupatiwa ufumbuzi. Ni muunganiko wa hekima, vijana na mabadiliko ya jamii.'),
    MovieModel('Kijiji cha Tambua Haki', 2020, 4.8, 'images/haki.jpeg',
        'Filamu hii inatupeleka katika kijiji ambacho wanakijiji wanapambana kutambua na kudai haki zao.'),
    MovieModel('Anko JJ', 2021, 4.5, 'images/jj.jpeg',
        'Anko JJ ni komedi inayofuata matukio ya mjomba anayependa kuingilia kati na kusuluhisha matatizo ya watu.'),
    MovieModel('Harakati za pimbi', 2020, 4.4, 'images/kilakshal.jpeg',
        'Harakati za pimbi ni filamu ya kusisimua inayofuata maisha ya kijana mtaani anayetafuta njia ya kutokea.'),
    MovieModel('Shumileta', 2013, 4.5, 'images/mwana.jpeg',
        'Shumileta ni filamu ya kihistoria inayoangazia mapambano ya kijasiri ya mwanamke dhidi ya ukoloni.'),
    MovieModel('Jini Kabula', 2024, 4.1, 'images/panguso.jpeg',
        'Jini Kabula ni filamu ya kusisimua inayoangazia hadithi ya kijiji kinachokabiliwa na nguvu za giza.'),
  ];

  List<MovieModel> displayList = List.from(movieList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 47, 66),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0.4,
        centerTitle: true,
        title: Text(
          "Movies Arena",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Search for your favorite Movie',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    onChanged: (value) => updateList(value),
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 153, 174, 190),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Eg: Kijiji cha Tambua Haki",
                        suffixIcon: Icon(
                          Icons.search,
                        ),
                        suffixIconColor: Color.fromARGB(255, 46, 204, 209))),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: displayList.length == 0
                        ? Center(
                            child: Text(
                              'No movies with that name found',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                          )
                        : ListView.builder(
                            itemCount: displayList.length,
                            itemBuilder: ((context, index) => InkWell(
                                  // Handle the tap event
                                  onTap: () {
                                    // Use Navigator to push a new route that displays the ItemPage
                                    // We pass the MovieModel object to the ItemPage to display the movie details
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ItemPage(movie: displayList[index]),
                                      ),
                                    );
                                  },
                                  child: ListTile(
                                    contentPadding: EdgeInsets.all(4),
                                    leading: Image.asset(
                                      displayList[index].posterImage!,
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                    title: Text(
                                      displayList[index].movieTitle!,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 195, 205, 211)),
                                    ),
                                    subtitle: Text(
                                      '${displayList[index].releaseYear!}',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              255, 92, 165, 202)),
                                    ),
                                    trailing: Text(
                                        '${displayList[index].rating!}',
                                        style: TextStyle(color: Colors.amber)),
                                  ),
                                ))))
              ])),
    );
  }
}
