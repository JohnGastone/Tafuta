class MovieModel {
  String? movieTitle;
  int? releaseYear;
  double? rating;
  String? posterImage;
  String? description;
  int? downloads;
  int? recommendations;
  String? genre;
  String? runtime;
  MovieModel(
      this.movieTitle,
      this.releaseYear,
      this.rating,
      this.posterImage,
      this.description,
      this.downloads,
      this.recommendations,
      this.genre,
      this.runtime);
}

class MovieLists {
  static List<MovieModel> movieList = [
    MovieModel(
        'Panguso',
        2020,
        4.0,
        'images/panguso.jpeg',
        'Filamu ya Panguso inasimulia safari ya kundi la vijana katika kutafuta haki yao. Wanapitia changamoto nyingi, lakini hawakati tamaa. Wanagundua nguvu ya umoja na mshikamano. Siri za zamani zinafichuliwa, zikichanganya mapambano yao. Hata hivyo, upendo na urafiki vinazidi majaribu.',
        2300084,
        234,
        'Swahili life',
        '2.3 hrs'),
    MovieModel(
        'Chausiku',
        2013,
        4.6,
        'images/chausiku.jpeg',
        'Chausiku ni hadithi ya mapenzi ambayo inatokea katika mji mzuri wa pwani. Mapenzi, siri, na uaminifu vinajaribiwa. Bahari inashuhudia ahadi na mikataba iliyovunjwa. Usaliti unatishia kuvunja mioyo, lakini ukweli na msamaha vinatawala mwisho. Majaribu yanaleta wanandoa karibu zaidi.',
        6111574,
        500,
        'Uswazi',
        '3 hrs'),
    MovieModel(
        'Gusa Unase',
        2021,
        4.9,
        'images/gusa.jpeg',
        'Gusa Unase ni filamu inayoangazia maisha ya mwanamuziki chipukizi. Ana ndoto kubwa lakini njia yake imejaa vikwazo. Talanta yake inavutia wengi, lakini wivu na ushindani viko nyuma ya kila kona. Anapambana kupata nafasi ya kuonyesha kipaji chake. Mwishowe, anafahamu thamani ya kujiamini na kujitolea.',
        902108,
        290,
        'Boyhood Life',
        '2.2 hrs'),
    MovieModel(
        'Mwana Ukome',
        2017,
        4.6,
        'images/mwana.jpeg',
        'Mwana Ukome inaangazia maisha ya kijana aliyepambana na umaskini na uhalifu. Ni hadithi ya matumaini na ushindi. Maisha yake yanaleta hamasa kwa wale wote wanaotaabika. Anakuwa mfano wa kuigwa katika jamii yake. Kila hatua na kila uamuzi wake una maana kubwa kwa mustakabali wake.',
        2312,
        367,
        'Action',
        '3 hrs'),
    MovieModel(
        'Mama Kimbo',
        2020,
        4.5,
        'images/kimbo.jpeg',
        'Mama Kimbo ni filamu inayoelezea nguvu ya mwanamke katika jamii. Inatupa mwanga kwenye changamoto anazokutana nazo. Anapambana na mila na desturi zilizopitwa na wakati. Mwanamke huyu jasiri anakabiliana na maadui zake bila woga. Kupitia hekima na ujasiri, anabadilisha maisha ya watu wanaomzunguka.',
        4536242,
        100,
        'Swahili Life',
        '2.5 hrs'),
    MovieModel(
        'Safari ya Gwalu',
        2023,
        5.0,
        'images/gwalu.jpg',
        'Safari ya Gwalu ni komedi inayozunguka maisha ya kijiji kimoja ambapo kuku mgeni analeta fujo na kuchekesha. Kila anayekutana naye anakabiliwa na changamoto za kipekee. Kuku huyu si wa kawaida, ana siri zake na anabadilisha maisha ya kijiji. Mwisho wa siku, kuku huyu analeta mabadiliko yasiyotarajiwa.',
        500984,
        768,
        'Adventure',
        '3 hrs'),
    MovieModel(
        'Paka Shume',
        2020,
        4.3,
        'images/jj.jpeg',
        'Katika Paka Shume, paka mjanja anajikuta katika mfululizo wa matukio ya kusisimua na ya kuchekesha. Anatumia ujanja wake kutoroka hali ngumu na kutafuta maisha bora. Kila rafiki anayekutana naye anamfundisha somo muhimu. Ingawa ni mjanja, paka huyu ana moyo wa kipekee unaovutia wote.',
        4354243,
        546,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Ukiinama Ntiti,\nukiinuka Ntiti',
        2021,
        4.0,
        'images/mwana.jpeg',
        'Hii ni filamu ya kitendawili kinachosisimua akili. Inaangazia usemi wa Kiswahili na utamaduni wake. Ni safari ya kugundua maana halisi ya methali za Kiswahili. Shujaa wetu anapita katika mitihani ya hekima na akili. Anajifunza kwamba maisha yenyewe ni kitendawili kikubwa.',
        5464738,
        201,
        'Drama',
        '1.6 hrs'),
    MovieModel(
        'Baba Kilakshal',
        2020,
        4.8,
        'images/maneno10.jpeg',
        'Baba Kilakshal ni filamu ya kusisimua inayomfuata baba anayepambana kulinda familia yake dhidi ya maadui. Anakabiliana na changamoto za kifedha na kijamii. Katika safari hii, anagundua maana ya kujitolea na sadaka. Kila uamuzi wake unaweka mustakabali wa familia yake katika mizani.',
        5432341,
        1657,
        'Swahili Life',
        '3.6 hrs'),
    MovieModel(
        'Mama Mbelemende',
        2013,
        4.9,
        'images/kilakshal.jpeg',
        'Mama Mbelemende inasimulia hadithi ya mama shujaa anayepambana na mila potofu katika kijiji chake. Anaongoza kwa mfano na kuhamasisha mabadiliko. Anaamini katika elimu na uwezeshaji wa wanawake. Anaanzisha harakati za kuelimisha jamii, hasa kuhusu haki za wanawake na watoto.',
        12989876,
        876,
        'Uswazi',
        '2 hrs'),
    MovieModel(
        'Kijiwe Samli',
        2024,
        5.0,
        'images/gwalu.jpg',
        'Kijiwe Samli ni filamu inayochunguza maisha ya vijana katika kijiwe cha mijadala, kinachobadilisha maisha yao. Maswala ya kisiasa na kijamii yanajadiliwa na kupatiwa ufumbuzi. Ni muunganiko wa hekima, vijana na mabadiliko ya jamii.',
        4353234,
        400,
        'Uswazi',
        '1.5 hrs'),
    MovieModel(
        'Kijiji cha Tambua Haki',
        2020,
        4.8,
        'images/haki.jpeg',
        'Filamu hii inatupeleka katika kijiji ambacho wanakijiji wanapambana kutambua na kudai haki zao.',
        3121341,
        908,
        'Adventure',
        '4 hrs'),
    MovieModel(
        'Anko JJ',
        2021,
        4.5,
        'images/jj.jpeg',
        'Anko JJ ni komedi inayofuata matukio ya mjomba anayependa kuingilia kati na kusuluhisha matatizo ya watu.',
        8786654,
        521,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Harakati za pimbi',
        2020,
        4.4,
        'images/kilakshal.jpeg',
        'Harakati za pimbi ni filamu ya kusisimua inayofuata maisha ya kijana mtaani anayetafuta njia ya kutokea.',
        988766,
        121,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Shumileta',
        2013,
        4.5,
        'images/shumileta.jpeg',
        'Shumileta ni filamu ya kihistoria inayoangazia mapambano ya kijasiri ya mwanamke dhidi ya ukoloni.',
        54545433,
        723,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Jumba la Dhahabu',
        2024,
        4.1,
        'images/jumba.jpeg',
        'Jini Kabula ni filamu ya kusisimua inayoangazia hadithi ya kijiji kinachokabiliwa na nguvu za giza.',
        432122,
        587,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Panguso',
        2020,
        4.0,
        'images/panguso.jpeg',
        'Filamu ya Panguso inasimulia safari ya kundi la vijana katika kutafuta haki yao. Wanapitia changamoto nyingi, lakini hawakati tamaa. Wanagundua nguvu ya umoja na mshikamano. Siri za zamani zinafichuliwa, zikichanganya mapambano yao. Hata hivyo, upendo na urafiki vinazidi majaribu.',
        6554443,
        965,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Chausiku',
        2013,
        4.6,
        'images/chausiku.jpeg',
        'Chausiku ni hadithi ya mapenzi ambayo inatokea katika mji mzuri wa pwani. Mapenzi, siri, na uaminifu vinajaribiwa. Bahari inashuhudia ahadi na mikataba iliyovunjwa. Usaliti unatishia kuvunja mioyo, lakini ukweli na msamaha vinatawala mwisho. Majaribu yanaleta wanandoa karibu zaidi.',
        8976554,
        321,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Gusa Unase',
        2021,
        4.9,
        'images/gusa.jpeg',
        'Gusa Unase ni filamu inayoangazia maisha ya mwanamuziki chipukizi. Ana ndoto kubwa lakini njia yake imejaa vikwazo. Talanta yake inavutia wengi, lakini wivu na ushindani viko nyuma ya kila kona. Anapambana kupata nafasi ya kuonyesha kipaji chake. Mwishowe, anafahamu thamani ya kujiamini na kujitolea.',
        54532211,
        600,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Mwana Ukome',
        2017,
        4.6,
        'images/mwana.jpeg',
        'Mwana Ukome inaangazia maisha ya kijana aliyepambana na umaskini na uhalifu. Ni hadithi ya matumaini na ushindi. Maisha yake yanaleta hamasa kwa wale wote wanaotaabika. Anakuwa mfano wa kuigwa katika jamii yake. Kila hatua na kila uamuzi wake una maana kubwa kwa mustakabali wake.',
        121219088,
        231,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Mama Kimbo',
        2020,
        4.5,
        'images/kimbo.jpeg',
        'Mama Kimbo ni filamu inayoelezea nguvu ya mwanamke katika jamii. Inatupa mwanga kwenye changamoto anazokutana nazo. Anapambana na mila na desturi zilizopitwa na wakati. Mwanamke huyu jasiri anakabiliana na maadui zake bila woga. Kupitia hekima na ujasiri, anabadilisha maisha ya watu wanaomzunguka.',
        65432076,
        443,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Safari ya Gwalu',
        2023,
        5.0,
        'images/gwalu.jpg',
        'Safari ya Gwalu ni komedi inayozunguka maisha ya kijiji kimoja ambapo kuku mgeni analeta fujo na kuchekesha. Kila anayekutana naye anakabiliwa na changamoto za kipekee. Kuku huyu si wa kawaida, ana siri zake na anabadilisha maisha ya kijiji. Mwisho wa siku, kuku huyu analeta mabadiliko yasiyotarajiwa.',
        7656443,
        780,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Paka Shume',
        2020,
        4.3,
        'images/chausiku.jpeg',
        'Katika Paka Shume, paka mjanja anajikuta katika mfululizo wa matukio ya kusisimua na ya kuchekesha. Anatumia ujanja wake kutoroka hali ngumu na kutafuta maisha bora. Kila rafiki anayekutana naye anamfundisha somo muhimu. Ingawa ni mjanja, paka huyu ana moyo wa kipekee unaovutia wote.',
        9897760,
        333,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Ukiinama Ntiti ukiinuka Ntiti',
        2021,
        4.0,
        'images/mwana.jpeg',
        'Hii ni filamu ya kitendawili kinachosisimua akili. Inaangazia usemi wa Kiswahili na utamaduni wake. Ni safari ya kugundua maana halisi ya methali za Kiswahili. Shujaa wetu anapita katika mitihani ya hekima na akili. Anajifunza kwamba maisha yenyewe ni kitendawili kikubwa.',
        6544333,
        441,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Baba Kilakshal',
        2020,
        4.8,
        'images/maneno10.jpeg',
        'Baba Kilakshal ni filamu ya kusisimua inayomfuata baba anayepambana kulinda familia yake dhidi ya maadui. Anakabiliana na changamoto za kifedha na kijamii. Katika safari hii, anagundua maana ya kujitolea na sadaka. Kila uamuzi wake unaweka mustakabali wa familia yake katika mizani.',
        1000342,
        139,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Mama Mbelemende',
        2013,
        4.9,
        'images/kilakshal.jpeg',
        'Mama Mbelemende inasimulia hadithi ya mama shujaa anayepambana na mila potofu katika kijiji chake. Anaongoza kwa mfano na kuhamasisha mabadiliko. Anaamini katika elimu na uwezeshaji wa wanawake. Anaanzisha harakati za kuelimisha jamii, hasa kuhusu haki za wanawake na watoto.',
        76545333,
        765,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Kijiwe Samli',
        2024,
        5.0,
        'images/maneno10.jpeg',
        'Kijiwe Samli ni filamu inayochunguza maisha ya vijana katika kijiwe cha mijadala, kinachobadilisha maisha yao. Maswala ya kisiasa na kijamii yanajadiliwa na kupatiwa ufumbuzi. Ni muunganiko wa hekima, vijana na mabadiliko ya jamii.',
        3210987,
        321,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Kijiji cha Tambua Haki',
        2020,
        4.8,
        'images/haki.jpeg',
        'Filamu hii inatupeleka katika kijiji ambacho wanakijiji wanapambana kutambua na kudai haki zao.',
        657000,
        843,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Anko JJ',
        2021,
        4.5,
        'images/jj.jpeg',
        'Anko JJ ni komedi inayofuata matukio ya mjomba anayependa kuingilia kati na kusuluhisha matatizo ya watu.',
        9000008,
        900,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Harakati za pimbi',
        2020,
        4.4,
        'images/kilakshal.jpeg',
        'Harakati za pimbi ni filamu ya kusisimua inayofuata maisha ya kijana mtaani anayetafuta njia ya kutokea.',
        7694111,
        165,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Shumileta',
        2013,
        4.5,
        'images/mwana.jpeg',
        'Shumileta ni filamu ya kihistoria inayoangazia mapambano ya kijasiri ya mwanamke dhidi ya ukoloni.',
        6509876,
        876,
        'Uswazi',
        '2.6 hrs'),
    MovieModel(
        'Jini Kabula',
        2024,
        4.1,
        'images/panguso.jpeg',
        'Jini Kabula ni filamu ya kusisimua inayoangazia hadithi ya kijiji kinachokabiliwa na nguvu za giza.',
        12000000,
        656,
        'Uswazi',
        '2.6 hrs'),
  ];
  static List<MovieModel> displayList = List.from(movieList);
}
