legend = {}
legend['CC'] = "conjunction of coordinating"
legend['CD'] = "digit of cardinal"
legend['DT'] = "determiner"
legend['EX'] = "existential"
legend['FW'] = "foreign word"
legend['IN'] = "preposition/conjunction"
legend['JJ'] = "adjective"
legend['JJR'] = "adjective"
legend['JJS'] = "adjective"
legend['LS'] = "list marker"
legend['MD'] = "modal"
legend['NN'] = "noun"
legend['NNP'] = "proper noun"
legend['NNPS'] = "proper plural noun"
legend['NNS'] = "plural noun"
legend['PDT'] = "predeterminer"
legend['WRB'] = "adverb"
legend['WP$'] = "possessive"
legend['WP'] = "pronoun"
legend['WDT'] = "determiner"
legend['VBZ'] = "verb"
legend['VBP'] = "verb"
legend['VBN'] = "verb"
legend['VBG'] = "verb"
legend['VBD'] = "verb"
legend['VB'] = "verb"
legend['UH'] = "interjection"
legend['TO'] = "to go"
legend['RP'] = "particle"
legend['RB'] = "adverb"
legend['RBS'] = "adverb"
legend['RBR'] = "adverb"
legend['PRP'] = "pronoun"
legend['PRP$'] = "pronoun"


try:
    from nltk import pos_tag
    from re import sub

    lang = None
    with open("en_us.txt", "r", encoding="utf8") as f:
        lang = f.read()
    lang = lang.lower()

    lang = sub("\n"," ",lang)
    lang = sub("[^A-Za-z ]"," ",lang)
    lang = sub(" [A-Za-z]{,2} "," ",lang)
    lang = sub(" {2,}"," ",lang)
    lang = list(set(lang.split(" ")))

    print(lang)
    # lang = sub("%.|\$.","",lang)
    # lang = sub("[!?,.:;+\"()[\]\\\/|@]","",lang)
    # lang = sub("''","",lang)
    # lang = sub(" '|' "," ",lang)
    # lang = sub(" - "," ",lang)

    words = {}
    tags = []
    for word in lang :
        tag = pos_tag([word])[0][1]
        if tag not in tags : tags.append(tag); words[tag] = []
        words[tag].append(word)

    for tag in tags :
        print(f"  Tag: {tag} \tCount: {len(words[tag])}\tEx ({legend[tag].title()}):\t{words[tag][:5]}")

    input()

except Exception as e:
    input(e)


# it, an, of, if, or, my, on, as, no, in, ok, at, up, we, me, by, oh, us, hi
# went with http://ucrel-api.lancaster.ac.uk/claws/free.html (godbless https://www.clarin.eu/resource-families/tools-part-speech-tagging-and-lemmatisation) 