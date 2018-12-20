# Java Keystore with Let's Encrypt

1. create the Java keystore
   ```sh
   keytool -genkeypair -alias madsonic -keyalg RSA -keysize 2048 -keystore madsonic.keystore -storepass madsonic -dname "CN=madsonic.yourserver.com"
   ```

2. create a CSR 
   ```sh
   keytool -certreq -alias madsonic -keystore madsonic.keystore -file madsonic.yourserver.com.csr -storepass madsonic -ext san=dns:madsonic.yourserver.com
   ```

3. install certbot and ask for your cert
   ```sh
   sudo certbot certonly --manual --csr madsonic.yourserver.com.csr --preferred-challenges "dns" --agree-tos --expand --renew-by-default --manual-public-ip-logging-ok
   ```

4. make changes to your DNS

5. import the cert into the JKS
   ```sh
    keytool --importcert -alias madsonic -keystore madsonic.keystore -storepass madsonic -file 0001_chain.pem
   ```

6. import the intermediate as well
   ```sh
   keytool -import -trustcacerts -alias LE_INTERMEDIATE -file 0000_chain.pem -keystore madsonic.keystore -storepass madsonic
   ```

7. move the ```madsonic.keystore``` to your ```/config/``` folder