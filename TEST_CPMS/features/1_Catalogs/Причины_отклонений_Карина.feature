﻿#language: ru

#report.epic=ФункциональныеТесты
#report.feature=Справочники

Функционал: Проверка функций справочник Причины отклонений

Как <Роль>
Я хочу <описание функционала> 
Чтобы <бизнес-эффект> 

Контекст: 
	Дано я подключаю TestClient "ПолныеПрава" логин "iRobot" пароль ""


Сценарий:  Проверка функций справочник Причины отклонений
	Дано я удаляю все элементы Справочника "кс_ПричиныОтклонений" с наименованием "Брак"
	
	И В командном интерфейсе я выбираю 'Управление строительным производством' 'Настройки и справочники'
	Тогда открылось окно 'Настройки и справочники УСП'
	И я нажимаю на кнопку 'Причины отклонений'
	Тогда открылось окно 'Причины отклонений'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Причины отклонений (создание)'
	И в поле 'Наименование' я ввожу текст 'Брак'
	И я нажимаю кнопку выбора у поля "Группа причин"
	Тогда открылось окно 'Причины отклонений'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Причины отклонений (создание) *'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Причины отклонений (создание) *' в течение 20 секунд
	Тогда открылось окно 'Причины отклонений'
