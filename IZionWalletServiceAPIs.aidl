// ZionWalletServiceAPIs.aidl
package com.htc.wallet.server;

// Declare any non-default types here with import statements

interface IZionWalletServiceAPIs {
     /**
     * Call this to retrieve trustzone ID hash (SHA256)
     * return null means no hash result
     */
     String getSecretIdHash();


     /**
     * Call this to retrieve the encrypted address and signature
     * return json payload string or null means fail
     */
     String getEncAddr(String coinType);


     /**
     * Call this to send a request for transaction.
     * return 0 success, non zero, transaciton fail
     */
     int requestTransaction(String json_payload);


     /**
     * Call this to retrieve the API version, the version is presented by integer.
     */
     int getAPIVer();

     /**
     * reserve for later use
     */
     String getProperty(String propKey);

     /**
     * Call this to retrieve target coin's public key (Supported at API version 2)
     */
     String getPublicKey(String json_payload);

     /**
     * Call this to retrieve the unique id of zion wallet
     */
     String getZionWalletId();

     /**
     * Call this to request Zion sign the message (Not yet implement)
     */
     String signMessage(String json_payload);

     /**
     * For Stellar chain used only
     * (Supported at API version 2)
     */
     String hasAsset(String json_payload);

     /**
     * For Stellar chain used only
     * (Supported at API version 2)
     */
     String addAsset(String json_payload);

     /**
     * Call this to get the balance of specific crypto currency
     * eth, ltc, btc, xlm are supported. (ERC20 and Stellar Assets are not guaranteed to supported)
     * (Supported at API version 2)
     */
     String getBalance(String json_layload);
}
