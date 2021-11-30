//
//  ViewController.swift
//  iOS4-HW11 work on bugs
//
//  Created by Александр Петрович on 30.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var sceneColor = UIColor.brown
    var trackColor = UIColor.green
    let workText = "Делу 25 минут..."
    let restText = "...а потехе 5 минут)))"
    
    // MARK: - interfase
    
    private lazy var playBtn: UIButton = {
        var playBtn = UIButton()
        playBtn.tintColor = sceneColor
        playBtn.isHidden = false
        playBtn.backgroundColor = UIColor.clear
        playBtn.setImage(UIImage(systemName: "play", withConfiguration: UIImage.SymbolConfiguration(pointSize: 40)), for: .normal)
        playBtn.addTarget(self, action: #selector(playBtnPressed), for: .touchUpInside)
        return playBtn
    }()
    
    private lazy var pauseBtn: UIButton = {
        var pauseBtn = UIButton()
        pauseBtn.tintColor = sceneColor
        pauseBtn.isHidden = true
        pauseBtn.backgroundColor = UIColor.clear
        pauseBtn.setImage(UIImage(systemName: "pause", withConfiguration: UIImage.SymbolConfiguration(pointSize: 40)), for: .normal)
        pauseBtn.addTarget(self, action: #selector(pauseBtnPressed), for: .touchUpInside)
        return pauseBtn
    }()
    
    private lazy var resetBtn: UIButton = {
        var resetBtn = UIButton(type: .system)
        resetBtn.backgroundColor = UIColor.systemGray5
        resetBtn.titleLabel?.textColor = UIColor.systemBlue
        resetBtn.setTitle("Reset", for: .normal)
        resetBtn.layer.cornerRadius = 10
        resetBtn.addTarget(self, action: #selector(resetBtnPressed), for: .touchUpInside)
        return resetBtn
    }()
    
    private lazy var timerLabel: UILabel = {
        var timerLabel = UILabel()
        timerLabel.textColor = sceneColor
        timerLabel.font = .systemFont(ofSize: 30)
        timerLabel.text = "00:00" //timeConverter(time: timeLeft)
        return timerLabel
    }()
    
    private lazy var textLabel: UILabel = {
        var textLabel = UILabel()
        textLabel.textColor = sceneColor
        textLabel.font = .systemFont(ofSize: 30)
        textLabel.text = workText
        return textLabel
    }()
    
    private let circleView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        viewHierarchy()
        setupLayout()
        }
    
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }

    // MARK: - View settings
    
    private func viewHierarchy() {
        view.addSubview(circleView)
        view.addSubview(playBtn)
        view.addSubview(pauseBtn)
        view.addSubview(resetBtn)
        view.addSubview(timerLabel)
        view.addSubview(textLabel)
    }
    
    private func setupLayout() {
        
        circleView.translatesAutoresizingMaskIntoConstraints = false
        circleView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        circleView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        circleView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        circleView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        playBtn.translatesAutoresizingMaskIntoConstraints = false
        playBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        playBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 70).isActive = true
        
        pauseBtn.translatesAutoresizingMaskIntoConstraints = false
        pauseBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pauseBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 70).isActive = true
        
        resetBtn.translatesAutoresizingMaskIntoConstraints = false
        resetBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        resetBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 150).isActive = true
        resetBtn.heightAnchor.constraint(equalToConstant: 25).isActive = true
        resetBtn.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        timerLabel.translatesAutoresizingMaskIntoConstraints = false
        timerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        timerLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150).isActive = true
    }
    
    private func setupView() {
    }
    
    //MARK: - Actions
    
    @objc func playBtnPressed() {
       
    }
    
       @objc func pauseBtnPressed() {
        
    }
    
    @objc func resetBtnPressed() {
        
    }
}

