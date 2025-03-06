//
//  VideoPlayerViewController.swift
//  Lec0306Ex01_AVFoundation
//
//  Created by nelime on 3/6/25.
//

import UIKit
import AVKit

class VideoPlayerViewController: UIViewController {
    @IBOutlet weak var playpauseButton: UIButton!
    @IBOutlet weak var seekSlider: UISlider!
    
    var player: AVPlayer?
    var playerLayer: AVPlayerLayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupVideoPlayer()
    }
    
    func setupVideoPlayer() {
        guard let path = Bundle.main.path(forResource: "SampleVideo", ofType: "mp4") else { return }
        let url = URL(filePath: path)
        player = AVPlayer(url: url)
        
        playerLayer = AVPlayerLayer(player: player)
        playerLayer?.frame = view.bounds
        view.layer.insertSublayer(playerLayer!, below: playpauseButton.layer)
    }
    
    @IBAction func tapPlayPause(_ sender: UIButton) {
        if player?.rate == 0 {
            player?.play()
            playpauseButton.setTitle("pause", for: .normal)
        } else {
            player?.pause()
            playpauseButton.setTitle("play", for: .normal)
        }
    }
    
    @IBAction func seekSliderChanged(_ sender: UISlider) {
    }
}
