Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBAODTH3AKGQEZGQ32FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DE31DCBB1
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 13:09:55 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id g21sf5434786pju.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 04:09:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590059394; cv=pass;
        d=google.com; s=arc-20160816;
        b=J9S9aChWn/RoBOfY8f7tXYWUCSiB3GOpCQAYXman2dhkTBLqIPKstP8YFalQSetZR3
         8I4GH4TurEPqDJrOvX9sL87rxyx+dRaIkoVTowsYCOjOB0XnVcbnvggOclsXN2VUz8Kw
         hhxkdmYx8T3gq6RJlHgLjAUQu2N8xcIdLan0Jt9LFAL7DT3VkqB679X+/WkyXWbrVghV
         SnTDEdAtHYyPu3PbGAYGd4n2lozunP7OuuKK1/Iphfl64RL+cgAHhfhWOlHfdDxqU7Rj
         4cNGbCVzlVCU8G9MDHzySwzBhlqtYPWfeocsPq5yQUXmQUrYAVIhxVNg7mdHhIskKHH0
         PvOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=G+jg8LK0W6k+ZL+pOywEwlRa5M2AVzel02SZ6W0ndok=;
        b=Ju+iuLuVCaJQtE4ys5FGGTJKUnFtkCy7uGk+dwCpWS557+bCe5yc+4wELDsW2yth+l
         AQfX6OQ3RLxO2nlcZWO2FnPZwk0uswjGcl4d7ZB06AzSfAyOxytQlYcCUYcWbAc2cORU
         60iROZZ+og8xQVHoyNM0x9s57QK2RRHMF7s3GJOrz2twnH34u7embM8mxhmcok5bztG8
         jonWOCdfMutg17j2QxdjDdtJDZ2CPIhb+Gf4AtFZn/MRV7yabPILIVI57coaBZarWR3B
         39H8AYu/cJ28mE3x0VXC17vf9TV5WjLSDuZ/93RErRJM/6ne8/+G0DNuBGa8K1SAmt2w
         WzeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D0acVnUv;
       spf=pass (google.com: domain of 3f2hgxgukevg4bl4h6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3f2HGXgUKEVg4BL4H6EE6B4.2EC2B0D6-1K8BJ-B8DKN6EE6B46HEKFI.2EC@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G+jg8LK0W6k+ZL+pOywEwlRa5M2AVzel02SZ6W0ndok=;
        b=l2manBxCaGW1rkFrICzz64s3vofs4tkJCyQZv2dhetoaAKpggsUvKrWvclIpCewOgV
         2YJQ+tJgVWXrmwdDUz5gNLbPSPRpBhgq93Y1eTWKyNjC46ttf0ojLP8QCSaBmG2X1a8c
         1rTEBClrOzkY0f5srMKi1u7zU+Tm2U5LiUw0b+aRSuaqHgJj/K5I1QpO5iZPC9oDY73i
         KkZhi9lxKbCLmteoEopKV9NSbKjcdQfDIyrxaWEturb9KPwoJ2rwjGTbwGX5sX8Fee9r
         imawpARGp2HO5ZLyfiV2QGUz+FRmMuo35xbRVhBtNDzbiXNz2C/N5RND+QZ3FriBavGJ
         9zFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G+jg8LK0W6k+ZL+pOywEwlRa5M2AVzel02SZ6W0ndok=;
        b=e1pIQ5YSPlDBmoTFxecxgVkCCO21csBQ8UXuzgAsaz9rNA95sYUdUQzolqF4z/CO0e
         0w7BJ3WbVGB4/V/3noQ37BvqnU75DQU1FkoUzsHGMWDLAtUIrFSLmsRRhAChlnKBjqSp
         tTuC/tYOlNXoqFs9EFHo8bZjyKOIC+WvyzX3a2NaftH76VqUmAM4j2NIWfR6xKY7NaPq
         xfUdC2EXRXN1OjoOFcDPHMHdfOOnxwgmXB58opIoNA28V2ewOlb8obfYhZd5T4wsdkgV
         073iK6oidWDTI7JToUsx8qgm2GdPy84DKQKZ3c7QQOotPyIJngM4GM06TXAsElzX4rpL
         mrQg==
X-Gm-Message-State: AOAM53347GPc6FVSxqDebiJO9oZRlNyFYZRLfmz3V9erBGLlVL5KYFlp
	q7b/t89OQ64l2HYvTN280f4=
X-Google-Smtp-Source: ABdhPJw7uyXEacFojf15U0VZeNcyjaA0rwwrUwCzq6SDU0RfOLeDzNS1QobJDYeyQp+hGw0gzc4Irg==
X-Received: by 2002:a17:90a:bc93:: with SMTP id x19mr6005130pjr.52.1590059394006;
        Thu, 21 May 2020 04:09:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7203:: with SMTP id ba3ls742580plb.4.gmail; Thu, 21
 May 2020 04:09:53 -0700 (PDT)
X-Received: by 2002:a17:902:c38b:: with SMTP id g11mr9467433plg.189.1590059393541;
        Thu, 21 May 2020 04:09:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590059393; cv=none;
        d=google.com; s=arc-20160816;
        b=J8xJy8rnP+OkjPkikQqYXXtQXj+XOFTkMu1LV9uf+HYc6Hz7v+mzcN9NGNl3SvPwM9
         +A7hDq9mUrcgePwIDjVq7oTL18HTLxkPOlPte8cnMTX6pPJTsBnADfH1A8RHa3u+eo2Y
         65Qe9zwVZ6wN9ZGoyCQuE1KIyy4P3V7Y2QdxIJ6uZqRny3dLTGL4bSE4FE1Nk8iSADpg
         6c+6vlUd2GTCKmg12wE8e40+QYTAOid/LJkE4OYV1Jv9pw2QUTBXwzu1rzTXCty+DeP3
         8cRy6FU1bgJXyW1u9dD0xA2861WAQCyuvGPXs9YilBaILMwoRDbR1nkGKCwihdbwSSay
         S+Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Rd50Ui3HZ2EL9EcMGbbjqrEeCeIHgbARzkGzMmh8b1c=;
        b=buG87e69+QmnM/3flx+Worq7DHM7rdy9/rNWeuLmJQt7Xgbhtw3Zc7oiMeULTmOiCX
         aZ0ZoCRIpKMUJV3WM1Kbo090lNJh4MgZp6IjH8cXaEMT3TWK9+PjixLpHDCvR67QaS+N
         daXbs5ZRYAZ51uoeVHxiJQdSy93DEq6QPAmegd7121CWY5z870n2/UMg9h2GDmu7f/uz
         PA5qTcU+CkbLTGzGz2v6lCIaru3v5R/rrwVdYJqpSWGQLSD3goemTOra9urgzvncKzQR
         36uN48wrplSYUQRKqqrsmJSRk9ScuMVReSh+aKsbcBsVpRalLSZBdiuRMIWDfbyvq6v9
         ZL1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D0acVnUv;
       spf=pass (google.com: domain of 3f2hgxgukevg4bl4h6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3f2HGXgUKEVg4BL4H6EE6B4.2EC2B0D6-1K8BJ-B8DKN6EE6B46HEKFI.2EC@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id c15si744899pjv.1.2020.05.21.04.09.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 04:09:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3f2hgxgukevg4bl4h6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id q16so7020090qki.13
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 04:09:53 -0700 (PDT)
X-Received: by 2002:a0c:e744:: with SMTP id g4mr9331224qvn.55.1590059391368;
 Thu, 21 May 2020 04:09:51 -0700 (PDT)
Date: Thu, 21 May 2020 13:08:44 +0200
In-Reply-To: <20200521110854.114437-1-elver@google.com>
Message-Id: <20200521110854.114437-2-elver@google.com>
Mime-Version: 1.0
References: <20200521110854.114437-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v2 01/11] ubsan, kcsan: don't combine sanitizer with kcov
 on clang
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com, 
	bp@alien8.de, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=D0acVnUv;       spf=pass
 (google.com: domain of 3f2hgxgukevg4bl4h6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3f2HGXgUKEVg4BL4H6EE6B4.2EC2B0D6-1K8BJ-B8DKN6EE6B46HEKFI.2EC@flex--elver.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521110854.114437-2-elver%40google.com.
