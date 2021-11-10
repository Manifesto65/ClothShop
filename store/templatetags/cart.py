from django import template

register = template.Library()


@register.filter(name='is_in_cart')
def is_in_cart(product, cart):
    keys = cart.keys()
    for id in keys:
        if int(id) == product:
            return True
    return False


@register.filter(name='product_quantity')
def product_quantity(product, cart):
    keys = cart.keys()
    for id in keys:
        if int(id) == product.id:
            return cart.get(id)
    return 0


@register.filter(name='sub_total')
def sub_total(product, cart):
    return product.price * float(product_quantity(product, cart))-(float(product_quantity(product, cart))*product.discount_price)


@register.filter(name='total')
def total(products, cart):
    sum = 0
    for p in products:
        sum += sub_total(p, cart)

    return sum

@register.filter(name='grand_total')
def grand_total(products, cart):
    return total(products,cart)-35
