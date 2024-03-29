#language: ru
@tree
@ignore

#report.epic=АРМ
#report.feature=Сметные функции
#report.story=

Функционал: Функции по формированию состава работ

Контекст: Тестовая база подключена

//Дано Я открыл сеанс TestClient от имени "Tester_FullA" с паролем "" или подключаю уже существующий
Дано Я открыл сеанс TestClient от имени "p.virich" с паролем "125689" или подключаю уже существующий
И я закрыл все окна клиентского приложения

 
Сценарий: 1. Функции по формированию состава работ

 * 1.1 Формирование ВБС
    * 1.1.1 Добавить уровень
    * 1.1.2 Добавить под уровень
    * 1.1.3 Добавить уровень по шаблону
    * 1.1.4 Перемещение группы работ перетаскиваниемы
    * 1.1.5 Копирование группы работ  
    * 1.1.6 Удалить группу работ
    * 1.1.7 ГО: Пересчет итогов
    * 1.1.8 ГО: Документ: Очистить пустые структуры(без работ)
    * 1.1.9 ГО: Документ: Свернуть дубли структуры


* 1.2 Формирование работ
    * 1.2.1 Добавить работу из сборника
    * 1.2.2 Добавить работу из работ проекта
    * 1.2.3 Добавить работу и ресурс
    * 1.2.4 Копирование работы ( то же что и 1.2.2 но с ресурсами?)
    * 1.2.5 Изменить объем работы
        * авто пересчет стоимости работы
        * автопересчет количества ресурсов
        * авторасчет непрямых затрат
        * авторасчет итогов по группам работ
        * ограничения при редактировании при наличии факта
        * ограничения при редактировании при наличии УПДП
        * расчет объема по формуле расчета объема
        * блокируется только работа которую редактирует пользователь
    * 1.2.6 Удалить работу
    * 1.2.7 Работа: Обновить ресурсы нормативному сборнику
    * 1.2.8 Документ:Обновить состав работ по нормативному сборнику
    * 1.2.9 Документ: Очистить пустые работы
    * 1.2.10 Документ: Удалить дубли работ (по наименованию в пределах структуры)
    * 1.2.11 Обработка: Установить объёмы
    * 1.2.12 Объединение работ (новое)
    * 1.2.13 Вынесение ресурса за расценку (добавление работы)
     
    * 1.2.х Отменить изменения работы (Перспектива)

* 1.3 Формирование ресурсов
    * 1.3.1 Возможность отбора ресурсов по типу
    * 1.3.2 Добавить ресурс
        * Добавляется как проектный
        * Выполняется установка цены ресурса и расчет стоимостей
        * Выполняется пересчет итогов стоимости 
    * 1.3.3 Изменить ресурс
        * Выбор только с такой же единицей измерения
    * 1.3.4 Изменить количество ресурса
        * Пересчет нормы и стоимости 
        * Изменение доступно только ролям BI_УГПРРедактированиеТрудовыхРесурсов или BI_BI_ИзменениеНормРасходаУГПР
    * 1.3.4 Изменить норму ресурса
        * Пересчет количества и  стоимости 
        * Изменение доступно только ролям BI_УГПРРедактированиеТрудовыхРесурсов или BI_BI_ИзменениеНормРасходаУГПР
    * 1.3.5 Изменить цену ресурса
        * Пересчет стоимости работы
        * Изменение доступно только ролям BI_УГПРРедактированиеТрудовыхРесурсов или BI_УГПРИзменятьСтоимостьРесурсов
        * Авторасчет стоимости машинистов при наличии МиМ
    * 1.3.6 Изменить стоимость ресурса
        * Пересчет цены и стоимости 
        * Изменение доступно только ролям BI_УГПРРедактированиеТрудовыхРесурсов или BI_УГПРИзменятьСтоимостьРесурсов
        * Авторасчет стоимости машинистов при наличии МиМ
    * 1.3.7 Изменение флага расчет
        * Выполняется пересчет итогов стоимости работы
        * В произвольной структуре недоступно изменение расчета трудовых ресурсов
        * В произвольной структуре недоступно изменение расчета машинных ресурсов
    *  1.3.7 Удалить ресурс
        * Проектный удаляется
        * Остальные снимаются с расчета
        * Выполняется пересчет итогов стоимости
        * Возможность удалить несколько ресурсов (* Новое в АРМ)
    * 1.3.8 Обработка: Редактировать ресурсы
    * 1.3.9 ГО: Установить цену по текущему ресурсу по документу
    * 1.3.10 ГО: Выполнить замену ресурса по всему документу
        * Только в произвольной структуре проекта
        * Не заменяет по блокированных работам
    * 1.3.11 Разделение агрегированного ресурса (Новая  )

* 1.4 Изменение непрямых затрат
    * Добавление непрямых затрат на работу и группу работ    
    * Удаление непрямых затрат с работы или группы работ
    * Ограничения
        * В проектах с непроизвольной структурой можно добавлять только демонтаж
        * В проектах с непроизвольной структурой можно менять только демонтаж
    * Пересчет непрямых затрат по работе и пересчет итогов
        * С проверкой блокирования работ
        * Не пересчитывать субподрядные и с фактом
    * Признак включать в расчет для непрямых (Новый)
    * ГО: Пересчитать непрямые затраты по документу
    * Фиксированная сумма непрямых (новая)
    * Функции ССР по распределению непрямых (перспектива)


* 1.5 Операции работ
    * Заполняются по нормативному сборнику
    * редактируются только в произвольной структуре проекта

* 1.6 Вспомогательные функции
    * 1.6.1 Отключить расчет итогов - при более чем 500 работ отключается автоматически
    * 1.6.2 Создать версию проекта
        * Новая рабочая версия
        * Прочая версия
    * 1.6.3 Обновить цены (по актуальным ценам в РС Сметные цены ресурсов)
    * 1.6.4 Вкл/Выкл сметные наименования структуры работ
    * 1.6.5 Сохранение изменений
        * Блокировка только редактируемых работ и группам
        * Корректная замена данных существующих работ
        * Добавление новых групп работ в существующие УГПР
        * Добавление новых групп работ в новые УГПР по уровню 3 (0-1-2-3)
        * Добавление новых работ в новые группы в существующие УГПР
        * Добавление новых работ в старые группы в существующие УГПР
        * Добавление новых работ в новые группы в новые УГПР по уровню 3 (0-1-2-3)
    * 1.6.6 автосохранение через указанный промежуток времени - настройка проекта(?)
    

* 1.7 Работа с шаблонами (перспектива)
    * 1.7.1 Сохранение произвольного набора WBS и работ как шаблон
    * 1.7.2 Добавление работ из выбранного шаблона

* 1.8 Работа с изменениями - акт об изменениях
    * Изменение объема работы
    * Изменение количества ресурсов
    * Ограничения
        * Пока не подтвердили Акт об изменении, мы не должны иметь возможность сделать УПДП или КБ-2 (?) на эти работы




