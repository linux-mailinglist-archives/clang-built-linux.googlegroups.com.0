Return-Path: <clang-built-linux+bncBC2ORX645YPRBIFFYX5AKGQEJ4FFBGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5F525CA58
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:29 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id m10sf3236605ild.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165089; cv=pass;
        d=google.com; s=arc-20160816;
        b=sbnAJjI2jCeOrcmtnCAsmsTQRJBvrqUHYhT95ivk3qlLDT3mv4t/nwBdMduBjMf40o
         31CNkq/1GgUwNDQ49R0gx4LBu+0JI0bXFoSyHyoTTbabyQLWmY8Zjj/zEPtFhpq3n84O
         2FvMSCvfjrGOYWiWY57Wo0FBCHIEKEY+2uyMe6Tg9nLWD6EHQx8rp3oFgfXQ8Kl4JDyY
         NaFcDQuF0Q20ZzXdAXN4/MJUQ87WiXy36UIQ4EoyheySEfqmDKKBoglWkjwkV6e+02Ob
         nQYO++Z1c/JjOAVZFMUDf1BevZteMwYnyGie5eKApvtbzXkH8dukBZK9dCOc/KaEaxdg
         Uq2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=nggv1M4H6zZ/pnc1EF82sYCAKWXVVB1zyPU/KWBQtKY=;
        b=D4wjxfrCHZd66JYg1H3uRX43F2p52u9L4Is9e2wOpFDzS2bkyw0l013Xco7wa6ZXkt
         O/LZb5ThJjXECq9jwwQCnrlEXZjLgSvT8OER1CnmlXV+L3zPpmtPlW3BdHEI/gzZgWWb
         a7r9CaFqLMoPSFWlMsP/jUEM2P/OvlL8etUPbNd24qBmutVbEWPoUaLMevV1GQ14+7Hj
         HYrZOsSQcA1L7gW/VnXThwxflz0sQXcpBE3wLGqFqEou8u9j2dbBhGAyiWqaeLbLhz8K
         O8HmcC3e9UI1f8dNcnLJ15ruLqMDcD/HItmYJhUCCTCSfkhfzNb/m6QnZt5rRi+0fOv1
         eM9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mF0WB4Q1;
       spf=pass (google.com: domain of 3n1jrxwwkaio6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3n1JRXwwKAIo6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nggv1M4H6zZ/pnc1EF82sYCAKWXVVB1zyPU/KWBQtKY=;
        b=A12t6rjlK3Z+36jeMZDMtr8r3yTC92FI2T8uOu8aMt6L1aHyvA6l4ypWJiYDtLde10
         W8oqeZLLCXvxTDdqMihPm7gQOcOtvKdj2qLQsRAuYkTeOEDf2wUJzGLF8dnVucGlhzgs
         NAmwuSvfCEwnT20PREbb1nkem37o5e0Qd0dCN7g12tEgf4peiTT3InescG3FS34P2iyc
         7vxd8Aqd76aVzHf8Tt6u5+r3OvaxGsWWESciLLxPDW1UthTYf/2Z45a4dDOGHn+WjRZ+
         CLZUr+Hl2isgZY5yvH9ZUPv43Jl3wA43aq1dsosM+ROEk/x5bSmf+6U+Q/xgkv4XDk/O
         cSUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nggv1M4H6zZ/pnc1EF82sYCAKWXVVB1zyPU/KWBQtKY=;
        b=oD+buU0XwZ+wyqSsWZ0ofODyIzwbDjB9xhfbDaoyoq9lutaHpjFMR2GPNwtrY7vFsT
         psLBnHxE2ov2nIponyALh2ExBkuWR3Zu4j4FqRMUo4yl54VsOGKjuhkiC3LRfLNHAO12
         ClXLtRwnHBTpV9hP4hfL2spx+Iog8LdOOvCBXbstjSI0Q5bCpNpiGEyHcuW0rVLHfLYm
         +HPQcU4TSF3OSkN55VBDp8eMTea5WbPg+4KUi+hAyrJcKR5eQjc8WFlue1H6yC/IALjD
         0LESbnTN6MqnwLxxP13m2xCkbHCJCh1Dt/WKvu4X82A9ijueCQ5+v4uKm9cP71sJ7MOO
         QJfA==
X-Gm-Message-State: AOAM531AW3eeEOVdENwYE+5Zq5FLzGrnsnUDfWKVJZCEYDtkl9EmfS6N
	LOTsQhkh8132DPZZs6qU9Gs=
X-Google-Smtp-Source: ABdhPJzsfmsSvSnKGegNJTb8rOrMipNVFWdLl5+txilEPHU/EDBpSJ7Y0wCL6z3SEsCeRgzTap6LGw==
X-Received: by 2002:a5d:840a:: with SMTP id i10mr3302570ion.4.1599165088791;
        Thu, 03 Sep 2020 13:31:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:3049:: with SMTP id q70ls968527jaq.2.gmail; Thu, 03 Sep
 2020 13:31:28 -0700 (PDT)
X-Received: by 2002:a02:1004:: with SMTP id 4mr5093396jay.127.1599165088447;
        Thu, 03 Sep 2020 13:31:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165088; cv=none;
        d=google.com; s=arc-20160816;
        b=04q+FxmyJFC8m7G6bLdurhyYSe4DQjlNAT9hjSj1/xoh7/+yVJXxzVFiegky0AFO6h
         mu+jkmJ1fMI3XyVP/1MzVOwZRTbR8nZ18NSPkpRXo5ROWQGW3WwuNlOwyFDRn78wCY/l
         3Ys5iII7E746yHQfdiOC31Od9LEXeLR5YwE86OGhOR526Zv7GwxSveyPlFvkrshp8jvp
         3a8NNwa4llOprLa7/wxYdo64MKs/+LDhC0rdStZkht0ttpcKRrqJ0WdcbdaD9V8dSTwR
         TTtdwJ6fSeu3nTmz6eeK+eZbbPOYSPJaPiWSbrmUJiTH4+ny5lo9E5henbC/wGkV/jKZ
         mEBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=uaTfkB4ak1aJZWY50HSjxViiXLY/kut+uNnKrezpcK8=;
        b=oEadJJiXa7ZTajJ+ihWRZcPZBwD9wLLmSgX9rF+K8ZVtxmSoXGY19LrU8EN89SXGBG
         CbjObqgkY9BuZf6Vs3e4X+u2QWz2PWRGQZRKYYwAj07UjVtlPnfuGnoniGc6PvYWrFHW
         eIXw1glpjVCYK+YGMgRujUhQKwpVYeHvRp6lTpxJFmjG35VWAt1CitNk3bnjzIFbWMnu
         bpabneQFtDigoOgrANV04S2qMWB8eJwVBopGNGG5JQ4FpiZfLecMcGyk8Vv4jS3kUfZU
         8FfVo6cnJkA73jd+bvq74xU5SJ9ivlHBP1tKKR1vmPGIyZY7k/TXjYwu0a03ejf234H1
         tc6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mF0WB4Q1;
       spf=pass (google.com: domain of 3n1jrxwwkaio6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3n1JRXwwKAIo6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id h11si299660ilh.1.2020.09.03.13.31.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3n1jrxwwkaio6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id a5so4012217ybh.3
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:28 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:cdca:: with SMTP id
 d193mr5380428ybf.402.1599165087915; Thu, 03 Sep 2020 13:31:27 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:41 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 16/28] init: lto: fix PREL32 relocations
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mF0WB4Q1;       spf=pass
 (google.com: domain of 3n1jrxwwkaio6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3n1JRXwwKAIo6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

With LTO, the compiler can rename static functions to avoid global
naming collisions. As initcall functions are typically static,
renaming can break references to them in inline assembly. This
change adds a global stub with a stable name for each initcall to
fix the issue when PREL32 relocations are used.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 include/linux/init.h | 31 +++++++++++++++++++++++++++----
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/include/linux/init.h b/include/linux/init.h
index af638cd6dd52..cea63f7e7705 100644
--- a/include/linux/init.h
+++ b/include/linux/init.h
@@ -209,26 +209,49 @@ extern bool initcall_debug;
  */
 #define __initcall_section(__sec, __iid)			\
 	#__sec ".init.." #__iid
+
+/*
+ * With LTO, the compiler can rename static functions to avoid
+ * global naming collisions. We use a global stub function for
+ * initcalls to create a stable symbol name whose address can be
+ * taken in inline assembly when PREL32 relocations are used.
+ */
+#define __initcall_stub(fn, __iid, id)				\
+	__initcall_name(initstub, __iid, id)
+
+#define __define_initcall_stub(__stub, fn)			\
+	int __init __stub(void);				\
+	int __init __stub(void)					\
+	{ 							\
+		return fn();					\
+	}							\
+	__ADDRESSABLE(__stub)
 #else
 #define __initcall_section(__sec, __iid)			\
 	#__sec ".init"
+
+#define __initcall_stub(fn, __iid, id)	fn
+
+#define __define_initcall_stub(__stub, fn)			\
+	__ADDRESSABLE(fn)
 #endif
 
 #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
-#define ____define_initcall(fn, __name, __sec)			\
-	__ADDRESSABLE(fn)					\
+#define ____define_initcall(fn, __stub, __name, __sec)		\
+	__define_initcall_stub(__stub, fn)			\
 	asm(".section	\"" __sec "\", \"a\"		\n"	\
 	    __stringify(__name) ":			\n"	\
-	    ".long	" #fn " - .			\n"	\
+	    ".long	" __stringify(__stub) " - .	\n"	\
 	    ".previous					\n");
 #else
-#define ____define_initcall(fn, __name, __sec)			\
+#define ____define_initcall(fn, __unused, __name, __sec)	\
 	static initcall_t __name __used 			\
 		__attribute__((__section__(__sec))) = fn;
 #endif
 
 #define __unique_initcall(fn, id, __sec, __iid)			\
 	____define_initcall(fn,					\
+		__initcall_stub(fn, __iid, id),			\
 		__initcall_name(initcall, __iid, id),		\
 		__initcall_section(__sec, __iid))
 
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-17-samitolvanen%40google.com.
