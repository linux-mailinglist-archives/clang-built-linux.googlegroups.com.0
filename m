Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBG4MTPZAKGQEJ7FURSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2386F15DF68
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:09:01 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id c206sf6480273qkg.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:09:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696540; cv=pass;
        d=google.com; s=arc-20160816;
        b=f2HRrr3plgmFFD/3ErXbOeZkHAVylQcAbkbuUjeZXmoyMDdG63Qp8xUxX0gm1jjVtK
         DI14Ranu4N/LP1c+0CEje7VkMSQ62EKMoTaWjhwH7Qi2aFxL2rK91IY3QPIBMxzAaOQ8
         6ZoECa7FJi+3aGxATuLPwHqHlVzcbeIG7ydcEzcWseSqQz/kaEiAkwDOzbRxau4YkqcW
         ZtS6HdXsHKjfipfSffz3F2mqTPwdJjdpC5z9/+vAwBYcufkZtdsGE5pBxSo/Sk2JFsgv
         uOfFawc4E56VYbIpRN1jRP2WO3Mms9cuzfadM3zQW0ElY6OOAXLvEFbSBbH6jBsDQ8ry
         9/sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=krAHufAGAjz+x85CJf0gZmMq8H4KsnwsIM42PrsBz2s=;
        b=m7+bGNQqf8kmPiJIomkMLBHogQslJXvO+GRTVPAL9nIR6puK6xksIraINIx4IWELud
         zOhDaFPAJr06i3npTeOMKxcyeVsHZfH0A+f+BQpT1dlJ0XSybObwpcwGM/agiOHHlBym
         UBt81CbbdwsmLI6l+iAwU2kxXfa8dcS9pH4MyidMUNByvFlHkRoOJKz59hjdvD9yC/5K
         wk7hfIPvZUkQ6X6L3cLmh/D9K7Wr2kQMNNJdt8lGJnMrUSCWPYAXbVZALNq/Dtklvvq2
         S/P1gC68c+V8Q4yRFqPSw9c9soE9o0afrXPbbxKRstDi/LBTUi48japoOO/W3vqyItfi
         69lw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dF2IWggz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=krAHufAGAjz+x85CJf0gZmMq8H4KsnwsIM42PrsBz2s=;
        b=Jet/o44b/KjL/xbb8T/lCjyOGNy+WJrq+WgfmpuJUSoAPhrqLotcEwN7iXF73zFm2J
         K4I8WK7LDSVhOhUYIgJsCLqcu6kwYoo3yaI11XXO/dfugl5zP60h/oJFyhc3Wnc98sNe
         6U5MGQ71ZQWbC2TmN3c9p8r9BeA1yeGO8gM2ErG0FkVFC9un+++F5ZPgPiGVHvB6lzpA
         Bu2w51wGNN+8vxfy+3oG24JKielJ2Ay95wWLPsGn8iwR/vMRVUvO9/ecO9XleXdaAoOH
         ePcBVQe3nSXANDmtd/rQR5BYRV8mp8dOqUXFI/VLocsPm8JQRfGpdnwpfVLWcQdxk4a3
         +gzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=krAHufAGAjz+x85CJf0gZmMq8H4KsnwsIM42PrsBz2s=;
        b=kjpfgWfci3oAzATg5ySdJqVaS/NgdzXMR63t2D7XuEtLFBSRbTWjR2VNABzoqjYWvy
         wFl8KHQUSEqRttq8oECtj7F4rfe5QwZjvWLTurHMVAGXUaot841YclSzIyD9OrDI+26f
         /+7h1jqKYy37vWiEoM/06IiTxD31gD2GsEifuKzdZPz5BQCvHMoXrC1xNIoNAsfxqZ4p
         EDSPibvdobbRLB1bxBi4Jv3+zuYj89UvH1OlzhaDn1/8v54kYXYIu4pmnzciN1lRjTQ5
         xE4fOQ9q2xPiCJlC0y2mjNyku/CwotqsqVc0Qoey+vsAMJdaT5ES3rOiQdiwdbuMXHLo
         sasw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV48Q2HXgm8uzqhL8chTbWS/D6WmlxyyftRbmcMFqO99VPmBg/n
	tyNRHIvMoGIDvsa91KqFCZo=
X-Google-Smtp-Source: APXvYqxQLsQJ7wh1E0uo4XWbU2Wpv7I0io9M2ac/05IptPf69wrgdc/3X+/18Zzp5Z/4NZJDj6Ty+A==
X-Received: by 2002:a37:948:: with SMTP id 69mr3371927qkj.258.1581696540079;
        Fri, 14 Feb 2020 08:09:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1818:: with SMTP id q24ls956398qtj.0.gmail; Fri, 14 Feb
 2020 08:08:59 -0800 (PST)
X-Received: by 2002:ac8:969:: with SMTP id z38mr3028555qth.203.1581696539632;
        Fri, 14 Feb 2020 08:08:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696539; cv=none;
        d=google.com; s=arc-20160816;
        b=AbU5VjPq41AOvv+9Oz1fieusrbNR95bUUYKAB4fjzPxTiPvcUPVnNazM3VuVAfxSP1
         NodyQkMuY4h+qhfmcvLjuMW0Fg2MMtTZ50UdrJRFw3S3uwNCV1mr2sZ4RLCSf2LlFfGj
         6j+c6zIJPRniB6H/iqlRRWhiGXaq5TzA7M8xzuRnaZdPW9DM0w1uGijWxOTKGCexCdF9
         pOB9jKsOkMhGeDSFNKJSaT1s1RWQRPeiLShvFSzbXtuER5wIBXmM9TGpALpePjKpu0AP
         wjc/4yV7Lqd3dAVhaBM5Tw4SbcaejIJfix02S3WgRGNZzbbHCYXM61BwVaTzOaGfZUUY
         JVJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2SR3+8u5XJTPhz/p/1IeQfnBm+JwvPVObWZNMJ/fBKE=;
        b=KmcTQEC6pQNRRKAOv2NI59KAJmWomV3QRhSTCF4ymFSg+XtJdgzG/e9n/TmTFdccE4
         pj8ga7KT9Zt4vNVg/c2U/pvC0993qMp8TnjmRhnuR+SWqUZtpRndlJBdkSyAQLN2Rbi5
         qB4LF3Bz55pDJJ/2HMzKJgGUS9Pma3pCvbMX+ftCv1dpq+Uz6Jko0u1nMSN0fXuAkzKA
         rHcysvpFCO4ywf4wSmgb6OxeBhFD50Dmvb1m1NlxTCg4Pph/+2s1V1ozlD/TgT+bp/k5
         84euWQdRZsavcwR9b45/6fGHHBbkPIZzxqb4KoxWNNOswFwlufBEj6x589xmMBVExZD3
         I0Fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dF2IWggz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g23si311387qki.4.2020.02.14.08.08.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:08:59 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 96C77222C2;
	Fri, 14 Feb 2020 16:08:57 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Andrew Murray <andrew.murray@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Will Deacon <will@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 334/459] arm64: lse: fix LSE atomics with LLVM's integrated assembler
Date: Fri, 14 Feb 2020 10:59:44 -0500
Message-Id: <20200214160149.11681-334-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=dF2IWggz;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

From: Sami Tolvanen <samitolvanen@google.com>

[ Upstream commit e0d5896bd356cd577f9710a02d7a474cdf58426b ]

Unlike gcc, clang considers each inline assembly block to be independent
and therefore, when using the integrated assembler for inline assembly,
any preambles that enable features must be repeated in each block.

This change defines __LSE_PREAMBLE and adds it to each inline assembly
block that has LSE instructions, which allows them to be compiled also
with clang's assembler.

Link: https://github.com/ClangBuiltLinux/linux/issues/671
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Tested-by: Andrew Murray <andrew.murray@arm.com>
Tested-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/include/asm/atomic_lse.h | 19 +++++++++++++++++++
 arch/arm64/include/asm/lse.h        |  6 +++---
 2 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/atomic_lse.h b/arch/arm64/include/asm/atomic_lse.h
index 574808b9df4c8..da3280f639cd7 100644
--- a/arch/arm64/include/asm/atomic_lse.h
+++ b/arch/arm64/include/asm/atomic_lse.h
@@ -14,6 +14,7 @@
 static inline void __lse_atomic_##op(int i, atomic_t *v)			\
 {									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 "	" #asm_op "	%w[i], %[v]\n"					\
 	: [i] "+r" (i), [v] "+Q" (v->counter)				\
 	: "r" (v));							\
@@ -30,6 +31,7 @@ ATOMIC_OP(add, stadd)
 static inline int __lse_atomic_fetch_##op##name(int i, atomic_t *v)	\
 {									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 "	" #asm_op #mb "	%w[i], %w[i], %[v]"				\
 	: [i] "+r" (i), [v] "+Q" (v->counter)				\
 	: "r" (v)							\
@@ -58,6 +60,7 @@ static inline int __lse_atomic_add_return##name(int i, atomic_t *v)	\
 	u32 tmp;							\
 									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	ldadd" #mb "	%w[i], %w[tmp], %[v]\n"			\
 	"	add	%w[i], %w[i], %w[tmp]"				\
 	: [i] "+r" (i), [v] "+Q" (v->counter), [tmp] "=&r" (tmp)	\
@@ -77,6 +80,7 @@ ATOMIC_OP_ADD_RETURN(        , al, "memory")
 static inline void __lse_atomic_and(int i, atomic_t *v)
 {
 	asm volatile(
+	__LSE_PREAMBLE
 	"	mvn	%w[i], %w[i]\n"
 	"	stclr	%w[i], %[v]"
 	: [i] "+&r" (i), [v] "+Q" (v->counter)
@@ -87,6 +91,7 @@ static inline void __lse_atomic_and(int i, atomic_t *v)
 static inline int __lse_atomic_fetch_and##name(int i, atomic_t *v)	\
 {									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	mvn	%w[i], %w[i]\n"					\
 	"	ldclr" #mb "	%w[i], %w[i], %[v]"			\
 	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
@@ -106,6 +111,7 @@ ATOMIC_FETCH_OP_AND(        , al, "memory")
 static inline void __lse_atomic_sub(int i, atomic_t *v)
 {
 	asm volatile(
+	__LSE_PREAMBLE
 	"	neg	%w[i], %w[i]\n"
 	"	stadd	%w[i], %[v]"
 	: [i] "+&r" (i), [v] "+Q" (v->counter)
@@ -118,6 +124,7 @@ static inline int __lse_atomic_sub_return##name(int i, atomic_t *v)	\
 	u32 tmp;							\
 									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	neg	%w[i], %w[i]\n"					\
 	"	ldadd" #mb "	%w[i], %w[tmp], %[v]\n"			\
 	"	add	%w[i], %w[i], %w[tmp]"				\
@@ -139,6 +146,7 @@ ATOMIC_OP_SUB_RETURN(        , al, "memory")
 static inline int __lse_atomic_fetch_sub##name(int i, atomic_t *v)	\
 {									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	neg	%w[i], %w[i]\n"					\
 	"	ldadd" #mb "	%w[i], %w[i], %[v]"			\
 	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
@@ -159,6 +167,7 @@ ATOMIC_FETCH_OP_SUB(        , al, "memory")
 static inline void __lse_atomic64_##op(s64 i, atomic64_t *v)		\
 {									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 "	" #asm_op "	%[i], %[v]\n"					\
 	: [i] "+r" (i), [v] "+Q" (v->counter)				\
 	: "r" (v));							\
@@ -175,6 +184,7 @@ ATOMIC64_OP(add, stadd)
 static inline long __lse_atomic64_fetch_##op##name(s64 i, atomic64_t *v)\
 {									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 "	" #asm_op #mb "	%[i], %[i], %[v]"				\
 	: [i] "+r" (i), [v] "+Q" (v->counter)				\
 	: "r" (v)							\
@@ -203,6 +213,7 @@ static inline long __lse_atomic64_add_return##name(s64 i, atomic64_t *v)\
 	unsigned long tmp;						\
 									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	ldadd" #mb "	%[i], %x[tmp], %[v]\n"			\
 	"	add	%[i], %[i], %x[tmp]"				\
 	: [i] "+r" (i), [v] "+Q" (v->counter), [tmp] "=&r" (tmp)	\
@@ -222,6 +233,7 @@ ATOMIC64_OP_ADD_RETURN(        , al, "memory")
 static inline void __lse_atomic64_and(s64 i, atomic64_t *v)
 {
 	asm volatile(
+	__LSE_PREAMBLE
 	"	mvn	%[i], %[i]\n"
 	"	stclr	%[i], %[v]"
 	: [i] "+&r" (i), [v] "+Q" (v->counter)
@@ -232,6 +244,7 @@ static inline void __lse_atomic64_and(s64 i, atomic64_t *v)
 static inline long __lse_atomic64_fetch_and##name(s64 i, atomic64_t *v)	\
 {									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	mvn	%[i], %[i]\n"					\
 	"	ldclr" #mb "	%[i], %[i], %[v]"			\
 	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
@@ -251,6 +264,7 @@ ATOMIC64_FETCH_OP_AND(        , al, "memory")
 static inline void __lse_atomic64_sub(s64 i, atomic64_t *v)
 {
 	asm volatile(
+	__LSE_PREAMBLE
 	"	neg	%[i], %[i]\n"
 	"	stadd	%[i], %[v]"
 	: [i] "+&r" (i), [v] "+Q" (v->counter)
@@ -263,6 +277,7 @@ static inline long __lse_atomic64_sub_return##name(s64 i, atomic64_t *v)	\
 	unsigned long tmp;						\
 									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	neg	%[i], %[i]\n"					\
 	"	ldadd" #mb "	%[i], %x[tmp], %[v]\n"			\
 	"	add	%[i], %[i], %x[tmp]"				\
@@ -284,6 +299,7 @@ ATOMIC64_OP_SUB_RETURN(        , al, "memory")
 static inline long __lse_atomic64_fetch_sub##name(s64 i, atomic64_t *v)	\
 {									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	neg	%[i], %[i]\n"					\
 	"	ldadd" #mb "	%[i], %[i], %[v]"			\
 	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
@@ -305,6 +321,7 @@ static inline s64 __lse_atomic64_dec_if_positive(atomic64_t *v)
 	unsigned long tmp;
 
 	asm volatile(
+	__LSE_PREAMBLE
 	"1:	ldr	%x[tmp], %[v]\n"
 	"	subs	%[ret], %x[tmp], #1\n"
 	"	b.lt	2f\n"
@@ -332,6 +349,7 @@ __lse__cmpxchg_case_##name##sz(volatile void *ptr,			\
 	unsigned long tmp;						\
 									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	mov	%" #w "[tmp], %" #w "[old]\n"			\
 	"	cas" #mb #sfx "\t%" #w "[tmp], %" #w "[new], %[v]\n"	\
 	"	mov	%" #w "[ret], %" #w "[tmp]"			\
@@ -379,6 +397,7 @@ __lse__cmpxchg_double##name(unsigned long old1,				\
 	register unsigned long x4 asm ("x4") = (unsigned long)ptr;	\
 									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	casp" #mb "\t%[old1], %[old2], %[new1], %[new2], %[v]\n"\
 	"	eor	%[old1], %[old1], %[oldval1]\n"			\
 	"	eor	%[old2], %[old2], %[oldval2]\n"			\
diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
index 80b3882781496..73834996c4b6d 100644
--- a/arch/arm64/include/asm/lse.h
+++ b/arch/arm64/include/asm/lse.h
@@ -6,6 +6,8 @@
 
 #if defined(CONFIG_AS_LSE) && defined(CONFIG_ARM64_LSE_ATOMICS)
 
+#define __LSE_PREAMBLE	".arch armv8-a+lse\n"
+
 #include <linux/compiler_types.h>
 #include <linux/export.h>
 #include <linux/jump_label.h>
@@ -14,8 +16,6 @@
 #include <asm/atomic_lse.h>
 #include <asm/cpucaps.h>
 
-__asm__(".arch_extension	lse");
-
 extern struct static_key_false cpu_hwcap_keys[ARM64_NCAPS];
 extern struct static_key_false arm64_const_caps_ready;
 
@@ -34,7 +34,7 @@ static inline bool system_uses_lse_atomics(void)
 
 /* In-line patching at runtime */
 #define ARM64_LSE_ATOMIC_INSN(llsc, lse)				\
-	ALTERNATIVE(llsc, lse, ARM64_HAS_LSE_ATOMICS)
+	ALTERNATIVE(llsc, __LSE_PREAMBLE lse, ARM64_HAS_LSE_ATOMICS)
 
 #else	/* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214160149.11681-334-sashal%40kernel.org.
