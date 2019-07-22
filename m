Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB2PC23UQKGQECPOBRXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 8248F7002D
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 14:51:53 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id s7sf8545298ljm.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 05:51:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563799913; cv=pass;
        d=google.com; s=arc-20160816;
        b=yeHVRS+QUfF0t1EVIfYMg/JY8mKg8dVhKScVLZd2YVby+usaAvV+TusOF8lE6alV/C
         DU2Z6Hdt5JKVNd+gcqoR3BlXQY2T5tzKarOEp/UMPXJdFoc1xA5pwwME7zrjPwIwVRBX
         gkX2bRgZQLDaGnzhOGmxSvsEwphzXKVVNRt70qfzC+XKnE+m8PdgFUbt6sUv9yraXgzF
         MNX99co+cw9EmDz9en9ihh8dnnVyFYGf4UXyudWIaZh20ZRZJxmNA94PiLlrTDGwKWuM
         1xKDLqOSeGgWkPPPFfeGC7BaidPTA/lleuCeCaSUB3NCcX4Mz02weuTigLmZW5GkE4SB
         h5Sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=BRoXWU2jFg2FYc8krxyG91WzuGXvadsiqI+brcUzADU=;
        b=eQhrclS6GM36eyzw1mhYBPVjXDRYzs/iSfrcIQ+6pZLfUJzj3QoCWB/alMVgGycI64
         7SovjrYBFiCrhN8v0fX7by8/vbc3mRCU6yOD8WtBPhHgAhAjcOPhwFOvMS/eT9j6DM3x
         QrGwwETteNnHMdN9+cA2YY/OfHnmyiJIv5JDIyvYab+HJ5qf+ZFqvFxR+CVJ8Fh3d7KG
         EZwvXIa8vlucZlcv1BXkecYf2/WLz7Is0qixZ8R4POse2O9vezTfAKyKOM+9eO9I7KCO
         iZEyL39acBwoknmG0ed9JrBBnwRq0cLWDvtQngoGkcp7W3gY2IqWFI0d2hXhvzz8fPqs
         lCuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BRoXWU2jFg2FYc8krxyG91WzuGXvadsiqI+brcUzADU=;
        b=RRiHUOeU+nMAkp1rIz6aWh78tmjzSZzD6zF5reef71ZsY8BJRIeG8zn9z0QgftrLsu
         k1BHxnuLO2g0JKR2cJvsSqx+6Jd9uH/l3NSx30YrwEfftt/9yYBSuNLai+jVMllJabEz
         5wUbhYssJpoMaDUoMm96QsrgPy3uRIXoBkfPmwd07XMzCsRothZHFVMNeYDIb5jDksVj
         4YpH7aECLDrtLickim5tYxIrYS/D2p8QCr7nfN6KKTPgoZ7dwxbpVlxikTRRqSl0dH6R
         51RFKXEX8Az3uF12Mkq+IgROYS0kYW94o4dyfjkoyEujwyQnn+P0yPrHA64dcais3FOO
         q/aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BRoXWU2jFg2FYc8krxyG91WzuGXvadsiqI+brcUzADU=;
        b=C1g1/30aSsTFkmpJULqMIj9fV6RJ7dwLmTb9QTqE1ygHONfORJMbcza/vzuDRlzg8b
         +1s6KDnCL//WGdMGoTyj4sftG6IRHnENAHtduvzobLzdotdOmmj9QFe3tJ/5ZUnd0RFu
         MOXw46JiML9JwMwoXdrHRPgRzdZoDQ1oVD5+8TMRdeBf1RvVnFWSrs7LO0BeFShWs7Qe
         a3DoU6M4ip0cin41qO+l3Lkh3iCjwgRAhp2HTD2dBLoVWAKhUN91nsXQCnnW+Cerrfcj
         Hu9qY3tWeG7i6JLCoC/DZy4yKlfFG8yKBzZesPtD9Qtxwlf4CjBajjwA1cnzC47l9Shi
         d1kg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXjEZ/4yLGO5BEajcxJVfuV4DUbuRdxze7oWxw+awMy4L6I88DD
	EcsB2JGjGQvRPYcxl490hnI=
X-Google-Smtp-Source: APXvYqyaydnJkWTp24/3I31NyuwD0e1d75JdrH+XeXhUDEgLTqb7WFlWmFR+wXlmnIjkEuKbm7Wb8w==
X-Received: by 2002:a2e:3602:: with SMTP id d2mr301554lja.112.1563799913097;
        Mon, 22 Jul 2019 05:51:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9dc8:: with SMTP id x8ls4444464ljj.2.gmail; Mon, 22 Jul
 2019 05:51:52 -0700 (PDT)
X-Received: by 2002:a2e:970d:: with SMTP id r13mr36320072lji.126.1563799912619;
        Mon, 22 Jul 2019 05:51:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563799912; cv=none;
        d=google.com; s=arc-20160816;
        b=qkDw/0wF/KB9lOzTCmEM5b2Jy6+H1SE9Rg/ZztSJS8cUCM7ms55g4xylZSSByjbYc2
         WodPi51QufB65hzaPP+TJAFJV0uHbx+WnVyJZI0zY+QyjyN1cuTGVERtYX1s3eitLdFB
         q2ngUFx+jhHfhwuK6TCVB83uija9A/q04t2k593VaB6YQacJFvqyhobC+GXYSeIRGaO1
         uvJCvI/UnjAmWWl+Rp7lpnZeApPzByNM2Q5GvuH6opMuiSk0Q1rddJMxZKIBg/Eb/JOu
         MkrwycqJLJiBw7WKKjP6B4PBFQ8c08VS2vJwcxk0yBoFOzyQ+nvqXVCCdJADN9+nKHBv
         y8fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=kNEmVsUid4Fi+RFmi/8D6rVT8/YygJE1FYcmVh5eSzQ=;
        b=Pxl+vkI15Edckmw5fzUCvym0fHn5eIEua/7stekeCOXgQjyMb/8ibsukLCOdJeK68U
         UU9ghhZLrX9JfQ5zQnPKRESenNkG5X1K/BO26hzIFkAl5pD77PsP11kaNOw+u5dlokkI
         94L3B02siEugLi6h5W4FC8oXOT45OwdzpaoUcKkbo8/Ckpju+Jlcs2BcK114wfT5w2fi
         rwzxefQHl2bq9Jvm2ioQKaJNdUWWcx76ky7lfRqsaEmGgIwjfDlABziZu/XiG1P5P7J1
         AOyKkTk3v8rbk4ZtejRUQf7Fb/NwFVNDjSq4TuMTLkk5qITjlfZ9Z1+Z2xMijvJEuzXx
         E6Jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id h11si2149241lja.0.2019.07.22.05.51.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 05:51:52 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MysBI-1icPK53l90-00vyTP; Mon, 22 Jul 2019 14:51:48 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>,
	akpm@linux-foundation.org
Cc: Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Arnd Bergmann <arnd@arndb.de>,
	stable@vger.kernel.org,
	Borislav Petkov <bp@alien8.de>,
	Dmitry Vyukov <dvyukov@google.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Matthew Wilcox <willy@infradead.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] [v2] ubsan: build ubsan.c more conservatively
Date: Mon, 22 Jul 2019 14:50:44 +0200
Message-Id: <20190722125139.1335385-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:ZbSfErMSYT0XZps8vqU+FdzxiZIIfdRsVbwo2+ZwWA6bzGC/I+J
 KFdIEBcdZUW8aDO6RrtMhqauXy0rH/NfKjfGmJdkiNOSJ6sdejYtP9dfLjtgYCLslrunH9o
 19YhL4jj2fsSiGKT2n+rbI92yJSkhdQoS9MC8aZW/5hAa6/MYJaW1MjL7ikoW258MJ1j+PP
 b0qBCormfF0Ay2Iq69rrg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Fru7WA/0SPY=:vO4Aj/PjqBmpCCbNqTzdyt
 Q6nVC4CU8ncCdVXbm8ukI4ZyQqE//Fg1Ah2aNRoJ4DfapUAnRfr1osMWBFxLya51TxOtb9NUk
 GRz40FOeFIx80pOUfvhhF+tx/IhFoWY1cK9WEr39vVn62G6WnMIrhK4T5oq9yygamIX04E4yR
 3kFacJ7KQyfHeyqShHR9REb1f9viZ6l1kmal0m2hqrw9PEqJIWE5Bxjh+MOyVoPmw95XVh+OW
 VrrwGM3ns9CIUB5rc+G1dMmIKeu6u+QQp845bHrq7/CUrcV7YHW4k710EaRMydfRBhSCaGCVP
 NShVaXH78Fgcg580XfZm/K2WcFynGrXCTzNg8vRBlv0fSGb0BEQL46NMg6vndTS2vY2U215r/
 qIF9/HM+mXd0mRbAyQdvmV+rCXPWw8p6Wp3eIswYqqjAmdJb7zjm836JsIf6bjqFNrXjuCbNo
 jOQEmaLNsk/VnQE0An7GL9XlPpJXfMqIaL2xG0xYImPrxEIWPGKtXE+U/U5f10ZCxJDCEYgSs
 vy2KkPtfigdXkAwDKmW61IgWgYn7r+Ptu1K2rXv9y9UsxbivKSGDx0zVfFpFoVYqUwLcNqlwH
 gob87cPAZ07kHesQoQ/N52T+bj3X9YKlof11u9Ui/6L5f76bITDEdlluo6uRX0rCWjmpGSSM1
 gmqdS4siGLsLPVxRZaVA0hJRPw0OtnP/hCs9JRG/UNiI1rbgwSOZKiJXXiEDrT+YvQRC+MZx0
 qzcwZ+nCd8IvJ43W5K8v4dkSbNg7ahYvXvLqSQ==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.74 is neither permitted nor denied by best guess
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

objtool points out several conditions that it does not like, depending
on the combination with other configuration options and compiler
variants:

stack protector:
lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch()+0xbf: call to __stack_chk_fail() with UACCESS enabled
lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch_v1()+0xbe: call to __stack_chk_fail() with UACCESS enabled

stackleak plugin:
lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch()+0x4a: call to stackleak_track_stack() with UACCESS enabled
lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch_v1()+0x4a: call to stackleak_track_stack() with UACCESS enabled

kasan:
lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch()+0x25: call to memcpy() with UACCESS enabled
lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch_v1()+0x25: call to memcpy() with UACCESS enabled

The stackleak and kasan options just need to be disabled for this file
as we do for other files already. For the stack protector, we already
attempt to disable it, but this fails on clang because the check is
mixed with the gcc specific -fno-conserve-stack option. According
to Andrey Ryabinin, that option is not even needed, dropping it here
fixes the stackprotector issue.

Fixes: d08965a27e84 ("x86/uaccess, ubsan: Fix UBSAN vs. SMAP")
Link: https://lore.kernel.org/lkml/20190617123109.667090-1-arnd@arndb.de/t/
Link: https://lore.kernel.org/lkml/20190722091050.2188664-1-arnd@arndb.de/t/
Cc: stable@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2:
- drop  -fno-conserve-stack
- fix the Fixes: line
---
 lib/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/Makefile b/lib/Makefile
index 095601ce371d..29c02a924973 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -279,7 +279,8 @@ obj-$(CONFIG_UCS2_STRING) += ucs2_string.o
 obj-$(CONFIG_UBSAN) += ubsan.o
 
 UBSAN_SANITIZE_ubsan.o := n
-CFLAGS_ubsan.o := $(call cc-option, -fno-conserve-stack -fno-stack-protector)
+KASAN_SANITIZE_ubsan.o := n
+CFLAGS_ubsan.o := $(call cc-option, -fno-stack-protector) $(DISABLE_STACKLEAK_PLUGIN)
 
 obj-$(CONFIG_SBITMAP) += sbitmap.o
 
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722125139.1335385-1-arnd%40arndb.de.
