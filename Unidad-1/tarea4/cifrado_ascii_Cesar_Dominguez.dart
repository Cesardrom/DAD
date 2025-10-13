String decodedAscii(String code){
  return String.fromCharCodes(code.split(' ').map((n)=> int.parse(n)- 1));
}

void main(){
var secret_phrase = "82 118 102 33 109 98 33 103 118 102 115 123 98 33 117 102 33 98 100 112 110 113 98 242 102";
print(decodedAscii(secret_phrase));
}


