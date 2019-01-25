//
//  File.swift
//  TicTacToe
//
//  Created by Charles Xie on 1/18/19.
//  Copyright © 2019 Charles Xie. All rights reserved.
//

import Foundation

enum TileState {
    case X
    case O
    case blank
    //enumeration that tracks all the different options, X, O, or Blank
}

struct TicTacToe {
    let newTileArray: [[TileState]] = [[.blank, .blank, .blank],
                                       [.blank, .blank, .blank],
                                       [.blank, .blank, .blank]]
    //this is the initial state of the Array, should not be changed
    
    var tileArray : [[TileState]] = [[.blank, .blank, .blank],
                                     [.blank, .blank, .blank],
                                     [.blank, .blank, .blank]]
    // this should be a variable, which can be changed as people click on the buttons
var boolean = false
    //when boolean is false, the system will know that no one has won yet.
var playerTurn = TileState.X
    //the first person to go will be assigned "X"

    //this is all the possible combinations for winners.
    mutating func isFinished()  {
    
    if ((tileArray[0][0] == tileArray[0][1] && tileArray[0][1] == tileArray[0][2] &&  tileArray[0][0] != TileState.blank)) || ((tileArray[1][0] == tileArray[1][1] && tileArray[1][1] == tileArray[1][2] &&  tileArray[1][0] != TileState.blank)) || ((tileArray[2][0] == tileArray[2][1] && tileArray[2][1] == tileArray[2][2] &&  tileArray[2][0] != TileState.blank)) || ((tileArray[0][0] == tileArray[0][1] && tileArray[0][1] == tileArray[0][2] &&  tileArray[0][0] != TileState.blank)) || ((tileArray[1][0] == tileArray[1][1] && tileArray[1][1] == tileArray[1][2] &&  tileArray[1][0] != TileState.blank))||((tileArray[2][0] == tileArray[2][1] && tileArray[2][1] == tileArray[2][2] &&  tileArray[2][0] != TileState.blank)) || ((tileArray[0][0] == tileArray[1][1] && tileArray[1][1] == tileArray[2][2] &&  tileArray[0][0] != TileState.blank)) || ((tileArray[2][0] == tileArray[1][1] && tileArray[1][1] == tileArray[0][2] &&  tileArray[2][0] != TileState.blank)) {
        boolean = true
        }
        
    
    }
}
