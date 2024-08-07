﻿#language: ru
@tree

#report.epic=Документы
#report.feature=УГПР
#report.story= Эталонный УГПР для проверки расчета сетевого графика

Функционал: Создать эталонный УГПР для проверки расчета сетевого графика

 
Сценарий: Я создаю эталонный УГПР для расчета сетевого графика

Дано я подключаю TestClient "ПолныеПрава" логин "iRobot" пароль ""
И я закрываю все окна клиентского приложения

Зачистим старые данные
	Дано Я создаю график проекта с названием "Основной график"
	* Нужен график на 2018 год		
		Когда открылось окно 'Графики работы сотрудников'
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Основной график (График работы)'
		И в поле 'Год, за который отображается график работы' я ввожу текст '2018'
		И я нажимаю на кнопку 'Заполнить'
		И я нажимаю на кнопку 'Записать'
				
	Дано Я создаю тестовую организацию
	Дано Я создаю тестовый проект
	Дано Я открываю основную форму списка документа "кс_УГПР" по проекту "Автотестирование загрузки 27 улицы" удаляем данные "Истина"

Создаю документ
	Дано Я открываю основную форму списка документа "кс_УГПР"
	Тогда открылось окно 'Планы работ'
	И Я очищаю фильтр на форме списка
	#И из выпадающего списка "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Значение" я выбираю по строке 'Автотестирование загрузки 27 улицы'
	#Когда Я убираю группировки в текущем списке
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда я жду открытия окна 'План работ (создание)*' в течение 10 секунд
	И из выпадающего списка "Проект" я выбираю по строке 'Автотестирование загрузки 27 улицы'
	И я выбираю значение реквизита "Версия" из формы списка	
	И Я создаю версию проекта с названием "Сетевой график" 
	И в таблице "Список" я выбираю текущую строку
	Тогда элемент формы "Версия" стал равен шаблону '(*) Сетевой график'
	Тогда элемент формы "Организация" стал равен 'Автотестирование загрузки 27 улицы'
	И я перехожу к закладке "Дерево работ"
	И в таблице "РаботыДЗ" я нажимаю на кнопку 'Детализация'

* Когда Я создаю структуру WBS шаблонного УГПР
	Когда в таблице "РаботыДЗ" я нажимаю на кнопку 'Уровень'
	И Я создаю элемент  WBS  проекта с названием 'Итоги'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'План работ (создание) *'
	И в таблице "РаботыДЗ" в поле 'Код WBS' я ввожу текст '00'
	И в таблице "РаботыДЗ" я завершаю редактирование строки

 

* Я создаю шаблонные работы в текущем УГПР
        
	И Я создаю шаблонную работу в текущем УГПР родитель '00' название 'Начало проекта' шифр '01' объем '' 
	И Я создаю шаблонную работу в текущем УГПР родитель '00' название 'Выбор системы' шифр '02' объем '15' 
	И Я создаю шаблонную работу в текущем УГПР родитель '00' название 'Приобретение программного обеспечения' шифр '03' объем '7' 
	И Я создаю шаблонную работу в текущем УГПР родитель '00' название 'Составление проекта сети' шифр '04' объем '7' 
	И Я создаю шаблонную работу в текущем УГПР родитель '00' название 'Приобретение компьютеров' шифр '05' объем '15' 
	И Я создаю шаблонную работу в текущем УГПР родитель '00' название 'Обучение администратора и программиста' шифр '06' объем '30' 
	И Я создаю шаблонную работу в текущем УГПР родитель '00' название 'Монтаж локальной сети' шифр '07' объем '20' 
	И Я создаю шаблонную работу в текущем УГПР родитель '00' название 'Установка ПО на компьютеры' шифр '08' объем '5' 
	И Я создаю шаблонную работу в текущем УГПР родитель '00' название 'Установка сетевого ПО, настройка сети' шифр '09' объем '25' 
	И Я создаю шаблонную работу в текущем УГПР родитель '00' название 'Ввод начальных данных' шифр '10' объем '40' 
	И Я создаю шаблонную работу в текущем УГПР родитель '00' название 'Обучение персонала' шифр '11' объем '30' 
	И Я создаю шаблонную работу в текущем УГПР родитель '00' название 'Передача в эксплуатацию' шифр '12' объем '5' 
	И Я создаю шаблонную работу в текущем УГПР родитель '00' название 'Конец проекта' шифр '13' объем '' 

И я нажимаю на кнопку 'Провести'

* Я устанавливаю связи между работами
	И Я устанавливаю связи между работами код "02" предшественник "01"
	И Я устанавливаю связи между работами код "03" предшественник "02"
	И Я устанавливаю связи между работами код "04" предшественник "02"
	И Я устанавливаю связи между работами код "05" предшественник "02"
	И Я устанавливаю связи между работами код "06" предшественник "04"
	И Я устанавливаю связи между работами код "07" предшественник "04"
	И Я устанавливаю связи между работами код "07" предшественник "05"
	И Я устанавливаю связи между работами код "08" предшественник "03"
	И Я устанавливаю связи между работами код "08" предшественник "05"
	И Я устанавливаю связи между работами код "09" предшественник "06"
	И Я устанавливаю связи между работами код "09" предшественник "07"
	И Я устанавливаю связи между работами код "09" предшественник "08"
	И Я устанавливаю связи между работами код "10" предшественник "09"
	И Я устанавливаю связи между работами код "11" предшественник "09"
	И Я устанавливаю связи между работами код "12" предшественник "10"
	И Я устанавливаю связи между работами код "12" предшественник "11"
	И Я устанавливаю связи между работами код "13" предшественник "12"

И я нажимаю на кнопку 'Провести и закрыть'
И я жду закрытия окна 'План работ *' в течение 20 секунд
И в таблице "Список" я выбираю текущую строку

* Инициируем расчет критического пути
	
	И я устанавливаю флаг 'Критический путь'		
	И в таблице "РаботыДЗ" я нажимаю на кнопку 'Расчет дат по графику...'
	Тогда открылось окно 'Форма расчета дат'
	И в поле 'Дата начала' я ввожу текст '07.09.2018'	
	И я нажимаю на кнопку 'Расчет'
	И я перехожу к закладке с именем "СтраницаРасчетПлана"
	И я нажимаю на кнопку 'СформироватьДиаграмму'
	И я перехожу к закладке "Дерево работ"
	И в таблице "РаботыДЗ" я нажимаю на кнопку с именем 'РаботыДЗРазвернутьВсе'

И Я проверяю установленные соответствия

Тогда Я проверяю расчет дат 0709

И я закрываю все окна клиентского приложения
