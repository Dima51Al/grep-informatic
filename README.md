

# Лабораторная работа: `grep`

## Разминка

В данной лабораторной работе мы расширим наши познания в команде ```grep```, которая является мощным инструментом для поиска в текстовых файлах.

### Шаги для начала:
1. Создайте файл `example.txt`.
2. Запишите в файл несколько имен, каждое на новой строке:
   ```
   дима
   вася
   петя
   ```

3. Проверьте, какие строки содержат букву `я`. Для этого выполните команду:
   ```bash
   grep "я" example.txt
   ```

Если команда выполнена успешно, в терминале отобразятся строки из файла `example.txt`, содержащие букву `я`.

---

## Задание лабораторной работы

Теперь перейдем к более сложным заданиям. Скачайте любую книгу на ваш выбор, объем которой составляет не менее 100 000 символов. Например, можно использовать произведение **"Война и мир"** Льва Толстого.  

Скачанную книгу сохраните в текстовом файле, например, `book.txt`.

Ваша задача — написать скрипт на `bash`, который выполняет следующие действия и записывает результаты в файл `info`:

### 1. Уровень: Просто
Скрипт должен определить:
- Сколько раз в тексте встречается слово `бал`.
- Сколько слов начинаются с буквы `а`.
- Сколько слов заканчиваются на букву `а`.

### 2. Уровень: Средне
Скрипт должен определить:
- Сколько слов имеют вид `а*а`, где `*` — это произвольное количество символов (кроме пробела).

### 3. Уровень: Сложно
Скрипт должен определить:
- Сколько слов в тексте содержат больше букв `а`, чем букв `б`.

Результаты выполнения скрипта запишите в файл `info` в удобном для вас формате.

---

## Как выполнять:
### Команды для выполнения:
- Используйте команду `grep` для поиска слов и шаблонов.
- Используйте команду `wc` для подсчета строк.

### Пример для начала:
Чтобы найти, сколько раз встречается слово `бал` в тексте, выполните команду:
```bash
grep -o -w "бал" book.txt | wc -l
```



---

## Дополнительные источники

1. [StackOverflow](https://stackoverflow.com/) — ответы на сложные вопросы.
2. [Статья на Habr](https://habr.com/ru/articles/229501/) — подробно о работе команды `grep`.
3. [Google](https://www.google.com/) — здесь можно найти всё остальное.


