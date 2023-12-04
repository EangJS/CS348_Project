-- DROP The Instructor Column 
DROP TABLE IF EXISTS sessions;

CREATE TABLE `sessions` 
(
    `CourseName`	VARCHAR(512) NOT NULL,
    `Section`	VARCHAR(512),
    `Type`	VARCHAR(512),
    `DayOfWeek`	VARCHAR(512),
    `PublishedStart`	VARCHAR(512),
    `PublishedEnd`	VARCHAR(512),
    `Location`	VARCHAR(512),
    `Instructor`	VARCHAR(512),
    `Email`	VARCHAR(512),
    primary key (Section)
);
INSERT INTO `sessions` VALUES ('BCHM 42200
  CS 49000CG','21888-001*
  27603-001*','Lecture','W','3:30p','5:20p','LILY G428','Kazemian, Majid (Instr)','kazemian@purdue.edu'),
	('BIOL 47800
  CS 47800','15065-001*
  15069-001*','Lecture','MWF','12:30p','1:20p','LILY 3410','Gribskov, Michael R (Instr)
Harding, Rebecca (Instr)','gribskov@purdue.edu
rharding@purdue.edu'),
	('CS 10100','11989-LE1','Lecture','TTh','noon','1:15p','STEW 314','Liu, Xiaojin (Instr)','liu218@purdue.edu'),
	('CS 15900','12808-LE6','Lecture','TTh','1:30p','2:20p','MATH 175','Rees, Maxwell C (Instr)','mcrees@purdue.edu'),
	('CS 15900','19249-LE5','Lecture','TTh','2:30p','3:20p','MATH 175','Rees, Maxwell C (Instr)','mcrees@purdue.edu'),
	('CS 15900','23897-LE1','Lecture','TTh','8:30a','9:20a','BHEE 170','Crum, William N (Instr)','wcrum@purdue.edu'),
	('CS 15900','23898-LE2','Lecture','TTh','9:30a','10:20a','BHEE 170','Crum, William N (Instr)','wcrum@purdue.edu'),
	('CS 15900','23899-LE3','Lecture','TTh','12:30p','1:20p','BHEE 170','Diyab, Eman Samy Ahmed (Instr)','ediyab@purdue.edu'),
	('CS 15900','23900-LE4','Lecture','TTh','11:30a','12:20p','BHEE 170','Diyab, Eman Samy Ahmed (Instr)','ediyab@purdue.edu'),
	('CS 17600','11998-LE1','Lecture','TTh','3:30p','4:20p','UC 114','Liu, Xiaojin (Instr)','liu218@purdue.edu'),
	('CS 17700','13126-LE1','Lecture','TTh','12:30p','1:20p','PHYS 112','Bejarano Posada, Andres M (Instr)
Conner-Strunk, Jessica Mackey (Instr)','abejara@purdue.edu
jmconner@purdue.edu'),
	('CS 17700','15483-LE2','Lecture','TTh','4:30p','5:20p','SMTH 108','Bejarano Posada, Andres M (Instr)
Conner-Strunk, Jessica Mackey (Instr)','abejara@purdue.edu
jmconner@purdue.edu'),
	('CS 18000BLK','10687-BLK','Lecture','MWF','9:30a','10:20a','CL50 224','Adams, George Bunch Iii (Instr)','gba@purdue.edu'),
	('CS 18000GLD','26043-GLD','Lecture','MWF','3:30p','4:20p','BHEE 129','Dunsmore, Hubert E (Instr)','dunsmore@purdue.edu'),
	('CS 18200','13146-LE1','Lecture','MWF','12:30p','1:20p','CL50 224','Adams, George Bunch Iii (Instr)
Makur, Anuran (Instr)','gba@purdue.edu
'),
	('CS 19300','24529-LE1','Lecture','T','5:30p','6:20p','PHYS 112','Kim, Tae Woo (Instr)
Kumar, Arman (Instr)','kim3434@purdue.edu
kumar538@purdue.edu'),
	('CS 19300','24530-LE2','Lecture','T','6:30p','7:20p','PHYS 112','Kim, Tae Woo (Instr)
Prabhakaran, Jagannath (Instr)','kim3434@purdue.edu
jprabhak@purdue.edu'),
	('CS 19300','24531-LE3','Lecture','Th','9:30a','10:20a','LILY G126','Kumar, Arman (Instr)
Sharma, Shruti (Instr)','kumar538@purdue.edu
sharm667@purdue.edu'),
	('CS 19300','24532-LE4','Lecture','Th','5:30p','6:20p','UC 114','Prabhakaran, Jagannath (Instr)
Sharma, Shruti (Instr)','jprabhak@purdue.edu
sharm667@purdue.edu'),
	('CS 21100','22931-CP1','Lecture','Th','6:00p','7:50p','LWSN 1142','Dickey, Ethan William (Instr)','dickeye@purdue.edu'),
	('CS 23500','13168-LE1','Lecture','TTh','12:30p','1:20p','SC 239','Crowe, Marta Annette (Instr)','crowe@purdue.edu'),
	('CS 23500','58437-LE2','Lecture','TTh','9:30a','10:20a','LILY 1105','Crowe, Marta Annette (Instr)','crowe@purdue.edu'),
	('CS 24000','51076-LE1','Lecture','TTh','5:30p','6:20p','WTHR 200','Jagannathan, Suresh (Instr)','suresh@cs.purdue.edu'),
	('CS 24200
  STAT 24200','18502-LE1*
  22426-001*','Lecture','MW','10:30a','11:20a','UC 114','Bergstrom, Anthony David (Instr)','bgstm@purdue.edu'),
	('CS 25000','11961-LE2','Lecture','MWF','6:30p','7:20p','WALC 1055 (Hiler Thtr)','Rodriguez-Rivera, Gustavo (Instr)','grr@purdue.edu'),
	('CS 25000','13209-LE1','Lecture','MWF','5:30p','6:20p','WALC 1055 (Hiler Thtr)','Rodriguez-Rivera, Gustavo (Instr)','grr@purdue.edu'),
	('CS 25100','12283-LE1','Lecture','MWF','5:30p','6:20p','BHEE 129','Sellke, Sarah H (Instr)','ssellke@purdue.edu'),
	('CS 25100','26787-LE2','Lecture','MWF','6:30p','7:20p','BHEE 129','Sellke, Sarah H (Instr)','ssellke@purdue.edu'),
	('CS 25200','64662-LE1','Lecture','MWF','1:30p','2:20p','UC 114','Turkstra, Jeffrey A (Instr)','jeff@purdue.edu'),
	('CS 29000AI','10832-AIB','Lecture','MW','3:30p','4:20p','LWSN 1106','Xue, Yexiang (Instr)','yexiang@purdue.edu'),
	('CS 29100','68697-LE1','Lecture','W','11:30a','12:20p','WALC 1018','Luzader, Sally L (Instr)','luzaders@purdue.edu'),
	('CS 30700','52675-LE1','Lecture','MWF','11:30a','12:20p','FRNY G140','Turkstra, Jeffrey A (Instr)','jeff@purdue.edu'),
	('CS 31100','22932-CP2','Lecture','Th','6:00p','7:50p','LWSN B151','Luo, Zhongtang (Instr)','zhtluo@purdue.edu'),
	('CS 31400','67279-LE1','Lecture','TTh','9:00a','10:15a','WTHR 104','Grama, Ananth Y (Instr)','ayg@purdue.edu'),
	('CS 33400
  ECE 30834','58534-LE1*
  59177-004*','Lecture','TTh','noon','1:15p','LWSN B155','Aliaga, Daniel G (Instr)','aliaga@purdue.edu'),
	('CS 34800','26857-LE1','Lecture','TTh','1:30p','2:45p','FRNY G140','Benotman, Hisham Ramadan (Instr)','hbenotma@purdue.edu'),
	('CS 35200','15451-LE1','Lecture','MWF','11:30a','12:20p','SC 239','Jung, Changhee (Instr)','chjung@purdue.edu'),
	('CS 35400','13241-LE1','Lecture','MWF','4:30p','5:20p','SMTH 108','Park, Kihong (Instr)','park0@purdue.edu'),
	('CS 35500','13246-LE1','Lecture','TTh','3:00p','4:15p','SMTH 118','Zikas, Vasileios (Instr)','vzikas@purdue.edu'),
	('CS 37300','11717-LE1','Lecture','MWF','9:30a','10:20a','MATH 175','Zhang, Tianyi (Instr)','tianyi@purdue.edu'),
	('CS 37300','11986-LE2','Lecture','MWF','12:30p','1:20p','WTHR 172','Khanna, Rajiv Ashu (Instr)','rajivak@purdue.edu'),
	('CS 38100','10291-LE2','Lecture','TTh','3:00p','4:15p','ARMS 1010','Grigorescu, Elena (Instr)','elena-g@purdue.edu'),
	('CS 38100','13247-LE1','Lecture','TTh','9:00a','10:15a','KRAN 140','Psomas, Christos Alexandros (Instr)','apsomas@purdue.edu'),
	('CS 39000ATA','11800-ATA','Lecture','TTh','3:00p','4:15p','GRIS 133','Valiant, Paul (Instr)','pvaliant@purdue.edu'),
	('CS 39000GIS','29603-GIS','Lecture','MWF','10:30a','11:20a','LWSN B155','Celik, Zeynel Berkay (Instr)','zcelik@purdue.edu'),
	('CS 39000WAP','26036-WAP','Lecture','MW','5:30p','6:20p','WALC 1121','Khan, Mikail H (Instr)
Setpal, Jinen Latish (Instr)','khan348@purdue.edu
jsetpal@purdue.edu'),
	('CS 39700','13251-H01','Lecture','F','10:30a','11:20a','LWSN B134','Bianchi, Antonio (Instr)',NULL),
	('CS 40800','11423-LE1','Lecture','TTh','10:30a','11:45a','LILY G126','Tan, Lin (Instr)','lintan@purdue.edu'),
	('CS 42200','21548-LE1','Lecture','TTh','6:30p','7:45p','LWSN B155','Shahbaz, Muhammad (Instr)','mshahbaz@purdue.edu'),
	('CS 42600','26875-LE1','Lecture','MWF','9:30a','10:20a','RHPH 164','Taram, Mohammadkazem (Instr)','kazem@purdue.edu'),
	('CS 43900','11988-LE1','Lecture','TTh','1:30p','2:45p','GRIS 133','Tricoche, Xavier Michel (Instr)','xmt@purdue.edu'),
	('CS 44000','11987-LE1','Lecture','MW','2:30p','3:20p','WTHR 104','Wang, Jianguo (Instr)','csjgwang@purdue.edu'),
	('CS 44800','19624-LE1','Lecture','TTh','9:00a','10:15a','LWSN B155','Bertino, Elisa (Instr)','bertino@purdue.edu'),
	('CS 47100','11746-LE1','Lecture','TTh','6:00p','7:15p','WALC 1018','Yeh, Raymond A (Instr)','rayyeh@purdue.edu'),
	('CS 47300','12510-LE1','Lecture','TTh','4:30p','5:45p','WALC 2087','Benotman, Hisham Ramadan (Instr)','hbenotma@purdue.edu'),
	('CS 49000DSC','13374-DSC','Lecture','MWF','12:30p','1:20p','GRIS 102','Bergstrom, Anthony David (Instr)','bgstm@purdue.edu'),
	('CS 49000ROB','11997-ROB','Lecture','TTh','10:30a','11:45a','GRIS 133','Qureshi, Ahmed (Instr)','ahqureshi@purdue.edu'),
	('CS 49000SWS','16146-SWS','Lecture','TTh','3:00p','4:15p','LWSN B134','Bianchi, Antonio (Instr)',NULL),
	('CS 50100','10781-LE1','Lecture','MWF','11:30a','12:20p','KNOY B033','Rego, Vernon J (Instr)','rego@purdue.edu'),
	('CS 50200','13216-LE1','Lecture','TTh','3:00p','4:15p','LWSN B151','Rompf, Tiark (Instr)',NULL),
	('CS 50300','12014-LE1','Lecture','TTh','10:30a','11:45a','LILY G420','Sousa Da Fonseca, Pedro Jose (Instr)','pfonseca@purdue.edu'),
	('CS 51000','23703-001','Lecture','MW','4:30p','5:45p','ARMS 1109','Zhang, Xiangyu (Instr)','xyzhang@purdue.edu'),
	('CS 51500','11599-LE1','Lecture','TTh','1:30p','2:45p','HAMP 2123','Gleich, David F (Instr)','dgleich@purdue.edu'),
	('CS 52600','46101-LE1','Lecture','MWF','11:30a','12:20p','KRAN G016','Garman, Christina L (Instr)','clg@purdue.edu'),
	('CS 52900','13240-LE1','Lecture','TTh','1:30p','2:45p','LWSN B151','Guo, Wenbo (Instr)','henrygwb@purdue.edu'),
	('CS 53500','37412-LE1','Lecture','MWF','10:30a','11:20a','LWSN 1106','Popescu, Voicu S (Instr)','popescu@purdue.edu'),
	('CS 53600','13281-LE1','Lecture','TTh','4:30p','5:45p','HIKS G980D','Peng, Chunyi (Instr)','chunyi@purdue.edu'),
	('CS 54100','10857-LE1','Lecture','MWF','12:30p','1:20p','LWSN B155','Aref, Walid G (Instr)','aref@cs.purdue.edu'),
	('CS 54200','11658-LE1','Lecture','TTh','9:00a','10:15a','LWSN 1106','Bhargava, Bharat Kumar (Instr)','bbshail@purdue.edu'),
	('CS 55100','10307-CLC','Lecture','TTh','4:30p','5:45p','LWSN B155','Comer, Douglas E (Instr)','comer@cs.purdue.edu'),
	('CS 55500','12526-LE1','Lecture','MWF','10:30a','11:20a','WALC 3154','Maji, Hemanta K (Instr)','hmaji@purdue.edu'),
	('CS 56000','12065-LE1','Lecture','MWF','12:30p','1:20p','LWSN 1106','Delaware, Benjamin James (Instr)','bendy@purdue.edu'),
	('CS 57100','11993-LE1','Lecture','MWF','1:30p','2:20p','SC 239','Bullins, Brian Anderson (Instr)',NULL),
	('CS 57300','11534-LE1','Lecture','MWF','1:30p','2:20p','HAMP 1144','Yin, Ming (Instr)','mingyin@purdue.edu'),
	('CS 57800','60972-LE1','Lecture','MWF','10:30a','11:20a','LILY 3118','Zhang, Ruqi (Instr)','ruqiz@purdue.edu'),
	('CS 57900','12931-LE1','Lecture','TTh','10:30a','11:45a','LWSN 1106','Pothen, Alex (Instr)','pothen@purdue.edu'),
	('CS 58000','38512-LE1','Lecture','TTh','noon','1:15p','LILY G126','Atallah, Mikhail J (Instr)
Dey, Tamal Krishna (Instr)','matallah@purdue.edu
tamaldey@purdue.edu'),
	('CS 58400','10775-LE1','Lecture','TTh','10:30a','11:45a','LWSN B134','Grigorescu, Elena (Instr)','elena-g@purdue.edu'),
	('CS 59000L','59501-CLS','Lecture','MWF','1:30p','2:20p','LWSN B134','Kihara, Daisuke (Instr)','dkihara@purdue.edu'),
	('CS 59100RS','17268-RS1','Lecture','MW','3:30p','4:20p','LWSN 1142','Aliaga, Daniel G (Instr)','aliaga@purdue.edu'),
	('CS 59100SEC','34240-SEC','Lecture','W','4:30p','5:20p','STEW 050B (STEW 052)','Zikas, Vasileios (Instr)','vzikas@purdue.edu'),
	('CS 59200CGS','11409-CGS','Lecture','MW','4:30p','5:45p','LWSN B134','Benes, Bedrich (Instr)','bbenes@purdue.edu'),
	('CS 59200HRI','11408-HRI','Lecture','TTh','9:00a','10:15a','LWSN B134','Jeong, Sooyeon (Instr)','sooyeonj@purdue.edu'),
	('CS 59200LLM','11410-LLM','Lecture','TTh','1:30p','2:45p','LWSN B134','Goldwasser, Dan (Instr)','dgoldwas@purdue.edu'),
	('CS 59200MP','13419-MP1','Lecture','W','2:30p','5:20p','WALC 3138','Bera, Aniket (Instr)','aniketbera@purdue.edu'),
	('CS 59300MLT','12066-MLT','Lecture','TTh','noon','1:15p','LWSN 1106','Hanneke, Stephen Robert (Instr)',NULL),
	('MA 51400
  CS 51400','23387-001*
  46551-LE1*','Lecture','MWF','8:30a','9:20a','UNIV 101','Dong, Suchuan (Instr)','sdong@purdue.edu'),
	('CS 17700','13109-R01','Recitation','F','12:30p','1:20p','WALC 2087','Peddireddy, Dheeraj (Instr)','dheeraj@purdue.edu'),
	('CS 17700','23801-R03','Recitation','F','4:30p','5:20p','WALC B074','Bukhari, Syed Talha (Instr)','bukhars@purdue.edu'),
	('CS 17700','23815-R04','Recitation','W','11:30a','12:20p','WALC B066','Jutras-Dube, Pascal (Instr)','pjutrasd@purdue.edu'),
	('CS 17700','58648-R02','Recitation','F','1:30p','2:20p','WALC B066','Waltz, Tanner William (Instr)','waltz9@purdue.edu'),
	('BCHM 42200
  CS 49000CG','21895-002*
  27604-002*','Laboratory','F','3:30p','5:20p','LILY G428','Kazemian, Majid (Instr)','kazemian@purdue.edu'),
	('CS 15900','12809-L26','Laboratory','Th','3:30p','5:20p','SC 231','Mundy, Kyle Edward (Instr)','kemundy@purdue.edu'),
	('CS 15900','12810-L27','Laboratory','F','11:30a','1:20p','SC G046','Arnold, Jonathan R (Instr)','arnol150@purdue.edu'),
	('CS 15900','12811-L28','Laboratory','W','3:30p','5:20p','SC 231','Hockensmith, Lindsay Rae (Instr)','lhockens@purdue.edu'),
	('CS 15900','12812-L29','Laboratory','W','3:30p','5:20p','SC 231','Smith, Delaney Kathryn (Instr)','smit4305@purdue.edu'),
	('CS 15900','12814-L31','Laboratory','W','9:30a','11:20a','SC G046','Gardner, Jack Douglas (Instr)','gardne97@purdue.edu'),
	('CS 15900','12815-L32','Laboratory','Th','9:30a','11:20a','SC 189','Davyn, Christopher (Instr)','cdavyn@purdue.edu'),
	('CS 15900','12816-L33','Laboratory','Th','11:30a','1:20p','SC 277','Wong, Aaron David (Instr)','adwong@purdue.edu'),
	('CS 15900','12817-L34','Laboratory','W','1:30p','3:20p','SC 231','Zhang, Xun (Instr)','zhan4273@purdue.edu'),
	('CS 15900','12818-L35','Laboratory','W','1:30p','3:20p','SC 231','Smith, Delaney Kathryn (Instr)','smit4305@purdue.edu'),
	('CS 15900','19250-L15','Laboratory','W','11:30a','1:20p','SC 179','Arnold, Jonathan R (Instr)','arnol150@purdue.edu'),
	('CS 15900','19254-L16','Laboratory','W','9:30a','11:20a','SC 231','Walker, Caleb Atticus (Instr)','walke653@purdue.edu'),
	('CS 15900','19257-L17','Laboratory','W','9:30a','11:20a','SC 231','Kang, Connie (Instr)','kang467@purdue.edu'),
	('CS 15900','19263-L19','Laboratory','F','1:30p','3:20p','SC 189','Talabadze, David (Instr)','dtalabad@purdue.edu'),
	('CS 15900','19264-L20','Laboratory','W','3:30p','5:20p','HAMP 3144','Schmeiser, Caitlyn Sue (Instr)','cschmeis@purdue.edu'),
	('CS 15900','19271-L21','Laboratory','W','3:30p','5:20p','HAMP 3144','Timms, Bradon Rowan (Instr)','btimms@purdue.edu'),
	('CS 15900','19298-L22','Laboratory','W','11:30a','1:20p','SC 231','Leon Vargas, Nicolas Enrique (Instr)','nleonvar@purdue.edu'),
	('CS 15900','19348-L23','Laboratory','W','11:30a','1:20p','SC 231','Epstein, Sarah Danielle (Instr)','sepstein@purdue.edu'),
	('CS 15900','23901-L01','Laboratory','W','9:30a','11:20a','SC 189','Boardley, Benjamin Chase (Instr)','bboardle@purdue.edu'),
	('CS 15900','23905-L02','Laboratory','W','3:30p','5:20p','SC 189','Carter, Nicholas Geoffrey (Instr)','ngcarter@purdue.edu'),
	('CS 15900','23908-L03','Laboratory','W','3:30p','5:20p','WTHR 114','Mccartney, Luke Patrick (Instr)','mccartnl@purdue.edu'),
	('CS 15900','23909-L04','Laboratory','W','7:30a','9:20a','SC 231','Charters, Kyra Kathryn (Instr)','charters@purdue.edu'),
	('CS 15900','23910-L05','Laboratory','W','7:30a','9:20a','SC 231','Huang, Ching-Hsiang (Instr)','huan1715@purdue.edu'),
	('CS 15900','23917-L07','Laboratory','W','7:30a','9:20a','SC 189','Bochenek, Delaney Allison (Instr)','dbochene@purdue.edu'),
	('CS 15900','23918-L08','Laboratory','F','9:30a','11:20a','SC G046','Agrawal, Shreya (Instr)','agraw202@purdue.edu'),
	('CS 15900','23933-L09','Laboratory','Th','11:30a','1:20p','SC 189','Davyn, Christopher (Instr)','cdavyn@purdue.edu'),
	('CS 15900','23934-L10','Laboratory','F','7:30a','9:20a','SC 231','Leon Vargas, Nicolas Enrique (Instr)','nleonvar@purdue.edu'),
	('CS 15900','23939-L13','Laboratory','F','9:30a','11:20a','SC 189','Robinson, Kyle Alexander (Instr)','robin489@purdue.edu'),
	('CS 15900','23940-L14','Laboratory','Th','9:30a','11:20a','LILY G428','Ghonge, Mihir Amit (Instr)','mghonge@purdue.edu'),
	('CS 15900','25579-L25','Laboratory','Th','3:30p','5:20p','SC 231','Wong, Jessica Trinity (Instr)','wongjt@purdue.edu'),
	('CS 15900','27584-L11','Laboratory','F','7:30a','9:20a','SC 231','Huang, Ching-Hsiang (Instr)','huan1715@purdue.edu'),
	('CS 17600','10009-L05','Laboratory','W','9:30a','11:20a','LWSN B131','Zhu, Han (Instr)','zhu773@purdue.edu'),
	('CS 17600','10022-L06','Laboratory','T','11:30a','1:20p','LWSN B131','Zhang, Zicong (Instr)','zhan1797@purdue.edu'),
	('CS 17600','10025-L07','Laboratory','T','9:30a','11:20a','LWSN B131','Mccoy, Jeret Daniel (Instr)','mccoy86@purdue.edu'),
	('CS 17600','10038-L08','Laboratory','Th','5:30p','7:20p','LWSN B131','Tian, Yizhou (Instr)','tian253@purdue.edu'),
	('CS 17600','10045-L09','Laboratory','T','5:30p','7:20p','LWSN B131','Tian, Yizhou (Instr)','tian253@purdue.edu'),
	('CS 17600','10049-L10','Laboratory','W','7:30p','9:20p','LWSN B131','Mccoy, Jeret Daniel (Instr)','mccoy86@purdue.edu'),
	('CS 17600','12001-L01','Laboratory','Th','1:30p','3:20p','LWSN B131','Sun, Xingpeng (Instr)','sun1223@purdue.edu'),
	('CS 17600','12002-L02','Laboratory','F','9:30a','11:20a','LWSN B131','Hu, Yiran (Instr)','hu954@purdue.edu'),
	('CS 17600','12004-L03','Laboratory','W','5:30p','7:20p','LWSN B131','Gopalakrishnan, Neeraj (Instr)','gopalak7@purdue.edu'),
	('CS 17600','12009-L04','Laboratory','W','1:30p','3:20p','LWSN B131','Zhang, Zicong (Instr)','zhan1797@purdue.edu'),
	('CS 17600','25234-001','Laboratory','T','7:30a','9:20a','LWSN B131','Anand, Mohini (Instr)','anand130@purdue.edu'),
	('CS 17700','10050-L10','Laboratory','Th','9:30a','11:20a','SC 277','Zhou, Yuan (Instr)','zhou1475@purdue.edu'),
	('CS 17700','10054-L12','Laboratory','Th','9:30a','11:20a','MTHW 301','Ismail, Alvin Agung (Instr)','ismail8@purdue.edu'),
	('CS 17700','10059-L13','Laboratory','Th','11:30a','1:20p','MTHW 301','Ismail, Alvin Agung (Instr)','ismail8@purdue.edu'),
	('CS 17700','10061-L14','Laboratory','F','1:30p','3:20p','SC 277','Ling, Lu (Instr)','ling58@purdue.edu'),
	('CS 17700','10063-L11','Laboratory','Th','1:30p','3:20p','SC 277','Jutras-Dube, Pascal (Instr)','pjutrasd@purdue.edu'),
	('CS 17700','10064-L04','Laboratory','Th','3:30p','5:20p','SC 277','Zhou, Yuan (Instr)','zhou1475@purdue.edu'),
	('CS 17700','11553-L09','Laboratory','W','11:30a','1:20p','SC 277','Patel, Dipam Naginbhai (Instr)','pate1886@purdue.edu'),
	('CS 17700','11676-L06','Laboratory','W','1:30p','3:20p','SC 277','Waltz, Tanner William (Instr)','waltz9@purdue.edu'),
	('CS 17700','11677-L07','Laboratory','W','3:30p','5:20p','SC 277','Meng, Qinglin (Instr)','meng160@purdue.edu'),
	('CS 17700','11690-L08','Laboratory','W','9:30a','11:20a','SC 277','Patel, Dipam Naginbhai (Instr)','pate1886@purdue.edu'),
	('CS 17700','12470-L02','Laboratory','T','1:30p','3:20p','SC 289','Bukhari, Syed Talha (Instr)','bukhars@purdue.edu'),
	('CS 17700','13123-L01','Laboratory','T','3:30p','5:20p','SC 289','Jutras-Dube, Pascal (Instr)','pjutrasd@purdue.edu'),
	('CS 17700','23876-L03','Laboratory','W','11:30a','1:20p','SC 289','Ling, Lu (Instr)','ling58@purdue.edu'),
	('CS 17700','23883-L05','Laboratory','F','3:30p','5:20p','SC 277','Meng, Qinglin (Instr)','meng160@purdue.edu'),
	('CS 18000BLK','10102-L20','Laboratory','T','5:30p','7:20p','LWSN B146','Zhang, Simon (Instr)','zhan4125@purdue.edu'),
	('CS 18000BLK','10706-L01','Laboratory','T','9:30a','11:20a','LWSN B146','Akil, Md Ajwad (Instr)','makil@purdue.edu'),
	('CS 18000BLK','10716-L04','Laboratory','F','11:30a','1:20p','HAAS G056','Imran, Abdullah (Instr)','imran8@purdue.edu'),
	('CS 18000BLK','10758-L06','Laboratory','W','5:30p','7:20p','HAAS G056','Bui, Hong Minh Thu (Instr)','bui35@purdue.edu'),
	('CS 18000BLK','11812-L07','Laboratory','T','11:30a','1:20p','HAAS G056','Wang, Zhaopeng (Instr)','wang4433@purdue.edu'),
	('CS 18000BLK','12218-L15','Laboratory','W','11:30a','1:20p','LWSN B146','Wu, Zhaoqing (Instr)','wu1828@purdue.edu'),
	('CS 18000BLK','16988-L05','Laboratory','W','1:30p','3:20p','HAAS G056','Zhang, Yiran (Instr)','zhan5058@purdue.edu'),
	('CS 18000BLK','22679-L08','Laboratory','Th','9:30a','11:20a','HAAS G040','Fotso-Puepi, Jason Alexander (Instr)','jfotsopu@purdue.edu'),
	('CS 18000BLK','22680-L09','Laboratory','F','1:30p','3:20p','HAAS G056','Gu, Yiyin (Instr)','gu251@purdue.edu'),
	('CS 18000BLK','22681-L10','Laboratory','F','11:30a','1:20p','LWSN B158','Lee, Dongmin (Instr)','lee4818@purdue.edu'),
	('CS 18000BLK','22682-L11','Laboratory','Th','11:30a','1:20p','LWSN B146','Mageshkumahr, Prasanna Kumar (Instr)','pmageshk@purdue.edu'),
	('CS 18000BLK','22689-L12','Laboratory','Th','5:30p','7:20p','HAAS G040','Zhang, Simon (Instr)','zhan4125@purdue.edu'),
	('CS 18000BLK','22692-L13','Laboratory','Th','3:30p','5:20p','LWSN B158','Kumarasinghe, Udesh Upalanka (Instr)','ukumaras@purdue.edu'),
	('CS 18000BLK','23246-L14','Laboratory','Th','3:30p','5:20p','LWSN B146','Lu, Minghai (Instr)','lu1074@purdue.edu'),
	('CS 18000BLK','29926-L16','Laboratory','T','5:30p','7:20p','HAAS G056','Kumarasinghe, Udesh Upalanka (Instr)','ukumaras@purdue.edu'),
	('CS 18000BLK','29927-L17','Laboratory','W','3:30p','5:20p','HAAS 257','He, Qiyang (Instr)','he615@purdue.edu'),
	('CS 18000BLK','29928-L18','Laboratory','Th','3:30p','5:20p','HAAS 257','Lee, Dongmin (Instr)','lee4818@purdue.edu'),
	('CS 18000BLK','29929-L19','Laboratory','W','11:30a','1:20p','HAAS G056','Zhang, Yiran (Instr)','zhan5058@purdue.edu'),
	('CS 18000BLK','68871-L03','Laboratory','T','11:30a','1:20p','LWSN B146','He, Qiyang (Instr)','he615@purdue.edu'),
	('CS 18000BLK','68877-L02','Laboratory','F','1:30p','3:20p','LWSN B146','Fotso-Puepi, Jason Alexander (Instr)','jfotsopu@purdue.edu'),
	('CS 18000GLD','11720-L36','Laboratory','Th','11:30a','1:20p','HAAS G056','Imran, Abdullah (Instr)','imran8@purdue.edu'),
	('CS 18000GLD','26044-L22','Laboratory','T','11:30a','1:20p','LWSN B158','Mageshkumahr, Prasanna Kumar (Instr)','pmageshk@purdue.edu'),
	('CS 18000GLD','26045-L23','Laboratory','F','1:30p','3:20p','HAAS G040','Xuan, Zhou (Instr)','xuan1@purdue.edu'),
	('CS 18000GLD','26046-L24','Laboratory','W','11:30a','1:20p','LWSN B158','Wang, Zhaopeng (Instr)','wang4433@purdue.edu'),
	('CS 18000GLD','26047-L25','Laboratory','F','9:30a','11:20a','LWSN B148','Lu, Minghai (Instr)','lu1074@purdue.edu'),
	('CS 18000GLD','26048-L26','Laboratory','Th','1:30p','3:20p','HAAS G040','Sheng, Wei (Instr)','shengw@purdue.edu'),
	('CS 18000GLD','26049-L27','Laboratory','F','11:30a','1:20p','LWSN B146','Akil, Md Ajwad (Instr)','makil@purdue.edu'),
	('CS 18000GLD','26050-L28','Laboratory','T','5:30p','7:20p','LWSN B158','Da Costa Abreu, Pedro (Instr)','pdacost@purdue.edu'),
	('CS 18000GLD','26051-L29','Laboratory','W','1:30p','3:20p','LWSN B146','Getachew, Nathaniel (Instr)','ngetach@purdue.edu'),
	('CS 18000GLD','26052-L30','Laboratory','W','1:30p','3:20p','LWSN B148','Farheen, Farhanaz (Instr)','ffarheen@purdue.edu'),
	('CS 18000GLD','26053-L31','Laboratory','W','1:30p','3:20p','LWSN B158','Vyakaranam, Sarayu (Instr)','svyakara@purdue.edu'),
	('CS 18000GLD','26054-L32','Laboratory','F','11:30a','1:20p','HAAS G040','Xuan, Zhou (Instr)','xuan1@purdue.edu'),
	('CS 18000GLD','26055-L33','Laboratory','T','3:30p','5:20p','HAAS G040','Bui, Hong Minh Thu (Instr)','bui35@purdue.edu'),
	('CS 18000GLD','26057-L34','Laboratory','W','9:30a','11:20a','LWSN B148','Wu, Zhaoqing (Instr)','wu1828@purdue.edu'),
	('CS 18000GLD','26058-L35','Laboratory','T','1:30p','3:20p','HAAS G056','Sheng, Wei (Instr)','shengw@purdue.edu'),
	('CS 18000GLD','29930-L37','Laboratory','Th','5:30p','7:20p','HAAS 257','Da Costa Abreu, Pedro (Instr)','pdacost@purdue.edu'),
	('CS 18000GLD','29937-L38','Laboratory','T','9:30a','11:20a','HAAS 257','Vyakaranam, Sarayu (Instr)','svyakara@purdue.edu'),
	('CS 18000GLD','29938-L39','Laboratory','F','1:30p','3:20p','HAAS 257','Prasanth, Diya (Instr)','dprasant@purdue.edu'),
	('CS 23500','12100-L03','Laboratory','T','1:30p','3:20p','SC G046','Anand, Amodh (Instr)
Jaynes, Lauren Diana (Instr)
Khanka, Raj Singh S (Instr)','anand133@purdue.edu
jaynesl@purdue.edu
rkhanka@purdue.edu'),
	('CS 23500','12195-L01','Laboratory','F','9:30a','11:20a','SC 277','Gliva, Kevin Clayton (Instr)
Rondot, Annie Rose Sharon (Instr)','gliva@purdue.edu
rondota@purdue.edu'),
	('CS 23500','12637-L11','Laboratory','W','1:30p','3:20p','WTHR 212','Baker, Andrew James (Instr)
Kemerer, Laura Marie (Instr)','baker660@purdue.edu
lkemerer@purdue.edu'),
	('CS 23500','12654-L12','Laboratory','T','3:30p','5:20p','MTHW 301','Bode, Elena Lisa (Instr)
Thye, Yi Ching (Instr)','ebode@purdue.edu
ythye@purdue.edu'),
	('CS 23500','12664-L13','Laboratory','W','9:30a','11:20a','MTHW 301','Jain, Krish Anil (Instr)
Kemerer, Laura Marie (Instr)','jain407@purdue.edu
lkemerer@purdue.edu'),
	('CS 23500','12667-L14','Laboratory','W','11:30a','1:20p','MTHW 301','Duggirala, Sowmya (Instr)
Jain, Krish Anil (Instr)
Kantrowitz, Steven Ross (Instr)','sduggira@purdue.edu
jain407@purdue.edu
skantrow@purdue.edu'),
	('CS 23500','12668-L15','Laboratory','W','1:30p','3:20p','MTHW 301','Chekaluk, Warren Christophe (Instr)
Coney, Macy Lynn (Instr)
Igo, Kelly Ann (Instr)','wchekalu@purdue.edu
mlconey@purdue.edu
igok@purdue.edu'),
	('CS 23500','12671-L16','Laboratory','W','3:30p','5:20p','MTHW 301','Coney, Macy Lynn (Instr)
Mehta, Eshaan Nipank (Instr)
Urbanek, Marissa Shuluo (Instr)','mlconey@purdue.edu
mehtae@purdue.edu
murbane@purdue.edu'),
	('CS 23500','12672-L17','Laboratory','F','11:30a','1:20p','SC 277','Mehta, Eshaan Nipank (Instr)
Rondot, Annie Rose Sharon (Instr)','mehtae@purdue.edu
rondota@purdue.edu'),
	('CS 23500','12675-L18','Laboratory','Th','1:30p','3:20p','MTHW 301','Jaynes, Lauren Diana (Instr)
Pettit, Donovan Alan (Instr)','jaynesl@purdue.edu
pettitd@purdue.edu'),
	('CS 23500','12677-L19','Laboratory','Th','3:30p','5:20p','MTHW 301','Jain, Deeya (Instr)
Pettit, Donovan Alan (Instr)','jain518@purdue.edu
pettitd@purdue.edu'),
	('CS 23500','12684-L20','Laboratory','F','1:30p','3:20p','MTHW 301','Chekaluk, Warren Christophe (Instr)
Nowicki, Mikayla Marjorie Nikoletti (Instr)','wchekalu@purdue.edu
mmnowick@purdue.edu'),
	('CS 23500','13189-L02','Laboratory','T','3:30p','5:20p','SC G046','Khanka, Raj Singh S (Instr)
Lewis, Michael Brandon (Instr)','rkhanka@purdue.edu
lewis609@purdue.edu'),
	('CS 23500','16490-001','Laboratory','W','3:30p','5:20p','SC G046','Dibiase, Alec Thomas (Instr)
Kantrowitz, Steven Ross (Instr)','adibiase@purdue.edu
skantrow@purdue.edu'),
	('CS 23500','16491-002','Laboratory','W','1:30p','3:20p','RHPH 316','Briggs, Andrew Richard (Instr)
Doyle, Jason Patrick (Instr)
Nowicki, Mikayla Marjorie Nikoletti (Instr)','briggs47@purdue.edu
doyle111@purdue.edu
mmnowick@purdue.edu'),
	('CS 23500','16492-003','Laboratory','W','3:30p','5:20p','RHPH 316','Doyle, Jason Patrick (Instr)
Schultze, Augustus Lynn (Instr)','doyle111@purdue.edu
schul210@purdue.edu'),
	('CS 23500','16493-004','Laboratory','W','11:30a','1:20p','SC G046','Peebles, Thomas Mujica (Instr)
Wang, Eric (Instr)','peebles@purdue.edu
wang4784@purdue.edu'),
	('CS 23500','16494-005','Laboratory','W','1:30p','3:20p','SC G046','Kempel, Samantha Lynn (Instr)
Peebles, Thomas Mujica (Instr)','kempel@purdue.edu
peebles@purdue.edu'),
	('CS 24000','10167-L16','Laboratory','T','3:30p','5:20p','HAAS 257','Koh, Yubin (Instr)','koh22@purdue.edu'),
	('CS 24000','11314-L06','Laboratory','W','1:30p','3:20p','HAAS G040','Zhang, Mutian (Instr)','zhan5048@purdue.edu'),
	('CS 24000','11356-L07','Laboratory','T','1:30p','3:20p','HAAS G040','Malik, Vineet (Instr)','malik83@purdue.edu'),
	('CS 24000','11358-L08','Laboratory','T','9:30a','11:20a','LWSN B158','Liu, Franklin (Instr)','liu2194@purdue.edu'),
	('CS 24000','11359-L09','Laboratory','T','9:30a','11:20a','HAAS G040','Smearsoll, Nathan Andrew (Instr)','nsmearso@purdue.edu'),
	('CS 24000','11360-L10','Laboratory','W','9:30a','11:20a','LWSN B146','Malik, Vineet (Instr)','malik83@purdue.edu'),
	('CS 24000','11362-L11','Laboratory','T','3:30p','5:20p','HAAS G056','Liu, Franklin (Instr)','liu2194@purdue.edu'),
	('CS 24000','11364-L12','Laboratory','Th','1:30p','3:20p','HAAS 257','Smearsoll, Nathan Andrew (Instr)','nsmearso@purdue.edu'),
	('CS 24000','11743-L13','Laboratory','T','11:30a','1:20p','HAAS 257','Quigley-Hobson, Noah Forest (Instr)','hobsonn@purdue.edu'),
	('CS 24000','11749-L14','Laboratory','Th','1:30p','3:20p','LWSN B158','Ghosh, Jasorsi (Instr)','ghosh117@purdue.edu'),
	('CS 24000','11763-L15','Laboratory','W','11:30a','1:20p','HAAS 257','Chen, Weihao (Instr)','chen4129@purdue.edu'),
	('CS 24000','12196-L01','Laboratory','T','11:30a','1:20p','HAAS G040','Chen, Weihao (Instr)','chen4129@purdue.edu'),
	('CS 24000','14268-L05','Laboratory','F','1:30p','3:20p','LWSN B158','Tunnell, Marc Alan (Instr)','mtunnell@purdue.edu'),
	('CS 24000','45910-L03','Laboratory','W','3:30p','5:20p','LWSN B146','Zhang, Mutian (Instr)','zhan5048@purdue.edu'),
	('CS 24000','48987-L02','Laboratory','F','9:30a','11:20a','HAAS G040','Tunnell, Marc Alan (Instr)','mtunnell@purdue.edu'),
	('CS 24000','51078-L04','Laboratory','F','9:30a','11:20a','LWSN B146','Koh, Yubin (Instr)','koh22@purdue.edu'),
	('CS 24200
  STAT 24200','10187-L08*
  10189-010*','Laboratory','Th','3:30p','5:20p','LWSN B131','Rahimirad, Shahab (Instr)','srahimir@purdue.edu'),
	('CS 24200
  STAT 24200','10354-L03*
  10358-004*','Laboratory','F','11:30a','1:20p','LWSN B131','Kulshrestha, Manav (Instr)','mkulshre@purdue.edu'),
	('CS 24200
  STAT 24200','12764-L05*
  12765-006*','Laboratory','W','3:30p','5:20p','LWSN B131','Sawla, Chintan K (Instr)','csawla@purdue.edu'),
	('CS 24200
  STAT 24200','12771-L07*
  12775-009*','Laboratory','T','1:30p','3:20p','LWSN B131','Sawla, Chintan K (Instr)','csawla@purdue.edu'),
	('CS 24200
  STAT 24200','12776-L06*
  12770-008*','Laboratory','Th','11:30a','1:20p','LWSN B131','Gao, Chuqing (Instr)','gao688@purdue.edu'),
	('CS 24200
  STAT 24200','18503-L01*
  22428-002*','Laboratory','W','11:30a','1:20p','LWSN B131','Ramaswami, Arvind (Instr)','ramaswa4@purdue.edu'),
	('CS 24200
  STAT 24200','18513-L02*
  22429-003*','Laboratory','F','1:30p','3:20p','LWSN B131','Kulshrestha, Manav (Instr)','mkulshre@purdue.edu'),
	('CS 24200
  STAT 24200','21656-L04*
  21657-005*','Laboratory','Th','9:30a','11:20a','LWSN B131','Ramaswami, Arvind (Instr)','ramaswa4@purdue.edu'),
	('CS 25000','10203-L17','Laboratory','W','3:30p','5:20p','LWSN B148','Dey, Sagnik (Instr)','dey26@purdue.edu'),
	('CS 25000','10205-L18','Laboratory','W','1:30p','3:20p','LWSN B160','Bare, Alan (Instr)','bare0@purdue.edu'),
	('CS 25000','10206-L19','Laboratory','Th','1:30p','3:20p','LWSN B160','Han, Ke (Instr)','han706@purdue.edu'),
	('CS 25000','10215-L20','Laboratory','T','1:30p','3:20p','LWSN B148','Aydogmus, Berk (Instr)','baydogmu@purdue.edu'),
	('CS 25000','10216-L21','Laboratory','T','5:30p','7:20p','LWSN B160','Jha, Aanya (Instr)','jha30@purdue.edu'),
	('CS 25000','10217-L22','Laboratory','F','1:30p','3:20p','LWSN B160','Karnik, Sara Sagar (Instr)','karniks@purdue.edu'),
	('CS 25000','10378-L05','Laboratory','W','11:30a','1:20p','LWSN B160','Dey, Sagnik (Instr)','dey26@purdue.edu'),
	('CS 25000','11774-L06','Laboratory','W','3:30p','5:20p','LWSN B160','Han, Ke (Instr)','han706@purdue.edu'),
	('CS 25000','11827-L07','Laboratory','F','11:30a','1:20p','LWSN B160','Dey, Sagnik (Instr)','dey26@purdue.edu'),
	('CS 25000','11853-L08','Laboratory','T','3:30p','5:20p','LWSN B148','Aydogmus, Berk (Instr)','baydogmu@purdue.edu'),
	('CS 25000','11876-L09','Laboratory','Th','9:30a','11:20a','LWSN B160','Cheeti, Akanksha (Instr)','acheeti@purdue.edu'),
	('CS 25000','11889-L10','Laboratory','Th','11:30a','1:20p','LWSN B160','Bhaskara, Rashmi (Instr)','bhaskarr@purdue.edu'),
	('CS 25000','11891-L11','Laboratory','T','11:30a','1:20p','LWSN B160','Bhaskara, Rashmi (Instr)','bhaskarr@purdue.edu'),
	('CS 25000','11963-L12','Laboratory','T','3:30p','5:20p','LWSN B160','Pandey, Sarthak (Instr)','pandey81@purdue.edu'),
	('CS 25000','11964-L13','Laboratory','F','9:30a','11:20a','LWSN B160','Cheeti, Akanksha (Instr)','acheeti@purdue.edu'),
	('CS 25000','12200-L02','Laboratory','T','1:30p','3:20p','LWSN B160','Androutsopoulos, Georgios Charalampos (Instr)','gandrout@purdue.edu'),
	('CS 25000','12201-L01','Laboratory','T','5:30p','7:20p','LWSN B148','Tang, Yueyang (Instr)','yueyang@purdue.edu'),
	('CS 25000','17256-L03','Laboratory','W','9:30a','11:20a','LWSN B160','Prasad, Akhil (Instr)','prasad67@purdue.edu'),
	('CS 25000','18274-L04','Laboratory','T','11:30a','1:20p','LWSN B148','Kaonain, Md. Shamsul (Instr)','mkaonain@purdue.edu'),
	('CS 25000','23695-001','Laboratory','F','11:30a','1:20p','LWSN B148','Guo, Ran (Instr)','guo543@purdue.edu'),
	('CS 25000','23696-002','Laboratory','Th','1:30p','3:20p','LWSN B148','Karnik, Sara Sagar (Instr)','karniks@purdue.edu'),
	('CS 25000','24292-003','Laboratory','F','1:30p','3:20p','LWSN B148','Han, Ke (Instr)','han706@purdue.edu'),
	('CS 25000','24296-004','Laboratory','W','11:30a','1:20p','LWSN B148','Bhaskara, Rashmi (Instr)','bhaskarr@purdue.edu');
INSERT INTO `sessions` VALUES ('CS 25000','25485-L14','Laboratory','Th','3:30p','5:20p','LWSN B160','Androutsopoulos, Georgios Charalampos (Instr)','gandrout@purdue.edu'),
	('CS 25000','25492-L16','Laboratory','Th','5:30p','7:20p','LWSN B160','Harvey, Kyle David (Instr)','harve106@purdue.edu'),
	('CS 25000','25493-L15','Laboratory','T','9:30a','11:20a','LWSN B160','Kaonain, Md. Shamsul (Instr)','mkaonain@purdue.edu'),
	('CS 25200','11384-L06','Laboratory','Th','1:30p','3:20p','HAAS G056','Sowards, Rebekah Anne (Instr)','rsowards@purdue.edu'),
	('CS 25200','11387-L07','Laboratory','Th','9:30a','11:20a','LWSN B158','Gao, Yifei (Instr)','gao749@purdue.edu'),
	('CS 25200','11389-L08','Laboratory','W','11:30a','1:20p','HAAS G040','Ng, Paul Pok Hym (Instr)','ng121@purdue.edu'),
	('CS 25200','12284-L01','Laboratory','Th','11:30a','1:20p','LWSN B158','Gao, Yifei (Instr)','gao749@purdue.edu'),
	('CS 25200','15226-L03','Laboratory','Th','9:30a','11:20a','HAAS G056','Liu, Congyu (Instr)','liu3101@purdue.edu'),
	('CS 25200','15229-L04','Laboratory','T','3:30p','5:20p','LWSN B158','Liu, Congyu (Instr)','liu3101@purdue.edu'),
	('CS 25200','15284-L05','Laboratory','T','1:30p','3:20p','LWSN B158','Kukunuru, Saketh (Instr)','skukunur@purdue.edu'),
	('CS 25200','54202-L02','Laboratory','W','3:30p','5:20p','HAAS G056','Deng, Haotian (Instr)','deng254@purdue.edu'),
	('CS 29000AI','10835-L01','Laboratory','F','9:30a','11:20a','HAAS G056','Nasim, Md (Instr)','mnasim@purdue.edu'),
	('CS 29000AI','10837-L02','Laboratory','Th','3:30p','5:20p','HAAS G056','Nasim, Md (Instr)','mnasim@purdue.edu'),
	('CS 44000','16126-L01','Laboratory','Th','11:30a','1:20p','LWSN B148','Liu, Shige (Instr)','liu3529@purdue.edu'),
	('CS 44000','16127-L02','Laboratory','Th','3:30p','5:20p','LWSN B148','Sun, Yunxin (Instr)','yunxin-sun@purdue.edu'),
	('CS 44000','16128-L03','Laboratory','W','5:30p','7:20p','LWSN B148','Sun, Yunxin (Instr)','yunxin-sun@purdue.edu'),
	('CS 44000','25606-L05','Laboratory','Th','9:30a','11:20a','LWSN B148','Jin, Chenzhe (Instr)','jin467@purdue.edu'),
	('CS 38003','11277-LE2','Distance Learning (Hybrid)',NULL,NULL,NULL,'ASYNC ONLINE','Balakrishnan, Sai Lakshminarayanan (Instr)','balakri3@purdue.edu'),
	('CS 38003','11344-LE1','Distance Learning (Hybrid)',NULL,NULL,NULL,NULL,'Balakrishnan, Sai Lakshminarayanan (Instr)','balakri3@purdue.edu'),
	('CS 50010Q','25772-001','Distance Learning (Purdue Online)',NULL,NULL,NULL,'ASYNC ONLINE','Turkstra, Jeffrey A (Instr)','jeff@purdue.edu'),
	('CS 50011DIST','25775-002','Distance Learning (Online)',NULL,NULL,NULL,'ASYNC ONLINE','Turkstra, Jeffrey A (Instr)','jeff@purdue.edu'),
	('CS 50011Q','25774-001','Distance Learning (Purdue Online)',NULL,NULL,NULL,'ASYNC ONLINE','Turkstra, Jeffrey A (Instr)','jeff@purdue.edu'),
	('CS 52600','28807-A01','Distance Learning (Purdue Online)',NULL,NULL,NULL,'ASYNC ONLINE','Garman, Christina L (Instr)','clg@purdue.edu'),
	('CS 52900','11488-A01','Distance Learning (Purdue Online)',NULL,NULL,NULL,NULL,'Guo, Wenbo (Instr)','henrygwb@purdue.edu'),
	('CS 18300','13150-PP1','Experiential',NULL,NULL,NULL,NULL,'Obrien, Lori J (Instr)','ljobrien@purdue.edu'),
	('CS 18400','13151-PP2','Experiential',NULL,NULL,NULL,NULL,'Obrien, Lori J (Instr)','ljobrien@purdue.edu'),
	('CS 28400','13217-PP3','Experiential',NULL,NULL,NULL,NULL,'Obrien, Lori J (Instr)','ljobrien@purdue.edu'),
	('CS 28401','64108-PPT','Experiential',NULL,NULL,NULL,NULL,'Obrien, Lori J (Instr)','ljobrien@purdue.edu'),
	('CS 38600','13248-PP4','Experiential',NULL,NULL,NULL,NULL,'Obrien, Lori J (Instr)','ljobrien@purdue.edu'),
	('CS 48700','13259-PP5','Experiential',NULL,NULL,NULL,NULL,'Obrien, Lori J (Instr)','ljobrien@purdue.edu'),
	('CS 59799','10311-018','Experiential',NULL,NULL,NULL,NULL,NULL,NULL),
	('CS 59799','10313-019','Experiential',NULL,NULL,NULL,NULL,NULL,NULL),
	('CS 59799','10318-020','Experiential',NULL,NULL,NULL,NULL,NULL,NULL),
	('CS 59799','22702-006','Experiential',NULL,NULL,NULL,NULL,'Gleich, David F (Instr)','dgleich@purdue.edu'),
	('CS 59799','23199-001','Experiential',NULL,NULL,NULL,NULL,'Li, Ninghui (Instr)','lin@purdue.edu'),
	('CS 59799','23205-002','Experiential',NULL,NULL,NULL,NULL,'Drineas, Petros S (Instr)','pdrineas@purdue.edu'),
	('CS 59799','23574-003','Experiential',NULL,NULL,NULL,NULL,'Bhargava, Bharat Kumar (Instr)','bbshail@purdue.edu'),
	('CS 59799','23620-007','Experiential',NULL,NULL,NULL,NULL,'Zhang, Xiangyu (Instr)','xyzhang@purdue.edu'),
	('CS 59799','23941-008','Experiential',NULL,NULL,NULL,NULL,'Kihara, Daisuke (Instr)','dkihara@purdue.edu'),
	('CS 59799','24285-004','Experiential',NULL,NULL,NULL,NULL,'Bingham, Clifton W (Instr)','clifton@cs.purdue.edu'),
	('CS 59799','24744-009','Experiential',NULL,NULL,NULL,NULL,'Celik, Zeynel Berkay (Instr)','zcelik@purdue.edu'),
	('CS 59799','27772-010','Experiential',NULL,NULL,NULL,NULL,'Benes, Bedrich (Instr)','bbenes@purdue.edu'),
	('CS 59799','30306-011','Experiential',NULL,NULL,NULL,NULL,'Rompf, Tiark (Instr)',NULL),
	('CS 59799','30397-012','Experiential',NULL,NULL,NULL,NULL,'Bertino, Elisa (Instr)','bertino@purdue.edu'),
	('CS 59799','30402-013','Experiential',NULL,NULL,NULL,NULL,'Delaware, Benjamin James (Instr)','bendy@purdue.edu'),
	('CS 59799','30403-014','Experiential',NULL,NULL,NULL,NULL,'Felisberto Martins Ribeiro, Bruno (Instr)','ribeirob@purdue.edu'),
	('CS 59799','30834-015','Experiential',NULL,NULL,NULL,NULL,'Fahmy, Sonia A (Instr)','fahmy@purdue.edu'),
	('CS 59799','30835-016','Experiential',NULL,NULL,NULL,NULL,'Zhang, Tianyi (Instr)','tianyi@purdue.edu'),
	('CS 59799','30836-017','Experiential',NULL,NULL,NULL,NULL,'Yin, Ming (Instr)','mingyin@purdue.edu'),
	('CS 69800','10320-090','Research',NULL,NULL,NULL,NULL,'Shahbaz, Muhammad (Instr)','mshahbaz@purdue.edu'),
	('CS 69800','10321-091','Research',NULL,NULL,NULL,NULL,'Taram, Mohammadkazem (Instr)','kazem@purdue.edu'),
	('CS 69800','10323-092','Research',NULL,NULL,NULL,NULL,'Maji, Hemanta K (Instr)','hmaji@purdue.edu'),
	('CS 69800','10337-093','Research',NULL,NULL,NULL,NULL,NULL,NULL),
	('CS 69800','10353-094','Research',NULL,NULL,NULL,NULL,NULL,NULL),
	('CS 69800','13305-003','Research',NULL,NULL,NULL,NULL,'Atallah, Mikhail J (Instr)','matallah@purdue.edu'),
	('CS 69800','13307-005','Research',NULL,NULL,NULL,NULL,'Bertino, Elisa (Instr)','bertino@purdue.edu'),
	('CS 69800','13308-006','Research',NULL,NULL,NULL,NULL,'Spafford, Eugene H (Instr)','spaf@purdue.edu'),
	('CS 69800','13310-008','Research',NULL,NULL,NULL,NULL,'Neville, Jennifer L (Instr)','neville@purdue.edu'),
	('CS 69800','13311-009','Research',NULL,NULL,NULL,NULL,'Grama, Ananth Y (Instr)','ayg@purdue.edu'),
	('CS 69800','13312-010','Research',NULL,NULL,NULL,NULL,'Li, Zhiyuan (Instr)','zhiyuanli@purdue.edu'),
	('CS 69800','13315-013','Research',NULL,NULL,NULL,NULL,'Xu, Dongyan (Instr)','dxu@cs.purdue.edu'),
	('CS 69800','13316-014','Research',NULL,NULL,NULL,NULL,'Jagannathan, Suresh (Instr)','suresh@cs.purdue.edu'),
	('CS 69800','13318-016','Research',NULL,NULL,NULL,NULL,'Aliaga, Daniel G (Instr)','aliaga@purdue.edu'),
	('CS 69800','13319-017','Research',NULL,NULL,NULL,NULL,'Kihara, Daisuke (Instr)','dkihara@purdue.edu'),
	('CS 69800','13320-018','Research',NULL,NULL,NULL,NULL,'Li, Ninghui (Instr)','lin@purdue.edu'),
	('CS 69800','13398-074','Research',NULL,NULL,NULL,NULL,'Goldwasser, Dan (Instr)','dgoldwas@purdue.edu'),
	('CS 69800','16136-084','Research',NULL,NULL,NULL,NULL,'Hanneke, Stephen Robert (Instr)',NULL),
	('CS 69800','16141-085','Research',NULL,NULL,NULL,NULL,'Bianchi, Antonio (Instr)',NULL),
	('CS 69800','20554-076','Research',NULL,NULL,NULL,NULL,'Honorio Carrillo, Jean F (Instr)','jhonorio@purdue.edu'),
	('CS 69800','21133-077','Research',NULL,NULL,NULL,NULL,'Kate, Aniket Pundlik (Instr)','aniket@purdue.edu'),
	('CS 69800','21324-078','Research',NULL,NULL,NULL,NULL,'Drineas, Petros S (Instr)','pdrineas@purdue.edu'),
	('CS 69800','21741-086','Research',NULL,NULL,NULL,NULL,'Jung, Changhee (Instr)','chjung@purdue.edu'),
	('CS 69800','21742-087','Research',NULL,NULL,NULL,NULL,'Qureshi, Ahmed (Instr)','ahqureshi@purdue.edu'),
	('CS 69800','21881-082','Research',NULL,NULL,NULL,NULL,'Felisberto Martins Ribeiro, Bruno (Instr)','ribeirob@purdue.edu'),
	('CS 69800','21944-079','Research',NULL,NULL,NULL,NULL,'Payer, Mathias (Instr)','mpayer@purdue.edu'),
	('CS 69800','22040-080','Research',NULL,NULL,NULL,NULL,'Rompf, Tiark (Instr)',NULL),
	('CS 69800','23953-083','Research',NULL,NULL,NULL,NULL,'Peng, Chunyi (Instr)','chunyi@purdue.edu'),
	('CS 69800','24015-081','Research',NULL,NULL,NULL,NULL,'Blocki, Jeremiah Martin (Instr)','jblocki@purdue.edu'),
	('CS 69800','31050-088','Research',NULL,NULL,NULL,NULL,'Quanrud, Kent Richard (Instr)','krq@purdue.edu'),
	('CS 69800','31051-089','Research',NULL,NULL,NULL,NULL,'Bera, Aniket (Instr)','aniketbera@purdue.edu'),
	('CS 69800','34206-021','Research',NULL,NULL,NULL,NULL,NULL,NULL),
	('CS 69800','34969-024','Research',NULL,NULL,NULL,NULL,'Aref, Walid G (Instr)','aref@cs.purdue.edu'),
	('CS 69800','34990-025','Research',NULL,NULL,NULL,NULL,'Bhargava, Bharat Kumar (Instr)','bbshail@purdue.edu'),
	('CS 69800','35198-036','Research',NULL,NULL,NULL,NULL,'Prabhakar, Sunil K (Instr)','sunil@purdue.edu'),
	('CS 69800','35367-037','Research',NULL,NULL,NULL,NULL,NULL,NULL),
	('CS 69800','35376-038','Research',NULL,NULL,NULL,NULL,'Rego, Vernon J (Instr)','rego@purdue.edu'),
	('CS 69800','35399-039','Research',NULL,NULL,NULL,NULL,'Tricoche, Xavier Michel (Instr)','xmt@purdue.edu'),
	('CS 69800','35812-040','Research',NULL,NULL,NULL,NULL,'Pothen, Alex (Instr)','pothen@purdue.edu'),
	('CS 69800','39194-030','Research',NULL,NULL,NULL,NULL,'Bingham, Clifton W (Instr)','clifton@cs.purdue.edu'),
	('CS 69800','40856-049','Research',NULL,NULL,NULL,NULL,'Comer, Douglas E (Instr)','comer@cs.purdue.edu'),
	('CS 69800','40924-050','Research',NULL,NULL,NULL,NULL,'Dunsmore, Hubert E (Instr)','dunsmore@purdue.edu'),
	('CS 69800','40951-051','Research',NULL,NULL,NULL,NULL,'Park, Kihong (Instr)','park0@purdue.edu'),
	('CS 69800','40954-061','Research',NULL,NULL,NULL,NULL,'Kais, Sabre (Instr)','kais@purdue.edu'),
	('CS 69800','48862-062','Research',NULL,NULL,NULL,NULL,'Popescu, Voicu S (Instr)','popescu@purdue.edu'),
	('CS 69800','50116-065','Research',NULL,NULL,NULL,NULL,'Fahmy, Sonia A (Instr)','fahmy@purdue.edu'),
	('CS 69800','55850-066','Research',NULL,NULL,NULL,NULL,'Gleich, David F (Instr)','dgleich@purdue.edu'),
	('CS 69800','59440-070','Research',NULL,NULL,NULL,NULL,'Szpankowski, Wojciech (Instr)','szpan@purdue.edu'),
	('CS 69800','65903-071','Research',NULL,NULL,NULL,NULL,'Grigorescu, Elena (Instr)','elena-g@purdue.edu'),
	('CS 69800','65987-072','Research',NULL,NULL,NULL,NULL,'Zhang, Xiangyu (Instr)','xyzhang@purdue.edu'),
	('CS 69900','10379-115','Research',NULL,NULL,NULL,NULL,'Zhang, Ruqi (Instr)','ruqiz@purdue.edu'),
	('CS 69900','10381-116','Research',NULL,NULL,NULL,NULL,'Taram, Mohammadkazem (Instr)','kazem@purdue.edu'),
	('CS 69900','10383-117','Research',NULL,NULL,NULL,NULL,'Valiant, Paul (Instr)','pvaliant@purdue.edu'),
	('CS 69900','10384-118','Research',NULL,NULL,NULL,NULL,'Jeong, Sooyeon (Instr)','sooyeonj@purdue.edu'),
	('CS 69900','10385-119','Research',NULL,NULL,NULL,NULL,'Guo, Wenbo (Instr)','henrygwb@purdue.edu'),
	('CS 69900','10386-120','Research',NULL,NULL,NULL,NULL,NULL,NULL),
	('CS 69900','10389-121','Research',NULL,NULL,NULL,NULL,NULL,NULL),
	('CS 69900','10390-122','Research',NULL,NULL,NULL,NULL,NULL,NULL),
	('CS 69900','12805-123','Research',NULL,NULL,NULL,NULL,NULL,NULL),
	('CS 69900','12806-124','Research',NULL,NULL,NULL,NULL,NULL,NULL),
	('CS 69900','12807-125','Research',NULL,NULL,NULL,NULL,NULL,NULL),
	('CS 69900','12871-058','Research',NULL,NULL,NULL,NULL,'Rompf, Tiark (Instr)',NULL),
	('CS 69900','13324-003','Research',NULL,NULL,NULL,NULL,'Rego, Vernon J (Instr)','rego@purdue.edu'),
	('CS 69900','13326-005','Research',NULL,NULL,NULL,NULL,'Atallah, Mikhail J (Instr)','matallah@purdue.edu'),
	('CS 69900','13327-006','Research',NULL,NULL,NULL,NULL,'Szpankowski, Wojciech (Instr)','szpan@purdue.edu'),
	('CS 69900','13329-008','Research',NULL,NULL,NULL,NULL,'Bhargava, Bharat Kumar (Instr)','bbshail@purdue.edu'),
	('CS 69900','13330-009','Research',NULL,NULL,NULL,NULL,'Zhang, Xiangyu (Instr)','xyzhang@purdue.edu'),
	('CS 69900','13331-010','Research',NULL,NULL,NULL,NULL,'Bertino, Elisa (Instr)','bertino@purdue.edu'),
	('CS 69900','13333-012','Research',NULL,NULL,NULL,NULL,'Sacks, Elisha P (Instr)','eps@purdue.edu'),
	('CS 69900','13335-014','Research',NULL,NULL,NULL,NULL,'Neville, Jennifer L (Instr)','neville@purdue.edu'),
	('CS 69900','13336-015','Research',NULL,NULL,NULL,NULL,'Grama, Ananth Y (Instr)','ayg@purdue.edu'),
	('CS 69900','13337-016','Research',NULL,NULL,NULL,NULL,'Park, Kihong (Instr)','park0@purdue.edu'),
	('CS 69900','13339-018','Research',NULL,NULL,NULL,NULL,'Li, Zhiyuan (Instr)','zhiyuanli@purdue.edu'),
	('CS 69900','13341-020','Research',NULL,NULL,NULL,NULL,'Prabhakar, Sunil K (Instr)','sunil@purdue.edu'),
	('CS 69900','13342-021','Research',NULL,NULL,NULL,NULL,'Aref, Walid G (Instr)','aref@cs.purdue.edu'),
	('CS 69900','13343-022','Research',NULL,NULL,NULL,NULL,'Fahmy, Sonia A (Instr)','fahmy@purdue.edu'),
	('CS 69900','13345-024','Research',NULL,NULL,NULL,NULL,'Bingham, Clifton W (Instr)','clifton@cs.purdue.edu'),
	('CS 69900','13346-025','Research',NULL,NULL,NULL,NULL,'Popescu, Voicu S (Instr)','popescu@purdue.edu'),
	('CS 69900','13347-026','Research',NULL,NULL,NULL,NULL,'Xu, Dongyan (Instr)','dxu@cs.purdue.edu'),
	('CS 69900','13348-027','Research',NULL,NULL,NULL,NULL,'Jagannathan, Suresh (Instr)','suresh@cs.purdue.edu'),
	('CS 69900','13350-029','Research',NULL,NULL,NULL,NULL,'Aliaga, Daniel G (Instr)','aliaga@purdue.edu'),
	('CS 69900','13351-030','Research',NULL,NULL,NULL,NULL,'Kihara, Daisuke (Instr)','dkihara@purdue.edu'),
	('CS 69900','13352-031','Research',NULL,NULL,NULL,NULL,'Li, Ninghui (Instr)','lin@purdue.edu'),
	('CS 69900','16114-100','Research',NULL,NULL,NULL,NULL,'Khanna, Rajiv Ashu (Instr)','rajivak@purdue.edu'),
	('CS 69900','16116-101','Research',NULL,NULL,NULL,NULL,'Zhang, Tianyi (Instr)','tianyi@purdue.edu'),
	('CS 69900','16117-102','Research',NULL,NULL,NULL,NULL,'Shahbaz, Muhammad (Instr)','mshahbaz@purdue.edu'),
	('CS 69900','16118-103','Research',NULL,NULL,NULL,NULL,'Qureshi, Ahmed (Instr)','ahqureshi@purdue.edu'),
	('CS 69900','16119-104','Research',NULL,NULL,NULL,NULL,'Zikas, Vasileios (Instr)','vzikas@purdue.edu'),
	('CS 69900','16120-105','Research',NULL,NULL,NULL,NULL,'Zhang, Yongle (Instr)','yonglezh@purdue.edu'),
	('CS 69900','16121-106','Research',NULL,NULL,NULL,NULL,'Makur, Anuran (Instr)',NULL),
	('CS 69900','16122-107','Research',NULL,NULL,NULL,NULL,'Qian, Xuehai (Instr)','qian214@purdue.edu'),
	('CS 69900','16123-108','Research',NULL,NULL,NULL,NULL,'Yeh, Raymond A (Instr)','rayyeh@purdue.edu'),
	('CS 69900','16124-109','Research',NULL,NULL,NULL,NULL,'Kulkarni, Milind (Instr)','milind@purdue.edu'),
	('CS 69900','18185-060','Research',NULL,NULL,NULL,NULL,'Goldwasser, Dan (Instr)','dgoldwas@purdue.edu'),
	('CS 69900','18204-061','Research',NULL,NULL,NULL,NULL,'Kate, Aniket Pundlik (Instr)','aniket@purdue.edu'),
	('CS 69900','18913-062','Research',NULL,NULL,NULL,NULL,'Dunsmore, Hubert E (Instr)','dunsmore@purdue.edu'),
	('CS 69900','18930-063','Research',NULL,NULL,NULL,NULL,'Felisberto Martins Ribeiro, Bruno (Instr)','ribeirob@purdue.edu'),
	('CS 69900','19733-065','Research',NULL,NULL,NULL,NULL,'Bareinboim, Elias (Instr)','eb@purdue.edu'),
	('CS 69900','19922-066','Research',NULL,NULL,NULL,NULL,'Zhang, Yiying (Instr)','yiying@purdue.edu'),
	('CS 69900','19931-067','Research',NULL,NULL,NULL,NULL,'Honorio Carrillo, Jean F (Instr)','jhonorio@purdue.edu'),
	('CS 69900','20021-075','Research',NULL,NULL,NULL,NULL,'Samanta, Roopsha (Instr)','roopsha@purdue.edu'),
	('CS 69900','20170-068','Research',NULL,NULL,NULL,NULL,'Drineas, Petros S (Instr)','pdrineas@purdue.edu'),
	('CS 69900','20213-069','Research',NULL,NULL,NULL,NULL,'Blocki, Jeremiah Martin (Instr)','jblocki@purdue.edu'),
	('CS 69900','20240-071','Research',NULL,NULL,NULL,NULL,'Maji, Hemanta K (Instr)','hmaji@purdue.edu'),
	('CS 69900','20365-072','Research',NULL,NULL,NULL,NULL,'Basu, Saugata (Instr)',NULL),
	('CS 69900','22279-078','Research',NULL,NULL,NULL,NULL,'Peng, Chunyi (Instr)','chunyi@purdue.edu'),
	('CS 69900','23031-080','Research',NULL,NULL,NULL,NULL,'Delaware, Benjamin James (Instr)','bendy@purdue.edu'),
	('CS 69900','23651-081','Research',NULL,NULL,NULL,NULL,'Garman, Christina L (Instr)','clg@purdue.edu'),
	('CS 69900','23752-088','Research',NULL,NULL,NULL,NULL,'Xue, Yexiang (Instr)','yexiang@purdue.edu'),
	('CS 69900','23814-082','Research',NULL,NULL,NULL,NULL,'Kazemian, Majid (Instr)','kazemian@purdue.edu'),
	('CS 69900','24219-084','Research',NULL,NULL,NULL,NULL,'Yin, Ming (Instr)','mingyin@purdue.edu'),
	('CS 69900','24286-089','Research',NULL,NULL,NULL,NULL,'Jung, Changhee (Instr)','chjung@purdue.edu'),
	('CS 69900','24287-090','Research',NULL,NULL,NULL,NULL,'Sousa Da Fonseca, Pedro Jose (Instr)','pfonseca@purdue.edu'),
	('CS 69900','24363-091','Research',NULL,NULL,NULL,NULL,'Celik, Zeynel Berkay (Instr)','zcelik@purdue.edu'),
	('CS 69900','24476-087','Research',NULL,NULL,NULL,NULL,'Rao, Sanjay G (Instr)','sanjay@purdue.edu'),
	('CS 69900','24614-092','Research',NULL,NULL,NULL,NULL,'Bianchi, Antonio (Instr)',NULL),
	('CS 69900','24617-093','Research',NULL,NULL,NULL,NULL,'Tian, Jing (Instr)','daveti@purdue.edu'),
	('CS 69900','24667-094','Research',NULL,NULL,NULL,NULL,'Tan, Lin (Instr)','lintan@purdue.edu'),
	('CS 69900','26325-095','Research',NULL,NULL,NULL,NULL,'Benes, Bedrich (Instr)','bbenes@purdue.edu'),
	('CS 69900','26333-096','Research',NULL,NULL,NULL,NULL,'Dey, Tamal Krishna (Instr)','tamaldey@purdue.edu'),
	('CS 69900','27229-097','Research',NULL,NULL,NULL,NULL,'Li, Pan (Instr)','panli@purdue.edu'),
	('CS 69900','28052-098','Research',NULL,NULL,NULL,NULL,'Wang, Jianguo (Instr)','csjgwang@purdue.edu'),
	('CS 69900','28055-099','Research',NULL,NULL,NULL,NULL,'Branzei, Simina (Instr)','simina@purdue.edu'),
	('CS 69900','30968-110','Research',NULL,NULL,NULL,NULL,'Hanneke, Stephen Robert (Instr)',NULL),
	('CS 69900','30969-111','Research',NULL,NULL,NULL,NULL,'Psomas, Christos Alexandros (Instr)','apsomas@purdue.edu'),
	('CS 69900','30970-112','Research',NULL,NULL,NULL,NULL,'Bera, Aniket (Instr)','aniketbera@purdue.edu'),
	('CS 69900','31052-113','Research',NULL,NULL,NULL,NULL,'Bullins, Brian Anderson (Instr)',NULL),
	('CS 69900','31053-114','Research',NULL,NULL,NULL,NULL,'Delp, Edward J Iii (Instr)','ace@purdue.edu'),
	('CS 69900','40594-036','Research',NULL,NULL,NULL,NULL,'Tricoche, Xavier Michel (Instr)','xmt@purdue.edu'),
	('CS 69900','49497-041','Research',NULL,NULL,NULL,NULL,'Bagchi, Saurabh (Instr)','sbagchi@purdue.edu'),
	('CS 69900','53985-043','Research',NULL,NULL,NULL,NULL,'Pothen, Alex (Instr)','pothen@purdue.edu'),
	('CS 69900','54345-044','Research',NULL,NULL,NULL,NULL,'Spafford, Eugene H (Instr)','spaf@purdue.edu'),
	('CS 69900','55365-045','Research',NULL,NULL,NULL,NULL,'Kais, Sabre (Instr)','kais@purdue.edu'),
	('CS 69900','56109-048','Research',NULL,NULL,NULL,NULL,'Hambrusch, Susanne E (Instr)','seh@purdue.edu'),
	('CS 69900','61018-051','Research',NULL,NULL,NULL,NULL,'Gleich, David F (Instr)','dgleich@purdue.edu'),
	('CS 69900','65995-054','Research',NULL,NULL,NULL,NULL,'Grigorescu, Elena (Instr)','elena-g@purdue.edu'),
	('CS 69900','66087-055','Research',NULL,NULL,NULL,NULL,NULL,NULL),
	('CS 69900','66290-056','Research',NULL,NULL,NULL,NULL,'Comer, Douglas E (Instr)','comer@cs.purdue.edu'),
	('CS 29000ZA','26176-001','Individual Study',NULL,NULL,NULL,NULL,'Bejarano Posada, Andres M','abejara@purdue.edu'),
	('CS 29000ZB','26497-002','Individual Study',NULL,NULL,NULL,NULL,'Bejarano Posada, Andres M','abejara@purdue.edu'),
	('CS 39000ZA','24282-001','Individual Study',NULL,NULL,NULL,NULL,'Rodriguez-Rivera, Gustavo','grr@purdue.edu'),
	('CS 39000ZB','24633-002','Individual Study',NULL,NULL,NULL,NULL,'Bera, Aniket','aniketbera@purdue.edu'),
	('CS 39000ZC','26177-003','Individual Study',NULL,NULL,NULL,NULL,'Bejarano Posada, Andres M','abejara@purdue.edu'),
	('CS 39000ZE','26363-004','Individual Study',NULL,NULL,NULL,NULL,'Bejarano Posada, Andres M','abejara@purdue.edu'),
	('CS 39000ZF','26661-005','Individual Study',NULL,NULL,NULL,NULL,'Bejarano Posada, Andres M','abejara@purdue.edu'),
	('CS 39000ZG','27002-006','Individual Study',NULL,NULL,NULL,NULL,'Rodriguez-Rivera, Gustavo','grr@purdue.edu'),
	('CS 39000ZH','27081-007','Individual Study',NULL,NULL,NULL,NULL,'Bejarano Posada, Andres M','abejara@purdue.edu'),
	('CS 40700','11750-SEP','Individual Study',NULL,NULL,NULL,NULL,'Dunsmore, Hubert E (Instr)','dunsmore@purdue.edu'),
	('CS 49000ZA','23923-004','Individual Study',NULL,NULL,NULL,NULL,'Comer, Douglas E','comer@cs.purdue.edu'),
	('CS 49000ZB','23993-005','Individual Study',NULL,NULL,NULL,NULL,'Xue, Yexiang','yexiang@purdue.edu'),
	('CS 49000ZB','26962-013','Individual Study',NULL,NULL,NULL,NULL,'Jeong, Sooyeon','sooyeonj@purdue.edu'),
	('CS 49000ZC','25817-006','Individual Study',NULL,NULL,NULL,NULL,'Comer, Douglas E (Instr)','comer@cs.purdue.edu'),
	('CS 49000ZD','25872-007','Individual Study',NULL,NULL,NULL,NULL,'Shahbaz, Muhammad','mshahbaz@purdue.edu'),
	('CS 49000ZE','25898-008','Individual Study',NULL,NULL,NULL,NULL,'Zhang, Tianyi','tianyi@purdue.edu'),
	('CS 49000ZF','26077-009','Individual Study',NULL,NULL,NULL,NULL,'Yeh, Raymond A','rayyeh@purdue.edu'),
	('CS 49000ZG','26169-010','Individual Study',NULL,NULL,NULL,NULL,'Bejarano Posada, Andres M','abejara@purdue.edu'),
	('CS 49000ZH','26645-011','Individual Study',NULL,NULL,NULL,NULL,'Bejarano Posada, Andres M','abejara@purdue.edu'),
	('CS 49000ZI','26660-012','Individual Study',NULL,NULL,NULL,NULL,'Aref, Walid G','aref@cs.purdue.edu'),
	('CS 49000ZJ','27077-014','Individual Study',NULL,NULL,NULL,NULL,'Bejarano Posada, Andres M','abejara@purdue.edu'),
	('CS 49000ZK','27147-015','Individual Study',NULL,NULL,NULL,NULL,'Bejarano Posada, Andres M','abejara@purdue.edu'),
	('CS 49000ZL','27355-016','Individual Study',NULL,NULL,NULL,NULL,'Shahbaz, Muhammad','mshahbaz@purdue.edu'),
	('CS 49000ZM','27408-017','Individual Study',NULL,NULL,NULL,NULL,'Xue, Yexiang','yexiang@purdue.edu'),
	('CS 49000ZN','27410-018','Individual Study',NULL,NULL,NULL,NULL,'Jeong, Sooyeon','sooyeonj@purdue.edu'),
	('CS 49700','13268-H01','Individual Study',NULL,NULL,NULL,NULL,'Sousa Da Fonseca, Pedro Jose (Instr)','pfonseca@purdue.edu'),
	('CS 59000ZA','22466-001','Individual Study',NULL,NULL,NULL,NULL,'Comer, Douglas E','comer@cs.purdue.edu'),
	('CS 59000ZB','24899-002','Individual Study',NULL,NULL,NULL,NULL,'Zhang, Ruqi','ruqiz@purdue.edu'),
	('CS 59000ZC','25508-003','Individual Study',NULL,NULL,NULL,NULL,'Celik, Zeynel Berkay','zcelik@purdue.edu'),
	('CS 59000ZD','25808-004','Individual Study',NULL,NULL,NULL,NULL,'Zhang, Yongle','yonglezh@purdue.edu'),
	('CS 59000ZE','26162-005','Individual Study',NULL,NULL,NULL,NULL,'Khanna, Rajiv Ashu','rajivak@purdue.edu'),
	('CS 59000ZF','26171-006','Individual Study',NULL,NULL,NULL,NULL,'Qureshi, Ahmed','ahqureshi@purdue.edu'),
	('CS 59000ZG','26286-007','Individual Study',NULL,NULL,NULL,NULL,'Qureshi, Ahmed','ahqureshi@purdue.edu'),
	('CS 59000ZH','26300-008','Individual Study',NULL,NULL,NULL,NULL,'Ward, Mark Daniel','mdw@purdue.edu'),
	('CS 59000ZI','26394-009','Individual Study',NULL,NULL,NULL,NULL,'Ward, Mark Daniel','mdw@purdue.edu'),
	('CS 59000ZJ','26546-010','Individual Study',NULL,NULL,NULL,NULL,'Ward, Mark Daniel','mdw@purdue.edu'),
	('CS 59000ZK','26628-011','Individual Study',NULL,NULL,NULL,NULL,'Bianchi, Antonio',NULL),
	('CS 59000ZL','26745-012','Individual Study',NULL,NULL,NULL,NULL,'Qureshi, Ahmed','ahqureshi@purdue.edu'),
	('CS 59000ZM','26811-013','Individual Study',NULL,NULL,NULL,NULL,'Khanna, Rajiv Ashu','rajivak@purdue.edu'),
	('CS 59000ZN','26849-014','Individual Study',NULL,NULL,NULL,NULL,'Samperton, Eric Griffin','eric@purdue.edu'),
	('CS 59000ZO','26878-015','Individual Study',NULL,NULL,NULL,NULL,'Honorio Carrillo, Jean F','jhonorio@purdue.edu'),
	('CS 59000ZP','26879-016','Individual Study',NULL,NULL,NULL,NULL,'Ward, Mark Daniel','mdw@purdue.edu'),
	('CS 59000ZQ','26884-017','Individual Study',NULL,NULL,NULL,NULL,'Goldwasser, Dan','dgoldwas@purdue.edu'),
	('CS 59000ZR','26922-018','Individual Study',NULL,NULL,NULL,NULL,'Comer, Douglas E','comer@cs.purdue.edu'),
	('CS 59000ZS','26999-019','Individual Study',NULL,NULL,NULL,NULL,'Qureshi, Ahmed','ahqureshi@purdue.edu'),
	('CS 59000ZT','27146-020','Individual Study',NULL,NULL,NULL,NULL,'Bagchi, Saurabh','sbagchi@purdue.edu'),
	('CS 59000ZU','27157-021','Individual Study',NULL,NULL,NULL,NULL,'Celik, Zeynel Berkay','zcelik@purdue.edu'),
	('CS 59000ZV','27246-022','Individual Study',NULL,NULL,NULL,NULL,'Jagannathan, Suresh','suresh@cs.purdue.edu'),
	('CS 18200','10152-P07','Pso','F','8:30a','9:20a','WALC 3090','Singh, Japneet (Instr)','sing1041@purdue.edu'),
	('CS 18200','11248-P03','Pso','T','6:30p','7:20p','WALC 3090','Jha, Vatsal Pramod (Instr)','jha36@purdue.edu'),
	('CS 18200','11351-P04','Pso','W','6:30p','7:20p','SYNC ONLINE','Dani, Jeegn Samir (Instr)','jdani@purdue.edu'),
	('CS 18200','11352-P05','Pso','Th','1:30p','2:20p','SYNC ONLINE','Somji, Shifa (Instr)','ssomji@purdue.edu'),
	('CS 18200','11739-P06','Pso','Th','10:30a','11:20a','SYNC ONLINE','Mao, Yunshu (Instr)','mao128@purdue.edu'),
	('CS 18200','13148-P02','Pso','T','7:30p','8:20p','WALC 3090','Shen, Hao (Instr)','shen456@purdue.edu'),
	('CS 18200','13149-P01','Pso','F','9:30a','10:20a','WALC 3090','Lu, William Qixin (Instr)','lu909@purdue.edu'),
	('CS 19300','10751-P16','Pso','F','12:30p','1:20p','SYNC ONLINE','Arora, Arnav (Instr)
Garcia, Alisa Joan Bantug (Instr)
Lee, Yo-Gui (Instr)
Naumovich, Nicole Helen (Instr)','arora165@purdue.edu
abgarcia@purdue.edu
lee4247@purdue.edu
nnaumovi@purdue.edu'),
	('CS 19300','10757-P15','Pso','F','2:30p','3:20p','SYNC ONLINE',NULL,NULL),
	('CS 19300','10779-P17','Pso','F','8:30a','9:20a','SYNC ONLINE','Alladi, Sahiti (Instr)
Chee, Ling-Jet Linus (Instr)
Irvin, William Murray (Instr)
Parhy, Medhashree (Instr)','alladi@purdue.edu
lchee@purdue.edu
wmirvin@purdue.edu
mparhy@purdue.edu'),
	('CS 19300','10802-P18','Pso','F','10:30a','11:20a','SYNC ONLINE','Agrawal, Kaivalya (Instr)
Alladi, Sahiti (Instr)
Ettireddy, Shreeya Reddy (Instr)
Lavra, Jacob Darwin (Instr)','agraw201@purdue.edu
alladi@purdue.edu
ettiredd@purdue.edu
jlavra@purdue.edu'),
	('CS 19300','10805-P19','Pso','F','1:30p','2:20p','SYNC ONLINE','Gala, Aayush S (Instr)
Garcia, Alisa Joan Bantug (Instr)
Mittal, Bhawin (Instr)
Qian, Yufeng (Instr)','gala0@purdue.edu
abgarcia@purdue.edu
bmittal@purdue.edu
qian176@purdue.edu'),
	('CS 19300','10817-P20','Pso','Th','6:30p','7:20p','SYNC ONLINE','Ignacio, Lourdes Ramos (Instr)
Verma, Riya (Instr)
Yang, Qihao (Instr)','lignaci@purdue.edu
verma127@purdue.edu
yang2033@purdue.edu'),
	('CS 19300','21309-P09','Pso','W','2:30p','3:20p','SYNC ONLINE','Bayana, Mahalakshmi Shefali (Instr)
Gupta, Atharva (Instr)
Rai, Aniket (Instr)
Rastogi, Aviral (Instr)','mbayana@purdue.edu
gupta831@purdue.edu
rai46@purdue.edu
rastog15@purdue.edu'),
	('CS 19300','21313-P13','Pso','Th','3:30p','4:20p','SYNC ONLINE','Agarwal, Aashi (Instr)
Koukuntla, Sruthi (Instr)
Rastogi, Aviral (Instr)
Thata, Akhil Sai (Instr)','agarw332@purdue.edu
skoukunt@purdue.edu
rastog15@purdue.edu
athata@purdue.edu');
INSERT INTO `sessions` VALUES ('CS 19300','24533-P01','Pso','Th','6:30p','7:20p','SYNC ONLINE','Banerjee, Protima (Instr)
Chundi, Sriya Saisundara (Instr)
Nadgaundi, Siddharth Shridhar (Instr)','banerj50@purdue.edu
chundi@purdue.edu
snadgaun@purdue.edu'),
	('CS 19300','24535-P02','Pso','W','1:30p','2:20p','SYNC ONLINE','Agrawal, Kaivalya (Instr)
Chundi, Sriya Saisundara (Instr)
Deshpande, Rama Anup (Instr)
Gupta, Atharva (Instr)','agraw201@purdue.edu
chundi@purdue.edu
ramadeshpande@purdue.edu
gupta831@purdue.edu'),
	('CS 19300','24536-P04','Pso','F','11:30a','12:20p','SYNC ONLINE','Arora, Arnav (Instr)
Charan, Vaibhav (Instr)
Doiphode, Aaditya Amit (Instr)
Prashanth, Mridu (Instr)','arora165@purdue.edu
vcharan@purdue.edu
adoiphod@purdue.edu
mprasha@purdue.edu'),
	('CS 19300','24537-P05','Pso','Th','1:30p','2:20p','SYNC ONLINE','Asare, Dwayne Nana Yaw K (Instr)
Dinh, Quan The (Instr)
Joshi, Anisha Abhijeet (Instr)
Purandare, Rohan (Instr)','dasare@purdue.edu
dinhq@purdue.edu
joshi175@purdue.edu
rpuranda@purdue.edu'),
	('CS 19300','24538-P07','Pso','Th','11:30a','12:20p','SYNC ONLINE','Asare, Dwayne Nana Yaw K (Instr)
Dhawan, Dhruv Vishal (Instr)
Koukuntla, Sruthi (Instr)
Purandare, Rohan (Instr)','dasare@purdue.edu
dvdhawan@purdue.edu
skoukunt@purdue.edu
rpuranda@purdue.edu'),
	('CS 19300','24539-P08','Pso','F','2:30p','3:20p','SYNC ONLINE','Gala, Aayush S (Instr)
Lavra, Jacob Darwin (Instr)
Qian, Yufeng (Instr)','gala0@purdue.edu
jlavra@purdue.edu
qian176@purdue.edu'),
	('CS 19300','24540-P11','Pso','Th','6:30p','7:20p','SYNC ONLINE','Charan, Vaibhav (Instr)
Choi, Seung Hyun (Instr)
Deeduvanu, Vamsi Raman (Instr)
Nilangekar, Anushka Sharad (Instr)','vcharan@purdue.edu
choi772@purdue.edu
vdeeduva@purdue.edu
anilange@purdue.edu'),
	('CS 19300','24541-P12','Pso','Th','8:30a','9:20a','SYNC ONLINE','Chen, Tsai-Ni (Instr)
Nagalakunta, Sravya (Instr)
Naumovich, Nicole Helen (Instr)
Prince, Donna Grace (Instr)','chen4261@purdue.edu
snagalak@purdue.edu
nnaumovi@purdue.edu
princed@purdue.edu'),
	('CS 19300','30156-P03','Pso','W','2:30p','3:20p','SYNC ONLINE','Banerjee, Protima (Instr)
Nilangekar, Anushka Sharad (Instr)
Pushparaj, Sarah Suchitra (Instr)
Saxena, Dhruv (Instr)','banerj50@purdue.edu
anilange@purdue.edu
spushpa@purdue.edu
saxena84@purdue.edu'),
	('CS 19300','30157-P06','Pso','Th','3:30p','4:20p','SYNC ONLINE','Deshpande, Rama Anup (Instr)
Nagalakunta, Sravya (Instr)
Neema, Aayushi (Instr)
Pushparaj, Sarah Suchitra (Instr)','ramadeshpande@purdue.edu
snagalak@purdue.edu
aneema@purdue.edu
spushpa@purdue.edu'),
	('CS 19300','30158-P10','Pso','Th','6:30p','7:20p','SYNC ONLINE','Agarwal, Aashi (Instr)
Manglore, Nikhil Rajesh (Instr)
Thata, Akhil Sai (Instr)','agarw332@purdue.edu
nmanglor@purdue.edu
athata@purdue.edu'),
	('CS 19300','30159-P14','Pso','F','10:30a','11:20a','SYNC ONLINE','Doiphode, Aaditya Amit (Instr)
Manglore, Nikhil Rajesh (Instr)
Neema, Aayushi (Instr)
Prashanth, Mridu (Instr)','adoiphod@purdue.edu
nmanglor@purdue.edu
aneema@purdue.edu
mprasha@purdue.edu'),
	('CS 25100','10220-P19','Pso','F','10:30a','11:20a','LWSN B158','Wang, Xinzhi (Instr)','wang6171@purdue.edu'),
	('CS 25100','10234-P20','Pso','Th','3:30p','4:20p','HAAS G040','Arko, Preetom Saha (Instr)','arko@purdue.edu'),
	('CS 25100','10240-P21','Pso','F','8:30a','9:20a','LWSN B146','Wang, Zhiquan (Instr)','wang4490@purdue.edu'),
	('CS 25100','10248-P22','Pso','W','10:30a','11:20a','HAAS G056','Bejar Espejo, Eduardo Alberto Martin (Instr)','ebejares@purdue.edu'),
	('CS 25100','10250-P23','Pso','T','2:30p','3:20p','LWSN B146','Ibtehaz, Nabil (Instr)','nibtehaz@purdue.edu'),
	('CS 25100','10253-P24','Pso','Th','1:30p','2:20p','LWSN B146','Zhang, Yuanyuan (Instr)','zhang038@purdue.edu'),
	('CS 25100','10256-P25','Pso','Th','6:30p','7:20p','LWSN B146','Ahmed, Syed Yusuf (Instr)','ahmed298@purdue.edu'),
	('CS 25100','10257-P26','Pso','F','3:30p','4:20p','LWSN B146','Luo, Xiao (Instr)','luo448@purdue.edu'),
	('CS 25100','10262-P27','Pso','F','9:30a','10:20a','LWSN B158','Pynadath, Patrick Seby (Instr)','ppynadat@purdue.edu'),
	('CS 25100','10268-P28','Pso','T','5:30p','6:20p','HAAS G040','Ibtehaz, Nabil (Instr)','nibtehaz@purdue.edu'),
	('CS 25100','12889-P01','Pso','W','10:30a','11:20a','HAAS G040','Wang, Xinzhi (Instr)','wang6171@purdue.edu'),
	('CS 25100','12890-P02','Pso','Th','11:30a','12:20p','HAAS G040','Viswanath, Hrishikesh (Instr)','hviswan@purdue.edu'),
	('CS 25100','12891-P03','Pso','F','8:30a','9:20a','HAAS G040','Pynadath, Patrick Seby (Instr)','ppynadat@purdue.edu'),
	('CS 25100','12892-P04','Pso','F','4:30p','5:20p','HAAS G056','Xu, Mingyue (Instr)','xu1864@purdue.edu'),
	('CS 25100','12894-P05','Pso','W','9:30a','10:20a','HAAS G056','Bejar Espejo, Eduardo Alberto Martin (Instr)','ebejares@purdue.edu'),
	('CS 25100','12895-P06','Pso','F','8:30a','9:20a','HAAS G056','Luo, Xiao (Instr)','luo448@purdue.edu'),
	('CS 25100','12897-P07','Pso','T','9:30a','10:20a','HAAS G056','Wang, Zhiquan (Instr)','wang4490@purdue.edu'),
	('CS 25100','18334-P15','Pso','Th','8:30a','9:20a','LWSN B146','Fan, Wen (Instr)','fan372@purdue.edu'),
	('CS 25100','18335-P16','Pso','W','10:30a','11:20a','LWSN B158','Viswanath, Hrishikesh (Instr)','hviswan@purdue.edu'),
	('CS 25100','21317-P17','Pso','T','8:30a','9:20a','LWSN B158','Fan, Wen (Instr)','fan372@purdue.edu'),
	('CS 25100','21318-P18','Pso','W','8:30a','9:20a','HAAS G056','Liang, Shanchao (Instr)','liang422@purdue.edu'),
	('CS 25100','26788-P08','Pso','Th','5:30p','6:20p','LWSN B146','Dabholkar, Ahaan (Instr)','adabholk@purdue.edu'),
	('CS 25100','26789-P09','Pso','Th','9:30a','10:20a','LWSN B146','Manganaris, Anastasios Alexandros (Instr)','amangana@purdue.edu'),
	('CS 25100','26790-P10','Pso','Th','8:30a','9:20a','LWSN B158','Manganaris, Anastasios Alexandros (Instr)','amangana@purdue.edu'),
	('CS 25100','26791-P11','Pso','W','9:30a','10:20a','LWSN B158','Liang, Shanchao (Instr)','liang422@purdue.edu'),
	('CS 25100','26792-P12','Pso','F','3:30p','4:20p','HAAS G056','Xu, Mingyue (Instr)','xu1864@purdue.edu'),
	('CS 25100','26793-P13','Pso','Th','2:30p','3:20p','LWSN B146','Zhang, Yuanyuan (Instr)','zhang038@purdue.edu'),
	('CS 25100','26794-P14','Pso','T','10:30a','11:20a','HAAS G056','Ahmed, Syed Yusuf (Instr)','ahmed298@purdue.edu'),
	('CS 34800','26858-P01','Pso','Th','3:30p','4:20p','HAAS G050','Li, Lixiang (Instr)','li4256@purdue.edu'),
	('CS 34800','26866-P02','Pso','Th','12:30p','1:20p','HAAS G050','Bonjour, Trevor A (Instr)','tbonjour@purdue.edu'),
	('CS 34800','26867-P03','Pso','T','10:30a','11:20a','HAAS G050','Sun, Yinqi (Instr)','sun1226@purdue.edu'),
	('CS 34800','26868-P04','Pso','T','9:30a','10:20a','HAAS G050','Di, Yifeng (Instr)','di5@purdue.edu'),
	('CS 34800','26869-P05','Pso','W','4:30p','5:20p','HAAS G050','Mamun, Abdullah Al (Instr)','mamuna@purdue.edu'),
	('CS 34800','26870-P06','Pso','Th','10:30a','11:20a','HAAS G050','Ferdousi, Bushra (Instr)','bferdous@purdue.edu'),
	('CS 34800','26871-P07','Pso','W','2:30p','3:20p','HAAS G050','Mamun, Abdullah Al (Instr)','mamuna@purdue.edu'),
	('CS 35200','15454-P01','Pso','T','6:30p','7:20p','HAAS G040','Zhang, Yida (Instr)','zhan3339@purdue.edu'),
	('CS 35200','15456-P02','Pso','W','8:30a','9:20a','HAAS G040','Zhang, Yida (Instr)','zhan3339@purdue.edu'),
	('CS 35200','25443-P03','Pso','Th','1:30p','2:20p','SYNC ONLINE','Min, Byounguk (Instr)','min87@purdue.edu'),
	('CS 35400','10394-P06','Pso','W','10:30a','11:20a','HAAS 257','Das, Pratyush (Instr)','das160@purdue.edu'),
	('CS 35400','10395-P07','Pso','W','6:30p','7:20p','HAAS 257','Kalluri, Hari Prasad (Instr)','hkalluri@purdue.edu'),
	('CS 35400','10397-P08','Pso','W','1:30p','2:20p','HAAS 257','He, Siyuan (Instr)','he662@purdue.edu'),
	('CS 35400','10399-P09','Pso','W','5:30p','6:20p','HAAS 257','Jayatilaka, Aluthgedara Wedaralalage Tarindu (Instr)','ajayati@purdue.edu'),
	('CS 35400','10400-P10','Pso','Th','9:30a','10:20a','HAAS 257','Guduru, Haasith (Instr)','ghaasith@purdue.edu'),
	('CS 35400','11462-P04','Pso','T','1:30p','2:20p','HAAS 257','Jeong, Hyunchai (Instr)','jeong3@purdue.edu'),
	('CS 35400','12381-P03','Pso','Th','10:30a','11:20a','HAAS 257','Jeong, Hyunchai (Instr)','jeong3@purdue.edu'),
	('CS 35400','13243-P01','Pso','F','9:30a','10:20a','HAAS 257','Guduru, Haasith (Instr)','ghaasith@purdue.edu'),
	('CS 35400','16090-P05','Pso','T','2:30p','3:20p','HAAS 257','Kalluri, Hari Prasad (Instr)','hkalluri@purdue.edu'),
	('CS 35400','52686-P02','Pso','F','10:30a','11:20a','HAAS 257','Das, Pratyush (Instr)','das160@purdue.edu'),
	('CS 38003','11280-P06','Pso (Hybrid)','T','5:30p','6:20p','HAMP 3144','Pham, Phu An (Instr)','phupham@purdue.edu'),
	('CS 38003','11333-P08','Pso (Hybrid)','W','10:30a','11:20a','HAAS G050','Balakrishnan, Sai Lakshminarayanan (Instr)','balakri3@purdue.edu'),
	('CS 38003','11343-P07','Pso (Hybrid)','Th','2:30p','3:20p','SYNC ONLINE','Pham, Phu An (Instr)','phupham@purdue.edu'),
	('CS 38003','11345-P01','Pso (Hybrid)','T','5:30p','6:20p','HAMP 3144','Pham, Phu An (Instr)','phupham@purdue.edu'),
	('CS 38100','11459-P02','Pso','F','1:30p','2:20p','WALC 3122','Qin, Han (Instr)','qin184@purdue.edu'),
	('CS 38100','11466-P03','Pso','W','10:30a','11:20a','SYNC ONLINE','Gao, Ruiqi (Instr)','gao606@purdue.edu'),
	('CS 38100','16352-P01','Pso','T','6:30p','7:20p','WALC 3154','Garg, Rohan (Instr)','rohang@purdue.edu'),
	('CS 38100','26852-P04','Pso','Th','6:30p','7:20p','WALC 3154','Xie, Daniel Yu-Long (Instr)','dyxie@purdue.edu'),
	('CS 38100','26873-P05','Pso','W','2:30p','3:20p','WALC 3122','Yeragudipati, Srinivasa Arun (Instr)','syeragud@purdue.edu'),
	('CS 38100','26874-P06','Pso','F','10:30a','11:20a','SYNC ONLINE','Zulfiqar, Annus (Instr)','zulfiqaa@purdue.edu'),
	('CS 39000WAP','26037-P01','Pso','T','5:30p','6:20p','WALC 1132','Khan, Mikail H (Instr)
Setpal, Jinen Latish (Instr)','khan348@purdue.edu
jsetpal@purdue.edu'),
	('CS 42200','21547-P01','Pso','Th','11:30a','12:20p','HAAS G050','Haider, Chowdhury Mohammad Rakin (Instr)','chaider@purdue.edu'),
	('CS 42200','21549-P02','Pso','W','1:30p','2:20p','HAAS G050','Esrafilian Najafabadi, Milad (Instr)','mesrafil@purdue.edu'),
	('CS 44800','11745-P03','Pso','W','9:30a','10:20a','HAAS G050','Su, Yongye (Instr)','su311@purdue.edu'),
	('CS 44800','12039-P04','Pso','F','11:30a','12:20p','HAAS G050','Rayhan, Yeasir (Instr)
Su, Yongye (Instr)','yrayhan@purdue.edu
su311@purdue.edu'),
	('CS 44800','19622-P01','Pso','Th','1:30p','2:20p','HAAS G050','Rayhan, Yeasir (Instr)','yrayhan@purdue.edu'),
	('CS 50300','12015-P01','Pso','W','2:30p','3:20p','HAAS 257','Naeem, Muhammad Bilal (Instr)','naeem3@purdue.edu'),
	('CS 50300','12016-P02','Pso','F','11:30a','12:20p','HAAS 257','Peng, Dinglan (Instr)','peng301@purdue.edu'),
	('CS 50300','20731-P03','Pso','W','9:30a','10:20a','HAAS 257','Naeem, Muhammad Bilal (Instr)','naeem3@purdue.edu'),
	('CS 53600','14323-P02','Pso','W','11:30a','12:20p','HAAS G050','Peng, Chen (Instr)','peng326@purdue.edu'),
	('CS 53600','14324-P01','Pso','T','1:30p','2:20p','SYNC ONLINE','Lei, Shilong (Instr)','lei105@purdue.edu'),
	('CS 53600','29408-P04','Pso','F','9:30a','10:20a','HAAS G050','Guo, Junpeng (Instr)','guo567@purdue.edu');

ALTER TABLE sessions DROP Column Instructor;