# Bloco de if, elif e else
x = 10
if x < 0:
    print('x é negativo')
elif x == 0:
    print('x é zero')
else:
    print('x é positivo')


# Bloco de for
for x in range(5):
    print(x)

# Bloco de while
soma = 0.
n = 1.0
while soma < 2:
    soma += 1 / n
    n += 1
print(n, soma)
