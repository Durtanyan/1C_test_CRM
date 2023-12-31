﻿# language: ru
# encoding: utf-8
#parent uf:
@UF1_загрузка_и_обработка_features
#parent ua:
@UA38_манипулировать_загруженными_фичами

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@tree

@NoSyncCodeCoverage

Функционал: Контекстное меню дерева тестов
 
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Выполнить сценарий с текущего шага и последующие сценарии

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ВыполнениеСценариев/ПростаяФича01"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'                                                        |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной"' |

	И я выбираю пункт контекстного меню с именем 'ДеревоТестовКонтекстноеМенюВыполнитьДанныйСценарийСТекущегоШагаСПродолжением' на элементе формы с именем "ДеревоТестов"

	И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 60 секунд
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ПростаяФича01.feature'                                               | ''        |
		| 'ПростаяФича01_1'                                                     | ''        |
		| 'ПростаяФича01'                                                       | ''        |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной"' | ''        |
		| 'ПростаяФича02'                                                       | 'Success' |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной"' | 'Success' |
		| 'ПростаяФича03'                                                       | 'Success' |
		| 'И Я запоминаю значение выражения \'3\' в переменную "ИмяПеременной"' | 'Success' |




Сценарий: Открыть фича файл в проводнике.

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ВыполнениеСценариев/ПростаяФича01"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	И я перехожу к закладке с именем "ГруппаНастройки"
	И из выпадающего списка с именем "КомандаОткрытияФичиВТекстовомРедакторе" я выбираю точное значение 'Notepad++'

	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'                                                        |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной"' |

	И я выбираю пункт контекстного меню с именем 'ДеревоТестовКонтекстноеМенюОткрытьКаталогФичи' на элементе формы с именем "ДеревоТестов"
	
	И пауза 5
	
	И я выполняю скрипт SikuliX "CloseWinExplorer"





Сценарий: Открыть фича файл в редакторе

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ВыполнениеСценариев/ПростаяФича01"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	И я перехожу к закладке с именем "ГруппаНастройки"
	И из выпадающего списка с именем "КомандаОткрытияФичиВТекстовомРедакторе" я выбираю точное значение 'Notepad++'

	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'                                                        |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной"' |

	И я выбираю пункт контекстного меню с именем 'ДеревоТестовКонтекстноеМенюПунктОткрытьФичаФайл' на элементе формы с именем "ДеревоТестов"
	
	И пауза 5
	
	И я выполняю скрипт SikuliX "CloseNotePadPlusPlus"




Сценарий: Перезагрузить и выполнить данный сценарий

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ВыполнениеСценариев/ПростаяФича01"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'  |
		| 'ПростаяФича01' |

	И я выбираю пункт контекстного меню с именем 'ДеревоТестовКонтекстноеМенюПунктВыполнитьФичу' на элементе формы с именем "ДеревоТестов"
	И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 60 секунд


	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'  |
		| 'ПростаяФича02' |
	И я выбираю пункт контекстного меню с именем 'ДеревоТестовКонтекстноеМенюПерезагрузитьИВыполнитьДанныйСценарий' на элементе формы с именем "ДеревоТестов"

	И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 60 секунд

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"


	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ПростаяФича01.feature'                                               | ''        |
		| 'ПростаяФича01_1'                                                       | ''        |
		| 'ПростаяФича01'                                                       | ''        |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной"' | ''        |
		| 'ПростаяФича02'                                                       | 'Success' |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной"' | 'Success' |
		| 'ПростаяФича03'                                                       | ''        |
		| 'И Я запоминаю значение выражения \'3\' в переменную "ИмяПеременной"' | ''        |





	


Сценарий: Выполнить всю фичу

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ВыполнениеСценариев/ПростаяФича01"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'  |
		| 'ПростаяФича01' |

	И я выбираю пункт контекстного меню с именем 'ДеревоТестовКонтекстноеМенюПунктВыполнитьФичу' на элементе формы с именем "ДеревоТестов"
	И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 60 секунд
	
	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ПростаяФича01.feature'                                               | ''        |
		| 'ПростаяФича01_1'                                                       | ''        |
		| 'ПростаяФича01'                                                       | 'Success' |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной"' | 'Success' |
		| 'ПростаяФича02'                                                       | 'Success' |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной"' | 'Success' |
		| 'ПростаяФича03'                                                       | 'Success' |
		| 'И Я запоминаю значение выражения \'3\' в переменную "ИмяПеременной"' | 'Success' |




	