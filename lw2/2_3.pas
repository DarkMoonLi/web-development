PROGRAM PrintHello(INPUT, OUTPUT);
USES Dos;
VAR
  Position, Count: INTEGER;
  RowResponse: STRING;
BEGIN {PrintHello}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  RowResponse := GetENV('QUERY_STRING');
  Position := POS('name=', RowResponse);
  IF Position = 0
  THEN
    WRITELN('Hello Anonymous!')
  ELSE
    BEGIN
      Count := Position + 5;
      Position := Position + 5;
      WHILE ((Copy(RowResponse, Count, 1) <> '&') AND (Count <= LENGTH(RowResponse)))
      DO
        Count := Count + 1;
      Count := Count - 6;
      WRITELN('Hello dear, ', Copy(RowResponse, Position, Count), '!')
    END
END. {PrintHello}
