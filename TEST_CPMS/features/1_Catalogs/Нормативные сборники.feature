﻿#language: ru
@tree

#report.epic=ФункциональныеТесты 
#report.feature=Справочники
#report.story= Проверка функций справочник Нормативные сборники


Функционал: Проверка функция справочника Нормативные сборники

Контекст: 
    Дано я подключаю TestClient "ПолныеПрава" логин "iRobot" пароль "Kamala$oft"
    Дано я удаляю все элементы Справочника "кс_НормативныеСборники" с наименованием "Тест 10233"
    И я проверяю или создаю для справочника "кс_ЕдиницыИзмеренияСмета" объекты:
    | 'Ссылка'                                                                              | 'Наименование' | 'кс_ЕдиницаКлассификатора'                                                            | 'ИсключитьИзТрудоемкости' |
    | 'e1cib/data/Справочник.кс_ЕдиницыИзмеренияСмета?ref=80d9000c298f8d8711ec1234f7f611a7' | 'шт'           | 'e1cib/data/Справочник.УпаковкиЕдиницыИзмерения?ref=80d9000c298f8d8711ec12329b7dbd40' | 'False'                   |


Сценарий: Ошибка записи элементов с нестандартным кодом #10233

И для каждой строки таблицы я выполняю
    | 'COD' |    
    | '1-1-1'|
    | '1/1/1'|
    | '1/1-1'|
    | '1.1.1'|
    | '1:1:1'|
    | ''|
    Дано я открываю основную форму списка справочника "кс_НормативныеСборники"
    Когда открылось окно 'Нормативные сборники'
    И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюСоздать' на элементе формы с именем "Список"
    Тогда открылось окно 'Нормативный сборник (создание)'
    И в поле с именем 'КодНормативнойРасценки' я ввожу текст '$COD$'
    И в поле с именем 'Наименование' я ввожу текст 'Тест 10233'
    И я нажимаю кнопку выбора у поля с именем "ЕдиницаИзмерения"
    Тогда открылось окно 'Единицы измерения сметных ресурсов'
    И в таблице "Список" я активизирую поле с именем "Код"
    И в таблице "Список" я перехожу к строке:
        | 'Наименование' |
        | 'шт'           |
    И я нажимаю на кнопку с именем 'ФормаВыбрать'
    Тогда открылось окно 'Нормативный сборник (создание) *'
    И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
    Тогда не появилось окно предупреждения системы
    И я жду закрытия окна 'Нормативный сборник (создание) *' в течение 20 секунд
    Тогда не появилось окно предупреждения системы
    И я закрываю все окна клиентского приложения


