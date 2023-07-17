
    # Quitamos el carácter "M y B" de los números en la columna 'Euros'
def cambio_euros(euros):
    df['Euros'] = df['Euros'].str.replace('[MB]', '', regex=True)
    df.head()



def format_numerical_value(value):
    # Quitamos el punto que separa los miles
    value = value.replace('.', '')
    # Sustituimos la coma por un punto
    value = value.replace(',', '.')
    return value