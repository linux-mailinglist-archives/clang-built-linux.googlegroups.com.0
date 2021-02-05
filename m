Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVUQ66AAMGQEF3RR2LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3399C31157D
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 23:36:08 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id q3sf7576180ilv.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 14:36:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612564566; cv=pass;
        d=google.com; s=arc-20160816;
        b=c0ypgBRNAdbDYNI+ef2cinUr1GyxjN2M9NbfwM7lSA1WKJhHLFkOYoIsUzkvJ9oRuV
         VoCNTmIXeUZf+ksj5+X8ZPOCnVNkzLibxKLw+YJFzHxfnckpeytyJIeuWfjHZD1yAgm4
         Y302JzI4CtvS/EqYP9yECv0L028qX/4B6E4Ley8qj3RumYRS1xrNXXkIEKxxi8Jbazeu
         k8RyP2kB0VwSY1I3aLNRxWYjXe+di2Zg+3z9atsTtlp6IVPArNJMXK8rrKODHm/GVMdu
         ekOzbyCn3OWbsKlXs0fld/gt52NJLecZBSQXQZFOZnKcp6auwAHFgCChXB7PsPxSfr4w
         HooA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=17BvofA2oQGyL6TVuICwBktN5sm4vnPyqcfFHjoCqWg=;
        b=X06Qv1oZXrXO5tKaRl6eXuSOTrZCEdA1rAI9NMjZX3gw/sM5Bb967yrU2KB8KZQefZ
         X/cLmmIoY5aOprG6+Ep/x/3fJ+o3M8Zs9I5GQ7Z2myjDgJYmu2dXoyRVF4kco5OJXdVI
         KLzy6BTiwFnBoFaJaegyo0c5eUB3328w+EaRSv5xJbrGytdZsrDfxfXJ565hDlYG//L7
         NmV9IP3a/dXqk1g0r7Z5XoxG7BCwOpbmL5cGM3GxqP3FzHFZ21q1pZz+bE3C48Z8itw3
         cJbbnN7ScdSkw3BjC3EKdAtkC9QuSSxzhMz0Aej51cs3p23GjlqpRBKslBOM/UCbZfcy
         N/EA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F+EI074i;
       spf=pass (google.com: domain of 3vcgdyawkagqpfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3VcgdYAwKAGQPFGUCWNPKGTUIQQING.EQO@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=17BvofA2oQGyL6TVuICwBktN5sm4vnPyqcfFHjoCqWg=;
        b=gA+6cjrBtnVOyh02q0pX3uC6n3MsRT9EwWURvTLwlDlGi8nYRmhKQtUhPJ9Uodyb7Z
         ZqUifu8BAlGQPgzBTYhqpduj81Kuqns2VCjC/nVp3E8M7Gx+MT22YZsEtU9Z5RCmANwh
         2wlaNHU2Di7iNfps721l92SihBYFBWu2qaE02zFU3Y2JpzF2fldAuGdJZg4AX7jtJh2p
         Cwz4m0BA6Fvufw86HxlYxYwG0j2go6UFAyqIn29w+V+mK0Y+j+oDa85Iki7yX1+bk/5h
         PFxlg6im2HZStYKWE7y1Va9i+pABofajs3/snEQSJfmwhwjsw0nyUXW4eAPjL7ZblYMh
         0zUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=17BvofA2oQGyL6TVuICwBktN5sm4vnPyqcfFHjoCqWg=;
        b=aazQu4+zM78y64mhLL8Er2/QnbB5VGYuUL41N/+XxgLicAs/g0SBLmjrTYddFjhYE1
         sWCQeyzt6MidRfgFgU+ZK+a/ZWkEcNHd30CNr42dwxJwUk3/FYsLBV9c/9wrHadCwyjr
         NqyAFJqaMorYGRZ8QOA9+E5GUU0OPKSZm7/hYrDd/BKM7IaDDxVE82aS0HcW7E6qMxfp
         T3dYyAKQ3lqT/FKeYZO6VUMfTPteJ8iyzI5eiZSJbbXCaTee46YevTQeQRmb6Mitbc+B
         UHyHqaiFXAwzgqDo8n87Z8IiFGAMDe+fevY9vKtw//PYAyeHkPiSUwtNUPFPWTLl95lG
         9Jvw==
X-Gm-Message-State: AOAM531/LIZBcbBg3UdrZg5eN+SliO4mFG6tbkqZp5vWP4UOiTpySUKa
	OBIMSN1B0SI91qWWT4ltj/c=
X-Google-Smtp-Source: ABdhPJwV5puuTjJgmC6xEybDKY+RZBaCqtywXVCRZO7rWgOVRREtUiMyW+AHID5lCl/srUa/sJSXBA==
X-Received: by 2002:a92:d1c9:: with SMTP id u9mr6035217ilg.125.1612564566759;
        Fri, 05 Feb 2021 14:36:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3606:: with SMTP id d6ls2655991ila.3.gmail; Fri, 05 Feb
 2021 14:36:06 -0800 (PST)
X-Received: by 2002:a92:512:: with SMTP id q18mr5894457ile.279.1612564566272;
        Fri, 05 Feb 2021 14:36:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612564566; cv=none;
        d=google.com; s=arc-20160816;
        b=dmt6Ue2ErmTDwAlwse1YaMGFHX7XduXXiSlu60ysLAJXBjY1WnlObdqDY9fcZ8wNfq
         5CAd3OuCOyzDqeqQhSDfWJPrN5besHSUtc1a3DF0c7gVNxyyC2m0hC+sxbB4MOuBG9jz
         n/mUBjg/HOXnc6Abi0vlV0oc+hZE7tE4kn+fJkv5GnCY23Kfkn5U8+wYu29Q2XfCWJp1
         RcDE04tafsdlosbQxIycWn9JdSurYhs1+YsyryR5H+aAG+5jchiInCxNAcAdLhyeFaqc
         eI5385J7xGywIxNoY/sEhvsnGTnxRVQORtWzqABNvJJuSsOe4n3hpbeWv+1eRLOAe97+
         W27w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=IstHE/SbxF0Oq06lvnVZnQ/B/W6uMbNtEamOWXCjN94=;
        b=DEitFP7l3PM7VfFypzdc24JGfSPqHIiPmKZUTFvKt+dARWPx8osufbxCFVU/pcfjmM
         Ttt/x5YQymB6HlxyP7+NG+Vr8tQpMpDomJQot1Fc/CmdVW6Etbg2tFy+2tn0IgtSWCk3
         oi1BLSmP63+GvBb7tPUZwW9lKMRKmVb+hWKZwkKUaYJc7tS/DeiPhgiIoimTxF71bTXk
         ugy/qkCeEWcEtur6EDdwDEZt6tV0Gc61O0iYiTarjJfx6b84ryNpo5i6yBNhnp/jhUUG
         Hs0Hl+erxL/6byBEARKbOttAsEit3JxLmBUJnbywPSmPVprLL7Y4zmRvEcBLXmIFpW42
         EGSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F+EI074i;
       spf=pass (google.com: domain of 3vcgdyawkagqpfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3VcgdYAwKAGQPFGUCWNPKGTUIQQING.EQO@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id m132si440055ioa.3.2021.02.05.14.36.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 14:36:06 -0800 (PST)
Received-SPF: pass (google.com: domain of 3vcgdyawkagqpfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id d21so2454099plr.9
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 14:36:06 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:fce9:1439:f67f:bf26])
 (user=ndesaulniers job=sendgmr) by 2002:a17:90a:8b82:: with SMTP id
 z2mr5948255pjn.25.1612564565617; Fri, 05 Feb 2021 14:36:05 -0800 (PST)
Date: Fri,  5 Feb 2021 14:35:55 -0800
Message-Id: <20210205223557.3097894-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.478.g8a0d178c01-goog
Subject: [PATCH v4] ARM: kprobes: rewrite test-arm.c in UAL
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, 
	Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Peter Smith <peter.smith@arm.com>, 
	Renato Golin <rengolin@systemcall.eu>, David Spickett <david.spickett@linaro.org>, 
	Nathan Chancellor <nathan@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=F+EI074i;       spf=pass
 (google.com: domain of 3vcgdyawkagqpfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3VcgdYAwKAGQPFGUCWNPKGTUIQQING.EQO@flex--ndesaulniers.bounces.google.com;
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

  movs  pc, r1, lsl r2

is converted to be open coded via __inst_arm. The resolution of a
discussion on the below linked discussion on an LLVM patch was that this
form of this instruction is unpredictable, and should not be supported
by LLVM.

Link: https://developer.arm.com/documentation/dui0473/c/writing-arm-assembly-language/assembly-language-changes-after-rvctv2-1
Link: https://github.com/ClangBuiltLinux/linux/issues/1271
Link: https://reviews.llvm.org/D95586
Suggested-by: Peter Smith <peter.smith@arm.com>
Suggested-by: Renato Golin <rengolin@systemcall.eu>
Suggested-by: David Spickett <david.spickett@linaro.org>
Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm/probes/kprobes/test-arm.c | 292 ++++++++++++++---------------
 1 file changed, 146 insertions(+), 146 deletions(-)

diff --git a/arch/arm/probes/kprobes/test-arm.c b/arch/arm/probes/kprobes/test-arm.c
index 977369f1aa48..429e03c1f31e 100644
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
 
@@ -166,7 +166,7 @@ void kprobe_arm_test_cases(void)
 
 	/* Data-processing with PC as a target and status registers updated */
 	TEST_UNSUPPORTED("movs	pc, r1")
-	TEST_UNSUPPORTED("movs	pc, r1, lsl r2")
+	TEST_UNSUPPORTED(__inst_arm(0xe1b0f211) "	@movs	pc, r1, lsl r2")
 	TEST_UNSUPPORTED("movs	pc, #0x10000")
 	TEST_UNSUPPORTED("adds	pc, lr, r1")
 	TEST_UNSUPPORTED("adds	pc, lr, r1, lsl r2")
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
-- 
2.30.0.478.g8a0d178c01-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205223557.3097894-1-ndesaulniers%40google.com.
