<?
$response = file_get_contents('http://codeforces.com/api/user.rating?handle=Fefer_Ivan&from=1&count=10');
$data = json_decode($response, true);
print_r($data);
?>