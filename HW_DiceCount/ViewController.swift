//
//  ViewController.swift
//  HW_DiceCount
//
//  Created by 曹家瑋 on 2023/5/29.
//

// 錯誤版本
//import UIKit
//import AVFoundation
//
//class ViewController: UIViewController {
//
//    // 上方骰子
//    @IBOutlet var upperDiceImageViewCollection: [UIImageView]!
//    // 下方骰子
//    @IBOutlet var lowerDiceImageViewCollection: [UIImageView]!
//    // 擲骰次數
//    @IBOutlet weak var upperRollCountLabel: UILabel!
//    @IBOutlet weak var lowerRollCountLabel: UILabel!
//    // 計算骰子點數
//    @IBOutlet weak var upperDiceNumberSumLabel: UILabel!
//    @IBOutlet weak var lowerDiceNumberSumLabel: UILabel!
//    // 計算骰子所有點數加總
//    @IBOutlet weak var totalDiceNumberSumLabel: UILabel!
//    // 儲存點數出現次數
//    @IBOutlet var numberLabels: [UILabel]!
//
//    // 骰子的圖片
//    let diceImages = ["one", "two", "three", "four", "five", "six"]
//
//    // 追蹤擲骰次數
//    var upperRollCount: Int = 0
//    var lowerRollCount: Int = 0
//
//    // 追蹤骰子所有點數加總
//    var totalDiceNumberSum: Int = 0
//
//    // 追蹤擲骰的點數
//    var upperDiceNumberSum = 0
//    // 追蹤骰子的點數
//    var lowerDiceNumberSum = 0
//
//    // 創建一個陣列來追蹤每個數字出現的次數，初始化為 0
//    var numberCountArray = Array(repeating: 0, count: 6)
//
//    // 音效播放
//    let diceSoundPlayer = AVPlayer()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//    // 投擲上方的骰子
//    @IBAction func rollUpperDiceButtonPressed(_ sender: UIButton) {
//
//        // 追蹤擲骰的點數
//        upperDiceNumberSum = 0
//
//        // 更新擲骰次數
//        upperRollCount += 1
//        // 擲骰次數字串化
//        upperRollCountLabel.text = "\(upperRollCount)"
//
//        // 投擲骰子：亂數更新骰子圖片
//        for diceImage in upperDiceImageViewCollection {
//            // 取得一個隨機的骰子圖片名稱
//            let randomDiceImageName = diceImages.randomElement()!
//            // 使用隨機的骰子圖片名稱來設定骰子的圖片
//            diceImage.image = UIImage(named: randomDiceImageName)
//
//            // 根據圖片名稱判斷骰子的點數並加到總和上
//            switch randomDiceImageName {
//            case "one":
//                upperDiceNumberSum += 1
//            case "two":
//                upperDiceNumberSum += 2
//            case "three":
//                upperDiceNumberSum += 3
//            case "four":
//                upperDiceNumberSum += 4
//            case "five":
//                upperDiceNumberSum += 5
//            case "six":
//                upperDiceNumberSum += 6
//            default:
//                break
//            }
//        }
//
//
//        // 在每次擲骰的迴圈中，根據骰子點數更新陣列中對應數字的計數
//        for diceImage in upperDiceImageViewCollection {
//
//            // 取得一個隨機的骰子圖片名稱
//            let randomDiceImageName = diceImages.randomElement()!
//            // 使用隨機的骰子圖片名稱來設定骰子的圖片
//            diceImage.image = UIImage(named: randomDiceImageName)
//
//            // 針對投擲出的骰子點數出現次數進行統計
//            switch randomDiceImageName {
//            case "one":
//                numberCountArray[0] += 1
//            case "two":
//                numberCountArray[1] += 1
//            case "three":
//                numberCountArray[2] += 1
//            case "four":
//                numberCountArray[3] += 1
//            case "five":
//                numberCountArray[4] += 1
//            case "six":
//                numberCountArray[5] += 1
//            default:
//                break
//            }
//        }
//
//        // 使用另一個迴圈遍歷陣列，並將數字和對應的計數顯示在適當的 Label 上
//        for (index, count) in numberCountArray.enumerated() {
//            // 在這裡更新相應的 Label，例如使用 Label 陣列來存儲所有的數字 Label
//            let label = numberLabels[index]
//            label.text = "\(count)"
//        }
//
//        // 將點數總和顯示在 upperDiceNumberSumLabel 上
//        upperDiceNumberSumLabel.text = "\(upperDiceNumberSum)"
//
//        // 點數加總
//        totalDiceNumberSum = upperDiceNumberSum + lowerDiceNumberSum
//        // 加總後的點數字串化在 totalDiceNumberSumLabel
//        totalDiceNumberSumLabel.text = "\(totalDiceNumberSum)"
//
//        // 擲骰子音效
//        rollDiceSound()
//    }
//
//
//    // 投擲下方的骰子
//    @IBAction func rollLowerDiceButtonPressed(_ sender: UIButton) {
//
//        // 追蹤骰子的點數
//        lowerDiceNumberSum = 0
//
//        // 更新擲骰次數
//        lowerRollCount += 1
//        // 擲骰次數字串化
//        lowerRollCountLabel.text = "\(lowerRollCount)"
//
//        // 投擲骰子：亂數更新骰子圖片
//        for diceImage in lowerDiceImageViewCollection {
//            // 取得一個隨機的骰子圖片名稱
//            let randomDiceImageName = diceImages.randomElement()!
//            // 使用隨機的骰子圖片名稱來設定骰子的圖片
//            diceImage.image = UIImage(named: randomDiceImageName)
//
//            // 根據圖片名稱判斷骰子的點數並加到總和上
//            switch randomDiceImageName {
//            case "one":
//                lowerDiceNumberSum += 1
//            case "two":
//                lowerDiceNumberSum += 2
//            case "three":
//                lowerDiceNumberSum += 3
//            case "four":
//                lowerDiceNumberSum += 4
//            case "five":
//                lowerDiceNumberSum += 5
//            case "six":
//                lowerDiceNumberSum += 6
//            default:
//                break
//            }
//        }
//
//
//        // 在每次擲骰的迴圈中，根據骰子點數更新陣列中對應數字的計數
//        for diceImage in lowerDiceImageViewCollection {
//            // 取得一個隨機的骰子圖片名稱
//            let randomDiceImageName = diceImages.randomElement()!
//            // 使用隨機的骰子圖片名稱來設定骰子的圖片
//            diceImage.image = UIImage(named: randomDiceImageName)
//
//            // 針對投擲出的骰子點數出現次數進行統計
//            switch randomDiceImageName {
//            case "one":
//                numberCountArray[0] += 1
//            case "two":
//                numberCountArray[1] += 1
//            case "three":
//                numberCountArray[2] += 1
//            case "four":
//                numberCountArray[3] += 1
//            case "five":
//                numberCountArray[4] += 1
//            case "six":
//                numberCountArray[5] += 1
//            default:
//                break
//            }
//        }
//
//        // 使用另一個迴圈遍歷陣列，並將數字和對應的計數顯示在適當的 Label 上
//        for (index, count) in numberCountArray.enumerated() {
//            // 在這裡更新相應的 Label，例如使用 Label 陣列來存儲所有的數字 Label
//            let label = numberLabels[index]
//            label.text = "\(count)"
//        }
//
//
//        // 將點數總和顯示在 lowerDiceNumberSumLabel 上
//        lowerDiceNumberSumLabel.text = "\(lowerDiceNumberSum)"
//
//        // 點數加總
//        totalDiceNumberSum = upperDiceNumberSum + lowerDiceNumberSum
//
//        // 加總後的點數字串化在 totalDiceNumberSumLabel
//        totalDiceNumberSumLabel.text = "\(totalDiceNumberSum)"
//
//        // 擲骰子音效
//        rollDiceSound()
//    }
//
//
//    // 重置
//    @IBAction func restDiceButtonPressed(_ sender: UIButton) {
//
//        // 重置上方骰子
//        for diceImage in upperDiceImageViewCollection {
//            diceImage.image = UIImage(named: diceImages[0])
//        }
//
//        // 重置下方骰子
//        for diceImage in lowerDiceImageViewCollection {
//            diceImage.image = UIImage(named: diceImages[0])
//        }
//
//
//        // 重置次數，將重置次數顯示在計次Label上
//        upperRollCount = 0
//        lowerRollCount = 0
//        upperRollCountLabel.text = "\(upperRollCount)"
//        lowerRollCountLabel.text = "\(lowerRollCount)"
//
//        // 重置擲骰的點數
//        upperDiceNumberSum = 0
//        lowerDiceNumberSum = 0
//        upperDiceNumberSumLabel.text = "\(upperDiceNumberSum)"
//        lowerDiceNumberSumLabel.text = "\(lowerDiceNumberSum)"
//
//        // 重置骰子點數總和
//        totalDiceNumberSum = 0
//        totalDiceNumberSumLabel.text = "\(totalDiceNumberSum)"
//
//        // 重置點數出現次數
//        numberCountArray = Array(repeating: 0, count: numberCountArray.count)
//        // 迭代 numberCountArray 的每個元素，同時獲取索引和元素值
//        for (index, count) in numberCountArray.enumerated() {
//            // 使用索引來獲取相應的 UILabel
//            let label = numberLabels[index]
//            // 將元素值設置為 UILabel 的文字屬性，從而更新顯示內容
//            label.text = "\(count)"
//        }
//    }
//
//
//    // 擲骰子音效
//    func rollDiceSound() {
//
//        let soundUrl = Bundle.main.url(forResource: "RollDiceSound", withExtension: "mp3")!
//        let playerItem = AVPlayerItem(url: soundUrl)
//        diceSoundPlayer.replaceCurrentItem(with: playerItem)
//        diceSoundPlayer.rate = 0.7
//        diceSoundPlayer.play()
//    }
//
//}


// 新版
import UIKit
import AVFoundation

class ViewController: UIViewController {

    // 骰子圖片集合，上方和下方各一組
    @IBOutlet var upperDiceImageViewCollection: [UIImageView]!
    @IBOutlet var lowerDiceImageViewCollection: [UIImageView]!

    // 擲骰次數的Label
    @IBOutlet weak var upperRollCountLabel: UILabel!
    @IBOutlet weak var lowerRollCountLabel: UILabel!

    // 上方 / 下方 骰子點數 各自的總和 Label
    @IBOutlet weak var upperDiceNumberSumLabel: UILabel!
    @IBOutlet weak var lowerDiceNumberSumLabel: UILabel!

    // 點數出現次數 Label
    @IBOutlet var numberLabels: [UILabel]!
    
    // 所有骰子點數總和 Label
    @IBOutlet weak var totalDiceNumberSumLabel: UILabel!

    // 骰子的圖片名稱
    let diceImages = ["one", "two", "three", "four", "five", "six"]

    // 上方和下方骰子 各自 擲骰次數
    var upperRollCount: Int = 0
    var lowerRollCount: Int = 0

    // 上方和下方骰子的點數總和
    var upperDiceNumberSum = 0
    var lowerDiceNumberSum = 0

    // 點數出現次數
    var numberCountArray = Array(repeating: 0, count: 6)
    
    // 所有骰子點數總和
    var totalDiceNumberSum: Int = 0

    // 骰子聲音播放器
    let SoundPlayer = AVPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // 投擲上方的骰子
    @IBAction func rollUpperDiceButtonPressed(_ sender: UIButton) {

        // 擲骰並計算點數總和
        upperDiceNumberSum = 0

        // 更新擲骰次數
        upperRollCount += 1

        // 擲骰次數字串化
        upperRollCountLabel.text = "\(upperRollCount)"

        // 遍歷每一個骰子的圖片，進行隨機投擲
        for diceImage in upperDiceImageViewCollection {
            // 隨機選取一個骰子圖片名稱
            let randomDiceImageName = diceImages.randomElement()!
            // 根據隨機選取的名稱，設定骰子的圖片
            diceImage.image = UIImage(named: randomDiceImageName)

            // 根據骰子點數，更新點數總和 、 對應點數的次數
            switch randomDiceImageName {
            case "one":
                upperDiceNumberSum += 1             // 上方點數總和增加 1
                numberCountArray[0] += 1            // 計數陣列的第一個位置（代表點數 1）增加 1
            case "two":
                upperDiceNumberSum += 2             // 上方點數總和增加 2
                numberCountArray[1] += 1            // 計數陣列的第二個位置（代表點數 2）增加 1
            case "three":
                upperDiceNumberSum += 3             // 上方點數總和增加 3
                numberCountArray[2] += 1            // 計數陣列的第三個位置（代表點數 3）增加 1
            case "four":
                upperDiceNumberSum += 4             // 上方點數總和增加 4
                numberCountArray[3] += 1            // 計數陣列的第四個位置（代表點數 4）增加 1
            case "five":
                upperDiceNumberSum += 5             // 上方點數總和增加 5
                numberCountArray[4] += 1            // 計數陣列的第五個位置（代表點數 5）增加 1
            case "six":
                upperDiceNumberSum += 6             // 上方點數總和增加 6
                numberCountArray[5] += 1            // 計數陣列的第六個位置（代表點數 6）增加 1
            default:
                // 其他情況不處理
                break
            }
        }

        // 將每個骰子點數的出現次數顯示在對應的Labe上
        for (index, count) in numberCountArray.enumerated() {

            print("點數", index, "次數", count)

            let label = numberLabels[index]                                     // 取得對應的Label
            label.text = "\(count)"                                             // 更新Label文字
        }

        // 顯示上方骰子的點數總和
        upperDiceNumberSumLabel.text = "\(upperDiceNumberSum)"

        // 將上方、下方骰子的總點數相加
        totalDiceNumberSum = upperDiceNumberSum + lowerDiceNumberSum

        // 將總點數顯示在Label上
        totalDiceNumberSumLabel.text = "\(totalDiceNumberSum)"

        // 擲骰子音效
        rollDiceSound()
    }


    // 投擲下方的骰子
    @IBAction func rollLowerDiceButtonPressed(_ sender: UIButton) {

        // 擲骰並計算點數總和
        lowerDiceNumberSum = 0

        // 更新擲骰次數
        lowerRollCount += 1

        // 擲骰次數字串化
        lowerRollCountLabel.text = "\(lowerRollCount)"

        // 遍歷每一個骰子的圖片，進行隨機投擲
        for diceImage in lowerDiceImageViewCollection {
            // 隨機選取一個骰子圖片名稱
            let randomDiceImageName = diceImages.randomElement()!
            // 根據隨機選取的名稱，設定骰子的圖片
            diceImage.image = UIImage(named: randomDiceImageName)

            // 根據骰子點數，更新點數總和 、 對應點數的次數
            switch randomDiceImageName {
            case "one":
                lowerDiceNumberSum += 1             // 下方點數總和增加 1
                numberCountArray[0] += 1            // 計數陣列的第一個位置（代表點數 1）增加 1
            case "two":
                lowerDiceNumberSum += 2             // 下方點數總和增加 2
                numberCountArray[1] += 1            // 計數陣列的第二個位置（代表點數 2）增加 1
            case "three":
                lowerDiceNumberSum += 3             // 下方點數總和增加 3
                numberCountArray[2] += 1            // 計數陣列的第三個位置（代表點數 3）增加 1
            case "four":
                lowerDiceNumberSum += 4             // 下方點數總和增加 4
                numberCountArray[3] += 1            // 計數陣列的第四個位置（代表點數 4）增加 1
            case "five":
                lowerDiceNumberSum += 5             // 下方點數總和增加 5
                numberCountArray[4] += 1            // 計數陣列的第五個位置（代表點數 5）增加 1
            case "six":
                lowerDiceNumberSum += 6             // 下方點數總和增加 6
                numberCountArray[5] += 1            // 計數陣列的第六個位置（代表點數 6）增加 1
            default:
                // 其他情況不處理
                break
            }
        }

        // 使用另一個迴圈遍歷陣列，並將數字和對應的計數顯示在適當的 Label 上
        for (index, count) in numberCountArray.enumerated() {
            // 在這裡更新相應的 Label，例如使用 Label 陣列來存儲所有的數字 Label
            let label = numberLabels[index]
            label.text = "\(count)"
        }


        // 顯示下方骰子的點數總和
        lowerDiceNumberSumLabel.text = "\(lowerDiceNumberSum)"

        // 將上方、下方骰子的總點數相加
        totalDiceNumberSum = upperDiceNumberSum + lowerDiceNumberSum

        // 將總點數顯示在Label上
        totalDiceNumberSumLabel.text = "\(totalDiceNumberSum)"

        // 擲骰子音效
        rollDiceSound()
    }


    // 當點擊重置按鈕時觸發
    @IBAction func restDiceButtonPressed(_ sender: UIButton) {

        // 重置上方骰子、下方骰子圖片
        for diceImage in upperDiceImageViewCollection {
            diceImage.image = UIImage(named: diceImages[0])
        }
                for diceImage in lowerDiceImageViewCollection {
            diceImage.image = UIImage(named: diceImages[0])
        }

        // 將上方和下方骰子的投擲次數都重置為0
        upperRollCount = 0
        lowerRollCount = 0
        upperRollCountLabel.text = "\(upperRollCount)"
        lowerRollCountLabel.text = "\(lowerRollCount)"

        // 將上方和下方骰子各自的點數總和都重置為0
        upperDiceNumberSum = 0
        lowerDiceNumberSum = 0
        upperDiceNumberSumLabel.text = "\(upperDiceNumberSum)"
        lowerDiceNumberSumLabel.text = "\(lowerDiceNumberSum)"

        // 將兩組骰子的點數總和重置為0
        totalDiceNumberSum = 0
        totalDiceNumberSumLabel.text = "\(totalDiceNumberSum)"

        // 重置點數出現次數
        numberCountArray = Array(repeating: 0, count: numberCountArray.count)

        // 迭代 numberCountArray 的每個元素，同時獲取索引和元素值
        for (index, count) in numberCountArray.enumerated() {
            // 使用索引來獲取相應的 UILabel
            let label = numberLabels[index]
            // 將元素值設置為 UILabel 的文字屬性，從而更新顯示內容
            label.text = "\(count)"
        }

        // 清理的音效
        clearSound()
    }


    // 擲骰子音效
    func rollDiceSound() {
        let soundUrl = Bundle.main.url(forResource: "RollDiceSound", withExtension: "mp3")!
        let playerItem = AVPlayerItem(url: soundUrl)
        SoundPlayer.replaceCurrentItem(with: playerItem)
        SoundPlayer.rate = 0.7
        SoundPlayer.play()
    }

    // 清除的音效
    func clearSound() {
        let soundUrl = Bundle.main.url(forResource: "ClearSound", withExtension: "mp3")!
        let playerItem = AVPlayerItem(url: soundUrl)
        SoundPlayer.replaceCurrentItem(with: playerItem)
        SoundPlayer.rate = 0.7
        SoundPlayer.play()
    }


}
