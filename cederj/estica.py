#!/bin/python3

def estica():
  global lista
  print(lista)
  esticada = []
  for i in range(len(lista)):
    if lista[i] % 2 == 1:
      esticada.append(lista[i] // 2 + 1)
      esticada.append(lista[i] // 2)
    else:
      esticada.append(lista[i] // 2)
      esticada.append(lista[i] // 2)
  lista = esticada

lista = [18, 7, 4, 24, 11]

estica()

print(lista)

