  // Two subroutines must be edited to get the type and length validation checks on the player-entered coordinates
  // Computer coordinates will always be correct type and length by default unless you edit that code
    
    // If the entered coordinates are not an integer value then the subroutine will not return and move will be invalid
    Function GetHumanPlayerMove(PlayerName : String) : Integer;
    Var
      Coordinates : Integer;
    Begin
      Write(PlayerName, ' enter the coordinates of the square where you want to place your piece: ');
      try
        Readln(Coordinates);
        GetHumanPlayerMove := Coordinates;
      except
      end;
    End;
    
    // Small edits have been made for the length check, comments made in code
    Procedure PlayGame(PlayerName : String; BoardSize : Integer);
    Var
      Board : TBoard;
      HumanPlayersTurn : Boolean;
      Move : Integer;
      HumanPlayerScore : Integer;
      ComputerPlayerScore : Integer;
      MoveIsValid : Boolean;
    Begin
      SetUpGameBoard(Board, BoardSize);
      HumanPlayersTurn := False;
      Repeat
        HumanPlayersTurn := Not HumanPlayersTurn;
        DisplayGameBoard(Board, BoardSize);
        MoveIsValid := False;
        Repeat
          If HumanPlayersTurn
            Then Move := GetHumanPlayerMove(PlayerName)
            Else Move := GetComputerPlayerMove(BoardSize);
          // Add type check so that move entered must be an integer of length 2
          try
            MoveIsValid := CheckIfMoveIsValid(Board, Move);
            if Length(IntToStr(Move)) <> 2 then MoveIsValid := false;
          except
          end;
          // End of edit
        Until MoveIsValid;
        If Not HumanPlayersTurn
          Then
            Begin
              Writeln('Press the Enter key and the computer will make its move');
              Readln;
            End;
        MakeMove(Board, BoardSize, Move, HumanPlayersTurn);
      Until GameOver(Board, BoardSize);
      DisplayGameBoard(Board, BoardSize);
      HumanPlayerScore := GetPlayerScore(Board, BoardSize, 'H');
      ComputerPlayerScore := GetPlayerScore(Board, BoardSize, 'C');
      If HumanPlayerScore > ComputerPlayerScore
        Then Writeln('Well done, ', PlayerName, ', you have won the game!')
        Else
          If HumanPlayerScore = ComputerPlayerScore
            Then Writeln('That was a draw!')
            Else
              Begin
                Writeln('The computer has won the game!');
              End;
      Writeln;
    End;
