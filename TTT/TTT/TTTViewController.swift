//
//  ViewController.swift
//  TTT
//
//  Created by Gordon, Brandon Thomas on 10/2/17.
//  Copyright © 2017 Gordon, Brandon Thomas. All rights reserved.
//

import UIKit

import AVFoundation

class TTTViewController: UIViewController, UIAlertViewDelegate {

    //Outlets****************************************************
    //Image View Outlets
    @IBOutlet weak var s1: UIImageView!
    @IBOutlet weak var s2: UIImageView!
    @IBOutlet weak var s3: UIImageView!
    @IBOutlet weak var s4: UIImageView!
    @IBOutlet weak var s5: UIImageView!
    @IBOutlet weak var s6: UIImageView!
    @IBOutlet weak var s7: UIImageView!
    @IBOutlet weak var s8: UIImageView!
    @IBOutlet weak var s9: UIImageView!
    
    //Label Outlets
    @IBOutlet weak var whoseTurn: UILabel!
    
    //Button Outlets
    @IBOutlet weak var gameSettingsButton: UIButton!
    //***********************************************************
    
    var mBoard = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    var mBoardArray: [UIImageView] = []
    let BOARD_SIZE = 9
    
    let HUMAN_PLAYER = "X"
    let COMPUTER_PLAYER = "O"
 
    var turn = "X"
    var win = 0
    var move = -1
    
    var swordSoundEffect: AVAudioPlayer?
    var swishSoundEffect: AVAudioPlayer?
    
    //Score variables in GlobalVariables
    
    //Changing Difficulty
    enum mDifficulty {
        case Easy
        case Medium
        case Expert
    }
    //Initialize as Easy
    var mDifficultyLevel = mDifficulty.Easy
    
    
    func playXSound()
    {
        let path = Bundle.main.path(forResource: "sword.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            swordSoundEffect = try AVAudioPlayer(contentsOf: url)
            swordSoundEffect?.play()
        } catch {
            // couldn't load file :(
        }
    }
    
    func playOSound()
    {
        let path = Bundle.main.path(forResource: "swish.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            swishSoundEffect = try AVAudioPlayer(contentsOf: url)
            swishSoundEffect?.play()
        } catch {
            // couldn't load file :(
        }
    }
    
    func img1Clicked(){
        
        //Disable Game Settings button (after game has begun)
        gameSettingsButton.isEnabled = false
        
        if(s1.image == nil)
        {
        
        if (win == 0){
        
            if(turn == HUMAN_PLAYER){
                s1.image = #imageLiteral(resourceName: "x_img.png")
                mBoard[0] = "X"
                
                playXSound()
                
                turn = COMPUTER_PLAYER
                whoseTurn.text = "O's Turn"
                displayBoard()
                win = checkForWinner()
                print("Win = ", String(win))
                if(win == 0)
                {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
  
                    self.getComputerMove()
                    self.win = self.checkForWinner()
                    self.displayBoard()
                    print("Win = ", String(self.win))
                    self.winStatus()
                    }
                }
                winStatus()
                
            }
        
        }
        }
        
    }
    
    func img2Clicked(){
        
        //Disable Game Settings button (after game has begun)
        gameSettingsButton.isEnabled = false
        
        if(s2.image == nil)
        {
        
        if (win == 0){
            
            if(turn == HUMAN_PLAYER){
                s2.image = #imageLiteral(resourceName: "x_img.png")
                mBoard[1] = "X"
                
                playXSound()
                
                turn = COMPUTER_PLAYER
                whoseTurn.text = "O's Turn"
                displayBoard()
                win = checkForWinner()
                print("Win = ", String(win))
                if(win == 0)
                {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        
                        self.getComputerMove()
                        self.win = self.checkForWinner()
                        self.displayBoard()
                        print("Win = ", String(self.win))
                        self.winStatus()
                    }
                }
                winStatus()
            }
            
        }
        }
        
    }
    func img3Clicked(){
        
        //Disable Game Settings button (after game has begun)
        gameSettingsButton.isEnabled = false
        
        if(s3.image == nil)
        {
        
        if (win == 0){
            
            if(turn == HUMAN_PLAYER){
                s3.image = #imageLiteral(resourceName: "x_img.png")
                mBoard[2] = "X"
                
                playXSound()
                
                turn = COMPUTER_PLAYER
                whoseTurn.text = "O's Turn"
                displayBoard()
                win = checkForWinner()
                print("Win = ", String(win))
                if(win == 0)
                {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        
                        self.getComputerMove()
                        self.win = self.checkForWinner()
                        self.displayBoard()
                        print("Win = ", String(self.win))
                        self.winStatus()
                    }
                }
                winStatus()
            }
            
        }
        }
        
    }
    
    func img4Clicked(){
        
        //Disable Game Settings button (after game has begun)
        gameSettingsButton.isEnabled = false
        
        if(s4.image == nil)
        
        {
        
        if (win == 0){
            
            if(turn == HUMAN_PLAYER){
                s4.image = #imageLiteral(resourceName: "x_img.png")
                mBoard[3] = "X"
                
                playXSound()
                
                turn = COMPUTER_PLAYER
                whoseTurn.text = "O's Turn"
                displayBoard()
                win = checkForWinner()
                print("Win = ", String(win))
                if(win == 0)
                {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        
                        self.getComputerMove()
                        self.win = self.checkForWinner()
                        self.displayBoard()
                        print("Win = ", String(self.win))
                        self.winStatus()
                    }
                }
                winStatus()
            }
            
        }
        }
        
    }

    func img5Clicked(){
        
        //Disable Game Settings button (after game has begun)
        gameSettingsButton.isEnabled = false
        
        if(s5.image == nil)
        {
        
        if (win == 0){
            
            if(turn == HUMAN_PLAYER){
                s5.image = #imageLiteral(resourceName: "x_img.png")
                mBoard[4] = "X"
                
                playXSound()
                
                turn = COMPUTER_PLAYER
                whoseTurn.text = "O's Turn"
                displayBoard()
                win = checkForWinner()
                print("Win = ", String(win))
                if(win == 0)
                {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        
                        self.getComputerMove()
                        self.win = self.checkForWinner()
                        self.displayBoard()
                        print("Win = ", String(self.win))
                        self.winStatus()
                    }
                }
                winStatus()
            }
            
        }
        }
        
    }

    func img6Clicked(){
        
        //Disable Game Settings button (after game has begun)
        gameSettingsButton.isEnabled = false
        
        if(s6.image == nil)
        {
        
        if (win == 0){
            
            if(turn == HUMAN_PLAYER){
                s6.image = #imageLiteral(resourceName: "x_img.png")
                mBoard[5] = "X"
                
                playXSound()

                
                turn = COMPUTER_PLAYER
                whoseTurn.text = "O's Turn"
                displayBoard()
                win = checkForWinner()
                print("Win = ", String(win))
                if(win == 0)
                {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        
                        self.getComputerMove()
                        self.win = self.checkForWinner()
                        self.displayBoard()
                        print("Win = ", String(self.win))
                        self.winStatus()
                    }
                }
                winStatus()
            }
            
        }
        }
        
    }

    func img7Clicked(){
        
        //Disable Game Settings button (after game has begun)
        gameSettingsButton.isEnabled = false
        
        if(s7.image == nil)
        {
        
        if (win == 0){
            
            if(turn == HUMAN_PLAYER){
                s7.image = #imageLiteral(resourceName: "x_img.png")
                mBoard[6] = "X"
                
                playXSound()
                
                turn = COMPUTER_PLAYER
                whoseTurn.text = "O's Turn"
                displayBoard()
                win = checkForWinner()
                print("Win = ", String(win))
                if(win == 0)
                {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        
                        self.getComputerMove()
                        self.win = self.checkForWinner()
                        self.displayBoard()
                        print("Win = ", String(self.win))
                        self.winStatus()
                    }
                }
                winStatus()
            }
            
        }
        }
        
    }
    
    func img8Clicked(){
        
        //Disable Game Settings button (after game has begun)
        gameSettingsButton.isEnabled = false
        
        if(s8.image == nil)
        {
        
        if (win == 0){
            
            if(turn == HUMAN_PLAYER){
                s8.image = #imageLiteral(resourceName: "x_img.png")
                mBoard[7] = "X"
                
                playXSound()
                
                turn = COMPUTER_PLAYER
                whoseTurn.text = "O's Turn"
                displayBoard()
                win = checkForWinner()
                print("Win = ", String(win))
                if(win == 0)
                {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        
                        self.getComputerMove()
                        self.win = self.checkForWinner()
                        self.displayBoard()
                        print("Win = ", String(self.win))
                        self.winStatus()
                    }
                }
                winStatus()
            }
            
        }
        }
        
    }

    func img9Clicked(){
        
        //Disable Game Settings button (after game has begun)
        gameSettingsButton.isEnabled = false
        
        if(s9.image == nil)
        {
        
        if (win == 0){
            
            if(turn == HUMAN_PLAYER){
                s9.image = #imageLiteral(resourceName: "x_img.png")
                mBoard[8] = "X"
                
                playXSound()
                
                turn = COMPUTER_PLAYER
                whoseTurn.text = "O's Turn"
                displayBoard()
                win = checkForWinner()
                print("Win = ", String(win))
                if(win == 0)
                {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        
                        self.getComputerMove()
                        self.win = self.checkForWinner()
                        self.displayBoard()
                        print("Win = ", String(self.win))
                        self.winStatus()
                    }
                }
                
                winStatus()
            }
            
        }
        }
        
    }

    
    
        
    @IBAction func NewGame(_ sender: UIButton) {
        s1.image = nil
        s2.image = nil
        s3.image = nil
        s4.image = nil
        s5.image = nil
        s6.image = nil
        s7.image = nil
        s8.image = nil
        s9.image = nil
        
        //Enable Game Settings Button
        gameSettingsButton.isEnabled = true
        
        print("TTT_ACTIVITY: Starting New Game")
        win = 0
        turn = HUMAN_PLAYER
        whoseTurn.text = "X goes first"
        mBoard = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mBoardArray.append(s1)
        mBoardArray.append(s2)
        mBoardArray.append(s3)
        mBoardArray.append(s4)
        mBoardArray.append(s5)
        mBoardArray.append(s6)
        mBoardArray.append(s7)
        mBoardArray.append(s8)
        mBoardArray.append(s9)
        
        
        let tapGesture1 = UITapGestureRecognizer(target: self, action: #selector(TTTViewController.img1Clicked))
        tapGesture1.numberOfTapsRequired = 1
        s1.addGestureRecognizer(tapGesture1)
        
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(TTTViewController.img2Clicked))
        tapGesture1.numberOfTapsRequired = 1
        s2.addGestureRecognizer(tapGesture2)
        
        let tapGesture3 = UITapGestureRecognizer(target: self, action: #selector(TTTViewController.img3Clicked))
        tapGesture3.numberOfTapsRequired = 1
        s3.addGestureRecognizer(tapGesture3)
        
        let tapGesture4 = UITapGestureRecognizer(target: self, action: #selector(TTTViewController.img4Clicked))
        tapGesture4.numberOfTapsRequired = 1
        s4.addGestureRecognizer(tapGesture4)
        
        let tapGesture5 = UITapGestureRecognizer(target: self, action: #selector(TTTViewController.img5Clicked))
        tapGesture5.numberOfTapsRequired = 1
        s5.addGestureRecognizer(tapGesture5)
        
        let tapGesture6 = UITapGestureRecognizer(target: self, action: #selector(TTTViewController.img6Clicked))
        tapGesture6.numberOfTapsRequired = 1
        s6.addGestureRecognizer(tapGesture6)
        
        let tapGesture7 = UITapGestureRecognizer(target: self, action: #selector(TTTViewController.img7Clicked))
        tapGesture7.numberOfTapsRequired = 1
        s7.addGestureRecognizer(tapGesture7)
        
        let tapGesture8 = UITapGestureRecognizer(target: self, action: #selector(TTTViewController.img8Clicked))
        tapGesture8.numberOfTapsRequired = 1
        s8.addGestureRecognizer(tapGesture8)
        
        let tapGesture9 = UITapGestureRecognizer(target: self, action: #selector(TTTViewController.img9Clicked))
        tapGesture9.numberOfTapsRequired = 1
        s9.addGestureRecognizer(tapGesture9)
    }

    func getComputerMove()
    {
        //Winning Move - Medium or Expert ONLY
        if(mDifficultyLevel == mDifficulty.Expert || mDifficultyLevel == mDifficulty.Medium)
        {
        for i in 0...(BOARD_SIZE - 1)
            {
            if (mBoard[i] != HUMAN_PLAYER && mBoard[i] != COMPUTER_PLAYER) {
                let curr = mBoard[i]
                mBoard[i] = COMPUTER_PLAYER
                if(checkForWinner() == 3)
                    {
                    print("Computer is making a winning move to ", (i+1))
                    mBoardArray[i].image = #imageLiteral(resourceName: "o_img.png")
                    
                    playOSound()
                    
                    whoseTurn.text = "X's turn!"
                    turn = HUMAN_PLAYER
                    win = checkForWinner()
                    return
                    }
                else
                    {
                        mBoard[i] = curr
                    }
                }
            }
        }
        
        //Blocking Move - Expert ONLY
        if(mDifficultyLevel == mDifficulty.Expert)
        {
        for i in 0...(BOARD_SIZE - 1) {
            if (mBoard[i] != HUMAN_PLAYER && mBoard[i] != COMPUTER_PLAYER) {
                let curr = mBoard[i]   // Save the current number
                mBoard[i] = HUMAN_PLAYER
                if (checkForWinner() == 2) {
                    mBoard[i] = COMPUTER_PLAYER
                    print("Computer is making a blocking move to ", (i + 1))
                    mBoardArray[i].image = #imageLiteral(resourceName: "o_img.png")
                    
                    playOSound()
                    
                    whoseTurn.text = "X's turn!"
                    turn = HUMAN_PLAYER
                    win = checkForWinner()
                    return
                    }
                    else
                    {
                        mBoard[i] = curr
                    }
                }
            }
        }
        
        //Random Move - ALL Difficulties
        repeat
        {
            move = Int(arc4random_uniform(UInt32(BOARD_SIZE)))
        } while (mBoard[move] == HUMAN_PLAYER || mBoard[move] == COMPUTER_PLAYER)
        
        print("Computer is making a random move to ", (move + 1))
        mBoardArray[move].image = #imageLiteral(resourceName: "o_img.png")
        mBoard[move] = COMPUTER_PLAYER
        
        playOSound()
        
        whoseTurn.text = "X's turn!"
        turn = HUMAN_PLAYER
        win = checkForWinner()

    }
    
    func checkForWinner() -> Int{
        
        //Check horizontal wins.
        let sequence = stride(from: 0, to: 8, by: 3)
        for i in sequence{
            if (mBoard[i] == HUMAN_PLAYER &&
                mBoard[i+1] == HUMAN_PLAYER &&
                mBoard[i+2] == HUMAN_PLAYER)
            {
                return 2;
            }
            if (mBoard[i] == COMPUTER_PLAYER &&
                mBoard[i+1] == COMPUTER_PLAYER &&
                mBoard[i+2] == COMPUTER_PLAYER)
            {
                return 3;
            }
        }
        
        //Check vertical wins.
        for i in 0...2
        {
            if (mBoard[i] == HUMAN_PLAYER &&
                mBoard[i+3] == HUMAN_PLAYER &&
                mBoard[i+6] == HUMAN_PLAYER)
            {
                return 2;
            }
            if (mBoard[i] == COMPUTER_PLAYER &&
                mBoard[i+3] == COMPUTER_PLAYER &&
                mBoard[i+6] == COMPUTER_PLAYER)
            {
                return 3;
            }
        }
        
        // Check for diagonal wins
        if ((mBoard[0] == HUMAN_PLAYER &&
            mBoard[4] == HUMAN_PLAYER &&
            mBoard[8] == HUMAN_PLAYER) ||
            (mBoard[2] == HUMAN_PLAYER &&
                mBoard[4] == HUMAN_PLAYER &&
                mBoard[6] == HUMAN_PLAYER))
        {
            return 2;
        }
        if ((mBoard[0] == COMPUTER_PLAYER &&
            mBoard[4] == COMPUTER_PLAYER &&
            mBoard[8] == COMPUTER_PLAYER) ||
            (mBoard[2] == COMPUTER_PLAYER &&
                mBoard[4] == COMPUTER_PLAYER &&
                mBoard[6] == COMPUTER_PLAYER))
        {
            return 3;
        }
        
        //Check for tie
        for i in 0...(BOARD_SIZE - 1)
        {
            // If we find a number, then no one has won yet
            if (mBoard[i] != HUMAN_PLAYER && mBoard[i] != COMPUTER_PLAYER)
            {
                return 0;
            }
            // If we make it through the previous loop, all places are taken, so it's a tie
            
        }
        return 1;
    }

    func displayBoard(){
        
        print()
        print(mBoard[0] + " | " + mBoard[1] + " | " + mBoard[2])
        print("===========")
        print(mBoard[3] + " | " + mBoard[4] + " | " + mBoard[5])
        print("===========")
        print(mBoard[6] + " | " + mBoard[7] + " | " + mBoard[8])
        print()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func winStatus()
    {
        if(win != 0)
        {
            if(win == 2)
            {
                whoseTurn.text = "X wins!"
                print("Human wins!")
                GlobalVariables.sharedManager.humanScore += 1
            }
            else if(win == 3)
            {
                whoseTurn.text = "O wins!"
                print("Computer wins!")
                GlobalVariables.sharedManager.computerScore += 1
            }
            else if(win == 1)
            {
                whoseTurn.text = "It's a tie."
                print("It's a tie.")
                GlobalVariables.sharedManager.tieScore += 1
            }
        
        }
    }
    
    @IBAction func gameSettings(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Game Settings", message: "Choose the game difficulty:", preferredStyle: .actionSheet)
        
        let easyButton = UIAlertAction(title: "Easy", style: .default, handler: { (action) -> Void in
            self.mDifficultyLevel = mDifficulty.Easy
            print("TTT set to Easy difficulty.")
        })
        
        let mediumButton = UIAlertAction(title: "Medium", style: .default, handler: { (action) -> Void in
            self.mDifficultyLevel = mDifficulty.Medium
            print("TTT set to Medium difficulty.")
        })
        
        let expertButton = UIAlertAction(title: "Expert", style: .default, handler: { (action) -> Void in
            self.mDifficultyLevel = mDifficulty.Expert
            print("TTT set to Expert difficulty.")
        })
        
        alertController.addAction(easyButton)
        alertController.addAction(mediumButton)
        alertController.addAction(expertButton)
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    
}

