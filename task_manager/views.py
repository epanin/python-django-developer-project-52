from django.shortcuts import render

from django.views.generic.base import TemplateView

from typing import Any, Dict

class HomeView(TemplateView):
    
    template_name = 'index.html'
    
    def get_context_data(self, **kwargs: Any) -> Dict[str, Any]:
        context = super().get_context_data(**kwargs)
        context['who'] = 'World'
        return context
