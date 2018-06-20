#FROM alpine
FROM base/archlinux:fish
COPY ./testbin /root/
RUN chmod +x /root/testbin
CMD ["/root/testbin"]

