# Статус возврата

При запуске выполнения сценариев из командной строки Vanessa Automation возвращает статус возврата в виде числа.
При этом в Json файле с параметрами запуска должны быть заданы параметры:
"ВыгружатьСтатусВыполненияСценариевВФайл": "Истина",
"ПутьКФайлуДляВыгрузкиСтатусаВыполненияСценариев": "<ПутьКФайлу>",

Возможные статусы описаны в таблице.


| Значение | Описание |
|--|--|
| 0 | Ошибок при выполнении сценариев не было.  |
| 1 | Были ошибки выполнения сценариев.  |
| 2 | Возникла ошибка в шаге контекста, либо возникла ошибка подключения клиента тестирования, либо возникла ошибка сетевого взаимодействия. Обычно это означает, что были проблемы с подключением клиента тестирования и запускающая сторона может принять решение о перезапуске теста. |
| 3 | Не было найдено ни одного сценария для выполнения. |
| 4 | Не получилось выполнить тихую установку внешней компоненты. |

