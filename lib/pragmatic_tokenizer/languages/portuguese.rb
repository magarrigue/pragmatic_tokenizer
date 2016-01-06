module PragmaticTokenizer
  module Languages
    module Portuguese
      include Languages::Common
      ABBREVIATIONS = []
      STOP_WORDS = ["acerca", "agora", "algmas", "alguns", "ali", "ambos", "antes", "apontar", "aquela", "aquelas", "aquele", "aqueles", "aqui", "atrás", "bem", "bom", "cada", "caminho", "cima", "com", "como", "comprido", "conhecido", "corrente", "das", "debaixo", "dentro", "desde", "desligado", "deve", "devem", "deverá", "direita", "diz", "dizer", "dois", "dos", "e", "é", "ela", "ele", "eles", "em", "enquanto", "então", "está", "estado", "estão", "estar", "estará", "este", "estes", "esteve", "estive", "estivemos", "estiveram", "eu", "fará", "faz", "fazer", "fazia", "fez", "fim", "foi", "fora", "horas", "iniciar", "inicio", "ir", "irá", "ista", "iste", "isto", "ligado", "maioria", "maiorias", "mais", "mas", "mesmo", "meu", "muito", "muitos", "não", "nome", "nós", "nosso", "novo", "o", "onde", "os", "ou", "outro", "para", "parte", "pegar", "pelo", "pessoas", "pode", "poderá", "podia", "por", "porque", "povo", "promeiro", "qual", "qualquer", "quando", "quê", "quem", "quieto", "saber", "são", "sem", "ser", "seu", "somente", "tal", "também", "tem", "têm", "tempo", "tenho", "tentar", "tentaram", "tente", "tentei", "teu", "teve", "tipo", "tive", "todos", "trabalhar", "trabalho", "tu", "último", "um", "uma", "umas", "uns", "usa", "usar", "valor", "veja", "ver", "verdade", "verdadeiro", "você", "a", "à", "adeus", "aí", "ainda", "além", "algo", "algumas", "ano", "anos", "ao", "aos", "apenas", "apoio", "após", "aquilo", "área", "as", "às", "assim", "até", "através", "baixo", "bastante", "boa", "boas", "bons", "breve", "cá", "catorze", "cedo", "cento", "certamente", "certeza", "cinco", "coisa", "conselho", "contra", "custa", "da", "dá", "dão", "daquela", "daquelas", "daquele", "daqueles", "dar", "de", "demais", "depois", "dessa", "dessas", "desse", "desses", "desta", "destas", "deste", "destes", "dez", "dezanove", "dezasseis", "dezassete", "dezoito", "dia", "diante", "dizem", "do", "doze", "duas", "dúvida", "elas", "embora", "entre", "era", "és", "essa", "essas", "esse", "esses", "esta", "estas", "estás", "estava", "estiveste", "estivestes", "estou", "exemplo", "faço", "falta", "favor", "fazeis", "fazem", "fazemos", "fazes", "final", "fomos", "for", "foram", "forma", "foste", "fostes", "fui", "geral", "grande", "grandes", "grupo", "há", "hoje", "hora", "isso", "já", "lá", "lado", "local", "logo", "longe", "lugar", "maior", "mal", "máximo", "me", "meio", "menor", "menos", "mês", "meses", "meus", "mil", "minha", "minhas", "momento", "na", "nada", "naquela", "naquelas", "naquele", "naqueles", "nas", "nem", "nenhuma", "nessa", "nessas", "nesse", "nesses", "nesta", "nestas", "neste", "nestes", "nível", "no", "noite", "nos", "nossa", "nossas", "nossos", "nova", "novas", "nove", "novos", "num", "numa", "número", "nunca", "obra", "obrigada", "obrigado", "oitava", "oitavo", "oito", "ontem", "onze", "outra", "outras", "outros", "parece", "partir", "paucas", "pela", "pelas", "pelos", "perto", "pôde", "podem", "poder", "põe", "põem", "ponto", "pontos", "porquê", "posição", "possível", "possivelmente", "posso", "pouca", "pouco", "poucos", "primeira", "primeiras", "primeiro", "primeiros", "própria", "próprias", "próprio", "próprios", "próxima", "próximas", "próximo", "próximos", "puderam", "quáis", "quanto", "quarta", "quarto", "quatro", "que", "quer", "quereis", "querem", "queremas", "queres", "quero", "questão", "quinta", "quinto", "quinze", "relação", "sabe", "sabem", "se", "segunda", "segundo", "sei", "seis", "sempre", "seria", "sete", "sétima", "sétimo", "seus", "sexta", "sexto", "sim", "sistema", "sob", "sobre", "sois", "somos", "sou", "sua", "suas", "talvez", "tanta", "tantas", "tanto", "tão", "tarde", "te", "temos", "tendes", "tens", "ter", "terceira", "terceiro", "teus", "tivemos", "tiveram", "tiveste", "tivestes", "toda", "todas", "todo", "três", "treze", "tua", "tuas", "tudo", "vai", "vais", "vão", "vários", "vem", "vêm", "vens", "vez", "vezes", "viagem", "vindo", "vinte", "vocês", "vos", "vós", "vossa", "vossas", "vosso", "vossos", "zero", "and"]
    end
  end
end