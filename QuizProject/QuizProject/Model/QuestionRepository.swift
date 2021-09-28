//
//  QuestionRepository.swift
//  QuizProject
//
//  Created by Vlad on 9.09.21.
//

import Foundation

class QuestionRepository {
    var list = [Question]()
    
    init () {
        list.append(Question(image: "1.Мурад", questionText: "Как зовут героя этого мема?", choice1: "1.Мурад", choice2:"2.Тамби", choice3:"3.Асхаб", choice4: "4.Нур-Султан", answer: 1))
        
        list.append(Question(image: "2.С поюрешкой", questionText: "С чем ел котлетку герой этого мема?", choice1: "1.Гречка", choice2:"2.Макрошки", choice3:"3.Пюрешка", choice4: "4.Чечевица", answer: 3))
        
        list.append(Question(image: "3.Идущий к реке", questionText: "На что всё равно идущему к реке?", choice1: "1.Тачки", choice2:"2.Квартиры-срачки", choice3:"3.Стометровая яхта", choice4: "4.Все ответы верны", answer: 4))
        
        list.append(Question(image: "4.Дикаприо", questionText: "Из какого фильма этот кадр?", choice1: "1.Начало", choice2:"2.Джанго освобождённый", choice3:"3.Остров проклятых", choice4: "4.Великий Гэтсби", answer: 2))
        
        list.append(Question(image: "5.Чимс", questionText: "Как зовут зовут собаку справа?", choice1: "1.Чили", choice2:"2.Мухтар", choice3:"3.Хатико", choice4: "4.Чимс", answer: 4))
        
        list.append(Question(image: "6.Жириновский", questionText: "Кого жириновский просил оплатить покупки в аптеке?", choice1: "1.Сафронов", choice2:"2.Соломов", choice3:"3.Сафонов", choice4: "4.Симонов", answer: 3))
        
        list.append(Question(image: "7.Сергей Демехов", questionText: "Во время просмотра какого видео Сергею Демихову было 'Ничего не понятно, но очень интересно'?", choice1: "1.Версус баттл", choice2:"2.Дима Масленников", choice3:"3.Мамикс", choice4: "4.Утопия шоу", answer: 1))
        
        list.append(Question(image: "8.Кличко", questionText: "Продолжите фразу Виталия Кличко:'А сегодня в завтрашний день не все могут смотреть. Вернее смотреть могут не только лишь все...'?", choice1: "1.Не мало кто может это делать", choice2:"2.Мало кто может это делать", choice3:"3.Почти никто не может это делать", choice4: "4.Много кто может это делать", answer: 2))
        
        list.append(Question(image: "9.Зубенко Михаил Петрович", questionText: "Какая кличка была у Зубенко Михаила Петровича?", choice1: "1.Таро", choice2:"2.Слон", choice3:"3.Шляпа", choice4: "4.Мафиозник", answer: 4))
        
        list.append(Question(image: "10.Хуан хойя борха", questionText: "При рассказе какой истории так сильно смеялся Хуан Хойя Борха?", choice1: "1.История о рыбалке", choice2:"2.История о стройке", choice3:"3.История о сквородках", choice4: "4.История о жене", answer: 3))
        
    }
}
