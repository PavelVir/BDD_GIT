﻿#language: ru

@tree

#report.epic=Документы 
#report.feature=Частные задачи
#report.story=#8469 Проверка возможности использовать функцию обновления цены в договоре с некорректными данными


Функционал: Проверка возможности использовать функцию обновления цены с некорректными данными

Контекст: 

	Дано я подключаю TestClient "Полные права УСП" логин "Tester_FullA" пароль ""
	И я закрыл все окна клиентского приложения

Сценарий: Создание объектов для Теста и Проверка возможности использовать функцию обновления цены с некорректными данными

	Дано Я устанавливаю в константу "ИспользоватьДоговорыСПоставщиками" значение "Истина"

	И я проверяю или создаю для справочника "Валюты" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'  | 'Наименование' | 'ЗагружаетсяИзИнтернета' | 'НаименованиеПолное' | 'Наценка' | 'ОсновнаяВалюта' | 'ПараметрыПрописиНаРусском'                                 | 'ПараметрыПрописиНаУкраинском'                                | 'ФормулаРасчетаКурса' | 'СпособУстановкиКурса'                        |
		| 'e1cib/data/Справочник.Валюты?ref=80e3000c29e0e9f611ea0bd98b14b7b8' | 'False'        | '8469' | 'UAH'          | 'False'                  | 'гривня'             | '0'       | ''               | 'гривна, гривны, гривен, ж, копейка, копейки, копеек, ж, 2' | 'гривня, гривні, гривень, ж, копійка, копійки, копійок, ж, 2' | ''                    | 'Enum.СпособыУстановкиКурсаВалюты.РучнойВвод' |
	
	И я проверяю или создаю для справочника "кс_ЕдиницыИзмеренияСмета" объекты:
		| 'Ссылка'                                                                              | 'ПометкаУдаления' | 'Наименование' |
		| 'e1cib/data/Справочник.кс_ЕдиницыИзмеренияСмета?ref=80e3000c29e0e9f611ea11b8eab3b140' | 'False'        | '100м3'        |

	И я проверяю или создаю для справочника "Проекты" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'ЭтоПапка' | 'Наименование' | 'ПлановаяДатаНачала' | 'ДатаНачала'         | 'ПлановаяДатаОкончания' | 'кс_ВидПроекта' | 'кс_МетодикаРасчета' | 'кс_Организация' | 'кс_ПолноеНаименование' | 'кс_ПроизвольнаяСтруктураWBS' |
		| 'e1cib/data/Справочник.Проекты?ref=00000000000000000000000041355e00' | 'False'        | 'False'    | 'Проект 1'     | '01.01.0001 0:00:00' | '01.01.0001 0:00:00' | '01.01.0001 0:00:00'    | ''              | ''                   | ''               | ''                      | 'True'                        |

	И я проверяю или создаю для справочника "кс_Версия" объекты:
		| 'Ссылка'                                                                  | 'ПометкаУдаления' | 'Владелец'                                                           | 'Наименование' | 'ВидВерсии'                 | 'ДатаСоздания'       | 'Активная' | 'НомерВерсии' |
		| 'e1cib/data/Справочник.кс_Версия?ref=80d6000c298f8d8711eb9df67e503695' | 'False'        | 'e1cib/data/Справочник.Проекты?ref=00000000000000000000000041355e00' | 'Рабочая'      | 'Enum.кс_ВидВерсии.Рабочая' | '15.04.2021 0:00:00' | 'True'     | '1'           |

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                    | 'ПометкаУдаления' | 'Наименование'   | 'ДатаРегистрации'    | 'НаименованиеПолное'                                  | 'НаименованиеСокращенное' | 'ОбособленноеПодразделение' | 'Префикс' | 'ЮрФизЛицо'             | 'ЮридическоеФизическоеЛицо'                      | 'КодПоЕДРПОУ' | 'КодКВЕД' |
		| 'e1cib/data/Справочник.Организации?ref=80e3000c29e0e9f611ea1135ddf132f1' | 'False'        | 'АЕС-ГРУПП ТОВ' | '21.05.2012 0:00:00' | 'Товариство з обмеженою відповідальністю "АЕС-ГРУПП"' | 'ТОВ "АЕС-ГРУПП"'         | 'False'                     | 'АЕ'      | 'Enum.ЮрФизЛицо.ЮрЛицо' | 'Enum.ЮридическоеФизическоеЛицо.ЮридическоеЛицо' | '38202783'    | '41.10'   |
	
	И я проверяю или создаю для справочника "Партнеры" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель' | 'Код'        | 'Наименование' | 'Клиент' | 'Поставщик' | 'НаименованиеПолное' | 'ДополнительнаяИнформация' | 'ЮрФизЛицо'                         |
		| 'e1cib/data/Справочник.Партнеры?ref=80c004d4c45a8b8811ea361556459e1d' | 'False'        | ''       | '00-00000364' | '220ЮА'       | 'False'  | 'True'      | 'ТОВ "220ЮА"'        | 'ПОСТАЧАЛЬНИКИ'            | 'Enum.КомпанияЧастноеЛицо.Компания' |

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                    | 'ПометкаУдаления' | 'Наименование' | 'ОбособленноеПодразделение' | 'ЮридическоеФизическоеЛицо'                      | 'ГоловнойКонтрагент'                                                     | 'НаименованиеПолное' | 'Партнер'                                                             | 'ЮрФизЛицо'             | 'ПлательщикНДС' | 'КодПоЕДРПОУ' |
		| 'e1cib/data/Справочник.Контрагенты?ref=80c004d4c45a8b8811ea36197feefe93' | 'False'        | '220ЮА'       | 'False'                     | 'Enum.ЮридическоеФизическоеЛицо.ЮридическоеЛицо' | 'e1cib/data/Справочник.Контрагенты?ref=80c004d4c45a8b8811ea36197feefe93' | 'ТОВ "220ЮА"'        | 'e1cib/data/Справочник.Партнеры?ref=80c004d4c45a8b8811ea361556459e1d' | 'Enum.ЮрФизЛицо.ЮрЛицо' | 'True'          | '42943320'    |

	И я проверяю или создаю для справочника "ДоговорыКонтрагентов" объекты:
		| 'Ссылка'                                                                             | 'ПометкаУдаления' | 'Наименование' | 'ВалютаВзаиморасчетов'                                              | 'Комментарий'         | 'Организация'                                                            | 'Контрагент'                                                             | 'НаименованиеДляПечати' | 'Дата'               | 'Номер' | 'Партнер'                                                             | 'Подразделение'                                                                   | 'ПорядокОплаты'                                                 | 'ПорядокРасчетов'                              | 'Согласован' | 'Статус'                                      | 'ХозяйственнаяОперация'                         | 'ТипДоговора'                     | 'Сумма' | 'кс_СуммаВТЧМатериалы' | 'кс_СуммаВТЧРаботы' | 'кс_МатериалыЗаказчика' | 'кс_ПроектОрганизации'                                               |
		| 'e1cib/data/Справочник.ДоговорыКонтрагентов?ref=80d6000c298f8d8711eb9df67e503694' | 'False'        | '8469'         | 'e1cib/data/Справочник.Валюты?ref=80e3000c29e0e9f611ea0bd98b14b7b8' | 'поставка материалов' | 'e1cib/data/Справочник.Организации?ref=80e3000c29e0e9f611ea1135ddf132f1' | 'e1cib/data/Справочник.Контрагенты?ref=80c004d4c45a8b8811ea36197feefe93' | '8469'                  | '01.01.2019 0:00:00' | '8469'   | 'e1cib/data/Справочник.Партнеры?ref=80c004d4c45a8b8811ea361556459e1d' | 'e1cib/data/Справочник.СтруктураПредприятия?ref=80e3000c29e0e9f611ea0ea412f83e6a' | 'Enum.ПорядокОплатыПоСоглашениям.РасчетыВГривнахОплатаВГривнах' | 'Enum.ПорядокРасчетов.ПоДоговорамКонтрагентов' | 'True'       | 'Enum.СтатусыДоговоровКонтрагентов.Действует' | 'Enum.ХозяйственныеОперации.ЗакупкаУПоставщика' | 'Enum.ТипыДоговоров.СПоставщиком' | '0,00'  | '0'                    | '0,0'               | '0'                     | 'e1cib/data/Справочник.Проекты?ref=00000000000000000000000041355e00' |

	И я проверяю или создаю для документа "кс_УсловияПоДоговоруСПодрядчиком" объекты:
		| 'Ссылка'                                                                                       | 'ПометкаУдаления' | 'Номер'     | 'Дата'                | 'Posted' | 'Проект'                                                             | 'Организация'                                                            | 'Партнер'                                                             | 'Контрагент'                                                             | 'Договор'                                                                         | 'ВалютаДокумента'                                                   | 'СтавкаНДС'             | 'РасчетПоРесурсам' | 'СуммаДокумента' | 'ВидОперации'                                            | 'БазаМатериалы' | 'БазаМашины' | 'БазаТрудовые' | 'СоставРесурса' | 'Курс' | 'Кратность' | 'ВалютаВзаиморасчетов'                                              | 'СуммаВзаиморасчетов' | 'КурсВзаиморасчетов' | 'КратностьВзаиморасчетов' |
		| 'e1cib/data/Документ.кс_УсловияПоДоговоруСПодрядчиком?ref=80d6000c298f8d8711eb9df67e503693' | 'False'        | '000000056' | '15.04.2021 18:26:18' | 'True'   | 'e1cib/data/Справочник.Проекты?ref=00000000000000000000000041355e00' | 'e1cib/data/Справочник.Организации?ref=80e3000c29e0e9f611ea1135ddf132f1' | 'e1cib/data/Справочник.Партнеры?ref=80c004d4c45a8b8811ea361556459e1d' | 'e1cib/data/Справочник.Контрагенты?ref=80c004d4c45a8b8811ea36197feefe93' | 'e1cib/data/Справочник.ДоговорыКонтрагентов?ref=80d6000c298f8d8711eb9df67e503694' | 'e1cib/data/Справочник.Валюты?ref=80e3000c29e0e9f611ea0bd98b14b7b8' | 'Enum.СтавкиНДС.БезНДС' | 'True'             | '614 995,73'     | 'Enum.кс_УсловияПоДоговоруВидОперации.УсловияПоДоговору' | 'False'         | 'False'      | 'False'        | ''              | '1'    | '1'         | 'e1cib/data/Справочник.Валюты?ref=80e3000c29e0e9f611ea0bd98b14b7b8' | '614 995,73'          | '1'                  | '1'                       |

	И я проверяю или создаю для справочника "кс_КонструктивыПроекта" объекты:
		| 'Ссылка'                                                                            | 'ПометкаУдаления' | 'Владелец'                                                           | 'Наименование'                                                                                                                                           | 'УровеньСметы'                     | 'СметноеНаименование'                                    | 'КлючСтроки'                           | 'НаименованиеПолное'                                            |
		| 'e1cib/data/Справочник.кс_КонструктивыПроекта?ref=80d6000c298f8d8711eb88aa65be3844' | 'False'        | 'e1cib/data/Справочник.Проекты?ref=00000000000000000000000041355e00' | 'Будівництво багатоквартирного житлового будинку на перетині вул. Радистів та вул. Бобринецької в Деснянському районі міста Києва. Зовнішні мережі кана' | 'Enum.кс_УровеньСметы.РазделСметы' | 'Будівництво багатоквартирного житлового будинку'        | '2e47d2ca-b16b-413f-8b8a-1e687b768c56' | 'Будівництво багатоквартирного житлового будинку'               |
		| 'e1cib/data/Справочник.кс_КонструктивыПроекта?ref=80d6000c298f8d8711eb88aa65be3845' | 'False'        | 'e1cib/data/Справочник.Проекты?ref=00000000000000000000000041355e00' | 'Мережа К 1 по вул. Путивлівський'                                                                                                                       | 'Enum.кс_УровеньСметы.РазделСметы' | 'Мережа К 1 по вул. Путивлівський'                       | '76da3b45-781e-4b20-a441-aada259080b6' | 'Мережа К 1 по вул. Путивлівський'                              |
		| 'e1cib/data/Справочник.кс_КонструктивыПроекта?ref=80d6000c298f8d8711eb88ab20dd61c4' | 'False'        | 'e1cib/data/Справочник.Проекты?ref=00000000000000000000000041355e00' | '8d917e30-34e7-433c-b61d-3ac9b6fa9124'                                                                                                                   | 'Enum.кс_УровеньСметы.РазделСметы' | '8d917e30-34e7-433c-b61d-3ac9b6fa9124'                   | '19f85a2e-01cc-432a-9b80-9173924b1eb4' | 'прокладання мереж каналізації К 1 методом штольневої проходки' |
		| 'e1cib/data/Справочник.кс_КонструктивыПроекта?ref=80d6000c298f8d8711eb88aa65be3864' | 'False'        | 'e1cib/data/Справочник.Проекты?ref=00000000000000000000000041355e00' | 'Дерев'яна штольня 2c204718-d2c8-443c-8674-6f2c162bf952'                                                                                                 | 'Enum.кс_УровеньСметы.РазделСметы' | 'Дерев'яна штольня 2c204718-d2c8-443c-8674-6f2c162bf952' | '2c204718-d2c8-443c-8674-6f2c162bf952' | 'Дерев'яна штольня'                                             |

	И я проверяю или создаю для справочника "кс_ВидыРаботПроект" объекты:
		| 'Ссылка'                                                                           | 'ПометкаУдаления' | 'Владелец'                                                              | 'Наименование'                                                                                                 | 'ВидРабот' | 'ОсновнаяЕдиница'                                                                     | 'ШифрПозицииНорматива' | 'НаименованиеПолное'                                                                                          | 'ИзмененоНазвание' | 'НаименованиеАнгл' | 'СчетБУ' | 'СубконтоБУ1' | 'СубконтоБУ2' | 'СубконтоБУ3' | 'Демонтаж' | 'ДополнениеКНаименованию' | 'КлючСтроки'                           |
		| 'e1cib/data/Справочник.кс_ВидыРаботПроект?ref=80d6000c298f8d8711eb88aa65be3865' | 'False'        | 'e1cib/data/Справочник.Проекты?ref=00000000000000000000000041355e00' | 'Проходка постійних штолень перерізом у просвіті до 6 м2 із кріпленням дерев'яними рамами у грунтах 1-2 груп' | ''         | 'e1cib/data/Справочник.кс_ЕдиницыИзмеренияСмета?ref=80e3000c29e0e9f611ea11b8eab3b140' | 'Е29-21-2'             | 'Проходка постійних штолень перерізом у просвіті до 6 м2 із кріпленням дерев'яними рамами у грунтах 1-2 груп' | 'True'             | ''                 | ''       | ''            | ''            | ''            | 'False'    | ''                        | '422ed3d1-3308-49df-91f6-49f8f9b06367' |

	И я перезаполняю для объекта табличную часть "Работы":
		| 'Ссылка'                                                                                       | 'ВидРаботы'                                                                         | 'ЕдиницаИзмерения'                                                                    | 'КлючСвязи'                            | 'КлючСтроки'                           | 'НомерВСтруктуре' | 'Объем'  | 'ОбъемМакс' | 'ПримененыКоэффициенты' | 'СебестоимостьРесурсная' | 'СебестоимостьРесурснаяПодрядчика' | 'СебестоимостьУГПР' | 'СуммаВзаиморасчетов' | 'СуммаВзаиморасчетовСНДС' | 'СуммаПодрядчика' | 'СуммаПодрядчикаСНДС' | 'Цена'      | 'ЦенаПодрядчика' | 'ЭтоРабота' |
		| 'e1cib/data/Документ.кс_УсловияПоДоговоруСПодрядчиком?ref=80d6000c298f8d8711eb9df67e503693' | 'e1cib/data/Справочник.кс_КонструктивыПроекта?ref=80d6000c298f8d8711eb88aa65be3844' | ''                                                                                    | '00000000-0000-0000-0000-000000000000' | '2e47d2ca-b16b-413f-8b8a-1e687b768c56' | '0000000005'      | '0'      | '0'         | 'False'                 | '614 995,73'             | '614 995,73'                       | '614 995,73'        | '614 995,73'          | '614 995,73'              | '614 995,73'      | '614 995,73'          | '0'         | '0'              | 'False'     |
		| 'e1cib/data/Документ.кс_УсловияПоДоговоруСПодрядчиком?ref=80d6000c298f8d8711eb9df67e503693' | 'e1cib/data/Справочник.кс_КонструктивыПроекта?ref=80d6000c298f8d8711eb88aa65be3845' | ''                                                                                    | '2e47d2ca-b16b-413f-8b8a-1e687b768c56' | '76da3b45-781e-4b20-a441-aada259080b6' | '0000000002'      | '0'      | '0'         | 'False'                 | '614 995,73'             | '614 995,73'                       | '614 995,73'        | '614 995,73'          | '614 995,73'              | '614 995,73'      | '614 995,73'          | '0'         | '0'              | 'False'     |
		| 'e1cib/data/Документ.кс_УсловияПоДоговоруСПодрядчиком?ref=80d6000c298f8d8711eb9df67e503693' | 'e1cib/data/Справочник.кс_КонструктивыПроекта?ref=80d6000c298f8d8711eb88aa65be3847' | ''                                                                                    | '76da3b45-781e-4b20-a441-aada259080b6' | '8d917e30-34e7-433c-b61d-3ac9b6fa9124' | '0000000022'      | '0'      | '0'         | 'False'                 | '614 995,73'             | '614 995,73'                       | '614 995,73'        | '614 995,73'          | '614 995,73'              | '614 995,73'      | '614 995,73'          | '0'         | '0'              | 'False'     |
		| 'e1cib/data/Документ.кс_УсловияПоДоговоруСПодрядчиком?ref=80d6000c298f8d8711eb9df67e503693' | 'e1cib/data/Справочник.кс_КонструктивыПроекта?ref=80d6000c298f8d8711eb88aa65be3864' | ''                                                                                    | '8d917e30-34e7-433c-b61d-3ac9b6fa9124' | '2c204718-d2c8-443c-8674-6f2c162bf952' | '0000000023'      | '0'      | '0'         | 'False'                 | '614 995,73'             | '614 995,73'                       | '614 995,73'        | '614 995,73'          | '614 995,73'              | '614 995,73'      | '614 995,73'          | '0'         | '0'              | 'False'     |
		| 'e1cib/data/Документ.кс_УсловияПоДоговоруСПодрядчиком?ref=80d6000c298f8d8711eb9df67e503693' | 'e1cib/data/Справочник.кс_ВидыРаботПроект?ref=80d6000c298f8d8711eb88aa65be3865'     | 'e1cib/data/Справочник.кс_ЕдиницыИзмеренияСмета?ref=80e3000c29e0e9f611ea11b8eab3b140' | '2c204718-d2c8-443c-8674-6f2c162bf952' | '422ed3d1-3308-49df-91f6-49f8f9b06367' | '0000000024'      | '3,6225' | '3,6225'    | 'False'                 | '614 995,73'             | '614 995,73'                       | '614 995,73'        | '614 995,73'          | '614 995,73'              | '614 995,73'      | '614 995,73'          | '198 304,2' | '169 771,078'    | 'True'      |

	Дано Я открываю навигационную ссылку "e1cib/data/Документ.кс_УсловияПоДоговоруСПодрядчиком?ref=80d6000c298f8d8711eb9df67e503693"
	Когда открылось окно 'Договорная цена подрядчика * от *'
	И я нажимаю на кнопку с именем 'ФормаПровести'
	Тогда открылось окно 'Договорная цена подрядчика * от *'
	Тогда в логе сообщений TestClient есть строки:
		|'Возможно ошибка в данных - работа 422ed3d1-3308-49df-91f6-49f8f9b06367 без ресурсов подрячика'|
	Когда открылось окно 'Договорная цена подрядчика * от *'
	И я перехожу к закладке с именем "Основное"
	И я нажимаю на кнопку открытия поля с именем "Договор"
	Тогда открылось окно '* (Договор с поставщиком / исполнителем)'
	И я перехожу к закладке с именем "СтраницаРасчеты"
	// И элемент формы с именем 'кс_СуммаВТЧРаботы' стал равен '0,00'
	// Теперь срабатывает автообновление
	Тогда элемент формы с именем "Сумма" стал равен '614 995,73'
	Когда открылось окно '* (Договор с поставщиком / исполнителем)'
	И в поле с именем 'Сумма' я ввожу текст '0,00'
	И я перехожу к следующему реквизиту
	И я нажимаю на кнопку с именем 'кс_ЗаполнитьСтоимости'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button0'
	Тогда не появилось окно предупреждения системы
	И элемент формы с именем 'кс_СуммаВТЧРаботы' стал равен '614 995,73'
	Когда открылось окно '* (Договор с поставщиком / исполнителем) *'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	Тогда не появилось окно предупреждения системы
	И я жду закрытия окна '* (Договор с поставщиком / исполнителем) *' в течение 20 секунд
    И я закрываю все окна клиентского приложения
    
