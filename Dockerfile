FROM docker.io/library/rust:alpine
ADD setup.sh
RUN chmod +x setup.sh && ./setup.sh
