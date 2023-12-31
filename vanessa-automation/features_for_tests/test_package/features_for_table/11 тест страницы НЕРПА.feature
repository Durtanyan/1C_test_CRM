﻿#language: ru

@tree

Функционал: Тест страницы НЕРПА
Переменные:
	* СтраницаНерпа
		|'Имя'|'ПараметрНерпа_1'|'ПараметрНерпа_2'|'ПараметрНерпа_3'|'ПараметрНерпа_4'|'ПараметрНерпа_5'|'ПараметрНерпа_6'|'ПараметрНерпа_7'|'ПараметрНерпа_8'|'ПараметрНерпа_9'|'ПараметрНерпа_10'|'ПараметрНерпа_11'|'ПараметрНерпа_12'|'ПараметрНерпа_13'|'Ошибка'|
		|'ф1' |'Клапан НЕРПА'   |'100'            |'100'            |'под привод'     |''               |''               |''               |''               |''               |'Н'               |'1000'            |'УХЛ2'            |'0'               |'Размер клапана меньше допустимого'|
		|'ф2' |'Клапан НЕРПА'   |'200'            |'200'            |'под привод'     |''               |''               |''               |''               |''               |'Н'               |'1000'            |'УХЛ2'            |'0'|''|
		|'ф3' |'Клапан НЕРПА'   |'200'            |'100'            |'РУЧКА'          |''               |''               |''               |''               |''               |'Н'               |'1000'            |'УХЛ2'            |'0'|''|
		|'ф4' |'Клапан НЕРПА'   |'200'            |'100'            |'ЭПВ'            |'M'              |'230'            |''               |'V'              |''               |'Н'               |'1000'            |'УХЛ2'            |'0'               |'Для взрывозащищенных клапанов привод должен быть с ЭПВ и исполнение должно быть взрывозащищенным.'|
		|'ф5' |'Клапан НЕРПА'   |'200'            |'100'            |'ЭПВ'            |'M'              |'230'            |''               |'V'              |''               |'В'               |'1000'            |'УХЛ2'            |'0'|''|

Сценарий: Я тестирую страницу НЕРПА
	//КЛАПАН НЕРПА
	И я перехожу к закладке с именем "СтраницаНерпа"
	И для каждой строки таблицы "СтраницаНерпа" я выполняю используя колонку "Имя"
		И из выпадающего списка с именем "ПараметрНерпа_1" я выбираю точное значение '$ПараметрНерпа_1$'//'Клапан НЕРПА'
		И в поле с именем 'ПараметрНерпа_2' я ввожу текст '$ПараметрНерпа_2$'//'111 '
		И в поле с именем 'ПараметрНерпа_3' я ввожу текст '$ПараметрНерпа_3$'//'222 '
		И из выпадающего списка с именем "ПараметрНерпа_4" я выбираю точное значение '$ПараметрНерпа_4$'//'ЭПВ'
		И из выпадающего списка с именем "ПараметрНерпа_5" я выбираю точное значение '$ПараметрНерпа_5$'//'M'
		И из выпадающего списка с именем "ПараметрНерпа_6" я выбираю точное значение '$ПараметрНерпа_6$'//'230
		И из выпадающего списка с именем "ПараметрНерпа_7" я выбираю точное значение '$ПараметрНерпа_7$'//'S'
		И из выпадающего списка с именем "ПараметрНерпа_8" я выбираю точное значение '$ПараметрНерпа_8$'//'V'
		И из выпадающего списка с именем "ПараметрНерпа_9" я выбираю точное значение '$ПараметрНерпа_9$'//'К'
		И из выпадающего списка с именем "ПараметрНерпа_10" я выбираю точное значение '$ПараметрНерпа_10$'//'К'
		И из выпадающего списка с именем "ПараметрНерпа_11" я выбираю точное значение '$ПараметрНерпа_11$'//'1000'
		И из выпадающего списка с именем "ПараметрНерпа_12" я выбираю точное значение '$ПараметрНерпа_12$'//'УХЛ2'
		И из выпадающего списка с именем "ПараметрНерпа_13" я выбираю точное значение '$ПараметрНерпа_13$'//'К'
		И я нажимаю на кнопку с именем 'СформироватьСтроку'
		И я нажимаю на кнопку с именем 'ПолучитьЦену'
		И в таблице "ТЧ_СписокНомеклатуры" я активизирую поле с именем "ТЧ_СписокНомеклатурыНоменклатура"
		И я выбираю пункт контекстного меню с именем 'ТЧ_СписокНомеклатурыКонтекстноеМенюУдалить' на элементе формы с именем "ТЧ_СписокНомеклатуры"
	И я очищаю окно сообщений пользователю
	