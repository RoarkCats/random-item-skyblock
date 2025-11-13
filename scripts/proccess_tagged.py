legend = {}
legend['AJ0'] =	'adjective (unmarked) (e.g. GOOD, OLD)'
legend['AJC'] =	'comparative adjective (e.g. BETTER, OLDER)'
legend['AJS'] =	'superlative adjective (e.g. BEST, OLDEST)'
legend['AT0'] =	'article (e.g. THE, A, AN)'
legend['AV0'] =	'adverb (unmarked) (e.g. OFTEN, WELL, LONGER, FURTHEST)'
legend['AVP'] =	'adverb particle (e.g. UP, OFF, OUT)'
legend['AVQ'] =	'wh-adverb (e.g. WHEN, HOW, WHY)'
legend['CJC'] =	'coordinating conjunction (e.g. AND, OR)'
legend['CJS'] =	'subordinating conjunction (e.g. ALTHOUGH, WHEN)'
legend['CJT'] =	'the conjunction THAT'
legend['CRD'] =	'cardinal numeral (e.g. 3, FIFTY-FIVE, 6609) (excl ONE)'
legend['DPS'] =	'possessive determiner form (e.g. YOUR, THEIR)'
legend['DT0'] =	'general determiner (e.g. THESE, SOME)'
legend['DTQ'] =	'wh-determiner (e.g. WHOSE, WHICH)'
legend['EX0'] =	'existential THERE'
legend['ITJ'] =	'interjection or other isolate (e.g. OH, YES, MHM)'
legend['NN0'] =	'noun (neutral for number) (e.g. AIRCRAFT, DATA)'
legend['NN1'] =	'singular noun (e.g. PENCIL, GOOSE)'
legend['NN2'] =	'plural noun (e.g. PENCILS, GEESE)'
legend['NP0'] =	'proper noun (e.g. LONDON, MICHAEL, MARS)'
legend['NUL'] = 'the null tag (for items not to be tagged)'
legend['ORD'] =	'ordinal (e.g. SIXTH, 77TH, LAST)'
legend['PNI'] =	'indefinite pronoun (e.g. NONE, EVERYTHING)'
legend['PNP'] =	'personal pronoun (e.g. YOU, THEM, OURS)'
legend['PNQ'] =	'wh-pronoun (e.g. WHO, WHOEVER)'
legend['PNX'] =	'reflexive pronoun (e.g. ITSELF, OURSELVES)'
legend['POS'] =	'the possessive (or genitive morpheme) \'S or \''
legend['PRF'] =	'the preposition OF'
legend['PRP'] =	'preposition (except for OF) (e.g. FOR, ABOVE, TO)'
legend['PUL'] =	'punctuation - left bracket (i.e. ( or [ )'
legend['PUN'] =	'punctuation - general mark (i.e. . ! , : ; - ? ... )'
legend['PUQ'] =	'punctuation - quotation mark (i.e. ` \' " )'
legend['PUR'] =	'punctuation - right bracket (i.e. ) or ] )'
legend['TO0'] =	'infinitive marker TO'
legend['UNC'] =	'"unclassified" items which are not words of the English lexicon'
legend['VBB'] =	'the "base forms" of the verb "BE" (except the infinitive), i.e. AM, ARE'
legend['VBD'] =	'past form of the verb "BE", i.e. WAS, WERE'
legend['VBG'] =	'-ing form of the verb "BE", i.e. BEING'
legend['VBI'] =	'infinitive of the verb "BE"'
legend['VBN'] =	'past participle of the verb "BE", i.e. BEEN'
legend['VBZ'] =	'-s form of the verb "BE", i.e. IS, \'S'
legend['VDB'] =	'base form of the verb "DO" (except the infinitive), i.e.'
legend['VDD'] =	'past form of the verb "DO", i.e. DID'
legend['VDG'] =	'-ing form of the verb "DO", i.e. DOING'
legend['VDI'] =	'infinitive of the verb "DO"'
legend['VDN'] =	'past participle of the verb "DO", i.e. DONE'
legend['VDZ'] =	'-s form of the verb "DO", i.e. DOES'
legend['VHB'] =	'base form of the verb "HAVE" (except the infinitive), i.e. HAVE'
legend['VHD'] =	'past tense form of the verb "HAVE", i.e. HAD, \'D'
legend['VHG'] =	'-ing form of the verb "HAVE", i.e. HAVING'
legend['VHI'] =	'infinitive of the verb "HAVE"'
legend['VHN'] =	'past participle of the verb "HAVE", i.e. HAD'
legend['VHZ'] =	'-s form of the verb "HAVE", i.e. HAS, \'S'
legend['VM0'] =	'modal auxiliary verb (e.g. CAN, COULD, WILL, \'LL)'
legend['VVB'] =	'base form of lexical verb (except the infinitive)(e.g. TAKE, LIVE)'
legend['VVD'] =	'past tense form of lexical verb (e.g. TOOK, LIVED)'
legend['VVG'] =	'-ing form of lexical verb (e.g. TAKING, LIVING)'
legend['VVI'] =	'infinitive of lexical verb'
legend['VVN'] =	'past participle form of lex. verb (e.g. TAKEN, LIVED)'
legend['VVZ'] =	'-s form of lexical verb (e.g. TAKES, LIVES)'
legend['XX0'] =	'the negative NOT or N\'T'
legend['ZZ0'] =	'alphabetical symbol (e.g. A, B, c, d)'


try:
    from re import sub

    lang = None
    with open("en_us_tagged.txt", "r", encoding="utf8") as f:
        lang = f.read()

    lang = sub("\n","",lang)
    lang = lang.split(" ")

    words = {}
    tags = []
    for word in lang :
        word,tag = word.split("_")
        if tag not in tags : tags.append(tag); words[tag] = []
        words[tag].append(word)

    for tag in tags :
        print(f"  Tag: {tag} \tCount: {len(words[tag])}\tEx ({legend[tag].split('e.')[0]}):\t{words[tag][:5]}")


    input(" Generate? ")
    input(" WARNING: I have modified the word files manually for 1.21.4; look for the line gap at the end of the files")
    ####################
    from os import mkdir,path

    def export(name,tags) :
        list = []
        for tag in tags :
            list += words[tag]

        with open(f"words/{name}.mcfunction","w") as f :
            f.write(f"execute store result score word ris.rng run random value 0..{len(list)-1}\n\n")

            for i,word in enumerate(list) :
                f.write(f"execute if score word ris.rng matches {i} run return run data modify storage ris:generator words append value \"{word.title()}\"\n")
        ##-----##

    if not path.isdir("words"): mkdir("words")
    export("noun",["NN1","NN2","NN0","PNI","DTQ"])
    export("adjective",["AJ0","AJC","AJS"])
    export("adverb",["AV0"])
    export("verb0",["VVB","VVI"])
    export("verb1",["VVZ"])
    export("verb2",["VVD","VVN"])
    export("verb3",["VVG"])
    export("preposition",["PRP"])

    input("Done!")


except Exception as e:
    input(e)


# it, an, of, if, or, my, on, as, no, in, ok, at, up, we, me, by, oh, us, hi
