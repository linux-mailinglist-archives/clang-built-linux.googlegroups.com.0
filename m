Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDMWXPXQKGQEXDXGHYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BAD117954
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 23:30:38 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id r127sf10095263pfc.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 14:30:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575930637; cv=pass;
        d=google.com; s=arc-20160816;
        b=GW0JAQdluadpkkmrpEaN/X/0ORJ1LvN2j+ntt9r7Cx0HMjorBAYmvx5EMcIJt1hn2n
         aj+4hNXh9juIT+Mgo/DXgTBcifwns2zF9IwfzoVgUMP1hWVvNwA8ZEEOEbagFxcROWLo
         KeCpeqgMvpZUDL8+4ka8SCUans3OC7xByXJmhXFr2PBQuRAOHoGWpokJrwXDBMjBNza1
         bnABceOgmCY9S3Nz8Z7RLsSx9Fpm3c2eNtQJkXgqIw1x4OygOaZ1zgbz2Sa+viqxk7TI
         EKmcijbwu60s6vJ74DpcZAjJAi7iW0PHAcPOe8Y6GQpBdiRkLhLf7csg9+GSkTUx/XyC
         ksDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=9Dzbn73/JnofKMTjeIkbXslxwh6YfnC7EZig2nUuwqY=;
        b=SEZcbMYu8M1rDEaPdSDL2gN1HMm/1mI0RkB8PEfuLXVJyX3EAdz9ToCzjwr4Clqcht
         vdPyTA/tkytkXyCJhyywY9v46+T7sFcJ0ksg5DKQjWD0qrQewxY8ysSrXbxDXGtEcWI8
         Z38s0YMAsNkfaHrkSpIFgyytNxqnIclwqwT193kWKRlVz4Gm02kgzATSOpXxr43T6uwv
         cT6BB4wfSpH/sMQwrybTWMl8G63NHRJziFHHXZUWHXnW4TZr/GJX4cXl2rIatAH6zQXY
         mbwwSTzY82EMrKx2xZwNR+m13Ox+nBBXkL6ulF+W71CoArnTuDqrzULdLHsL0SIZkiyc
         NO+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q8FfRa48;
       spf=pass (google.com: domain of 3dmvuxqwkafm8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3DMvuXQwKAFM8yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Dzbn73/JnofKMTjeIkbXslxwh6YfnC7EZig2nUuwqY=;
        b=n2PBJNo4E0Zc6zS2TZ1AsgInKQb98WB8pMEYmzmD6Kr8N/IGmix9cUf0SB5zISOnp2
         kQGJU7SkZOnakCpBDgp2+eU1fI3eDn4yonknm8Eq586QE6WXixBtmHU0vNRKC2gLvLiy
         X3Y4LA4KEDEV+oyFBJf0LILBKwUNMWWE+PAb7p1bbsu+7jXkO8U9lOQLB0doOiHTz3Sw
         P6i5ZJ7/6X4NIua3Ncw6j7z+1EVWmFqK8Wu534ExXcRyjKgK94CcxThHs1YZv1Gla3pl
         neA1GjEDW9D4aX8aBZ7pG6VvJotYcCzavsLvMgBjbeQbYb3PF5VXTESlIXT4evTBM4/4
         FpRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Dzbn73/JnofKMTjeIkbXslxwh6YfnC7EZig2nUuwqY=;
        b=EjspeKtypowbGwruGzFRvC28Vi8m3g28N/EXdibIvs11MYuUjjqk89V6/Dh5MMr0Uo
         B6pLsmWHOFnOj53hv+d4aGdGNnwu0m9mTxSBv4nFp9Ow9lJUSPbIDhIwppWOoS97G9Lc
         ALQ6uBGUdzg3ueGVTSMWeng8LCHYjXu9PdlMIqez9R7bubHNfUEJPfon6fA6J3e2PqSz
         LdNzwDXCrHFBGDbRgNuuNL41p01rgHEelPpDlSE/3I+krRUC9P3HWXgjSCPpyQe9/WD9
         FvxyDyl4Pp5dnAHuZ/7a1xyxWQ8wROneTo1YIwVKWxPwb8/NVTQXNPfxJaaUaqeEgug6
         Y+Hg==
X-Gm-Message-State: APjAAAVjBEGO0kVcqyecyKyS6w9EEyXpFvv9fLGHysbloaZMtQW481kv
	86VuQ1m0bNtUepM30Rfd/l4=
X-Google-Smtp-Source: APXvYqwcKL3jyjG+Q05IS3EGH0aAyYbfn8GyJ/f+uPWJKcGOZBZ2Rke2+3KMqMXXrRPQ6Hl6Ia7rmw==
X-Received: by 2002:a17:902:8608:: with SMTP id f8mr26441285plo.106.1575930637325;
        Mon, 09 Dec 2019 14:30:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:9142:: with SMTP id l63ls2993883pge.6.gmail; Mon, 09 Dec
 2019 14:30:36 -0800 (PST)
X-Received: by 2002:a63:c013:: with SMTP id h19mr21336641pgg.447.1575930636795;
        Mon, 09 Dec 2019 14:30:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575930636; cv=none;
        d=google.com; s=arc-20160816;
        b=XjPojHpA9tobPLwc0B1PK4G61ybegYggvjbHiqDkArf5YRDLKCAuIPH4sWcviiTKcN
         xbiDx7BemjAreANJlUlg5GZ/0S66KeoZiFoJpibykPfUuqAPi55gnukKgtwU1BvBeC5Z
         GFyhY8zcxYRNsvzyRiT0G7lFABTFT6bz8ZLPovdHWuB9s0mkJERTMif43bpEj2ARnbbU
         vgGDQDVvMl9ixDv6Ano/yJknh2cFfnU7aYAkO+BJfIg7V+LErtAu6dd0bFsQDR4Kl4fG
         h8PPMoVqQaPAIiaB/kkeHkl3niGJiByI6UcL9s3vK4HxEZyR1nE3q2fvBnLHYn83ky+A
         wVag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=H8zY8HeBa5KgvYz/EjuIzaxJJDtXffnPSw98z/UW9TA=;
        b=HWHYpafsKN5vgsf74qLPjcAVpNWHS26ZSSTXw8f3mX2BHoeG/U4fE95nDMWQ3G9n3o
         UnD66mpVK+5sIZKa/IKonQiikGLJBOL3n1WGlobvDiGZG09A+um9PVi7ydOY3nlGzXPv
         XD/optRPYehxvvqb0hR3WoWFATzhoSibHIHmtYOCz9gJZsjfPk1f15V10EVVHaRBbjP1
         cED71H0lTyhzK7ETSIJe9nYUxNZ0+INflRAsqF5YTZzoCMmjxxblo0hU6epnB+tndJX+
         wuU0SSCI6B/8KVkLy9zHcdLUomZiYskWNJSCA+LbWUmzLDcTZ5v66rIuV45fCEQyRenO
         GmFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q8FfRa48;
       spf=pass (google.com: domain of 3dmvuxqwkafm8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3DMvuXQwKAFM8yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id h18si60090plr.4.2019.12.09.14.30.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 14:30:36 -0800 (PST)
Received-SPF: pass (google.com: domain of 3dmvuxqwkafm8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id y127so10140898pfg.3
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 14:30:36 -0800 (PST)
X-Received: by 2002:a65:678f:: with SMTP id e15mr21151835pgr.130.1575930636283;
 Mon, 09 Dec 2019 14:30:36 -0800 (PST)
Date: Mon,  9 Dec 2019 14:29:56 -0800
In-Reply-To: <20191209222956.239798-1-ndesaulniers@google.com>
Message-Id: <20191209222956.239798-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20191209222956.239798-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH 2/2] hexagon: parenthesize registers in asm predicates
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: bcain@codeaurora.org
Cc: Nick Desaulniers <ndesaulniers@google.com>, lee.jones@linaro.org, 
	andriy.shevchenko@linux.intel.com, ztuowen@gmail.com, 
	mika.westerberg@linux.intel.com, mcgrof@kernel.org, 
	gregkh@linuxfoundation.org, alexios.zavras@intel.com, allison@lohutok.net, 
	will@kernel.org, rfontana@redhat.com, tglx@linutronix.de, 
	peterz@infradead.org, boqun.feng@gmail.com, mingo@redhat.com, 
	akpm@linux-foundation.org, geert@linux-m68k.org, 
	linux-hexagon@vger.kernel.org, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org, Sid Manning <sidneym@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=q8FfRa48;       spf=pass
 (google.com: domain of 3dmvuxqwkafm8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3DMvuXQwKAFM8yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
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

Hexagon requires that register predicates in assembly be parenthesized.

Link: https://github.com/ClangBuiltLinux/linux/issues/754
Suggested-by: Sid Manning <sidneym@codeaurora.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/hexagon/include/asm/atomic.h   |  8 ++++----
 arch/hexagon/include/asm/bitops.h   |  8 ++++----
 arch/hexagon/include/asm/cmpxchg.h  |  2 +-
 arch/hexagon/include/asm/futex.h    |  6 +++---
 arch/hexagon/include/asm/spinlock.h | 20 ++++++++++----------
 arch/hexagon/kernel/vm_entry.S      |  2 +-
 6 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/arch/hexagon/include/asm/atomic.h b/arch/hexagon/include/asm/atomic.h
index 12cd9231c4b8..0231d69c8bf2 100644
--- a/arch/hexagon/include/asm/atomic.h
+++ b/arch/hexagon/include/asm/atomic.h
@@ -91,7 +91,7 @@ static inline void atomic_##op(int i, atomic_t *v)			\
 		"1:	%0 = memw_locked(%1);\n"			\
 		"	%0 = "#op "(%0,%2);\n"				\
 		"	memw_locked(%1,P3)=%0;\n"			\
-		"	if !P3 jump 1b;\n"				\
+		"	if (!P3) jump 1b;\n"				\
 		: "=&r" (output)					\
 		: "r" (&v->counter), "r" (i)				\
 		: "memory", "p3"					\
@@ -107,7 +107,7 @@ static inline int atomic_##op##_return(int i, atomic_t *v)		\
 		"1:	%0 = memw_locked(%1);\n"			\
 		"	%0 = "#op "(%0,%2);\n"				\
 		"	memw_locked(%1,P3)=%0;\n"			\
-		"	if !P3 jump 1b;\n"				\
+		"	if (!P3) jump 1b;\n"				\
 		: "=&r" (output)					\
 		: "r" (&v->counter), "r" (i)				\
 		: "memory", "p3"					\
@@ -124,7 +124,7 @@ static inline int atomic_fetch_##op(int i, atomic_t *v)			\
 		"1:	%0 = memw_locked(%2);\n"			\
 		"	%1 = "#op "(%0,%3);\n"				\
 		"	memw_locked(%2,P3)=%1;\n"			\
-		"	if !P3 jump 1b;\n"				\
+		"	if (!P3) jump 1b;\n"				\
 		: "=&r" (output), "=&r" (val)				\
 		: "r" (&v->counter), "r" (i)				\
 		: "memory", "p3"					\
@@ -173,7 +173,7 @@ static inline int atomic_fetch_add_unless(atomic_t *v, int a, int u)
 		"	}"
 		"	memw_locked(%2, p3) = %1;"
 		"	{"
-		"		if !p3 jump 1b;"
+		"		if (!p3) jump 1b;"
 		"	}"
 		"2:"
 		: "=&r" (__oldval), "=&r" (tmp)
diff --git a/arch/hexagon/include/asm/bitops.h b/arch/hexagon/include/asm/bitops.h
index 47384b094b94..71429f756af0 100644
--- a/arch/hexagon/include/asm/bitops.h
+++ b/arch/hexagon/include/asm/bitops.h
@@ -38,7 +38,7 @@ static inline int test_and_clear_bit(int nr, volatile void *addr)
 	"1:	R12 = memw_locked(R10);\n"
 	"	{ P0 = tstbit(R12,R11); R12 = clrbit(R12,R11); }\n"
 	"	memw_locked(R10,P1) = R12;\n"
-	"	{if !P1 jump 1b; %0 = mux(P0,#1,#0);}\n"
+	"	{if (!P1) jump 1b; %0 = mux(P0,#1,#0);}\n"
 	: "=&r" (oldval)
 	: "r" (addr), "r" (nr)
 	: "r10", "r11", "r12", "p0", "p1", "memory"
@@ -62,7 +62,7 @@ static inline int test_and_set_bit(int nr, volatile void *addr)
 	"1:	R12 = memw_locked(R10);\n"
 	"	{ P0 = tstbit(R12,R11); R12 = setbit(R12,R11); }\n"
 	"	memw_locked(R10,P1) = R12;\n"
-	"	{if !P1 jump 1b; %0 = mux(P0,#1,#0);}\n"
+	"	{if (!P1) jump 1b; %0 = mux(P0,#1,#0);}\n"
 	: "=&r" (oldval)
 	: "r" (addr), "r" (nr)
 	: "r10", "r11", "r12", "p0", "p1", "memory"
@@ -88,7 +88,7 @@ static inline int test_and_change_bit(int nr, volatile void *addr)
 	"1:	R12 = memw_locked(R10);\n"
 	"	{ P0 = tstbit(R12,R11); R12 = togglebit(R12,R11); }\n"
 	"	memw_locked(R10,P1) = R12;\n"
-	"	{if !P1 jump 1b; %0 = mux(P0,#1,#0);}\n"
+	"	{if (!P1) jump 1b; %0 = mux(P0,#1,#0);}\n"
 	: "=&r" (oldval)
 	: "r" (addr), "r" (nr)
 	: "r10", "r11", "r12", "p0", "p1", "memory"
@@ -223,7 +223,7 @@ static inline int ffs(int x)
 	int r;
 
 	asm("{ P0 = cmp.eq(%1,#0); %0 = ct0(%1);}\n"
-		"{ if P0 %0 = #0; if !P0 %0 = add(%0,#1);}\n"
+		"{ if (P0) %0 = #0; if (!P0) %0 = add(%0,#1);}\n"
 		: "=&r" (r)
 		: "r" (x)
 		: "p0");
diff --git a/arch/hexagon/include/asm/cmpxchg.h b/arch/hexagon/include/asm/cmpxchg.h
index 6091322c3af9..92b8a02e588a 100644
--- a/arch/hexagon/include/asm/cmpxchg.h
+++ b/arch/hexagon/include/asm/cmpxchg.h
@@ -30,7 +30,7 @@ static inline unsigned long __xchg(unsigned long x, volatile void *ptr,
 	__asm__ __volatile__ (
 	"1:	%0 = memw_locked(%1);\n"    /*  load into retval */
 	"	memw_locked(%1,P0) = %2;\n" /*  store into memory */
-	"	if !P0 jump 1b;\n"
+	"	if (!P0) jump 1b;\n"
 	: "=&r" (retval)
 	: "r" (ptr), "r" (x)
 	: "memory", "p0"
diff --git a/arch/hexagon/include/asm/futex.h b/arch/hexagon/include/asm/futex.h
index cb635216a732..0191f7c7193e 100644
--- a/arch/hexagon/include/asm/futex.h
+++ b/arch/hexagon/include/asm/futex.h
@@ -16,7 +16,7 @@
 	    /* For example: %1 = %4 */ \
 	    insn \
 	"2: memw_locked(%3,p2) = %1;\n" \
-	"   if !p2 jump 1b;\n" \
+	"   if (!p2) jump 1b;\n" \
 	"   %1 = #0;\n" \
 	"3:\n" \
 	".section .fixup,\"ax\"\n" \
@@ -84,10 +84,10 @@ futex_atomic_cmpxchg_inatomic(u32 *uval, u32 __user *uaddr, u32 oldval,
 	"1: %1 = memw_locked(%3)\n"
 	"   {\n"
 	"      p2 = cmp.eq(%1,%4)\n"
-	"      if !p2.new jump:NT 3f\n"
+	"      if (!p2.new) jump:NT 3f\n"
 	"   }\n"
 	"2: memw_locked(%3,p2) = %5\n"
-	"   if !p2 jump 1b\n"
+	"   if (!p2) jump 1b\n"
 	"3:\n"
 	".section .fixup,\"ax\"\n"
 	"4: %0 = #%6\n"
diff --git a/arch/hexagon/include/asm/spinlock.h b/arch/hexagon/include/asm/spinlock.h
index bfe07d842ff3..ef103b73bec8 100644
--- a/arch/hexagon/include/asm/spinlock.h
+++ b/arch/hexagon/include/asm/spinlock.h
@@ -30,9 +30,9 @@ static inline void arch_read_lock(arch_rwlock_t *lock)
 	__asm__ __volatile__(
 		"1:	R6 = memw_locked(%0);\n"
 		"	{ P3 = cmp.ge(R6,#0); R6 = add(R6,#1);}\n"
-		"	{ if !P3 jump 1b; }\n"
+		"	{ if (!P3) jump 1b; }\n"
 		"	memw_locked(%0,P3) = R6;\n"
-		"	{ if !P3 jump 1b; }\n"
+		"	{ if (!P3) jump 1b; }\n"
 		:
 		: "r" (&lock->lock)
 		: "memory", "r6", "p3"
@@ -46,7 +46,7 @@ static inline void arch_read_unlock(arch_rwlock_t *lock)
 		"1:	R6 = memw_locked(%0);\n"
 		"	R6 = add(R6,#-1);\n"
 		"	memw_locked(%0,P3) = R6\n"
-		"	if !P3 jump 1b;\n"
+		"	if (!P3) jump 1b;\n"
 		:
 		: "r" (&lock->lock)
 		: "memory", "r6", "p3"
@@ -61,7 +61,7 @@ static inline int arch_read_trylock(arch_rwlock_t *lock)
 	__asm__ __volatile__(
 		"	R6 = memw_locked(%1);\n"
 		"	{ %0 = #0; P3 = cmp.ge(R6,#0); R6 = add(R6,#1);}\n"
-		"	{ if !P3 jump 1f; }\n"
+		"	{ if (!P3) jump 1f; }\n"
 		"	memw_locked(%1,P3) = R6;\n"
 		"	{ %0 = P3 }\n"
 		"1:\n"
@@ -78,9 +78,9 @@ static inline void arch_write_lock(arch_rwlock_t *lock)
 	__asm__ __volatile__(
 		"1:	R6 = memw_locked(%0)\n"
 		"	{ P3 = cmp.eq(R6,#0);  R6 = #-1;}\n"
-		"	{ if !P3 jump 1b; }\n"
+		"	{ if (!P3) jump 1b; }\n"
 		"	memw_locked(%0,P3) = R6;\n"
-		"	{ if !P3 jump 1b; }\n"
+		"	{ if (!P3) jump 1b; }\n"
 		:
 		: "r" (&lock->lock)
 		: "memory", "r6", "p3"
@@ -94,7 +94,7 @@ static inline int arch_write_trylock(arch_rwlock_t *lock)
 	__asm__ __volatile__(
 		"	R6 = memw_locked(%1)\n"
 		"	{ %0 = #0; P3 = cmp.eq(R6,#0);  R6 = #-1;}\n"
-		"	{ if !P3 jump 1f; }\n"
+		"	{ if (!P3) jump 1f; }\n"
 		"	memw_locked(%1,P3) = R6;\n"
 		"	%0 = P3;\n"
 		"1:\n"
@@ -117,9 +117,9 @@ static inline void arch_spin_lock(arch_spinlock_t *lock)
 	__asm__ __volatile__(
 		"1:	R6 = memw_locked(%0);\n"
 		"	P3 = cmp.eq(R6,#0);\n"
-		"	{ if !P3 jump 1b; R6 = #1; }\n"
+		"	{ if (!P3) jump 1b; R6 = #1; }\n"
 		"	memw_locked(%0,P3) = R6;\n"
-		"	{ if !P3 jump 1b; }\n"
+		"	{ if (!P3) jump 1b; }\n"
 		:
 		: "r" (&lock->lock)
 		: "memory", "r6", "p3"
@@ -139,7 +139,7 @@ static inline unsigned int arch_spin_trylock(arch_spinlock_t *lock)
 	__asm__ __volatile__(
 		"	R6 = memw_locked(%1);\n"
 		"	P3 = cmp.eq(R6,#0);\n"
-		"	{ if !P3 jump 1f; R6 = #1; %0 = #0; }\n"
+		"	{ if (!P3) jump 1f; R6 = #1; %0 = #0; }\n"
 		"	memw_locked(%1,P3) = R6;\n"
 		"	%0 = P3;\n"
 		"1:\n"
diff --git a/arch/hexagon/kernel/vm_entry.S b/arch/hexagon/kernel/vm_entry.S
index 65a1ea0eed2f..554371d92bed 100644
--- a/arch/hexagon/kernel/vm_entry.S
+++ b/arch/hexagon/kernel/vm_entry.S
@@ -369,7 +369,7 @@ ret_from_fork:
 		R26.L = #LO(do_work_pending);
 		R0 = #VM_INT_DISABLE;
 	}
-	if P0 jump check_work_pending
+	if (P0) jump check_work_pending
 	{
 		R0 = R25;
 		callr R24
-- 
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209222956.239798-3-ndesaulniers%40google.com.
