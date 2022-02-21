﻿#language: ru
@tree
@exportscenarios
@Ignore

Функционал: Как тестировщик системы УСП я хочу создать тестовый нормативный сборник

Как разработчик я хочу повторяющиеся шаги использовать в виде подключаемых сценариев

Контекст:

Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Я создаю нормативный сборник 71-010101-0101-00

Когда Я открываю основную форму списка справочника "кс_НормативныеСборники"
Тогда открылось окно 'Нормативные сборники'
И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюСписок' на элементе формы с именем "Список"
И в таблице 'Список' я перехожу к первой строке
И Я устанавливаю фильтр на список
|'Шифр расценки'| Содержит | 71-010101-0101-00 |
Если в таблице "Список" нет строки Тогда
|'Шифр расценки'|
|'71-010101-0101-00'|    
    И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюСоздать' на элементе формы с именем "Список"        
    Тогда открылось окно 'Нормативный сборник (создание)'
    И в поле 'Наименование' я ввожу текст "Грунты 1 группы. Разработка в отвал экскаваторами ^Драглайн^ одноковшовыми электрическими шагающими с ковшом вместимостью 15 м3 при работе на гидроэне" 
    И из выпадающего списка "Единица измерения" я выбираю по строке 'м3'
    И я нажимаю на кнопку 'Записать'
    Затем Если появилось окно диалога я нажимаю на кнопку "Да"
    И Пауза 1    
    И в поле 'Шифр расценки' я ввожу текст '71-010101-0101-00'       
    * Заполнение ресурсов             
        И я перехожу к закладке "Ресурсы"                        
        И для каждой строки таблицы я выполняю
        | 'Cod'|'Vid'| 'EI'|'Name'|
        | '01-010101-0138-00'|'Затраты труда рабочих'| 'чел.-ч'| 'Затраты труда рабочих-строителей (средний разряд 3,8)'|
        | '01-010102-0100-00'|'Затраты труда машинистов'| 'чел.-ч'| 'Затраты труда машинистов'|
        | '31-010101-0302-00'|'Машины и механизмы'| 'маш.-ч'| 'Бульдозеры при работе на гидроэнергетическом строительстве и горно-вскрышных работах, 79 кВт (108 л.с.)'|
        | '01-010101-0138-00'|'Машины и механизмы'| 'маш.-ч'| 'Экскаваторы одноковшовые электрические шагающие при работе на гидроэнергетическом строительстве, 15 м3'|
            И в таблице "РесурсыНормативныхСборников" я нажимаю на кнопку 'Добавить'
            И в таблице "РесурсыНормативныхСборников" я выбираю значение реквизита "Ресурс" из формы списка
            Тогда открылось окно 'Ресурсы'            
            И я нажимаю на кнопку 'Список'                        
            И в таблице 'Список' я перехожу к первой строке
            Если в таблице "Список" нет строки Тогда
            |'Наименование'|
            |"$Name$"|
                Когда я нажимаю на кнопку с именем 'ФормаСоздать'
                Тогда открылось окно 'Ресурс (создание)'
                И в поле 'Наименование' я ввожу текст "$Name$"                
                И в поле с именем "Код" я ввожу текст "$Cod$"
                И из выпадающего списка "Единица измерения" я выбираю по строке '$EI$'               
                И из выпадающего списка "Вид ресурса" я выбираю точное значение "$Vid$"
                И из выпадающего списка "Группа ресурсов" я выбираю по строке 'Ресурсы'
                Затем Если появилось окно диалога я нажимаю на кнопку "Да"
                И я нажимаю на кнопку 'Записать и закрыть'
                Затем Если появилось окно диалога я нажимаю на кнопку "Да"
                И я жду закрытия окна 'Ресурсы (создание)' в течение 20 секунд
                Тогда открылось окно 'Ресурсы'
            И в таблице "Список" я перехожу к строке:
            |'Наименование'|
            |"$Name$"|
            И в таблице 'Список' я выбираю текущую строку
    И я нажимаю на кнопку 'Записать и закрыть'
И в таблице "Список" я перехожу к строке:
|'Шифр расценки'|
|'71-010101-0101-00'|

