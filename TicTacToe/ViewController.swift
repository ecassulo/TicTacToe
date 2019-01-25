//
//  ViewController.swift
//  TicTacToe
//
//  Created by Charles Xie on 1/18/19.
//  Copyright © 2019 Charles Xie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    @IBOutlet var allButtons: [UIButton]!
    //outlet collection for all buttons
    
    @IBOutlet weak var youWinLabel: UILabel!
    //the label to display if someone has won.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var game = TicTacToe()
    // instantialize the model
    
    @IBAction func restartButton(_ sender: Any) {
        for restart in allButtons {
            restart.setImage(nil, for: UIControl.State())
            game.playerTurn = .X
            
            //make the images in all buttons nil, so we have an empty slate.
            game.boolean = false
            //this sets the game to the original state.
        }
        game.tileArray = game.newTileArray
        //tileArray should be changed to the initial state.
        youWinLabel.text = ""
    }
    @IBOutlet weak var restartOutlet: UIButton!
    //the outlet for the restart button
    
   
    @IBAction func boardButton(_ sender: UIButton) {
        if game.tileArray[sender.tag/3][sender.tag%3] == TileState.blank {
           //only if the button is blank can we click on them.
            
            game.tileArray[sender.tag/3][sender.tag%3] = game.playerTurn
            // the system now knows that 
            
            if game.playerTurn == .X {
                sender.setImage(UIImage(named: "cross"), for: UIControl.State())
                game.playerTurn = .O
                //player turn should be changed from X to O
            }
            else if game.playerTurn == .O {
                sender.setImage(UIImage(named: "circle"), for: UIControl.State())
                game.playerTurn = .X
                // player turn should be changed from O to X
            }
            game.isFinished ()
        
            if game.boolean == true {
            youWinLabel.text = "You Win"
          game.playerTurn = .blank
                //once someone wins, the label will display "you win" and butons will be disabled for further pressing.
                
            }
            }
    }
        
}



