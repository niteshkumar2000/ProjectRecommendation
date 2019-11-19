
1. Find the list of people: 
MATCH (people:Person) RETURN people.name LIMIT 10

2. Find one particular person niti:
MATCH (n {name: "niti"}) RETURN n

3. Find the persons who joined collage between 2010 and 2015
MATCH (p:Person) WHERE p.join >= 2010 AND p.join < 2015 RETURN p.name

4. Find a particular persons interests:
match (p:Person{name:'niti'})-[:INTERESTED__IN]->(m) return p.name,collect(m.name)

5. Find persons worked on MongoDB and the interested language:
MATCH (p {name: "Mongo DB"}) <- [:WORKED_ON]-(m)-[:INTERESTED__IN] -> (l) RETURN p.name AS Name ,collect(m.name) AS People, size(collect(m.name)) AS Size, collect(l.name)


6. People interested in certain languages find others who are interested in some languages:
MATCH (p:Person MATCH (p:Person {name:"niti"})-[:INTERESTED__IN]->(m)<-[:INTERESTED__IN]-(l) return m.name,l.name

7. Shortest Path from niti to mamu
MATCH p=shortestPath(
(n:Person {name:"niti"})-[*]-(m:Person {name:"mamu"})) 
RETURN p

8. Person’s mates worked with others
MATCH (n:Person {name:"niti"})-[:STUDIED]->(m)<-[:STUDIED]-(c)<-[:WORKED_WITH]-(p) RETURN c,p

9. Recommending projects based on interested language by referring others:
Match(p:Person{name:'niti'})-[:INTERESTED__IN]->(l)<-[:INTERESTED__IN]-(p2)-[:WORKED_ON]->(project) return project

10. Find the persons who worked with more than two people:
MATCH (person:Person)-[:WORKED_WITH]->(u:Person) where size((u)-[:WORKED_WITH]->(:Person)) >= 2 return person.name,collect(u.name),size(collect(u.name))

11. Find the Person who interested on trending languages:
WITH ['Python','JS'] AS Languages UNWIND Languages AS TrendingLanguages  MATCH (p:Person)-[r:INTERESTED__IN]-(t:Interest {name: TrendingLanguages}) RETURN t.name, collect(p.name) AS Developers

12. Find the person who is interested in more languages:
MATCH (p:Person)-[:INTERESTED__IN]-(i:Interest) RETURN p.name, count(i.name) AS numberOfInterests ORDER BY numberOfInterests DESC LIMIT 1

13. Find PSG Students who worked on Oracle Project:
Match (p:Project{name:"Oracle"})<-[w:WORKED_ON]-(p1)-[s:STUDIED]->(c) where c.name="PSG" return p.name,p1.name,c.name,s.course
