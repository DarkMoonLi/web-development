<?php
function getGETParameter(string $name):?string
{
    return isset($_GET[$name])?(string)$_GET[$name]: null;
}
header("Content-Type: text\plane");
$Password = getGETParameter('password');
$Reliability = 0; 
$Repeats = 0;
$Count = 0;
$CountRepeats = 0;
$Numbers = 0;
$UpperValue = 0;
$DownValue = 0;
$countRepeatLetter = 0;
$Length = strlen($Password);
if (ctype_alnum($Password))
{
  while ($Count < $Length) 
  {
    if (ctype_upper($Password[$Count]))
    {
      $UpperValue++;
    }
    if (ctype_lower($Password[$Count]))
    {
      $DownValue++;
    }
    if (ctype_digit($Password[$Count]))
    {
      $Numbers++;
    }
    $i = $countRepeatLetter;
    While ($i < $Length)
    {
      for ($j = 1; $j < $Length; $j++)
      {
        If ($Password[$j] === $Password[$i])
        {
          $CountRepeats++;
        }
      }
      break;
    }
    $Count++;
    $countRepeatLetter++;
  }
}

$Reliability = $Reliability + $Count*4 + $Numbers*4 + ($Length - $UpperValue)*2 + ($Length - $DownValue)*2;

if ($Numbers === 0) 
{
    $Reliability = $Reliability - $Count;
}
if (($UpperValue === 0) and ($DownValue === 0))
{
    $Reliability = $Reliability - $Count;
}
echo $Reliability;
