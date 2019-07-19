Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBTOWY3UQKGQE3FV3ISI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3B66E515
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 13:36:46 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id p9sf2926231lfo.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 04:36:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563536206; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cdhot34DpWhK5Y7nR7or5d1U5NG92kWs4rEHpBFx7r8lVPKzpa47/RJszGQunehkPx
         G9odbMMzDnT6VqqCGCxaxN6/vIADWMIcAIMtZ/GYcEhZU889u/daqehy0ux8ufFw4vny
         qpGggfzVcFDtIrIbuNr6++UBMk+6e67RbsB90Ua/mSZmNlDbaPEL68Pua0kCtjWbGAma
         uelBOLdHbInHVlUk0ueM58hpfZbKAq5hsA0Cn+9JjgcP6+z61Vqt6mJirBHYZJ0ZmRu8
         WQB9T1NZ6SXKiJYGS0JCBGw/V+4ghyGSSV2gWvDWPwHYrdMVjyWlS5DyfKpcFKHMxVcr
         7TUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=7dHLv5cJCWt7K6QbOsMTWgQIRC1cPAggC+IlIH36FVY=;
        b=ki8eLVCQ+Ib15fQqiNRL8GKwg3VLhxPjkHqz9S1vdKp+78UcSfFXDf6WZpMb9u323X
         AQT/t9yPJktNTpc8hk+W9XohwFG8/nOilIUSfz/UsOumH6XdaQoC6FuZ8wX0/xy+ZqjP
         IPX2ACP6iZ4M3Oc9VH5eATv9IDja9+hHFPIjGzXVrBYJJuxRaCNiWJn1r3Jehir+Nwev
         FglXkXQPITZW7K+FGetHHFL1RDA9j9ADqpQIQ+TrIAP4d/Uvu89Y+h+uTpSuipobFZMl
         nneGSA7uSDDKptBdRgBMZ7GEcUvaK3hNst7bUfbTTi+HUfmrxm8FivfbgoAd6cxYSSht
         Igvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7dHLv5cJCWt7K6QbOsMTWgQIRC1cPAggC+IlIH36FVY=;
        b=NCIrXBoNEu37VRrhjNpYCmMweEBsHHDB6mk2JKoefgujMH1+QfJhh9nSvH32ptOAuQ
         T7kU6x7vjgdEn164yVh4SMDSxlClx9vzsMAQGWiWhhqworJZWGtihBIm2pfp6mE0TeEv
         58IiZ5zP7jmhDQmprTg/vblQu1WyX2TsMpzIbAJoBjCBqJCdlb1Z1dzdlGIaTrppxokX
         +4w0QEc9In85T8emSh92ZU0TIGx+Hs7/yyJcgkx4Plmedc+oEocEG3iWN8NrcnhsapPD
         zUW00JxZMAUiEAQzafFleGoJqFGOJLXoCGaEGleAMyuTQQUCb+cgQjSyR6ISLvAcJO1S
         7BEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7dHLv5cJCWt7K6QbOsMTWgQIRC1cPAggC+IlIH36FVY=;
        b=NM0T0O7R1eVW6nCaFpZmpb77SjJ4nXuvbtjyWRh0tdiNZ7aNXo6WmqVUMFzp53y2Mm
         32yuFncmRmUZJT6ulJY6i33rf2qNAc1O8US03p7po3XXfu6xBqd2K2ZbpsQtC0Gh01gC
         Y0JaCMjdfoB4qbTRbAdLWLw6e8sJRehLxynp2i/4WWGR8cwTaIpXC5XgFWS7BChizcoG
         Tt+A1p88EbATTojJkMIteXBe9UdBEgcJqAJKiabHdcMbr9xSU+LCWjxCoY/x9KUvHfoR
         kAeJnlTKfOzTkmYuyZ5FmSnR3zyc6wp/GArjdAvfdblVLtt7ZPzqrjFU+5HNgHWQtEwB
         Livg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU6LAPcwhV8H4g1Od0NWcsOi91Xa2V0L4axMBUO+DiBHT5sWu72
	jkK7w/TxPbkQ8MbQOZKmjuQ=
X-Google-Smtp-Source: APXvYqxna7/AxeTpBTQgRSmHgJJ4vAyGjj5OzI+BQByicsT6Scv2hnePeYJ0RrxQ6WaOE0z/at2QUw==
X-Received: by 2002:a2e:980e:: with SMTP id a14mr27680592ljj.60.1563536205985;
        Fri, 19 Jul 2019 04:36:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4a67:: with SMTP id q7ls2582974lfp.2.gmail; Fri, 19 Jul
 2019 04:36:45 -0700 (PDT)
X-Received: by 2002:ac2:4d02:: with SMTP id r2mr23211163lfi.138.1563536205486;
        Fri, 19 Jul 2019 04:36:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563536205; cv=none;
        d=google.com; s=arc-20160816;
        b=mGyicSzl/jL+bGfnQjxS67rDBOY9hJg+rbCfE9L1Fd80iCJOhygksgPfgW28H1imuu
         /f0MeV1WjHbfZkxvfCIrdmC20E5/Bj2gtxb00raGnUfuxj4BJz3qIKbeoZiU2XDHQpT4
         RKi4VaVvqZFcPKXeupgK6CSIc+S27d1g2ZGJZx1lOPi2fWlSaRUX7tCrRO6O2uskyQ2w
         5JWiLoOBxrwJPdxYDefB6vD3bLf7NzFPc2vF7Zf61aH+TnXMAntelw7BBO56VComm/Z/
         v/GHsJuEi489NN5oZq3KKlorzPfOz1qKp/RukprbKxrELDYRRvBM5g0QQe9SaOXnI73I
         g/4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=ijNfqXBjc7+uzKftyZA9AeyFP5xg5Ol6L7Nn8StIrXU=;
        b=Ojc8g39Bdf0viUULAOdFZALcZNUy96UhV0CDLoTftfSoRt54g5svWMXVkCF+IBTF/9
         s4H71oX6LQSCMqciWKaV2k7LqirQRmIBQYNWpLfjQtyZZ9Ur7helyP8tNwONbYqnJ5d9
         ViTDqzREpg42pSZnkQ/zf0jVCCA7Mv4BKd6F2h8VhmvKSn89ODDAqly3+FKeTwc2n6jH
         /XhE5LaCVGBXfeNG3Xt+TSoTfQ630qgJvH/8ucrLVMb2WZd1+5gByoLTxBTc9JOA5yCL
         a++Y9CQIcD58APT2EVmwD07nbPp+aMqaMd5ZXFmLTlRwfOW47C0ERtlqVGeJWhktuu/U
         AvbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id h11si1694177lja.0.2019.07.19.04.36.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jul 2019 04:36:45 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N8oOk-1iTbMT0DmY-015ovh; Fri, 19 Jul 2019 13:36:43 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] [v2] waitqueue: shut up clang -Wuninitialized warnings
Date: Fri, 19 Jul 2019 13:36:00 +0200
Message-Id: <20190719113638.4189771-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:x4+Cu1ASADiy/TbeMxC/JpZ4Hr+PHiYnuXbOqr4YY9JuJSpeng2
 3f9Gv8/AO2G4WxmO68xqn9d3RwvDe9mxBGI5CUxFNJPDCg0QiArroD7xGIRZwk+hXUBIXlA
 0x3gN1Voe7tuES9yOqd27PpTJZs0P6DO03C0/UY7ekCZfmL1fIHWnwSkqEAygUyvmQnxqoV
 c5Jecl7JhGU8xwpKrJUbQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7KfZFP7XH+Q=:Sn529HJGwLvCwrDi6Sgmzi
 +fliR/ktHw/W5AYSQhDmM/bxLESMIymifufmMeaWI/i5RMLb2RxzaXQcBH6q5nHnYmRcwTsdX
 Kll+kpldL7cqtevGoLOH33Yqt+6oUCO2uvbleralr8HS1J0WdjAoXA3OhpaQQq8pHUgLERDVf
 XxtFeemwa27Oe/cDd1i/hMZzlSaui1TvJZLopkdyU0LlMjAv88c/f7JzOs+EcWgrQFDkhImIg
 HJSXtFBK8Ikd+3v0mFYssMKumwhjMLenmbGH5GNgxjbzim5EBbaibDgoxoqN8Jn5EY+H2Kq6K
 X0MExrlW22nEiW46wLpYqmpkN7Wygsav9IsAyZVUNKlpAdDG+GkCcZ5Lpborb09YROrXdW7hK
 bbrIB88olZcwFvfwZZPDrT88aSTicaSSRM9MnZ6jVJsj/6dTH3SrK4bkf87gmyyJEp9y9HYWM
 pmbv7MI5/m8NAdDweu99zx3PptL2AUlaycJ61aTEYECauAhLjwUfTSvTFGYmgK74zDvusaZcB
 caF1VFYZsRVX+ey+hNDRs+aL1a2g0jBWdg6nFHOJLmnDv9T+xnTXdQKJ9txjXhkoyoLz08/CD
 I/4V/uBReZfUHLxqX3x2Cc4c5UXOveCZoY/SeO5q1HWoXBORJVd1DHP0OwpH9pFVtHcgDdfun
 xhacoCdNcU9kOi/dCWl77O389gffoYnPtnGwo+TFkAI2LM0HZOwSYATF5ljnOmpWEQ1jPT7b/
 iVslKq2SbVc0nSP2oQ1UaArDfdXf3cSLtU7M/w==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.131 is neither permitted nor denied by best guess
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

When CONFIG_LOCKDEP is set, every use of DECLARE_WAIT_QUEUE_HEAD_ONSTACK()
produces an bogus warning from clang, which is particularly annoying
for allmodconfig builds:

fs/namei.c:1646:34: error: variable 'wq' is uninitialized when used within its own initialization [-Werror,-Wuninitialized]
        DECLARE_WAIT_QUEUE_HEAD_ONSTACK(wq);
                                        ^~
include/linux/wait.h:74:63: note: expanded from macro 'DECLARE_WAIT_QUEUE_HEAD_ONSTACK'
        struct wait_queue_head name = __WAIT_QUEUE_HEAD_INIT_ONSTACK(name)
                               ~~~~                                  ^~~~
include/linux/wait.h:72:33: note: expanded from macro '__WAIT_QUEUE_HEAD_INIT_ONSTACK'
        ({ init_waitqueue_head(&name); name; })
                                       ^~~~

A patch for clang has already been proposed and should soon be
merged for clang-9, but for now all clang versions produce the
warning in an otherwise (almost) clean allmodconfig build.

Link: https://bugs.llvm.org/show_bug.cgi?id=31829
Link: https://bugs.llvm.org/show_bug.cgi?id=42604
Link: https://lore.kernel.org/lkml/20190703081119.209976-1-arnd@arndb.de/
Link: https://reviews.llvm.org/D64678
Link: https://storage.kernelci.org/next/master/next-20190717/arm64/allmodconfig/clang-8/build-warnings.log
Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2: given that kernelci is getting close to reporting a clean build for
    clang, I'm trying again with a less invasive approach after my
    first version was not too popular.
---
 include/linux/wait.h | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/include/linux/wait.h b/include/linux/wait.h
index ddb959641709..276499ae1a3e 100644
--- a/include/linux/wait.h
+++ b/include/linux/wait.h
@@ -70,8 +70,17 @@ extern void __init_waitqueue_head(struct wait_queue_head *wq_head, const char *n
 #ifdef CONFIG_LOCKDEP
 # define __WAIT_QUEUE_HEAD_INIT_ONSTACK(name) \
 	({ init_waitqueue_head(&name); name; })
-# define DECLARE_WAIT_QUEUE_HEAD_ONSTACK(name) \
+# if defined(__clang__) && __clang_major__ <= 9
+/* work around https://bugs.llvm.org/show_bug.cgi?id=42604 */
+#  define DECLARE_WAIT_QUEUE_HEAD_ONSTACK(name)					\
+	_Pragma("clang diagnostic push")					\
+	_Pragma("clang diagnostic ignored \"-Wuninitialized\"")			\
+	struct wait_queue_head name = __WAIT_QUEUE_HEAD_INIT_ONSTACK(name)	\
+	_Pragma("clang diagnostic pop")
+# else
+#  define DECLARE_WAIT_QUEUE_HEAD_ONSTACK(name) \
 	struct wait_queue_head name = __WAIT_QUEUE_HEAD_INIT_ONSTACK(name)
+# endif
 #else
 # define DECLARE_WAIT_QUEUE_HEAD_ONSTACK(name) DECLARE_WAIT_QUEUE_HEAD(name)
 #endif
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719113638.4189771-1-arnd%40arndb.de.
