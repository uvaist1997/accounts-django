from rest_framework_simplejwt.views import TokenObtainPairView
from . import serializers


class UserTokenObtainPairView(TokenObtainPairView):
    serializer_class = serializers.UserTokenObtainPairSerializer