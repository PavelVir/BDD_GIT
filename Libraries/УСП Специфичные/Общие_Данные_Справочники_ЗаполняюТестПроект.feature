﻿#language: ru
@tree
@exportscenarios

Функционал: Я создаю тестовый проект для использования в тесте

	Как разработчик я хочу повторяющиеся шаги использовать в виде подключаемых сценариев

Контекст:

	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Я заполняю данные тестового проекта

Когда открылось окно 'Проект (создание)'
Тогда в поле 'Наименование' я ввожу текст 'Шаблон сметы 4-1'
И я перехожу к закладке "Реквизиты УСП"
И из выпадающего списка "Организация" я выбираю по строке 'Автотестирование загрузки 27 улицы'
И из выпадающего списка "Основное подразделение" я выбираю по строке 'Холдинг 1'
И из выпадающего списка "Горизонт оперативного планирования" я выбираю точное значение 'Месяц'
И из выпадающего списка "Тип цен" я выбираю точное значение 'Текущая'
И из выпадающего списка "ВидПроекта" я выбираю точное значение 'Дорожное строительство'
И из выпадающего списка "Бизнес регион" я выбираю точное значение 'Астана'
И я нажимаю на кнопку 'Записать и закрыть'
И я жду закрытия окна 'Проект (создание) *' в течение 2 секунд



