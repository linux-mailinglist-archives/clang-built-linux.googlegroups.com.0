Return-Path: <clang-built-linux+bncBC2ORX645YPRBYUWXWBQMGQEFUSKKQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0392D358C2B
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:28:52 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id a6sf1678939pfv.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:28:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617906530; cv=pass;
        d=google.com; s=arc-20160816;
        b=b3DDlBADjkAwpzYN0CHTPJf5tNidB7n4wykml7yhHKVLfv9NeTTKr1QwPNTiPulj7G
         VItA0yB7bZDRe3P8X9pv6x7H5ddYVVAXgdwXvjwDF1e1J+eR0VI6efBxSoKlYU97AlQB
         BPzljuvVlvsEq8Ysr+miG3cIRnXIOMY1GJGKj7/ZOIMdkqcz0I/2UbiJeweXHLGsSi0N
         8gbJZbG89CM1ON2JeYJR1o8/WHtGX7jNqAZdeNraVpYXLoybbItGxuhyA7xkl/j90mxt
         6BPw3L1yMWj2JAOHul07iQb3CfrQquT1qjIWG7oXObKPIyKHSS2J5rzUusJYSR/JRq07
         8ltQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=LMIgI71WYthlxwn0TVZQKwXFCGsvWnxXT/M+srpLgIA=;
        b=oEtlWE0F026T0iQLGTFy6n6Q6qglHAiUhsOb81nhz1fmgOHSrFM4wKbuGZKrdJuXRw
         /FR5CNVlKE7kPv4/kJJLwU9MzDtedpKPe5RgwxgEY2LRIivUHS3/6WDMwQRu5X9KWy+J
         QcP+pkYXPjilxN1tH7/FnCeAQKicHwx8VGe0x+D+V72/DTUGePQ2AwnjykQppxQ+wv4X
         wH4CpwuZrpIyUeydgr1yBk6AEkhzMaU/jgO6oPfeiAmM6gX0dSpjgjfdrEuVhQgT9dX4
         nnbfuo/rbbuoCObnDTEogE6rv4nQ7DnLvQVhYSOPbyEEooPfk8Ea7TQdBfTVQSHgpRmm
         WMyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H4wKrT8M;
       spf=pass (google.com: domain of 3yutvyawkal4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3YUtvYAwKAL4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LMIgI71WYthlxwn0TVZQKwXFCGsvWnxXT/M+srpLgIA=;
        b=GKBBZEi7X3LtJphLeFXh2ezPXK2PTw4vPlnc5CCwxH5dqB3QdwFOfh1OykTMAzw6/s
         K4i+iA/evOs3b781/KdWL7pYgt47LUwurD9b36zp9LYgJlU9TdqqLUDubjAMWjnl0GQB
         9Vp38/nFiG5oxAFFBgYAjfBq0jovTHiLpMDxfKEfwaFxBqPm38jPryi6Bv0CTQYGA6cU
         7dN9IgiHiDQR5E7DbIK9EF6a/M5O53kC43q72IaQI/Uuly+5aavftrCgNh80IAASBy9W
         z3kG3gwU+s7LUZl0RjyuoPuf4Dc1liDK0BykyhCfO/uf/4RUGe2jXTvvIPRu5m0CNJZe
         Fs9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LMIgI71WYthlxwn0TVZQKwXFCGsvWnxXT/M+srpLgIA=;
        b=pyVuVzOZVwqt3Z3hR5kkt+85g4vax4FJi18ysS8Gi5A9/gZfXd8027v7RW7/SqQQwG
         pPIc+SvP5zEoFd1i3a7BW7Ox0QekG/GhKo03TTQRCVJ9nVnP3Rp+8di4/WtH+j3ucJ4E
         c/85lPoSTeGvS5YfRQJpm3glWutp6t+htdIFbgLUqa4UWrdhLAgSmXztXCA2qDXG3zpy
         rQkzbk1MsA5r/uZckytDZBsw+J4pbkTw+9a99tHL6lqoJs13UASzM7wpiQW3INVGVRlI
         fnJmC79Xvy5swh9mRE6n9wMGB134d8I2DEHJHTUsQbuQBQkdV860SF5N2GBA3+7Hr4uw
         Ldhg==
X-Gm-Message-State: AOAM532I3oGA/8Do4FgVooMlmsRe0JFuQVdr5Ystj+iYZ5yHGTKuq0Eq
	GZrAjB0Qg7szV6lw0BiplAo=
X-Google-Smtp-Source: ABdhPJw78QfkDbr9xBvBFMgFPZnSlpOGycehnpS9U/UtihLqSEE16tS0uROrpTmM9GKs+qda3OeDfA==
X-Received: by 2002:a63:e746:: with SMTP id j6mr9184722pgk.91.1617906530754;
        Thu, 08 Apr 2021 11:28:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2a8e:: with SMTP id j14ls3616799pjd.3.canary-gmail;
 Thu, 08 Apr 2021 11:28:50 -0700 (PDT)
X-Received: by 2002:a17:90b:378f:: with SMTP id mz15mr10151300pjb.70.1617906530173;
        Thu, 08 Apr 2021 11:28:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617906530; cv=none;
        d=google.com; s=arc-20160816;
        b=KSzKktw78NzT6AUu7sT15BC4+sKbFq4yCmvBV/qGLsQa6RC+aOjItzDf3KEWvzvGbR
         XbPQETHW1Jjfhzohrky9O7gEerB/2uweFeWbI33yXTaXFaUC2IC4jhRQ5gR7KK4xTbNn
         SxsjmMvP4fSABwGiQwYiG+KDt3FhWKZPomcBD8FDSg1DF4HmuZ0izy4mWkiCxcKwGV/B
         DWD9TkdTTLGX2c9rX41jFuHsh0wVJOIiZSverxpvzrx0fIc+ezYc4inRLt49Oq0DuPMB
         aNDE3hECg+YfsitMijbF6SDS31sokAZg0+aBNJEHJ9eAiJhYbOy0btfH4ifIvHo4QJ1c
         2CWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=vvGV2K9qJKpfvq0cSok+JSuieXx8RQrlyRB1QstgZ+Y=;
        b=xzjlyj8f2Pfi5ti2ifqQytbgGuSh4Ah2TBFH9jLsMkFB/ydGO7Pngxkxt6sF6RiUc6
         3zrBR2Fv2MRq8uEfzyl3Xi2bs89Kdc3fQO2k7uDpPq/gj87UDtE3G6oQcAlFVc55So6n
         klfRNudtCQazk11o3MDxWnrM0ry7yhNuOn+Cw7e1ppU/pUPXsGRQ2Cd3JqK5A3a2Fx88
         ayBggk2s4Hvvuq3RUUG7BWZQlWpRlqGu9LyHE1/rhUSXR8QYhqs1BycPYpM9ppxkIiRN
         Y4Q9d+f3e+dmwiAZ1cYl+ZwARXO6BdUD9JFSQQ55MW/lCMd7hfhOiPsTd/+crIz5XKr5
         5gpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H4wKrT8M;
       spf=pass (google.com: domain of 3yutvyawkal4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3YUtvYAwKAL4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id j184si33894pfb.1.2021.04.08.11.28.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:28:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yutvyawkal4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id p18so1667415qvn.19
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:28:50 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:3560:8505:40a2:e021])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:1081:: with SMTP id
 o1mr9867133qvr.11.1617906529278; Thu, 08 Apr 2021 11:28:49 -0700 (PDT)
Date: Thu,  8 Apr 2021 11:28:27 -0700
In-Reply-To: <20210408182843.1754385-1-samitolvanen@google.com>
Message-Id: <20210408182843.1754385-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210408182843.1754385-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v6 02/18] cfi: add __cficanonical
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=H4wKrT8M;       spf=pass
 (google.com: domain of 3yutvyawkal4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3YUtvYAwKAL4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
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
Tested-by: Nathan Chancellor <nathan@kernel.org>
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
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408182843.1754385-3-samitolvanen%40google.com.
