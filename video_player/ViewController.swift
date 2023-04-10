//
//  ViewController.swift
//  video_player
//
//  Created by Venkata K on 4/10/23.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo()
    }
    
    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "Horses_9", ofType: "mp4") else {
            print("not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        
        let playController = AVPlayerViewController()
        
        playController.player = player
        
        present(playController, animated: true) {
            player.play()        }
    }
}

