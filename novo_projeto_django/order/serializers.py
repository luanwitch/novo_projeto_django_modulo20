from rest_framework import serializers
from .models import Order
from product.models import Product 

class OrderSerializer(serializers.ModelSerializer):
    class Meta:
        model = Order
        fields = '__all__'