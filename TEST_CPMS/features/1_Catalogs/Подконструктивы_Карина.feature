﻿#language: ru

#report.epic=ФункциональныеТесты
#report.feature=Справочники


Функционал: Проверка функций справочник Подконструктивы

Как <Роль>
Я хочу <описание функционала> 
Чтобы <бизнес-эффект> 

Контекст: 
	Дано я подключаю TestClient "ПолныеПрава" логин "iRobot" пароль "Kamala$oft"


Сценарий: Проверка функций справочник Подконструктивы
	Дано я удаляю все элементы Справочника "кс_ПодКонструктив" с наименованием "Малые архитектурные формы"
	Дано я удаляю все элементы Справочника "кс_ПодКонструктив" с наименованием "Оконные проемы"
	Дано я удаляю все элементы Справочника "кс_ПодКонструктив" с наименованием "Заполнение проёмов паркинга"
	
	И В командном интерфейсе я выбираю 'Управление строительным производством' 'Настройки и справочники'
	Тогда открылось окно 'Настройки и справочники УСП'
	И я нажимаю на кнопку 'Подконструктивы 1 уровня'
	Тогда открылось окно 'Подконструктив * уровня (Классификатор)'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Подконструктив * уровня (Классификатор) (создание)'
	И в поле 'Наименование' я ввожу текст 'Малые архитектурные формы'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Подконструктив * уровня (Классификатор) (создание)' в течение 20 секунд
	Тогда открылось окно 'Подконструктив * уровня (Классификатор)'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Подконструктив * уровня (Классификатор) (создание)'
	И в поле 'Наименование' я ввожу текст 'Оконные проемы'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Подконструктив * уровня (Классификатор) (создание)' в течение 20 секунд
	Тогда открылось окно 'Подконструктив * уровня (Классификатор)'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Подконструктив * уровня (Классификатор) (создание)'
	И в поле 'Наименование' я ввожу текст 'Заполнение проёмов паркинга'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Подконструктив * уровня (Классификатор) (создание)' в течение 20 секунд

