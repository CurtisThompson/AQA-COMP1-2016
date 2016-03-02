// Edits to the MakeMove subroutine to allow checks for diagonal movement
// 1 in RowDirection and ColumnDirection are right and down checking respectively
// -1 is for left and up
// Doing diagonal checks only requires four more lines similar to the previous four FlipOpponentPiecesInOneDirection calls but with different arguments
Procedure MakeMove(Var Board : TBoard; BoardSize, Move : Integer; HumanPlayersTurn : Boolean);
    Var
      Row : Integer;
      Column : Integer;
    Begin
      Row := Move Mod 10;
      Column := Move Div 10;
      If HumanPlayersTurn
        Then Board[Row, Column] := 'H'
        Else Board[Row, Column] := 'C';
      FlipOpponentPiecesInOneDirection(Board, BoardSize, Row, Column, 1, 0);
      FlipOpponentPiecesInOneDirection(Board, BoardSize, Row, Column, -1, 0);
      FlipOpponentPiecesInOneDirection(Board, BoardSize, Row, Column, 0, 1);
      FlipOpponentPiecesInOneDirection(Board, BoardSize, Row, Column, 0, -1);
      // Edits begin here
      FlipOpponentPiecesInOneDirection(Board, BoardSize, Row, Column, 1, 1);
      FlipOpponentPiecesInOneDirection(Board, BoardSize, Row, Column, 1, -1);
      FlipOpponentPiecesInOneDirection(Board, BoardSize, Row, Column, -1, 1);
      FlipOpponentPiecesInOneDirection(Board, BoardSize, Row, Column, -1, 1);
    End
