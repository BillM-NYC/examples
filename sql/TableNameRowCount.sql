SELECT
      table_name,
      TO_NUMBER(
        EXTRACTVALUE(
          XMLTYPE(
    DBMS_XMLGEN.getxml('SELECT COUNT(*) c FROM '||table_name))
          ,'/ROWSET/ROW/C')) cnt
  FROM user_tables;