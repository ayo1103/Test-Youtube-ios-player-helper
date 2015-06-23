//
//  ViewController.swift
//  TestYoutubeIosPlayerHelper
//
//  Created by Bryan Lin on 6/23/15.
//  Copyright (c) 2015 ayo1103. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var youtubePlayer: YTPlayerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        youtubePlayer.loadWithVideoId("M7lc1UVf-VE", playerVars: ["playsinline" : 1])
    }

    @IBAction func play(sender: AnyObject) {
        youtubePlayer.cueVideoById("M7lc1UVf-VE", startSeconds: 30, suggestedQuality: YTPlaybackQuality.Auto)
        youtubePlayer.playVideo()
    }
}

