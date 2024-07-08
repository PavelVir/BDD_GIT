﻿#language: ru
@tree
@IgnoreOnCIMainBuild

#report.epic=ФункциональныеТесты
#report.feature=Справочники

Функционал: Я проверяю функциональность справочника кс_ГлавыССРС

Как Пользователь
Я хочу проверить работу форм 
Чтобы не было ошибок при открытии 

Контекст:

Дано я подключаю TestClient "ПолныеПрава" логин "iRobot" пароль ""
И Я закрыл все окна клиентского приложения

Сценарий: Проверка функций справочника кс_ГлавыССРС

Дано Я открываю основную форму списка справочника "кс_ГлавыССРС" и удаляем данные "Истина"

Тогда открылось окно "Главы сводного сметного расчета"
Проверим создание группы
	И я нажимаю на кнопку с именем 'ФормаСоздатьГруппу'
	Тогда открылось окно 'Главы сводного сметного расчета (создание группы)'
	И в поле 'Наименование главы' я ввожу текст 'Тестовая группа'
	И из выпадающего списка "Тип строительства" я выбираю точное значение 'Новое строительство'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Главы сводного сметного расчета (создание группы)' в течение 20 секунд
	Тогда открылось окно "Главы сводного сметного расчета"
Проверим создание элемента
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Глава сводного сметного расчета (создание)'
	И в поле 'Наименование главы' я ввожу текст 'Глава тестовая'
	И из выпадающего списка "Тип строительства" я выбираю точное значение 'Новое строительство'
	И в поле 'Подзаголовок' я ввожу текст '1'
	И в поле 'Номер главы' я ввожу текст '1'
	Тогда открылось окно 'Глава сводного сметного расчета (создание) *'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Глава сводного сметного расчета (создание) *' в течение 20 секунд
	Тогда открылось окно "Главы сводного сметного расчета"



 







