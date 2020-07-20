Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEEH3D4AKGQE4OZBH4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 61123227008
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 22:50:25 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id y3sf11928665ily.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 13:50:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595278224; cv=pass;
        d=google.com; s=arc-20160816;
        b=efT2e3NnfQuvvxNvdHs0SoN5hkcI/ZOGc1GEPT7TxtOWBs/Tutu8DHPxNeMG6dbsF/
         Ek89jcleBsTaBBQFUQhEtc0OvfaaRTF5qczo8I+OLJXRRydXRR8k76j8gTZKGfRWQeuu
         HQcDUE5HETTXW8va+1a6QTbk2SkcS6gnuWVikLDoxsDOdkloXER5bZrE+/h3RxwLSiPN
         2IzdWXUaylnXGDv3Js/6p5EPASXDIZ7O+Q2R6ELSIB6XJEchwb+tQq44aAOVA1Hr1Run
         8JYN8DLwBqdcNz1Q/nPDndwb3RpeCalr8PHySGbTFtjGqVwXRHjh2PI9/IEINB4I+weG
         lmcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=YFXx2/jq7/v42Y1zzeP3J+XNEe8erUnQ+SkGRs+LBoA=;
        b=FRvxsBHmXWlq0OdSMOMZUelI1yj5OYWw1ylm4n3hmJqShKgcAHhaeCpQweTVMjpM/C
         nJxMhnweC4/Ly5W84sW7So9Ugm4nFjhKgC0LZIfCK8PpGZQAtC8K5sijm1BmHnLmqIGM
         JgldhnNUJ/flSl/u1fbRC3lptKK587Uj1mxrB1OxgTXxYM8rkAPGsnt6aKlX8zM3/NSm
         Y5oIuxKkclIqDy6YrA/qxIPhm0/Ba9udjFYVwMFf8mKeiXWb1pMipZzeIFSxtzDngDJH
         Fj12AXIe689K18txEFjxfUpuqfQ3dhXGXWY1wGfhmYwT1NRGnOC+xr1Dra74ZSgQnDvq
         OQEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lO+O4mHS;
       spf=pass (google.com: domain of 3jwmwxwwkaowbrsgoizbwsfguccuzs.qca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3jwMWXwwKAOwbRSgOiZbWSfgUccUZS.Qca@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YFXx2/jq7/v42Y1zzeP3J+XNEe8erUnQ+SkGRs+LBoA=;
        b=iwsb22DI2q4pDQ3QCbzqpuDVpEyhATGgLaqwnH8JjfZP/n6/HyVM5AV2n7+IL3JyP0
         ZJRPUIxS5XouAfbs7UdqamXR5pkKPgYJm4kjdCAo9KcYXf19b5MpoOD8i8Ti8BhjSek/
         l0HaD+LnyQSrdWVpeG0RbGoTWWoj/3u+W3t+YPpv+lb+ym8/HCQIL5Hg/ndXWMwzmetg
         dfywSpReSKwqGM+I7kBhR32Hfp7VCjC4syKQx4hKFpQ0kPL5p+8yCqYidTXOQgKybvU5
         0QiPk6Kh6XFoovjR7QUjPck3Bi7TaF9F5JqLHAZitsfRwCfHLtPpgi2ZLYOy3Zl40qXl
         Znnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YFXx2/jq7/v42Y1zzeP3J+XNEe8erUnQ+SkGRs+LBoA=;
        b=ttO0eNZgznx1DLjJEsCSjcokFzgm0OdTevfkbx8+ijADsn9gILoonZuCCg6gIF6gZA
         FIA5e4oEbhh4OwsHH38kxOKHFj5vd4PwtLH4aWsDYWVeZo4M0HGlUutC9O6jO0Z7kPix
         DrjlRgH14HIaDV8QyadY4FK9eu/a0Q37ujdpSC6UE0vbrMziJ8wIOkRLwg1stogVy3Gd
         AYQSiDSBuvT6niVLpcvRmPpyt57eftQ2FXbaNzELJilPg8yZnzfoFbJqpGzl8wSDbBNn
         ikQIHfokDM0nsMIN/6fLXpErMxRy7ELpu3jWqpednZ91MqO85r1gq4IrdtX2uz1adsCX
         WkrQ==
X-Gm-Message-State: AOAM5317aQ2f8HhRQVgR5+p+p2zcIeYxeDTbBR+y6n2m+KG7EcLMCsqy
	J9LDM1MFgzg/OPPPc74WMQM=
X-Google-Smtp-Source: ABdhPJyg8K6AEDvKr9gJJ2ztkAnZKGus0XkgDeV4UJzm5VyrWyjArE6yys/fvGIOdQrwy0P/ho7P0g==
X-Received: by 2002:a92:5a52:: with SMTP id o79mr24462292ilb.89.1595278224148;
        Mon, 20 Jul 2020 13:50:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ab10:: with SMTP id v16ls4727104ilh.10.gmail; Mon, 20
 Jul 2020 13:50:23 -0700 (PDT)
X-Received: by 2002:a92:7949:: with SMTP id u70mr25384827ilc.88.1595278223772;
        Mon, 20 Jul 2020 13:50:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595278223; cv=none;
        d=google.com; s=arc-20160816;
        b=P0uJTcguHdXPDDim1kUYJjhTtVf5F8MIsjRkoDfUWLPXO40+1Ve/1vmtt1de4hj9DD
         0YtE1pfCKo7RFfpkmzPjppBVbDXf65GOeOZL/17wwbAdlvDYXWE0DKUMvAS1pjDmrzqh
         B1JcOW8Tj/c/s4SwmLWZNPUcjqAw3CeXBw1RjqpAjsBzU6mdrCcvOLH3TWLkH7fA8pwp
         YkP56KhTIX3gnUez+hPLmdw4nlwM4+azqvrDKXNWjIighsAIrUnwQBjRILIaa5T3A/Zd
         vVa2j/+pxNqNK2+gsiEq1fBNOpJyq0QcOmfryLsXefUulXAplBdz/8q8Zjrm3r3+lJn4
         iO4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=9frz7q+80dwOHjUq75HZy9e8vMrwxF3ixYJK0hAP0kI=;
        b=ZCy/fGywSxclqvjIfPPuFBsKF4ComgZG/6JxiO6lZpgtF9M+DHJSWRlicq4aD9trJD
         ctoPzaiHES3ABW6339ahsc8Nn4T3/QHiyISzb+RUCYvJDSgcTdlE0J8/6ilOYkiWhNcX
         GnFR441QXo0HKExD6KywCg7ncxQDfaPAH0i8+awEpGylVViYcMavIMiya9Hz30jEKlZO
         E2ehN/QyHPA02e3g49NexHiPnF8CnwtG2Ezi/cs4U2wxoNlu/7OKhGLSDtWObQqozaN0
         ubKbKR/8PBQdz7qZ8OMPOaD3glCfF85w/mDfH3u0YtSSxejOc3h40yw41lRAnh6sJK6a
         e32A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lO+O4mHS;
       spf=pass (google.com: domain of 3jwmwxwwkaowbrsgoizbwsfguccuzs.qca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3jwMWXwwKAOwbRSgOiZbWSfgUccUZS.Qca@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id t7si1025855ilh.2.2020.07.20.13.50.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 13:50:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jwmwxwwkaowbrsgoizbwsfguccuzs.qca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id x184so23056973ybx.10
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 13:50:23 -0700 (PDT)
X-Received: by 2002:a25:c6c7:: with SMTP id k190mr40022859ybf.11.1595278223197;
 Mon, 20 Jul 2020 13:50:23 -0700 (PDT)
Date: Mon, 20 Jul 2020 13:49:21 -0700
In-Reply-To: <20200720204925.3654302-1-ndesaulniers@google.com>
Message-Id: <20200720204925.3654302-8-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200720204925.3654302-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH v3 07/11] x86/percpu: Clean up percpu_xchg_op()
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Andrew Morton <akpm@linux-foundation.org>, Peter Zijlstra <peterz@infradead.org>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Brian Gerst <brgerst@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lO+O4mHS;       spf=pass
 (google.com: domain of 3jwmwxwwkaowbrsgoizbwsfguccuzs.qca@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3jwMWXwwKAOwbRSgOiZbWSfgUccUZS.Qca@flex--ndesaulniers.bounces.google.com;
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

From: Brian Gerst <brgerst@gmail.com>

The core percpu macros already have a switch on the data size, so the switch
in the x86 code is redundant and produces more dead code.

Also use appropriate types for the width of the instructions.  This avoids
errors when compiling with Clang.

Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Linus Torvalds <torvalds@linux-foundation.org>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Signed-off-by: Brian Gerst <brgerst@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/x86/include/asm/percpu.h | 61 +++++++++++------------------------
 1 file changed, 18 insertions(+), 43 deletions(-)

diff --git a/arch/x86/include/asm/percpu.h b/arch/x86/include/asm/percpu.h
index 0776a11e7e11..ac6d7e76c0d4 100644
--- a/arch/x86/include/asm/percpu.h
+++ b/arch/x86/include/asm/percpu.h
@@ -215,46 +215,21 @@ do {									\
  * expensive due to the implied lock prefix.  The processor cannot prefetch
  * cachelines if xchg is used.
  */
-#define percpu_xchg_op(qual, var, nval)					\
+#define percpu_xchg_op(size, qual, _var, _nval)				\
 ({									\
-	typeof(var) pxo_ret__;						\
-	typeof(var) pxo_new__ = (nval);					\
-	switch (sizeof(var)) {						\
-	case 1:								\
-		asm qual ("\n\tmov "__percpu_arg(1)",%%al"		\
-		    "\n1:\tcmpxchgb %2, "__percpu_arg(1)		\
-		    "\n\tjnz 1b"					\
-			    : "=&a" (pxo_ret__), "+m" (var)		\
-			    : "q" (pxo_new__)				\
-			    : "memory");				\
-		break;							\
-	case 2:								\
-		asm qual ("\n\tmov "__percpu_arg(1)",%%ax"		\
-		    "\n1:\tcmpxchgw %2, "__percpu_arg(1)		\
-		    "\n\tjnz 1b"					\
-			    : "=&a" (pxo_ret__), "+m" (var)		\
-			    : "r" (pxo_new__)				\
-			    : "memory");				\
-		break;							\
-	case 4:								\
-		asm qual ("\n\tmov "__percpu_arg(1)",%%eax"		\
-		    "\n1:\tcmpxchgl %2, "__percpu_arg(1)		\
-		    "\n\tjnz 1b"					\
-			    : "=&a" (pxo_ret__), "+m" (var)		\
-			    : "r" (pxo_new__)				\
-			    : "memory");				\
-		break;							\
-	case 8:								\
-		asm qual ("\n\tmov "__percpu_arg(1)",%%rax"		\
-		    "\n1:\tcmpxchgq %2, "__percpu_arg(1)		\
-		    "\n\tjnz 1b"					\
-			    : "=&a" (pxo_ret__), "+m" (var)		\
-			    : "r" (pxo_new__)				\
-			    : "memory");				\
-		break;							\
-	default: __bad_percpu_size();					\
-	}								\
-	pxo_ret__;							\
+	__pcpu_type_##size pxo_old__;					\
+	__pcpu_type_##size pxo_new__ = __pcpu_cast_##size(_nval);	\
+	asm qual (__pcpu_op2_##size("mov", __percpu_arg([var]),		\
+				    "%[oval]")				\
+		  "\n1:\t"						\
+		  __pcpu_op2_##size("cmpxchg", "%[nval]",		\
+				    __percpu_arg([var]))		\
+		  "\n\tjnz 1b"						\
+		  : [oval] "=&a" (pxo_old__),				\
+		    [var] "+m" (_var)					\
+		  : [nval] __pcpu_reg_##size(, pxo_new__)		\
+		  : "memory");						\
+	(typeof(_var))(unsigned long) pxo_old__;			\
 })
 
 /*
@@ -354,9 +329,9 @@ do {									\
 #define this_cpu_or_1(pcp, val)		percpu_to_op(1, volatile, "or", (pcp), val)
 #define this_cpu_or_2(pcp, val)		percpu_to_op(2, volatile, "or", (pcp), val)
 #define this_cpu_or_4(pcp, val)		percpu_to_op(4, volatile, "or", (pcp), val)
-#define this_cpu_xchg_1(pcp, nval)	percpu_xchg_op(volatile, pcp, nval)
-#define this_cpu_xchg_2(pcp, nval)	percpu_xchg_op(volatile, pcp, nval)
-#define this_cpu_xchg_4(pcp, nval)	percpu_xchg_op(volatile, pcp, nval)
+#define this_cpu_xchg_1(pcp, nval)	percpu_xchg_op(1, volatile, pcp, nval)
+#define this_cpu_xchg_2(pcp, nval)	percpu_xchg_op(2, volatile, pcp, nval)
+#define this_cpu_xchg_4(pcp, nval)	percpu_xchg_op(4, volatile, pcp, nval)
 
 #define raw_cpu_add_return_1(pcp, val)		percpu_add_return_op(1, , pcp, val)
 #define raw_cpu_add_return_2(pcp, val)		percpu_add_return_op(2, , pcp, val)
@@ -409,7 +384,7 @@ do {									\
 #define this_cpu_and_8(pcp, val)		percpu_to_op(8, volatile, "and", (pcp), val)
 #define this_cpu_or_8(pcp, val)			percpu_to_op(8, volatile, "or", (pcp), val)
 #define this_cpu_add_return_8(pcp, val)		percpu_add_return_op(8, volatile, pcp, val)
-#define this_cpu_xchg_8(pcp, nval)		percpu_xchg_op(volatile, pcp, nval)
+#define this_cpu_xchg_8(pcp, nval)		percpu_xchg_op(8, volatile, pcp, nval)
 #define this_cpu_cmpxchg_8(pcp, oval, nval)	percpu_cmpxchg_op(volatile, pcp, oval, nval)
 
 /*
-- 
2.28.0.rc0.105.gf9edc3c819-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720204925.3654302-8-ndesaulniers%40google.com.
