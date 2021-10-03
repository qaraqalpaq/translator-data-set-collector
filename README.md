# translator-data-set-collector
Translator dataset collector web application. 
It helps in assembling various unstructured data,
 transformed into a structured parallel corpus,
 necessary for traning translation model.

#database structure
<img src="https://ucarecdn.com/617bab66-f1cc-433a-a6e5-d4ce5c48b27b/datasetcollector3.png" />


## TASKS - API Methods

1. CRUD for all tables
2. Run regular expressions for all words in one group.
3. Pagination of words from one group.
4. After saving the completed words, save them to a file and a translation table.
5. Authentication for editing group words.
6. Change the group status of super admin only
7. Ability to save the old version


Islew prinsipi tuwrali qisqasha:

- Birinshi strukturasiz tekstler words tablega bo'lip-bo'lip saqlaniladi';
- Sol jerde frontend arqali qayta isleniledi;
- Regex qosiw ha'm olardi bir gruppa qilip, backend arqali paydalaniw imkaniyati boladi;
- Word tabledagi birdey group_id li word item lar bir gruppa dep alip qaralinadi, klientke pagination formasida azlaw ko'lemde ko'rinedi tekstler;
- Bir adam bir neshe gruppa tekstleri u'stinde islewi mu'mkin, har gruppa URI ayriqsha boladi;
- Bir neshe adam bir gruppa u'stindede isley aliwi kerek;
- Tekseriwden o'tken words ham gruppa tekstlerin statusi o'zgeritiriledi;
- statuslar created, in_process, checking, cancelled, completed boliwi mumkin.
- Tayin bolsa txt filega saqlaw imkaniyati boliwi kerek;
- Ham translation tablega export qilinip o'tkerilinedi, har para tekst ayriqsha saqlaniladi.
- tekstler bazadan o'shirilinmeydi.
- ilaji bolsa tekstlerdi bir neshe versiyada saqlaw imkaniyati bolsa(keyinshelik);
