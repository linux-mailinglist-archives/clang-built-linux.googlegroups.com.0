Return-Path: <clang-built-linux+bncBAABBX6H4D7QKGQEVLHOJFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E482EEF58
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 10:20:33 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id b26sf6195062oti.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 01:20:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610097632; cv=pass;
        d=google.com; s=arc-20160816;
        b=jY0UO5GbX8tBkcpnqrD90VoQSIULvtcSz4lNFJ1Tqcs5dGGh8VdYSq783LJvV08SXl
         q6VZdAm4ZJF8RnbKGEZY0TXc0rzdK2cBH+sV4IjOEywpzYudF8Qz9hI10ao3wHFhfN+5
         H6X8oCsdxaDyA5lzZMJNUZ+wgCpFi21v+4lFe4B/PIhcZ7vaLxQGzJN/3bTbM6OefB5T
         oNVJiJi0GGpHtt7gi92a7M3C3OITJX9fXlpq4byZZ+Hxdt/MNrdq9xEDB24w8ZlVJwpA
         daZi8byIANRVHH6Cn/+5MhvUSIbjwrEScsSa1vZIN7ABzLRj6bX2tbNe46iipoocof2+
         Rujg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=XKKW9Mcpv4Ufv7mGmae03ce+P4AbgosPhSpSiokhElY=;
        b=U+fDbUULEnkLF3zMi/EIzWVQyawn0A1lNK5EJ3yCYff+4a5oQimva2eFWo96Ma18PW
         6PAyIl8eDDo8damfIObuVX8RnSQkpQ/bjFFiLFxi9BhYu1rTFRFqdeQKo7BPq5VY+Adk
         DdL7cjmSmdeaBLAfFbPdRxyIBhuYiK6gwGC303xlaPz04sbbuUNixvRXepDgZKBm2VPd
         +C6qVhe+8cPwJjRzb8yuVZwbVcdowZhip3tWtrl2YkeWnUIQ/NQwEo6mj2Wv4EVRHO/J
         U8szR/5mEgXdGmJjGI/J9lq7e7IT943MsQyjtEyUU7Mh+fQ6ossGYD/nDxLs26KPY5T+
         ddig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=f7AwRejY;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XKKW9Mcpv4Ufv7mGmae03ce+P4AbgosPhSpSiokhElY=;
        b=AzTR+IU4AeGL0vhvzzpxuvOgsxknFOGTT17mUMccfS/9iVWZvbwzWORk/C/CU4eobS
         7wPiGbzwzYm7q+rpUari+In98zwaaUcR+fj28BC20NtTxAhxJR6sezMQCyrW4Cqf4wA7
         U3LHq+azOD/iutcxNnAt5owoZz3Mk+vvYFqEfzjVJAHJgJuUDTbbLbK3NgSzBq0nn0dv
         Uyb+78erRbC/+Jl60n7cYUR1eaUMFCrdnAp0hNxkgJN/v/m1HBt4yIe7r6YIKlZIpH2J
         oK27ceM0UIME4kPsIywlnEHLciN4ridfUz5NmxpvAXUsULix+SqwxVgnCI62EbrXg9h1
         +mxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XKKW9Mcpv4Ufv7mGmae03ce+P4AbgosPhSpSiokhElY=;
        b=ofL6YF4RTABAKZbtYyHa4d3tf95gfR4W/UiwSQgkJHBmGF1Lny0OC78uaTpkFxl+aV
         LTjuoYiCldUeL+HLVJK/gTzgbF6rz9oPFzIuTRUCeWwucKmuKg5CzFtQweRoX747hj3r
         ogTMwa1h/YXyALZUahCWzlBbLGjnufVyBN/tGhD4tA9dAsBN4fj5fobQ/VF9CiLR4zZb
         UrmtQs5vgcW0KGQvq1gXjC/LDCJus5fRzRCbkwBteVvezeBV/e7ft+UcZ+OxnjilWdQo
         S9/CJE4wwFxlGsBr1KEwYOk8c673hWiJiSTYCQU1FMpxAQSQfmKNF+SdAiTZYLTb9gWI
         nPLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JAGNk1pikT+wmmHgNcQ/yAuYmgtEL/vavLeAc/znEgBTOfHyI
	u4rM5jyKM5dpL4Rp7s27rIw=
X-Google-Smtp-Source: ABdhPJyyMRCIju/KQDz+0kkBU2Z0fWQNUzos7q19mZx2/KAitKRxQ+3RJF2MsNjWKwZKe7hwBpYBlA==
X-Received: by 2002:aca:4b16:: with SMTP id y22mr1731891oia.148.1610097631710;
        Fri, 08 Jan 2021 01:20:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e1d3:: with SMTP id n19ls674709oot.5.gmail; Fri, 08 Jan
 2021 01:20:31 -0800 (PST)
X-Received: by 2002:a4a:4f0f:: with SMTP id c15mr3704617oob.75.1610097631330;
        Fri, 08 Jan 2021 01:20:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610097631; cv=none;
        d=google.com; s=arc-20160816;
        b=H1NzVEw+d09xQWkBP7rZrBrzJ+kBruqoB6LIu05S9xWeLeZ01KADE6T3oE/NycHA2q
         TZo2Qtz3JA/9mqGDL95bR9DMw6zxmd3vZBvLw0BiVI5XyHdkQkrP/qXgsd73CEZjpohv
         mqZ3kFm3EVU6GQX6bj51AoIQp9oNlUstw0UT1K9cMNM+oXDU2wxc4+XkfaIk3rLjI+9T
         M6GsvU5Cg6IBHrKY5Gy+k1L8y/PUFfJkw+ZgIpyfk+Wvz4w7IAR3LDpAHz/6MnNrTc50
         fL+jasyFsmNxDV0EypjvIcCsg/BsAOdiL30C8JaVSAnpgzhPhuyTHhlr48hQD2ZXfDEv
         O/iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Tx/5ffuCrFoXlUW9aLjT8gj17lZwSSNPKpAvZZC1XA4=;
        b=iN9/Gj91M48BscivDhZCU2hQKYagzuorW19esNzPGmcKUOkxT/5VvrRtuqK8+MMXyw
         x266zy3w/yNxMBXWSNlwJ31G7jBU6RGZEax/KYqCmSokFJ0dGTNEcm4bXPmZQrmx1E3F
         euFphRxUEzDR+Q89ioGmnsRN+HFCnqHiP8/wBguZAtF9BDJ5jn0RBeXRz9oluRfHkpbX
         MRyNyg4U0uqJbKjMtEbt+Q50v5j2oC15f52zoCC+5ZHb5++m6s4SsCWMMbR1hCDhPB1P
         45x/auuqV9WXnUjp6d6/xtipbSnsSbZuoDQKmU8ht45wRkZ0IB0i+4RaA8sizfXUQ7np
         sdgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=f7AwRejY;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 7si778445otq.5.2021.01.08.01.20.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Jan 2021 01:20:31 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8F50C22BEA;
	Fri,  8 Jan 2021 09:20:27 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Boqun Feng <boqun.feng@gmail.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arch@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] arm64: make atomic helpers __always_inline
Date: Fri,  8 Jan 2021 10:19:56 +0100
Message-Id: <20210108092024.4034860-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=f7AwRejY;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

With UBSAN enabled and building with clang, there are occasionally
warnings like

WARNING: modpost: vmlinux.o(.text+0xc533ec): Section mismatch in reference from the function arch_atomic64_or() to the variable .init.data:numa_nodes_parsed
The function arch_atomic64_or() references
the variable __initdata numa_nodes_parsed.
This is often because arch_atomic64_or lacks a __initdata
annotation or the annotation of numa_nodes_parsed is wrong.

for functions that end up not being inlined as intended but operating
on __initdata variables. Mark these as __always_inline, along with
the corresponding asm-generic wrappers.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm64/include/asm/atomic.h     | 10 +++++-----
 include/asm-generic/bitops/atomic.h |  6 +++---
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/include/asm/atomic.h b/arch/arm64/include/asm/atomic.h
index 015ddffaf6ca..b56a4b2bc248 100644
--- a/arch/arm64/include/asm/atomic.h
+++ b/arch/arm64/include/asm/atomic.h
@@ -17,7 +17,7 @@
 #include <asm/lse.h>
 
 #define ATOMIC_OP(op)							\
-static inline void arch_##op(int i, atomic_t *v)			\
+static __always_inline void arch_##op(int i, atomic_t *v)		\
 {									\
 	__lse_ll_sc_body(op, i, v);					\
 }
@@ -32,7 +32,7 @@ ATOMIC_OP(atomic_sub)
 #undef ATOMIC_OP
 
 #define ATOMIC_FETCH_OP(name, op)					\
-static inline int arch_##op##name(int i, atomic_t *v)			\
+static __always_inline int arch_##op##name(int i, atomic_t *v)		\
 {									\
 	return __lse_ll_sc_body(op##name, i, v);			\
 }
@@ -56,7 +56,7 @@ ATOMIC_FETCH_OPS(atomic_sub_return)
 #undef ATOMIC_FETCH_OPS
 
 #define ATOMIC64_OP(op)							\
-static inline void arch_##op(long i, atomic64_t *v)			\
+static __always_inline void arch_##op(long i, atomic64_t *v)		\
 {									\
 	__lse_ll_sc_body(op, i, v);					\
 }
@@ -71,7 +71,7 @@ ATOMIC64_OP(atomic64_sub)
 #undef ATOMIC64_OP
 
 #define ATOMIC64_FETCH_OP(name, op)					\
-static inline long arch_##op##name(long i, atomic64_t *v)		\
+static __always_inline long arch_##op##name(long i, atomic64_t *v)	\
 {									\
 	return __lse_ll_sc_body(op##name, i, v);			\
 }
@@ -94,7 +94,7 @@ ATOMIC64_FETCH_OPS(atomic64_sub_return)
 #undef ATOMIC64_FETCH_OP
 #undef ATOMIC64_FETCH_OPS
 
-static inline long arch_atomic64_dec_if_positive(atomic64_t *v)
+static __always_inline long arch_atomic64_dec_if_positive(atomic64_t *v)
 {
 	return __lse_ll_sc_body(atomic64_dec_if_positive, v);
 }
diff --git a/include/asm-generic/bitops/atomic.h b/include/asm-generic/bitops/atomic.h
index dd90c9792909..0e7316a86240 100644
--- a/include/asm-generic/bitops/atomic.h
+++ b/include/asm-generic/bitops/atomic.h
@@ -11,19 +11,19 @@
  * See Documentation/atomic_bitops.txt for details.
  */
 
-static inline void set_bit(unsigned int nr, volatile unsigned long *p)
+static __always_inline void set_bit(unsigned int nr, volatile unsigned long *p)
 {
 	p += BIT_WORD(nr);
 	atomic_long_or(BIT_MASK(nr), (atomic_long_t *)p);
 }
 
-static inline void clear_bit(unsigned int nr, volatile unsigned long *p)
+static __always_inline void clear_bit(unsigned int nr, volatile unsigned long *p)
 {
 	p += BIT_WORD(nr);
 	atomic_long_andnot(BIT_MASK(nr), (atomic_long_t *)p);
 }
 
-static inline void change_bit(unsigned int nr, volatile unsigned long *p)
+static __always_inline void change_bit(unsigned int nr, volatile unsigned long *p)
 {
 	p += BIT_WORD(nr);
 	atomic_long_xor(BIT_MASK(nr), (atomic_long_t *)p);
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210108092024.4034860-1-arnd%40kernel.org.
