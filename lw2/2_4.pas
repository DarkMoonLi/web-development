PROGRAM WorkWithQueryString(INPUT, OUTPUT);
USES
  DOS;
FUNCTION GetQueryStringParameter(Variable: STRING): STRING;
VAR
  RowResponse, CharEnd: STRING;
  Count, Position, LengthRow, LengthVariable: INTEGER;
BEGIN
  Position := 0;
  RowResponse := GetENV('QUERY_STRING');
  LengthRow := Length(RowResponse);
  Position := Pos(Variable, RowResponse);
  LengthVariable := Length(Variable);
  Count := Position + LengthVariable;
  IF (LengthRow <> 0)
  THEN
  BEGIN
    CharEnd := '0';
    WHILE (Count <> LengthRow)
    DO
      BEGIN
        IF (CharEnd <> '&')
        THEN
          BEGIN
            CharEnd := RowResponse[Count];
            Count := Count + 1
          END
        ELSE
          break
      END;
    IF (Length(Variable) = 3)
    THEN
      Count := Count - Position - (Length(Variable))
    ELSE
      Count := Count - Position - (Length(Variable) + 2);
    GetQueryStringParameter := Copy(RowResponse, Position + LengthVariable + 1, Count)
  END
END;
BEGIN {WorkWithQueryString}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))
END. {WorkWithQueryString}
