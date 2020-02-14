Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBXEGTPZAKGQE6LV7ZKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D1B15DD07
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 16:57:17 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id 10sf7958842ybj.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:57:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581695836; cv=pass;
        d=google.com; s=arc-20160816;
        b=IpTQrUZ/uAPF+FPdx6J8+PYr/Q+ip1HVereZd4EkufE0987ClTaREG/lmiqD2qoLU+
         Sjtry0gH3cFeuvMEOQtvv8kDQMXdT2dUuRoPS/jtvgmca2ePPFX7+ZpiFvzPLD78+A+g
         6Eu2WG4fMpD+6+C5nFQ73UsmqRCk4FMqf+shF8+ve9oHHJQxNeIQkAsjIY3Pj6a6aWkZ
         pbU8IvMKWD/aIYJ6dBXFyDGk03l6c+/cn6o8dXJLOLo5cfKhkM/5R8JiM5SfihJw1qLx
         nNFPP/67jp0HU1YhkpZbTBArEzBzkU2qEwgZy4Bpyp4ogyeKqvVU+mAOP4Tc17HSneKD
         d6FA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=or0LIb8SyvPw6LMe5kB/npwNKeIEuj98rGVZS4WC2Sg=;
        b=ojaCaTBt8J+FQozRIUkwlBD5tSirp3thYSeXWeuF8qPndkXdAJtPxEYh2Pq5OIoNGH
         SHschWWBacnHV7P+ntSKxWCkTFGMD5Ok1oJNiHiy3RWmlCRo+yZNZe0EhoxRckabqcR1
         eco7Q+u5pPcbjI38yijAr1Kuw8NAdTGuxVLJna4TXopgFFTiQf7SLzb4Nl9NjtfrluDa
         DDy2F2PH/makX8KYUZTVo+CRgJ3Kn30wSMZfdcKVAUES7n7sqK4MITK7QksoRxIFg53b
         1ujJlU0WxkgoqF6Pw0Ek9sCvUhhvLmpHRdXe9mtSjszGmw1JaoVoZ4aiEtBPjCunzC5o
         fLnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="HY6i/X4M";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=or0LIb8SyvPw6LMe5kB/npwNKeIEuj98rGVZS4WC2Sg=;
        b=bkGw5eIXfioZDlt6Wyk97VsNrMkRUBeU1oqvVrVOPsRRN3aR0Iusj45uBvRMXkdBPI
         PtgKW0aADWZBdeIKYN4ek6yRxmf2BHeZkOkqme1GCDGCql+6Zt+nGAA1eIKxrJbcCqzg
         Dq5raHAWvMXxAJBbofer48VaHmqzF0jaQdhIp4kVvP0cxAAMTMoZsya3SAeFuOTnE38v
         w+8TCWlzk1tWql6hY+BecLdlRTyvdbjJlH81T0JlRINAv0gBhnb1kzwmZLHZ77ObApki
         pJPhGk8r9U23TZ3cTPz88WDxOmgC9QqV3itmGiPFcdsoToc4YTPqBJlSzdRb7YKQ3TGV
         chDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=or0LIb8SyvPw6LMe5kB/npwNKeIEuj98rGVZS4WC2Sg=;
        b=Lm9OL84KMh5PboPJDH3XaORoHG0iG/VkdwjkN2vgNtx4EizakPdABMKEFNW4a141sr
         QFJ/W+11WFxA2aVzD0TVDHV0ajU2+koaq3b4scOz2Pgt9Pgb3SO1JOTDFTehHKSsZCmj
         E4Lycwb0K1RNCSKqfoLPdOqI16IxXj/EFZIBW6/grsw4+h6b+gqzHeSR93oW46/1aZFz
         p4ZL4vRMtx/Ox4nEEnL5Eh2atWkT6R0Y1VNK5vNDHvSgwqYsLUHofhT+L9XhTNOmiPlq
         3Yvo3WD0WdUDLDHyFzLYymXIgtsm/xcXOFJVnEowsvQJ5MZTkMz+ch+YBe05z5nYAP4R
         /HlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXo7NaQuhls+OD5xsr0C7HSfaLE04AGVsPIN9LEC7QmV37EKq0N
	X+WR1hEL9ZX0HEQmJybIh1U=
X-Google-Smtp-Source: APXvYqyYF40FypaV1weNQFKDJ3YXHTj8YCTMZ4Kf0DYzDqb41be1kPGleuzWjFcfM3TnIgNgjlG85w==
X-Received: by 2002:a25:2c3:: with SMTP id 186mr3623808ybc.191.1581695836513;
        Fri, 14 Feb 2020 07:57:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bd4a:: with SMTP id p10ls514279ybm.4.gmail; Fri, 14 Feb
 2020 07:57:16 -0800 (PST)
X-Received: by 2002:a25:ba46:: with SMTP id z6mr3588456ybj.227.1581695836142;
        Fri, 14 Feb 2020 07:57:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581695836; cv=none;
        d=google.com; s=arc-20160816;
        b=JhnfGRsx0v7RnVZqAKQs/VOu8Qjlf1OnIsrbQVZj05J0jOeV8qwsG3GuWgscG2uJwM
         eJ9ewp150mXjKoV4V2AllDMAOjwXBwdVeruToGM2IbG19aQ7DamSr9bBK2cFeZwLEwlh
         ZXPFXEUl21j3BPFOzCm0OjpBsF8qTSJqoLOjy52QBg0IzjCLkv5iAZNQ/qRE8dGtntx4
         tojN69CjH4+dfNr1sMcDuZ2x1wiKoPVNVPLgMaWPBG06TP78ypqUv/Tsa1nq0JCje6fh
         R0dAzQml4gU8k+3/qj+ORwctoacH73gwdj8O03rhhIlQuZnEsqG5mOHmipbXAIXTaB6k
         +iJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2SR3+8u5XJTPhz/p/1IeQfnBm+JwvPVObWZNMJ/fBKE=;
        b=GCo5VRFWJVhlah2MSp0PzMDldOiwEjvbdFrG8B6jLCocCJxVPZl4cVKtYNy71vqpFh
         V5DZtWYgfjaktVXwVGnsY3os1a/RT/EutlvvgRezzbuS98PaLUUhFxho8PyxuLb3Oyzs
         oBmF+NPMLVl/rkIt0q5JJ9DQcx4J7MihkxiynxNep7wanabutLUws81XJAsJIT3SaQBe
         r2cYAApvY/kCo9MRlhC10GbBGeMgqSZpElC5uXBi97tIVF2l/dhXs+iZu+dAJETPtr27
         ZYIeAMkyy7Kv6IgdoxqrZnGT4hq6BMaTfNTenpaZq2X0WFnhgaO1EViUoLUEc/Gqzh8u
         b8gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="HY6i/X4M";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x10si356189ybs.1.2020.02.14.07.57.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 07:57:16 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3792C24680;
	Fri, 14 Feb 2020 15:57:14 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.5 387/542] arm64: lse: fix LSE atomics with LLVM's integrated assembler
Date: Fri, 14 Feb 2020 10:46:19 -0500
Message-Id: <20200214154854.6746-387-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="HY6i/X4M";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214154854.6746-387-sashal%40kernel.org.
