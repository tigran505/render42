FROM umputun/remark42:latest

RUN mkdir -p /srv/var

ENV REMARK_SECRET="8WokWgy5oCg/SJLDmGruFyL3YWaZkorPITM8dGkMCB8="    
ENV REMARK_URL="https://remark42-tigran.onrender.com" 

CMD ["./bin/remark42", "--secret", "$REMARK_SECRET", "--url", "$REMARK_URL"]