//
//  Quiz.swift
//  QuizProject
//
//  Created by Vlad on 8.09.21.
//

import UIKit

class ViewControllerQuiz: UIViewController {
    
  
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreLable: UILabel!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var memsView: UIImageView!
    @IBOutlet weak var questionLable: UILabel!
    
//    Button
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    let allQuestions = QuestionRepository()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUi()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer {
            print("correct")
            score += 1
        }else{
            print("wrong")
        }
        
        questionNumber += 1
        updateQuestion()
    }
    func updateQuestion(){
        
        
        if questionNumber < allQuestions.list.count{
            memsView.image = UIImage(named: (allQuestions.list[questionNumber].questionImage))
            questionLable.text = allQuestions.list[questionNumber].question
            button1.setTitle(allQuestions.list[questionNumber].button1, for: UIControl.State.normal)
            button2.setTitle(allQuestions.list[questionNumber].button2, for: UIControl.State.normal)
            button3.setTitle(allQuestions.list[questionNumber].button3, for: UIControl.State.normal)
            button4.setTitle(allQuestions.list[questionNumber].button4, for: UIControl.State.normal)
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
            
        }else{
            let alert = UIAlertController(title: "Правильных ответов \(score) из \(questionNumber)", message: "Квиз окончен. Пройти заново?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Пройти заново", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        
        updateUi()
    }
    
    
    func updateUi(){
        scoreLable.text = "Score: \(score)"
        questionCounter.text = "\(questionNumber)/\(allQuestions.list.count)"
        progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber + 1)
    }
    
    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
        
    }

}
