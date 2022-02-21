﻿#language: ru

#report.epic=ФункциональныеТесты
#report.feature=Справочники

Функционал: Проверка функций справочника ИНАГРО_АльбомПроектов

Как <Роль>
Я хочу <описание функционала> 
Чтобы <бизнес-эффект> 

Контекст: 
    Дано я подключаю TestClient "ПолныеПрава" логин "iRobot" пароль "Kamala$oft"
	И я удаляю все элементы Справочника "кс_АльбомПроектов" с наименованием "Электрооборудование"
	И я удаляю все элементы Справочника "кс_АльбомПроектов" с наименованием "Тепловые сети"

Сценарий: Проверка функций справочника ИНАГРО_АльбомПроектов

	И В командном интерфейсе я выбираю 'Управление строительным производством' 'Настройки и справочники'
	Тогда открылось окно 'Настройки и справочники УСП'
	И я нажимаю на кнопку 'Альбом проектов'
	Тогда открылось окно 'Альбом проектов'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Альбом проектов (создание)'
	И в поле 'Наименование' я ввожу текст 'Электрооборудование'
	И в поле 'Аббревиатура' я ввожу текст 'ЭО'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Альбом проектов (создание)' в течение 20 секунд
	Тогда открылось окно 'Альбом проектов'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Альбом проектов (создание)'
	И в поле 'Наименование' я ввожу текст 'Тепловые сети'
	И в поле 'Аббревиатура' я ввожу текст 'ТС'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Альбом проектов (создание)' в течение 20 секунд
	Тогда открылось окно 'Альбом проектов'
