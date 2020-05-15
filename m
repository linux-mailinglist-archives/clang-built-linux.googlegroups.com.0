Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBVW67L2QKGQE34OKYRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id C13A71D52EC
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 17:03:51 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id r137sf1034676pfr.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 08:03:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589555030; cv=pass;
        d=google.com; s=arc-20160816;
        b=BTGQ5spWrvuwpVkNR2YOrzmJqpSlO0B+XF2AYkJZUZT2vJuhP5wTFnw8dwKeHilkzQ
         A/CSEwrFbclNfaXavSfGUpSm2BbC/UPuQjeUfOymGP7ZHPy1Dvy/qzrtjbbQgucRXZ6p
         9ZGFsLTCqEGfX+RIslnoRBmu+qKmSdO0s7LMKHfatm1BsUAwxvMOU+nCALjOc0tJIBHr
         yZh9yI/n5uF/R8FUZ//eCy8BYarV2eJ9+Ps1Sc7WZQhQOyNsQ58zOhCHOea2AEjUYyO2
         Mok7QBpZao3+MIpDpkwNsqBBqBqKbTpXTkFPJO26KW47xxXdKZ48zgRaKYfBMr6zGHaE
         DF7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=2jCsPc8g74DYOmWEYqrU1UEva8TsaNY6HtDi2sVJy+Q=;
        b=Hy9KbvmOZAyjqTZpPypaI/mSChpbCGO/c7KM+S2iVAV5MwtaIR+FWRjrnIudI//3Bm
         9XesFJJasn4O3JSQ5ebPne2CDJTBHN8UP9G6BGhhmEoeoCfWaRQrqVSsS2RPRAKHZ4m/
         sXCzvvg1sap6rImBenSzp6YuNa24rRQkasqmcoiJLZvivUG4fhWqJoR33IfK1KtzPSzA
         vvp08iMgSPZhGGGfYe56q11kXbwuEE8ZYHdIDKO2JtTS/3ljql8fxvip+qcSNxoda3uP
         GiofjHh9mUF0CCYDHfaWzaA9+If3FUS2EIbdX73WW7JKmLgHjQlzlWFn6p3k2pbBskk9
         TSmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ppjy+eUs;
       spf=pass (google.com: domain of 3u6--xgukeagmtdmzowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3U6--XgUKEagMTdMZOWWOTM.KWUKTIVO-JcQTb-TQVcfOWWOTMOZWcXa.KWU@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2jCsPc8g74DYOmWEYqrU1UEva8TsaNY6HtDi2sVJy+Q=;
        b=YV4P6szsMbKw8JWqbfeerXhTXJC+QUBVxuWzByIhYRRZIKkjdiVnNGeyeNvHHPSJVQ
         JC4U4MPzT+T5fBb+5MCOLFSD5m9cxKUEPEP2TMAwr9wPiUczcOU0eZK7L+EWmh19e4SY
         /AGoydsO6kOBhKYUaxl4tEjMKgerKN591qduzYPCZldteMgYCxseOLjUJ5a2S6EaZ2uY
         ce7ZoOQlk0+lvwaWhyZ3/AekxEWG5JV0O6Fp/5Uoe3Ddw18YD2ZuDEOcrRaUW5KMEwcC
         0CGqp6pXnDiRP1XPuWC5bRHaglZxWghJnGVk5o2cNAfcj2x5Zr7w4K3cweH31ywWKQ03
         8Fog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2jCsPc8g74DYOmWEYqrU1UEva8TsaNY6HtDi2sVJy+Q=;
        b=TojpFyw2Xv016MefVOmOktYVnOmb2T7tkt72a08HkB+PK0wMrvdzWaiWe51TD8kDjA
         sT6ARUa43TqQjEhsaEXRHX8XEbzhlRFUYqw1yNDG2uzUmYgvbDkxlMo4u8t+hDkQL13v
         uAIKRkX7MJEt38P6/mkPDJeqEoTAbkExy8UVtfU3/UffSMfIqdkmWwr3IW6wXSBB1cmo
         y0Q6PLxAZzroN6B9XYxHKreFQMXew1IJe9xnH5BErFfBp1OfYulhivmlA6Xl0fGGnnUn
         mEdGNJWPLQDG2+auBZFc3KDZorywC65McZG/VD9TDMigI740GjOm9eScJ1pijZIv2cKi
         tEQA==
X-Gm-Message-State: AOAM532MZRIeotFKXxdb9XPfghkGt49JXGadFt4jiC61SO3cM1MOgzb3
	VsRdO3PPknk32Wuxi8+HG/s=
X-Google-Smtp-Source: ABdhPJx4BcJd6KbOSbb8XRRVUjfEC3LJjfjsCoalH2ixuycNXxXDGVLEubgjvkV8iVXevPS/aqvEOA==
X-Received: by 2002:aa7:9832:: with SMTP id q18mr4385047pfl.179.1589555030203;
        Fri, 15 May 2020 08:03:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e283:: with SMTP id d3ls1319971pjz.2.gmail; Fri, 15
 May 2020 08:03:48 -0700 (PDT)
X-Received: by 2002:a17:902:fe87:: with SMTP id x7mr4230633plm.130.1589555028723;
        Fri, 15 May 2020 08:03:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589555028; cv=none;
        d=google.com; s=arc-20160816;
        b=xihUQ8Ej1G79rSfwypGt+2hMO2NN4oCarZLeF5t+HLCH3zqhMnOaeTswXjC6uHvjWg
         MYY+ZAfj5WFSi9H2Tc5eDHywfSnbEVp+fsXp319kjzXZkTOS1QF/daIDW/Ww0U1xJ3st
         YJi9JX560lKR27ZK95gsUQN/CT28L/FnYW2vnquoLdYwd4TJPploYVy0vDb2USHD4clN
         FXX7UYjgSB1Vs+E9izzb6WTpXjFrD6CZDNfJWR3onlvXlQT4Bgioyu5vQ1TDAeGfvzVR
         4V/clrIceoYpW+I8UIz1dZBw+5VmdOq0dY330yyUEfSiTo1v7PI/mnW8rjZnSR+6ODwd
         TYyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Rd50Ui3HZ2EL9EcMGbbjqrEeCeIHgbARzkGzMmh8b1c=;
        b=Yb+hphHF3krmlhnqMWDuGKF9hoZahs6xoaQ33EXLm1ekrOcDE7ocOQ3M+xqlWTq6zk
         TYLE+zGv/WpSCI0mCxEI2aECWterKO4cXwE/zUHkU4CvOFCF5bRzAR5NPe87b0V9CrI/
         vMJBivbUzeqz/Kbm2qAjpNZEswt2Zh+KSy/nbSWg3tLW9JDRAXxWZU6yhwTMXTuIirP9
         xrSMQBK5QCpc7TnJOLcyZ2oEicWDIy6Zty9JdVPgqp7XM1OsXoB+aTX20IYpZS27HvuT
         IeQJ1stTLDOeRrKwgB75c50+qmbI+R7A6dlE0Ylg4bToMIgNj65V8tv3H+9/3Ym9qyxL
         MWJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ppjy+eUs;
       spf=pass (google.com: domain of 3u6--xgukeagmtdmzowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3U6--XgUKEagMTdMZOWWOTM.KWUKTIVO-JcQTb-TQVcfOWWOTMOZWcXa.KWU@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id j204si225081pfd.1.2020.05.15.08.03.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 08:03:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3u6--xgukeagmtdmzowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id 186so2914907ybq.1
        for <clang-built-linux@googlegroups.com>; Fri, 15 May 2020 08:03:48 -0700 (PDT)
X-Received: by 2002:a25:60d6:: with SMTP id u205mr6281104ybb.440.1589555027743;
 Fri, 15 May 2020 08:03:47 -0700 (PDT)
Date: Fri, 15 May 2020 17:03:29 +0200
In-Reply-To: <20200515150338.190344-1-elver@google.com>
Message-Id: <20200515150338.190344-2-elver@google.com>
Mime-Version: 1.0
References: <20200515150338.190344-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip 01/10] ubsan, kcsan: don't combine sanitizer with kcov on clang
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com, 
	Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ppjy+eUs;       spf=pass
 (google.com: domain of 3u6--xgukeagmtdmzowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3U6--XgUKEagMTdMZOWWOTM.KWUKTIVO-JcQTb-TQVcfOWWOTMOZWcXa.KWU@flex--elver.bounces.google.com;
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

From: Arnd Bergmann <arnd@arndb.de>

Clang does not allow -fsanitize-coverage=trace-{pc,cmp} together
with -fsanitize=bounds or with ubsan:

clang: error: argument unused during compilation: '-fsanitize-coverage=trace-pc' [-Werror,-Wunused-command-line-argument]
clang: error: argument unused during compilation: '-fsanitize-coverage=trace-cmp' [-Werror,-Wunused-command-line-argument]

To avoid the warning, check whether clang can handle this correctly
or disallow ubsan and kcsan when kcov is enabled.

Link: https://bugs.llvm.org/show_bug.cgi?id=45831
Link: https://lore.kernel.org/lkml/20200505142341.1096942-1-arnd@arndb.de
Acked-by: Marco Elver <elver@google.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Marco Elver <elver@google.com>
---
This patch is already in -rcu tree, but since since the series is based
on -tip, to avoid conflict it is required for the subsequent patches.
---
 lib/Kconfig.kcsan | 11 +++++++++++
 lib/Kconfig.ubsan | 11 +++++++++++
 2 files changed, 22 insertions(+)

diff --git a/lib/Kconfig.kcsan b/lib/Kconfig.kcsan
index ea28245c6c1d..a7276035ca0d 100644
--- a/lib/Kconfig.kcsan
+++ b/lib/Kconfig.kcsan
@@ -3,9 +3,20 @@
 config HAVE_ARCH_KCSAN
 	bool
 
+config KCSAN_KCOV_BROKEN
+	def_bool KCOV && CC_HAS_SANCOV_TRACE_PC
+	depends on CC_IS_CLANG
+	depends on !$(cc-option,-Werror=unused-command-line-argument -fsanitize=thread -fsanitize-coverage=trace-pc)
+	help
+	  Some versions of clang support either KCSAN and KCOV but not the
+	  combination of the two.
+	  See https://bugs.llvm.org/show_bug.cgi?id=45831 for the status
+	  in newer releases.
+
 menuconfig KCSAN
 	bool "KCSAN: dynamic data race detector"
 	depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN
+	depends on !KCSAN_KCOV_BROKEN
 	select STACKTRACE
 	help
 	  The Kernel Concurrency Sanitizer (KCSAN) is a dynamic
diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index 48469c95d78e..3baea77bf37f 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -26,9 +26,20 @@ config UBSAN_TRAP
 	  the system. For some system builders this is an acceptable
 	  trade-off.
 
+config UBSAN_KCOV_BROKEN
+	def_bool KCOV && CC_HAS_SANCOV_TRACE_PC
+	depends on CC_IS_CLANG
+	depends on !$(cc-option,-Werror=unused-command-line-argument -fsanitize=bounds -fsanitize-coverage=trace-pc)
+	help
+	  Some versions of clang support either UBSAN or KCOV but not the
+	  combination of the two.
+	  See https://bugs.llvm.org/show_bug.cgi?id=45831 for the status
+	  in newer releases.
+
 config UBSAN_BOUNDS
 	bool "Perform array index bounds checking"
 	default UBSAN
+	depends on !UBSAN_KCOV_BROKEN
 	help
 	  This option enables detection of directly indexed out of bounds
 	  array accesses, where the array size is known at compile time.
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200515150338.190344-2-elver%40google.com.
