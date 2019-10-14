# CSP - Content Security Policy
Este repositório fornece uma breve explicação sobre CSP e exemplos de sua implementação via html e servidores http.


## O que é?
O CSP (Content Security Policy) nos permite definir regras de carregamento de recursos (css, js, img, etc) através de diretivas e reduzir os ricos de ataques via XSS. Essas regras podem ser definidas tanto via HTML quanto servidor (Apache, Nginx, etc).

## Como?
As regras são configuradas a partir da combinação de diretivas e valores:

Ex: `default-src 'self' https://cdnjs.cloudflare.com;`

Aonde `default-src` é a diretiva e `'self' https://cdnjs.cloudflare.com` são os valores.

No exemplo, a regra permite o carregamento de qualquer recurso, desde que tenham como origem o mesmo domínio (`'self'`) ou da CDN do CloudFlare (`https://cdnjs.cloudflare.com`).

## Principais Diretivas
Existem diretivas especificas para cada tipo de recurso:

| Diretiva | Tipo de recurso |
|----------|-----------------|
| default-src | Todos os tipos de recurso |
| script-src | Javascript |
| style-src | CSS |
| img-src | Imagens |
| connect-src | Ajax |
| font-src | Fontes |
| form-action | Caminhos permitidos para o atributo action do elemento form |
| media-src | Audios e vídeos |
| plugin-types | MIME types do recurso, ex: application/pdf |

Mais detalhes: (https://content-security-policy.com)

## Principais valores para as diretivas
Existem diretivas especificas para cada tipo de recurso:

| Valor | Significado |
|-------|-------------|
| * | Qualquer origem |
| 'none' | Nenhuma origem |
| 'self' | Da mesma origem |
| 'unsafe-inline' | Recursos em linha, ex: <style>, <scripts> |
| https: | De origens seguras  |
| domain.example.com | Origem permitida |
  
Mais detalhes: (https://content-security-policy.com)


## Configuração via HTML
No HTML, as regras de carregamento podem ser definidas através de metatags `<meta>`:

`<meta http-equiv="Content-Security-Policy" content="default-src 'self';">`

Veja os arquivos de código de exemplo neste repositório.


## Configuração via Servidor
No servidor, podemos definir as regras de carregamento nos arquivos de configuração de acordo com o servidor http utilizado: Apache, Nginx, IIS, etc. Veja os arquivos de código de exemplo neste repositório. 
