Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTGG6KEAMGQEH3DR6JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A01D3EFAB4
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:05 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id c11-20020ac87dcb0000b0290293566e00b1sf380748qte.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266764; cv=pass;
        d=google.com; s=arc-20160816;
        b=BFBl2/qY+17E1be/IKHzZ+6aK29GFW0uZa9OhC602kRSgTPJnJRZ01nP00OEFYI6BS
         TKaqnB8Pu0BO9VH/k8ROKaWeYGEeLs7DbtgLJixPwJ3ys4c3jK+DYE4k5bbjvHz0AdPS
         js6PEBgzgp6lME9LkmqVLcfrkfiLYH0wN3g6OG1FvzFiI23Cga5WtNk9KC+nw6Qed1ah
         qRbyMzEiFDso9jkqCgvnIb0KkyTNBL0n3JIS/oqzKypKJGGwx9vyqqycMZ9YJnkDbNa1
         ot0mWD7IZkb4sZ9/SM7Q3k545c2SgLHljS9iVwCnfzCy/PBP1U4r4brzXWXGYTa/R1zv
         XDSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jCL+x5gguXn5/p0dOGAaZioZNeyvh1QMK+cu0Ne7L+4=;
        b=nM/SmGcq4+nWyQcsoPTqnS1e8YyuIHMBkcWhphkX91REeQB9nPg89eEJIWzUIA7wcd
         lD+as1WhmMrvgDyNP3kiL7s5O0/+wPNQIh6mTP8sx7M9U5ujzv+uzSmWhMAZxeRmhHQq
         3Ad7mfna0fVxpOXrNOuEXMdWqNVv/YAaW9qX9SpA9Jh4uU0W7h+EQj7YLXnRLw7DTGJq
         uzvtRHNukib+wgU1A0Ch+NsiyrA/7R48nr47cU/qsghGWp+ZYrdKGtLCrGIy/9Io0993
         m24WUrt062WqaNgcsuY148sPfwk7c9lGHZfWus1zsltWRZjLlr7JxwK6w9i13u63eooY
         CqEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CAUQzirn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jCL+x5gguXn5/p0dOGAaZioZNeyvh1QMK+cu0Ne7L+4=;
        b=oEXBJibQF0j3/oQqAbSvrR0i0x90LcJfKH3tahX26QCpfJ9vgdLPk7RyWs+A/VaCg9
         zuJTTkvOAzKuAIfwhJ57hKdreaOk9npmwJQUf6z6jAbSFnifyj305LncZN2pnSwibqYD
         q7+cFcElG0uG8n286vPHnCZSJo1Eay0KUrk1vIekpdnlY7tkIJvHupPp+OV2ox47M/P7
         ljrOZCz9zdT5Q614tDSVieQhbkvMkLBTaHtADPVHg3f+NLCgUZAq1UPwwgQiWrxWp9AZ
         1RF0TFeIRr2VQkYQv4nfFvcgY4aAOjwiE1heWecmrV9zr53EKv/t1U2azSs0qUqpcUY9
         t1KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jCL+x5gguXn5/p0dOGAaZioZNeyvh1QMK+cu0Ne7L+4=;
        b=I31uD/rbkTiA3gQhBIlEe8PZGsR8qY9JttBGd3MEO9/GodM7VVeQXcbe3umSJjKCYi
         9JH0ETv/xeqj6BxYF3vS8Jkymv66TFCPX6UFk6qHIGNHiL4KK8n2G0555CupG5DF9Tx6
         TGKHCXiIJDYIILiLiSHD2ji6nhaAYUUOmuzLwUFGOgd2fxooHfIwho+1Id7/mJMSy9HL
         8aPaf+ZXWwzxHk8ME7EFF/fZRU9Zw3HDeh6TxNWpsRokBcmkdlKki6evYYSL9I8VFcnb
         rWQAqjozuSApb2hFGsKMiLKCGYuHxWw6tLk2cEGY++1wFrxqT4MfgQ0GOlF7bxj0iAYN
         1hAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53360tB/r/ujzQiT9gdx6qabJzEoRbLwUZuDUSJj/4iLcOFDc7e5
	ZGMXnHXHWjYwGVrE0H3uYZk=
X-Google-Smtp-Source: ABdhPJy2puV03OlvHDXbsHw7kTi9D8IbP4jtp6kkyo+UYwq2OIUGEo0jWHhSzK0UPOhO/yamvTgCZg==
X-Received: by 2002:aed:2149:: with SMTP id 67mr6375974qtc.60.1629266764544;
        Tue, 17 Aug 2021 23:06:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4111:: with SMTP id q17ls510987qtl.8.gmail; Tue, 17 Aug
 2021 23:06:04 -0700 (PDT)
X-Received: by 2002:a05:622a:60e:: with SMTP id z14mr6438314qta.381.1629266764061;
        Tue, 17 Aug 2021 23:06:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266764; cv=none;
        d=google.com; s=arc-20160816;
        b=tIub1cgzAhkL0qElRycPDbNUGjO73RgKoFJUJ2NEl9vUoj9zxjmxFbt5OetzsssZxn
         JMw/febcRME/IrEXhPnvCvGooEi5/80PWgSAKOde5RUXMWTrQdm+3sA8Al21pROT67nN
         kD+ACjhcb0J4xm8oB97gt2fSxwqBeIWm6rmSeyusfdF2EYKhIk8g2r844ktEQLvsV4yg
         iC7e123T0q1T/wjpRcj1K5zjvDnZn2IPEdZuIgObKbIkmxXz56JtquxbdH2fPV3hwfI4
         p1JF1T6WJn6fJZBaOYIMibQiBK/SRqxpVZG8uGXqzAKHuWbR/ASre7sHz9RDucmKUS7l
         tx6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=24kJIAEB6l7w/rhOBw7zIER4xYF+Qa9/jIWUD7WdGH8=;
        b=dyjDj43yqaK7owQAQ1r1vWlQ0J/ANbIc5g/osa9eD/YTY6qFy25E4xuMM7yVPM5bB8
         KZsrYeL9OW0wXzhOq01lxlcLnzNDJLTV2goQ1ZRZpQjyCxdvyBpXiMPOkp18zSoafIp+
         DH4hun0qE4uS5E+7xn9tKLzG+MP11DRluA1Xo8j0chp+ioe/P1Gynhh9GRjK4IA+pcmu
         56doBYebiqgc746hGa68Lv8dq+m31LshWocK9racNXc4igMuP7V5ZvpYq305EuXsg/cp
         DP6Cq4sXNWxL45+LHfosBo7dRRczAiBZBbjjZOnXpLCPowUA5Jk8cZ+DZ1u5zoKb9WuC
         brKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CAUQzirn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id 12si208443qtp.2.2021.08.17.23.06.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:06:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id u13-20020a17090abb0db0290177e1d9b3f7so8249327pjr.1
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:06:04 -0700 (PDT)
X-Received: by 2002:a17:90a:17a8:: with SMTP id q37mr4764229pja.177.1629266763527;
        Tue, 17 Aug 2021 23:06:03 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r16sm4015029pje.10.2021.08.17.23.05.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:06:02 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 35/63] fortify: Detect struct member overflows in memmove() at compile-time
Date: Tue, 17 Aug 2021 23:05:05 -0700
Message-Id: <20210818060533.3569517-36-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3921; h=from:subject; bh=Sc9iLSXfmFAQB6MEpEEuTn+7NF3Srx3T0CPKcvxZXTU=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMldDKLxaagYEOz2y02LQlqkNv+irs+MsEpzkMu 3MdrhsSJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjJQAKCRCJcvTf3G3AJvDuD/ wKE56AIL4EP7Vjz/QS5YbzobA7gkvOJu4dByH3vGhD9uwSz2raqgiS3N5zizAS9MSzKWvBQ85esh09 6sm/qa0W3g3z2D8hmZ9qQxrmxx9p6YL6HNlmwGIzYzeaTmzot8reJM1FI2V5fY1FoCKnId33EqbK06 vqaiAkMJyUkqy2YrdaS/D/HgN0HLmJDdiroxYBt1R8yVDAYBjyJvrr/8wk9JyAVLKiYY/jIfyWbg2c E5+sdvJ/2KKN5V6glg0K8IYFw4en5EXtjm44p7v2bhXKdErI0NqzapP+ztt5zhbTW8RzB7WZkbDp07 M0C/0rGk9rC34jGkNKto2nWPpipLIdU/eyZamr4A1LpeEA9hoguUtw/AAdnoO8mpdh7lGfxJZSHpqI Xg1U7m/fXv3nA1hWCphA2+k4XAdbf8fEQXSNPaEjroJbLDdocMcTLm01NCjGJ1X1xWeJ7tfjMvYNVc GbnZyJ47Ronjn0frwpKfRajoJfHpRFabO0kCXXgg+hxxb4UFvycYPsT3STVNF3NOHjyT9TUYT5VFW+ goL1hLcifbtfSqElh/fEtLY2DakkjO1Dml7F0gtwpJ0l15ZJmjLRtJXZ9RQ64AvLssTCVqTOwdf0YU CxAFNcJrYg9+l28nNI8luHr7I5sEMyS1JBVMEIMDHSgcoWOw+oBMyQU79SwQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=CAUQzirn;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

As done for memcpy(), also update memmove() to use the same tightened
compile-time checks under CONFIG_FORTIFY_SOURCE.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/boot/compressed/misc.c               |  3 ++-
 arch/x86/lib/memcpy_32.c                      |  1 +
 include/linux/fortify-string.h                | 21 ++++---------------
 .../read_overflow2_field-memmove.c            |  5 +++++
 .../write_overflow_field-memmove.c            |  5 +++++
 5 files changed, 17 insertions(+), 18 deletions(-)
 create mode 100644 lib/test_fortify/read_overflow2_field-memmove.c
 create mode 100644 lib/test_fortify/write_overflow_field-memmove.c

diff --git a/arch/x86/boot/compressed/misc.c b/arch/x86/boot/compressed/misc.c
index 743f13ea25c1..83ff4354970e 100644
--- a/arch/x86/boot/compressed/misc.c
+++ b/arch/x86/boot/compressed/misc.c
@@ -34,10 +34,11 @@
  * try to define their own functions if these are not defined as macros.
  */
 #define memzero(s, n)	memset((s), 0, (n))
+#ifndef memmove
 #define memmove		memmove
-
 /* Functions used by the included decompressor code below. */
 void *memmove(void *dest, const void *src, size_t n);
+#endif
 
 /*
  * This is set up by the setup-routine at boot-time
diff --git a/arch/x86/lib/memcpy_32.c b/arch/x86/lib/memcpy_32.c
index e565d1c9019e..f19b7fd07f04 100644
--- a/arch/x86/lib/memcpy_32.c
+++ b/arch/x86/lib/memcpy_32.c
@@ -4,6 +4,7 @@
 
 #undef memcpy
 #undef memset
+#undef memmove
 
 __visible void *memcpy(void *to, const void *from, size_t n)
 {
diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
index 25943442f532..0120d463ba33 100644
--- a/include/linux/fortify-string.h
+++ b/include/linux/fortify-string.h
@@ -307,22 +307,10 @@ __FORTIFY_INLINE void fortify_memcpy_chk(__kernel_size_t size,
 		__builtin_object_size(p, 0), __builtin_object_size(q, 0), \
 		__builtin_object_size(p, 1), __builtin_object_size(q, 1), \
 		memcpy)
-
-__FORTIFY_INLINE void *memmove(void *p, const void *q, __kernel_size_t size)
-{
-	size_t p_size = __builtin_object_size(p, 0);
-	size_t q_size = __builtin_object_size(q, 0);
-
-	if (__builtin_constant_p(size)) {
-		if (p_size < size)
-			__write_overflow();
-		if (q_size < size)
-			__read_overflow2();
-	}
-	if (p_size < size || q_size < size)
-		fortify_panic(__func__);
-	return __underlying_memmove(p, q, size);
-}
+#define memmove(p, q, s)  __fortify_memcpy_chk(p, q, s,			\
+		__builtin_object_size(p, 0), __builtin_object_size(q, 0), \
+		__builtin_object_size(p, 1), __builtin_object_size(q, 1), \
+		memmove)
 
 extern void *__real_memscan(void *, int, __kernel_size_t) __RENAME(memscan);
 __FORTIFY_INLINE void *memscan(void *p, int c, __kernel_size_t size)
@@ -411,7 +399,6 @@ __FORTIFY_INLINE char *strcpy(char *p, const char *q)
 /* Don't use these outside the FORITFY_SOURCE implementation */
 #undef __underlying_memchr
 #undef __underlying_memcmp
-#undef __underlying_memmove
 #undef __underlying_memset
 #undef __underlying_strcat
 #undef __underlying_strcpy
diff --git a/lib/test_fortify/read_overflow2_field-memmove.c b/lib/test_fortify/read_overflow2_field-memmove.c
new file mode 100644
index 000000000000..6cc2724c8f62
--- /dev/null
+++ b/lib/test_fortify/read_overflow2_field-memmove.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	memmove(large, instance.buf, sizeof(instance.buf) + 1)
+
+#include "test_fortify.h"
diff --git a/lib/test_fortify/write_overflow_field-memmove.c b/lib/test_fortify/write_overflow_field-memmove.c
new file mode 100644
index 000000000000..377fcf9bb2fd
--- /dev/null
+++ b/lib/test_fortify/write_overflow_field-memmove.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	memmove(instance.buf, large, sizeof(instance.buf) + 1)
+
+#include "test_fortify.h"
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-36-keescook%40chromium.org.
