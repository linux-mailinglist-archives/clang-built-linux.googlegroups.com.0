Return-Path: <clang-built-linux+bncBC2ORX645YPRBSP66PWAKGQE4UZ62CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0660AD02D3
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Oct 2019 23:27:39 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id z10sf466076ioj.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Oct 2019 14:27:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570570057; cv=pass;
        d=google.com; s=arc-20160816;
        b=KxpHe3zql9VPWVGLaDHrc+Spg3hxoRmiz6E3U6GfPJ8u95+vOiqG4KQI/HuKDmpjWc
         gT8jmIWOzcKflhD1bhf0fZ0+rGYDOXkWfBNeOjZo3N4W6U9j/oDh0tireF7H+CvnHWHc
         CuTmuQ/BfgIo5TG7dee5cVUW4RPN4xsficVcdxwzLNSS/Ok1mxH/vzOa7aR95/lEMyNg
         z9fw4j5XrlYwUR+XAVDeEX6IIaZM5X2LTednogSp/L56LhgVT+X7c8u4ciLjx7Myl2Tk
         R9WTx2jk4XQisb7vxHuGsP2wGM3gGMpGqhW5YFTu/vPX+MutUEbY89LkcjfJWTDoRJwP
         shoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=mryFdpUMhtzQh5ejD6TlnMdBF9e65BBvcOyIGFo03vQ=;
        b=Ac8OpRWSCaaWOcMfbSn3btuE4e9qdNdCzGxzGnN64HHVX+4YEr9n16Vy26IznO/Byh
         kSkO7s4uMjhwX35k0EGk7yqjD6VRd/9TmlUG4sQb0m+GioB95Lwd3D3coCuvvu3uvdp2
         Rde6a1igEamagfCQsqExvyc03sTbFvpsHGfxCCyIzxrUV2TgaDqT+6PlQWFtSoJfnxPy
         QSBesJ418hBa1+umzUBYIMOubxKsI7CQcEDJpp4J0LknAQ8pjUxIG9pn7R0F0eylRaMD
         RVidHIPZCkhg5n/uJ3uf0Mx46x/G0xX8jbcSv+LpOf8B+rp1CGxvr8oYX1c42PTKOnMj
         dKmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fg2EBGY+;
       spf=pass (google.com: domain of 3r_-cxqwkakwemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3R_-cXQwKAKweMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mryFdpUMhtzQh5ejD6TlnMdBF9e65BBvcOyIGFo03vQ=;
        b=U87eIPHmqdnDpOSRturo1N1taiOVYZgw4pOiJvwAfBwOnw4YQcWbLh2KfRn5ps9giW
         U4giYkaxctTY48Ol5TWm09NvoMEv48fD/yw/64BAB8xpGommCrsiD6thUK/1jIktdH3e
         RbW8+qIvLL35y5+zx0dz+HiaoI3Y9cwnm+2IwmKNi+lBIU0y5KhXXU3zT1d7b3E2Zn6R
         DaiTdtBIbIXAYjSvuVh/gcKOKdw+wwpvO5sEmdrC68+bk7au/jUUID2td9CRtAngL6r0
         ngZuHW7BdrrCh7SEVA0AnZaysZcCdy8y7vlUQITK4QsnYF2vyT7a7/UY6nd+10R3hwSi
         zaeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mryFdpUMhtzQh5ejD6TlnMdBF9e65BBvcOyIGFo03vQ=;
        b=Ta00QbcsUfKYksNbGEj12fS/2ROjOZoByimC8XzxhfLRBfUeiSrv+tumLLNucx35Vf
         uppHj8xoH1ixI63oQlvUJ1I1LRuTI3lmN65TTGzQOIKDBLp3RaG6lPEQyUR9EIyNXEAl
         2wEAHrLonSHhdaO26oPSZwqd95u0/WFc0rqOxXHPRlNDCb3qxGgbxRMNXlPyhrjAGdPA
         y+cnwIl8pUP+VcZ+SIppqZglbKH5iU6B88MFVq9o2iwr0wbzcnffPbCf1kqDHeW1t2wm
         V+rsxQ3vTDXUwR3A/A3A2n92Se3uafHgpXqH+y6oej3NPd6sSFrsXZ/6jufapPn/wUnQ
         83zg==
X-Gm-Message-State: APjAAAXs5he618hC4dZWLTVRmiLtMnKUx+ZtnW+I+BGvqXys9cDLAC/c
	9CPxOwJriPW0AD0cvyoroec=
X-Google-Smtp-Source: APXvYqztrZ8dvubYbXD34Ss6JjJIhKjxKtLj9GBrGda8s4xycEHjwgU7KrVU3AFMbPwtWi5SCNm75A==
X-Received: by 2002:a02:52c5:: with SMTP id d188mr99468jab.23.1570570057506;
        Tue, 08 Oct 2019 14:27:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:b787:: with SMTP id h129ls1302iof.12.gmail; Tue, 08 Oct
 2019 14:27:36 -0700 (PDT)
X-Received: by 2002:a5d:9c4b:: with SMTP id 11mr303131iof.240.1570570056672;
        Tue, 08 Oct 2019 14:27:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570570056; cv=none;
        d=google.com; s=arc-20160816;
        b=WJx44NU5Pd52MEywFVS5Tnv4tSdIK/dZUoVz69YqEgmBPPjDJRaVRhJ6UpI21RjDWv
         2+EK9AQtsfxTGo2url3y1Zc4LyomCPRdKN9zSm51f8FBCyKlMGA1Dak1HViN/vjy5AU3
         WoneHbs8BBLDuCjrHAHMB5VIe7Y/Vlcsr7I19e78M23oWWmCiG1Eeb7jSQqYydHfWdST
         KveqOKw7iur/18csNcwND0T1OtjMGFRAXvrSkuCPlRCNt72s7zyEQRVsZ9piUebUbqxO
         XDB1wUHEYn3kXUbh3SLfTm9UJaCQsqiu622kZkfS2mi3D0DrG9cIhouKrnxfXgdgvYyT
         3qTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Vu2KRhwhy+4sItTgwTH9UKVq29kBFB0coKPMQe9rDjk=;
        b=Wh8ihLBdD+neLKaCRHiDwBPiH6UbFSB86aMK74U28e6AfjD882X7r9qHxbGm59j9cL
         MDNp8k3l+I8O8QscpHmePPbZrh2XMIX2+dqO2Dqe7lo3LiXKQEqMSejRPmSK3sJGOD6p
         CKgYsrTSLG2baBDw13yrSQcVA+RK48loy0sVz++GN8OC4bIVF2RuS8KtRP/6MSO3ipnT
         unmQv1+R+RdGtZWNpPaEmkJV0NYVBtY7oblQhE5VnWxo0SLDOA8Ia1PX/LvCNffEFJ5j
         ie+w0eRE5sg42eEoJD/b3bHpXbX2xx9aRpUPrkjNMMncH4/gIqdzyiJY+CkLVFE4dbVT
         CAOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fg2EBGY+;
       spf=pass (google.com: domain of 3r_-cxqwkakwemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3R_-cXQwKAKweMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id i8si12437ilq.4.2019.10.08.14.27.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 14:27:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3r_-cxqwkakwemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id r25so91573pga.20
        for <clang-built-linux@googlegroups.com>; Tue, 08 Oct 2019 14:27:36 -0700 (PDT)
X-Received: by 2002:a65:6096:: with SMTP id t22mr465922pgu.409.1570570055904;
 Tue, 08 Oct 2019 14:27:35 -0700 (PDT)
Date: Tue,  8 Oct 2019 14:27:30 -0700
In-Reply-To: <20191007201452.208067-1-samitolvanen@google.com>
Message-Id: <20191008212730.185532-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191007201452.208067-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH v2] arm64: lse: fix LSE atomics with LLVM's integrated assembler
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Andrew Murray <andrew.murray@arm.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fg2EBGY+;       spf=pass
 (google.com: domain of 3r_-cxqwkakwemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3R_-cXQwKAKweMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
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

Unlike gcc, clang considers each inline assembly block to be independent
and therefore, when using the integrated assembler for inline assembly,
any preambles that enable features must be repeated in each block.

This change defines __LSE_PREAMBLE and adds it to each inline assembly
block that has LSE instructions, which allows them to be compiled also
with clang's assembler.

Link: https://github.com/ClangBuiltLinux/linux/issues/671
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
v2:
 - Add a preamble to inline assembly blocks that use LSE instead
   of allowing the compiler to emit LSE instructions everywhere.

---
 arch/arm64/include/asm/atomic_lse.h | 19 +++++++++++++++++++
 arch/arm64/include/asm/lse.h        |  6 +++---
 2 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/atomic_lse.h b/arch/arm64/include/asm/atomic_lse.h
index c6bd87d2915b..3ee600043042 100644
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
@@ -331,6 +348,7 @@ static inline u##sz __lse__cmpxchg_case_##name##sz(volatile void *ptr,	\
 	unsigned long tmp;						\
 									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	mov	%" #w "[tmp], %" #w "[old]\n"			\
 	"	cas" #mb #sfx "\t%" #w "[tmp], %" #w "[new], %[v]\n"	\
 	"	mov	%" #w "[ret], %" #w "[tmp]"			\
@@ -377,6 +395,7 @@ static inline long __lse__cmpxchg_double##name(unsigned long old1,	\
 	register unsigned long x4 asm ("x4") = (unsigned long)ptr;	\
 									\
 	asm volatile(							\
+	__LSE_PREAMBLE							\
 	"	casp" #mb "\t%[old1], %[old2], %[new1], %[new2], %[v]\n"\
 	"	eor	%[old1], %[old1], %[oldval1]\n"			\
 	"	eor	%[old2], %[old2], %[oldval2]\n"			\
diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
index 80b388278149..73834996c4b6 100644
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
2.23.0.581.g78d2f28ef7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191008212730.185532-1-samitolvanen%40google.com.
