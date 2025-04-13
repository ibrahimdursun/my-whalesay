FROM debian:bullseye

# cowsay ve fortune yükleniyor (isteğe bağlı)
RUN apt-get update && \
    apt-get install -y cowsay fortune && \
    ln -s /usr/games/cowsay /usr/bin/cowsay && \
    ln -s /usr/games/fortune /usr/bin/fortune

CMD ["/usr/games/cowsay", "Hello from my updated whalesay!"]

