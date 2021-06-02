PROGRAM ConvertingNumber(INPUT, OUTPUT);
VAR
  Number, Base, MultiplicationResult, AdditionResult, Remainder: INTEGER;
BEGIN {ConvertingNumber}
  READ(Number, Base);
  IF ((Number >= 1) AND (Number <= 109)) AND ((Base >= 2) AND (Base <= 10))
  THEN
    BEGIN
      MultiplicationResult := 1;
      AdditionResult := 0;
      WHILE Number >= Base
      DO
        BEGIN
          Remainder := Number MOD Base;
          MultiplicationResult := MultiplicationResult * Remainder;
          AdditionResult := AdditionResult + Remainder;
          Number := Number DIV Base
        END;
      MultiplicationResult := MultiplicationResult * Number;
      AdditionResult := AdditionResult + Number;
      WRITELN(MultiplicationResult - AdditionResult)
    END
  ELSE
    WRITELN('Введите корректное значение')
END. {ConvertingNumber}