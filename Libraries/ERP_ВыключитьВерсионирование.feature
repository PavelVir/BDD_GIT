﻿#language: ru
@tree
@exportscenarios
@IgnoreOnCIMainBuild

Функционал: Я выключаю Версионирование для всего

	Хочу выключить Версионирование для всего

Контекст:

Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

  
Сценарий: Я выключаю Версионирование для всего

Дано В командном интерфейсе я выбираю 'НСИ и администрирование' 'Поддержка и обслуживание'
Тогда открылось окно 'Обслуживание системы'
И я разворачиваю группу "Версионирование объектов"
И я нажимаю на кнопку 'Настройки хранения'
Тогда открылось окно 'Версионирование объектов'
И в таблице "ДеревоОбъектовМетаданных" я сворачиваю строку:
	| 'Объект'      |
	| 'Справочники' |
И я выбираю пункт контекстного меню с именем 'КМ_УстановитьВариантВерсионированияНеВерсионировать' на элементе формы с именем "ДеревоОбъектовМетаданных"

И в таблице "ДеревоОбъектовМетаданных" я сворачиваю строку:
	| 'Объект'    |
	| 'Документы' |
И я выбираю пункт контекстного меню с именем 'КМ_УстановитьВариантВерсионированияНеВерсионировать' на элементе формы с именем "ДеревоОбъектовМетаданных"
И Я закрыл все окна клиентского приложения




