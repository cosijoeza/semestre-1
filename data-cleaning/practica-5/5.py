def porcent_booleana(num_usuarios, anios_atras):
    current_year = num_usuarios[len(num_usuarios) - 1]
    last_year = num_usuarios[len(num_usuarios) - 1 - anios_atras]
    crecimiento = (current_year - last_year) / last_year
    return crecimiento


num_usuarios_prueba = [
    920344,
    1043553,
    1204334,
    1458996,
    1503323,
    1593432,
    1623463,
    1843064,
    1930992,
    2001078,
]

print("{:.3f}".format(porcent_booleana(num_usuarios_prueba, 1)))
print("{:.3f}".format(porcent_booleana(num_usuarios_prueba, 7)))
print("{:.3f}".format(porcent_booleana(num_usuarios_prueba, 9)))
print("{:.3f}".format(porcent_booleana(num_usuarios_prueba, 10)))
print("{:.3f}".format(porcent_booleana(num_usuarios_prueba, 11)))