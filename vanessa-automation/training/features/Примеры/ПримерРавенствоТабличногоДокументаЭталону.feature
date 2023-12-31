﻿# language: ru

Функциональность: Примеры, как проверить равенство табличного документа эталону

Сценарий: Примеры, как проверить равенство табличного документа эталону

	* Основной вариант
	
		Дано Табличный документ "ИмяРеквизита" равен макету "ИмяМакета"	
		Дано Табличный документ "ИмяРеквизита" равен макету "ИмяМакета" по шаблону


	* Более редкий вариант	
		
		Тогда табличный документ "РеквизитТабличныйДокумент" равен:
			| 'Значение1' | 'Значение2' |
			| 'Значение3' | '*'         |

		Тогда табличный документ "РеквизитТабличныйДокумент" равен по шаблону:
			| 'Значение1' | 'Значение2' |
			| 'Значение3' | 'Знач*ние4' |