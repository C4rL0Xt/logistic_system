export const environment = {
  production: false,
  authorize_uri: 'http://localhost:8100/oauth2/authorize?',
  client_id: 'client',
  redirect_uri: 'http://localhost:4200/authorized',
  scope: 'openid',
  response_type: 'code',
  response_mode: 'form_post',
  code_challenge_method: 'S256',
  token_url: 'http://localhost:8100/oauth2/token',
  grant_type: 'authorization_code',
  resource_url: 'http://localhost:8080/resource/',
  logout_url: 'http://localhost:8100/logout',
  secret_pkce: 'secret',
  gateway_url: 'http://localhost:9000',
  api_almacen: 'http://localhost:9000/api/almacen',
  api_empleado: 'http://localhost:9000/api/rrhh',
  api_documentos: 'http://localhost:9000/api/doc-compra',
  api_coti: 'http://localhost:9000/api/cotizacion',
  api_cliente: 'http://localhost:9000/api/cliente',

  api_pedido: 'http://localhost:9000/api/pedido',
  api_factura: 'http://localhost:9000/api/facturaventa',

  api_proveedor: 'http://localhost:9000/api/proveedor',

};
