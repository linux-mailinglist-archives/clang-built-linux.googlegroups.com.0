Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBH45TL3AKGQEOHIVMNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3061DCF75
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 16:22:24 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id h15sf7345547qvk.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 07:22:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590070943; cv=pass;
        d=google.com; s=arc-20160816;
        b=jtzY0byWEiwLf3bKfnL/moGTBvs6PFPztti0/Ee76wt/jt5IYEn7MFIeE9QhSm+hZl
         Zo6jdd8dnZqcA6C1wTRe4ZdDLNPe1slx5OjpUdET9mONxMWg63keUYKjg95XJCNGM80V
         DKbIfW7xDRDkj/S2fSMKBXvmLNvyXpX7k26pvaCfJaMr9N1gOtxGrZaHRH/eWLtSit/H
         f9KioCDNyV/KOuzx9W2vrtjQFhRT7HPlVajQ+U2Akh1xiMqBCzsfHKQYHSwRG2GpH+rV
         iM9eXfvT0cBUJ+5f8PbUt9ebL+42Vob+wIMWd+F6Gat2LAFg+zPROoFeNWzZlYR50Qlm
         M7DA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=xcF2W5Ioli5FdXIUI31+68ZlEP61L70hkPgeF+pMrxw=;
        b=qHqS8dCfC4NSYkSNEfKjmJ7Bky0oEL41XX23iscsIdatS/mvjtfszLC/solzNK8FwX
         BUAh+hSxjCznJVomFoi4v6uwObykxlhV0hxx9JfdQOKfZMXIUpWgd2D5xKgcUzq8haDJ
         D+VIMW++GJF4C0RsYDhSR+iZyzlaz5LkXsxFS1LWEJ6TkzeNEGi/svbCDX7pJlEgMUIw
         grJ0j1TITAUfz5M/Aj1ojAmLMdjEkCUmmcMBsY8fFjnFJCJ/see7ZbrUcdB7jCwSlN60
         B1OXkdaPtOcpuK+tPh3GtcOiZk4ZTfogIwM7uvQAvj3o0ocvBoDsWXPV4As77xdCSCS6
         24CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Iok4xGuH;
       spf=pass (google.com: domain of 3no7gxgukede18i1e3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3no7GXgUKEdE18I1E3BB381.zB9z8xA3-yH58G-85AHK3BB3813EBHCF.zB9@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xcF2W5Ioli5FdXIUI31+68ZlEP61L70hkPgeF+pMrxw=;
        b=sML2hkYGTDuhIL/SHQZ2yOLFXa0/vdEXIV/Oovtf1F+NefLlOP/QXxrJpq/458p06x
         QmMYy2XNLhrymtHKYW+c39EYAhxTL7kHPQlOwxEEjZM1uikmeQaFwbYISunimqYCKxjq
         BaXIxO/lOaC4lzjYJHPZLZgak9pkIUhr9Y+PcyuGYgNYTXfG3iouE+fSfC6hHmnATi78
         N5KUlzSE/q85mL7Bz1O98JeIulMvrWMe3VhguLI6VNAJSYkRQjxbodlJWJx5hLdYYFxW
         Mp8AnfyXiqZoUyQwH6qChHeDutrO85l7UT0GSWG/Anc5q6gWfEMHpa3L0SPlh38X954f
         7AUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xcF2W5Ioli5FdXIUI31+68ZlEP61L70hkPgeF+pMrxw=;
        b=P2QXRfrVx+iCbjs2hzgKHWN735cLFxjqmufrayk4hh4rmKIznM1ECyLc7L0VWsQjkv
         O8GBb0yMEQftyaKjpgl5L98mLD94YvluUruPTkR/EHhGaBgynR00yzHc2xqfnruAwH/Z
         qszBOAuwZNmGxYYmmYJiSl9MrV5iD2sqt5CkohoPiYMf/p8M7r39L1vv14wrg+K2AQqU
         j/HLPW9f1s/O420eivmIxRzhwFKta1tV1jZWWX3k/nUp7GHZGPyWSqZl+pPETQ+9AzW8
         CoknBf/WipswPDaMAYQRSvh1g8ZiJvytBUxEoAtoc+8B3XmvkIa9KAefDWQXmx6NVimY
         0jZA==
X-Gm-Message-State: AOAM530ZQ19gg9Dcnrt7bxm173+UvaITHq6AV5w6iLvPxIv9tX+uccOQ
	dlhrpx0mzSsjaOgKC8rwJTg=
X-Google-Smtp-Source: ABdhPJxhBmuYmFtvm9Ja3QUKsOaC0wobBIRvMrw94NFhwFkDWdqZTNof8YQ9pnUkH2iNf0BCPhbqFg==
X-Received: by 2002:ad4:42a5:: with SMTP id e5mr10216495qvr.234.1590070943252;
        Thu, 21 May 2020 07:22:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:935:: with SMTP id t50ls959210qth.9.gmail; Thu, 21 May
 2020 07:22:22 -0700 (PDT)
X-Received: by 2002:aed:2a11:: with SMTP id c17mr10659217qtd.178.1590070942882;
        Thu, 21 May 2020 07:22:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590070942; cv=none;
        d=google.com; s=arc-20160816;
        b=ySsHD8vph0gPf7VQo84PAm3seUpN9wT/GV3ha96L17g1KiN9cQEPCGnUWsa3juI+9t
         PNcWgHRESCWKAB+PAQHNpGB83s6AdjxZYh+DX+yYnEJ4PVZ3CWYf9drcX2sLPoljv+sM
         c4dyRlGSGJ6QK+MfNl35L7jXGIE+0VwetkCh28SQ0h/V+dEd4fW0YaljPxPha+M3glKg
         GmFGOEhaVLaUaSszYjtyAXY4q2/rCbtQ2Ews4QB/1PoGnHoqnQbkq2rvcpNVLVsMPikO
         dSUdAZEXIxFWIXyRX4CfdWVQSuCjk61kUJJ957Y1e4J2JaJAWVq9HqI5MEcvECulGKKZ
         w9Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Rd50Ui3HZ2EL9EcMGbbjqrEeCeIHgbARzkGzMmh8b1c=;
        b=EPJVTRb9bzD2vbZUwVRcN0UHGAT6uO/X177rOruwm1QhTeddt9kXF3uDbpZ1sqAWka
         /V8vvjUwSLaSBygOOgcTzEOlx8WA4UcOlIjoYMTGSGLpRAXQZtbvgo0LBdZ+AcPpg+ty
         MLZBvFWbPguuSXjWD38eObVYsqxjh33nbgC9EmY5rcxhndqo/SPE8IczMisQyXIFOF8n
         hK44BBAUExE0iIZfD9BJk2lsWkiVXF0yetmUMBHqzr9AoK4fW2BWSCn07yz8HLVwK41T
         x/A1d5KxXC7yT2tjZeRcdx8XLhl4Io9XVbp8QuvV2vg+rNDyUYosaXwjM2xIttGgENat
         Gptw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Iok4xGuH;
       spf=pass (google.com: domain of 3no7gxgukede18i1e3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3no7GXgUKEdE18I1E3BB381.zB9z8xA3-yH58G-85AHK3BB3813EBHCF.zB9@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id z206si577332qka.4.2020.05.21.07.22.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 07:22:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3no7gxgukede18i1e3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id d19so7481137qkj.21
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 07:22:22 -0700 (PDT)
X-Received: by 2002:a0c:9141:: with SMTP id q59mr9942670qvq.58.1590070942466;
 Thu, 21 May 2020 07:22:22 -0700 (PDT)
Date: Thu, 21 May 2020 16:20:37 +0200
In-Reply-To: <20200521142047.169334-1-elver@google.com>
Message-Id: <20200521142047.169334-2-elver@google.com>
Mime-Version: 1.0
References: <20200521142047.169334-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v3 01/11] ubsan, kcsan: don't combine sanitizer with kcov
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
 header.i=@google.com header.s=20161025 header.b=Iok4xGuH;       spf=pass
 (google.com: domain of 3no7gxgukede18i1e3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3no7GXgUKEdE18I1E3BB381.zB9z8xA3-yH58G-85AHK3BB3813EBHCF.zB9@flex--elver.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521142047.169334-2-elver%40google.com.
