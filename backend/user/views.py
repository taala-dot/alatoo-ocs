from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth import authenticate
from django.http import JsonResponse

@csrf_exempt
def api_login(request):
    if request.method != "POST":
        return JsonResponse({"error": "POST required"}, status=400)

    username = request.POST.get("username")
    password = request.POST.get("password")

    user = authenticate(username=username, password=password)
    if user:
        return JsonResponse({"status": "ok"})
    return JsonResponse({"status": "error", "message": "Invalid credentials"}, status=401)
