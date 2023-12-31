﻿# language: ru

@lessons

Функционал: Интерактивная справка. Открытие списка уроков.

Сценарий: Как устроена таблица клиентов тестирования.

	* Привет! В этом уроке я расскажу тебе про то, как устроена таблица клиентов тестирования. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения
		

	* Отлично. Смотри. Эти настройки находится на этой закладке.
		И Я делаю подсветку закладки VA и переход к ней "ГруппаНесколькоКлиентовТестирования" "Настройки клиентов тестирования"
		И Пауза 1
		
	* Здесь находится таблица, в которой задаются настройки для подключения клиентов тестирования
		И Я делаю подсветку элемента VA с типом "Table" "Таблица клиентов тестирования"

	* Каждая строка таблицы это набор настроек для подключения конкретного клиента тестирования.
	* Данную таблицу можно заполнить либо вручную, либо во время выполнения сценария, либо передать в json файле при запуске тестов из командной строки.
	* Первой строкой в таблице всегда будет специальная служебная строка, которая соответствует той базе, в которой запущена Vanessa Automation.
	* У этой строки есть специальная пометка. У других строк такой пометки не будет.
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияЭтотКлиент" "Признак служебной строки"


	* На этом всё, переходи к следующему уроку интерактивной справки.
	



