Return-Path: <clang-built-linux+bncBAABBNOD3T6AKGQEJSQOEWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id A92082996B6
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 20:21:26 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id s16sf1260616uap.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 12:21:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603740085; cv=pass;
        d=google.com; s=arc-20160816;
        b=K93zpsnopgyPqkbu6apwg90X+2PMZV1wuQQYXrtYvo//LcE/oX+hoH047QqEFxXmkd
         c5vKm9ek9oNU8OX0XosGeeIirM6denQUw0xKbSkjuYN/ZB5QtnhGtLFwsmtONLB5Nvc8
         x2zcsn9jDRflxesqLIETRR+b6umnZADoNAIeDpu378c+tpE1v+7yp2dwiBwjGDnUfLI2
         d5nDLuqSO1w1OSsuLLfgl98yVlbgYeuzHP/iS2nDsaw4uatUaO5/aCgFSFEJXLv8B0tC
         7h5O0SXMK6l0m9MU0FIY4BwLsz7PsSYLkvXUIton/ZEz5U0EPnX3zYwCdwK0Ki9pmLQo
         1mjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=m4QqUDC9WHr7YAXOrxl+fpaPaOx2c23x5Nc1NyPar8s=;
        b=Vkh50yrrEvTErv5Q1ofMhn1NUPfeEnQe1mgZcXMRpv0zVaQ97siZUwguxIkzkhpIRZ
         ModwJh2nuak41oMIALD6iNhk+1GX+MyK5DEa6fMcG3t1E9WFMQNWAxr3PRza5FdRfVdb
         onmXaJkxM7sWOkPHOimB9SX0D9xP6bibF23/QpY2IQ5Gfcv4rMLFoUgc1Y6tLiGYNuOC
         gpnvPJEP59HP9SHvcuqw83PfJTT2c62hMdkiGGJPvGQ5Zv3yJERCVNCe64YA1xUQDEfD
         NBvR0D7sGbeAAZ0D+VSqbGXj9kxh1Vr0ZV1V8noGIqYfc7ZkI/V65LiNTrm4uy4uIbKC
         Ru0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=omCvoEY6;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m4QqUDC9WHr7YAXOrxl+fpaPaOx2c23x5Nc1NyPar8s=;
        b=eNocRMIOaJZk5pHAyi7I0Uu7GaJ/cXCnTd97misE9O7OL7KixcEK0ifZkSX2vlQmXD
         SsAMXzSPCjaGNZsGICd1Wamy6gbojAgiYtCuc+lXiEmD3ahHZzPf99MdydeMArdpbKXF
         NZt6O3+J0IGYoAb9Te+mTG9Euv4ZmsuPkpoeewlqKZ4oCIyjtxq8a+Hbm4AOznHkJ6Qs
         abr/DR42rTXV8EjXLKxalaaj9fGfAVZXfauPCVePFAz4A0lGwYCq+K1m3S8AyfWx98M+
         hgk+V9O5CJzUFhOJyzRg0lxF3ZLtd/lm8WupOtyod+dtC8DvfiT09IOvYtgjmqQBiNTg
         zEiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m4QqUDC9WHr7YAXOrxl+fpaPaOx2c23x5Nc1NyPar8s=;
        b=gCKwupuqtN8Dfoo6diGw/CRJJDAL153upmZ5LlFddxn8eaayL5AFSasbv+kV9unLvk
         hUTcmhgJaseSZYEjbfNMpPg56r5IqvHD+PcNOgvrtccbeqk4VeTF1ns1GvuYard5GMZa
         rVqBnsNDKTKD+RYqOYjnAprskoTmgTMmPjTEP0y9Nu8XUOhkbbErXC84DCIZyY3PzLB4
         B9z6QLhCh9uOUVnuzMbAH/buZnuJV39i32aX/PZK3tOqyvcsvFkXVMHAW2YiIXJU/h1F
         NwixWQWmZgwDcO2sY4tF8B7dhVJAHTXdp4KoKyF0vwrLfolC4kxf2X2FJSERpMB0DDJ1
         18MA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kYxa2zIv+S0JkcJCPOYlz/ZrQOYnm70qEWswpP3pt0LtIek1O
	zUPd7NMN7rk0YFuKH3tGRs0=
X-Google-Smtp-Source: ABdhPJy5MrDJDfIYLfqokAdKx2rC2+s6Ndud6BWlnJbG7EG+W+XGVOeFCU72DZodNjgOF1nug88g9w==
X-Received: by 2002:ab0:4988:: with SMTP id e8mr19935384uad.44.1603740085658;
        Mon, 26 Oct 2020 12:21:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:874b:: with SMTP id j72ls1106443vsd.9.gmail; Mon, 26 Oct
 2020 12:21:25 -0700 (PDT)
X-Received: by 2002:a67:f919:: with SMTP id t25mr16604088vsq.10.1603740085221;
        Mon, 26 Oct 2020 12:21:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603740085; cv=none;
        d=google.com; s=arc-20160816;
        b=IW6mNH7IfQHxtvdXP03OsCxCDHYaUsPBrKLEJD8fxM56p+J6sNX8D1rG9MPPj0ho8E
         EYRBIYK5XAAJryOl3t/YskgtRrn4H2ouNGrVhZzBRzsKMKXMjlobcod+tRuyRAmffAmA
         mMJc/QcJimNn9Uccjsz7zu5LYB+9lGN/86THa1+2Tdm/XspftV0T7QVS9WGWYHsGErsL
         pUOGBipc1Bxlhy4eVNhD2+U0EliCXlzd7XpqWrgRNf6GBiaZNQr9t+F5StfhbSsY5sYo
         bIgE/6rFr9xsBHVnNn7VtQamzKxzqpeblYs4xoZMX3HWrow6KVPSigtKLHmZ1r50ivHL
         hz8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=yPqSPuPrneHAfyjVbLmyK0qVlZL8EjlRekKc4D/vKzw=;
        b=HygCODwAaMtHokJKm1kQI5DvyeWh5BMSonMhXgV84NHLm+bAnFFZushwq/lSSIRWvP
         auw5Mxjv0nrPrpe4mdgSbLOE2cpqYsEgE3AyTl4p4MjtD10sTzgATyIdr0Yuf3enllYq
         Lx+jWM+QSDrFwM3HJxhSyJCsU3DfPa2N3LhXNkcU4ugxQCh1IOBHp0jqUkGJ195C573z
         60t0rIbw6ZbSlVZwF7WlPcT7Bm9pE4/2bBXHt/IXgyWunsKiexziaZ4G/ZGnWg5ejdZt
         m6g20xjDJb3ljfd8uMqjVt6hhYglxKcgeQkcyn2RPfdaBmizhwJW7+HdDO+r4fQuNpFI
         vwmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=omCvoEY6;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e7si614575vko.4.2020.10.26.12.21.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 12:21:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [192.30.34.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4FE132080A;
	Mon, 26 Oct 2020 19:21:22 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: arnd@arndb.de
Cc: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2] ctype.h: remove duplicate isdigit() helper
Date: Mon, 26 Oct 2020 20:20:58 +0100
Message-Id: <20201026192117.3811525-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=omCvoEY6;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

gcc warns a few thousand times about the isdigit() shadow:

include/linux/ctype.h:26:19: warning: declaration of 'isdigit' shadows a built-in function [-Wshadow]

As there is already a compiler builtin, just use that, and make
it clear we do that by defining a macro.  Unfortunately, clang
does not have the isdigit() builtin, so this has to be conditional.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 include/linux/compiler.h |  6 ++++++
 include/linux/ctype.h    | 15 +++++++++++----
 2 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index ac45f6d40d39..b75b49f00ffd 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -136,6 +136,12 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 } while (0)
 #endif
 
+#ifdef __has_builtin
+#define has_builtin(x) __has_builtin(x)
+#else
+#define has_builtin(x) (0)
+#endif
+
 /*
  * KENTRY - kernel entry point
  * This can be used to annotate symbols (functions or data) that are used
diff --git a/include/linux/ctype.h b/include/linux/ctype.h
index 363b004426db..df8233c84b67 100644
--- a/include/linux/ctype.h
+++ b/include/linux/ctype.h
@@ -2,6 +2,8 @@
 #ifndef _LINUX_CTYPE_H
 #define _LINUX_CTYPE_H
 
+#include <linux/compiler.h>
+
 /*
  * NOTE! This ctype does not handle EOF like the standard C
  * library is required to.
@@ -23,10 +25,6 @@ extern const unsigned char _ctype[];
 #define isalnum(c)	((__ismask(c)&(_U|_L|_D)) != 0)
 #define isalpha(c)	((__ismask(c)&(_U|_L)) != 0)
 #define iscntrl(c)	((__ismask(c)&(_C)) != 0)
-static inline int isdigit(int c)
-{
-	return '0' <= c && c <= '9';
-}
 #define isgraph(c)	((__ismask(c)&(_P|_U|_L|_D)) != 0)
 #define islower(c)	((__ismask(c)&(_L)) != 0)
 #define isprint(c)	((__ismask(c)&(_P|_U|_L|_D|_SP)) != 0)
@@ -39,6 +37,15 @@ static inline int isdigit(int c)
 #define isascii(c) (((unsigned char)(c))<=0x7f)
 #define toascii(c) (((unsigned char)(c))&0x7f)
 
+#if has_builtin(__builtin_isdigit)
+#define  isdigit(c) __builtin_isdigit(c)
+#else
+static inline int isdigit(int c)
+{
+	return '0' <= c && c <= '9';
+}
+#endif
+
 static inline unsigned char __tolower(unsigned char c)
 {
 	if (isupper(c))
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026192117.3811525-1-arnd%40kernel.org.
