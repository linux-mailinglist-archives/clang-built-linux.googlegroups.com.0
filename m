Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB475YHUQKGQEGA24PGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F4E6CF85
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 16:15:16 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id v13sf2675711lfa.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 07:15:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563459315; cv=pass;
        d=google.com; s=arc-20160816;
        b=l9If4YLR3/mCribzG3mcc1oHoHWAIjLQEX2Rn4hT6ySN3f9n2DAxFqvO+ool+q+alO
         ybnuU5w7hQ5gz9sAXkhQwfuIrFJLytY46KJAwj4eYCTsI2vr4qXBPpj1zwP+WsMhZhBX
         CnMILg9X0Z+zrYrnMcgtImeBU+Uv+ci/IX7XIrsT2Hog415RYqzjBi4Mk/8kkTZoq0Sv
         SQOmlEzgYA3kM/ufETJWFk4Ns9cjhXG/zKHhs4RUV8/j5hjP8HnIZUSNuFwPs9Nmjzu2
         hbu5jeGVkYkc5wCnZpVFZ5tM9cMD9dfg4kh0NeDGq0vMCsWEMdYOTCMTukDI5pTBTXBQ
         VTug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=LJgNkD0yzYY0uaOwEfmsr1xyBSc8vGkNsS0Q9i7dBjQ=;
        b=MRrmdsx/mXhI19NRT7CM2RTNpoZomgx0U9JwctHNs5MzArGAWW88QrOwU4997dAf1F
         ViUN3xJEWeMozP48QGEvoNgC7MH/h+zyrui/soVMa8YkT733JKtJ84WCkwJyr/PnVXXl
         X6eM4+4ilgNOsLRCz+OY2N+hgDZOHH6C/9qOzZuhmBhSk+zRcTl3hfzYMqwPQWd6ZpMu
         HgqqrROrI/53CRUkReimEPaEc6tZmuWKYIS0uKegFGBmAbsEkPzyMaqJjfrnAUmgcK8Y
         q2IyBwrpmDlnQEzSKJ5aqk2qyoD+MdEOT5LeTK8LduLWQFJvRRWFXYR5o0Jjplqdhmnm
         aAMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LJgNkD0yzYY0uaOwEfmsr1xyBSc8vGkNsS0Q9i7dBjQ=;
        b=nCIFiJzWsDjntx6Z0WVLU0zbd3cBMMNtQBugjRN4D1CMMmI9+Rgx/PaX9qbEpcLlRj
         qUZI0Z1kf9XRwYqPpIlKKKYGLiWlOasV0z2rM8OSf4cd5JX56gXusC0jb05hjVXZdq78
         W6ebKoRuoviYyDpkzH0KJ+cBfzpkTplHOGaRo5W89OoNLwLkmOZLNrvf4WkGLZ7eyRem
         TEKjsSXJmhlHgMTyZYTax26/aopghWa/jclvC8cD1A2C6PdkcBTcJYbaRb2mSQ1qqK7m
         8zGxoQRmvEJGn3VZ4Tgbp5kf/zPwXlInmhZSfgsOFy6XvKZkARaf9yoh7bhEzDhanWKg
         0CTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LJgNkD0yzYY0uaOwEfmsr1xyBSc8vGkNsS0Q9i7dBjQ=;
        b=KIJA9lr6aCgYR8L1d+U21K+PAuIVmi2tBhoremtubNQHVBDN4oV3STsNlra9nMB6Tv
         W437Ic24IdnBaBCzfkMrS3YHJAQXcJMjpfE4hJkpYAqmmn9hjJjR1/MS6zzChrWK559m
         AndBzIQwm5lwydjTfJu6vh55fdGPH96fKHM/3wTBqinSQo0/9sg/avCwKajLIU3pFzuZ
         oPcFcxJ56JQKFmHxKohN/zML57hPQ/4JbGINf6qXEWWKIiiMgav3ta9TihgY2djm2oOF
         pELHoRUTRYHtDazQvZNvVTiGk8Reqj2E56zXMudRpsglcboz8FxDo1r8zFYCo2EULzPg
         uIiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWxfXx342ksQrKPHE0kaMc5hCm87XebvGo21xSgzoe0bonq/wCS
	GC/L+vw7HSmHqkEh3g+j1NM=
X-Google-Smtp-Source: APXvYqwPNQ2AIDn1HmFCxSP/ajQ8rXpGM9beVUreD5iysLSZJKKUWF6H9CWDk/oQiP+KJSkUB6LVUw==
X-Received: by 2002:ac2:53a7:: with SMTP id j7mr22604122lfh.112.1563459315867;
        Thu, 18 Jul 2019 07:15:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:65da:: with SMTP id e87ls3316025ljf.1.gmail; Thu, 18 Jul
 2019 07:15:15 -0700 (PDT)
X-Received: by 2002:a2e:9758:: with SMTP id f24mr24679162ljj.58.1563459315379;
        Thu, 18 Jul 2019 07:15:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563459315; cv=none;
        d=google.com; s=arc-20160816;
        b=p8sopxqQMFByjSMGrcE/OsIOsvuSI96d9dtproQxr6IxHhakSoO9nzwA+N6N67at68
         g40yi9dmDMivatgPYKmnrZvbwsjp4k6oBdas1JxybKss8hDM3nhXMuihaULzowD7UYYY
         zQTNsGc6sRouuLDHt1uVzOHrJFXyyamK5zAMjIXjUzePvRwvcksu4nO7s1to13485SgU
         y6/CL8r357GN/blATM+2wweD+iGxqX8lEUvDVoX9o2h3fRnh0DNhnJJ6RrPPz/M93rpp
         qr0FuwnWF6TlVtMTINX3RPVhQRm1Ztg0vLc0NPz4ce9RD1QfYCCtfM87jjTfuACGzCrb
         hdKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=taAIq4OnrcIiZ3IXb4MmEzxZWMqmuGqGs2K35XuumAA=;
        b=djLniYUWvtYvBT4D/mDawU8qfa0NKBNuNKGf2df00RKF6CzUKoWUg1XJiIawTBht1j
         Ay/o1hwNj8koOor/kTdio5fV0wgHhCAHhLNf6PB7EHV0DMULhGDeBqzY0RwwtGlCLTGb
         yn9NO8bRWXVjed18urSdcgoYoq8cn57BTuDpV4EvAiR+kRCJw/EFLlrPgtAmb/YNBj3j
         S2ngEr5OpPtCunm/urA7Hj1tze9VBq+dl5b3zAUlCWpuiHIxq+GYTmvYIabzUD2Ul6Kk
         p+QmiJZdgdXBEr6F5GW6Ds4hmC27F/mur1W2l+3HbSv4Q2ztVCOTryfoSIA6DL45sd6a
         cibg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.75])
        by gmr-mx.google.com with ESMTPS id s14si1613537ljg.4.2019.07.18.07.15.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 07:15:15 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.75;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Mgw7n-1iMazi13u9-00hP63; Thu, 18 Jul 2019 16:15:11 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Qian Cai <cai@lca.pw>,
	Mark Brown <broonie@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] kasan: push back KASAN_STACK detection to clang-10
Date: Thu, 18 Jul 2019 16:14:48 +0200
Message-Id: <20190718141503.3258299-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:7d7aH5pzgsLc0NYtyZMhGVmPmogcfXriE2+VCWn+jhEselAYSLW
 z2O23ERO6FuNvsUNlGpP3CEjlXH+EQbVEzkmSZwSLgp12ZXVBBvzus7hMQ77cAd0y7y5JTT
 SgfeGviIgrgv8tP58tKUYTziY06HOkMEhfAP8ySM9VlrSTzQYOCwyuXW6Swcz42Wb+cS12A
 PN2bNXEknc0CMqdZa/lsA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:78tSFT/0HXw=:PkZ5nkOT4Y7P17Q0AWm6AJ
 VzXKRJ+MNUAhZhrBRWhrg1TwyPvK51VDmYsMtf/UeTg61+KyJu1FRJN7DkPFPWk31Ucbt0/Po
 DUE1ePuCLUGNIWpCy7m3PnDGzsv/t4UGvGckbwSOCEEWxRPAc/TLCSedC9rCGtIe2+DbCKjJ2
 5RSx1hCfLtbu3jJvFDNZwqC2sKqXACTyWvk2VyegaOPypD+3L3Kv4UdtUM7iD5zFrJVEbmsyE
 IbDT5AACjHmlDPrftCYZ10yE0ZwuGJJaAryoNBVmav6/+VAgP+OasifKpoWkDi2/m8/HDzOZE
 Ydv8zf6oRT8ZHZWCnmZtBK7nb1GoHteJz5E9O9zlwLW7hcLZX1+ZXn33kWKU9RV7jwhtBtt34
 stlQRD2YCn1iUdXwfW6GfLXQtJTShPnsRZJg++lZGcDRnQdugFsxCkZggDL5rTqQ6IWWa9XtG
 JJEIgJV86pJt11/2EdrQ43A3ddPrgo2YnhFOWwowWzo2wIkZycPAztQS5ks2UMkM/xTMnpJt9
 bg5ArQaa6vUgeATrAaa+Nq3GHSdSI5ZzznvMUk2ygolEVmbasHbhlTcW8aY7n8oeJsnbZT23m
 JafGDoiWefGU7ryH4TxgiEP0WR2CTeMzgrsQrEwz0YXUOn3cKAE59ni1sZI5oGQRqRk8MlglE
 fv2pDVpHvjJKK3WucUFX8mbpwntAEpg2MqhrUAhReDONDwPJ2Ze310492rDUUMAVj9vk8JBct
 M2B46iPZV9SEI8SCNu/OD4u9KGMgU543H/I5qg==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.75 is neither permitted nor denied by best guess
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

asan-stack mode still uses dangerously large kernel stacks of
tens of kilobytes in some drivers, and it does not seem that anyone
is working on the clang bug.

Let's push this back to clang-10 for now so users don't run into
this by accident, and we can test-build allmodconfig kernels using
clang-9 without drowning in warnings.

Link: https://bugs.llvm.org/show_bug.cgi?id=38809
Fixes: 6baec880d7a5 ("kasan: turn off asan-stack for clang-8 and earlier")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 lib/Kconfig.kasan | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
index 4fafba1a923b..2f260bb63d77 100644
--- a/lib/Kconfig.kasan
+++ b/lib/Kconfig.kasan
@@ -106,7 +106,7 @@ endchoice
 
 config KASAN_STACK_ENABLE
 	bool "Enable stack instrumentation (unsafe)" if CC_IS_CLANG && !COMPILE_TEST
-	default !(CLANG_VERSION < 90000)
+	default !(CLANG_VERSION < 100000)
 	depends on KASAN
 	help
 	  The LLVM stack address sanitizer has a know problem that
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190718141503.3258299-1-arnd%40arndb.de.
