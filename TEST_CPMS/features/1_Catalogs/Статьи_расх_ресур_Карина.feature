﻿#language: ru

#report.epic=ФункциональныеТесты
#report.feature=Справочники

Функционал: Проверка функций Статьи расходов ресурсов

Как <Роль>
Я хочу <описание функционала> 
Чтобы <бизнес-эффект> 

Контекст: 
	Дано я подключаю TestClient "ПолныеПрава" логин "iRobot" пароль "Kamala$oft"
	// И я удаляю все элементы Справочника "Справочник1" с наименованием "Расходы на работников"
	

Сценарий: Проверка функций Статьи расходов ресурсов
	
	И В командном интерфейсе я выбираю 'Управление строительным производством' 'Настройки и справочники'
	Тогда открылось окно 'Настройки и справочники УСП'
	И я нажимаю на кнопку 'Статьи расходов ресурсов'
	Тогда открылось окно 'Статьи расходов ресурсы'
	Если в таблице "Список" количество строк "больше" 0 Тогда		
		И в таблице 'Список' я выделяю все строки
		И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУдалить' на элементе формы с именем "Список"
		И я нажимаю на кнопку с именем 'Button0'		
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Статьи расходов ресурсы (создание)'
	И из выпадающего списка "Вид ресурса" я выбираю точное значение 'Затраты труда машинистов'
	И я нажимаю кнопку выбора у поля "Статья расходов"
	Тогда открылось окно 'Статьи расходов'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Статья расходов (создание)'
	И в поле 'Наименование' я ввожу текст 'Расходы на работников'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Статья расходов (создание)' в течение 20 секунд
	Тогда открылось окно 'Статьи расходов'
	И в таблице "Список" я активизирую поле "Наименование"
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Статьи расходов ресурсы (создание) *'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Статьи расходов ресурсы (создание) *' в течение 20 секунд

