Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRNDZSAAMGQEVJPYNLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D915307EBC
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 20:34:31 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id hg20sf4073718pjb.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 11:34:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611862469; cv=pass;
        d=google.com; s=arc-20160816;
        b=fnIr+u9TfshhDO3XIR+Vr4JlIt+QvXjgyLtcGU4AjdPTrzqWHC+m01WgDl135IHRH/
         YfdRMcKl0flc0K9UsJxLw3veErW0apreDP0gTfh8eJTt08iJZuawiO1hoVN32tDOJCuz
         E0H2XPTnYlmz7gLg29Oq/WSy0vSYcRKe6tuXQldhAJKkIrBz3cGvuTh3EL48aSGhgy/a
         ueH+d7SQJ6L4+/TZERbntHs7x6yT10slOM+MFsRQ5x25SXDfZ+jX87v7rRvJ9kJW6DOP
         dvqLiSU1CDI1lDYJufr5y7Te1IjqGbfY5W8hZ/jWxSv9Cy8Q/iaQmoSIXrgLEOLRCdBY
         Ob1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=mpdzfxh4TWEaPNY3MoO/jTUUtg2+9CEzWI+X0tdnX38=;
        b=AkH1QOZ6yAynYgSzQp0YPaaSSCQNZgzm75l9rjoU9LHhoy52cQelblQC3td0bYSqDi
         wVldZ5CB/GbQ6IXvnuHUICsYMd53aQdR+yUfkbFOAtf8LZIrXVLndwPgJzewGb/ZWWCg
         M5aojKOrustr3witTpKSTB1x/2+Xzq7hjEOUwsXHygPnSoteynKQUwUEswX8J7eC8Yx3
         Bv0QBYsSJKcfswikMTRZnw4YLUNF6Ak6NZfUTHTwNppYClwlcSugmlsdPCBO/VCXRjMm
         d6/fyveykT2ykl4eXVTjs5Kz1mPzhAqYxkHslals0IdNHjMi5wfbJ28g95H+K+2D5jsI
         F+gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nzrLMoaC;
       spf=pass (google.com: domain of 3xbetyawkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3xBETYAwKADskabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mpdzfxh4TWEaPNY3MoO/jTUUtg2+9CEzWI+X0tdnX38=;
        b=qdaytbG0V5lqz8uBDej2DaXi2Szit1j73tqaZqB8hMNPXb2jmIH0ocdAMEJVF0UW//
         LE3XlcuhV3myDAyWH60cowan8YPV9avjc+EP8sKN5Whb+7CwwVW76s2h9g5I7bxlX7nS
         T7yEhOVPKSwqRHOnQEsAIeslZKY6lRDFkQ2DCeSnFqrd5MLuLUvVFITdQUlUjKwzok+8
         lde56dTt5ugxhqYWZUcag68IevH9mO0xGIxRycyiq2kZc0j2/zw2cwfS6rVr6bgyV/aU
         n9HWbasIe/Z3vhJS1KxEy0ImYYdfYnxPmx2GpggoNyi/8bd9uHmhRg6ya79BQPmRFDAg
         StcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mpdzfxh4TWEaPNY3MoO/jTUUtg2+9CEzWI+X0tdnX38=;
        b=C+yU2DPhpBRK22o5evgOnnOCBqDohQKze1hfUdr9+RMwfE2DGdRSqbrgIsa1aww62q
         22mF3yPs9uLbDbzsxyovJsF1gztG9NaemjJNHzeRAfq5xL1U2Rb0M5zD8RkYLi5sh11C
         PXN1/lCTgMZOsckebEs2BE9P8XUrjp5mBdDBx+jB7AqbHY4yylgOV/RmQ6aaArcInBqx
         qV4yEMw7kAmCp85iLkXGR+wKKTCYbQ7Wf6n6rheFxnT2xET/vu9Dx1y5cWiD/Zn1axM3
         9SgttMwudnzOFa09VTm55gNA+Y+5Wd706nGSSotjAboM4jTngM0P/93VZRE/G/OXXf8n
         AHSA==
X-Gm-Message-State: AOAM5328r5RxLuegnb8Atr5Ad1k+LpZq9aHRaX65FIJTXwem+y3jnfvf
	YTpnUhDnFlTJilVoBpKrC1k=
X-Google-Smtp-Source: ABdhPJwP2LiWwzEX4nKMYYFjtipA7x/60XkLawyB2l6rLW5rJ67meNDF7xdLZeKUrDP2LWE9aPSW6A==
X-Received: by 2002:a63:1047:: with SMTP id 7mr981392pgq.292.1611862469679;
        Thu, 28 Jan 2021 11:34:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:778c:: with SMTP id s134ls2561439pgc.0.gmail; Thu, 28
 Jan 2021 11:34:29 -0800 (PST)
X-Received: by 2002:a63:215f:: with SMTP id s31mr966014pgm.146.1611862469022;
        Thu, 28 Jan 2021 11:34:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611862469; cv=none;
        d=google.com; s=arc-20160816;
        b=WtRtk0hK7qhITJdpFUY8EPltxB2Rp1OpgK3YKIaSjWLisihIkH4Yd05S65m7pUA92j
         +nozxNJ+Bf2koMl5RwKD1NO/dJQKaLgTHo3Y8UBD1iJcUSu91mTOodTFmnWE209FzDbq
         05csOz0Fky/1fFGc5T3Bci4EWteY/E1z3EQO6QXcbSnnX6MjFj8XAr79HvbGx9C2TdbH
         eBmx42F6tB6+h4b8GncMnobrHP5wIOPvr07OIZYxwhSGG6QRMuAp04jtgm8WqLTWf7I1
         +Lc5G3ipynMZVVeziVWln387fj1FspmqNmCch2pCcAwtR1ZwL8wlm6c/GRUDE+LaI/7Z
         Tzgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=5jnWJQ2oSnO4bcJauB6CCpMEz3ZJqRN7icvxNnnCQwo=;
        b=WzUmFOucMoMdSFWHgHbChmLCw0tlnYb/zVsgarqtIgtumOobVBDvMjvwdmtd82JM+v
         NDY4rr0hl+jqGdEKnLuUmRuCA1lCTTAxnV/e8yXI83v2FDobYFUXCNISjYUUjjEQAatM
         2A1M4ZnjFac5fhCFapYG/vtj+JySC95SLhBuq6GVQatSxgoXAvm7kknMy1X1pzV89AlE
         kM6gu3fIthFWXDRV8bt7n1QESwz6aOo6+tRppo4JR3z3hfqy7p1pS1dGuyFeNPzZvpBJ
         RGHQl+Pq5Bo5JAPOKsoooW/8swkBrDQa7lawwk4QiJj+Vy7c6kb9xw1zKpVpzWoMDAGX
         iEQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nzrLMoaC;
       spf=pass (google.com: domain of 3xbetyawkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3xBETYAwKADskabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id ci6si536988pjb.1.2021.01.28.11.34.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jan 2021 11:34:29 -0800 (PST)
Received-SPF: pass (google.com: domain of 3xbetyawkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id k141so44783ybf.11
        for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 11:34:28 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:af52:: with SMTP id
 c18mr2493281ybj.196.1611862468126; Thu, 28 Jan 2021 11:34:28 -0800 (PST)
Date: Thu, 28 Jan 2021 11:34:20 -0800
In-Reply-To: <CAK8P3a0MbxMC9iLe0NGR0ttLY7sZDjsrgKvfRZOXVJLjzDNKmA@mail.gmail.com>
Message-Id: <20210128193422.241155-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAK8P3a0MbxMC9iLe0NGR0ttLY7sZDjsrgKvfRZOXVJLjzDNKmA@mail.gmail.com>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v2] ARM: kprobes: rewrite test-[arm|thumb].c in UAL
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, 
	Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nzrLMoaC;       spf=pass
 (google.com: domain of 3xbetyawkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3xBETYAwKADskabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Clang's integrated assembler only accepts UAL syntax, rewrite the
instructions that were changed by RVCTv2.1.

The document "Assembly language changes after RVCTv2.1" was very
helpful.

This exposed a bug in Clang's integrated assembler, which hopefully will
land in clang-12, but is required to test this patch with LLVM_IAS=1.

Link: https://developer.arm.com/documentation/dui0473/c/writing-arm-assembly-language/assembly-language-changes-after-rvctv2-1
Link: https://github.com/ClangBuiltLinux/linux/issues/1271
Link: https://reviews.llvm.org/D95586
Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
* Fix additonal swpvsb case in test-arm.c when __LINUX_ARM_ARCH__ < 6,
  reported by Arnd.
* Fix arch/arm/probes/kprobes/test-thumb.c, reported by Arnd.
* Modify the oneline to note I'm modifying test-*.c.

 arch/arm/probes/kprobes/test-arm.c   | 290 +++++++++++++--------------
 arch/arm/probes/kprobes/test-thumb.c |  20 +-
 2 files changed, 155 insertions(+), 155 deletions(-)

diff --git a/arch/arm/probes/kprobes/test-arm.c b/arch/arm/probes/kprobes/test-arm.c
index 977369f1aa48..d74c88d97f7b 100644
--- a/arch/arm/probes/kprobes/test-arm.c
+++ b/arch/arm/probes/kprobes/test-arm.c
@@ -55,25 +55,25 @@ void kprobe_arm_test_cases(void)
 	TEST_GROUP("Data-processing (register), (register-shifted register), (immediate)")
 
 #define _DATA_PROCESSING_DNM(op,s,val)						\
-	TEST_RR(  op "eq" s "	r0,  r",1, VAL1,", r",2, val, "")		\
-	TEST_RR(  op "ne" s "	r1,  r",1, VAL1,", r",2, val, ", lsl #3")	\
-	TEST_RR(  op "cs" s "	r2,  r",3, VAL1,", r",2, val, ", lsr #4")	\
-	TEST_RR(  op "cc" s "	r3,  r",3, VAL1,", r",2, val, ", asr #5")	\
-	TEST_RR(  op "mi" s "	r4,  r",5, VAL1,", r",2, N(val),", asr #6")	\
-	TEST_RR(  op "pl" s "	r5,  r",5, VAL1,", r",2, val, ", ror #7")	\
-	TEST_RR(  op "vs" s "	r6,  r",7, VAL1,", r",2, val, ", rrx")		\
-	TEST_R(   op "vc" s "	r6,  r",7, VAL1,", pc, lsl #3")			\
-	TEST_R(   op "vc" s "	r6,  r",7, VAL1,", sp, lsr #4")			\
-	TEST_R(   op "vc" s "	r6,  pc, r",7, VAL1,", asr #5")			\
-	TEST_R(   op "vc" s "	r6,  sp, r",7, VAL1,", ror #6")			\
-	TEST_RRR( op "hi" s "	r8,  r",9, VAL1,", r",14,val, ", lsl r",0, 3,"")\
-	TEST_RRR( op "ls" s "	r9,  r",9, VAL1,", r",14,val, ", lsr r",7, 4,"")\
-	TEST_RRR( op "ge" s "	r10, r",11,VAL1,", r",14,val, ", asr r",7, 5,"")\
-	TEST_RRR( op "lt" s "	r11, r",11,VAL1,", r",14,N(val),", asr r",7, 6,"")\
-	TEST_RR(  op "gt" s "	r12, r13"       ", r",14,val, ", ror r",14,7,"")\
-	TEST_RR(  op "le" s "	r14, r",0, val, ", r13"       ", lsl r",14,8,"")\
-	TEST_R(   op "eq" s "	r0,  r",11,VAL1,", #0xf5")			\
-	TEST_R(   op "ne" s "	r11, r",0, VAL1,", #0xf5000000")		\
+	TEST_RR(  op s "eq	r0,  r",1, VAL1,", r",2, val, "")		\
+	TEST_RR(  op s "ne	r1,  r",1, VAL1,", r",2, val, ", lsl #3")	\
+	TEST_RR(  op s "cs	r2,  r",3, VAL1,", r",2, val, ", lsr #4")	\
+	TEST_RR(  op s "cc	r3,  r",3, VAL1,", r",2, val, ", asr #5")	\
+	TEST_RR(  op s "mi	r4,  r",5, VAL1,", r",2, N(val),", asr #6")	\
+	TEST_RR(  op s "pl	r5,  r",5, VAL1,", r",2, val, ", ror #7")	\
+	TEST_RR(  op s "vs	r6,  r",7, VAL1,", r",2, val, ", rrx")		\
+	TEST_R(   op s "vc	r6,  r",7, VAL1,", pc, lsl #3")			\
+	TEST_R(   op s "vc	r6,  r",7, VAL1,", sp, lsr #4")			\
+	TEST_R(   op s "vc	r6,  pc, r",7, VAL1,", asr #5")			\
+	TEST_R(   op s "vc	r6,  sp, r",7, VAL1,", ror #6")			\
+	TEST_RRR( op s "hi	r8,  r",9, VAL1,", r",14,val, ", lsl r",0, 3,"")\
+	TEST_RRR( op s "ls	r9,  r",9, VAL1,", r",14,val, ", lsr r",7, 4,"")\
+	TEST_RRR( op s "ge	r10, r",11,VAL1,", r",14,val, ", asr r",7, 5,"")\
+	TEST_RRR( op s "lt	r11, r",11,VAL1,", r",14,N(val),", asr r",7, 6,"")\
+	TEST_RR(  op s "gt	r12, r13"       ", r",14,val, ", ror r",14,7,"")\
+	TEST_RR(  op s "le	r14, r",0, val, ", r13"       ", lsl r",14,8,"")\
+	TEST_R(   op s "eq	r0,  r",11,VAL1,", #0xf5")			\
+	TEST_R(   op s "ne	r11, r",0, VAL1,", #0xf5000000")		\
 	TEST_R(   op s "	r7,  r",8, VAL2,", #0x000af000")		\
 	TEST(     op s "	r4,  pc"        ", #0x00005a00")
 
@@ -104,23 +104,23 @@ void kprobe_arm_test_cases(void)
 	TEST_R(   op "	r",8, VAL2,", #0x000af000")
 
 #define _DATA_PROCESSING_DM(op,s,val)					\
-	TEST_R(   op "eq" s "	r0,  r",1, val, "")			\
-	TEST_R(   op "ne" s "	r1,  r",1, val, ", lsl #3")		\
-	TEST_R(   op "cs" s "	r2,  r",3, val, ", lsr #4")		\
-	TEST_R(   op "cc" s "	r3,  r",3, val, ", asr #5")		\
-	TEST_R(   op "mi" s "	r4,  r",5, N(val),", asr #6")		\
-	TEST_R(   op "pl" s "	r5,  r",5, val, ", ror #7")		\
-	TEST_R(   op "vs" s "	r6,  r",10,val, ", rrx")		\
-	TEST(     op "vs" s "	r7,  pc, lsl #3")			\
-	TEST(     op "vs" s "	r7,  sp, lsr #4")			\
-	TEST_RR(  op "vc" s "	r8,  r",7, val, ", lsl r",0, 3,"")	\
-	TEST_RR(  op "hi" s "	r9,  r",9, val, ", lsr r",7, 4,"")	\
-	TEST_RR(  op "ls" s "	r10, r",9, val, ", asr r",7, 5,"")	\
-	TEST_RR(  op "ge" s "	r11, r",11,N(val),", asr r",7, 6,"")	\
-	TEST_RR(  op "lt" s "	r12, r",11,val, ", ror r",14,7,"")	\
-	TEST_R(   op "gt" s "	r14, r13"       ", lsl r",14,8,"")	\
-	TEST(     op "eq" s "	r0,  #0xf5")				\
-	TEST(     op "ne" s "	r11, #0xf5000000")			\
+	TEST_R(   op s "eq	r0,  r",1, val, "")			\
+	TEST_R(   op s "ne	r1,  r",1, val, ", lsl #3")		\
+	TEST_R(   op s "cs	r2,  r",3, val, ", lsr #4")		\
+	TEST_R(   op s "cc	r3,  r",3, val, ", asr #5")		\
+	TEST_R(   op s "mi	r4,  r",5, N(val),", asr #6")		\
+	TEST_R(   op s "pl	r5,  r",5, val, ", ror #7")		\
+	TEST_R(   op s "vs	r6,  r",10,val, ", rrx")		\
+	TEST(     op s "vs	r7,  pc, lsl #3")			\
+	TEST(     op s "vs	r7,  sp, lsr #4")			\
+	TEST_RR(  op s "vc	r8,  r",7, val, ", lsl r",0, 3,"")	\
+	TEST_RR(  op s "hi	r9,  r",9, val, ", lsr r",7, 4,"")	\
+	TEST_RR(  op s "ls	r10, r",9, val, ", asr r",7, 5,"")	\
+	TEST_RR(  op s "ge	r11, r",11,N(val),", asr r",7, 6,"")	\
+	TEST_RR(  op s "lt	r12, r",11,val, ", ror r",14,7,"")	\
+	TEST_R(   op s "gt	r14, r13"       ", lsl r",14,8,"")	\
+	TEST(     op s "eq	r0,  #0xf5")				\
+	TEST(     op s "ne	r11, #0xf5000000")			\
 	TEST(     op s "	r7,  #0x000af000")			\
 	TEST(     op s "	r4,  #0x00005a00")
 
@@ -352,7 +352,7 @@ void kprobe_arm_test_cases(void)
 	TEST_UNSUPPORTED(__inst_arm(0xe000029f) " @ mul r0, pc, r2")
 	TEST_UNSUPPORTED(__inst_arm(0xe0000f91) " @ mul r0, r1, pc")
 	TEST_RR(    "muls	r0, r",1, VAL1,", r",2, VAL2,"")
-	TEST_RR(    "mullss	r7, r",8, VAL2,", r",9, VAL2,"")
+	TEST_RR(    "mulsls	r7, r",8, VAL2,", r",9, VAL2,"")
 	TEST_R(     "muls	lr, r",4, VAL3,", r13")
 	TEST_UNSUPPORTED(__inst_arm(0xe01f0291) " @ muls pc, r1, r2")
 
@@ -361,7 +361,7 @@ void kprobe_arm_test_cases(void)
 	TEST_RR(     "mla	lr, r",1, VAL2,", r",2, VAL3,", r13")
 	TEST_UNSUPPORTED(__inst_arm(0xe02f3291) " @ mla pc, r1, r2, r3")
 	TEST_RRR(    "mlas	r0, r",1, VAL1,", r",2, VAL2,", r",3,  VAL3,"")
-	TEST_RRR(    "mlahis	r7, r",8, VAL3,", r",9, VAL1,", r",10, VAL2,"")
+	TEST_RRR(    "mlashi	r7, r",8, VAL3,", r",9, VAL1,", r",10, VAL2,"")
 	TEST_RR(     "mlas	lr, r",1, VAL2,", r",2, VAL3,", r13")
 	TEST_UNSUPPORTED(__inst_arm(0xe03f3291) " @ mlas pc, r1, r2, r3")
 
@@ -394,7 +394,7 @@ void kprobe_arm_test_cases(void)
 	TEST_UNSUPPORTED(__inst_arm(0xe081f392) " @ umull pc, r1, r2, r3")
 	TEST_UNSUPPORTED(__inst_arm(0xe08f1392) " @ umull r1, pc, r2, r3")
 	TEST_RR(  "umulls	r0, r1, r",2, VAL1,", r",3, VAL2,"")
-	TEST_RR(  "umulllss	r7, r8, r",9, VAL2,", r",10, VAL1,"")
+	TEST_RR(  "umullsls	r7, r8, r",9, VAL2,", r",10, VAL1,"")
 	TEST_R(   "umulls	lr, r12, r",11,VAL3,", r13")
 	TEST_UNSUPPORTED(__inst_arm(0xe091f392) " @ umulls pc, r1, r2, r3")
 	TEST_UNSUPPORTED(__inst_arm(0xe09f1392) " @ umulls r1, pc, r2, r3")
@@ -405,7 +405,7 @@ void kprobe_arm_test_cases(void)
 	TEST_UNSUPPORTED(__inst_arm(0xe0af1392) " @ umlal pc, r1, r2, r3")
 	TEST_UNSUPPORTED(__inst_arm(0xe0a1f392) " @ umlal r1, pc, r2, r3")
 	TEST_RRRR(  "umlals	r",0, VAL1,", r",1, VAL2,", r",2, VAL3,", r",3, VAL4)
-	TEST_RRRR(  "umlalles	r",8, VAL4,", r",9, VAL1,", r",10,VAL2,", r",11,VAL3)
+	TEST_RRRR(  "umlalsle	r",8, VAL4,", r",9, VAL1,", r",10,VAL2,", r",11,VAL3)
 	TEST_RRR(   "umlals	r",14,VAL3,", r",7, VAL4,", r",5, VAL1,", r13")
 	TEST_UNSUPPORTED(__inst_arm(0xe0bf1392) " @ umlals pc, r1, r2, r3")
 	TEST_UNSUPPORTED(__inst_arm(0xe0b1f392) " @ umlals r1, pc, r2, r3")
@@ -416,7 +416,7 @@ void kprobe_arm_test_cases(void)
 	TEST_UNSUPPORTED(__inst_arm(0xe0c1f392) " @ smull pc, r1, r2, r3")
 	TEST_UNSUPPORTED(__inst_arm(0xe0cf1392) " @ smull r1, pc, r2, r3")
 	TEST_RR(  "smulls	r0, r1, r",2, VAL1,", r",3, VAL2,"")
-	TEST_RR(  "smulllss	r7, r8, r",9, VAL2,", r",10, VAL1,"")
+	TEST_RR(  "smullsls	r7, r8, r",9, VAL2,", r",10, VAL1,"")
 	TEST_R(   "smulls	lr, r12, r",11,VAL3,", r13")
 	TEST_UNSUPPORTED(__inst_arm(0xe0d1f392) " @ smulls pc, r1, r2, r3")
 	TEST_UNSUPPORTED(__inst_arm(0xe0df1392) " @ smulls r1, pc, r2, r3")
@@ -427,7 +427,7 @@ void kprobe_arm_test_cases(void)
 	TEST_UNSUPPORTED(__inst_arm(0xe0ef1392) " @ smlal pc, r1, r2, r3")
 	TEST_UNSUPPORTED(__inst_arm(0xe0e1f392) " @ smlal r1, pc, r2, r3")
 	TEST_RRRR(  "smlals	r",0, VAL1,", r",1, VAL2,", r",2, VAL3,", r",3, VAL4)
-	TEST_RRRR(  "smlalles	r",8, VAL4,", r",9, VAL1,", r",10,VAL2,", r",11,VAL3)
+	TEST_RRRR(  "smlalsle	r",8, VAL4,", r",9, VAL1,", r",10,VAL2,", r",11,VAL3)
 	TEST_RRR(   "smlals	r",14,VAL3,", r",7, VAL4,", r",5, VAL1,", r13")
 	TEST_UNSUPPORTED(__inst_arm(0xe0ff1392) " @ smlals pc, r1, r2, r3")
 	TEST_UNSUPPORTED(__inst_arm(0xe0f0f392) " @ smlals r0, pc, r2, r3")
@@ -450,7 +450,7 @@ void kprobe_arm_test_cases(void)
 	TEST_UNSUPPORTED(__inst_arm(0xe10f0091) " @ swp r0, r1, [pc]")
 #if __LINUX_ARM_ARCH__ < 6
 	TEST_RP("swpb	lr, r",7,VAL2,", [r",8,0,"]")
-	TEST_R( "swpvsb	r0, r",1,VAL1,", [sp]")
+	TEST_R( "swpbvs	r0, r",1,VAL1,", [sp]")
 #else
 	TEST_UNSUPPORTED(__inst_arm(0xe148e097) " @ swpb	lr, r7, [r8]")
 	TEST_UNSUPPORTED(__inst_arm(0x614d0091) " @ swpvsb	r0, r1, [sp]")
@@ -477,11 +477,11 @@ void kprobe_arm_test_cases(void)
 	TEST_GROUP("Extra load/store instructions")
 
 	TEST_RPR(  "strh	r",0, VAL1,", [r",1, 48,", -r",2, 24,"]")
-	TEST_RPR(  "streqh	r",14,VAL2,", [r",11,0, ", r",12, 48,"]")
-	TEST_UNSUPPORTED(  "streqh	r14, [r13, r12]")
-	TEST_UNSUPPORTED(  "streqh	r14, [r12, r13]")
+	TEST_RPR(  "strheq	r",14,VAL2,", [r",11,0, ", r",12, 48,"]")
+	TEST_UNSUPPORTED(  "strheq	r14, [r13, r12]")
+	TEST_UNSUPPORTED(  "strheq	r14, [r12, r13]")
 	TEST_RPR(  "strh	r",1, VAL1,", [r",2, 24,", r",3,  48,"]!")
-	TEST_RPR(  "strneh	r",12,VAL2,", [r",11,48,", -r",10,24,"]!")
+	TEST_RPR(  "strhne	r",12,VAL2,", [r",11,48,", -r",10,24,"]!")
 	TEST_RPR(  "strh	r",2, VAL1,", [r",3, 24,"], r",4, 48,"")
 	TEST_RPR(  "strh	r",10,VAL2,", [r",9, 48,"], -r",11,24,"")
 	TEST_UNSUPPORTED(__inst_arm(0xe1afc0ba) "	@ strh r12, [pc, r10]!")
@@ -489,9 +489,9 @@ void kprobe_arm_test_cases(void)
 	TEST_UNSUPPORTED(__inst_arm(0xe089a0bf) "	@ strh r10, [r9], pc")
 
 	TEST_PR(   "ldrh	r0, [r",0,  48,", -r",2, 24,"]")
-	TEST_PR(   "ldrcsh	r14, [r",13,0, ", r",12, 48,"]")
+	TEST_PR(   "ldrhcs	r14, [r",13,0, ", r",12, 48,"]")
 	TEST_PR(   "ldrh	r1, [r",2,  24,", r",3,  48,"]!")
-	TEST_PR(   "ldrcch	r12, [r",11,48,", -r",10,24,"]!")
+	TEST_PR(   "ldrhcc	r12, [r",11,48,", -r",10,24,"]!")
 	TEST_PR(   "ldrh	r2, [r",3,  24,"], r",4, 48,"")
 	TEST_PR(   "ldrh	r10, [r",9, 48,"], -r",11,24,"")
 	TEST_UNSUPPORTED(__inst_arm(0xe1bfc0ba) "	@ ldrh r12, [pc, r10]!")
@@ -499,9 +499,9 @@ void kprobe_arm_test_cases(void)
 	TEST_UNSUPPORTED(__inst_arm(0xe099a0bf) "	@ ldrh r10, [r9], pc")
 
 	TEST_RP(   "strh	r",0, VAL1,", [r",1, 24,", #-2]")
-	TEST_RP(   "strmih	r",14,VAL2,", [r",13,0, ", #2]")
+	TEST_RP(   "strhmi	r",14,VAL2,", [r",13,0, ", #2]")
 	TEST_RP(   "strh	r",1, VAL1,", [r",2, 24,", #4]!")
-	TEST_RP(   "strplh	r",12,VAL2,", [r",11,24,", #-4]!")
+	TEST_RP(   "strhpl	r",12,VAL2,", [r",11,24,", #-4]!")
 	TEST_RP(   "strh	r",2, VAL1,", [r",3, 24,"], #48")
 	TEST_RP(   "strh	r",10,VAL2,", [r",9, 64,"], #-48")
 	TEST_RP(   "strh	r",3, VAL1,", [r",13,TEST_MEMORY_SIZE,", #-"__stringify(MAX_STACK_SIZE)"]!")
@@ -511,9 +511,9 @@ void kprobe_arm_test_cases(void)
 	TEST_UNSUPPORTED(__inst_arm(0xe0c9f3b0) "	@ strh pc, [r9], #48")
 
 	TEST_P(	   "ldrh	r0, [r",0,  24,", #-2]")
-	TEST_P(	   "ldrvsh	r14, [r",13,0, ", #2]")
+	TEST_P(	   "ldrhvs	r14, [r",13,0, ", #2]")
 	TEST_P(	   "ldrh	r1, [r",2,  24,", #4]!")
-	TEST_P(	   "ldrvch	r12, [r",11,24,", #-4]!")
+	TEST_P(	   "ldrhvc	r12, [r",11,24,", #-4]!")
 	TEST_P(	   "ldrh	r2, [r",3,  24,"], #48")
 	TEST_P(	   "ldrh	r10, [r",9, 64,"], #-48")
 	TEST(      "ldrh	r0, [pc, #0]")
@@ -521,18 +521,18 @@ void kprobe_arm_test_cases(void)
 	TEST_UNSUPPORTED(__inst_arm(0xe0d9f3b0) "	@ ldrh pc, [r9], #48")
 
 	TEST_PR(   "ldrsb	r0, [r",0,  48,", -r",2, 24,"]")
-	TEST_PR(   "ldrhisb	r14, [r",13,0,", r",12,  48,"]")
+	TEST_PR(   "ldrsbhi	r14, [r",13,0,", r",12,  48,"]")
 	TEST_PR(   "ldrsb	r1, [r",2,  24,", r",3,  48,"]!")
-	TEST_PR(   "ldrlssb	r12, [r",11,48,", -r",10,24,"]!")
+	TEST_PR(   "ldrsbls	r12, [r",11,48,", -r",10,24,"]!")
 	TEST_PR(   "ldrsb	r2, [r",3,  24,"], r",4, 48,"")
 	TEST_PR(   "ldrsb	r10, [r",9, 48,"], -r",11,24,"")
 	TEST_UNSUPPORTED(__inst_arm(0xe1bfc0da) "	@ ldrsb r12, [pc, r10]!")
 	TEST_UNSUPPORTED(__inst_arm(0xe099f0db) "	@ ldrsb pc, [r9], r11")
 
 	TEST_P(	   "ldrsb	r0, [r",0,  24,", #-1]")
-	TEST_P(	   "ldrgesb	r14, [r",13,0, ", #1]")
+	TEST_P(	   "ldrsbge	r14, [r",13,0, ", #1]")
 	TEST_P(	   "ldrsb	r1, [r",2,  24,", #4]!")
-	TEST_P(	   "ldrltsb	r12, [r",11,24,", #-4]!")
+	TEST_P(	   "ldrsblt	r12, [r",11,24,", #-4]!")
 	TEST_P(	   "ldrsb	r2, [r",3,  24,"], #48")
 	TEST_P(	   "ldrsb	r10, [r",9, 64,"], #-48")
 	TEST(      "ldrsb	r0, [pc, #0]")
@@ -540,18 +540,18 @@ void kprobe_arm_test_cases(void)
 	TEST_UNSUPPORTED(__inst_arm(0xe0d9f3d0) "	@ ldrsb pc, [r9], #48")
 
 	TEST_PR(   "ldrsh	r0, [r",0,  48,", -r",2, 24,"]")
-	TEST_PR(   "ldrgtsh	r14, [r",13,0, ", r",12, 48,"]")
+	TEST_PR(   "ldrshgt	r14, [r",13,0, ", r",12, 48,"]")
 	TEST_PR(   "ldrsh	r1, [r",2,  24,", r",3,  48,"]!")
-	TEST_PR(   "ldrlesh	r12, [r",11,48,", -r",10,24,"]!")
+	TEST_PR(   "ldrshle	r12, [r",11,48,", -r",10,24,"]!")
 	TEST_PR(   "ldrsh	r2, [r",3,  24,"], r",4, 48,"")
 	TEST_PR(   "ldrsh	r10, [r",9, 48,"], -r",11,24,"")
 	TEST_UNSUPPORTED(__inst_arm(0xe1bfc0fa) "	@ ldrsh r12, [pc, r10]!")
 	TEST_UNSUPPORTED(__inst_arm(0xe099f0fb) "	@ ldrsh pc, [r9], r11")
 
 	TEST_P(	   "ldrsh	r0, [r",0,  24,", #-1]")
-	TEST_P(	   "ldreqsh	r14, [r",13,0 ,", #1]")
+	TEST_P(	   "ldrsheq	r14, [r",13,0 ,", #1]")
 	TEST_P(	   "ldrsh	r1, [r",2,  24,", #4]!")
-	TEST_P(	   "ldrnesh	r12, [r",11,24,", #-4]!")
+	TEST_P(	   "ldrshne	r12, [r",11,24,", #-4]!")
 	TEST_P(	   "ldrsh	r2, [r",3,  24,"], #48")
 	TEST_P(	   "ldrsh	r10, [r",9, 64,"], #-48")
 	TEST(      "ldrsh	r0, [pc, #0]")
@@ -571,30 +571,30 @@ void kprobe_arm_test_cases(void)
 
 #if __LINUX_ARM_ARCH__ >= 5
 	TEST_RPR(  "strd	r",0, VAL1,", [r",1, 48,", -r",2,24,"]")
-	TEST_RPR(  "strccd	r",8, VAL2,", [r",11,0, ", r",12,48,"]")
-	TEST_UNSUPPORTED(  "strccd r8, [r13, r12]")
-	TEST_UNSUPPORTED(  "strccd r8, [r12, r13]")
+	TEST_RPR(  "strdcc	r",8, VAL2,", [r",11,0, ", r",12,48,"]")
+	TEST_UNSUPPORTED(  "strdcc r8, [r13, r12]")
+	TEST_UNSUPPORTED(  "strdcc r8, [r12, r13]")
 	TEST_RPR(  "strd	r",4, VAL1,", [r",2, 24,", r",3, 48,"]!")
-	TEST_RPR(  "strcsd	r",12,VAL2,", [r",11,48,", -r",10,24,"]!")
-	TEST_RPR(  "strd	r",2, VAL1,", [r",5, 24,"], r",4,48,"")
-	TEST_RPR(  "strd	r",10,VAL2,", [r",9, 48,"], -r",7,24,"")
+	TEST_RPR(  "strdcs	r",12,VAL2,", r13, [r",11,48,", -r",10,24,"]!")
+	TEST_RPR(  "strd	r",2, VAL1,", r3, [r",5, 24,"], r",4,48,"")
+	TEST_RPR(  "strd	r",10,VAL2,", r11, [r",9, 48,"], -r",7,24,"")
 	TEST_UNSUPPORTED(__inst_arm(0xe1afc0fa) "	@ strd r12, [pc, r10]!")
 
 	TEST_PR(   "ldrd	r0, [r",0, 48,", -r",2,24,"]")
-	TEST_PR(   "ldrmid	r8, [r",13,0, ", r",12,48,"]")
+	TEST_PR(   "ldrdmi	r8, [r",13,0, ", r",12,48,"]")
 	TEST_PR(   "ldrd	r4, [r",2, 24,", r",3, 48,"]!")
-	TEST_PR(   "ldrpld	r6, [r",11,48,", -r",10,24,"]!")
-	TEST_PR(   "ldrd	r2, [r",5, 24,"], r",4,48,"")
-	TEST_PR(   "ldrd	r10, [r",9,48,"], -r",7,24,"")
+	TEST_PR(   "ldrdpl	r6, [r",11,48,", -r",10,24,"]!")
+	TEST_PR(   "ldrd	r2, r3, [r",5, 24,"], r",4,48,"")
+	TEST_PR(   "ldrd	r10, r11, [r",9,48,"], -r",7,24,"")
 	TEST_UNSUPPORTED(__inst_arm(0xe1afc0da) "	@ ldrd r12, [pc, r10]!")
 	TEST_UNSUPPORTED(__inst_arm(0xe089f0db) "	@ ldrd pc, [r9], r11")
 	TEST_UNSUPPORTED(__inst_arm(0xe089e0db) "	@ ldrd lr, [r9], r11")
 	TEST_UNSUPPORTED(__inst_arm(0xe089c0df) "	@ ldrd r12, [r9], pc")
 
 	TEST_RP(   "strd	r",0, VAL1,", [r",1, 24,", #-8]")
-	TEST_RP(   "strvsd	r",8, VAL2,", [r",13,0, ", #8]")
+	TEST_RP(   "strdvs	r",8, VAL2,", [r",13,0, ", #8]")
 	TEST_RP(   "strd	r",4, VAL1,", [r",2, 24,", #16]!")
-	TEST_RP(   "strvcd	r",12,VAL2,", [r",11,24,", #-16]!")
+	TEST_RP(   "strdvc	r",12,VAL2,", r13, [r",11,24,", #-16]!")
 	TEST_RP(   "strd	r",2, VAL1,", [r",4, 24,"], #48")
 	TEST_RP(   "strd	r",10,VAL2,", [r",9, 64,"], #-48")
 	TEST_RP(   "strd	r",6, VAL1,", [r",13,TEST_MEMORY_SIZE,", #-"__stringify(MAX_STACK_SIZE)"]!")
@@ -603,9 +603,9 @@ void kprobe_arm_test_cases(void)
 	TEST_UNSUPPORTED(__inst_arm(0xe1efc3f0) "	@ strd r12, [pc, #48]!")
 
 	TEST_P(	   "ldrd	r0, [r",0, 24,", #-8]")
-	TEST_P(	   "ldrhid	r8, [r",13,0, ", #8]")
+	TEST_P(	   "ldrdhi	r8, [r",13,0, ", #8]")
 	TEST_P(	   "ldrd	r4, [r",2, 24,", #16]!")
-	TEST_P(	   "ldrlsd	r6, [r",11,24,", #-16]!")
+	TEST_P(	   "ldrdls	r6, [r",11,24,", #-16]!")
 	TEST_P(	   "ldrd	r2, [r",5, 24,"], #48")
 	TEST_P(	   "ldrd	r10, [r",9,6,"], #-48")
 	TEST_UNSUPPORTED(__inst_arm(0xe1efc3d0) "	@ ldrd r12, [pc, #48]!")
@@ -1084,63 +1084,63 @@ void kprobe_arm_test_cases(void)
 	TEST_GROUP("Branch, branch with link, and block data transfer")
 
 	TEST_P(   "stmda	r",0, 16*4,", {r0}")
-	TEST_P(   "stmeqda	r",4, 16*4,", {r0-r15}")
-	TEST_P(   "stmneda	r",8, 16*4,"!, {r8-r15}")
+	TEST_P(   "stmdaeq	r",4, 16*4,", {r0-r15}")
+	TEST_P(   "stmdane	r",8, 16*4,"!, {r8-r15}")
 	TEST_P(   "stmda	r",12,16*4,"!, {r1,r3,r5,r7,r8-r11,r14}")
 	TEST_P(   "stmda	r",13,0,   "!, {pc}")
 
 	TEST_P(   "ldmda	r",0, 16*4,", {r0}")
-	TEST_BF_P("ldmcsda	r",4, 15*4,", {r0-r15}")
-	TEST_BF_P("ldmccda	r",7, 15*4,"!, {r8-r15}")
+	TEST_BF_P("ldmdacs	r",4, 15*4,", {r0-r15}")
+	TEST_BF_P("ldmdacc	r",7, 15*4,"!, {r8-r15}")
 	TEST_P(   "ldmda	r",12,16*4,"!, {r1,r3,r5,r7,r8-r11,r14}")
 	TEST_BF_P("ldmda	r",14,15*4,"!, {pc}")
 
 	TEST_P(   "stmia	r",0, 16*4,", {r0}")
-	TEST_P(   "stmmiia	r",4, 16*4,", {r0-r15}")
-	TEST_P(   "stmplia	r",8, 16*4,"!, {r8-r15}")
+	TEST_P(   "stmiami	r",4, 16*4,", {r0-r15}")
+	TEST_P(   "stmiapl	r",8, 16*4,"!, {r8-r15}")
 	TEST_P(   "stmia	r",12,16*4,"!, {r1,r3,r5,r7,r8-r11,r14}")
 	TEST_P(   "stmia	r",14,0,   "!, {pc}")
 
 	TEST_P(   "ldmia	r",0, 16*4,", {r0}")
-	TEST_BF_P("ldmvsia	r",4, 0,   ", {r0-r15}")
-	TEST_BF_P("ldmvcia	r",7, 8*4, "!, {r8-r15}")
+	TEST_BF_P("ldmiavs	r",4, 0,   ", {r0-r15}")
+	TEST_BF_P("ldmiavc	r",7, 8*4, "!, {r8-r15}")
 	TEST_P(   "ldmia	r",12,16*4,"!, {r1,r3,r5,r7,r8-r11,r14}")
 	TEST_BF_P("ldmia	r",14,15*4,"!, {pc}")
 
 	TEST_P(   "stmdb	r",0, 16*4,", {r0}")
-	TEST_P(   "stmhidb	r",4, 16*4,", {r0-r15}")
-	TEST_P(   "stmlsdb	r",8, 16*4,"!, {r8-r15}")
+	TEST_P(   "stmdbhi	r",4, 16*4,", {r0-r15}")
+	TEST_P(   "stmdbls	r",8, 16*4,"!, {r8-r15}")
 	TEST_P(   "stmdb	r",12,16*4,"!, {r1,r3,r5,r7,r8-r11,r14}")
 	TEST_P(   "stmdb	r",13,4,   "!, {pc}")
 
 	TEST_P(   "ldmdb	r",0, 16*4,", {r0}")
-	TEST_BF_P("ldmgedb	r",4, 16*4,", {r0-r15}")
-	TEST_BF_P("ldmltdb	r",7, 16*4,"!, {r8-r15}")
+	TEST_BF_P("ldmdbge	r",4, 16*4,", {r0-r15}")
+	TEST_BF_P("ldmdblt	r",7, 16*4,"!, {r8-r15}")
 	TEST_P(   "ldmdb	r",12,16*4,"!, {r1,r3,r5,r7,r8-r11,r14}")
 	TEST_BF_P("ldmdb	r",14,16*4,"!, {pc}")
 
 	TEST_P(   "stmib	r",0, 16*4,", {r0}")
-	TEST_P(   "stmgtib	r",4, 16*4,", {r0-r15}")
-	TEST_P(   "stmleib	r",8, 16*4,"!, {r8-r15}")
+	TEST_P(   "stmibgt	r",4, 16*4,", {r0-r15}")
+	TEST_P(   "stmible	r",8, 16*4,"!, {r8-r15}")
 	TEST_P(   "stmib	r",12,16*4,"!, {r1,r3,r5,r7,r8-r11,r14}")
 	TEST_P(   "stmib	r",13,-4,  "!, {pc}")
 
 	TEST_P(   "ldmib	r",0, 16*4,", {r0}")
-	TEST_BF_P("ldmeqib	r",4, -4,", {r0-r15}")
-	TEST_BF_P("ldmneib	r",7, 7*4,"!, {r8-r15}")
+	TEST_BF_P("ldmibeq	r",4, -4,", {r0-r15}")
+	TEST_BF_P("ldmibne	r",7, 7*4,"!, {r8-r15}")
 	TEST_P(   "ldmib	r",12,16*4,"!, {r1,r3,r5,r7,r8-r11,r14}")
 	TEST_BF_P("ldmib	r",14,14*4,"!, {pc}")
 
 	TEST_P(   "stmdb	r",13,16*4,"!, {r3-r12,lr}")
-	TEST_P(	  "stmeqdb	r",13,16*4,"!, {r3-r12}")
-	TEST_P(   "stmnedb	r",2, 16*4,", {r3-r12,lr}")
+	TEST_P(	  "stmdbeq	r",13,16*4,"!, {r3-r12}")
+	TEST_P(   "stmdbne	r",2, 16*4,", {r3-r12,lr}")
 	TEST_P(   "stmdb	r",13,16*4,"!, {r2-r12,lr}")
 	TEST_P(   "stmdb	r",0, 16*4,", {r0-r12}")
 	TEST_P(   "stmdb	r",0, 16*4,", {r0-r12,lr}")
 
 	TEST_BF_P("ldmia	r",13,5*4, "!, {r3-r12,pc}")
-	TEST_P(	  "ldmccia	r",13,5*4, "!, {r3-r12}")
-	TEST_BF_P("ldmcsia	r",2, 5*4, "!, {r3-r12,pc}")
+	TEST_P(	  "ldmiacc	r",13,5*4, "!, {r3-r12}")
+	TEST_BF_P("ldmiacs	r",2, 5*4, "!, {r3-r12,pc}")
 	TEST_BF_P("ldmia	r",13,4*4, "!, {r2-r12,pc}")
 	TEST_P(   "ldmia	r",0, 16*4,", {r0-r12}")
 	TEST_P(   "ldmia	r",0, 16*4,", {r0-r12,lr}")
@@ -1174,80 +1174,80 @@ void kprobe_arm_test_cases(void)
 #define TEST_COPROCESSOR(code) TEST_UNSUPPORTED(code)
 
 #define COPROCESSOR_INSTRUCTIONS_ST_LD(two,cc)					\
-	TEST_COPROCESSOR("stc"two"	0, cr0, [r13, #4]")			\
-	TEST_COPROCESSOR("stc"two"	0, cr0, [r13, #-4]")			\
-	TEST_COPROCESSOR("stc"two"	0, cr0, [r13, #4]!")			\
-	TEST_COPROCESSOR("stc"two"	0, cr0, [r13, #-4]!")			\
-	TEST_COPROCESSOR("stc"two"	0, cr0, [r13], #4")			\
-	TEST_COPROCESSOR("stc"two"	0, cr0, [r13], #-4")			\
-	TEST_COPROCESSOR("stc"two"	0, cr0, [r13], {1}")			\
-	TEST_COPROCESSOR("stc"two"l	0, cr0, [r13, #4]")			\
-	TEST_COPROCESSOR("stc"two"l	0, cr0, [r13, #-4]")			\
-	TEST_COPROCESSOR("stc"two"l	0, cr0, [r13, #4]!")			\
-	TEST_COPROCESSOR("stc"two"l	0, cr0, [r13, #-4]!")			\
-	TEST_COPROCESSOR("stc"two"l	0, cr0, [r13], #4")			\
-	TEST_COPROCESSOR("stc"two"l	0, cr0, [r13], #-4")			\
-	TEST_COPROCESSOR("stc"two"l	0, cr0, [r13], {1}")			\
-	TEST_COPROCESSOR("ldc"two"	0, cr0, [r13, #4]")			\
-	TEST_COPROCESSOR("ldc"two"	0, cr0, [r13, #-4]")			\
-	TEST_COPROCESSOR("ldc"two"	0, cr0, [r13, #4]!")			\
-	TEST_COPROCESSOR("ldc"two"	0, cr0, [r13, #-4]!")			\
-	TEST_COPROCESSOR("ldc"two"	0, cr0, [r13], #4")			\
-	TEST_COPROCESSOR("ldc"two"	0, cr0, [r13], #-4")			\
-	TEST_COPROCESSOR("ldc"two"	0, cr0, [r13], {1}")			\
-	TEST_COPROCESSOR("ldc"two"l	0, cr0, [r13, #4]")			\
-	TEST_COPROCESSOR("ldc"two"l	0, cr0, [r13, #-4]")			\
-	TEST_COPROCESSOR("ldc"two"l	0, cr0, [r13, #4]!")			\
-	TEST_COPROCESSOR("ldc"two"l	0, cr0, [r13, #-4]!")			\
-	TEST_COPROCESSOR("ldc"two"l	0, cr0, [r13], #4")			\
-	TEST_COPROCESSOR("ldc"two"l	0, cr0, [r13], #-4")			\
-	TEST_COPROCESSOR("ldc"two"l	0, cr0, [r13], {1}")			\
+	TEST_COPROCESSOR("stc"two"	p0, cr0, [r13, #4]")			\
+	TEST_COPROCESSOR("stc"two"	p0, cr0, [r13, #-4]")			\
+	TEST_COPROCESSOR("stc"two"	p0, cr0, [r13, #4]!")			\
+	TEST_COPROCESSOR("stc"two"	p0, cr0, [r13, #-4]!")			\
+	TEST_COPROCESSOR("stc"two"	p0, cr0, [r13], #4")			\
+	TEST_COPROCESSOR("stc"two"	p0, cr0, [r13], #-4")			\
+	TEST_COPROCESSOR("stc"two"	p0, cr0, [r13], {1}")			\
+	TEST_COPROCESSOR("stc"two"l	p0, cr0, [r13, #4]")			\
+	TEST_COPROCESSOR("stc"two"l	p0, cr0, [r13, #-4]")			\
+	TEST_COPROCESSOR("stc"two"l	p0, cr0, [r13, #4]!")			\
+	TEST_COPROCESSOR("stc"two"l	p0, cr0, [r13, #-4]!")			\
+	TEST_COPROCESSOR("stc"two"l	p0, cr0, [r13], #4")			\
+	TEST_COPROCESSOR("stc"two"l	p0, cr0, [r13], #-4")			\
+	TEST_COPROCESSOR("stc"two"l	p0, cr0, [r13], {1}")			\
+	TEST_COPROCESSOR("ldc"two"	p0, cr0, [r13, #4]")			\
+	TEST_COPROCESSOR("ldc"two"	p0, cr0, [r13, #-4]")			\
+	TEST_COPROCESSOR("ldc"two"	p0, cr0, [r13, #4]!")			\
+	TEST_COPROCESSOR("ldc"two"	p0, cr0, [r13, #-4]!")			\
+	TEST_COPROCESSOR("ldc"two"	p0, cr0, [r13], #4")			\
+	TEST_COPROCESSOR("ldc"two"	p0, cr0, [r13], #-4")			\
+	TEST_COPROCESSOR("ldc"two"	p0, cr0, [r13], {1}")			\
+	TEST_COPROCESSOR("ldc"two"l	p0, cr0, [r13, #4]")			\
+	TEST_COPROCESSOR("ldc"two"l	p0, cr0, [r13, #-4]")			\
+	TEST_COPROCESSOR("ldc"two"l	p0, cr0, [r13, #4]!")			\
+	TEST_COPROCESSOR("ldc"two"l	p0, cr0, [r13, #-4]!")			\
+	TEST_COPROCESSOR("ldc"two"l	p0, cr0, [r13], #4")			\
+	TEST_COPROCESSOR("ldc"two"l	p0, cr0, [r13], #-4")			\
+	TEST_COPROCESSOR("ldc"two"l	p0, cr0, [r13], {1}")			\
 										\
-	TEST_COPROCESSOR( "stc"two"	0, cr0, [r15, #4]")			\
-	TEST_COPROCESSOR( "stc"two"	0, cr0, [r15, #-4]")			\
+	TEST_COPROCESSOR( "stc"two"	p0, cr0, [r15, #4]")			\
+	TEST_COPROCESSOR( "stc"two"	p0, cr0, [r15, #-4]")			\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##daf0001) "	@ stc"two"	0, cr0, [r15, #4]!")	\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##d2f0001) "	@ stc"two"	0, cr0, [r15, #-4]!")	\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##caf0001) "	@ stc"two"	0, cr0, [r15], #4")	\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##c2f0001) "	@ stc"two"	0, cr0, [r15], #-4")	\
-	TEST_COPROCESSOR( "stc"two"	0, cr0, [r15], {1}")			\
-	TEST_COPROCESSOR( "stc"two"l	0, cr0, [r15, #4]")			\
-	TEST_COPROCESSOR( "stc"two"l	0, cr0, [r15, #-4]")			\
+	TEST_COPROCESSOR( "stc"two"	p0, cr0, [r15], {1}")			\
+	TEST_COPROCESSOR( "stc"two"l	p0, cr0, [r15, #4]")			\
+	TEST_COPROCESSOR( "stc"two"l	p0, cr0, [r15, #-4]")			\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##def0001) "	@ stc"two"l	0, cr0, [r15, #4]!")	\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##d6f0001) "	@ stc"two"l	0, cr0, [r15, #-4]!")	\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##cef0001) "	@ stc"two"l	0, cr0, [r15], #4")	\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##c6f0001) "	@ stc"two"l	0, cr0, [r15], #-4")	\
-	TEST_COPROCESSOR( "stc"two"l	0, cr0, [r15], {1}")			\
-	TEST_COPROCESSOR( "ldc"two"	0, cr0, [r15, #4]")			\
-	TEST_COPROCESSOR( "ldc"two"	0, cr0, [r15, #-4]")			\
+	TEST_COPROCESSOR( "stc"two"l	p0, cr0, [r15], {1}")			\
+	TEST_COPROCESSOR( "ldc"two"	p0, cr0, [r15, #4]")			\
+	TEST_COPROCESSOR( "ldc"two"	p0, cr0, [r15, #-4]")			\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##dbf0001) "	@ ldc"two"	0, cr0, [r15, #4]!")	\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##d3f0001) "	@ ldc"two"	0, cr0, [r15, #-4]!")	\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##cbf0001) "	@ ldc"two"	0, cr0, [r15], #4")	\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##c3f0001) "	@ ldc"two"	0, cr0, [r15], #-4")	\
-	TEST_COPROCESSOR( "ldc"two"	0, cr0, [r15], {1}")			\
-	TEST_COPROCESSOR( "ldc"two"l	0, cr0, [r15, #4]")			\
-	TEST_COPROCESSOR( "ldc"two"l	0, cr0, [r15, #-4]")			\
+	TEST_COPROCESSOR( "ldc"two"	p0, cr0, [r15], {1}")			\
+	TEST_COPROCESSOR( "ldc"two"l	p0, cr0, [r15, #4]")			\
+	TEST_COPROCESSOR( "ldc"two"l	p0, cr0, [r15, #-4]")			\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##dff0001) "	@ ldc"two"l	0, cr0, [r15, #4]!")	\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##d7f0001) "	@ ldc"two"l	0, cr0, [r15, #-4]!")	\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##cff0001) "	@ ldc"two"l	0, cr0, [r15], #4")	\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##c7f0001) "	@ ldc"two"l	0, cr0, [r15], #-4")	\
-	TEST_COPROCESSOR( "ldc"two"l	0, cr0, [r15], {1}")
+	TEST_COPROCESSOR( "ldc"two"l	p0, cr0, [r15], {1}")
 
 #define COPROCESSOR_INSTRUCTIONS_MC_MR(two,cc)					\
 										\
-	TEST_COPROCESSOR( "mcrr"two"	0, 15, r0, r14, cr0")			\
-	TEST_COPROCESSOR( "mcrr"two"	15, 0, r14, r0, cr15")			\
+	TEST_COPROCESSOR( "mcrr"two"	p0, 15, r0, r14, cr0")			\
+	TEST_COPROCESSOR( "mcrr"two"	p15, 0, r14, r0, cr15")			\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##c4f00f0) "	@ mcrr"two"	0, 15, r0, r15, cr0")	\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##c40ff0f) "	@ mcrr"two"	15, 0, r15, r0, cr15")	\
-	TEST_COPROCESSOR( "mrrc"two"	0, 15, r0, r14, cr0")			\
-	TEST_COPROCESSOR( "mrrc"two"	15, 0, r14, r0, cr15")			\
+	TEST_COPROCESSOR( "mrrc"two"	p0, 15, r0, r14, cr0")			\
+	TEST_COPROCESSOR( "mrrc"two"	p15, 0, r14, r0, cr15")			\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##c5f00f0) "	@ mrrc"two"	0, 15, r0, r15, cr0")	\
 	TEST_UNSUPPORTED(__inst_arm(0x##cc##c50ff0f) "	@ mrrc"two"	15, 0, r15, r0, cr15")	\
-	TEST_COPROCESSOR( "cdp"two"	15, 15, cr15, cr15, cr15, 7")		\
-	TEST_COPROCESSOR( "cdp"two"	0, 0, cr0, cr0, cr0, 0")		\
-	TEST_COPROCESSOR( "mcr"two"	15, 7, r15, cr15, cr15, 7")		\
-	TEST_COPROCESSOR( "mcr"two"	0, 0, r0, cr0, cr0, 0")			\
-	TEST_COPROCESSOR( "mrc"two"	15, 7, r15, cr15, cr15, 7")		\
-	TEST_COPROCESSOR( "mrc"two"	0, 0, r0, cr0, cr0, 0")
+	TEST_COPROCESSOR( "cdp"two"	p15, 15, cr15, cr15, cr15, 7")		\
+	TEST_COPROCESSOR( "cdp"two"	p0, 0, cr0, cr0, cr0, 0")		\
+	TEST_COPROCESSOR( "mcr"two"	p15, 7, r15, cr15, cr15, 7")		\
+	TEST_COPROCESSOR( "mcr"two"	p0, 0, r0, cr0, cr0, 0")		\
+	TEST_COPROCESSOR( "mrc"two"	p15, 7, r14, cr15, cr15, 7")		\
+	TEST_COPROCESSOR( "mrc"two"	p0, 0, r0, cr0, cr0, 0")
 
 	COPROCESSOR_INSTRUCTIONS_ST_LD("",e)
 #if __LINUX_ARM_ARCH__ >= 5
diff --git a/arch/arm/probes/kprobes/test-thumb.c b/arch/arm/probes/kprobes/test-thumb.c
index 456c181a7bfe..63277c1006b9 100644
--- a/arch/arm/probes/kprobes/test-thumb.c
+++ b/arch/arm/probes/kprobes/test-thumb.c
@@ -441,21 +441,21 @@ void kprobe_thumb32_test_cases(void)
 		"3:	mvn	r0, r0	\n\t"
 		"2:	nop		\n\t")
 
-	TEST_RX("tbh	[pc, r",7, (9f-(1f+4))>>1,"]",
+	TEST_RX("tbh	[pc, r",7, (9f-(1f+4))>>1,", lsl #1]",
 		"9:			\n\t"
 		".short	(2f-1b-4)>>1	\n\t"
 		".short	(3f-1b-4)>>1	\n\t"
 		"3:	mvn	r0, r0	\n\t"
 		"2:	nop		\n\t")
 
-	TEST_RX("tbh	[pc, r",12, ((9f-(1f+4))>>1)+1,"]",
+	TEST_RX("tbh	[pc, r",12, ((9f-(1f+4))>>1)+1,", lsl #1]",
 		"9:			\n\t"
 		".short	(2f-1b-4)>>1	\n\t"
 		".short	(3f-1b-4)>>1	\n\t"
 		"3:	mvn	r0, r0	\n\t"
 		"2:	nop		\n\t")
 
-	TEST_RRX("tbh	[r",1,9f, ", r",14,1,"]",
+	TEST_RRX("tbh	[r",1,9f, ", r",14,1,", lsl #1]",
 		"9:			\n\t"
 		".short	(2f-1b-4)>>1	\n\t"
 		".short	(3f-1b-4)>>1	\n\t"
@@ -468,15 +468,15 @@ void kprobe_thumb32_test_cases(void)
 
 	TEST_UNSUPPORTED("strexb	r0, r1, [r2]")
 	TEST_UNSUPPORTED("strexh	r0, r1, [r2]")
-	TEST_UNSUPPORTED("strexd	r0, r1, [r2]")
+	TEST_UNSUPPORTED("strexd	r0, r1, r2, [r2]")
 	TEST_UNSUPPORTED("ldrexb	r0, [r1]")
 	TEST_UNSUPPORTED("ldrexh	r0, [r1]")
-	TEST_UNSUPPORTED("ldrexd	r0, [r1]")
+	TEST_UNSUPPORTED("ldrexd	r0, r1, [r1]")
 
 	TEST_GROUP("Data-processing (shifted register) and (modified immediate)")
 
 #define _DATA_PROCESSING32_DNM(op,s,val)					\
-	TEST_RR(op s".w	r0,  r",1, VAL1,", r",2, val, "")			\
+	TEST_RR(op s"	r0,  r",1, VAL1,", r",2, val, "")			\
 	TEST_RR(op s"	r1,  r",1, VAL1,", r",2, val, ", lsl #3")		\
 	TEST_RR(op s"	r2,  r",3, VAL1,", r",2, val, ", lsr #4")		\
 	TEST_RR(op s"	r3,  r",3, VAL1,", r",2, val, ", asr #5")		\
@@ -764,7 +764,7 @@ CONDITION_INSTRUCTIONS(22,
 	TEST("nop.w")
 	TEST("wfi.w")
 	TEST_SUPPORTED("wfe.w")
-	TEST_UNSUPPORTED("dbg.w	#0")
+	TEST_UNSUPPORTED("dbg	#0")
 
 	TEST_UNSUPPORTED("clrex")
 	TEST_UNSUPPORTED("dsb")
@@ -790,9 +790,9 @@ CONDITION_INSTRUCTIONS(22,
 	TEST_BB(  "b.w	2b")
 	TEST_BF_X("b.w	2f", SPACE_0x1000)
 
-	TEST_BF(  "bl.w	2f")
-	TEST_BB(  "bl.w	2b")
-	TEST_BB_X("bl.w	2b", SPACE_0x1000)
+	TEST_BF(  "bl	2f")
+	TEST_BB(  "bl	2b")
+	TEST_BB_X("bl	2b", SPACE_0x1000)
 
 	TEST_X(	"blx	__dummy_arm_subroutine",
 		".arm				\n\t"
-- 
2.30.0.365.g02bc693789-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210128193422.241155-1-ndesaulniers%40google.com.
