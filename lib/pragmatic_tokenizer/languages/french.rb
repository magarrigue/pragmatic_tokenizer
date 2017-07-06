module PragmaticTokenizer
  module Languages
    module French
      include Languages::Common
      ABBREVIATIONS = Set.new(["a.c.n", "a.m", "al", "ann", "apr", "art", "auj", "av", "b.p", "boul", "c.-à-d", "c.n", "c.n.s", "c.p.i", "c.q.f.d", "c.s", "ca", "cf", "ch.-l", "chap", "co", "contr", "dir", "e.g", "e.v", "env", "etc", "ex", "fasc", "fig", "fr", "fém", "hab", "i.e", "ibid", "id", "inf", "l.d", "lib", "ll.aa", "ll.aa.ii", "ll.aa.rr", "ll.aa.ss", "ll.ee", "ll.mm", "ll.mm.ii.rr", "loc.cit", "ltd", "masc", "mm", "ms", "n.b", "n.d", "n.d.a", "n.d.l.r", "n.d.t", "n.p.a.i", "n.s", "n/réf", "nn.ss", "p.c.c", "p.ex", "p.j", "p.s", "pl", "pp", "r.-v", "r.a.s", "r.i.p", "r.p", "s.a", "s.a.i", "s.a.r", "s.a.s", "s.e", "s.m", "s.m.i.r", "s.s", "sec", "sect", "sing", "sq", "sqq", "ss", "suiv", "sup", "suppl", "t.s.v.p", "tél", "vb", "vol", "vs", "x.o", "z.i", "éd"]).freeze
      STOP_WORDS = Set.new(["a", "à", "â", "abord", "afin", "ah", "ai", "aie", "ainsi", "allaient", "allo", "allô", "allons", "après", "assez", "attendu", "au", "aucun", "aucune", "aujourd", "aujourd'hui", "auquel", "aura", "auront", "aussi", "autre", "autres", "aux", "auxquelles", "auxquels", "avaient", "avais", "avait", "avant", "avec", "avoir", "ayant", "b", "bah", "beaucoup", "bien", "bigre", "boum", "bravo", "brrr", "c", "ça", "car", "ce", "ceci", "cela", "celle", "celle-ci", "celle-là", "celles", "celles-ci", "celles-là", "celui", "celui-ci", "celui-là", "cent", "cependant", "certain", "certaine", "certaines", "certains", "certes", "ces", "cet", "cette", "ceux", "ceux-ci", "ceux-là", "chacun", "chaque", "cher", "chère", "chères", "chers", "chez", "chiche", "chut", "ci", "cinq", "cinquantaine", "cinquante", "cinquantième", "cinquième", "clac", "clic", "combien", "comme", "comment", "compris", "concernant", "contre", "couic", "crac", "d", "da", "dans", "de", "debout", "dedans", "dehors", "delà", "depuis", "derrière", "des", "dès", "désormais", "desquelles", "desquels", "dessous", "dessus", "deux", "deuxième", "deuxièmement", "devant", "devers", "devra", "différent", "différente", "différentes", "différents", "dire", "divers", "diverse", "diverses", "dix", "dix-huit", "dixième", "dix-neuf", "dix-sept", "doit", "doivent", "donc", "dont", "douze", "douzième", "dring", "du", "duquel", "durant", "e", "effet", "eh", "elle", "elle-même", "elles", "elles-mêmes", "en", "encore", "entre", "envers", "environ", "es", "ès", "est", "et", "etant", "étaient", "étais", "était", "étant", "etc", "été", "etre", "être", "eu", "euh", "eux", "eux-mêmes", "excepté", "f", "façon", "fais", "faisaient", "faisant", "fait", "feront", "fi", "flac", "floc", "font", "g", "gens", "h", "ha", "hé", "hein", "hélas", "hem", "hep", "hi", "ho", "holà", "hop", "hormis", "hors", "hou", "houp", "hue", "hui", "huit", "huitième", "hum", "hurrah", "i", "il", "ils", "importe", "j", "je", "jusqu", "jusque", "k", "l", "la", "là", "laquelle", "las", "le", "lequel", "les", "lès", "lesquelles", "lesquels", "leur", "leurs", "longtemps", "lorsque", "lui", "lui-même", "m", "ma", "maint", "mais", "malgré", "me", "même", "mêmes", "merci", "mes", "mien", "mienne", "miennes", "miens", "mille", "mince", "moi", "moi-même", "moins", "mon", "moyennant", "n", "na", "ne", "néanmoins", "neuf", "neuvième", "ni", "nombreuses", "nombreux", "non", "nos", "notre", "nôtre", "nôtres", "nous", "nous-mêmes", "nul", "o", "o|", "ô", "oh", "ohé", "olé", "ollé", "on", "ont", "onze", "onzième", "ore", "ou", "où", "ouf", "ouias", "oust", "ouste", "outre", "p", "paf", "pan", "par", "parmi", "partant", "particulier", "particulière", "particulièrement", "pas", "passé", "pendant", "personne", "peu", "peut", "peuvent", "peux", "pff", "pfft", "pfut", "pif", "plein", "plouf", "plus", "plusieurs", "plutôt", "pouah", "pour", "pourquoi", "premier", "première", "premièrement", "près", "proche", "psitt", "puisque", "q", "qu", "quand", "quant", "quanta", "quant-à-soi", "quarante", "quatorze", "quatre", "quatre-vingt", "quatrième", "quatrièmement", "que", "quel", "quelconque", "quelle", "quelles", "quelque", "quelques", "quelqu'un", "quels", "qui", "quiconque", "quinze", "quoi", "quoique", "r", "revoici", "revoilà", "rien", "s", "sa", "sacrebleu", "sans", "sapristi", "sauf", "se", "seize", "selon", "sept", "septième", "sera", "seront", "ses", "si", "sien", "sienne", "siennes", "siens", "sinon", "six", "sixième", "soi", "soi-même", "soit", "soixante", "son", "sont", "sous", "stop", "suis", "suivant", "sur", "surtout", "t", "ta", "tac", "tant", "te", "té", "tel", "telle", "tellement", "telles", "tels", "tenant", "tes", "tic", "tien", "tienne", "tiennes", "tiens", "toc", "toi", "toi-même", "ton", "touchant", "toujours", "tous", "tout", "toute", "toutes", "treize", "trente", "très", "trois", "troisième", "troisièmement", "trop", "tsoin", "tsouin", "tu", "u", "un", "une", "unes", "uns", "v", "va", "vais", "vas", "vé", "vers", "via", "vif", "vifs", "vingt", "vivat", "vive", "vives", "vlan", "voici", "voilà", "vont", "vos", "votre", "vôtre", "vôtres", "vous", "vous-mêmes", "vu", "w", "x", "y", "z", "zut", "alors", "aucuns", "bon", "devrait", "dos", "droite", "début", "essai", "faites", "fois", "force", "haut", "ici", "juste", "maintenant", "mine", "mot", "nommés", "nouveaux", "parce", "parole", "personnes", "pièce", "plupart", "seulement", "soyez", "sujet", "tandis", "valeur", "voie", "voient", "état", "étions", "d'un", "d'une"]).freeze
      CONTRACTIONS = {}.freeze

      class SingleQuotes

        REGEXP_UNKNOWN1 = /(\w|\D)'(?!')(?=\W|$)/o
        REGEXP_UNKNOWN2 = /(\W|^)'(?=.*\w)/o

        def handle_single_quotes(text)
          replacement = PragmaticTokenizer::Languages::Common::PUNCTUATION_MAP["'".freeze]
          text.gsub!(REGEXP_UNKNOWN1, "\\1 #{replacement} ")
          text.gsub!(REGEXP_UNKNOWN2, ' ' << replacement)
          text.gsub!(/l\'/, '\1 l☮ \2')
          text.gsub!(/L\'/, '\1 L☮ \2')
          text.gsub!(/d\'/, '\1 l☮ \2')
          text.gsub!(/D\'/, '\1 L☮ \2')
          text.gsub!(/s\'/, '\1 l☮ \2')
          text.gsub!(/S\'/, '\1 L☮ \2')
          text.gsub!(/m\'/, '\1 l☮ \2')
          text.gsub!(/M\'/, '\1 L☮ \2')
          text.gsub!(/t\'/, '\1 l☮ \2')
          text.gsub!(/T\'/, '\1 L☮ \2')
          text
        end
      end
    end
  end
end
