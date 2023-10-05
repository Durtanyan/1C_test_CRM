﻿# language: ru

@lessons

Функционал: Интерактивная справка. Системные настройки

Сценарий: Системные настройки

	* Привет! В этом уроке я расскажу тебе про то, какие ещё бывают настройки. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения
		
	* Данные настройки находится тут.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройкиОсновныеПрочее' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Прочие настройки" UI Automation
			| 'Имя'                                    |
			| 'ЗагрузкаФичПриОткрытии'                 |
			| 'ЗапрашиватьПодтверждениеПриЗакрытии'    |
			| 'ПоставщикПользовательскихНастроек'      |
			| 'КомандаОткрытияФичиВТекстовомРедакторе' |


	* Эта настройка определяет нужно ли при открытии Vanessa Automation загружать и выполнять фича файл, который был открыт последним во время предыдущей рабочей сессии.
		И я делаю подсветку нескольких элементов VA с их заголовком "Загружать фичу при открытии" UI Automation
			| 'Имя'                                    |
			| 'ЗагрузкаФичПриОткрытии'                 |

	* Эта настройка определяет нужно ли задавать вопрос при попытке закрыть основную форму Vanessa Automation.
		И я делаю подсветку нескольких элементов VA с их заголовком "Вопрос при закрытии формы VA" UI Automation
			| 'Имя'                                 |
			| 'ЗапрашиватьПодтверждениеПриЗакрытии' |

	* Эта настройка указывает где хранятся общие настройки для выполнения сценариев.
		И я делаю подсветку нескольких элементов VA с их заголовком "Поставщик настроек" UI Automation
			| 'Имя'                               |
			| 'ПоставщикПользовательскихНастроек' |
	* Эта опция используется очень редко.		

	* А эта настройка определяет в каком внешнем редакторе можно будет открыть фича файл.
		И я делаю подсветку нескольких элементов VA с их заголовком "Как открыть фичу во внешнем редакторе" UI Automation
			| 'Имя'                                    |
			| 'КомандаОткрытияФичиВТекстовомРедакторе' |

	* Сейчас эта опция используется редко, так как внутри Vanessa Automation есть встроенный редактор фича файлов.

	* На этом всё, переходи к следующему уроку интерактивной справки.


