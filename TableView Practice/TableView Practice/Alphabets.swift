//
//  Alphabets.swift
//  TableView Practice
//
//  Created by Edmund Holderbaum on 2/27/17.
//  Copyright © 2017 Dawn Trigger Entertainment. All rights reserved.
//

import Foundation

enum Alphabets: Int, CustomStringConvertible{
    case latin, greek, cyrillic, armenian, georgian, korean
    
    var letters: [String]{
        switch self {
        case .latin:
            return ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
        case .greek:
            return ["A","B","Γ","Δ","E","Z","H","Θ","Ι","K","Λ","M","N","Ξ","O","Π","Ρ","Σ","T","Y","Φ","X","Ψ","Ω"]
        case .cyrillic:
            return ["A","Б","Г","Д","B","E","Ж","З","И","Й","I","J","K","Л","M","H","Њ","O","П","P","C","T","У","Ф","X","Ц","Ч","Ш","Щ","Ъ","Ы","Ь","Э","Ю","Я"]
        case .armenian:
            return ["ա","բ","գ","դ","ե","զ","է","ը","թ","ժ","ի","լ","խ","ծ","կ","հ","ձ","ղ","ճ","մ","յ","ն","շ","ո","չ",
                    "պ","ռ","ս","վ","տ","ր","ց","ւ","փ","ք","օ","ֆ","ու","եւ","ջ"]
        case .georgian:
            return ["ა","ბ","გ","დ","ე","ვ","ზ","თ","ი","კ","ლ","მ","ნ","ო","პ","ჟ","რ","ს","ტ","უ","ფ","ქ","ღ","ყ",
                    "შ","ჩ","ც","ძ","წ","ჭ","ხ","ჯ","ჰ"]
        case .korean:
            return ["ㄱ","ㄴ", "ㄷ", "ㄹ", "ㅁ", "ㅂ", "ㅅ", "ㅇ", "ㅈ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ","ㅏ", "ㅓ", "ㅗ", "ㅜ" , "ㅡ", "ㅣ","ㅑ","ㅕ", "ㅛ", "ㅠ"]
        }
    }
    
    var description: String{
        switch self {
        case .latin:
            return "Latin"
        case .cyrillic:
            return "Cyrillic"
        case .greek:
            return "Greek"
        case .armenian:
            return "Armenian"
        case .georgian:
            return "Georgian"
        case .korean:
            return "Hangul"
        }
    }
    
    var info: String{
        switch self {
        case .latin:
            return "The Latin alphabet dates back to the first century BC, where it originated in Rome as a descendent of the ancient Phonecian and Greek alphabets. Leading up to the 1800s CE, English grammarians removed the original letters that had been added to their version of the script over time, excepting the letters U and W. This variant became accepted by the ISO as the Basic Latin Alphabet. It is used by over 70% of the world's population due to european colonization."
        case .cyrillic:
            return "The Cyrillic alphabet was developed in Bulgaria in the 800s CE, strongly influenced by the Greek alphabet. It was adopted by Russian speakers during that time and use spread east across Asia with Russia.\nThe alphabet was even more widely adopted following the formation of the Soviet Union. Curently about 252 million people worldwide use this alphabet, including numerous non-slavic languages."
        case .greek:
            return "The modern Greek alphabet descended from a common ancestor with the Roman alphabet, which also influenced the development of Cyrillic. The curttent version of the Greek Alphabet was formalized in the early 8th century CE, but originated about a thousand years earlier. Only a few non-Greek languages use this alphabet besides the approximately 13 million Greek speakers worldwide."
        case .armenian:
            return "The Armenian script was developed around 460 CE and its current form dates to the middle ages.\n There are between 8-12 million speakers of Armenian currently."
        case .georgian:
            return "The modern Georgian alphabet, called 'Mkhedruli', was introduced in the late 900s CE and became the lettering of choice for civic and business affairs. Two other scripts, 'Asomtavruli' and 'Nuskhuri' were also in use at the time but slowly were replaced by Mkhedruli. It is most commonly used in the 'Kartvelian' language family and usage outside this language group was supplanted by Cyrillic in the 19th and 20th century CE."
        case .korean:
            return "The alphabet of the Korean language, called Hangul, originated in the 1400s CE as part of an effort to promote literacy among the pesantry.It supplanted Chinese characters and several other local phonetic script. The small size of Hangul characters is suited to Korean's unique orthography, where letters are positioned in a layered block of up to five characters causing a resemblance to a chinese pictograph. Despite this resemblance, the individual Hangul components comprise a true Alphabet."
        }
    }
    
    
    static let allAlpha: [Alphabets] = [.latin, .cyrillic, .greek,.georgian,.armenian,.korean]
}
