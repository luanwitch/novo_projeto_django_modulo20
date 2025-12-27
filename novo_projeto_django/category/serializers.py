from rest_framework import serializers
from product.models import Product
from .models import Category

class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Product
        fields = '__all__'