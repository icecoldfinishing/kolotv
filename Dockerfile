# Dockerfile pour Oracle XE 11g
FROM gvenzl/oracle-xe:11-slim

# Définir mot de passe admin par défaut
ENV ORACLE_PASSWORD=kolo0107

# Exposer les ports
EXPOSE 1521 8080

# Copier les dumps si tu veux les inclure directement
# COPY ./dumps /dumps

# Commande par défaut
CMD ["sh", "-c", "exec /entrypoint.sh"]
