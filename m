Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB64NT2AAMGQEF5LAN4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B352FC684
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 02:27:24 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id n24sf11635005vkm.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 17:27:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611106044; cv=pass;
        d=google.com; s=arc-20160816;
        b=a7rflo63zU5ujok2oURGi17Q2G1RtBToLfAM7sareewRrSXYuC1kEIyGFC44ryaU5f
         R/QTWrGWYPPEh0hT7g4MddvtqFFscCPL5I5Mt58NMsDZJPu8TCO8ozeskQDTv2owmyTc
         2WbWzo2gd3nCjLhrrNDEc0lFUbrMliDOBHbT0FQLOUMZGTC7bsZNjJEQXkZ0oJfLXO5c
         TdMKb0/EES28GvLMy8lLRjLOjF34yvvFfVk+dmDylX827Uvc2yAxZEk84wpN5gB44sni
         NCe92BB5suH1Szy++WycX9Fb71++f/rUF00KN43onHqxbD2j7tWqE9zTHVArBCo+FESV
         NPkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+I1/GVkq9W5KN4cYwOr4imHej2leiE+ub5CaaELJQFs=;
        b=GvjegUh2lF/zv0cUbnI45XFggLeEivEW8uf1YXI9wMMaO0hgcP9+jWa9FqRnTM1lvB
         1ziDVHZi1pn3c3v6B3qbO9BO/UBlfJ5vAxbdUKjWoQGy1GA8WCq4/nUo2XJ0/Dd6bVra
         Y6xN8Mjl3B9qC3megrLcwMdMxQD/UNRygpBPXpkCEaO72wAxbsSC38q89ArzQ5QwVvmM
         YoJeSHY+vscrnHnKGDV9EoJ0nCSEeQvVwdqWH1NM3YPtTSZ1yboQFpwGwikDwUOKDRMQ
         tKlkQj7vFuAsIxHHyeLop02p2Zme6ObpqpBETzpISmuOdGs0Gr9I8kqrCc97DV62sAip
         eH6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=U3aVfbhO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+I1/GVkq9W5KN4cYwOr4imHej2leiE+ub5CaaELJQFs=;
        b=dkJWPpGBrUaOXICKsl0tI5i7s9jOo+0EmspP+Or2l2RTo+t0oBF6/2SQ3rEe/AnV8m
         zK/OZs4OrpYiCdSu8WYAf4+jD2Ge6O0y+zcsQ7Hffu7iX6Jm+6pzLmxpKM2eELfLOev9
         QdrvzoqntNBgmpcFu7P28TsXBI3cX+eM1BHaZ2YyvOcvd7YF5+62Mgnmwc9Kr219HaaV
         KrMyhep/IcodDWrHLbwEQ0xL8RfiYQ/xS6HOdcpTHAdPSidvS8+LrDcJ91p5N5vX6kZO
         Q1vcADfrko1Z9ybN1Lw8YNjfuA36K5lYGnA5aC/QkhbK4mJk7gpwC9X8HmyGgdZq2tiP
         FE8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+I1/GVkq9W5KN4cYwOr4imHej2leiE+ub5CaaELJQFs=;
        b=jn8AC8vO8BnYlFE5+/OEwF7L3UfCr8CE3rrdNSYmYtuBjQEFJUidBOVLokce+CMzHL
         egHMYzlrxhFEp3QLc8ug37Ev9ILzijLRxB9A1dO+BUCq5m4FdBHTpiKxsXD6Ah0TkRSw
         gEaCyjNPeIoSmb+O8H/CoFFNB2jHgyAn/e1fqJr6Muguv8oNtkrATOKipHMtonQDuUni
         lrsyIDEmaPAddr2Pt8pz/JXFpngbpMbcUvCT0nOBIdyAHHINoc2L6z8+Zk0H0mGeQc6f
         GGw0jTeu4RjKP0D8wgL8D90BJ+brhHfLH/F9zrjARfuHgRXvZvkYFG+f3BKdrI+gk0i1
         10tA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mh+F+f3NRoyEPfYihck8NHV0v1G3voAAuXTE/ZMZNDPOCYi1J
	eizKthWYhzoxogEuzuqnE3g=
X-Google-Smtp-Source: ABdhPJzbSM17wMSEVo+tWNdIH500vWnHaeuAIkPBXWSuDePWqBu4Q9bPMa8ZSw9yls2LsnW0h6nj8A==
X-Received: by 2002:a1f:9310:: with SMTP id v16mr5028125vkd.25.1611106043947;
        Tue, 19 Jan 2021 17:27:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:5f0b:: with SMTP id t11ls1381587vkb.4.gmail; Tue, 19 Jan
 2021 17:27:23 -0800 (PST)
X-Received: by 2002:a1f:3a14:: with SMTP id h20mr3850875vka.21.1611106043410;
        Tue, 19 Jan 2021 17:27:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611106043; cv=none;
        d=google.com; s=arc-20160816;
        b=diy190m/mRJc1NPR38Jbs5mJ0gxZuDmcdOtJYG8j/oemFtxsipgIHtS+f4QPnArrGA
         aw9XXwrsfZBusCseREkS5u2wFGRNqFOOxBL/6OnGiTZBP3dLBGiX24AdLiCti7HH9oDb
         /X3e1Q4fxg/fWJHZnGt669OEJFskUHAk59ey3auj8VF22ZOU4LlUw27VWgA2jJNG2knL
         +Aq1OCNGltLlCM8OWkLTH/VvyfTuScSc8xVwesUJo3Y6qt5FoCZgnc2uYbro+O6ZK5sI
         sPOeW51EUHjxBeN0wwAwWJswMcxZ9ROf1flxAbNFwjHAcuWN+wrE49mhibEWPe7HHoo8
         KVGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=T7FseQy9S0DFrKmG+Bf1XKQVkf59ZpoWM4iybgI30do=;
        b=Z+nwr4b/sZphHIrcXZAKs0GpJBgkxEyMCP736XuPDfxhaFHByBMT2CV0CxGnCCvztF
         AMsOUdZ/ElCYMPvrTc+u2V4IypV4spYfsauknWmtg9DK8IYlZQLhFABTxLhGeA1wavEz
         l0Pewls/BfQMwvCCGdh+sIiwyt6Sm/fadduTtsnjpUk1KaTT/ynhvJQUdGJYFGkvjbxC
         c4VFjtWYelGSV94nv23NPQ45ivADmlKhUjkd2L1tMlt57ITkHYo9G8su4wJtqumdWvjO
         6GhnVm0yVxnfBkDdA6cxKfb2ueSyAX3472pb8Gwnv3ZA6+fxRay2/VU3EyhtYkfdb5AK
         /rCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=U3aVfbhO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 25si63707vke.3.2021.01.19.17.27.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Jan 2021 17:27:23 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EF302233FC;
	Wed, 20 Jan 2021 01:27:20 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-arch@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 13/26] arm64: make atomic helpers __always_inline
Date: Tue, 19 Jan 2021 20:26:50 -0500
Message-Id: <20210120012704.770095-13-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210120012704.770095-1-sashal@kernel.org>
References: <20210120012704.770095-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=U3aVfbhO;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit c35a824c31834d947fb99b0c608c1b9f922b4ba0 ]

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
Acked-by: Will Deacon <will@kernel.org>
Link: https://lore.kernel.org/r/20210108092024.4034860-1-arnd@kernel.org
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/include/asm/atomic.h     | 10 +++++-----
 include/asm-generic/bitops/atomic.h |  6 +++---
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/include/asm/atomic.h b/arch/arm64/include/asm/atomic.h
index 9543b5e0534d2..6e0f48ddfc656 100644
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
index dd90c9792909d..0e7316a86240b 100644
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
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210120012704.770095-13-sashal%40kernel.org.
