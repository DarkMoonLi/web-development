<?php
header("Content-Type: text\plane");
$Count = 0;
$Position = 0;
$DataFile = fgets($fh);
$Position = Pos(first_name, $DataFile);
While (($DataFile[$Position+11] !== ' ')
{
    $Position++
    $Count++
}
echo "<br>";
