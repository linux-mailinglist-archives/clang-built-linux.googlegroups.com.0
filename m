Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6UG3D4AKGQE2APMHWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A40226FFE
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 22:50:03 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id s5sf12283861qkj.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 13:50:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595278202; cv=pass;
        d=google.com; s=arc-20160816;
        b=wW4pb7eXIin+7AvfoLCEp4KKCSsl3gLfVJIgq/XmB0hm+6nYrbM7wOZSVuY6Q5Pt03
         rIXLVV4kmxIRQ9ORX7AByPilOYuo1Xln9fT3DeIsTKfrN5d7yP+2gAyUvDTmb7K3Jo4a
         oRB1UWghcCmoZo7ZLDOUS7dA/Uh98AB/XgADbzH7nQCQoMcE+mrWUw3y98uLvvO+7+of
         qK09vmZnt5A6E+3NroDuUO7ZPNcNLCOGaN5IIXIutrQznqnJ2lGIrW/nS2P4LELA3Gbg
         XuVwC1cBRap5YdoML7fBNch9LVxnBDNCa+XREoy3x6ne4cQieYJnX66KLhTvx4rctBz0
         o5EQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=QXHRe1HtgtjC2vN+5unsN7F5mnVsAxltN4p6dBdx2G0=;
        b=Og8VWyY6VEBf9YjhQ4kGRXMBYPO99MQ7GCjy5AfZw8Akh5CfYsZsKXwi6DHtCSEN+a
         C9EJL+hEl61rE5AFYHLKYdrR9lm9KnMphkRuPG1tJ5MeiyMk2lDmQLt/Krk5EMnzeUIc
         KxeYGMFvNhuDRHh2GF8TePmlQ4Mpomvx5NQoK6CtC6vIPeVMTPYqEGL96+yHEsAqH++u
         /8zU2htWEjoMQ/nEKoKqdexeiPDUMP7s+NPde2Rtp385CNhHaL7SXkqiJCMe1M75/s8N
         LqxTI9SjnV4P1crIiPU+srRpJwPimGupi3WsRpzu3xEc9KZNer6EaMgIkRqctHyJ7fFn
         c8yA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PynqyNO2;
       spf=pass (google.com: domain of 3eqmwxwwkanyf56k2mdfa6jk8gg8d6.4ge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3eQMWXwwKANYF56K2MDFA6JK8GG8D6.4GE@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QXHRe1HtgtjC2vN+5unsN7F5mnVsAxltN4p6dBdx2G0=;
        b=UcMGzYAN7K+PCWAISUmuL6QbbfjDE/sGZhLG3/9d+GJJI03HcbteJD9HJI5HyMvXWf
         +++r7pjjKTOIn58KoLriGW6QA3fJkM9E84jkqjc6/Fin0BgSHJORSQuSvCKfFy2poq8G
         VCyKrXV/CzhZvhnW13SfTGFLR+qH+OnIeiH39Vu20Dj5zTcYEp09IBrsc2zXZ41d+741
         ImvZwgYkFMkI+hubYjos/39ZYjOcXOBe+BbpGmQ+UUMFcFGLvXdb3bczLfPRkHO+TsHr
         McoS9Ot7TK+SovG9RCZSpA/9haOx+m0Xhi+0PbEmOFmZug9gOroJ8e6vHEUsXvqJeap4
         zXnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QXHRe1HtgtjC2vN+5unsN7F5mnVsAxltN4p6dBdx2G0=;
        b=QPIACQ67UNAeho7g65LPYnB6fk+pOAE7vxGEo6JP5FDv7y9uVnhF9S3/fadRXkCL1L
         3Lq8dE37/f8VtJ68Ls8Bv0uZXRNMyuGRX+yjzH1zxjkLP3miZbOts24+k/2KC3FULy9I
         LVnfm/iOa//+gwL9Vnb1ddBRJLm371HvBUMaRQKJcpGY+XAMa9YcJp75aZJUn9IXRAAJ
         CfvChXiuBskESWnmJLIgjTTAwUrPYMoHVvMM4q+SVEjMmga+nmdoZW4x0lQBsV1hBNde
         YvjIG0KS3lIUTpAlTYdiz9RhvFwnLlDiFPMRa3jxK4zU/TlyMrt5nqtyRlg/EZwnTp4p
         9DaA==
X-Gm-Message-State: AOAM532RyN7jI/wFiJ/6AaDvyH1wbyVOEqW+WOpgYsCUVP6vQcIkfESD
	SH98x6VquVN4iC8mkUOPQkI=
X-Google-Smtp-Source: ABdhPJwinlvlbgw1KDfuYzqXnd4ZbkxSasGM8+LSklMNZ2Uq5BR7FZMjHncmJs/bkIQXeqkF5xbjwA==
X-Received: by 2002:a05:620a:7d6:: with SMTP id 22mr23578476qkb.311.1595278202239;
        Mon, 20 Jul 2020 13:50:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e415:: with SMTP id q21ls4217876qkc.9.gmail; Mon, 20 Jul
 2020 13:50:01 -0700 (PDT)
X-Received: by 2002:a37:b342:: with SMTP id c63mr24209338qkf.436.1595278201879;
        Mon, 20 Jul 2020 13:50:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595278201; cv=none;
        d=google.com; s=arc-20160816;
        b=xY+Ml7EqpcaMvLeWKUrQrFAlQPe+xg/YAGUme+3q+zxsKHceOZS+2zUjbG6m7ShEQi
         73/dSc3N34dJCFha4+kxk9Yna+wIG3dVikn6/QkwaGzIdzt36pGYr+8AUuiNzZCYhE0c
         ihD8mRcofBofxH06H7Uo4qDjh/G/GsAsFfYOfQwyvKeztAWAkg6OqBiv0VtZ6FbW6d03
         lQL1YA2rQCA5HBrqYTWpItI9nPAp1+6Kw/lgfhjdHtMeptn13UVmX0rcX5dGJsDt3xmV
         b4uNIxpmgiXpeBTy+Z5jD0NekkeFJqLW6W1uLLNZmrI1rjoQAwqmFA/5OaNgAJaiZj5N
         PmJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=moMBrUya8+f11J0lfoG20VXlS54zFWp92IgRf7/2Gwk=;
        b=yYoPQ3VU3xSmjs+CB1ZPcBFOKlRO5/UhiHKSv6WlsI+439AXENLZm3lQXYYS/xW0So
         brTyfaZSnZH2Q5QgarfErXX/mRx/jRuz60cQZKV9Pu/Z9NMz99T5dZa0c7V5hyukQ9Kg
         4tMs4zEWr5GcwaxREYi7G796eoCfKRMI46/rfxxlg7D1VtJx4RfJnI5GTFpOKuGWWtkS
         +HKMwaGidF7HboAlp5prjuIELzLW7V+ku83DlkMl6ohkCx715uoHrgOaEnp8SFoCexTj
         8DXMZqUM0+TAz4FY7HnHfQppFe4dReJcWfKEEhW8MP9XbGHSgaZ22VaDc8jcK81kvoHh
         LXYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PynqyNO2;
       spf=pass (google.com: domain of 3eqmwxwwkanyf56k2mdfa6jk8gg8d6.4ge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3eQMWXwwKANYF56K2MDFA6JK8GG8D6.4GE@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id d27si795303qtw.1.2020.07.20.13.50.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 13:50:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3eqmwxwwkanyf56k2mdfa6jk8gg8d6.4ge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id k127so22911544ybk.11
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 13:50:01 -0700 (PDT)
X-Received: by 2002:a25:138a:: with SMTP id 132mr36725992ybt.334.1595278201430;
 Mon, 20 Jul 2020 13:50:01 -0700 (PDT)
Date: Mon, 20 Jul 2020 13:49:17 -0700
In-Reply-To: <20200720204925.3654302-1-ndesaulniers@google.com>
Message-Id: <20200720204925.3654302-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200720204925.3654302-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH v3 03/11] x86/percpu: Clean up percpu_from_op()
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
 header.i=@google.com header.s=20161025 header.b=PynqyNO2;       spf=pass
 (google.com: domain of 3eqmwxwwkanyf56k2mdfa6jk8gg8d6.4ge@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3eQMWXwwKANYF56K2MDFA6JK8GG8D6.4GE@flex--ndesaulniers.bounces.google.com;
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
 arch/x86/include/asm/percpu.h | 50 +++++++++++------------------------
 1 file changed, 15 insertions(+), 35 deletions(-)

diff --git a/arch/x86/include/asm/percpu.h b/arch/x86/include/asm/percpu.h
index fb280fba94c5..a40d2e055f58 100644
--- a/arch/x86/include/asm/percpu.h
+++ b/arch/x86/include/asm/percpu.h
@@ -190,33 +190,13 @@ do {									\
 	}								\
 } while (0)
 
-#define percpu_from_op(qual, op, var)			\
-({							\
-	typeof(var) pfo_ret__;				\
-	switch (sizeof(var)) {				\
-	case 1:						\
-		asm qual (op "b "__percpu_arg(1)",%0"	\
-		    : "=q" (pfo_ret__)			\
-		    : "m" (var));			\
-		break;					\
-	case 2:						\
-		asm qual (op "w "__percpu_arg(1)",%0"	\
-		    : "=r" (pfo_ret__)			\
-		    : "m" (var));			\
-		break;					\
-	case 4:						\
-		asm qual (op "l "__percpu_arg(1)",%0"	\
-		    : "=r" (pfo_ret__)			\
-		    : "m" (var));			\
-		break;					\
-	case 8:						\
-		asm qual (op "q "__percpu_arg(1)",%0"	\
-		    : "=r" (pfo_ret__)			\
-		    : "m" (var));			\
-		break;					\
-	default: __bad_percpu_size();			\
-	}						\
-	pfo_ret__;					\
+#define percpu_from_op(size, qual, op, _var)				\
+({									\
+	__pcpu_type_##size pfo_val__;					\
+	asm qual (__pcpu_op2_##size(op, __percpu_arg([var]), "%[val]")	\
+	    : [val] __pcpu_reg_##size("=", pfo_val__)			\
+	    : [var] "m" (_var));					\
+	(typeof(_var))(unsigned long) pfo_val__;			\
 })
 
 #define percpu_stable_op(op, var)			\
@@ -401,9 +381,9 @@ do {									\
  */
 #define this_cpu_read_stable(var)	percpu_stable_op("mov", var)
 
-#define raw_cpu_read_1(pcp)		percpu_from_op(, "mov", pcp)
-#define raw_cpu_read_2(pcp)		percpu_from_op(, "mov", pcp)
-#define raw_cpu_read_4(pcp)		percpu_from_op(, "mov", pcp)
+#define raw_cpu_read_1(pcp)		percpu_from_op(1, , "mov", pcp)
+#define raw_cpu_read_2(pcp)		percpu_from_op(2, , "mov", pcp)
+#define raw_cpu_read_4(pcp)		percpu_from_op(4, , "mov", pcp)
 
 #define raw_cpu_write_1(pcp, val)	percpu_to_op(1, , "mov", (pcp), val)
 #define raw_cpu_write_2(pcp, val)	percpu_to_op(2, , "mov", (pcp), val)
@@ -433,9 +413,9 @@ do {									\
 #define raw_cpu_xchg_2(pcp, val)	raw_percpu_xchg_op(pcp, val)
 #define raw_cpu_xchg_4(pcp, val)	raw_percpu_xchg_op(pcp, val)
 
-#define this_cpu_read_1(pcp)		percpu_from_op(volatile, "mov", pcp)
-#define this_cpu_read_2(pcp)		percpu_from_op(volatile, "mov", pcp)
-#define this_cpu_read_4(pcp)		percpu_from_op(volatile, "mov", pcp)
+#define this_cpu_read_1(pcp)		percpu_from_op(1, volatile, "mov", pcp)
+#define this_cpu_read_2(pcp)		percpu_from_op(2, volatile, "mov", pcp)
+#define this_cpu_read_4(pcp)		percpu_from_op(4, volatile, "mov", pcp)
 #define this_cpu_write_1(pcp, val)	percpu_to_op(1, volatile, "mov", (pcp), val)
 #define this_cpu_write_2(pcp, val)	percpu_to_op(2, volatile, "mov", (pcp), val)
 #define this_cpu_write_4(pcp, val)	percpu_to_op(4, volatile, "mov", (pcp), val)
@@ -488,7 +468,7 @@ do {									\
  * 32 bit must fall back to generic operations.
  */
 #ifdef CONFIG_X86_64
-#define raw_cpu_read_8(pcp)			percpu_from_op(, "mov", pcp)
+#define raw_cpu_read_8(pcp)			percpu_from_op(8, , "mov", pcp)
 #define raw_cpu_write_8(pcp, val)		percpu_to_op(8, , "mov", (pcp), val)
 #define raw_cpu_add_8(pcp, val)			percpu_add_op(, (pcp), val)
 #define raw_cpu_and_8(pcp, val)			percpu_to_op(8, , "and", (pcp), val)
@@ -497,7 +477,7 @@ do {									\
 #define raw_cpu_xchg_8(pcp, nval)		raw_percpu_xchg_op(pcp, nval)
 #define raw_cpu_cmpxchg_8(pcp, oval, nval)	percpu_cmpxchg_op(, pcp, oval, nval)
 
-#define this_cpu_read_8(pcp)			percpu_from_op(volatile, "mov", pcp)
+#define this_cpu_read_8(pcp)			percpu_from_op(8, volatile, "mov", pcp)
 #define this_cpu_write_8(pcp, val)		percpu_to_op(8, volatile, "mov", (pcp), val)
 #define this_cpu_add_8(pcp, val)		percpu_add_op(volatile, (pcp), val)
 #define this_cpu_and_8(pcp, val)		percpu_to_op(8, volatile, "and", (pcp), val)
-- 
2.28.0.rc0.105.gf9edc3c819-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720204925.3654302-4-ndesaulniers%40google.com.
