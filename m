Return-Path: <clang-built-linux+bncBCS7XUWOUULBBQXCQL6QKGQEPN4N67A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id D04A82A393C
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Nov 2020 02:24:19 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id g20sf9655726plj.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Nov 2020 17:24:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604366658; cv=pass;
        d=google.com; s=arc-20160816;
        b=ab6OYgYD+7VL3o8ywCzNAKmvAOpjJqJsGlZAJS/+2FTpfBu0Js0OySULmP61xX7xVj
         4wzr6N23e8vfdC+AYeCzFNW6hm4WnbnWNtUv69SaoOtAi4o0mnUKxWWkiSLhexJlahCl
         dLBRw4BGBy2OlJEn2Q9/OmxPare1BSgidJB7iwPeanO3hRg7Q/kfGshhEnhiw4XlILUJ
         KIsfias8a3YACv3tT5fN5nuSP2b5HFKNQ10UVRi7doxXdKKkY0pn9XXkMknM1m6HaNis
         oTWnqvHVp/6WqCIQ7PM0WyU2ZsUv+2BwI+Voykhp+XG4EbyiqZjPQMPq8h9JkINykP2K
         mUiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=DjGwAersO0jGb4HwglPW1Lb3aO+xfsySdb8cA+58LP8=;
        b=kZ27psLXE7Ce9xAbC0QRJOxig4wBGS4gxG7fxQmUI9dyxsDr5iUrgnDBSk7lCJ0MNB
         zgxy32VnUFHn5Ng2tmx/tjv2yS/5c4U+M1xq05YSfBRkiD4EzixyM92xh78N12JJAt8v
         kb7zqxO9zw3gum8stB36Leu84TiYwFRRnagBCt3XLdr09kiGf0TLlHmSWCqbXNgo7UWk
         0NvkoT5ZmrA3tdPdztXNmZC0r1aZgoJTvk4/aM51ESO1CIu/cLb/sub4G+5jW6GkYT2h
         UmAiPcub2ygbXM1UJa8P1BmMBENzSmSxWSqR31YUbddmZ9iLF/Cp3j122Ccnm4dvEZT8
         fRaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=by5ZHAfa;
       spf=pass (google.com: domain of 3qbggxwckesosgyqxgemuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3QbGgXwcKESoSGYQXGeMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DjGwAersO0jGb4HwglPW1Lb3aO+xfsySdb8cA+58LP8=;
        b=PGdMAlEr8yQ9FEQ8KGcYFAEvF2xwZlWuQdloSLe/4AW4My2lZ4kYWcEquNu/E4AXco
         wVXUQSpjlYR5JdsSTxkurpGvoICkv7c368n5D17Q6B86kMHxsGU981GyOJ+S3uUm4CaE
         xImoCNgQcEjXM1+sHcCR0xRnvLPaRTNezpwiVCUzjnHT7xQTQ4BKYHxuFa1F74fPVZ9V
         2WFDkNIfWIyIkCDYXb6oIP3UMeNugBKhXKA4PBcSyWDx2OlRvBUDs2Fzm3EI4sfuhW4T
         2zDRMFm8U0amjLNtIYtq3C1//og5iih3Nd06CpjoYu05oAqiOJ/gTrp/f0nmJ6Nhg9eq
         f1jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DjGwAersO0jGb4HwglPW1Lb3aO+xfsySdb8cA+58LP8=;
        b=K3jEgtSWDsRqzz0Qd9e80H1qEvPJe+p+ffki8djFRu+6V9RNh2lMypqTBZMJhlHD7B
         +jouxPfgp/xQ3PNU062mQC6/SMBWlPPmLBUdSiydYrMxaHD3JmhbUDEfofc82jXQtL49
         Q2NAOktxnBOBKeo3OXbHkszrTyBiRQqMTM0upQq5H5BJoY/atTY6UvxdgoruIjsTNPgx
         dO4A0drkNqU5tTot8WlLf86XLhVX6ze5rBZTOLXKsPtItjNBogX994YcpfBgo3afxtS0
         vjmvlrEJSUWt2XBO87nUznQy87jYGwAYW7CtRcDUyso+pUqj9ZiKJssv9aeO0Tdq40FK
         Jx6w==
X-Gm-Message-State: AOAM5322J++kGMqM+U8j3vRM4/+tV5pElEdTSirTfJf0adGE5xOVGgmu
	cNSZmvQM5saQVbc5TyuGL9A=
X-Google-Smtp-Source: ABdhPJz/AQiehWm+xqLjW6N0GQxeJT5k5fJ7U3AxtcAOkOpSLgmvROT8EkKYrI6Ww5ihGXlSOKtRGA==
X-Received: by 2002:a17:90b:4b03:: with SMTP id lx3mr1113643pjb.102.1604366658609;
        Mon, 02 Nov 2020 17:24:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c256:: with SMTP id d22ls205690pjx.2.canary-gmail;
 Mon, 02 Nov 2020 17:24:18 -0800 (PST)
X-Received: by 2002:a17:90b:391:: with SMTP id ga17mr1108517pjb.54.1604366657979;
        Mon, 02 Nov 2020 17:24:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604366657; cv=none;
        d=google.com; s=arc-20160816;
        b=rVQPzfnve9eaH3tBERQImx8OhuaILoa0EoP4JWK719ycLTfiIrEtetJqc3fX0f/boa
         T+y1XPGWFUTBExvTHU0RfoRbdG+x6tCSNakua7O1xrXIZBBNJzh/v8BaMItK0tvBXPY+
         NpLZdIo+dVm+mFAjJ74EkK+PHMBzpWWHQTqJqKeV7ld+q7Vu0Jk2/8FhN+6I0JoQkn25
         AXZGh4ZmFKgO6C5C86yY50xUa54b2mt38ljH4ho3O66rXrpm0xzdhqNp6/GuLMoVAlg+
         EltdfV9BjDPkiMtAVZ/YdclETNMMJaXvPIiXUc1zikGy1jwxzT2XXI6WQOLqiBv+hgaL
         2uyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=BN0F7yyrVYxdknpr1rsFOSFEJ7httujvVbxZ/VWAHPE=;
        b=mGkBdLMeOracgZ9y8ZNtp9x3673ivb2N4lTS67XigJMPUfeNKda16fFEvqPwYBDb/M
         NmScGL+f2G+zUvWnrY63JZzJcqarzNUIghvyFgbOtnt8V7h04zO4o6hA03xc8bCAj3d1
         fap7kc5ahu7o4fAgzTg43uk1tLsdIio34IHixTCA7Pg8jdCCmsdjx/O09z9SqmJL/f0E
         trSSZau++XULdQMK5MCO+b/IcjNghw1sNrTlKTtSrShilXcAF3qZFe/SGFk/xtdeCFB4
         3zXExtFOqWSZl3mPUf7HOtyljAdBzoBf/3ZC1qa8/aQ8AUYvY8vpVJkw0XqoN8ysYYyr
         21zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=by5ZHAfa;
       spf=pass (google.com: domain of 3qbggxwckesosgyqxgemuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3QbGgXwcKESoSGYQXGeMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id x24si917547pll.5.2020.11.02.17.24.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2020 17:24:17 -0800 (PST)
Received-SPF: pass (google.com: domain of 3qbggxwckesosgyqxgemuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id t70so9760591qka.11
        for <clang-built-linux@googlegroups.com>; Mon, 02 Nov 2020 17:24:17 -0800 (PST)
Sender: "maskray via sendgmr" <maskray@maskray1.svl.corp.google.com>
X-Received: from maskray1.svl.corp.google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
 (user=maskray job=sendgmr) by 2002:a0c:b897:: with SMTP id
 y23mr18028003qvf.60.1604366657094; Mon, 02 Nov 2020 17:24:17 -0800 (PST)
Date: Mon,  2 Nov 2020 17:23:58 -0800
Message-Id: <20201103012358.168682-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH v2] x86_64: Change .weak to SYM_FUNC_START_WEAK for arch/x86/lib/mem*_64.S
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>
Cc: clang-built-linux@googlegroups.com, Jian Cai <jiancai@google.com>, 
	Fangrui Song <maskray@google.com>, Sami Tolvanen <samitolvanen@google.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=by5ZHAfa;       spf=pass
 (google.com: domain of 3qbggxwckesosgyqxgemuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3QbGgXwcKESoSGYQXGeMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

Commit 393f203f5fd5 ("x86_64: kasan: add interceptors for
memset/memmove/memcpy functions") added .weak directives to
arch/x86/lib/mem*_64.S instead of changing the existing ENTRY macros to
WEAK. This can lead to the assembly snippet `.weak memcpy ... .globl
memcpy` which will produce a STB_WEAK memcpy with GNU as but STB_GLOBAL
memcpy with LLVM's integrated assembler before LLVM 12. LLVM 12 (since
https://reviews.llvm.org/D90108) will error on such an overridden symbol
binding.

Commit ef1e03152cb0 ("x86/asm: Make some functions local") changed ENTRY in
arch/x86/lib/memcpy_64.S to SYM_FUNC_START_LOCAL, which was ineffective due to
the preceding .weak directive.

Use the appropriate SYM_FUNC_START_WEAK instead.

Fixes: 393f203f5fd5 ("x86_64: kasan: add interceptors for memset/memmove/memcpy functions")
Fixes: ef1e03152cb0 ("x86/asm: Make some functions local")
Reported-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Fangrui Song <maskray@google.com>
Cc: <stable@vger.kernel.org>
---
Changes in v2
* Correct the message: SYM_FUNC_START_WEAK was not available at commit 393f203f5fd5.
* Mention Fixes: ef1e03152cb0
---
 arch/x86/lib/memcpy_64.S  | 4 +---
 arch/x86/lib/memmove_64.S | 4 +---
 arch/x86/lib/memset_64.S  | 4 +---
 3 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/arch/x86/lib/memcpy_64.S b/arch/x86/lib/memcpy_64.S
index 037faac46b0c..1e299ac73c86 100644
--- a/arch/x86/lib/memcpy_64.S
+++ b/arch/x86/lib/memcpy_64.S
@@ -16,8 +16,6 @@
  * to a jmp to memcpy_erms which does the REP; MOVSB mem copy.
  */
 
-.weak memcpy
-
 /*
  * memcpy - Copy a memory block.
  *
@@ -30,7 +28,7 @@
  * rax original destination
  */
 SYM_FUNC_START_ALIAS(__memcpy)
-SYM_FUNC_START_LOCAL(memcpy)
+SYM_FUNC_START_WEAK(memcpy)
 	ALTERNATIVE_2 "jmp memcpy_orig", "", X86_FEATURE_REP_GOOD, \
 		      "jmp memcpy_erms", X86_FEATURE_ERMS
 
diff --git a/arch/x86/lib/memmove_64.S b/arch/x86/lib/memmove_64.S
index 7ff00ea64e4f..41902fe8b859 100644
--- a/arch/x86/lib/memmove_64.S
+++ b/arch/x86/lib/memmove_64.S
@@ -24,9 +24,7 @@
  * Output:
  * rax: dest
  */
-.weak memmove
-
-SYM_FUNC_START_ALIAS(memmove)
+SYM_FUNC_START_WEAK(memmove)
 SYM_FUNC_START(__memmove)
 
 	mov %rdi, %rax
diff --git a/arch/x86/lib/memset_64.S b/arch/x86/lib/memset_64.S
index 9ff15ee404a4..0bfd26e4ca9e 100644
--- a/arch/x86/lib/memset_64.S
+++ b/arch/x86/lib/memset_64.S
@@ -6,8 +6,6 @@
 #include <asm/alternative-asm.h>
 #include <asm/export.h>
 
-.weak memset
-
 /*
  * ISO C memset - set a memory block to a byte value. This function uses fast
  * string to get better performance than the original function. The code is
@@ -19,7 +17,7 @@
  *
  * rax   original destination
  */
-SYM_FUNC_START_ALIAS(memset)
+SYM_FUNC_START_WEAK(memset)
 SYM_FUNC_START(__memset)
 	/*
 	 * Some CPUs support enhanced REP MOVSB/STOSB feature. It is recommended
-- 
2.29.1.341.ge80a0c044ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201103012358.168682-1-maskray%40google.com.
