Return-Path: <clang-built-linux+bncBC2ORX645YPRBFXZ5TWQKGQEWUL253A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D74EB82A
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 20:57:12 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id g11sf4609152plm.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 12:57:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572551831; cv=pass;
        d=google.com; s=arc-20160816;
        b=IHjijQqnL22pA+axgLJZ6khBlC7KIYfp1z8CUeizoLRbr6ZxGpL5okr8uokFFEB6c+
         rGuumbDL85T7or/m0NweLU3bHcyJuCqOvMFSqtdEDt2RN3gUAz8ep1qjoRlbqL9s4gH0
         Of9xiH/VkmQbjN8XaOqJOu4VwWHB2OZQgDonaEMcs1tCy9FsYqJjcigvLtZslpFtRbWJ
         elQIqowuiT7El8c5yIVM5b1M9hZMW2BhdRs34EzlU67YhFCnIibMMM5+OtQsKOZ1EiOX
         Xpf/1/kx2vG8A22/AzNAgcZ45yLfatfs9YZ85yALzNVhsmf04VuNv4ESShP3mgTPiY/x
         htkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=LopDyDWQJ7mVfJdGqwJQsPkr5zaXm7+ONvhPEke0xBI=;
        b=uNQThvV8NyuWURq92P6l8TdMk93VghvglL660lGLhTs+R7wreAzh8FwkLodVV5fjpR
         b5GtzqlMoRVLrikzSd1QdFP+sjyD0ETDhCJ28UKaqEVTUUbMPgrNqzZfiXV+ZP8rtJuF
         QeVIT9G3TXJ04TjdTWdyzFyfwKInK9Ii707el4NY3oEMl8uY4mzT3TTUaCFTRTGig9LT
         4rYKzeADu0hLH08GO0X7Rw0EVEnsrzIr8YIPaSxZiGxjVgpYivj4l45MqGZqbYv3TNTq
         hx0b0ley+eHY2igxRauRwA4i/XyiJT6pTS2vmmFJ48zID5oTK+qh9ugyYA6bt8li+Qf6
         g68g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kijaECMI;
       spf=pass (google.com: domain of 3lty7xqwkao4iqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3lTy7XQwKAO4iQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=LopDyDWQJ7mVfJdGqwJQsPkr5zaXm7+ONvhPEke0xBI=;
        b=eJLUerA56YD2rcOoGlVeEOQYJOyw9vTIwdGdWl9hCwbllrilTWF02XexvHEfD9JOoP
         lT3SPVDhTYhci6l0KDijxiqbB6IjLBcKS6ZGKauiOcXC5RpjKoCyOC75u9YAt5VyrS+Y
         pZ0Bm726BdrAwJ/guEv2wfPzUBx3nasx7/d+rkV3uay3Ksk13jxUHc6Pac3QzwzYLblm
         8BVOlbvYcBbzH42SxkjovtDvV7izEvl0uUBWWq9eC6kRd1lMBFavEm6XQ4LUA/xVU/x5
         qE9+5Hc9vOHRaY36HFTNQAQlmI+eAzsGHJo9dJujNY/88PDH2owKG9ndZfcakLyzd8hp
         pq3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LopDyDWQJ7mVfJdGqwJQsPkr5zaXm7+ONvhPEke0xBI=;
        b=jUEDg9AUJavA0ijcA8EbtrvTENUK2Ho47AaETUrLV3foLJutfi9B33bj14vBvBDJLf
         oK5H+/RldX0tj7yKYUYjI0yg+T6FE6JvmNYuXzdp033KYKdoRlqZ9w2z1vaa4M3oCqEz
         Shfm+mfETftY07C7SvboG4NbQ/FNvRzhe2WisolJwDAwRxdFjxnCIIZ1V8O1Ul3Dkqld
         SQ5gtBmdz0U8W8esnB4+Xm3MOqQDd9qpczESAL65OszvZyYvmH+SUcjn6/+0pn15OozW
         afGPPlbO3xfHiwXMJTMIQ7Kcn/GXJs9Kc4kN8DHbB2Flzw10WNFlrVgzALsR2L3736jT
         ITgQ==
X-Gm-Message-State: APjAAAWtBqWThYz9B7RajvJfuOlP+AcNcHwGWK3aoqJLvTiYo20Rq77g
	X8DQ1SqPcito+Qq2fk0NF+s=
X-Google-Smtp-Source: APXvYqxCW0OI74LwUgVqffiCYO0i9Wqr5JjpGf8zK9p4ETVtMeb1Vyf/Oq7wqWnlpVmeBBR0eALhRg==
X-Received: by 2002:aa7:92c9:: with SMTP id k9mr8656816pfa.155.1572551830997;
        Thu, 31 Oct 2019 12:57:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a02:: with SMTP id v2ls955852plp.15.gmail; Thu, 31
 Oct 2019 12:57:10 -0700 (PDT)
X-Received: by 2002:a17:90a:b109:: with SMTP id z9mr5033717pjq.126.1572551830554;
        Thu, 31 Oct 2019 12:57:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572551830; cv=none;
        d=google.com; s=arc-20160816;
        b=b9Q5Tb27RvXI7IQ2UQiNiy7lnHv+s+eytxtPrcx70Y+NEplOPozj6ADzV4fp1CFZwm
         Px7VmwEm+JZe4ZvWGJ9PseGhx2W/DnhgBLwodOF1IqufVyK6PnOxpYT3Qc86NnzTtJg6
         fSvq59ECsbMumagPv2vvPlEYoTQ03Yf9XnuxNTbsyVNMTGvCgycXE4e/EYAwOMqC3fJl
         YlN/qnfhiXfbShXvNjx2E7qfOoPdH6yk2+5QdyPiRRULMd5Wf0kySONT65oAX4A0BkN2
         9olQEjkeDHCBtHY2LLRKZcO778rMbl+vK8reNW/odGwDszcWHETu+DHzcOuVXnO4Nh+U
         8eEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=jiLcFaiREafbQExvYdBwRYAI1ixaZpxsHtd/ZZptGeY=;
        b=QDTbHz3jCr3yyOUzC5SN83xH4ZgT8VaxanuRsYUC0lGzfenIw6zvWV64782ijui6eo
         gpK4w49oPDcL153TI7/IuJA4fKCx75A8fJYtk2iEesDv/Fm5LgJp+zwOUWtbrW/ErzmJ
         S3gKc9LnW5f5PVFNW8J0Lc1xEdLc7cERxPS7SN1TQa31IMke7rc3unUqwPofecfJtS/i
         rHM/tr7fAcAV5xzU6rCmoVomC2GmlsEgWK1Q3xd8Nc9Dhjaxz4bNW4GNbPe85vKAu315
         QA871BIYCYBa5uotx6RH9DWgqKULkVpnxEiP5D6cIZKvU/SiIRo+1qyl16VNZ9790XZ6
         0VPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kijaECMI;
       spf=pass (google.com: domain of 3lty7xqwkao4iqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3lTy7XQwKAO4iQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id t71si346694pjb.2.2019.10.31.12.57.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 12:57:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lty7xqwkao4iqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id t3so4633407plq.8
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 12:57:10 -0700 (PDT)
X-Received: by 2002:a63:65c6:: with SMTP id z189mr8455542pgb.433.1572551829987;
 Thu, 31 Oct 2019 12:57:09 -0700 (PDT)
Date: Thu, 31 Oct 2019 12:57:05 -0700
Message-Id: <20191031195705.36916-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [RESEND PATCH v2] arm64: lse: fix LSE atomics with LLVM's integrated assembler
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Andrew Murray <andrew.murray@arm.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kijaECMI;       spf=pass
 (google.com: domain of 3lty7xqwkao4iqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3lTy7XQwKAO4iQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
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
Tested-by: Andrew Murray <andrew.murray@arm.com>
Tested-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
v2:
 - Add a preamble to inline assembly blocks that use LSE instead
   of allowing the compiler to emit LSE instructions everywhere.

---
 arch/arm64/include/asm/atomic_lse.h | 19 +++++++++++++++++++
 arch/arm64/include/asm/lse.h        |  6 +++---
 2 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/atomic_lse.h b/arch/arm64/include/asm/atomic_lse.h
index 574808b9df4c..da3280f639cd 100644
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
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031195705.36916-1-samitolvanen%40google.com.
