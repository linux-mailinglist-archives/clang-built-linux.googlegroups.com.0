Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBSMNT2AAMGQEZNXPN6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 895462FC66B
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 02:26:35 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id 33sf17071511pgv.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 17:26:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611105994; cv=pass;
        d=google.com; s=arc-20160816;
        b=V2wbgj4vJ9xjG599Je4b5qru3n4PojKQtgRGovmBf3H6s34t1bjsmqNvqILu/S0Sus
         Hw241nB5R4cVRhqY3Szv48rif5X0sXZfzYskgEn11aPJEjFirCvz5AOKp0Q0/7vPAd58
         U2xP/RML2EQ6X6DPqnPDGV7Pqfd2TpuSxcDXmie5qipWza7AhLIER6SOpGvBBsoHu9dp
         qP3t7cZpJ0IGS5CD5uHzDxSu4fWx76pDYYErokM686HqLEoB+vPLWZnV/5wqpWkP0ACj
         E5GYmLBP5TqN90LVyRwqOu9EezglB1n/FNeu+6BykgNPRE4AG1buB0Zrhue8kaaPmZed
         OoXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+xW5veFAF7dQqCfSG+etIOqKRo5l8D2USkQYa67CtHI=;
        b=XTHnB41eTcAzHLESDUmDuM/e0UAVDK/cWoIAC32sgjmc9s7wjnpcXYbtdbGEFQGGRo
         XOrzp8bGMICrIZaw4iJeHNq3ikPso81kKy1Q473RD/X7VORPR/j8qS07bybvXGA5yxXv
         RXjO9e6vJ56T0lAmkiQEy6PhnWnUbvByi78J52MD6jOFNv20QYIrp4tLLV6fAM9owHSD
         XRmSoWStttSqMJ2aPfvVnjMX75nnE+h8ApsUc+aOJVbG+YyTZtbVRzHCKwtWIW3nz+to
         InuyMmNWBJUthTHq3GLnHoyOXORAGr9TeDOQyWDBe2Aao3y5WW5HK3D8EOt+8/MOsXuk
         PEKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=re3HOL3k;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+xW5veFAF7dQqCfSG+etIOqKRo5l8D2USkQYa67CtHI=;
        b=nk7rG4xRI0VBlFhyJGNLGSIZ32y6i+7yYD2vnSFSqgAZe1QP3MOR2ubGSQ/hRp6jqp
         zQ4ZGDBdYAhNn67L79cMBUUKjuDcCoaEw5YGuwbPFONbHDpTqRouF02sjvT8MkVwtstX
         DQUQUWzKXgWfsxvIJIPnBa2+/12jt2yZBIFkzcrU0afj1Lq3sRFAdZbJL+cV3Tew/y/f
         MJMm05r0QNYMrCi4YG/NG1oURZ2QuW+QYWfQnzEmDbSR+9hdbT/kgEEs1CjP08GgsAwO
         6Wl478DegJSBnAqJucoHVDHX8M2/4kR/s9uHYVEdMdtyrP3klhruyJdljOknp/1PeqYj
         PHVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+xW5veFAF7dQqCfSG+etIOqKRo5l8D2USkQYa67CtHI=;
        b=hAg8Hi2MLDOM/D29XygI4rdqmOQor11coKYTRzx3n//32dbCGVUOsPO8FZG+0CfnU7
         aTlfiBMKHTsIQNRY2Iyr8VD5gy6VqtkR+30wntODZx/z4X4c+UyB21d/sbT40kIGhLJZ
         xK18tWPLDBgaNArFkk4Tv65dA/hyY/UDl4/Mr7jotmsjO3eyYQJcyrkbl2kKyNSxwHS/
         KwqibrOC7rLr95xVzKROn9lqo9orsZ45nKB0F0NgIqfyc8O05pjWdHVQNp0XsV9NK/jh
         Ux2mp3sgGV2R+FQwhOktSdGvj3/6i31KSA0G2fPl2N612qwHeVL0CFY7tfj+Dmxq64ZJ
         OIAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wyK5/DdAlwzvVg9Swr35y/rolccc9wG12KJJdpsVGux6PT3W+
	Cko/c5AYQd8oYZDUMllaGjM=
X-Google-Smtp-Source: ABdhPJxfHOhUZRxIRWca40jxFYLt6CoTJDZeSgbqKjrarfv1BWIOk1eowOk1vvZO4fN7FtVlWhgGsw==
X-Received: by 2002:a62:303:0:b029:1a5:a6f7:ac0d with SMTP id 3-20020a6203030000b02901a5a6f7ac0dmr7032428pfd.63.1611105993863;
        Tue, 19 Jan 2021 17:26:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7614:: with SMTP id k20ls6122204pll.5.gmail; Tue, 19
 Jan 2021 17:26:33 -0800 (PST)
X-Received: by 2002:a17:902:be0e:b029:dc:138c:b030 with SMTP id r14-20020a170902be0eb02900dc138cb030mr7436106pls.55.1611105993193;
        Tue, 19 Jan 2021 17:26:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611105993; cv=none;
        d=google.com; s=arc-20160816;
        b=wumuVqIRV2w1ABLYuIsZm8rOWRC9kdLp1rppo475SRC54vos7kPA47aP8ZkyxrCOgg
         dC37VLdWLQWiStCfXWdO0bRtpAhXIQX1Hak+wIEgL0BTAzhpKtjtAZ9CjvujaU3NxpZl
         vqkz0Xmb88UCiG2Ta+xJ057empKXqr7HcWtbGnOsxWTPhsGvc7+FvI1l90MXjgGUf7OB
         9gd29uNjMiZ022wy1hEiOaW3dKzsQgB1RbLRhV++aRrV/C1McwfvoWOhS7bRi6i++yFa
         KpM510vU5DZDIrzQ2Ww9Evokh7AKJN4hJOJxA+GxlAzVt7NLoZJuZh9YQRJRes+0PBEF
         bAWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lH54REmuQfvKuWDH63RTPbn1vdi21K5sE7LoyM0vT90=;
        b=tUSZuDCBYZq1emeoz4DRoURh022T1dAoP/na3UoxIPmatAHGTvU+JEFOe393M8lEyU
         EP6SHwDOdHBoI8gqtN+cEpACv5rN1Rfj/ij9jHtoDDqQzLrdfGfgo5tjdZAukZR7lymM
         Se8K/n/YA1P/84IKdnCdUIFDkWcV2vHwwU1b8MKwwrVlLmNNLn6hlr2ToSZoWnEAWMnR
         dFzaF8AfjQtbwDXBqpwLqcbSlpsow7yhs08Uqd9KScLW4z+psCJSHgNcFpz5BdADhNnv
         hVt+0W8L6FhvHAz0lk6DARf0dfHPbw7kOt5gL5JUh7zLM1Cjasmy3BSiCFUa8PbwAPXk
         XVSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=re3HOL3k;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id jz6si37553pjb.1.2021.01.19.17.26.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Jan 2021 17:26:33 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DEF1123339;
	Wed, 20 Jan 2021 01:26:31 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.10 23/45] arm64: make atomic helpers __always_inline
Date: Tue, 19 Jan 2021 20:25:40 -0500
Message-Id: <20210120012602.769683-23-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210120012602.769683-1-sashal@kernel.org>
References: <20210120012602.769683-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=re3HOL3k;       spf=pass
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
index 015ddffaf6caa..b56a4b2bc2486 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210120012602.769683-23-sashal%40kernel.org.
