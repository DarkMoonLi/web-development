<?php

function getGETParameter(string $name):?string
{
    return isset($_GET[$name])?(string)$_GET[$name]: null;
}

header("Content-Type: text/plain");
$Text = getGETParameter('text');
$Text = trim($Text);
$Count = 0;
while ($Count < (strlen($Text)))
{
    if ((($Text[$Count] == " ") and ($Text[$Count + 1] !== " ")) or (($Text[$Count] !== " ") && ($Text[$Count + 1] !== " ")) or (($Text[$Count] !== " ") and ($Text[$Count + 1] == " ")))
    {
        echo ($Text[$Count]);   
    }
    $Count++;
}
