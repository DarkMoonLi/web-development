<?php
function getGETParameter(string $name):?string
{
    return isset($_GET[$name])?(string)$_GET[$name]: null;
}
header("Content-Type: text\plane");
$First_name = getGETParameter('first_name');
$Last_name = getGETParameter('last_name');
$Email = getGETParameter('email');
$Age = getGETParameter('age');
if (is_dir('data'))
{
    $fh = fopen("data/$Email.txt", 'w');
}
if ($First_name !== null)
{
    fwrite($fh,"first_name=");
    fwrite($fh, $First_name);
    fwrite($fh, ' ');
}
if ($Last_name !== null)
{
    fwrite($fh,"last_name=");
    fwrite($fh, $Last_name);
    fwrite($fh, ' ');
}
if ($Email !== null)
{
    fwrite($fh,"email=");
    fwrite($fh, $Email);
    fwrite($fh, ' ');
}
if ($Age !== null)
{
    fwrite($fh,"age=");
    fwrite($fh, $Age);
    fwrite($fh, ' ');
}