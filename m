Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTEGRCEQMGQEDXY2CEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id BE54C3F3E7F
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:57:01 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id k11-20020a6568cb0000b029023d00ca7bbcsf8313991pgt.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:57:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629619020; cv=pass;
        d=google.com; s=arc-20160816;
        b=dqP0mIvYl3fjqwwc3bTFO8AqCUTPZQjSvyFOiuEM1q0fZatsdFBjlNV7lz4TAIE/MQ
         n7s3OmCZFPpXmpDrKTkPbPnSu4j8CJ0hcNLbYjo9DLc0bWiVMLsmqIdPZ6698AjLkuNf
         C6z9kWj8M0OQ6VDAO6lR5ep5djwIriRjUz8RO/5ywDj8UtTMioXO8O2X+kWjRl1lrngi
         IcZ+ArdU6C71RrqR/dJ6pAkoLehIU1QUopCS8Z6w4V+ZZFZ2ACFIXXE7f8GU3BnL5sUE
         OztMxnLznWfnpwvXdYTC4vPqL4mJVS5MFZZJ5NMxRNYQOC1A1j5Rgp4aiS37qFBWJf/8
         gTaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=p9J5OjTP3LkJcfCEzjOjvn5eKB/8l+9yG/2ZB3HM+6s=;
        b=R+v3YnNjgk2gtg983gVFoc3VK7QHthwHqr4nmxX6fbPnGqOhTQb+1iszYH3NLxiKfu
         be/Cu71xD3Nxd7GeHcROkRjAcQ6QnX1BardhIzHfFAPK175oYfBVubXGwZA2CsfDVoC4
         XbTe9TYKwkGs5WQAZFKJxs27A3Cfvaw+PdO8vL6+Xpvl7kuxIeH/hTMnbNkW99W1teb2
         iIHl1NLMvTTNsze2082K2mtvpn9IT4NRjl2m5lcP5GeL28VqxXTA1uuSxKct07VAfvNO
         f3eKx02jtobJBRB7TCytBUXOm6cTN1AORUBDreGO9rEwx0SJSeoFityC6tfCEB5XUyTn
         hRpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cbLTkI8F;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p9J5OjTP3LkJcfCEzjOjvn5eKB/8l+9yG/2ZB3HM+6s=;
        b=MhQJyd2ybuwdaW2WbzvrQCLCL6yWsB0OoZkyVDby4mqr/i5vs/cWCPgRATNgVRB7Fo
         yWcFEcGChceuZq0K6kiDaaSSNjcyq5xN/sjfvXGXLziLZwcG46iyzMv7W0YcFlCOwy/q
         N1PR8m8Hvvil9OmdL2G3gZFhnWthzFCfbqKQoDCLWWd6Uk2nv8UmChSYd3dikxaxgPpa
         UiYkiCjKsa9pADf1pd/mQ4wkKvWYwp5XigqY41hoiPmrw98K1Jvh1vjfRzVHnvbUbK63
         Tl2NUKuiecAl7RUDC/GeHkD+5kqRjsghfjQVc4YkQnOf4MgkTjHBNWT8rNmIqw2VhOki
         1i3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p9J5OjTP3LkJcfCEzjOjvn5eKB/8l+9yG/2ZB3HM+6s=;
        b=AcEy6IG2hzn7rTH/tIzLHCyQkNk+khFYlMZmxgRdVLfWQJRbZVZjx2dditkj3IovMd
         VYD6HJgIVTQcHwG6hZtSkQ7WRkukySTNDBXtijZX3U7VYWYg147Mehk0Es9+HYqEecf8
         saD11/uuED3njiZIWcEK3R5xga8NAJ9bPY+++8TPVj12qCT9iMNM6fUCsIHXyOAMs1ik
         JrgDfjWk1AW/4LtMFaeUeQ/CPK8KLkJNdwuPzK9m/NavLZGcNnz8kFgjIi+LcU8B0SB6
         5aNPgmFzfF6DXMjzI5/tAUvN9DOdHgv7B2lyLb31dkc0kplTIHkECjNuhNcCjH2dNshg
         ZYnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Zord1Fk63Uil+2d1G44JCkqmwUmRNwJ5XFtplpTo4XnDuUJkx
	M85YiMvUESV/U2C/GWt0XWg=
X-Google-Smtp-Source: ABdhPJy9SWUzPCB73C4WuZ4ql+Z99NTqzHZjSY8LhxEnugq481g4BjvKfUHg+/MbPTIOeq5i794uag==
X-Received: by 2002:a63:f342:: with SMTP id t2mr26845934pgj.45.1629619020495;
        Sun, 22 Aug 2021 00:57:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:360b:: with SMTP id ml11ls8413700pjb.1.canary-gmail;
 Sun, 22 Aug 2021 00:57:00 -0700 (PDT)
X-Received: by 2002:a17:902:9b90:b029:12d:5ce1:4d99 with SMTP id y16-20020a1709029b90b029012d5ce14d99mr23174186plp.37.1629619019973;
        Sun, 22 Aug 2021 00:56:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629619019; cv=none;
        d=google.com; s=arc-20160816;
        b=NlXgDaT2wx9LfAtv2rDbKihKcSL8/hdCD38CwD9cWlKDDZdoUP6o7Yhn2h1xUp4XHV
         F3plJwJVhDao8CLAKRu5LQPap5elNCQ7VnmVcj34IV2p9mkYkzKpPoUnDELwa02J415w
         7pzpy09S2DfnRbMteAIBwRrWQZrmEftnkUhTZGZtu6vmsjdNth2YlCbwSaCJVJNaFX/u
         uPOise2loNYaqhwZzzWdylRVEv6/YCJvdzG0BiGatTtxhrc4+GQ5CRil0mu60tWn7YYg
         ChNKFTsh4eghQl0POVq/5zlcnMf2KO4ObHxVagy3+7FWjWi9SXqZWzsjmea/3iriVYdS
         eaYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ph4GT+kwYLxKYCnHgj0jmviVrrZnOYP9VDlVxWdpZQQ=;
        b=P4wpxvCoADL0jkopgSouBRsfCuiB3yZiqRPYwmi2pyvJvG+zoKUi6gLnMVn7CZ1LJl
         XDp7+7JWSdTyBkwcF3MbmGQMMOD1l2xl2IAg87wgqYBPCDuqc5DRYx4aTwW+aX/+LID2
         5Iv2xKyh9Qbl1lbHVZb/4JNQQXyR4vpQfQGRtKbsQtfo8zPYPQps4BPz/yB+X9NLsnDZ
         Ty/TIqPya3pPiQjj9DiOiCZTQ2bF4wkY5FWI2/g76Jt28JwV8yDTDgQ7iHS56aA5TGf3
         60WO1D+s5ScLsBpGqyjfakmcwx0hotsM0sCTCmffzTqvlSrnowLhY4kHfoYFyaXysnEg
         3PAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cbLTkI8F;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id q2si685133pfl.0.2021.08.22.00.56.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:56:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Received: by mail-pf1-x431.google.com with SMTP id m26so12591669pff.3
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:56:59 -0700 (PDT)
X-Received: by 2002:a63:1e5c:: with SMTP id p28mr27011640pgm.89.1629619019738;
        Sun, 22 Aug 2021 00:56:59 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u10sm12069888pfg.168.2021.08.22.00.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:56:57 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 15/25] fortify: Move remaining fortify helpers into fortify-string.h
Date: Sun, 22 Aug 2021 00:51:12 -0700
Message-Id: <20210822075122.864511-16-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3207; h=from:subject; bh=93UyhKlsXw7Mzj4VgqjxzznxP8lIxJTMZfvK+B8oq14=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH3OYfO092ICV+ibgtBFhM/x4pDGM/xKvrIF7Y4 u9GhAY2JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB9wAKCRCJcvTf3G3AJhbFEA CQLxyeDalkY9Ndqv9AMIJK+dR3dgTsvujTNcKxybFXMsPX5qQiLXzxnYHbnEZA6O9qCYtJGHDMqouc paqokzs2Ftz7Kl0kFYhdvYUcwRL9fpEtbKHFDkqhMKF8IiA+10Ii//mSexWDVUVLe8NK5LHKoLvbo8 48TXLu3uXiOmZGOYPlIBcvX5mpJM2AYJynN6+0hTg2FmNBd45C6pNtPNsA7DThyPl6jNJ+igNROeMK UThLUHiK5Q79iJFl6WC973bw5kezzGgJIdI6a1lppHVtLPsr9I5yI7GZkEjcPAq+rpaCy/gE1MmBci +SVMcWyeDoz5d99y1b0ctqGrX/yRGTZdo3lW8fTBk/iJ7UC9lp+SOtUYvqOIwMZbvntUVHp1kGEMuI xvTohIpbi6bWZ9S6I3OH9M2GFX31nnJkgChPBA+BqgBGC/ZCheCUWV+Ph5b2zeXaScEgHD81mhCo8P +O00gNJc7y/qHI9jPjraGc1ZlgsasPmF+GZDL0trnSJ7/PGjHQddLBdFytk8Mv3CyvxuCCG8JhqslH bHEx7JNqbiE8wYakA5zgtjc+KBMZyD8P4dBOVVGTMAMWshyQdGGbaeBIxwVrQBxq+2a/GOgpwpdKuv clylHOCpzbAArRCT+MmyC53n3BEbpzanfvZzsn7CJEuuvmmYH6WttlaIdD6Q==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=cbLTkI8F;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::431
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
were left behind. Move the remaining fortify-specific helpers into
fortify-string.h so they're together where they're used. This requires
that any FORTIFY helper function prototypes be conditionally built to
avoid "no prototype" warnings. Additionally removes unused helpers.

Acked-by: Francis Laniel <laniel_francis@privacyrequired.com>
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
index e9433caab217..1274f45ffaf4 100644
--- a/lib/string_helpers.c
+++ b/lib/string_helpers.c
@@ -879,9 +879,11 @@ char *strreplace(char *s, char old, char new)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-16-keescook%40chromium.org.
