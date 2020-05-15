Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBWO67L2QKGQEWEF2KJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id EF99A1D52F1
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 17:03:54 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id a83sf2493991qkc.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 08:03:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589555033; cv=pass;
        d=google.com; s=arc-20160816;
        b=wMPdjxe9IkFidWr3pvU3vXGNlfLsUOp4oJAmS/OxJ85w8odPsR/8VaxM2pDM2AV5qR
         ksAIGqSep/okuyTtO89GMog/kHb/WxR9jR1yx/WmNl1THN+Jhy/4Mt+NJFmcNDfGkNYc
         1aSgugVInD5O8ZVdtxI5fcmuYemWus19XO7sn+Crc/T6A2I+DZyZUG14u+/rwbx9PVSG
         IiRLvNoGrkMVj9MqnWTGI1RVG0zgibkY4KSh1pgVlX8UacsI9B8qcDXHPTUqrlDlsDsC
         YAqmCdoh2nQ+HUlFLLj0C+Wtr0oX/kpvtWLdoj+QbTRZ/x+/4wDb0WVj+NyWDL1Qd4AN
         VlCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=+wFgyThQxKTz4fr7Oxqf87zkHCNM2kLfryNjcyqqgO8=;
        b=CkHlmhcDaQZTYmkbUwojxmVdbEBwYOAbJydl/Noe1HIA49lURxE9Mu6cFfbOmQvSah
         m5KNzPSKznAoWxTk1/Kq00C2p5tZvvw74+3RJSRmPNQBDyZ70RoszTIc42Ow0OzQuWAG
         SPbtdw8vRYduP1QB5kwHPeMtlovIi/N0hyX/FCN+Ay3v/thYYMWqiJtrtBKPYuQrNTuI
         yiqojBouDx8bI9ncxebADKkEmNv62cPA5S2avYwOwr/f9VudoZ7YFOy0lI4h+UhXaOHy
         9Ekw8UEvObZvHpgRdiZBxdpJtD0kp8MgUjAe+TIbE8gRVWgF6zmrHbi3PlsjzLQZ7qTh
         m74Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D8KQpXCY;
       spf=pass (google.com: domain of 3wk--xgukea0ryiretbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3WK--XgUKEa0RYiReTbbTYR.PbZPYNaT-OhVYg-YVahkTbbTYRTebhcf.PbZ@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+wFgyThQxKTz4fr7Oxqf87zkHCNM2kLfryNjcyqqgO8=;
        b=CdkKi0n2ZkfEKGisGSoY5vI9ppu+Aa6L0/qPmZfULn5GAhbpCuuF1GO4GIz9WMD/fF
         raWif4agXdZivoB2CCbBCKLaUqghetsvwgO2xjJjZrQk9UkK0XTwZwRIJ4hpgjQbER93
         revPCyQLSe4sqsUTkvVuzG3SVQv7gEH/kQKBU2cPmW5xm2bFS6I9oHPD9jeiqh1/Y1Dv
         DTp4MNowXsi4K7URqGP1pZv2lTS2iTG52N4LpOyiX3cYpSarkqJr3EvE4a7uOKN8wHma
         izs9g2gL6ibMfXCD6G6jAYeB5rVUsqbPec9gtBdps2ZQtiVQiEm+3O2701FRdBf3yz2J
         KY/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+wFgyThQxKTz4fr7Oxqf87zkHCNM2kLfryNjcyqqgO8=;
        b=kI+KDJDkxSxxaXdrOG8rtvr6jMswc3mzhd0kkxkwsQXSoit6C8+zeMFTtNX6Dign/2
         mmVG+on8E/Xu7LjFvkPFzFdADT+BTVpXK37AHK4fEKwB+RW+QRol4Ve2RbqlKBQ8n8ln
         jMHe23sFb160NMt7J/tdAWBd0utl5wepx0Wco2EMDD8+JhZsXW+34IgQyxwVTcozK60n
         qsLoaR5gpYOFWJxSDQiOx+O2TebbzA6trTpimyZyxJKoBG3ukj3dlgLB46AT1c/76urX
         CGCytdzYe43umqE4RcRDXeSUarRh34+JFIzmtqp+b6kb4z9B7Ot1CcsN2JzIn0Lz52Wl
         uPBw==
X-Gm-Message-State: AOAM532V3/IkLsbMcoAA0Lvkp1SxDxwie5jC5soTW9/RA4/NRwuirWfY
	4TZ6HVH73GZEko5zb4fcXbs=
X-Google-Smtp-Source: ABdhPJxmJi9W7ZpwMRDJYEfdD9Szg7lUzyYOvva2sm5T9DXEo1GM2lYCUPmqowsX2fMKOugNAFLxcg==
X-Received: by 2002:a37:ab17:: with SMTP id u23mr4036935qke.142.1589555033662;
        Fri, 15 May 2020 08:03:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:12ce:: with SMTP id e14ls1180036qkl.9.gmail; Fri,
 15 May 2020 08:03:53 -0700 (PDT)
X-Received: by 2002:a37:ed0:: with SMTP id 199mr3965814qko.223.1589555033266;
        Fri, 15 May 2020 08:03:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589555033; cv=none;
        d=google.com; s=arc-20160816;
        b=DENogPlHPPYqt7Z95JApBYgchEz3Etqy3ZOPbZQhbF5j47UEG/QD62Nc0vA5jWQ18u
         6A5h1H1cj8tfwv257iUTt8g4DSG7mdrD6p/zQQzbCzvrq1K7mkknsLsC1kag2yQJOo4Z
         FhCA617/jHAD9FpDMQqBLdJss6j9NwnGXjeU2RyhcN8D4pWN98C4VeP93P1Lsgvo6/05
         pLn1cqYj50IWzvqqUX7aKGGERkCdpSY3aGtANN3vPwG1d3pscHebQzhDZxp2NDGOce/G
         QopL/OWHb5LKRUTCnMPm+0WkJldfb3lC/adyT+MgdF8Kdae3/sScuRFPqqOfzhRY7JZG
         3Nxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=p/SCTVw7StWX3LdYvyHEBQe+hUDMyY+dnWBb3b3gSe0=;
        b=C+55yh6PKxs2QXvDsGY4XEEPW//7zF6yoYo3gw6uqnSC7PgrQMaiGA3Z1mPvYuw5cf
         wjhISK7MQ2dWpf6Iyl4hF80yDhm2aMy+whP6cxjsAap6e4SpmKk45X3QeX01TlXsWErx
         vNdmxMRUg4dxPkuWjo8hJiGhYwoFRu6MZmtNSUL//kRPiygCreoeO1zqITfBk+qUAD9P
         RI2lXuZtmEAQWltYcwaktz8WkipxPSSYy7T3t+FDJ/T9z72KqjRAD+8XN1DS11boQe5T
         xjs7antTl7SpdglmkUHOp7ZBrHQfEheNT04+zcXw79tEwdrgJ04ZVp90/YP0PS9IB8Lf
         xlEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D8KQpXCY;
       spf=pass (google.com: domain of 3wk--xgukea0ryiretbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3WK--XgUKEa0RYiReTbbTYR.PbZPYNaT-OhVYg-YVahkTbbTYRTebhcf.PbZ@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id w66si211463qka.6.2020.05.15.08.03.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 08:03:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wk--xgukea0ryiretbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id v63so2508289qki.5
        for <clang-built-linux@googlegroups.com>; Fri, 15 May 2020 08:03:53 -0700 (PDT)
X-Received: by 2002:a05:6214:7e1:: with SMTP id bp1mr3748671qvb.208.1589555032839;
 Fri, 15 May 2020 08:03:52 -0700 (PDT)
Date: Fri, 15 May 2020 17:03:31 +0200
In-Reply-To: <20200515150338.190344-1-elver@google.com>
Message-Id: <20200515150338.190344-4-elver@google.com>
Mime-Version: 1.0
References: <20200515150338.190344-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip 03/10] kcsan: Support distinguishing volatile accesses
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=D8KQpXCY;       spf=pass
 (google.com: domain of 3wk--xgukea0ryiretbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3WK--XgUKEa0RYiReTbbTYR.PbZPYNaT-OhVYg-YVahkTbbTYRTebhcf.PbZ@flex--elver.bounces.google.com;
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

In the kernel, volatile is used in various concurrent context, whether
in low-level synchronization primitives or for legacy reasons. If
supported by the compiler, we will assume that aligned volatile accesses
up to sizeof(long long) (matching compiletime_assert_rwonce_type()) are
atomic.

Recent versions Clang [1] (GCC tentative [2]) can instrument volatile
accesses differently. Add the option (required) to enable the
instrumentation, and provide the necessary runtime functions. None of
the updated compilers are widely available yet (Clang 11 will be the
first release to support the feature).

[1] https://github.com/llvm/llvm-project/commit/5a2c31116f412c3b6888be361137efd705e05814
[2] https://gcc.gnu.org/pipermail/gcc-patches/2020-April/544452.html

This patch allows removing any explicit checks in primitives such as
READ_ONCE() and WRITE_ONCE().

Signed-off-by: Marco Elver <elver@google.com>
---
 kernel/kcsan/core.c    | 43 ++++++++++++++++++++++++++++++++++++++++++
 scripts/Makefile.kcsan |  5 ++++-
 2 files changed, 47 insertions(+), 1 deletion(-)

diff --git a/kernel/kcsan/core.c b/kernel/kcsan/core.c
index a73a66cf79df..15f67949d11e 100644
--- a/kernel/kcsan/core.c
+++ b/kernel/kcsan/core.c
@@ -789,6 +789,49 @@ void __tsan_write_range(void *ptr, size_t size)
 }
 EXPORT_SYMBOL(__tsan_write_range);
 
+/*
+ * Use of explicit volatile is generally disallowed [1], however, volatile is
+ * still used in various concurrent context, whether in low-level
+ * synchronization primitives or for legacy reasons.
+ * [1] https://lwn.net/Articles/233479/
+ *
+ * We only consider volatile accesses atomic if they are aligned and would pass
+ * the size-check of compiletime_assert_rwonce_type().
+ */
+#define DEFINE_TSAN_VOLATILE_READ_WRITE(size)                                  \
+	void __tsan_volatile_read##size(void *ptr)                             \
+	{                                                                      \
+		const bool is_atomic = size <= sizeof(long long) &&            \
+				       IS_ALIGNED((unsigned long)ptr, size);   \
+		if (IS_ENABLED(CONFIG_KCSAN_IGNORE_ATOMICS) && is_atomic)      \
+			return;                                                \
+		check_access(ptr, size, is_atomic ? KCSAN_ACCESS_ATOMIC : 0);  \
+	}                                                                      \
+	EXPORT_SYMBOL(__tsan_volatile_read##size);                             \
+	void __tsan_unaligned_volatile_read##size(void *ptr)                   \
+		__alias(__tsan_volatile_read##size);                           \
+	EXPORT_SYMBOL(__tsan_unaligned_volatile_read##size);                   \
+	void __tsan_volatile_write##size(void *ptr)                            \
+	{                                                                      \
+		const bool is_atomic = size <= sizeof(long long) &&            \
+				       IS_ALIGNED((unsigned long)ptr, size);   \
+		if (IS_ENABLED(CONFIG_KCSAN_IGNORE_ATOMICS) && is_atomic)      \
+			return;                                                \
+		check_access(ptr, size,                                        \
+			     KCSAN_ACCESS_WRITE |                              \
+				     (is_atomic ? KCSAN_ACCESS_ATOMIC : 0));   \
+	}                                                                      \
+	EXPORT_SYMBOL(__tsan_volatile_write##size);                            \
+	void __tsan_unaligned_volatile_write##size(void *ptr)                  \
+		__alias(__tsan_volatile_write##size);                          \
+	EXPORT_SYMBOL(__tsan_unaligned_volatile_write##size)
+
+DEFINE_TSAN_VOLATILE_READ_WRITE(1);
+DEFINE_TSAN_VOLATILE_READ_WRITE(2);
+DEFINE_TSAN_VOLATILE_READ_WRITE(4);
+DEFINE_TSAN_VOLATILE_READ_WRITE(8);
+DEFINE_TSAN_VOLATILE_READ_WRITE(16);
+
 /*
  * The below are not required by KCSAN, but can still be emitted by the
  * compiler.
diff --git a/scripts/Makefile.kcsan b/scripts/Makefile.kcsan
index 20337a7ecf54..c02662b30a7c 100644
--- a/scripts/Makefile.kcsan
+++ b/scripts/Makefile.kcsan
@@ -9,7 +9,10 @@ else
 cc-param = --param -$(1)
 endif
 
+# Most options here should be kept optional, to allow enabling more compilers
+# if the absence of some options still allows us to use KCSAN in most cases.
 CFLAGS_KCSAN := -fsanitize=thread \
-	$(call cc-option,$(call cc-param,tsan-instrument-func-entry-exit=0) -fno-optimize-sibling-calls)
+	$(call cc-option,$(call cc-param,tsan-instrument-func-entry-exit=0) -fno-optimize-sibling-calls) \
+	$(call cc-param,tsan-distinguish-volatile=1)
 
 endif # CONFIG_KCSAN
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200515150338.190344-4-elver%40google.com.
