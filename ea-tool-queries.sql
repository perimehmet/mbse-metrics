-- Useful queries to use in Sparx Enterprise Architect 16.
-- Create custom Searches using SQL editor in EA.

-- Find by Object ID
SELECT t_object.ea_guid AS CLASSGUID, t_object.object_type as
CLASSTYPE, t_object.* FROM t_object WHERE object_id = #CurrentElementID#

-- Find by Object ID
SELECT t_object.ea_guid AS CLASSGUID, t_object.object_type as
CLASSTYPE, t_object.* FROM t_object WHERE ea_guid IN ('<SearchTerm>')

-- Find Inherited FROM
SELECT t_object.ea_guid AS CLASSGUID, t_object.object_type AS CLASSTYPE,
t_object.* FROM t_object
LEFT JOIN t_object AS parent ON parent.object_id = t_object.ParentID
WHERE parent.object_id = #CurrentElementID#

-- Find Requirements
SELECT t_object.ea_guid AS CLASSGUID, t_object.object_type AS CLASSTYPE,
t_object.name FROM t_object WHERE t_object.name in ('Req1','Req2')

--Display Selected item in Project Browser on the Matrix View
SELECT t_object.ea_guid AS CLASSGUID, t_object.object_type AS CLASSTYPE,
t_object WHERE object_id = #CurrentElementID#

--Display  GUIDs in query item on the Matrix View
SELECT t_object.ea_guid AS CLASSGUID, t_object.object_type AS CLASSTYPE,
* FROM t_object WHERE t_object.ea_guid in ('{guid1}','{guid2}')

--Find properities of <SearchTerm>
SELECT t_object.ea_guid AS CLASSGUID, t_object.object_type AS CLASSTYPE,
t_object.name AS BlockName, t_object.Stereotype AS BlockStereotype,
property.name AS PropertyName, property.Stereotype AS Propertystereotype from
t_object
LEFT JOIN t_object AS property on property.ea_guid = t_object.PDATA1
WHERE property.Name LIKE '%<SearchTerm>%' OR t_object.name LIKE '%<SearchTerm>%'  
