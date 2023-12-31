﻿# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA44_Прочая_активность_по_проверке

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@tree


Функциональность: Проверка кеша сценариев





Сценарий: Проверка кеша сценариев
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	//два раза перезагружаем
	* И я загружаю служебную фичу и устанавливаю настройки
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаКешаСценариев"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                                |
		| 'ДляПроверкаКешаСценариев.feature'                                            |
		| 'ДляПроверкаКешаСценариев'                                                    |
		| 'ДляПроверкаКешаСценариев'                                                    |
		| 'Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий' |
