Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBAU34L3AKGQEO6XKL5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9C91EDCCC
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 07:58:28 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id d23sf988039pls.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 22:58:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591250307; cv=pass;
        d=google.com; s=arc-20160816;
        b=FOs1XgAr4QY5o1Ga8D2MRhxfm3vtqTUl7EDyDCe8oIlKewYc4HtYz/tvnvyAX0zpu4
         oMTCGbX9i/hd9DZ6zwPaQP+6LwS1Swv3oc8k05I+nty8PMrKZilIMsugb1B26R1Mb3rM
         OWmx2qBK1i2nsXQznaaeKjkLTNY8Pugrtj/I9qQbeXB0KoLKEt86+7KkYuqwMzmmdJDW
         oL+LFq0PsZo4ue45eyYWa9KrzHJoEsPh+QuZV3hlE1xayfD76tNE9qP7BeiCZFmTMqJt
         AlLy2XAtEjZdt8/2U9rRGadolO8i0aGBM9GB3FTSPcCiqZmpS8ts1Z2XHlSF++q4+vSk
         btdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Q/Wdu4WhquSijGTJe5XYLIvjeMhBeEPT++ulDHce0RM=;
        b=zKLU2hfT+9RUOXDqXUW0tqevc3GbC16Sc5i/GUq0Z78PXjXvMnQ0MSydnhD3inhK24
         aPZrvZ+iIWla99DbuCQ5oU9sJi1ADgd1aELLqdjZdkk65pQ11X8X1c+QgMwhwf2gn+7w
         C7DUHmqcXEbFuMaO8NbgTyVEdMlKLsscZefJZqfj+ECuLzzaemMXZhjxhPwPLTxiwqUT
         ARCxJHliW7gvcnHreRDjaxrFLvPhEnIXFp2lZmZYSCsgzSMnGXtuxqgA+z2XfdTOopr4
         y+C0ikDQGLEyW9frVpSA0EB8c7s5H6noRy/aRXEBQEN4T4cXQ57aVEVwYfw7SpDCgQao
         GSZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="kLpY/vYc";
       spf=pass (google.com: domain of 3gy3yxgukefognxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3gY3YXgUKEfognxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q/Wdu4WhquSijGTJe5XYLIvjeMhBeEPT++ulDHce0RM=;
        b=oVccHHcN++HrO0QcjsedbsT4zkKiYaBqqITUTtVKtKCIdpzuUb1Ggy379XJHN1NgjJ
         E+zZPLmq9UZKrWti5DqcriITT1WS8HdZfBFPmXx2hkCuLCwr5DXcIZL1OCDbqTML1GP7
         vxYx85kXCk4iN/nXqpBbWMg3U2tEMLA7f6PJBCJE5au/xJi4C3YlxYo7KmpMJvfuQ8nD
         z6VEg/rx/tQt7aSP/r4yYLWHyEbGFDPWq6bAWH0zMZO7rpRg1fPrP9aZ5qoI/HG0FUny
         peklbw5gb9j10gBC/mOTaYn3Kc+2R/fq77aI/G5hQjpgSACBE1pDAHBOHSQtTwfFnu/W
         qm7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q/Wdu4WhquSijGTJe5XYLIvjeMhBeEPT++ulDHce0RM=;
        b=iLsDNb2dgqrJCxOze1kxAb7fn6yqmD4TcHmWqovpdKfxTUYaGAhbC8aYUYCc+w7O4A
         PAObTqHCMzpdXvM3xZ8hHvopsIjeSG7+F9tdsSmE6EqGTbKz7liGhqN+ITE3CmtxW/0E
         Rwzb7oALTkGjZN2OCZPinWrhFLQ7mc6POI7qSbaJCzASivtCGlGHOB87bCo0Ueysra8E
         AoVnfCZFXjW0koC/ztf0xyCp3DZWbvzTKMgha44q6ZmiVzvo+rLiDgrjY5os9pnqDW45
         10O0YXmX9DIizkkrnFZB2cDs1sK0tqYR+UWIN1hlzUPZDIhdGlgNjUlSXmvseD94FvdX
         BXUw==
X-Gm-Message-State: AOAM532/s1D2jmmTJyGa5ijILcA6Gqvw6XoAav6zqZWFsbAWCY0TTi+W
	vbgdSZnuNagmKljjkeFbh3w=
X-Google-Smtp-Source: ABdhPJwuBWbvv70Fg9eeTFg30ufbo4MmU6X9tOsCNQx39YO0RIwCQL1FolZDg5E9o0sgGQaoO1CenQ==
X-Received: by 2002:a65:6496:: with SMTP id e22mr3008418pgv.63.1591250307000;
        Wed, 03 Jun 2020 22:58:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8f3a:: with SMTP id y26ls1501575pfr.3.gmail; Wed, 03 Jun
 2020 22:58:26 -0700 (PDT)
X-Received: by 2002:aa7:8b08:: with SMTP id f8mr2621009pfd.105.1591250306498;
        Wed, 03 Jun 2020 22:58:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591250306; cv=none;
        d=google.com; s=arc-20160816;
        b=0Z8Ll7LZpfsRZlamC8YsYOmHS6KeBiAH83SpW0voV7ML4z/0BHEHigk7b9SZPWq4kz
         2qhoF75o6BqxJ4cfGKKyGPK0uElN7bUbZkJ7ruoc3Dp8jp8kaRVfIsPS2/FEls8IB/2l
         3SrTyv6GUBlChSPBZFZymDt70kE405/t+RBpcsOYkqDzWEj4hfsmqOSoPYAoxjWLZBzs
         /HR6SSgRGgUtUh9aWWpu55Egko9zri7DCgOM2FFIcjiRbqc52U3vhvZhcfhXITXMyok4
         lNLDZr27Dl3CbJoTUH8UOE7q7TBu8Hype7hnDybknhzMVPtF4u5a0n65MCbBM/T1pDV+
         DzAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=NuYIYrAbbNb8cb+ywlNdLoxBFeloVlNH+GnFfXqWSZA=;
        b=CBnYOpBfQa58ggvaP48JDNLuyzeGwuJk1wnQroPG5kRsEvlFhXr70S5D9f2APggrbn
         iScIPpDgg5Ie1E15LYKM0YlbPl74I2/G15eYIABDhmxWBhahnkk61UVcBFcmg3ZN0mN/
         SZ7MkgiUG+Wuz45F6hbGasNZ6GXS6SKOaf8zugUocu1MzZUElkSnh2ASuzcMWZgTTNkX
         SAbmgjloQLWJg8zahEWSZX4Mtc9DEocnP+xIU+6ckmXWjuuwMAEXx9X5ladPRzG+YGb7
         1ii/p6sPLW9s1z/WeVjQufn20x0hiZp4/9OvDmyou1y0itJzvb68Ym5oXz4UkXpWKWob
         l1xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="kLpY/vYc";
       spf=pass (google.com: domain of 3gy3yxgukefognxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3gY3YXgUKEfognxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id b2si239572plz.5.2020.06.03.22.58.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 22:58:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3gy3yxgukefognxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id c3so6762871ybp.8
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 22:58:26 -0700 (PDT)
X-Received: by 2002:a25:c186:: with SMTP id r128mr5951332ybf.92.1591250305693;
 Wed, 03 Jun 2020 22:58:25 -0700 (PDT)
Date: Thu,  4 Jun 2020 07:58:11 +0200
In-Reply-To: <20200604055811.247298-1-elver@google.com>
Message-Id: <20200604055811.247298-2-elver@google.com>
Mime-Version: 1.0
References: <20200604055811.247298-1-elver@google.com>
X-Mailer: git-send-email 2.27.0.rc2.251.g90737beb825-goog
Subject: [PATCH -tip v2 2/2] compiler_types.h: Add __no_sanitize_{address,undefined}
 to noinstr
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: will@kernel.org, peterz@infradead.org, bp@alien8.de, tglx@linutronix.de, 
	mingo@kernel.org, clang-built-linux@googlegroups.com, paulmck@kernel.org, 
	dvyukov@google.com, glider@google.com, andreyknvl@google.com, 
	kasan-dev@googlegroups.com, linux-kernel@vger.kernel.org, 
	syzbot+dc1fa714cb070b184db5@syzkaller.appspotmail.com, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="kLpY/vYc";       spf=pass
 (google.com: domain of 3gy3yxgukefognxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3gY3YXgUKEfognxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

Adds the portable definitions for __no_sanitize_address, and
__no_sanitize_undefined, and subsequently changes noinstr to use the
attributes to disable instrumentation via KASAN or UBSAN.

Link: https://lore.kernel.org/lkml/000000000000d2474c05a6c938fe@google.com/
Reported-by: syzbot+dc1fa714cb070b184db5@syzkaller.appspotmail.com
Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Signed-off-by: Marco Elver <elver@google.com>
---

Note: __no_sanitize_coverage (for KCOV) isn't possible right now,
because neither GCC nor Clang support such an attribute. This means
going and changing the compilers again (for Clang it's fine, for GCC,
it'll take a while).

However, it looks like that KCOV_INSTRUMENT := n is currently in all the
right places. Short-term, this should be reasonable.

v2:
* No change.
---
 include/linux/compiler-clang.h | 8 ++++++++
 include/linux/compiler-gcc.h   | 6 ++++++
 include/linux/compiler_types.h | 3 ++-
 3 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 2cb42d8bdedc..c0e4b193b311 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -33,6 +33,14 @@
 #define __no_sanitize_thread
 #endif
 
+#if __has_feature(undefined_behavior_sanitizer)
+/* GCC does not have __SANITIZE_UNDEFINED__ */
+#define __no_sanitize_undefined \
+		__attribute__((no_sanitize("undefined")))
+#else
+#define __no_sanitize_undefined
+#endif
+
 /*
  * Not all versions of clang implement the the type-generic versions
  * of the builtin overflow checkers. Fortunately, clang implements
diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index 7dd4e0349ef3..1c74464c80c6 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -150,6 +150,12 @@
 #define __no_sanitize_thread
 #endif
 
+#if __has_attribute(__no_sanitize_undefined__)
+#define __no_sanitize_undefined __attribute__((no_sanitize_undefined))
+#else
+#define __no_sanitize_undefined
+#endif
+
 #if GCC_VERSION >= 50100
 #define COMPILER_HAS_GENERIC_BUILTIN_OVERFLOW 1
 #endif
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 02becd21d456..89b8c1ae18a1 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -198,7 +198,8 @@ struct ftrace_likely_data {
 
 /* Section for code which can't be instrumented at all */
 #define noinstr								\
-	noinline notrace __attribute((__section__(".noinstr.text"))) __no_kcsan
+	noinline notrace __attribute((__section__(".noinstr.text")))	\
+	__no_kcsan __no_sanitize_address __no_sanitize_undefined
 
 #endif /* __KERNEL__ */
 
-- 
2.27.0.rc2.251.g90737beb825-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200604055811.247298-2-elver%40google.com.
