//
//  fromPianoToSax.swift
//  Auto transposer (saxo-piano)
//
//  Created by Ghaly Sekkat on 04/03/2022.
//

import Foundation

func fromPianoToSax(pianoNotes: String) -> String {
     var startNotes = pianoNotes
     var result: [String] = []
     startNotes = startNotes.replacingOccurrences(of: ",", with: "")
    
     //Transform the string into an Array where we delete all the commas, points, etc...
     if startNotes.last! == " "{
         startNotes.removeLast()
     }
     var notesList = startNotes.lowercased().components(separatedBy: " ")
     notesList = notesList.filter{$0 != "."}
     
    
     //Switch loop to convert
     for note in notesList {
         switch note {
             case "do", "c":
                 result.append("ré#")

             case "do#", "c#", "reb", "réb", "db":
                 result.append("mi")
                 
             case "ré", "re", "d":
                 result.append("fa")
             
             case "ré#", "re#", "d#", "mib", "eb":
                 result.append("do")

             case "mi", "e":
                 result.append("sol")
             
             case "fa", "f":
                 result.append("sol#")
             
             case "fa#", "f#", "solb", "gb":
                 result.append("la")
             
             case "sol", "g":
                 result.append("la#")
             
             case "sol#", "g#", "lab", "ab":
                 result.append("si")
             
             case "la", "a":
                 result.append("fa#")
             
             case "la#", "a#", "sib", "bb":
                 result.append("do#")
             
             case "si", "b":
                 result.append("ré")

             default:
                result.append("error")
         }
     }
     
     let finalResult = result.joined(separator:" ")
     
     return finalResult
}
