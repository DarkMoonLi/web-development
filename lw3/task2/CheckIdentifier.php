<?php
function getGETParameter(string $name):?string
{
    return isset($_GET[$name])?(string)$_GET[$name]: null;
}
header("Content-Type: text/plain");
$Identifier = getGETParameter('identifier');
if (ctype_alnum($Identifier))
    {
        $Logic = true;
    }
if ($Logic==true)
    {
        echo "Yes";
    }
else
    {
        echo "No, because identifier not consist from letters and numbers.";
    }