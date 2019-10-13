server {
        listen 80 default_server;
        listen [::]:80 default_server;

        root /var/www/html;
        index index.html index.htm index.nginx-debian.html;

        server_name _;

        location / {
                try_files $uri $uri/ =404;
        }

        #################################
        # CSP - Content Security Policy
        #################################

        # Só permite carregamento de recursos do mesmo domínio
        #add_header Content-Security-Policy "default-src 'self';"

        # Só permite carregamento de recursos do mesmo domínio ou da cnd da cloudflare
        add_header Content-Security-Policy "default-src 'self' https://cdnjs.cloudflare.com;"
}
