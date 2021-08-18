Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQOK6KEAMGQER63RZSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B2B3EFB9C
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:26 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id j67-20020a6255460000b02902feebfd791esf706633pfb.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267265; cv=pass;
        d=google.com; s=arc-20160816;
        b=dh4aKdER5rLPYQXDB3vLFNcYTgjdiKLde+Eq3s0YScyfr/LIxbE5PatWFIUdPmeoqE
         PxiOrVIqdMXCAg7FAG7tkiDWwG83zk6nkqbKJVN56FvupUK5f6ObWIq3wdAZ2iEw7LHx
         DIYLZwHfuIbJbrCBBnnICj4joQY6UZK84MLzeVRJj1pn5eBe9iNjUJRt6w6DK2Da5Tns
         2TRHwJZAHpY5ZvfDrTTjj9O+r4w1xX+AmgZ5t/CFTtGlXCf8RMWfK7wKL75mM6ECI8RL
         q9VU/ePvzOh4avLiXUpWwYF4DgYyNigsfkZ+Kk0OUHhgmznAzWYvxi7/kvcL2eCM5W0Q
         anqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=AJy9qit20Pji7eifKzZ18K4kdJlZbNpZpwoE3v8GG/Q=;
        b=zZY7d1emoAfrtpo7Jw2gNafwjRSR1znPMHdKB/YfyYVYSvvqSzetgVQHzMFjGMiMG1
         Arfnl4sYR1fTKuiaJqv4WD00f+LF291FIix/PMr6aT46sUqjkxR6Zt41n2LH1Zhu2Kxx
         UR15z8Lv8dtr5LQdni4TxH7i4sKFVMQtKuh8mxh0pdhGH61EmGWLahmaFlys29jjHnhk
         ixKTOvtTfxJICs/cIj0XQc0cJbqcC4WGhODnIcu6YFKvjv3kRgsFicx1JE6AZ9cxEokp
         wZ39SQ7W6Su4wc9ELNU+FClcoje/tg9A3c1uyS/Vp0aFETgmA6fz+YsCmsWRMe/ACx1G
         kAWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AeeVJhrf;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AJy9qit20Pji7eifKzZ18K4kdJlZbNpZpwoE3v8GG/Q=;
        b=jhkTpkO6LU4KIKz6yqGW6oYTL6UTsEGH3zXNrNB4dRfxB7j3tmFSikxPFgeO4Xb2Yx
         7da6JM4S88sbaHUogJD5Jklr9S4ADQYZ7qy7pzsJnOcUqjxZpumKGV1y4aS3cJvRW2ZR
         EAt5WzaPIG/2jFfL8v4ne1dpDfSWYgj4aC5rMVeR/asD2tONTGS8/aoIGryhM27dnWZe
         XFliX6I8fw/QDVjFgbgKuhi3K1TXBqUh1pcVMHE/pm+wYO7fxpz2lNa31YbeLyuHTNpe
         2UDp4JF/PQxeHpJbklcKLoknwABDSok2mudnS1Uzo4C0aeFm90C0PJMSy0YA6sR09t4e
         r2yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AJy9qit20Pji7eifKzZ18K4kdJlZbNpZpwoE3v8GG/Q=;
        b=YtDfcUGrBnReHiQcsQWRIV6d6afYbhhm4mJuuI3L4egtS+6pC64qy+fyoV/7h4lHuY
         FeSE44b/dF9mAadFotc4ra4cVWZmRczntjjXxQ2TX0njhrvUldrH8MsbS8mcf3XncL+t
         7oZuoD72UBhoKkgqpOZigJvNcaRlpP+7Z1jd7VYyFxXUM6kTrJfXE6gYRRaSY7n8rLrj
         eurKUdXdUqgz1S+1VreK1YxEmgvTSGm4aUqxo9Ahf0BjDgZnjGRlgUyJvxzefn2QG2Q9
         2DAqDFR2IppvH4F/soAMsgzZLIdb30cM0XaNraeq1LdAsowDhPecUvMKMWFZKePvwtVj
         Qb3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RNVIutD4LUUCJZuP+F1Zc4u8pO9yNOThTnuIUXbz/KeiFmsPn
	9zJ7TctG1At9PlQkh1tB8EU=
X-Google-Smtp-Source: ABdhPJyJAupC7tOzsszfM3lqZ19DqMbh1KwCiEO8gLINkShWCPqhC7zLa9LybeV94zM6xOoMwrO9ew==
X-Received: by 2002:a63:e841:: with SMTP id a1mr7310690pgk.197.1629267265395;
        Tue, 17 Aug 2021 23:14:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e787:: with SMTP id cp7ls661882plb.10.gmail; Tue, 17
 Aug 2021 23:14:25 -0700 (PDT)
X-Received: by 2002:a17:90a:f3d2:: with SMTP id ha18mr7891745pjb.68.1629267264856;
        Tue, 17 Aug 2021 23:14:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267264; cv=none;
        d=google.com; s=arc-20160816;
        b=oGRFT7F8dqgb/3oysY+ZpoulyzgvmKBh39JS3OvBLbqUhwS3DbFWNZK9fEgPhGEM/B
         nkTs54g8evfY4Q6/aEBGAQCwWj+WfW1d8sRmHwtgcej128NBiyFjZWzSKqWhiCgA232D
         E5sMUeQGxNntm9a+hB910uxWO9h7u78YKX6GsyDTCq8buTJ8sUagBxRpf5Z5h60rWqWP
         o1NTH8X65DICThFGrQ1aUp4uCv7jWB2Wm5oIirrnMuib71KYj4SSW1DS9FPn6/T2FcEg
         84gTXE29oud9C3tNPB+B/DPBSc6jxK8AdZM7ScKN74JA4xWPyMH1qmkyqfAPa7zAe0fj
         ktAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=yostY7DgtNEMxgC+z6nJc1wNrs0N6emskwhOe9bgfvc=;
        b=u+azHJY5WKRH+9ZEk3iiigjoNZqrhygEUg9tBLh6lkgwu9gtAvTHcbCpFGwe4NWtwc
         uYUlLEai4c34rrylsi6mRzTkSxL/nrm9XpRIuyr/weUZEndt7ToJ6A9of1WTu0CPsZfu
         IWyenroPFTx1kg5nwrNUcswe5F8mXA14TjvWChN8m9N4Wd7lLE7KGfuAMLfBuriKQsDw
         rDdS+dMnnu/XKPw6KvbCCtz7/bsloQ71pmFObu1XkYZp7ttdRYDIS+nTbir3GoylNpox
         a1SJMXc/e52ml8mvIlyvHkLKs7uqa+n4XGOOt31ien/wp7/4n4KdR8/ewVJwcKVk2qPg
         FESg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AeeVJhrf;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id r7si305746pjp.0.2021.08.17.23.14.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id 17so1161153pgp.4
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:24 -0700 (PDT)
X-Received: by 2002:a63:a58:: with SMTP id z24mr7368490pgk.175.1629267264619;
        Tue, 17 Aug 2021 23:14:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j12sm4592066pfj.54.2021.08.17.23.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:21 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Daniel Axtens <dja@axtens.net>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Dan Williams <dan.j.williams@intel.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 27/63] fortify: Move remaining fortify helpers into fortify-string.h
Date: Tue, 17 Aug 2021 23:04:57 -0700
Message-Id: <20210818060533.3569517-28-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3427; h=from:subject; bh=0VUkvjsb3JE/e2CXDissoloibGhlZ4bMl0ZngnkvP5A=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMjq105jppvlrAL+Uq+MQY6ED6Y9FMI8zm1hPrE ykvADZuJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjIwAKCRCJcvTf3G3AJgxoEA CHX4+YbgJVBHEw9Sn3IX5V504yG/NCxhHF4JykNAz36dr+RFRl0Kcyz2B7nwjZusR5Vmt/ef1uwVpD vUFACpJ9hm3dLxu/TOzjSDpY+dbijOGFsfmjsCnfpZ7Aw7arFR+dueXGHyuppqtxwjiei2VBv7NkLH fIaz4akk3zsm7p8PDUMHVqHTa5KJadN2q9rNGGe0+Vrymyn4W+SQwMoF1brOLKkMdDqC2uxEL+WomR ayeuwznYVE7clbnasPBBK+c0w94SjONDN0Ng+k+qk7s79GdMHv49Bdvc3qSjI4w82/rTLISttfrK8h 8crj7mVMeHx8pEPFSL6XYe9Hp6I0AMkhfaY5SXOS+yzS/kN0cyCbdH2Jz2S2OXNz8FG8XxB4b00ouF va0zZRAIbKaayow+9up5yQAZpQVL+Ck/qd/5shLDnS765J4ldO0QpW00Aqnsheh76nhHtTSkhARFnb nOrWU/S+u9e2w9TiYLMlKl2i29H9TKu/q898ZLUW4WvARATseAhjhoWIIDqDA0tNHartcKh2XPoZUM 6tsR542P5E0Jb+HyJZv13FvgiN/pmDXHx0d4dxAPEXFJ+pJ+KOmNqdeULjuvuwtcy6zKPpS+zTHIhL 71tIGGPwH5X3B5sHrfSSzU26nlZ4bBr+0WqJaLk5Kysl4udUeW+KXqBYHTcQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=AeeVJhrf;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536
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

When commit a28a6e860c6c ("string.h: move fortified functions definitions
in a dedicated header.") moved the fortify-specific code, some helpers
were left behind. Moves the remaining fortify-specific helpers into
fortify-string.h so they're together where they're used. This requires
that any FORTIFY helper function prototypes be conditionally built to
avoid "no prototype" warnings. Additionally removes unused helpers.

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Francis Laniel <laniel_francis@privacyrequired.com>
Cc: Daniel Axtens <dja@axtens.net>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Andrey Konovalov <andreyknvl@google.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/fortify-string.h | 7 +++++++
 include/linux/string.h         | 9 ---------
 lib/string_helpers.c           | 2 ++
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
index c1be37437e77..7e67d02764db 100644
--- a/include/linux/fortify-string.h
+++ b/include/linux/fortify-string.h
@@ -2,6 +2,13 @@
 #ifndef _LINUX_FORTIFY_STRING_H_
 #define _LINUX_FORTIFY_STRING_H_
 
+#define __FORTIFY_INLINE extern __always_inline __attribute__((gnu_inline))
+#define __RENAME(x) __asm__(#x)
+
+void fortify_panic(const char *name) __noreturn __cold;
+void __read_overflow(void) __compiletime_error("detected read beyond size of object (1st parameter)");
+void __read_overflow2(void) __compiletime_error("detected read beyond size of object (2nd parameter)");
+void __write_overflow(void) __compiletime_error("detected write beyond size of object (1st parameter)");
 
 #if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KASAN_SW_TAGS)
 extern void *__underlying_memchr(const void *p, int c, __kernel_size_t size) __RENAME(memchr);
diff --git a/include/linux/string.h b/include/linux/string.h
index b48d2d28e0b1..9473f81b9db2 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -249,15 +249,6 @@ static inline const char *kbasename(const char *path)
 	return tail ? tail + 1 : path;
 }
 
-#define __FORTIFY_INLINE extern __always_inline __attribute__((gnu_inline))
-#define __RENAME(x) __asm__(#x)
-
-void fortify_panic(const char *name) __noreturn __cold;
-void __read_overflow(void) __compiletime_error("detected read beyond size of object passed as 1st parameter");
-void __read_overflow2(void) __compiletime_error("detected read beyond size of object passed as 2nd parameter");
-void __read_overflow3(void) __compiletime_error("detected read beyond size of object passed as 3rd parameter");
-void __write_overflow(void) __compiletime_error("detected write beyond size of object passed as 1st parameter");
-
 #if !defined(__NO_FORTIFY) && defined(__OPTIMIZE__) && defined(CONFIG_FORTIFY_SOURCE)
 #include <linux/fortify-string.h>
 #endif
diff --git a/lib/string_helpers.c b/lib/string_helpers.c
index bde13612c25d..faa9d8e4e2c5 100644
--- a/lib/string_helpers.c
+++ b/lib/string_helpers.c
@@ -883,9 +883,11 @@ char *strreplace(char *s, char old, char new)
 }
 EXPORT_SYMBOL(strreplace);
 
+#ifdef CONFIG_FORTIFY_SOURCE
 void fortify_panic(const char *name)
 {
 	pr_emerg("detected buffer overflow in %s\n", name);
 	BUG();
 }
 EXPORT_SYMBOL(fortify_panic);
+#endif /* CONFIG_FORTIFY_SOURCE */
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-28-keescook%40chromium.org.
