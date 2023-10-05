﻿# language: ru
# encoding: utf-8
#parent uf:
@UF4_Библиотека_шагов
#parent ua:
@UA5_Работать_с_контекстом_фич

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb




Функционал: Получение значений переменных в таблицах



Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой


Сценарий: Получение значений переменных в таблицах Gherkin
		
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиПеременныеВТаблицах"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной:
		| 'Имя процедуры'                | 'Статус'  |
		| ''                             | ''        |
		| ''                             | ''        |
		| ''                             | 'Success' |
		| 'ЯЗапоминаюСтрокуВПеременную'  | 'Success' |
		| 'ЯВыполняюКодВстроенногоЯзыка' | 'Success' |
		| ''                             | ''        |

	И в логе сообщений TestClient есть строка "Hello world."

