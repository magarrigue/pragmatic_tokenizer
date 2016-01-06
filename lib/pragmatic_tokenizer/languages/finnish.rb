module PragmaticTokenizer
  module Languages
    module Finnish
      include Languages::Common
      ABBREVIATIONS = []
      STOP_WORDS = ["aiemmin", "aika", "aikaa", "aikaan", "aikaisemmin", "aikaisin", "aikajen", "aikana", "aikoina", "aikoo", "aikovat", "aina", "ainakaan", "ainakin", "ainoa", "ainoat", "aiomme", "aion", "aiotte", "aist", "aivan", "ajan", "älä", "alas", "alemmas", "älköön", "alkuisin", "alkuun", "alla", "alle", "aloitamme", "aloitan", "aloitat", "aloitatte", "aloitattivat", "aloitettava", "aloitettevaksi", "aloitettu", "aloitimme", "aloitin", "aloitit", "aloititte", "aloittaa", "aloittamatta", "aloitti", "aloittivat", "alta", "aluksi", "alussa", "alusta", "annettavaksi", "annetteva", "annettu", "antaa", "antamatta", "antoi", "aoua", "apu", "asia", "asiaa", "asian", "asiasta", "asiat", "asioiden", "asioihin", "asioita", "asti", "avuksi", "avulla", "avun", "avutta", "edellä", "edelle", "edelleen", "edeltä", "edemmäs", "edes", "edessä", "edestä", "ehkä", "ei", "eikä", "eilen", "eivät", "eli", "ellei", "elleivät", "ellemme", "ellen", "ellet", "ellette", "emme", "en", "enää", "enemmän", "eniten", "ennen", "ensi", "ensimmäinen", "ensimmäiseksi", "ensimmäisen", "ensimmäisenä", "ensimmäiset", "ensimmäisiä", "ensimmäisiksi", "ensimmäisinä", "ensimmäistä", "ensin", "entinen", "entisen", "entisiä", "entistä", "entisten", "eräät", "eräiden", "eräs", "eri", "erittäin", "erityisesti", "esi", "esiin", "esillä", "esimerkiksi", "et", "eteen", "etenkin", "että", "ette", "ettei", "halua", "haluaa", "haluamatta", "haluamme", "haluan", "haluat", "haluatte", "haluavat", "halunnut", "halusi", "halusimme", "halusin", "halusit", "halusitte", "halusivat", "halutessa", "haluton", "hän", "häneen", "hänellä", "hänelle", "häneltä", "hänen", "hänessä", "hänestä", "hänet", "he", "hei", "heidän", "heihin", "heille", "heiltä", "heissä", "heistä", "heitä", "helposti", "heti", "hetkellä", "hieman", "huolimatta", "huomenna", "hyvä", "hyvää", "hyvät", "hyviä", "hyvien", "hyviin", "hyviksi", "hyville", "hyviltä", "hyvin", "hyvinä", "hyvissä", "hyvistä", "ihan", "ilman", "ilmeisesti", "itse", "itseään", "itsensä", "ja", "jää", "jälkeen", "jälleen", "jo", "johon", "joiden", "joihin", "joiksi", "joilla", "joille", "joilta", "joissa", "joista", "joita", "joka", "jokainen", "jokin", "joko", "joku", "jolla", "jolle", "jolloin", "jolta", "jompikumpi", "jonka", "jonkin", "jonne", "joo", "jopa", "jos", "joskus", "jossa", "josta", "jota", "jotain", "joten", "jotenkin", "jotenkuten", "jotka", "jotta", "jouduimme", "jouduin", "jouduit", "jouduitte", "joudumme", "joudun", "joudutte", "joukkoon", "joukossa", "joukosta", "joutua", "joutui", "joutuivat", "joutumaan", "joutuu", "joutuvat", "juuri", "kahdeksan", "kahdeksannen", "kahdella", "kahdelle", "kahdelta", "kahden", "kahdessa", "kahdesta", "kahta", "kahteen", "kai", "kaiken", "kaikille", "kaikilta", "kaikkea", "kaikki", "kaikkia", "kaikkiaan", "kaikkialla", "kaikkialle", "kaikkialta", "kaikkien", "kaikkin", "kaksi", "kannalta", "kannattaa", "kanssa", "kanssaan", "kanssamme", "kanssani", "kanssanne", "kanssasi", "kauan", "kauemmas", "kautta", "kehen", "keiden", "keihin", "keiksi", "keillä", "keille", "keiltä", "keinä", "keissä", "keistä", "keitä", "keittä", "keitten", "keneen", "keneksi", "kenellä", "kenelle", "keneltä", "kenen", "kenenä", "kenessä", "kenestä", "kenet", "kenettä", "kennessästä", "kerran", "kerta", "kertaa", "kesken", "keskimäärin", "ketä", "ketkä", "kiitos", "kohti", "koko", "kokonaan", "kolmas", "kolme", "kolmen", "kolmesti", "koska", "koskaan", "kovin", "kuin", "kuinka", "kuitenkaan", "kuitenkin", "kuka", "kukaan", "kukin", "kumpainen", "kumpainenkaan", "kumpi", "kumpikaan", "kumpikin", "kun", "kuten", "kuuden", "kuusi", "kuutta", "kyllä", "kymmenen", "kyse", "lähekkäin", "lähellä", "lähelle", "läheltä", "lähemmäs", "lähes", "lähinnä", "lähtien", "läpi", "liian", "liki", "lisää", "lisäksi", "luo", "mahdollisimman", "mahdollista", "me", "meidän", "meillä", "meille", "melkein", "melko", "menee", "meneet", "menemme", "menen", "menet", "menette", "menevät", "meni", "menimme", "menin", "menit", "menivät", "mennessä", "mennyt", "menossa", "mihin", "mikä", "mikään", "mikäli", "mikin", "miksi", "milloin", "minä", "minne", "minun", "minut", "missä", "mistä", "mitä", "mitään", "miten", "moi", "molemmat", "mones", "monesti", "monet", "moni", "moniaalla", "moniaalle", "moniaalta", "monta", "muassa", "muiden", "muita", "muka", "mukaan", "mukaansa", "mukana", "mutta", "muu", "muualla", "muualle", "muualta", "muuanne", "muulloin", "muun", "muut", "muuta", "muutama", "muutaman", "muuten", "myöhemmin", "myös", "myöskään", "myöskin", "myötä", "näiden", "näin", "näissä", "näissähin", "näissälle", "näissältä", "näissästä", "näitä", "nämä", "ne", "neljä", "neljää", "neljän", "niiden", "niin", "niistä", "niitä", "noin", "nopeammin", "nopeasti", "nopeiten", "nro", "nuo", "nyt", "ohi", "oikein", "ole", "olemme", "olen", "olet", "olette", "oleva", "olevan", "olevat", "oli", "olimme", "olin", "olisi", "olisimme", "olisin", "olisit", "olisitte", "olisivat", "olit", "olitte", "olivat", "olla", "olleet", "olli", "ollut", "oma", "omaa", "omaan", "omaksi", "omalle", "omalta", "oman", "omassa", "omat", "omia", "omien", "omiin", "omiksi", "omille", "omilta", "omissa", "omista", "on", "onkin", "onko", "ovat", "päälle", "paikoittain", "paitsi", "pakosti", "paljon", "paremmin", "parempi", "parhaillaan", "parhaiten", "peräti", "perusteella", "pian", "pieneen", "pieneksi", "pienellä", "pienelle", "pieneltä", "pienempi", "pienestä", "pieni", "pienin", "puolesta", "puolestaan", "runsaasti", "saakka", "sadam", "sama", "samaa", "samaan", "samalla", "samallalta", "samallassa", "samallasta", "saman", "samat", "samoin", "sata", "sataa", "satojen", "se", "seitsemän", "sekä", "sen", "seuraavat", "siellä", "sieltä", "siihen", "siinä", "siis", "siitä", "sijaan", "siksi", "sillä", "silloin", "silti", "sinä", "sinne", "sinua", "sinulle", "sinulta", "sinun", "sinussa", "sinusta", "sinut", "sisäkkäin", "sisällä", "sitä", "siten", "sitten", "suoraan", "suuntaan", "suuren", "suuret", "suuri", "suuria", "suurin", "suurten", "taa", "täällä", "täältä", "taas", "taemmas", "tähän", "tahansa", "tai", "takaa", "takaisin", "takana", "takia", "tällä", "tällöin", "tämä", "tämän", "tänä", "tänään", "tänne", "tapauksessa", "tässä", "tästä", "tätä", "täten", "tavalla", "tavoitteena", "täysin", "täytyvät", "täytyy", "te", "tietysti", "todella", "toinen", "toisaalla", "toisaalle", "toisaalta", "toiseen", "toiseksi", "toisella", "toiselle", "toiselta", "toisemme", "toisen", "toisensa", "toisessa", "toisesta", "toista", "toistaiseksi", "toki", "tosin", "tuhannen", "tuhat", "tule", "tulee", "tulemme", "tulen", "tulet", "tulette", "tulevat", "tulimme", "tulin", "tulisi", "tulisimme", "tulisin", "tulisit", "tulisitte", "tulisivat", "tulit", "tulitte", "tulivat", "tulla", "tulleet", "tullut", "tuntuu", "tuo", "tuolla", "tuolloin", "tuolta", "tuonne", "tuskin", "tykö", "usea", "useasti", "useimmiten", "usein", "useita", "uudeksi", "uudelleen", "uuden", "uudet", "uusi", "uusia", "uusien", "uusinta", "uuteen", "uutta", "vaan", "vähän", "vähemmän", "vähintään", "vähiten", "vai", "vaiheessa", "vaikea", "vaikean", "vaikeat", "vaikeilla", "vaikeille", "vaikeilta", "vaikeissa", "vaikeista", "vaikka", "vain", "välillä", "varmasti", "varsin", "varsinkin", "varten", "vasta", "vastaan", "vastakkain", "verran", "vielä", "vierekkäin", "vieri", "viiden", "viime", "viimeinen", "viimeisen", "viimeksi", "viisi", "voi", "voidaan", "voimme", "voin", "voisi", "voit", "voitte", "voivat", "vuoden", "vuoksi", "vuosi", "vuosien", "vuosina", "vuotta", "yhä", "yhdeksän", "yhden", "yhdessä", "yhtä", "yhtäällä", "yhtäälle", "yhtäältä", "yhtään", "yhteen", "yhteensä", "yhteydessä", "yhteyteen", "yksi", "yksin", "yksittäin", "yleensä", "ylemmäs", "yli", "ylös", "ympäri"]
    end
  end
end