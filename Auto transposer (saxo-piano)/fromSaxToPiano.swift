//
//  fromSaxToPiano.swift
//  Auto transposer (saxo-piano)
//
//  Created by Ghaly Sekkat on 04/03/2022.
//

import Foundation

func fromSaxToPiano(saxoNotes: String) -> String {
    var startNotes = saxoNotes
    var result: [String] = []
    startNotes = startNotes.replacingOccurrences(of: ",", with: "")
   
    //Transform the string into an Array where we delete all the commas, points, etc...
   
    var notesList = startNotes.lowercased().components(separatedBy: " ")
    notesList = notesList.filter{$0 != "'"}
    
   
    //Switch loop to convert
    for note in notesList {
        switch note {
            case "re#", "ré#", "d#", "mib", "eb":
                result.append("do") 

            case "mi":
                result.append("do#")
                
            case "fa", "f":
                result.append("ré")
            
            case "do", "c":
                result.append("ré#")

            case "sol", "g":
                result.append("mi")
            
            case "sol#", "g#":
                result.append("fa")
            
            case "la", "a":
                result.append("fa#")
            
            case "la#", "a#", "bb", "sib":
                result.append("sol")
            
            case "si", "b":
                result.append("sol#")
            
            case "fa#", "solb", "f#", "gb":
                result.append("la")
            
            case "do#", "c#", "réb", "reb", "db":
                result.append("la#")
            
            case "ré", "d":
                result.append("si")

            default:
               result.append("error")
        }
    }
    
    let finalResult = result.joined(separator:" ")
    
    return finalResult
}
