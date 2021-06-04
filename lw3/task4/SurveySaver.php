<?php
function getGETParameter(string $name):?string
{
    return isset($_GET[$name])?(string)$_GET[$name]: null;
}

header("Content-Type: text\plane");
$firstName = getGETParameter('first_name');
$lastName = getGETParameter('last_name');
$email = getGETParameter('email');
$age = getGETParameter('age');
if (is_dir('data'))
{
    $fh = fopen("data/$email.txt", 'w+');
}
if ($firstName)
{
    fwrite($fh,"first_name=$firstName ");
}
if ($lastName !== null)
{
    fwrite($fh,"last_name=$fastName ");
}
if ($email !== null)
{
    fwrite($fh,"email=$email ");
}
if ($age !== null)
{
    fwrite($fh,"age=$age ");
}