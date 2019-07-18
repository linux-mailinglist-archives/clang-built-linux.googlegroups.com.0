Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBIXSYHUQKGQETSF7GPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E636CF1F
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 15:50:27 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id b6sf13675676wrp.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 06:50:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563457826; cv=pass;
        d=google.com; s=arc-20160816;
        b=YrB1IYOKwwvUTg0EtvlOHhEh5uw1VrvBfakkcNJIS4p8D0uieqMgufGz2GkN7u1wye
         0vSnsxpi93yXogIdG9BgZUAIm/jJGz57yCzSKWnGd9F2BG3a1PRPZDjFle5zFq3ppXTo
         HrH6YH5Vexmfgz5QRC3MyCu6Trf40xIKhWwNx/YKQG+EQgbZ2XfRnxIaH2W3AkszjdxR
         aYNuUOX3N/eo4xbPvRDpXQccEm2lZksutN6wazql0URgpIikUsFILXDrS7as+0mPerjz
         W9PYo49tWpOul+NcmLqgOR6xLePRDeq/55NKtgZTM4kqrjvcUcj2Bj2UGSluEblGoUpC
         xbpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=mv2YmoROQ+D98tI71JPzlk9TfRyY/zSpMVoVCDdneeY=;
        b=rTgXcd/ciso7vyQ59YHasj1eSNc2Pz31WIXg113RFKs93Yt5NXGg34U4BBBBpMvRiW
         3lo+6SQh2fZY63Dhg1HoE1F8dXXvK7uyFZQvfB87m55jzoEjzF7CQGZMGdIRUlM4wLLp
         umQ2ptZRfRg5QV8i4f3nVOLFG9NgMUMoUvv0BPCzyE/OSJPaAvlZRntg9MFq35bNkxko
         sbi39s3lVxUEagmpl+SbjBWp0+Aqm7B1HZBJTXKFp8I29876pmSLfPg4VULgE0e1mdDt
         n3IVchN+5wdypmcDRR6KWaG9V4z19GUcuRxlbqFADoLKd2/QEPLC5Ib3DhmxCnV89MWa
         Wf3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mv2YmoROQ+D98tI71JPzlk9TfRyY/zSpMVoVCDdneeY=;
        b=c+45Iftq+NSPTNPLU0YwvGIy6VcVb8zzUNniNUt0l7q2dbqRZcViEf2oErlGMfTNF2
         GlefmAHeQIAnDOoSg6QmjFIXG4fJrD513xGjSwXWaDX1s2bGOOlNqtLCNEVCBKYIvWZk
         Oa7YDcm9YlqL6BUtzqgnxuQpYjeFUcMLa/w019GO49yRTH9ScmBMFQejhxkEawvPQmDW
         P1jYWIM+m/3LJiA1O7pSUSnEXmW7nZRnRfDM4uFNysF7uH2F3S1S2cWJxyttabnLxFT4
         i6U+yYeP5dDhXknaesqgq4kH9DrN3vfcJufyz1Onig+JazTWR9jaEqAMJCqUDbLLxxxK
         Yf4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mv2YmoROQ+D98tI71JPzlk9TfRyY/zSpMVoVCDdneeY=;
        b=oQRck021RoBUzFLVaPY8C6vTMBh+a2hCb0AFLIA8J6AubhxnKGGKg7jQ4loGTYsvgX
         QY4hfuGDCJpl+TVC01IqMHys7wov10bL+Uz4u36MHKKDAOLJ6oQwFU9nW4oN88AJ88yq
         hH2GwRaX1FMwWOE65xewqqrc0Q8UdVL8wTolt5ruFRhBII3fbxEQnBg66xHsuWPDx9pH
         VGErZMxvwYdB9ZYNXotHCjYTDP8sBcMxyyZR30aFdkR4rOI4ez8WEvy1WQfMfC6kz4yc
         5d4PGjwHO75WXFDBQFlv3q3QB2f5Kn+QYR7Fwv9Uk3qKisSuR0FYWV7TcZVEuoV4A6gR
         nYFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVYzLolMX3gkMRLNHis6fzO2mYQrI0nvDTlZCDC70F4/1MzoVOK
	+yTEu8Hou2ezqS4kbbwCbdY=
X-Google-Smtp-Source: APXvYqxxJ8IAyNtMk8fk0zV6iAJvNEZiHpWzPAM90tJBpKa+1o+WtdJVkDoc3TPM8ZvIckkrQWhFXg==
X-Received: by 2002:adf:e343:: with SMTP id n3mr9377691wrj.103.1563457826771;
        Thu, 18 Jul 2019 06:50:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4989:: with SMTP id w131ls10518388wma.5.gmail; Thu, 18
 Jul 2019 06:50:26 -0700 (PDT)
X-Received: by 2002:a1c:c545:: with SMTP id v66mr43755592wmf.51.1563457826388;
        Thu, 18 Jul 2019 06:50:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563457826; cv=none;
        d=google.com; s=arc-20160816;
        b=z5wClEvCFPj1m6FM4UHc6CltFGBDZqSPpbaYUThMaPW/6dYGABzU3SOhslpbWF2lf1
         CokrQgjh+a4xqxmX+s9L/vsSvsWWoMWvRIRbVCRHB19ZkBNl9S/Ip+Yhvr3SNF3FgpWE
         zotKZsUwKtsDZBc0sPlQyKZ5NIkzRlVHYNyaV/+OLpwpapyMJvVECG11ZuZXKMQ1xjuo
         uQZjDsVhdFth5IUCNdXvdpZuqcJFX0own3Smp3wWYJXLztXS5RRZAMoPxeQV5vFwm/Ha
         ENN1ufCB1Dey+jUdMsCpYv3m+/8oX1eFczDL5RfxBfktEuc0qkBTxXEqQx3lwmjOQo2h
         zYUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=0MPEuYUfwm77zpjIS5n8nGkY6EuDpKZuosx9HcU7sNo=;
        b=ocGwAW6iWMwDHBw96jQm9Slo8kflE1IME3heT1Fx4P33QJ72Dny2jbyUuGxbB1C0Zb
         PtNF2b42GloFylzil3FrQBJHreWSZDxYoGLcdGjmgsI7gY/9z8Rnz+YjxDB8aMq2O1Ve
         hx+HBcYuWkfclsgwY2Bkp6O3Q51FxlP/SWZnlGV8KsVGGQzKRkuoucdFuITm7Di2wwOW
         AJUDoCcklTQhBc4St09eQZ09oMMxYKcODrMW1/zrIQGOuXGqXLLXv4c8nwLCCfRXJzEo
         vwM4Cknx865qV936k/ff30G1lpnJcDoMFQDVBXHyuvIwv7QtPAO6zbG76+QxI4UbR/Bs
         etyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id s13si1821760wra.1.2019.07.18.06.50.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 06:50:26 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MBlpC-1hiZQe46Xs-00C92P; Thu, 18 Jul 2019 15:50:21 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Ondrej Mosnacek <omosnacek@gmail.com>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] crypto: aegis: fix badly optimized clang output
Date: Thu, 18 Jul 2019 15:50:04 +0200
Message-Id: <20190718135017.2493006-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:uwVqefWDs4o63p6iE6Irj25ryb6bdvtC7Hrf93yaHtWNB3UyaJp
 4OkfB2kFOY5aXDuTVLHY0gjWaXZSUkd3hdU7IXfyQfGDuBfNtrAcmaozeItDwwk75ge58G1
 sBfVJ6df5mTpV5Y8kgpJ0tPbdf/YlMfhVkrn+9yxYQAHpRDwi5aDbittwSsgXq836kuLfO6
 atp6LgcOt/SEcndX4E/nQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aCIrsaK3jkM=:ZKGmbmo1TdnpLnjvQ7TKLR
 UK81lUNUbJPH6N3UzauZAmgjkh8XdIXJfHlA2yxaBZzaQbahE13aQU30plQa8EoM4NcHktAFu
 BUo1N5DZRWhcPq/pKVsolC5wrOu+Vknahoism+3/CG/QZEWno0G4XuiVW9G+2TL3erKB06AuV
 MIzkPjX1BEtl2PAg5AcrNJX76hAt9fcMTIdZweDC1+uxgEPYaRvAe8qCSRU+ODacG89bmlRgc
 urdUX2XmkHq9ZVppXO6zqwXsmJ4fMdqhTTf+mWJf/pgBP/oDacehSNQsQSVTlQVNgaYWbeJeZ
 NZrwJGaQ0PwcIwFcHoUpMMQvc0HQVtD1Ks5mybVvvNE454pggdn21V2drwBY/dWWKEKhOIOp2
 RXbyfy2JFwvjzyQ8a3s7gcvYcvrftA8rwk8MVtcNoMITl9+vHJpqARtMOuHduPjK8styPiOwP
 rzrfdqasn4dgnKvRD66DQgKxAN/dc9HJL0gyYl1RjAw2WIO6W16rERZu1pqnLrh3O4ifiAOl+
 /vWjCU54+pwusGnbn3yox0/vQwpOY8vHJ8zcmSOuTPIwv3I4Te0NnwpSiVZqXwu+EmzR2geNb
 mfcsvg2dhNFODniKVonHEPqOjwIGS2kTAD7VVIpi520lhplRTZbXOVLW/abWpyW/u9AtZBnKT
 LoyJ7SIEpUDk5tdJdw0k/STEE3V7OZVaAW3OnNSLyjehfTJt7elnuWaxP0uuy9cap+zntpV8P
 hM0gm+T/uxbOZLVE18lo0/HPejnoQkbgy0IMcw==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.24 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Clang sometimes makes very different inlining decisions from gcc.
In case of the aegis crypto algorithms, it decides to turn the innermost
primitives (and, xor, ...) into separate functions but inline most of
the rest.

This results in a huge amount of variables spilled on the stack, leading
to rather slow execution as well as kernel stack usage beyond the 32-bit
warning limit when CONFIG_KASAN is enabled:

crypto/aegis256.c:123:13: warning: stack frame size of 648 bytes in function 'crypto_aegis256_encrypt_chunk' [-Wframe-larger-than=]
crypto/aegis256.c:366:13: warning: stack frame size of 1264 bytes in function 'crypto_aegis256_crypt' [-Wframe-larger-than=]
crypto/aegis256.c:187:13: warning: stack frame size of 656 bytes in function 'crypto_aegis256_decrypt_chunk' [-Wframe-larger-than=]
crypto/aegis128l.c:135:13: warning: stack frame size of 832 bytes in function 'crypto_aegis128l_encrypt_chunk' [-Wframe-larger-than=]
crypto/aegis128l.c:415:13: warning: stack frame size of 1480 bytes in function 'crypto_aegis128l_crypt' [-Wframe-larger-than=]
crypto/aegis128l.c:218:13: warning: stack frame size of 848 bytes in function 'crypto_aegis128l_decrypt_chunk' [-Wframe-larger-than=]
crypto/aegis128.c:116:13: warning: stack frame size of 584 bytes in function 'crypto_aegis128_encrypt_chunk' [-Wframe-larger-than=]
crypto/aegis128.c:351:13: warning: stack frame size of 1064 bytes in function 'crypto_aegis128_crypt' [-Wframe-larger-than=]
crypto/aegis128.c:177:13: warning: stack frame size of 592 bytes in function 'crypto_aegis128_decrypt_chunk' [-Wframe-larger-than=]

Forcing the primitives to all get inlined avoids the issue and the
resulting code is similar to what gcc produces.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 crypto/aegis.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/crypto/aegis.h b/crypto/aegis.h
index 41a3090cda8e..efed7251c49d 100644
--- a/crypto/aegis.h
+++ b/crypto/aegis.h
@@ -34,21 +34,21 @@ static const union aegis_block crypto_aegis_const[2] = {
 	} },
 };
 
-static void crypto_aegis_block_xor(union aegis_block *dst,
+static __always_inline void crypto_aegis_block_xor(union aegis_block *dst,
 				   const union aegis_block *src)
 {
 	dst->words64[0] ^= src->words64[0];
 	dst->words64[1] ^= src->words64[1];
 }
 
-static void crypto_aegis_block_and(union aegis_block *dst,
+static __always_inline void crypto_aegis_block_and(union aegis_block *dst,
 				   const union aegis_block *src)
 {
 	dst->words64[0] &= src->words64[0];
 	dst->words64[1] &= src->words64[1];
 }
 
-static void crypto_aegis_aesenc(union aegis_block *dst,
+static __always_inline void crypto_aegis_aesenc(union aegis_block *dst,
 				const union aegis_block *src,
 				const union aegis_block *key)
 {
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190718135017.2493006-1-arnd%40arndb.de.
