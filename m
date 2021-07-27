Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBIPHQGEAMGQEXHGORIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FCB3D7FB2
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:14 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id i10-20020a5e850a0000b029053ee90daa50sf186194ioj.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419553; cv=pass;
        d=google.com; s=arc-20160816;
        b=GYMT26DFsp4JzwVZj5XP2N+scCm2202wjcCBlimVXcyQ5Bp3/N0L7BPGtuhLPIgb5Q
         piChqDqSIfh210sZuuJ+GuEyfEHXPuGW0lX19kGggxvijGtiV90aU3CRK/kKDV+5Ra16
         VY5K496kLIH3FZs6sg26Q7AdP2HaDXrxsbplvlkWx13rHRebTti0oiFntCCfbShKBFge
         eTWg+beoUOUO3y5H6vEWWYK3Cs+C2DrodiIKyCCA4GjCNmDVozQOI+qytD86OT3+I15P
         iqzMZ/PswJ1st46IJcSzLQoXM6NdgG0DZPa40g+N5tK8x3eEcFaUSxCowJ/LlxTB8mtm
         Og8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UW6XoC9dXL1HQwkXEtUxOM4CPNK/1lhB/D5vi0BrV/w=;
        b=f5N0KJ75mt16RlMd8j7s+0TRCW0K2gUbe1Ei2PbP4HBbEJ4H5JCdk6jmIJbTTaXpbH
         4+/B+D43ubzdWFCUgQ4tOmrF3kNdE99NwerwhcEdrJciLWx3ESpJ6ysDDgMQISesI4E/
         bEyuddN6sSKtIyqWALIZoq8aIZrWUlxQhD/i9QTFyRqBJKr9SXSetuUcvIr1phDZ5rep
         1l/nNRYJU87UhMdnNOdSzgJMyaUcKRVRrwtXPY7XfiMoocgeTJEKz/jWTugX4C3yKkk2
         CWLC+ocdzxeoUzkWvPD+mT6a1RTuLJEUYGqx9J7Ldw5ZEIaDAre+reIBfB1+HO3/NeJ6
         DnOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jOYGss8j;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UW6XoC9dXL1HQwkXEtUxOM4CPNK/1lhB/D5vi0BrV/w=;
        b=tg53GwPptRPJPbIScQLQMoGlkLUt+l8sr5Yzx9fWFii+soqsTiNGhV2BlwPfTZ1FVU
         kQcf7h7FRuOqGR9DhOrBgTaWGwDuN8PztjEUpKov0Z3qEd/lPqvvueqPJBVMM7TkSZfc
         ww5M2LX1JQ7ChTlzAQtBRwRcGPugneGgOhy30JcTQsgf7chsnrHwLrCF7w9vavVDIgNg
         qYgnT5HLO+AO4Lb/xc8yZuiRBcVBn1/5ZnWz8j5hb4rovRbtH2KDRgdCY/rAdW0ZaWRw
         F4agQq2Curtma1ED3jvXmTLfSWn4kEzoVW2J7kDU/C1lHUloUea9BVN2Jnw15gayW4rR
         nkUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UW6XoC9dXL1HQwkXEtUxOM4CPNK/1lhB/D5vi0BrV/w=;
        b=EIV0BV7jF17ZPpS8mK3rhXpl78P5icjZgu/95QBvhqqfkLiotmkHWp6u13nZHxRSZf
         pysEdr3HYc6R+mkpF7R3niw6w6brG2MIwUWNfdhnDX6Ia4kbO6TI83VTPIJcLvWsaj5j
         +TdozZX1ne9YZg82nrCwmoScH896la3l3hWnrci4Q14R+u9ncRl5T85XLU6pzYu+ulTd
         HeGPbLlmVsVQovbLkjc3g76vrfXExqfIODSZTh/p1VI0fusnlJ8XT+4xT9TrYhAC0tEp
         l1CAgXF9NU7EdNonGVATie8jDhTKNvg2teUTgDOs19xfCoDda5K9nhW99PLhdbhwJrsI
         LdxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eum5oUVdOelBJOihnNr+MjV8U5B2WNipfkqah0bb3upDF5Q+C
	sQ3x7S4mVSR6Si67k/bVlO8=
X-Google-Smtp-Source: ABdhPJw1XQ+eliap0zjVRP6xVdX+zXBbsG2nJi4N26Hpklg3UpU8hFtfGZNEUz41nOiEC+77NTgRIQ==
X-Received: by 2002:a05:6e02:190d:: with SMTP id w13mr18701155ilu.53.1627419553114;
        Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:fa18:: with SMTP id p24ls18820ioh.9.gmail; Tue, 27 Jul
 2021 13:59:12 -0700 (PDT)
X-Received: by 2002:a5d:85ca:: with SMTP id e10mr12966297ios.193.1627419552774;
        Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419552; cv=none;
        d=google.com; s=arc-20160816;
        b=wzT+MXRcWgSipzrRMS8WON5zoQoW39QvWP15ABU9/I41tSRH8yKKYgdFEBGko+ABTH
         GGT+3lgoTSIoPAZ5Ugvx1nI3Qi9D5nwh/E0eo4BczSpPUFCiDyK+48raEvcSUbusQ490
         ZuxkAkuZVJhSW77WQSo+EB+O51CITPjNJVhmZbJbwJPQEMJOQFxkVRYkvPZgFt2zilTa
         +YKVIG/9FLZ/iggFGuBL2sQB3sa/QmyiVYq+aLYVl8ga2LcIu2GJ4UTgp0deW8V4Bbhj
         5OzqqK210WFFOYNfS1LEo9nkruKYWFNxvgWxbcF5LwhbNySJAfevs5s0fzsmHvOr35ED
         26HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=siRAEsrzVlt9ucK6wXbx7gprBvPU1KNnXc5tokHkqwA=;
        b=mGpKdmVg69u076jEP3j/N4v+/PRBG0UdSgIfu7WK7ui2PhphRisIdMuJo5kowVLkKX
         kQVSReJ7dpvHmJ1zlA7cCoNDfvfai9G9jdUB8TshPq/tsqjtlBEfsLiOkHprw5GXO6HK
         SZZfmNU9GOd3VxKjKb9AuFL7bB262HY2hkC7yx+iH/oP9xoYVAxvKrPo5LXRaqH8Kjxq
         LY5qhsmXsE7qTkJRxWydzNCYq7QtFQnlWfPAs0D0mqzhH/juspp0bMb9SZEmx98MrpYN
         7NdONfgavXhmOGWwHtUkrAheAcb1gLjfjARdCMtUg9tjw7bmcEfzlD/AEudI7de/Gwo1
         WhXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jOYGss8j;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id b11si269188iln.5.2021.07.27.13.59.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id g23-20020a17090a5797b02901765d605e14so997047pji.5
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
X-Received: by 2002:a17:902:b48b:b029:12c:59b:dc44 with SMTP id y11-20020a170902b48bb029012c059bdc44mr13599469plr.47.1627419552529;
        Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d29sm4694011pfq.193.2021.07.27.13.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 30/64] fortify: Move remaining fortify helpers into fortify-string.h
Date: Tue, 27 Jul 2021 13:58:21 -0700
Message-Id: <20210727205855.411487-31-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3145; h=from:subject; bh=12T5m5DUCmUyeamBVCK0X9eqcX/3MZ+nSw3lqvb6DZM=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOGsI5uu4BBDAJak9w31PhY/56QIHQY9qYASnaR 5iXUW6WJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzhgAKCRCJcvTf3G3AJnzWD/ 9zeRHN60Hh1cQdFdjudukv1XfFs+XvKe8NvV9QEHftgDf2iwskre+nLxfXPqwh1hMt9zDWXWY5oRPL 5VdwOf+Yp9IHA0ZzvWzN9d58Qs8EypT2ZK/kY3cBfJ3yHut4U6ddUMH/lIca2buFlaScq15XFNg1Im rQzpN5e0CppW/K6Uh74IxLf9omIWV4GRZ6idGpyfpYdUfI7PbfKfCohrObRQ1ABLMmT/sPmKk2zaCX Cmi2zrNghZVgHMU+Pg0pdsixXI9Do5CVE2nIJ1WB0MlsV/DWz5dRZUn+TU0+YvLwlJdIMOPa2ai6UY SUSovgWePofTVKoTMd6kPo4TNS3nEp5IECkkfec1TThvwuBJW4pgk6u/B5Rit/+OtAqwgemzwWJr5n RkUHACvdcXL6tFqPzDreUzCsCPDvyKJtmR+KPFY2YXCdZH/M0+jWsWVdpvwGHwsmlrw05Cdc2k0oD5 wJcl6Bbk1cUNmBEXi4KHLsRXhnJ1lIP/ctdobCyCAvEq6TKILCsxY+qy0FrM64KtV992CwhdYlkFbq t4KAGEnA4K8jVSm8FgMRrRNGTsLfVRxhyemcFixXRjlPWoj+SO5oJ/TB7kkRUhfleRU7MprwtYNIlk DAYfW1/LZPaRs0Qt9/nWQtdTDdNHUPM7txeSEdhZJMmGBl/8AspkFYgPJZDQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=jOYGss8j;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-31-keescook%40chromium.org.
