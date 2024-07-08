﻿#language: ru
@tree

#report.epic=ФункциональныеТесты
#report.feature=Справочники

Функционал: Я проверяю функциональность справочника ВидыПроектов

Как Пользователь
Я хочу проверить работу форм 
Чтобы не было ошибок при открытии 

Контекст:

Дано я подключаю TestClient "ПолныеПрава" логин "iRobot" пароль ""
И Я закрыл все окна клиентского приложения

Сценарий: Проверка функций справочника ВидыПроектов

Зачишаем среду тестирования от артефактов
	И я удаляю все элементы Справочника "кс_ВидыПроектов" с наименованием "Тестовый вид проекта"
	
Дано Я открываю основную форму списка справочника "кс_ВидыПроектов"
Тогда открылось окно "Виды проектов"

#Проверим создание группы
#	Когда Проверяю шаги на Исключение:
#	|'И я нажимаю на кнопку с именем 'ФормаСоздатьГруппу''|

Проверим создание элемента
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Виды проектов (создание)'
	И в поле 'Наименование' я ввожу текст 'Тестовый вид проекта'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Виды проектов (создание) *' в течение 20 секунд
	Тогда открылось окно "Виды проектов"
	И таблица "Список" содержит строки:
	| Наименование | 
	| 'Тестовый вид проекта' | 



 







