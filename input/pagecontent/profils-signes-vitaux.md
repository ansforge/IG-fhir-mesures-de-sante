  
Les profils spécifiques (préfixés "Mes") spécifiés pour les mesures de santé sont basés sur la ressource FHIR standard "Observation".  
  
Si un profil InteropSanté existe pour une mesure, le profil spécifique "Mes" correspondant est issu du profil InteropSanté.  
  
Sinon, le profil spécifique "Mes" correspondant est issu du profil FHIR "Vital-signs".
  
Le schema ci-dessous illustre la hiérarchie des profils des mesures de santé MES :  

<div class="figure" style="width:100%;">
    <img style="height: auto; width: 100%;" src="schemaProfilsMES.png" alt="SchemaProfilsMES" title="SchemaProfilsMES">
</div>
