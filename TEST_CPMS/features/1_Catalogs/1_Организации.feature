﻿#language: ru
@tree

#report.epic=ФункциональныеТесты
#report.feature=Справочники

Функционал: Я проверяю функциональность справочника Организации

Как Пользователь
Я хочу проверить работу форм 
Чтобы не было ошибок при открытии 

Контекст:

Дано я подключаю TestClient "ПолныеПрава" логин "iRobot" пароль ""
И Я закрыл все окна клиентского приложения
И Я устанавливаю в константу "ИспользоватьНесколькоОрганизаций" значение "ИСТИНА"


Сценарий: Проверка функций справочника Организации

* Зачишаем среду тестирования от артефактов
	Дано я удаляю все элементы Справочника "Организации" с наименованием "Тестовое юр лицо"
	Дано я удаляю все элементы Справочника "Организации" с наименованием "Тестовое физ лицо"
	Дано я удаляю все элементы Справочника "УчетныеПолитикиОрганизаций" с наименованием "НП і ПДВ"
	Дано я удаляю все элементы Справочника "НалоговыеИнспекции" с наименованием "1027"
* Проверим создание элемента юр лицо
	И Я открываю основную форму списка справочника "Организации"	
	И я нажимаю на кнопку 'Юридическое лицо'
	Тогда открылось окно 'Организация (создание)'
	И в поле с именем 'НаименованиеСокращенное' я ввожу текст 'Тестовое юр лицо'
	И в поле 'Код по ЕДРПОУ' я ввожу текст '03756678'
	И в поле 'ИНН (НДС)' я ввожу текст '123'
	И в поле 'Номер свидетельства (НДС)' я ввожу текст '123'
	Создание и выбор налоговой инспекции
		И я нажимаю кнопку выбора у поля "Налоговая инспекция"
		Тогда открылось окно 'Налоговые инспекции'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Налоговые инспекции (создание)'
		И в поле 'Код ГНИ' я ввожу текст '1027'
		И в поле 'Наименование' я ввожу текст '1027'
		И я нажимаю на кнопку 'Записать и закрыть'
		И я жду закрытия окна 'Налоговые инспекции (создание)' в течение 20 секунд
		Тогда открылось окно 'Налоговые инспекции'
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И я перехожу к закладке "Адреса, телефоны"
	И я перехожу к закладке "Регистрационные данные"
	И я перехожу к закладке "Учетная политика и налоги"
	Создание и выбор учетной политики
		И я нажимаю на кнопку с именем "СоздатьНовуюУчетнуюПолитику"
		Тогда открылось окно 'Учетная политика организации (создание)'
		И в поле 'Наименование' я ввожу текст 'НП і ПДВ'
		И я перехожу к закладке "Запасы"
		И я перехожу к закладке "Бухгалтерский учет"
		И я перехожу к закладке "Резервы"
		И я перехожу к закладке "Налоговый учет"
		И я нажимаю на кнопку 'Записать и закрыть'
	Тогда открылось окно 'Организация (создание)*'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Организация (создание)' в течение 20 секунд
	И таблица "Список" содержит строки:
	| Наименование | 
	| 'Тестовое юр лицо' | 
 
Проверим создание элемента физ лицо
	И я нажимаю на кнопку 'Физ. лицо - предпринимателя'
	Тогда открылось окно 'Организация (создание)'
	И в поле с именем 'НаименованиеСокращенное' я ввожу текст 'Тестовое физ лицо'
	И в поле 'Код по ЕДРПОУ' я ввожу текст '03756678'
	И в поле 'ИНН (НДС)' я ввожу текст '123'
	И в поле 'Номер свидетельства (НДС)' я ввожу текст '123'
	И из выпадающего списка "Налоговая инспекция" я выбираю по строке '1027'
	И я перехожу к закладке "Адреса, телефоны"
	И я перехожу к закладке "Регистрационные данные"
	И я перехожу к закладке "Учетная политика и налоги"
	И из выпадающего списка "УчетнаяПолитика" я выбираю точное значение 'НП і ПДВ'
	И я нажимаю на кнопку с именем 'Button0'
	Тогда открылось окно 'Тестовое физ лицо (Организация)'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Тестовое физ лицо (Организация)' в течение 20 секунд
	И таблица "Список" содержит строки:
	| Наименование | 
	| 'Тестовое физ лицо' | 






