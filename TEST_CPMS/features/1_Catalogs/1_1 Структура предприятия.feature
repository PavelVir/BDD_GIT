﻿#language: ru
@tree

#report.epic=ФункциональныеТесты
#report.feature=Справочники

Функционал: Я проверяю функциональность справочника СтруктураПредприятия

Как Пользователь
Я хочу проверить работу форм 
Чтобы не было ошибок при открытии 

Контекст:

Дано я подключаю TestClient "ПолныеПрава" логин "iRobot" пароль ""
И Я закрыл все окна клиентского приложения
И я удаляю все элементы Справочника "СтруктураПредприятия" с наименованием "Тестовое подразделение"


Сценарий: Проверка функций справочника СтруктураПредприятия

Дано Я открываю основную форму списка справочника "СтруктураПредприятия"
Тогда открылось окно "Структура предприятия"
 
 
Проверим создание элемента
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Подразделение (создание)'
	И в поле 'Наименование' я ввожу текст 'Тестовое подразделение'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Подразделение (создание) *' в течение 20 секунд
	Тогда открылось окно "Структура предприятия"







