﻿#language: ru
@tree
@exportscenarios


Функционал: Как тестировщик системы УСП я хочу открыть список с отборами и удалить все старые данные если нужно

Как тестировщик я хочу повторяющиеся шаги использовать в виде подключаемых сценариев

Контекст:

Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Я открываю основную форму списка документа "Парам1" по проекту "Парам2" удаляем данные "Парам3"

    Допустим Я открываю основную форму списка документа "Парам1"
    #Тогда открылось окно 'Распределительная ведомость'
    И Я очищаю фильтр на форме списка       
    Когда Я убираю группировки в текущем списке
    Я устанавливаю фильтр на список     
        И я нажимаю на кнопку с именем "*НастройкаСписка"	 
        И я перехожу к закладке "Отбор"
        И для каждой строки таблицы отбора я устанавливаю отбор в списке
        | Проект | Равно | "Парам2" |
        | Пометка удаления | Равно | Нет |
        И я нажимаю на кнопку с именем "ФормаЗакончитьРедактирование"
    Если "Парам3" Тогда
        Если в таблице "Список" количество строк "Больше" 0 Тогда            
            Тогда в таблице "Список" я выделяю все строки            
            Затем Если появилось окно диалога я нажимаю на кнопку 'Да'
            Если текущее окно имеет заголовок "Управленческий график производства работ" Тогда
                И я нажимаю на кнопку 'Отменен'
                Затем Если появилось окно диалога я нажимаю на кнопку "Да"
            И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Список"
            Затем Если появилось окно диалога я нажимаю на кнопку 'Да'

