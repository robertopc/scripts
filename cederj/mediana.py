def acha():
  global tam, mediana, v
  if(tam % 2 == 0):
    meio = (tam - 1) / 2
    mediana = (v[meio] + v[meio + 1]) / 2
  else:
    meio = tam // 2
    mediana = v[meio]

def le():
  global tam
  for i in range(tam):
    v.append(input())

tam = 0
v = []
mediana = 0

print('quantidade numeros')
tam = input()
le()
acha()
print('mediana', mediana)
