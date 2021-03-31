Return-Path: <clang-built-linux+bncBC2ORX645YPRBQGSSOBQMGQESHJSSVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCCA350913
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:27:30 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id v136sf2371367qkb.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:27:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617226049; cv=pass;
        d=google.com; s=arc-20160816;
        b=ajj6gmRp8Arr49MI89tswd8y4kJe5Yk4/m7STH2ok7gEmXJFoHpWWg6zIG5eIGhHY/
         ZuRdZOoMYb5Lum4A7TlTBUM/8yi+jKe0prKtq+ER5KadUOSb0I5ngiYzSD1b8uJQOYtF
         fZ3KmCvphO7RUNbfyXANfQij8ejJwV6cQZ+vJiqbul8LS5NUGjTm1p369kAamXQw9wgS
         j4XD+5gVzaNaJs8/GRZ2VPQpHmj0pN+pKmLWPx7a2H00Ek7s60OjVVtBA8P7TB3GMznS
         M304J09/hq66atYshSmQB0KWgYTfCLMiOQkLqtRZSOVtNX9ZbUr+Mh2NVhRPqwng/NL+
         XshA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=YYaoLJidpLbCb2Val/nAHU9jRREOj4BuXTbZ7REysR4=;
        b=vEv7PVZ2Blyi1lS9trRMjwoo1jLFnU/1eIDqepge9udVGJQT6N32VhB+ROmHcg/OZo
         RsWM5jBn5tGOlKAXCqniOlyQjISduPuhJn6DezrvtZnhfdo95I1zrnESIst7Fzt5z2/q
         jItnDHlc78/gPF2FqL7FfmIZ5fgLiPeMd3vWbnCEWAw6JMjD3GwYxISeJBlHpTs9N/BC
         SZFjWZYCvHm21C2zHVa1NECrC/FQkyXkANYrWdFG85Za8kzjq71q/2U/nB9GSI8AHUll
         xCLPURMyefqhIYuF779gu6jJF3fL1m6Rl1FEIWfxs53yZLiwOWI6fd2nVd3irbmHVXuu
         ciBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZyWaDB66;
       spf=pass (google.com: domain of 3p-lkyawkak4goawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3P-lkYAwKAK4gOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YYaoLJidpLbCb2Val/nAHU9jRREOj4BuXTbZ7REysR4=;
        b=iGGFmEDFx+datD8Xg6LlfLrfOtVjNbpqEc41oaBiqbHPtyprjVgbJt0ZS8XeVYcvf1
         kf+175tXRb6QGBZNg9yqou258mXBdWNvE153EBuhUDVzEBYuEtrBfH5bRGogd/veJmhb
         73QYFM1tENaiYTqwdtCK8fonRS0I1YMTOii3n5x1n2kgX+HSEsOa5lOOseTSG7CN+x6d
         zQ/gbLZnp86LMBkK6oG7OnHy2dj3UBVKG8PXlxCAyMvzg+PA8h3AhPjqa1iq6EMi/iw0
         cOOmMmD3xtvGYb+Xi08z1gxk6zCxo8ClUazh/ANMOFJ6ndhh9m9mtiFs1PttpnmBodjb
         +CIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YYaoLJidpLbCb2Val/nAHU9jRREOj4BuXTbZ7REysR4=;
        b=QyrdNIaVarh0KlRL1EvDP9lyu+1XjXHkK3cYJcexbteNF1GtIUBXzZn3I/60gmHBXm
         td9P43DNH8B0eTy0cRN1MKF/ZtuNb32GcgyiYwuypf+TL70NhRZBjZQTUVT0BTuttzko
         1u6fcPsHKlWQS81JCctt+QYbCrnSfOwxW2YtJWZjTAfme32oOYfR7jZIZvejYy5MLf5W
         37CIesrN+lyj48ThMInSniuVCngEV2VTIh7oU2TCSUqlrcxZaIa+U06RyLHfmjMtWKD+
         O5Lj1NbvseaMv9wHjO83mNnUKl8rm3gnn01WjI8QJHN7yTLrYUOb1aHOinm3eZ63D93L
         vf5g==
X-Gm-Message-State: AOAM530DbwZtntHtsNekkFHoWrkFsF6L59EUMDDy8COCvRBkO8vg0LJP
	xo2PItFWiNPi8K5LtWMqWak=
X-Google-Smtp-Source: ABdhPJyi0fDXpfmki2RynH1ofz+T/8DpZLJ5B71Mbd+TuxpTwl0eTAbUCwAfh5aSMcbBMuFi36Urzw==
X-Received: by 2002:ac8:6906:: with SMTP id e6mr4367656qtr.124.1617226049064;
        Wed, 31 Mar 2021 14:27:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4e82:: with SMTP id 2ls1449546qtp.2.gmail; Wed, 31 Mar
 2021 14:27:28 -0700 (PDT)
X-Received: by 2002:a05:622a:c3:: with SMTP id p3mr4215007qtw.43.1617226048612;
        Wed, 31 Mar 2021 14:27:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617226048; cv=none;
        d=google.com; s=arc-20160816;
        b=oi8Am04pBird7YBfSG4NyFCGSfFRsZG/ANGfLpRc45yhQso0a+zN/srPnAxclFXtDy
         m6I97iwvXcYCWULm7f8TKcF93zUBmvnm8VSfZ6NgGtWj2XyXytu76SBZ7GECuKwW4yrZ
         j6fUTXes0Me2+2bhegpY8Z8KKmzyJemn9h0GHkFXJuQSpMtlaV6Ymo9YiMAxyFsvNJwU
         /nb+uGgprFuXfUT4K1i58+MZF3F1xgXEeDJUxcGT8S0afIVhRMM37DnvvZHI0QxZkRX0
         XLWV3D0foShM9TABnsBPBAR0R1y/H3GG2j54Ff8jc9QHtjKFHk/fgiLEzRTtQ9KEEZYN
         4YZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=bTCEWvQMjkTW/eVBx3Fi28gIb6vhFXkJKuQZd7egWL4=;
        b=jLdixPCuUJwrM6mCTkgPY3xaEcumQk1vJkJb3+H2hgI6hy0zQ0+hehmjFZD4IqiNUq
         sgHwxEJh2JhZqFAtiwqPG7Y+wBt7YXUUPKpQ2qbZY10i7ZwuR9JG5TQrsJ3NRGnu8HiR
         0r7x6U5N+J/fAzX0v0Ev1d5uMD+73zZE2txVW72CtIdUyW6ziXHIKOEN4gf3tbq2y4Ao
         L2Q2wLU7+t65uZdn0aMWON0uX+3yviKr5W2oJKzSE8iLPfApkVDWG4Ce1FpAJYg7bSzl
         uwCl/N9v2Ih5q8hH5DoJ25MD3yZvEbo8Y7sqUucCjx19cVy1c/RBUX1KB/DYYzDmmxKJ
         AiAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZyWaDB66;
       spf=pass (google.com: domain of 3p-lkyawkak4goawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3P-lkYAwKAK4gOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id r26si339541qtf.3.2021.03.31.14.27.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:27:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3p-lkyawkak4goawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id p24so2125853pff.8
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 14:27:28 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:7933:7015:a5d5:3835])
 (user=samitolvanen job=sendgmr) by 2002:a63:d550:: with SMTP id
 v16mr4986888pgi.164.1617226047699; Wed, 31 Mar 2021 14:27:27 -0700 (PDT)
Date: Wed, 31 Mar 2021 14:27:06 -0700
In-Reply-To: <20210331212722.2746212-1-samitolvanen@google.com>
Message-Id: <20210331212722.2746212-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210331212722.2746212-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH v4 02/17] cfi: add __cficanonical
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZyWaDB66;       spf=pass
 (google.com: domain of 3p-lkyawkak4goawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3P-lkYAwKAK4gOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
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

With CONFIG_CFI_CLANG, the compiler replaces a function address taken
in C code with the address of a local jump table entry, which passes
runtime indirect call checks. However, the compiler won't replace
addresses taken in assembly code, which will result in a CFI failure
if we later jump to such an address in instrumented C code. The code
generated for the non-canonical jump table looks this:

  <noncanonical.cfi_jt>: /* In C, &noncanonical points here */
	jmp noncanonical
  ...
  <noncanonical>:        /* function body */
	...

This change adds the __cficanonical attribute, which tells the
compiler to use a canonical jump table for the function instead. This
means the compiler will rename the actual function to <function>.cfi
and points the original symbol to the jump table entry instead:

  <canonical>:           /* jump table entry */
	jmp canonical.cfi
  ...
  <canonical.cfi>:       /* function body */
	...

As a result, the address taken in assembly, or other non-instrumented
code always points to the jump table and therefore, can be used for
indirect calls in instrumented code without tripping CFI checks.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Bjorn Helgaas <bhelgaas@google.com>   # pci.h
---
 include/linux/compiler-clang.h | 1 +
 include/linux/compiler_types.h | 4 ++++
 include/linux/init.h           | 4 ++--
 include/linux/pci.h            | 4 ++--
 4 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 6de9d0c9377e..adbe76b203e2 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -63,3 +63,4 @@
 #endif
 
 #define __nocfi		__attribute__((__no_sanitize__("cfi")))
+#define __cficanonical	__attribute__((__cfi_canonical_jump_table__))
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 796935a37e37..d29bda7f6ebd 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -246,6 +246,10 @@ struct ftrace_likely_data {
 # define __nocfi
 #endif
 
+#ifndef __cficanonical
+# define __cficanonical
+#endif
+
 #ifndef asm_volatile_goto
 #define asm_volatile_goto(x...) asm goto(x)
 #endif
diff --git a/include/linux/init.h b/include/linux/init.h
index b3ea15348fbd..045ad1650ed1 100644
--- a/include/linux/init.h
+++ b/include/linux/init.h
@@ -220,8 +220,8 @@ extern bool initcall_debug;
 	__initcall_name(initstub, __iid, id)
 
 #define __define_initcall_stub(__stub, fn)			\
-	int __init __stub(void);				\
-	int __init __stub(void)					\
+	int __init __cficanonical __stub(void);			\
+	int __init __cficanonical __stub(void)			\
 	{ 							\
 		return fn();					\
 	}							\
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 86c799c97b77..39684b72db91 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1944,8 +1944,8 @@ enum pci_fixup_pass {
 #ifdef CONFIG_LTO_CLANG
 #define __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
 				  class_shift, hook, stub)		\
-	void stub(struct pci_dev *dev);					\
-	void stub(struct pci_dev *dev)					\
+	void __cficanonical stub(struct pci_dev *dev);			\
+	void __cficanonical stub(struct pci_dev *dev)			\
 	{ 								\
 		hook(dev); 						\
 	}								\
-- 
2.31.0.291.g576ba9dcdaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210331212722.2746212-3-samitolvanen%40google.com.
