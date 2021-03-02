PROGRAM SarahRevere(INPUT, OUTPUT);
{Печать сообщения о том как идут британцы, в зависимости
от того, первым во входе встречается 'land' или 'sea'.}
Uses dos;
VAR
  RowResponse: STRING;
  Lanterns: CHAR;
BEGIN {SarahRevere}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('Входные данные: ', GetENV('QUERY_STRING'));
  RowResponse := GetENV('QUERY_STRING');
  IF RowResponse = 'lanterns=1'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF RowResponse = 'lanterns=2'
    THEN
      WRITELN('The British coming by sea.')
    ELSE
      WRITELN('Sarah didn''t say')
END. {SarahRevere}
