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
    
    var timeObserver: Any?
    
    var player: AVPlayer?
    var playerLayer: AVPlayerLayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupVideoPlayer()
    }
    
    func setupVideoPlayer() {
        guard let path = Bundle.main.path(forResource: "SampleVideo", ofType: "mp4") else { return }
//        guard let path = systemName
        let url = URL(filePath: path)
        player = AVPlayer(url: url)
        
        playerLayer = AVPlayerLayer(player: player)
        playerLayer?.frame = view.bounds
        view.layer.insertSublayer(playerLayer!, below: playpauseButton.layer)
        
        player?.currentItem?.addObserver(self, forKeyPath: "status", options: [.new, .initial], context: nil)
        addPeriodicTimeObserver()
    }
    
    func addPeriodicTimeObserver() {
        guard let player = player else { return }
        let interval = CMTime(seconds: 0.5, preferredTimescale: CMTimeScale(NSEC_PER_SEC))
        timeObserver = player.addPeriodicTimeObserver(forInterval: interval, queue: DispatchQueue.main) { [weak self] time in
            guard let self = self else { return }
            let currentTime = player.currentTime().seconds
            let duration = player.currentItem?.duration.seconds ?? 0
            if duration > 0 {
                self.seekSlider.value = Float(currentTime)  //🎯 슬라이더가 현재 재생 시간과 동기화됨
            }
        }
    }
    
    @IBAction func tapPlayPause(_ sender: UIButton) {
        guard let player = player else {
                    print("오류: AVPlayer가 초기화되지 않았습니다.")
                    return
                }
        if player.rate == 0 {
            player.play()
            playpauseButton.setTitle("pause", for: .normal)
        } else {
            player.pause()
            playpauseButton.setTitle("play", for: .normal)
        }
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey: Any]?, context: UnsafeMutableRawPointer?) {
            if keyPath == "status", let playerItem = player?.currentItem, playerItem.status == .readyToPlay {
                DispatchQueue.main.async {
                    let duration = playerItem.duration.seconds
                    if duration > 0 {
                        self.seekSlider.maximumValue = Float(duration) // 슬라이더 최대값을 영상 길이와 동일하게 설정
                    }
                }
            }
        }
    
    @IBAction func seekSliderChanged(_ sender: UISlider) {
        let duration = player?.currentItem?.duration.seconds ?? 0
        let newTime = CMTime(seconds: duration, preferredTimescale: 600)
        player?.seek(to: newTime)
    }
    
    deinit {
        if let observer = timeObserver {
            player?.removeTimeObserver(observer)
        }
        player?.currentItem?.removeObserver(self, forKeyPath: "status")
    }
}
