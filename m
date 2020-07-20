Return-Path: <clang-built-linux+bncBDYJPJO25UGBBE4H3D4AKGQE3GRAZ7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1BA227009
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 22:50:28 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id j37sf8814266ota.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 13:50:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595278227; cv=pass;
        d=google.com; s=arc-20160816;
        b=OdjAjSvIxCxSZV91KbSWOL3KraeVFgviM2QQb8/oO0b8501DXj67JkfYn4/l+xIX+d
         hp4jZs0SeNWHwQ6ZzwmWhRCaAD8Im4mODDZWy1SiK8qySD3l1e7nxXH3lWPW+3yuzrT8
         7+1UY54qBhGXpvS7OKCwzEeaasaS0ibJL7rlZJeVyu31U2k5DYkoN6BB9M7CUaz1Fd4L
         5gCn0D1MhWCGmaOjcXmO5Yus7nI3/iCk1vtflwNHZWRoXmPTy6LJtmByOPhk0hI/MJaz
         OqFwUOa9SjfwAPnVABDPucfi3lIXoQ1RLTW/r654NnYJhiqjs9DxMJ5LqB9zIp1W6UXG
         q3YQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=gdM/60YMDRflJEd2sbjqoMqcwJr0VE1lWVoiPyhXtks=;
        b=boHVUF4dSCt++pyRL0QigeN7sw6Aymbl4UnoVty3dSRyMRT6kDfOLZvki1t6WrVLA5
         hLk8zHXZaei1LjlF3UnnBPexcrlQKVgSReaTFzO/TCg1GstrXmxkqE3D02H7I6940jAv
         0jIL87/P5Q2TCvSZdwg8+dfgzLxZ1dVZUdng+0UigdNdy0lk7KTRo3jqbFqv00gWT9X3
         /aseJqbISOr1vfz2oLEHlO/EMBV4+oPXMf/1/2UDDJPniWWF/Wawkjii1V5Z5LPIC+jm
         V9A2wi57nqlesQSvOpVA+u4NCqRW2Uzw2Yy6fmchqQD/re7uWncy4m6Vvvtcw3ijpWYh
         tR0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LwYVsBv9;
       spf=pass (google.com: domain of 3kgmwxwwkao8euvjrlcezvijxffxcv.tfd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3kgMWXwwKAO8eUVjRlceZVijXffXcV.Tfd@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gdM/60YMDRflJEd2sbjqoMqcwJr0VE1lWVoiPyhXtks=;
        b=gBho7qMknSUrBsw3SOdxEFkBERpL+pevqlya0n8OCWSCYRLgi6Ihi7QFPDVdk0qMMP
         Bhc2Z5GXq8Bp8MsrjyfOTJXaZHPDOR/7i5pdfyONZf1IxBaA6MpzsNL3cbcxZq02pofE
         Z+h3CwQStWtTGGnPoOXlU3sz9dyF3DVc7h2+fhBVCr5yDx5fH8ZIojghjIbPsVcK7Hn8
         +y78n0KAlNVORzdgFLBDd9UeHwMhlET9QwqPH1cNZ0kOkzZnxhvRCtVgny6uhYBDtoee
         IKvEDZ88jWD1SQs3wHl0mKe3JT/Has6Vkx4NXjaCF04kZGwhxRs2/jIsRHIcGL+/KVWd
         kNeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gdM/60YMDRflJEd2sbjqoMqcwJr0VE1lWVoiPyhXtks=;
        b=EgkKHytAU0/eHI8eAl8g5pwj13T0O7DQh6T70nqvNyMUXJe3Q6flF/k4jkHdp5ibs3
         k7j1KSiepWNZsyASDKEs2LkY129xyFnk2w5wEyFi/CeHQrW+Orr4hkaejUIqNGaAXH1C
         lEKkGgAePWsjcMj8XmlLcShf8dTU5/FrISiVS47A9yoh1qrkxEX3Sl43Ka7TojakPt22
         E2j9s0/vGSqbOdNafffGntbxXvEmPgtya53UwM6Arrhb47tYbaZ98LB8L+FieUIAE4hi
         GWT8xq/BhvbWk7zE0n3gsVzT7wxqJXL2NRW3v48fEXCiJ38yCVEGEko61nYGEH0Fpfk4
         m1Ww==
X-Gm-Message-State: AOAM5313rvhfl9UmIBBBQ8uyEk4ZsFfjDRU1qxdc5eidJrO1Blz6UwX1
	wRvABnr5Yc4TEOeNciwSEOw=
X-Google-Smtp-Source: ABdhPJwWn6oKwA7TvQzUR6N3YW0eRK9iHVKmpxAukn0r7xul7Q5zoB7awu7QCGElbH3a/YVgjEhR/A==
X-Received: by 2002:aca:fc97:: with SMTP id a145mr823246oii.149.1595278227408;
        Mon, 20 Jul 2020 13:50:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:520f:: with SMTP id g15ls3066985oib.7.gmail; Mon, 20 Jul
 2020 13:50:27 -0700 (PDT)
X-Received: by 2002:a54:4518:: with SMTP id l24mr914723oil.8.1595278227011;
        Mon, 20 Jul 2020 13:50:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595278227; cv=none;
        d=google.com; s=arc-20160816;
        b=ksd+VqOa7q8lZDI4jtuIMpzB1LbxXEoyAI2NIukErQaGygmr2jbrkN2labzDnOMvJo
         s9k1bqeYq8Qm+a/uO1z6xHVItQ/1rL+f32r6mZbrTHXJ0k0WyZOJQyKbA/TiItwa6gaK
         j+8NBgoHA47p/cLrzHk6AHJaLjfK3oAjadln0DYfo+cmxXdVEz6ratpt94DM9gq28l1j
         FgoFaA8IyAFiU6JMS6pBzE7lV9yORnjaM0zt/InwigE6jNI/VTrbOhqNn+ImRxLHKt2o
         CIy5fFzWnLewfKkyJprAc+F+f6aD4+fWXUl5saxqfL+NrlD7SH+oMpsvawniq7mFretN
         HE1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=/9STi9/0NspXnRy6zPc67lC+VCDfUlVQvLOON6i7x7A=;
        b=eX37OEYEtxZYM4wO4T5sXWPVNqtu+bCHFOv8El5NPj4HVRVHRJCkFiy8G4dmqueuY2
         83wr71OTWaZ1YWlEyeH2D7mbNMuOT0CUHBroRVU47FvUY7cgM2UQrRDKm5gkqjzwT1iO
         fX9WNNwjqjaubQ9aQBo7NvPMndKUlyFeSQan3QecSvJBLhomZis4iO8FlEOcp599sVfr
         s8+l/HmYvChSjyr9RJEg7colqq0iQB+ouak/LF7CDOqAeIqIXMHw/5NSFUtMZ/lL00Ro
         j4yhzbwYpvBzO8ySBp0Qq9u3nd8PFxjJlAPKRNdSbbqYdf89rI4GBlr7L/bsT28Y4AaL
         n8Yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LwYVsBv9;
       spf=pass (google.com: domain of 3kgmwxwwkao8euvjrlcezvijxffxcv.tfd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3kgMWXwwKAO8eUVjRlceZVijXffXcV.Tfd@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id a65si882784oib.1.2020.07.20.13.50.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 13:50:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kgmwxwwkao8euvjrlcezvijxffxcv.tfd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id r17so22943615ybj.22
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 13:50:26 -0700 (PDT)
X-Received: by 2002:a25:3752:: with SMTP id e79mr36408711yba.263.1595278226481;
 Mon, 20 Jul 2020 13:50:26 -0700 (PDT)
Date: Mon, 20 Jul 2020 13:49:22 -0700
In-Reply-To: <20200720204925.3654302-1-ndesaulniers@google.com>
Message-Id: <20200720204925.3654302-9-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200720204925.3654302-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH v3 08/11] x86/percpu: Clean up percpu_cmpxchg_op()
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
 header.i=@google.com header.s=20161025 header.b=LwYVsBv9;       spf=pass
 (google.com: domain of 3kgmwxwwkao8euvjrlcezvijxffxcv.tfd@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3kgMWXwwKAO8eUVjRlceZVijXffXcV.Tfd@flex--ndesaulniers.bounces.google.com;
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
 arch/x86/include/asm/percpu.h | 58 +++++++++++------------------------
 1 file changed, 18 insertions(+), 40 deletions(-)

diff --git a/arch/x86/include/asm/percpu.h b/arch/x86/include/asm/percpu.h
index ac6d7e76c0d4..7efc0b5c4ff0 100644
--- a/arch/x86/include/asm/percpu.h
+++ b/arch/x86/include/asm/percpu.h
@@ -236,39 +236,17 @@ do {									\
  * cmpxchg has no such implied lock semantics as a result it is much
  * more efficient for cpu local operations.
  */
-#define percpu_cmpxchg_op(qual, var, oval, nval)			\
+#define percpu_cmpxchg_op(size, qual, _var, _oval, _nval)		\
 ({									\
-	typeof(var) pco_ret__;						\
-	typeof(var) pco_old__ = (oval);					\
-	typeof(var) pco_new__ = (nval);					\
-	switch (sizeof(var)) {						\
-	case 1:								\
-		asm qual ("cmpxchgb %2, "__percpu_arg(1)		\
-			    : "=a" (pco_ret__), "+m" (var)		\
-			    : "q" (pco_new__), "0" (pco_old__)		\
-			    : "memory");				\
-		break;							\
-	case 2:								\
-		asm qual ("cmpxchgw %2, "__percpu_arg(1)		\
-			    : "=a" (pco_ret__), "+m" (var)		\
-			    : "r" (pco_new__), "0" (pco_old__)		\
-			    : "memory");				\
-		break;							\
-	case 4:								\
-		asm qual ("cmpxchgl %2, "__percpu_arg(1)		\
-			    : "=a" (pco_ret__), "+m" (var)		\
-			    : "r" (pco_new__), "0" (pco_old__)		\
-			    : "memory");				\
-		break;							\
-	case 8:								\
-		asm qual ("cmpxchgq %2, "__percpu_arg(1)		\
-			    : "=a" (pco_ret__), "+m" (var)		\
-			    : "r" (pco_new__), "0" (pco_old__)		\
-			    : "memory");				\
-		break;							\
-	default: __bad_percpu_size();					\
-	}								\
-	pco_ret__;							\
+	__pcpu_type_##size pco_old__ = __pcpu_cast_##size(_oval);	\
+	__pcpu_type_##size pco_new__ = __pcpu_cast_##size(_nval);	\
+	asm qual (__pcpu_op2_##size("cmpxchg", "%[nval]",		\
+				    __percpu_arg([var]))		\
+		  : [oval] "+a" (pco_old__),				\
+		    [var] "+m" (_var)					\
+		  : [nval] __pcpu_reg_##size(, pco_new__)		\
+		  : "memory");						\
+	(typeof(_var))(unsigned long) pco_old__;			\
 })
 
 /*
@@ -336,16 +314,16 @@ do {									\
 #define raw_cpu_add_return_1(pcp, val)		percpu_add_return_op(1, , pcp, val)
 #define raw_cpu_add_return_2(pcp, val)		percpu_add_return_op(2, , pcp, val)
 #define raw_cpu_add_return_4(pcp, val)		percpu_add_return_op(4, , pcp, val)
-#define raw_cpu_cmpxchg_1(pcp, oval, nval)	percpu_cmpxchg_op(, pcp, oval, nval)
-#define raw_cpu_cmpxchg_2(pcp, oval, nval)	percpu_cmpxchg_op(, pcp, oval, nval)
-#define raw_cpu_cmpxchg_4(pcp, oval, nval)	percpu_cmpxchg_op(, pcp, oval, nval)
+#define raw_cpu_cmpxchg_1(pcp, oval, nval)	percpu_cmpxchg_op(1, , pcp, oval, nval)
+#define raw_cpu_cmpxchg_2(pcp, oval, nval)	percpu_cmpxchg_op(2, , pcp, oval, nval)
+#define raw_cpu_cmpxchg_4(pcp, oval, nval)	percpu_cmpxchg_op(4, , pcp, oval, nval)
 
 #define this_cpu_add_return_1(pcp, val)		percpu_add_return_op(1, volatile, pcp, val)
 #define this_cpu_add_return_2(pcp, val)		percpu_add_return_op(2, volatile, pcp, val)
 #define this_cpu_add_return_4(pcp, val)		percpu_add_return_op(4, volatile, pcp, val)
-#define this_cpu_cmpxchg_1(pcp, oval, nval)	percpu_cmpxchg_op(volatile, pcp, oval, nval)
-#define this_cpu_cmpxchg_2(pcp, oval, nval)	percpu_cmpxchg_op(volatile, pcp, oval, nval)
-#define this_cpu_cmpxchg_4(pcp, oval, nval)	percpu_cmpxchg_op(volatile, pcp, oval, nval)
+#define this_cpu_cmpxchg_1(pcp, oval, nval)	percpu_cmpxchg_op(1, volatile, pcp, oval, nval)
+#define this_cpu_cmpxchg_2(pcp, oval, nval)	percpu_cmpxchg_op(2, volatile, pcp, oval, nval)
+#define this_cpu_cmpxchg_4(pcp, oval, nval)	percpu_cmpxchg_op(4, volatile, pcp, oval, nval)
 
 #ifdef CONFIG_X86_CMPXCHG64
 #define percpu_cmpxchg8b_double(pcp1, pcp2, o1, o2, n1, n2)		\
@@ -376,7 +354,7 @@ do {									\
 #define raw_cpu_or_8(pcp, val)			percpu_to_op(8, , "or", (pcp), val)
 #define raw_cpu_add_return_8(pcp, val)		percpu_add_return_op(8, , pcp, val)
 #define raw_cpu_xchg_8(pcp, nval)		raw_percpu_xchg_op(pcp, nval)
-#define raw_cpu_cmpxchg_8(pcp, oval, nval)	percpu_cmpxchg_op(, pcp, oval, nval)
+#define raw_cpu_cmpxchg_8(pcp, oval, nval)	percpu_cmpxchg_op(8, , pcp, oval, nval)
 
 #define this_cpu_read_8(pcp)			percpu_from_op(8, volatile, "mov", pcp)
 #define this_cpu_write_8(pcp, val)		percpu_to_op(8, volatile, "mov", (pcp), val)
@@ -385,7 +363,7 @@ do {									\
 #define this_cpu_or_8(pcp, val)			percpu_to_op(8, volatile, "or", (pcp), val)
 #define this_cpu_add_return_8(pcp, val)		percpu_add_return_op(8, volatile, pcp, val)
 #define this_cpu_xchg_8(pcp, nval)		percpu_xchg_op(8, volatile, pcp, nval)
-#define this_cpu_cmpxchg_8(pcp, oval, nval)	percpu_cmpxchg_op(volatile, pcp, oval, nval)
+#define this_cpu_cmpxchg_8(pcp, oval, nval)	percpu_cmpxchg_op(8, volatile, pcp, oval, nval)
 
 /*
  * Pretty complex macro to generate cmpxchg16 instruction.  The instruction
-- 
2.28.0.rc0.105.gf9edc3c819-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720204925.3654302-9-ndesaulniers%40google.com.
