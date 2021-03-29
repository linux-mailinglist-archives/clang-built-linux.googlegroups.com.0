Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQNBRGBQMGQED4XDUBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9366534D9EB
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 00:12:18 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id d4sf2562670iop.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Mar 2021 15:12:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617055937; cv=pass;
        d=google.com; s=arc-20160816;
        b=0QowPjBDiyPaIlDzWpDPBbwjtI4IcJx/St/pJCQh/phQwveUQSq/O/F0FpTlHf2Wc5
         TdFUFyWE3qfB/mE4q2Qv6zREmL6/8zmh1XVmVwzyDnACTs+vREEbIU2gYu7SIbcDIitZ
         +NNMc0N4su0sSq2fFJbzgAs4Gf+yKQdnJh2jbgzjmHXOzQRpEx0OWJfTUcRMIvZmGCQm
         A34yiNlWFfHvc/w14+MkfZ7LiCeTrjjAJpUGs/Mu+CODdmgZhBfxDsBTBi/PURcj0QQW
         t2UOw9D469kAVeQn+mEGP5VnCyuKNZQLglZ6SwNw7Jc/ED6tn6whBMXayz0puYdXE56Q
         oX3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=D2aspRqAh3AKiwc+MHGaxsnTlhECD4nIas69RWHMCCY=;
        b=JCUsijfrwZwy/F8BnukWaLvOXVNaf1T41DAnsgpLA1bpSMa0YOvYIctLA/4ggeMyGe
         +4BeqzLTCUFrrYqpaexshQhT8VzdF0h87H45TcW0lvditQ65QvyGZlneykCRnu4/DLIT
         B8MfZ8XcAM9AAdOL4vUs3WlT6LZrV1Mf/eRRN3EE2dLeqoUTNEfZedjILv6eIsR7rwK0
         osvD2oMoA5NDyzIqvlQZFxPzbNXzwcJA7IWTMJgx0C1WRcH5jCHle1aCXSydAcL5Fd3D
         RlaBmW1OjCylik4hsReJzDF0lSIGWSEU/OhFYY3WSatEbrL74L3mH9l0Wl0VxWGk51mJ
         sE+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m6mRmHas;
       spf=pass (google.com: domain of 3v1biyawkapihxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3v1BiYAwKAPIhXYmUofhcYlmaiiafY.Wig@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=D2aspRqAh3AKiwc+MHGaxsnTlhECD4nIas69RWHMCCY=;
        b=dReKGLCGMlsvge4Xcbs5jz+tiUUVtYgSn/5Nh8KS0kkupMZaKqsdeKnJv2E2Etjrtm
         suKKfyxS6t99QF4kVQN4Rk800ekulj7C2GQVrGKCntYMSx+97beC1exMOhOrIY4F0LZW
         N0GXYNzSA6e/ITutdDWhtQHD/eZAnM61+c/mABWTIs//vTTC5x2hCln6G0057e7Ev5PO
         dNWnUtVwuccauUEjREpwQ0PtsscPmfVKb6YGFBwWHFInn6/od9qM0PDNEKbNGEiAus1V
         4JuFBmrpz4pCxl7mn09EuwED58Pl0uNbwyjyPuQdVMihIbSbfQe8KKsY/8DaZEqvUNOr
         +ehA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D2aspRqAh3AKiwc+MHGaxsnTlhECD4nIas69RWHMCCY=;
        b=jAckZwKRCwUvf9iuD1KITd2fCwh2feb/2bUL1xU/UoFhwqryqW6gzwQatvESSpwhzu
         oDFwvvCd01aJdrHTmOa947GtWNw1JWKjEHxJoXqQ1lczxNsNaEz+kqXcPT3WSbG67bDK
         NEmdv1XZTSxTgjv8h4M16QVN6xn9TrxIefjwFPjyFK2rwmH9b+ynHQC6NEa3IQu3oEpl
         C/vvHnz7D588hGWb+zX8tKet9hwbxLQ0EgHt8Oa4VwjwiTTJdHrdsYt2BZyBdupbHE60
         LpKQbV4RTDMaEOD091kl8fwAzNirg0SrJtRqgB8XIAhm4xXenC1SqOjCKeB3jmzd1PgS
         RurA==
X-Gm-Message-State: AOAM5307mXb91HzevvAgBbmpbNw2COgMk8ogyAhiN3K1g6xy2NTns+Jd
	t2qN5rmonzS02iThBX5RzKY=
X-Google-Smtp-Source: ABdhPJwtfqC7ahftwoDwmDp3NNx5beEPbqPML7whwJt2QwpMH3Sdxr7OMeb1Lx639DxUsGBzi1RVkw==
X-Received: by 2002:a92:c5a3:: with SMTP id r3mr21744164ilt.155.1617055937427;
        Mon, 29 Mar 2021 15:12:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c6a2:: with SMTP id o2ls2220762jan.6.gmail; Mon, 29 Mar
 2021 15:12:16 -0700 (PDT)
X-Received: by 2002:a02:9048:: with SMTP id y8mr26035641jaf.66.1617055936105;
        Mon, 29 Mar 2021 15:12:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617055936; cv=none;
        d=google.com; s=arc-20160816;
        b=vbAfSA9ztZ03TqSMmR19yLzCq4o7nNPBpwBajNTJl3OoQf+EFRo4GfJL5FI1b1Af0F
         5/MjHM+GTt9SdW0YcjQiEYksMR/LQySKhBATTyoPQUOyJNaRnOkRR1zpwn5Gq1ECyS00
         y1TytNCVyyQ0Fyuh4HecNPuECUXuaFKyDtYPr5dTxKms52IlUyxFg3dx7xrymqctliQM
         boPuRq+mUxmy2tqzJeH5JQWvPKjdGtBzxJSUKGd1p6ZDwhIqGPoNi0IgfwN8vfKss3t5
         cUveqizQZ5s2kdcPyRU1pWDlIaMaEJXRWKWW26PcbmUfrQoa40IfVbJyMSm/Bh8Qrady
         kxbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=ekCF2vvcLsdB3w/7DhoYThMPMaRHrvLWv1Vl8Jy7w1I=;
        b=p0DvlwmMdiX+y0k7NoC8aYRDn1icKpcXRmMGT7RDjoFSwtMsxfSR7LSws0863Orqud
         kWvAKJe+uKQclqrf1bCL3uKUe0QbdibE+Vt8EJTa9ZXdRb8saBDRi/o+mh56UEwJ4Z1V
         fgsAEZjMF576Gr1NgdXzgQKd+atbR+ygGiWNKuk0bF0KFo7TZ1P/hGrx/JMoLOD5CLP0
         20y78ZrK/JUzwtfbl2OuGFn9O4maMy5oEhvHucna9KU/JHZ86mTJXM9a+fF7dIiJFn7F
         +Olz0jbAOcygLgUJ+dXiRrqgLE92bFh8tIV3leBD0G/NnucOzwyjIp7O81eGHB1//OWT
         hLQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m6mRmHas;
       spf=pass (google.com: domain of 3v1biyawkapihxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3v1BiYAwKAPIhXYmUofhcYlmaiiafY.Wig@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id y4si1368984iln.3.2021.03.29.15.12.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Mar 2021 15:12:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3v1biyawkapihxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id i7so11838101qvh.22
        for <clang-built-linux@googlegroups.com>; Mon, 29 Mar 2021 15:12:16 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:c959:2751:3fb4:47b1])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:204:: with SMTP id
 i4mr27848771qvt.47.1617055935550; Mon, 29 Mar 2021 15:12:15 -0700 (PDT)
Date: Mon, 29 Mar 2021 15:12:06 -0700
Message-Id: <20210329221209.1718079-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH v2] ARM: kprobes: test-thumb: fix for LLVM_IAS=1
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Russell King <linux@armlinux.org.uk>
Cc: Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@kernel.org>, 
	David Spickett <david.spickett@linaro.org>, Stephen Hines <srhines@google.com>, 
	Jian Cai <jiancai@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=m6mRmHas;       spf=pass
 (google.com: domain of 3v1biyawkapihxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3v1BiYAwKAPIhXYmUofhcYlmaiiafY.Wig@flex--ndesaulniers.bounces.google.com;
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

There's a few instructions that GAS infers operands but Clang doesn't;
from what I can tell the Arm ARM doesn't say these are optional.

F5.1.257 TBB, TBH T1 Halfword variant
F5.1.238 STREXD T1 variant
F5.1.84 LDREXD T1 variant

Link: https://github.com/ClangBuiltLinux/linux/issues/1309
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
See:
https://lore.kernel.org/linux-arm-kernel/CAMj1kXE5uw4+zV3JVpfA2drOD5TZVMs5a_E5wrrnzjEYc=E_fA@mail.gmail.com/
for what I'd consider V1. The previous issues with .w suffixes have been
fixed or have fixes pending in LLVM:
* BL+DBG:   https://reviews.llvm.org/D97236
* ORN/ORNS: https://reviews.llvm.org/D99538
* RSB/RSBS: https://reviews.llvm.org/D99542
I'd have expected the Arm ARM to use curly braces to denote optional
operands (see also "F5.1.167 RSB, RSBS (register)" for an example).

 arch/arm/probes/kprobes/test-thumb.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/probes/kprobes/test-thumb.c b/arch/arm/probes/kprobes/test-thumb.c
index 456c181a7bfe..4e11f0b760f8 100644
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
@@ -468,10 +468,10 @@ void kprobe_thumb32_test_cases(void)
 
 	TEST_UNSUPPORTED("strexb	r0, r1, [r2]")
 	TEST_UNSUPPORTED("strexh	r0, r1, [r2]")
-	TEST_UNSUPPORTED("strexd	r0, r1, [r2]")
+	TEST_UNSUPPORTED("strexd	r0, r1, r2, [r2]")
 	TEST_UNSUPPORTED("ldrexb	r0, [r1]")
 	TEST_UNSUPPORTED("ldrexh	r0, [r1]")
-	TEST_UNSUPPORTED("ldrexd	r0, [r1]")
+	TEST_UNSUPPORTED("ldrexd	r0, r1, [r1]")
 
 	TEST_GROUP("Data-processing (shifted register) and (modified immediate)")
 
-- 
2.31.0.291.g576ba9dcdaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210329221209.1718079-1-ndesaulniers%40google.com.
