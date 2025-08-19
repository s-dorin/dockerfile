# Pornește de la imaginea oficială n8n
FROM n8nio/n8n:latest

# Treci temporar pe utilizatorul root pentru a avea permisiuni de instalare
USER root

# Actualizează lista de pachete și instalează FFmpeg
# Opțiunea -y răspunde automat cu "da" la orice întrebare
RUN apt-get update && apt-get install -y ffmpeg

# IMPORTANT: Treci înapoi pe utilizatorul standard n8n pentru securitate și funcționare corectă
USER node