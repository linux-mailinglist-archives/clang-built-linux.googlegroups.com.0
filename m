Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF4H3D4AKGQE5S7EERA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED9C22700B
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 22:50:33 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id h75sf13466856pfe.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 13:50:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595278232; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q+3Fk1TTDc8d+BsViQvS5fYubuB9XxYnWBq3usJ+pbCJsgMXFOKGQzuHCdsH2EvmlG
         OyT7ZUQ/ovCwM4oF4WC/YgItqkzCm0nictei5QIywSZHflnaOOvmN4rHHiH7H7FPLemz
         jeZebusvnBvLHSmk2yknc1hwO1E5Rzqn4M8MCcThehBtEBPnRLvEznlKD917k4/0ARdw
         VQh2upAJMC30g4jQzbPLOVxbCHM3d9nCIWUKQXs/CdJnVZkAVInu71kZq6fjv8MJ0Hpm
         moa8S7IJx8Xb8McUEVxzouPs8MZp7/Sa0Y3zL+amTunnW0SVFCcVnKGMwu4OTLmWEVVB
         GHBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=b6orHtifOzKEWXAQiSD1YEZ2H2vBfkbvNr0HPqV07AA=;
        b=eyzF+E+zZh8v96d3Nx5zO6tgulUz4Ka1YS3arRdbUeRHNmAJq7BZtL9wFci5iczJsy
         ER1TDd29hS2hn8WyEGfO2lI+0knSq5ixmPoiPiA4Bp3D+FY9uVVz0v0uMkVAX2lIYYXQ
         LHfHud8r/o4JGYmC9gCp856wRu4AU8KIYw8ccPD9DRbF0DECCtmC6l92vtNzgG17Tbfn
         3gOLbbzBZ5BZyrc1q5fCRGAcg1vx/tE579iQYb5ec5zUlUPr1vMRN8G/PBOH36FfEfdR
         3b+c6e5vJEzk7CQyS4ciLLuBSJIg4t+4i03F1fvqAMPj1D8MfgqZRNgj8xBeBZViqOEK
         ZEYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G0oYaHUj;
       spf=pass (google.com: domain of 3lgmwxwwkapmiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3lgMWXwwKAPMiYZnVpgidZmnbjjbgZ.Xjh@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b6orHtifOzKEWXAQiSD1YEZ2H2vBfkbvNr0HPqV07AA=;
        b=rrMLtjz4jvLMZhn4WOFkuOwBbNh0p3LmjTm9641xa2v/zgCIb5Gsq3q8F1oOJVXxUP
         i8L5aauRMhmmhYC3TSAMNbqcRN/C80q8enUt9cQN8m65vEq33EQUnX2xGXwtq2IJ5xpl
         KJkDQcNHDwS6CziFH6Kmf5S60kLfvaBrEXPM46Ls2a1OJAAyG0IaDQgwIClsbircCxYr
         UyEwbqYo0iEXW5XWQK8yW7yJ1vF6Fr7wtRSf+GdbfeEi+y28ZL9tNMXTQq9fUT/VTqbc
         VFe7pNV+L99pjb0b/sPQRoMoLsQeyyyfKNU7w0WoQqOhJhNuoSqWU40lbQuXQnnrhKuz
         loqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b6orHtifOzKEWXAQiSD1YEZ2H2vBfkbvNr0HPqV07AA=;
        b=mRWG/bwr2kK/2Zv9tDfzr7qXnLmqWUivyeco7Z8siXfavHZCmjGWXYn40H+V0+XouS
         qVXtwd/s7xox7wSC+J59v0ZUBJnZacOTZbPjMrOrlZ/a5iH7jBA1QVjK1cc8I/MIBCdV
         XKjyPz1czmsd9+6tTwdnD/f4thRqVJ0NrBgNZqzNl741TXQzql/4A202enSpKwmmS1Rb
         lTn7zMwuFhAOklO4Il3y+oHQFaMEAOUcdP3XMhuqctO4x1nxErCxBg2SWkkbE8pNF+ib
         C4YzXbELUAY4A7PFN9NEPy5MHm9aQLhOgxWWdYJuJaBLOqse2N6WL+Sc2f/F0qeLX5Dy
         44KQ==
X-Gm-Message-State: AOAM533r6Jjpg+AkXfoUoyPIyOv8VUSzDuERy5Ouq+MvEejqzvzL6Q+l
	coJ9ts4gYrN035QXNlmREWM=
X-Google-Smtp-Source: ABdhPJxYZuMnLLpn1Rx4TuiF+KEUG4KY9YLqBhmnRnypL6sw8V/eX54ow/RHuy410WWTIiViEwuoKQ==
X-Received: by 2002:a62:cdc4:: with SMTP id o187mr21649595pfg.200.1595278232098;
        Mon, 20 Jul 2020 13:50:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f450:: with SMTP id p16ls2160480pgk.5.gmail; Mon, 20 Jul
 2020 13:50:31 -0700 (PDT)
X-Received: by 2002:a62:7a07:: with SMTP id v7mr20886223pfc.172.1595278231457;
        Mon, 20 Jul 2020 13:50:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595278231; cv=none;
        d=google.com; s=arc-20160816;
        b=DIZ3vBG3f9G6L9CwQzc72XsKs/1UKor/sIuvugVEFq17WGkWVeE7Ot7fU+aBIFpjYk
         NJpa9lBEue7CIzdgSv3cNnGiTVrK6jsMMKr/xomCFI9rebBpe0xSsPkaMWy7K4knpCPJ
         4FBkYiEY3NG5rkwGA6wgAdgnSTCiH9Gy7HMAM4rAuzDOpnX2nY2mdZogDaw7yplcscaU
         OLmxx8AUnU2vRjTIzF8zyj9qO0x54FSsLut8o3963y7cVrMvPACVjBzsfTbPsAoB8RJp
         l0SUPrrlf1lLtYmb6c5Qzy89a7KG2Iub9QHz3Gv1w7OfaM41AsAUeg8SeO7Up46TgLbT
         wwew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=t/rXoQERR5pj1vBkNrq0HXWlaSRuz2vmMuIwif9Ddok=;
        b=YKb6nap8kFdb9k8i+x3gBUwQ7ls0Wsbqe+TLNeYnDOwwc9jVA8SbrtecsJS9zcMlcx
         a1DQSC9B2a2OTrPn8J/HqQ0SjnBmVJDZX/dqhIloGR2W3R7l8fQlyoYIaTd+lsem4AmL
         /oBxzkfIg+69Qe4CjFt/ZslL+4wu4afgbC1eR3ZcsM4rzfLeZ8D0/99wOUI8ef3pM38l
         /2TyVDF9yGNbyHPIUIf+s4FVrsX5zoByOy5uTX9nGwD+E+nq4Pq7gaX7ZXLMd8T/2nb2
         K9Op4v/DYeGNG4uoi3nZpadVDu7SCuF133cmaTGqWWpo0Z2D+7u7WBmfF3uvZdL4uoR+
         HOWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G0oYaHUj;
       spf=pass (google.com: domain of 3lgmwxwwkapmiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3lgMWXwwKAPMiYZnVpgidZmnbjjbgZ.Xjh@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id a6si1003739pgw.3.2020.07.20.13.50.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 13:50:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lgmwxwwkapmiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id e81so22937914ybb.3
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 13:50:31 -0700 (PDT)
X-Received: by 2002:a25:dc84:: with SMTP id y126mr37614831ybe.350.1595278230622;
 Mon, 20 Jul 2020 13:50:30 -0700 (PDT)
Date: Mon, 20 Jul 2020 13:49:23 -0700
In-Reply-To: <20200720204925.3654302-1-ndesaulniers@google.com>
Message-Id: <20200720204925.3654302-10-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200720204925.3654302-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH v3 09/11] x86/percpu: Clean up percpu_stable_op()
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
 header.i=@google.com header.s=20161025 header.b=G0oYaHUj;       spf=pass
 (google.com: domain of 3lgmwxwwkapmiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3lgMWXwwKAPMiYZnVpgidZmnbjjbgZ.Xjh@flex--ndesaulniers.bounces.google.com;
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

Use __pcpu_size_call_return() to simplify this_cpu_read_stable().
Also remove __bad_percpu_size() which is now unused.

Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Linus Torvalds <torvalds@linux-foundation.org>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Signed-off-by: Brian Gerst <brgerst@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/x86/include/asm/percpu.h | 41 ++++++++++-------------------------
 1 file changed, 12 insertions(+), 29 deletions(-)

diff --git a/arch/x86/include/asm/percpu.h b/arch/x86/include/asm/percpu.h
index 7efc0b5c4ff0..cf2b9c2a241e 100644
--- a/arch/x86/include/asm/percpu.h
+++ b/arch/x86/include/asm/percpu.h
@@ -85,7 +85,6 @@
 
 /* For arch-specific code, we can use direct single-insn ops (they
  * don't give an lvalue though). */
-extern void __bad_percpu_size(void);
 
 #define __pcpu_type_1 u8
 #define __pcpu_type_2 u16
@@ -167,33 +166,13 @@ do {									\
 	(typeof(_var))(unsigned long) pfo_val__;			\
 })
 
-#define percpu_stable_op(op, var)			\
-({							\
-	typeof(var) pfo_ret__;				\
-	switch (sizeof(var)) {				\
-	case 1:						\
-		asm(op "b "__percpu_arg(P1)",%0"	\
-		    : "=q" (pfo_ret__)			\
-		    : "p" (&(var)));			\
-		break;					\
-	case 2:						\
-		asm(op "w "__percpu_arg(P1)",%0"	\
-		    : "=r" (pfo_ret__)			\
-		    : "p" (&(var)));			\
-		break;					\
-	case 4:						\
-		asm(op "l "__percpu_arg(P1)",%0"	\
-		    : "=r" (pfo_ret__)			\
-		    : "p" (&(var)));			\
-		break;					\
-	case 8:						\
-		asm(op "q "__percpu_arg(P1)",%0"	\
-		    : "=r" (pfo_ret__)			\
-		    : "p" (&(var)));			\
-		break;					\
-	default: __bad_percpu_size();			\
-	}						\
-	pfo_ret__;					\
+#define percpu_stable_op(size, op, _var)				\
+({									\
+	__pcpu_type_##size pfo_val__;					\
+	asm(__pcpu_op2_##size(op, __percpu_arg(P[var]), "%[val]")	\
+	    : [val] __pcpu_reg_##size("=", pfo_val__)			\
+	    : [var] "p" (&(_var)));					\
+	(typeof(_var))(unsigned long) pfo_val__;			\
 })
 
 /*
@@ -258,7 +237,11 @@ do {									\
  * per-thread variables implemented as per-cpu variables and thus
  * stable for the duration of the respective task.
  */
-#define this_cpu_read_stable(var)	percpu_stable_op("mov", var)
+#define this_cpu_read_stable_1(pcp)	percpu_stable_op(1, "mov", pcp)
+#define this_cpu_read_stable_2(pcp)	percpu_stable_op(2, "mov", pcp)
+#define this_cpu_read_stable_4(pcp)	percpu_stable_op(4, "mov", pcp)
+#define this_cpu_read_stable_8(pcp)	percpu_stable_op(8, "mov", pcp)
+#define this_cpu_read_stable(pcp)	__pcpu_size_call_return(this_cpu_read_stable_, pcp)
 
 #define raw_cpu_read_1(pcp)		percpu_from_op(1, , "mov", pcp)
 #define raw_cpu_read_2(pcp)		percpu_from_op(2, , "mov", pcp)
-- 
2.28.0.rc0.105.gf9edc3c819-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720204925.3654302-10-ndesaulniers%40google.com.
