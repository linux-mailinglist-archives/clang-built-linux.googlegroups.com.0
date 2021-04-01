Return-Path: <clang-built-linux+bncBC2ORX645YPRBB5QTGBQMGQECWG7POA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id C24B5352395
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 01:32:24 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id g14sf4064242qtu.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 16:32:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617319943; cv=pass;
        d=google.com; s=arc-20160816;
        b=EWfGT4ZsN5IvZfrTgYZryzTI3ytTvioTqeGU+p4dxdRbrmXcnNwzt99kY3w3e+FvRb
         UctKsBu9T5XdTovpuWTUw0Ud57DlmkrYpH4K75hMqJwvri9HdkQkTClxGW5iMnkIOWwu
         gs/N2ixgQqO9wAbMYSjj4iPJV45QUEL3ihHBTAITMllegXoBSoQLlbh5r/hGh34YWF0g
         OBPj1rN3iRiAnwSaIP4u3k1mqbY+NHpHsvCU2FJaaF/v+cPfPnqIHzuPbZ0l8BRVv1QX
         m92YfEcGYqyNW18zA5ikC+Iktv1JwVlznnCHJ25tgKKwc+CeBCtxyuVnC/WOS3+HRc0Q
         JIHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=0H/yJl7QSzAV4yb/pmzwrJTtYaVl8pB64LXL7Or7rkE=;
        b=LxR4IsgadnusxhtMNsYUMKo20mrbagqiY94e5qxIKN9u4RbFZnkkckfN4uOmRRLWwO
         Ywhfpa1ZwhRRjE2dcfhBq1rEi0rhM3ySz38E9MZAKmcWp4JsMy5m9tDQniom+x2m0DFy
         nufsc3qotecXAFWW1n28LsF1a22M6eT4F0dyy4IdfCRTjvWiSLfVqy0hFOLxNeC2ca3J
         CtIL2Ih1PMD0rBfyCxR72RnW1ktWf9mwYun5TMVtnIJcrsURtBfH2Yv9pDjvyT/KrQmB
         A/QjnrfWyPGCjDGdVxEmbf0I6BSqBBFWbk3tMT3FKNxgtlsjZ+pk4mdxMTKVDcf9Hd6S
         HjxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YgEJwWol;
       spf=pass (google.com: domain of 3blhmyawkafkj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3BlhmYAwKAFkJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0H/yJl7QSzAV4yb/pmzwrJTtYaVl8pB64LXL7Or7rkE=;
        b=HDkvB/9/yRjQhs0QWQed2bO2quWdGk55Y8YdTnI4yiFeChU0UyDc7XKbOxtJJ99BTR
         CyBaJUaeNBJ54NHV4Ug7Q54kPf8J5d65xh+/WY8Lo0z+NIc5oG9VI5QSq9WSRbSPGVkL
         etLdgbOTbQD5oF+QvBFkiBNndH87j9+OVsNJlUsnfaMX1mmZlX11hgI30FNk5CwvDA9h
         TkdGc6WV3spFY3QFQJDMiJjwWIe+ODZmle2wba2Rfc47zPiC1VZJz/4yibRIMT1W4eLv
         Rpj4K2vbRMo9AspoXHpk3IzfUjkSkfindyqceD4lbopAnxmSQHM8CALPomPI23x0+sGn
         gu1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0H/yJl7QSzAV4yb/pmzwrJTtYaVl8pB64LXL7Or7rkE=;
        b=sUpSDQpVdU+xw/7q0wY9VWnJUOJkZB38Nsdg3liGSezZ3ZUrBYi2dtObme31OiuZTg
         n0hwLEfkFLgsfrfarnVJWiefSHrqcfwDIW5sn5du4vyY+w0w1L/dIXs87psSXXdGyZgS
         fjc5sD4+FTRBx8V/dSD88Y/hRphCEYGwiJVaWBNtDVe3q3nft06lRd+sYGEyEkso/7bG
         ty13Uiu6iJjbjmV1GFTOuxEtUVMjCVtQij+QJ7oxGp5K4wmSv9My4TC2+dDQ028hi5PS
         oSRg1KtoObtX6qQqLLZ9+9L3UfoXBeoXp1v8pog2vaV6SJWW3DVoi9wLTWYDoXClF+u2
         ln6Q==
X-Gm-Message-State: AOAM531VtUZ+QTk3SlJsUW7g6Ex+afFkfF4MOSjaYgRYDvVOcMu9okwH
	4ZP5Om9FFp87m+UXWFp+HjU=
X-Google-Smtp-Source: ABdhPJz6w+TNgfUJfY8bO+1U6C6TdmZPouelCkUAwImiJSX1+qNqjTrQm5pFzd5TSA3H6mAaHPgI1w==
X-Received: by 2002:a05:6214:2689:: with SMTP id gm9mr10599606qvb.42.1617319943693;
        Thu, 01 Apr 2021 16:32:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7a82:: with SMTP id v124ls4139494qkc.3.gmail; Thu, 01
 Apr 2021 16:32:23 -0700 (PDT)
X-Received: by 2002:a37:a404:: with SMTP id n4mr10639519qke.439.1617319943253;
        Thu, 01 Apr 2021 16:32:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617319943; cv=none;
        d=google.com; s=arc-20160816;
        b=NVTEBDiwmK1g2CjKoqQYkXeQE0asUwsG3BXWJE5bv8PdcJ56xKCTx3KcyA+PldtRuN
         u3ckbMGJxG4sThsDZoC0ih7tHnQZW/NRtqEQ59tZW/EgqLPnoe2jB2u5z5SdCimcn3rL
         91IDbic0AyXePNsauQIziH9oK1mpvZWU8zSoy3Wl+DQjzsW/ld7GIWIFHE+GV/5vHWdn
         AZdjxcbQpS/ZDMmE1P7EAsw5ubdqa/H5JzNetMqGezec4blZYWp8WnjSz4kSluyY39oZ
         aYcui8hLWLdhxEuznEAItHSFfjA0/s8e4lNaWaWbPQTWWRoQoiAOG3cuFOF1GSoS84Ic
         oGyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=UueCb+prJKWXLp5VR3fqk5CXQc0Ab5GgzQzu/xo2P9E=;
        b=CcsegSFoEPpww9uPQYeov8PQxVTBfHE8WE/zIBUyMwsgZhPr4tmyuviSbrCI2YwQ18
         rfNudHrriwX5EFCYEL7nsAveXfhTfJ2FYncCW7ke2NKRzjj3S782xIG/ISKMvwcpKTU7
         IzLoyhlOKWDrFO12R5nKeQ1qc4xCNFpdi/gVbjtzld3mBpcx3o0QYJN7ebu13iPcM0PB
         CzSMuI0aCnMTLuGup0n41kiuDrAzkmp9v0iK+RP/XTskQLURGb88iJHdmacB2HomfQh3
         NCQV2KWrSDMAYaWcZDoRDPblcZZLkihO9Ff1VvifYS6ZupZHRurQ+ju3GMKd8tX73G9T
         HuyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YgEJwWol;
       spf=pass (google.com: domain of 3blhmyawkafkj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3BlhmYAwKAFkJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id b4si460042qkh.2.2021.04.01.16.32.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 16:32:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3blhmyawkafkj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id u5so3652082plg.2
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 16:32:23 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:4cd1:da86:e91b:70b4])
 (user=samitolvanen job=sendgmr) by 2002:a17:90a:ba05:: with SMTP id
 s5mr11390928pjr.194.1617319942329; Thu, 01 Apr 2021 16:32:22 -0700 (PDT)
Date: Thu,  1 Apr 2021 16:32:00 -0700
In-Reply-To: <20210401233216.2540591-1-samitolvanen@google.com>
Message-Id: <20210401233216.2540591-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210401233216.2540591-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
Subject: [PATCH v5 02/18] cfi: add __cficanonical
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
 header.i=@google.com header.s=20161025 header.b=YgEJwWol;       spf=pass
 (google.com: domain of 3blhmyawkafkj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3BlhmYAwKAFkJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
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
2.31.0.208.g409f899ff0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401233216.2540591-3-samitolvanen%40google.com.
