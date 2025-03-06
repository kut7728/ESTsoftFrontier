//
//  AudioPlayerViewController.swift
//  Lec0306Ex01_AVFoundation
//
//  Created by nelime on 3/6/25.
//

import UIKit
import AVFoundation

class AudioPlayerViewController: UIViewController {
    @IBOutlet weak var timeLineLabel: UILabel!
    @IBOutlet weak var volumeSlider: UISlider!
    
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudioPlayer()
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime() {
        let minutes = Int(audioPlayer?.currentTime ?? 0) / 60
        let seconds = Int(audioPlayer?.currentTime ?? 0) % 60
        self.timeLineLabel.text = String(format: "%02d:%02d", minutes, seconds)
    }
    
    
    
    func setupAudioPlayer() {
        // 소스파일 url 설정, withExtension은 확장자
        guard let url = Bundle.main.url(forResource: "LetItBeMe", withExtension: "mp3") else { return }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.prepareToPlay()
        } catch {
            print("오디오 플레이어 초기화 실패: \(error)")
        }
    }
    
    @IBAction func tapPlayButton(_ sender: UIButton) {
        audioPlayer?.play()
    }
    
    @IBAction func tapPauseButton(_ sender: UIButton) {
        audioPlayer?.pause()
    }
    
    @IBAction func tapStopButton(_ sender: UIButton) {
        audioPlayer?.stop()
    }
}
