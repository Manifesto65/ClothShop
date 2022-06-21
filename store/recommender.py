import pickle
import pandas as pd

products_dict = pickle.load(open('products_file.pkl', 'rb'))
products = pd.DataFrame(products_dict)
similarity = pickle.load(open('similarity.pkl', 'rb'))


def recommend(product):
    product_index = products[products['title'] == product].index[0]
    scores = similarity[product_index]
    products_list = sorted(list(enumerate(scores)), reverse=True, key=lambda x: x[1])[1:5]
    recommended_products = []
    for i in products_list:
        recommended_products.append(products.iloc[i[0]].id)
    return recommended_products








