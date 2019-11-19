Creation of Colleges:
Property : name,startedDate 
CREATE (PSG:college {name:'PSG', stDate:1957})
CREATE (CIT:college {name:'CIT', stDate:1965})

Creation of Students:
Property :name,joinDate 
CREATE (vikki:Person {name:'vikki', join:2010})
CREATE (hari:Person {name:'hari', join:2015})
CREATE (karan:Person {name:'karan', join:2014})
CREATE (niti:Person {name:'niti', join:2017})
CREATE (mamu:Person {name:'mamu', join:2018})
CREATE (dd:Person {name:'dd', join:2012})
CREATE (sai:Person {name:'sai', join:2013})

Creation of relationship between student and college:
Property:course
CREATE
  (vikki)-[:STUDIED {course:['Software']}]->(PSG),
  (hari)-[:STUDIED {course:['Software']}]->(PSG),
  (karan)-[:STUDIED {course:['TCS']}]->(PSG),
  (niti)-[:STUDIED {course:['TCS']}]->(CIT),
  (mamu)-[:STUDIED {course:['Software']}]->(CIT),
  (dd)-[:STUDIED {course:['Software']}]->(CIT),
  (sai)-[:STUDIED {course:['Software']}]->(CIT)

Creation of Projects:
Property:name,startedDate
CREATE (ora:Project {name:'Oracle', stDate:2010})
CREATE (mongo:Project {name:'Mongo DB', stDate:2015})
CREATE (neo:Project {name:'Neo4j', stDate:2017})

Create relationship between students and projects:
CREATE
    (vikki)-[:WORKED_ON]->(ora),
    (hari)-[:WORKED_ON]->(ora),
    (karan)-[:WORKED_ON]->(ora),
    (mamu)-[:WORKED_ON]->(ora),
    (karan)-[:WORKED_ON]->(mongo),
    (mamu)-[:WORKED_ON]->(mongo),
    (sai)-[:WORKED_ON]->(mongo),
    (sai)-[:WORKED_ON]->(neo),
    (niti)-[:WORKED_ON]->(neo)

Create relationship between students:
CREATE
    (vikki)-[:WORKED_WITH]->(karan),
    (hari)-[:WORKED_WITH]->(karan),
    (hari)-[:WORKED_WITH]->(vikki),
    (mamu)-[:WORKED_WITH]->(karan),
    (vikki)-[:WORKED_WITH]->(mamu),
    (hari)-[:WORKED_WITH]->(mamu),
    (niti)-[:WORKED_WITH]->(sai),
    (karan)-[:WORKED_WITH]->(sai),
    (mamu)-[:WORKED_WITH]->(sai)

Create of languages:
Property: name    
CREATE (C:Interest {name:'C'})
CREATE (PHP:Interest {name:'PHP'})
CREATE (Python:Interest {name:'Python'})
CREATE (graphs:Interest {name:'Graphs'})
CREATE (java:Interest {name:'Java'})
CREATE (Pearl:Interest {name:'Pearl'})
CREATE (Bash:Interest {name:'Bash'})
CREATE (JS:Interest {name:'JS'})
CREATE (HTML:Interest {name:'HTML'})
CREATE (Ruby:Interest {name:'Ruby'})

Create relationship between students and languages:
CREATE
    (vikki)-[:INTERESTED__IN]->(C),
    (vikki)-[:INTERESTED__IN]->(PHP),
    (vikki)-[:INTERESTED__IN]->(graphs),
    (hari)-[:INTERESTED__IN]->(Python),
    (hari)-[:INTERESTED__IN]->(graphs),
    (karan)-[:INTERESTED__IN]->(Python),
    (karan)-[:INTERESTED__IN]->(graphs),
    (karan)-[:INTERESTED__IN]->(java),
    (niti)-[:INTERESTED__IN]->(Python),
    (niti)-[:INTERESTED__IN]->(graphs),
    (niti)-[:INTERESTED__IN]->(java),
    (niti)-[:INTERESTED__IN]->(Pearl),
    (mamu)-[:INTERESTED__IN]->(Bash),
    (mamu)-[:INTERESTED__IN]->(JS),
    (dd)-[:INTERESTED__IN]->(graphs),
    (dd)-[:INTERESTED__IN]->(HTML),
    (sai)-[:INTERESTED__IN]->(HTML),
    (sai)-[:INTERESTED__IN]->(Ruby)

