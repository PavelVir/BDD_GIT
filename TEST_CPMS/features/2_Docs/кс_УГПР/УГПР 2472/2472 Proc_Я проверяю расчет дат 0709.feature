﻿#language: ru

@tree
@exportscenarios
@IgnoreOnCIMainBuild

Функционал: Как пользователь УСП я хочу иметь возможность 
    создать эталонный УГПР для проверки расчета сетевого графика

  
Структура сценария:  Я проверяю расчет дат 0709

Когда в таблице "РаботыДЗ" я перехожу к строке:
|'Код WBS'|
|'<КодТекущейРаботы>'|
И в таблице "РаботыДЗ" поле с именем "РаботыДЗНачалоПериода" имеет значение <Начало>
И в таблице "РаботыДЗ" поле с именем "РаботыДЗКонецПериода" имеет значение <Конец>


Примеры:
|КодТекущейРаботы | Начало         | Конец       | 
|'00'             | '07.09.2018'   | '27.02.2019'|
|'01'             | '07.09.2018'   | '07.09.2018'|
|'02'             | '07.09.2018'   | '27.09.2018'|
|'03'             | '28.09.2018'   | '08.10.2018'|
|'04'             | '28.09.2018'   | '08.10.2018'|
|'05'             | '28.09.2018'   | '18.10.2018'|
|'06'             | '09.10.2018'   | '19.11.2018'|
|'07'             | '19.10.2018'   | '15.11.2018'|
|'08'             | '19.10.2018'   | '25.10.2018'|
|'09'             | '20.11.2018'   | '24.12.2018'|
|'10'             | '25.12.2018'   | '20.02.2019'|
|'11'             | '25.12.2018'   | '06.02.2019'|
|'12'             | '21.02.2019'   | '27.02.2019'|
|'13'             | '27.02.2019'   | '27.02.2019'|
 