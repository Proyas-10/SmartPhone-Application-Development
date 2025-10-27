int checkNull(int? value) {
  return value ?? 0; 
}

void main() {
  print(checkNull(10));  
  print(checkNull(null)); 
}
