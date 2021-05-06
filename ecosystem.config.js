module.exports = {
  apps : [{
    script: 'node_modules/@angular/cli/bin/ng',
    args: 'serve --host 192.168.1.14:4200 --disable-host-check',
    instances: 1,
    autorestart: true,
    watch: false,
    watch: '.'
  }],

  deploy : {
    
  }
};
