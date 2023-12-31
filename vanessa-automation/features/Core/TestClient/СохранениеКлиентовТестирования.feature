﻿# language: ru
# encoding: utf-8
#parent uf:
@UF2_запуск_сценариев_на_выполнение
#parent ua:
@UA13_управлять_Test_clients

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839

@tree

Функционал: Сохранение клиентов тестирования

 
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Сохранение клиентов тестирования

	Дано В командном интерфейсе я выбираю 'Основная' 'Открыть vanessa automation без режима самотестирования'
	
	Когда открылось окно '*Vanessa Automation*'

	И я нажимаю на кнопку 'Развернуть все группы в настройках'
	И Пауза 1
		

	И я перехожу к закладке с именем "ГруппаНастройки"
	И из выпадающего списка с именем "ЗапрашиватьПодтверждениеПриЗакрытии" я выбираю точное значение 'Нет'
	И я перехожу к закладке с именем "ГруппаНесколькоКлиентовТестирования"
	
	И в таблице "ДанныеКлиентовТестирования" я перехожу к строке:
		| 'Имя'         |
		| 'Этот клиент' |


	И Пока в таблице "ДанныеКлиентовТестирования" количество строк ">" 1 Тогда
		И в таблице 'ДанныеКлиентовТестирования' я перехожу к последней строке
		И в таблице 'ДанныеКлиентовТестирования' я удаляю строку
	
	И пауза 1

	И я перехожу к закладке с именем "ГруппаДополнительно"
	И я перехожу к закладке с именем "ГруппаНесколькоКлиентовТестирования"

	И в таблице "ДанныеКлиентовТестирования" я перехожу к строке:
		| 'Имя'         |
		| 'Этот клиент' |

	Тогда таблица "ДанныеКлиентовТестирования" стала равной:
		| 'Имя'         |
		| 'Этот клиент' |




	И в таблице "ДанныеКлиентовТестирования" я нажимаю на кнопку с именем 'ТестКлиентСохранить'	
	
	И Я закрываю окно '*Vanessa Automation*'
