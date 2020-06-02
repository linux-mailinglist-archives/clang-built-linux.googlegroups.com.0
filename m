Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB7V33L3AKGQELXQKTKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE6D1EC20A
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 20:44:15 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id w12sf4430813qvh.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 11:44:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591123454; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jp1Dba1q4IojYUHah6Dj/J9y1PBJhVW4Bu0zoLr7wnSGB1FcehCh6BNEiklSXTtD/h
         aZvyh4YGJTfsWaXXKY3Cm4TXW+d/UuxLGbS6VxU7VpWkXDVi0fmylM5bpShZOOCEXIoU
         jEFrLvRcNhdg+x89E/uiRSkhKEbPvOVF2uY1E+6CXnIINfQLZ/DjnT1qOYkkQ5/NQqJ0
         Mnqo6mMmLrPldoJVbsBcCV8S9iejLUwQ+KgM4fQ2muxtSnhoTHoVJkQPW5naj1pQ6+uK
         S72jlFCwitfh3Ow4ClNKW704OulfBjPr9XeOZXQCCzhp+m1lmf0IEeKs25bCLm78DO3p
         vtZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=lxwkc5xtY1B4DaK2ehmNZfv6V2V0j4nuX92WoWK02vs=;
        b=CbmliB3tdCL5CBwteh8rrNXnwTgwL08ujPK0YKPHjLDaOTbrZnFeWoAMY362Q7a0vi
         JMPZ9meHCU9vch61EVvZNcagXWQMKozR88P0LDOBO0DL9hmAa5fGmO0iF/hP0xjhCY3Q
         BZLwoMyKakvJsT+I76eC4VYRoCBbiO8htIVZLlzkSt2d6LDUVp7FnWqNw6rWbvbmLEeQ
         EZdoNp19N1WbU+807fV9ddQxOMZCyiWmqPb3IXLLo/tZNpN8yFzfs7GdqI3Iri03xotH
         dLj0FtEtEJqm0ZWOuYcRl9Wf3TM00cVo5OCFb301QTJz7o8lv4b0+zOTFFnjUdihM5rF
         rNkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Bo8SJMR+;
       spf=pass (google.com: domain of 3_z3wxgukezay5fyb08805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3_Z3WXgUKEZAy5FyB08805y.w86w5u70-vE25D-527EH08805y0B8E9C.w86@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=lxwkc5xtY1B4DaK2ehmNZfv6V2V0j4nuX92WoWK02vs=;
        b=KWvKWW4dIwq8dAv+3o+7ekFjX5P5ZFKknIxkwJM/Q+JK+eLiNnnmzDRqJQptC6EnKi
         wezJ6uGXkTDpCuuaU3i4IzIV814EQf+Kr0H1ofbsTKwitd7BmWn9l+1gX6wH7+qxhHNx
         nfY5jl80oHc3LYHGfctX1gsVAlRTrk2XqIByTkLtpz12RgcmAMAwuVsFjcDfntS3QENY
         537dFpOhxZweZQnsw4E5YKA1BCVAHWdJxnE4cyDe7OZwpEJODwbk5AgrnZLH6Y14+m5u
         e13NYvoG5tW9AWfbZKpx1rlHpgDsgnB3+1qBif20G7BwICJQPWXa0OCdyMassLb7rLbV
         P7Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lxwkc5xtY1B4DaK2ehmNZfv6V2V0j4nuX92WoWK02vs=;
        b=ofR3z4ZK1O2Fyg9r1BJLVB7JUqzT703JfLgxzb1+oygLT7Mx1mfAJZfPwZk/N0qwi/
         bL88PjX9iG8Kt69yHowzBAv6vIcsV57oSaft8z/2r0fYB79hB+UOHqmLLfq7plNVMuxc
         f/oPJoATU78l7jbr8t1rbvGeW1/B5ukf/7BNoLAs5mANynp/FrTAhlm5Hbxk814ymLjQ
         v/8OHJqrppcBZ9+huftLpXnOPr4NKbPEuWOt14MHalpYlx2HQPYKImUW/w0TMU8LTIUQ
         5327x5z4Edfuwnvx+8CiAK6E5qOw0lH3hVIzA5g1Q+OSSCOmycDHFzp7IRJ1PXcAqOCH
         DQXg==
X-Gm-Message-State: AOAM532Ap0bgr4u/B72jM8uph23ekQGhD7BsOqP4wtqsfKKPNLu2rQ8s
	d9Te/v+6jjXr0h6C9H5M4rM=
X-Google-Smtp-Source: ABdhPJylx9JsZvz5w1BKh0slJYxWi4eWA1GFBltPFADf4AxhmZPzt4UCIxxmEHPI+ayyFZhE+FOwGw==
X-Received: by 2002:a37:bb43:: with SMTP id l64mr17585428qkf.271.1591123454389;
        Tue, 02 Jun 2020 11:44:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:cd07:: with SMTP id b7ls2469962qvm.10.gmail; Tue, 02 Jun
 2020 11:44:14 -0700 (PDT)
X-Received: by 2002:a0c:a8cf:: with SMTP id h15mr27741588qvc.104.1591123453964;
        Tue, 02 Jun 2020 11:44:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591123453; cv=none;
        d=google.com; s=arc-20160816;
        b=rvROXPbgt+g1OjRf9oUbRnDK7MgwQnU9LmhoQrLw9VS7J4R3uwE+BOcys8dM36C88H
         cUJhFKlwMVFrkNTRcJfMbJxkh9NkyoEUmPwV3tM3AHaBpoA39i8qkQfKnJtCK4nTe5+9
         wq2Qc9HbfSDceOG9botpUA8718bFr8ch4PfSLDY3fa5tICywJVBz4GSuJ58R63QYX2+A
         fuN7hs19Ut4/WLSCI/a2xfd0cW6xa3Y7Xt2ZBmZvxk9FOy9wJyplxjPFIP9UteLLcNAF
         vXt3M7MUHjFrJhSxIRyDR1s+T+MxtAzn/3oGr4g0rz+n6pQClOQdvppHggtK9RfQZvZl
         80IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=051VEaYf6qrL8JFuh/5zzz3L2mMvFIzQDHhJf0eGSZs=;
        b=vsxjno1LAv64K+4PhJoRGKcnLkFw6BPg2m7bUZo9I43NX2fq7g4CQfj46IarEELalO
         QkJXJvCEXj/1cv6usYO9nJDkgy7V3JzCYBxqORi/+dvPoKUx6nhkZcZdMcphnmq3MpdH
         bOoewym3gOZiPpcOUmCWfAm8N4q6F/ITrgndThP0fmcIFCieYbE+q/2uGFOWgXmmkRa5
         1j/RFphsHjOos88XN4oaJs3eu4UjD0awUhUwxqk8BEkyRzAUO/Fz4VDcU4BW9ka/bIbf
         9Kxt22WGGkdwS1zmvpHjRRIvBszMLGR2Msd/lppY5nSCH69t6AMMK+XXduUIOEgLRzdN
         gxIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Bo8SJMR+;
       spf=pass (google.com: domain of 3_z3wxgukezay5fyb08805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3_Z3WXgUKEZAy5FyB08805y.w86w5u70-vE25D-527EH08805y0B8E9C.w86@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id p45si205536qtk.2.2020.06.02.11.44.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2020 11:44:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3_z3wxgukezay5fyb08805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id c17so12675910ybf.7
        for <clang-built-linux@googlegroups.com>; Tue, 02 Jun 2020 11:44:13 -0700 (PDT)
X-Received: by 2002:a25:c606:: with SMTP id k6mr31464032ybf.10.1591123453516;
 Tue, 02 Jun 2020 11:44:13 -0700 (PDT)
Date: Tue,  2 Jun 2020 20:44:08 +0200
Message-Id: <20200602184409.22142-1-elver@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.rc2.251.g90737beb825-goog
Subject: [PATCH -tip 1/2] Kconfig: Bump required compiler version of KASAN and UBSAN
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: will@kernel.org, peterz@infradead.org, bp@alien8.de, tglx@linutronix.de, 
	mingo@kernel.org, clang-built-linux@googlegroups.com, paulmck@kernel.org, 
	dvyukov@google.com, glider@google.com, andreyknvl@google.com, 
	kasan-dev@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Bo8SJMR+;       spf=pass
 (google.com: domain of 3_z3wxgukezay5fyb08805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3_Z3WXgUKEZAy5FyB08805y.w86w5u70-vE25D-527EH08805y0B8E9C.w86@flex--elver.bounces.google.com;
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

Adds config variable CC_HAS_WORKING_NOSANITIZE, which will be true if we
have a compiler that does not fail builds due to no_sanitize functions.
This does not yet mean they work as intended, but for automated
build-tests, this is the minimum requirement.

For example, we require that __always_inline functions used from
no_sanitize functions do not generate instrumentation. On GCC <= 7 this
fails to build entirely, therefore we make the minimum version GCC 8.

For KCSAN this is a non-functional change, however, we should add it in
case this variable changes in future.

Link: https://lkml.kernel.org/r/20200602175859.GC2604@hirez.programming.kicks-ass.net
Suggested-by: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Marco Elver <elver@google.com>
---
Apply after:
https://lkml.kernel.org/r/20200602173103.931412766@infradead.org
---
 init/Kconfig      | 3 +++
 lib/Kconfig.kasan | 1 +
 lib/Kconfig.kcsan | 1 +
 lib/Kconfig.ubsan | 1 +
 4 files changed, 6 insertions(+)

diff --git a/init/Kconfig b/init/Kconfig
index 0f72eb4ffc87..3e8565bc8376 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -39,6 +39,9 @@ config TOOLS_SUPPORT_RELR
 config CC_HAS_ASM_INLINE
 	def_bool $(success,echo 'void foo(void) { asm inline (""); }' | $(CC) -x c - -c -o /dev/null)
 
+config CC_HAS_WORKING_NOSANITIZE
+	def_bool !CC_IS_GCC || GCC_VERSION >= 80000
+
 config CONSTRUCTORS
 	bool
 	depends on !UML
diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
index 81f5464ea9e1..15e6c4b26a40 100644
--- a/lib/Kconfig.kasan
+++ b/lib/Kconfig.kasan
@@ -20,6 +20,7 @@ config KASAN
 	depends on (HAVE_ARCH_KASAN && CC_HAS_KASAN_GENERIC) || \
 		   (HAVE_ARCH_KASAN_SW_TAGS && CC_HAS_KASAN_SW_TAGS)
 	depends on (SLUB && SYSFS) || (SLAB && !DEBUG_SLAB)
+	depends on CC_HAS_WORKING_NOSANITIZE
 	help
 	  Enables KASAN (KernelAddressSANitizer) - runtime memory debugger,
 	  designed to find out-of-bounds accesses and use-after-free bugs.
diff --git a/lib/Kconfig.kcsan b/lib/Kconfig.kcsan
index 5ee88e5119c2..2ab4a7f511c9 100644
--- a/lib/Kconfig.kcsan
+++ b/lib/Kconfig.kcsan
@@ -5,6 +5,7 @@ config HAVE_ARCH_KCSAN
 
 config HAVE_KCSAN_COMPILER
 	def_bool CC_IS_CLANG && $(cc-option,-fsanitize=thread -mllvm -tsan-distinguish-volatile=1)
+	depends on CC_HAS_WORKING_NOSANITIZE
 	help
 	  For the list of compilers that support KCSAN, please see
 	  <file:Documentation/dev-tools/kcsan.rst>.
diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index a5ba2fd51823..f725d126af7d 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -4,6 +4,7 @@ config ARCH_HAS_UBSAN_SANITIZE_ALL
 
 menuconfig UBSAN
 	bool "Undefined behaviour sanity checker"
+	depends on CC_HAS_WORKING_NOSANITIZE
 	help
 	  This option enables the Undefined Behaviour sanity checker.
 	  Compile-time instrumentation is used to detect various undefined
-- 
2.27.0.rc2.251.g90737beb825-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200602184409.22142-1-elver%40google.com.
