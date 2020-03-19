Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVHPZ3ZQKGQE3HVC63Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C7C18BF41
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 19:20:06 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id b136sf2491072iof.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 11:20:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584642005; cv=pass;
        d=google.com; s=arc-20160816;
        b=cyYYsP9A1zQ9vBY+fu9rB13uib9OFBdSGJ9FqN4oiu8uBM8ebGSVJFxaqx4AznaTxw
         AkYQo3bNPuyxz5okWBElWefJZJt6c8oj1LYtdCJsigLaGfEFYPP0s6FebCnEW3BzM7sb
         gokPeL4UcJ7sKUrrOj4zAOBxk7WMSIkGA9bo/+oDB5m6JovtOYSeHZEZP0C4C+L4hB9J
         P+grLF6LPPd085p1bvb3jIAbUcu4ery4IFvON1D/CZ0jJpLRxO4ADYK23hP8SQlTccXD
         1dd/uzLgwdPbsG0COH/Y6gIg/pk78/GCW1B1mMPQTjDhgn5GQMP4ZixqtS3p1wrkDz6A
         XktQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=7bVmr/YPMs+Ib3AWKC05/0kA281YGnQCaq4BVgrZIgk=;
        b=qaGrP4d3pr6F1IceEEkOtLShIoPAACP6l38fC+gCX+rAkGM5U/+vAlqr2iaZMsGQ5/
         CRUgnpHnDYufsgf6OomwCnTE9K1Qo541uENcKV1BEF3SeQ3Rje0X3Ge+6KLkSoWdyd99
         4qV8sc2wtbb56usZxpRG2FjxHGfzSZghnTWM67xQeugRoIQCy6l/kbKhM+6YWycw/ydm
         WVQXIC3naCkCcjLEp/3Mh5iNbgVjigCnYhloXB9G8OqWRXJIiMDawj9mNvAzsotaQ1oE
         YjiqHN8eq4e4DhqAYayno5i8limA+/W8J/t/+b+Y9XE18AasEgM0Q0+l91TotYT+D/89
         dx/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gZEbou2C;
       spf=pass (google.com: domain of 307dzxgwkaawzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=307dzXgwKAAwzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7bVmr/YPMs+Ib3AWKC05/0kA281YGnQCaq4BVgrZIgk=;
        b=Xu7AQ6BclD40Xfq6y5IwLtYWTMuPv7TImG2P3Kxv4nRlSgg/IlEUm2A2EVcN9n2qyq
         xqWBnmmQMglVqg6YfFnZLLlL/94RMScfD7n4mvaqKheSBjTtXOrGlsxt9s3YKLBPM21F
         UtlThKqkwtfvErUXc2hOO/b831pSx9UymPLWS1d1WpkoSzGRvK4bcS16vuf8A41Y9BXY
         0jN3EA9Dg3yEbxyMyVbudGVV3LdXPJUtOvLqiyk3Mi9YSrw5nn3dnCitlwWLCEgVvrXB
         pwsCC/ipO66n/2De2HMh4cQP+reUFpEOic4iothWKHxOAGOJy0ncfVS5rr/Iq1lubDXA
         E5Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7bVmr/YPMs+Ib3AWKC05/0kA281YGnQCaq4BVgrZIgk=;
        b=hM4rCc2EPt7vg1EJkPYrnbWQ6b2YwPMV9OjcnGlNQy3VigOrjzgkXZfLY758e3/kap
         DUrsjM52dQ4pNmP++OKiISCLLgFsfJWqVLsg3Bs6RoGXPQxOQ5F6Ozifadq63lwnRAaw
         F1tW9Lvs40iAOKwsbheUm6JV+iN7mi0cSZg+LvnHSEkJbC+OWXWBA2LxjkiM1HXZHPem
         7KgmmxL28jNHQO5nJhd+kd2xbEx7W8LaEVGMLmM8qe92SXKtGlwTS+eva3jPX+Ik58LU
         1IanVr/7NPSY4OkI93SScIwDXGf1zoiV4R5WQfU2VPQfJ3MsmVsDTOkTlu/vC/Oysbk+
         qksQ==
X-Gm-Message-State: ANhLgQ1FDpCXgXHmrf6CLWpGfqZ+1qnTQtkN9UdtIY+dawBfJ1WVnCvb
	p7qwlIx/HuUAbK02UMjbdbA=
X-Google-Smtp-Source: ADFU+vs43nvfT3lrfNePACfQ6vqeam90ouI7BR7VV13D7aGJBNtyXGY6iX7DPqDH1YS6rcCX7M468A==
X-Received: by 2002:a6b:fb02:: with SMTP id h2mr3946711iog.126.1584642004568;
        Thu, 19 Mar 2020 11:20:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:778d:: with SMTP id s135ls835524ilc.2.gmail; Thu, 19 Mar
 2020 11:20:04 -0700 (PDT)
X-Received: by 2002:a92:d9c1:: with SMTP id n1mr4488227ilq.8.1584642004196;
        Thu, 19 Mar 2020 11:20:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584642004; cv=none;
        d=google.com; s=arc-20160816;
        b=UOZtBlkXGAG3HAfLE4KH1nmCZ+eUqsmX5hSOCW34z0s99lpU43mzghavid88GxzMDr
         cvR8Fs8o0kHZYigZnfDczX8KyhZtEBuY3kgp54P37KJGeSOAxxp2cg7vWuZdkUSx4DTz
         3G1U9M1IJ5ioBsZrJvn8A9/lSuotrG6gRVHS1NtA3cZ5XIsxpHwg4NTuahwOOTTFG1US
         KzzxQjhG8mSq6aqj9i1CcNS19SvcZGKyUgH74+eQdt6hNoxukbn3QC9BKiJuu88rUmmW
         QbqMDgpjriytm68pdydq7tpRMrTS+b5RWVZuxLMIl00rCeCgGZiBum5SnKRjZ/qzG3g0
         sh1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=5P5en98KHUaK2c9M1pt238mEzcEaVTQjW087IgSolEA=;
        b=rCHnldJoqzF/1DwFnjKYLC0OxWy+UjULdYOo99Ins3ApVVRyNTpybWpOfOGHfCAxZB
         Tl7+DX8RWrwriHfipe8fJo/VxP8sX2RBWffjpNxvMU6pQKOdFwo1HiFxjyypeUSCo5Eu
         tm08nDj+RnO6d5vhYqFxFuheqftEVvcqQwd/2cW0DuiQa4pZYN3McxBt1O/Dr9vuu2V6
         igAwsMJ57zn5J3jO87NtlgUZvfBTTAIutujMbZhuKLjyL60QwFhQg4AffqoZs1x1zg17
         mC+DZ/ZvLwGtJNt52BeF76QnQgEF2AJgIU52LZIu2J2SSSclCH8pifCrPEdKMCKA0up5
         BbIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gZEbou2C;
       spf=pass (google.com: domain of 307dzxgwkaawzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=307dzXgwKAAwzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id b16si172982ion.0.2020.03.19.11.20.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 11:20:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 307dzxgwkaawzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id k67so2595860pga.23
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 11:20:04 -0700 (PDT)
X-Received: by 2002:a17:90a:af81:: with SMTP id w1mr5234832pjq.14.1584642003433;
 Thu, 19 Mar 2020 11:20:03 -0700 (PDT)
Date: Thu, 19 Mar 2020 11:19:51 -0700
In-Reply-To: <1584090304-18043-17-git-send-email-amit.kachhap@arm.com>
Message-Id: <20200319181951.102662-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <1584090304-18043-17-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH] arm64: Kconfig: verify binutils support for ARM64_PTR_AUTH
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: catalin.marinas@arm.com, will@kernel.org
Cc: amit.kachhap@arm.com, Dave.Martin@arm.com, ardb@kernel.org, 
	broonie@kernel.org, james.morse@arm.com, keescook@chromium.org, 
	kristina.martsenko@arm.com, linux-arm-kernel@lists.infradead.org, 
	mark.rutland@arm.com, ramana.radhakrishnan@arm.com, suzuki.poulose@arm.com, 
	vincenzo.frascino@arm.com, yamada.masahiro@socionext.com, 
	clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gZEbou2C;       spf=pass
 (google.com: domain of 307dzxgwkaawzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=307dzXgwKAAwzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com;
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

Clang relies on GNU as from binutils to assemble the Linux kernel,
currently. A recent patch to enable the armv8.3-a extension for pointer
authentication checked for compiler support of the relevant flags.
Everything works with binutils 2.34+, but for older versions we observe
assembler errors:

/tmp/vgettimeofday-36a54b.s: Assembler messages:
/tmp/vgettimeofday-36a54b.s:40: Error: unknown pseudo-op: `.cfi_negate_ra_state'

When compiling with Clang, require the assembler to support
.cfi_negate_ra_state directives, in order to support CONFIG_ARM64_PTR_AUTH.

Link: https://github.com/ClangBuiltLinux/linux/issues/938
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Tested with binutils 2.33.1 and ToT. Boot tested in QEMU.
I added this requirement only for Clang.

GCC maybe doesn't produce these assembler directives, or looks like GCC
8.2 produces .cfi_window_save (https://godbolt.org/z/awZWZ5, godbolt
doesn't have a newer aarch64-linux-gnu-gcc...) instead of
.cfi_negate_ra_state. Maybe ARM can sort out the inconsistency between
compilers?

If we plan to add .cfi_negate_ra_state to out of
line assembly, we may want to make AS_HAS_CFI_NEGATE_RA_STATE a hard
requirement, regardless of compiler.

Also, rather than CC_IS_GCC, we could do !CC_IS_CLANG || ...


 arch/arm64/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index b889d7956abf..1ee1d8fab218 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1506,6 +1506,7 @@ config ARM64_PTR_AUTH
 	default y
 	depends on !KVM || ARM64_VHE
 	depends on (CC_HAS_SIGN_RETURN_ADDRESS || CC_HAS_BRANCH_PROT_PAC_RET) && AS_HAS_PAC
+	depends on CC_IS_GCC || (CC_IS_CLANG && AS_HAS_CFI_NEGATE_RA_STATE)
 	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
 	help
 	  Pointer authentication (part of the ARMv8.3 Extensions) provides
@@ -1550,6 +1551,9 @@ config CC_HAS_SIGN_RETURN_ADDRESS
 config AS_HAS_PAC
 	def_bool $(as-option,-Wa$(comma)-march=armv8.3-a)
 
+config AS_HAS_CFI_NEGATE_RA_STATE
+	def_bool $(as-instr,.cfi_startproc\n.cfi_negate_ra_state\n.cfi_endproc\n)
+
 endmenu
 
 menu "ARMv8.4 architectural features"
-- 
2.25.1.696.g5e7596f4ac-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319181951.102662-1-ndesaulniers%40google.com.
