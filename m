Return-Path: <clang-built-linux+bncBDYJPJO25UGBB44G3D4AKGQEUU7MDKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id EB127226FFC
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 22:49:56 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id s24sf13523147pfe.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 13:49:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595278195; cv=pass;
        d=google.com; s=arc-20160816;
        b=r8catW4StSYtXsQtUw2g8vHsjiaYwKMhtDrTFbCu0FfIMGpIbCxSwKFTPnkXPsBb/3
         n7DIVt4ocWSPg2vPGnhuU55Zza9pWYunQDIiPd3ciGPyjMFn6PpM98ju9k/WW4NgAhfh
         FknI61l8MrYnhl1xpl7O1Nnha34dENO82+Sc0+IS0sba26lrNA+45lJ7KI3oy3i5+Jz+
         gSZIPU+10loCOly2pJ6Kxq/hn9mEMlDNq54Q0P+ZBXVZlH1ro06VjRpjPtTSkw7x8BAi
         8x+5oZcDuQWBDYZlmYANW4rC5Dpbpu5b4AC9TkYcy2kZiXgyjvXmZ91QzAulBnoBnIwv
         kWHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Tc2Lr+0S1LEek8WbYpm1VQbjH3jJWZQxP2Vnj5HBZ/s=;
        b=Pu0UE5iRuN6fNxnAfcemeeQdIHhR/Blh2HfFfgBtxldFx+d5rmrqAw6yTO5QHSQc4C
         FwnLFJflsjSrHSOWs1faFpqBR2QK2Nl8IsOUB4GmQau7O6OlEp0ZAMu2iFJMbw/gA54L
         WAO/3AhKxzj5Z49RJQrpFtyPczFCy1PFNv3+zeUJ8TG2yeuYyYeqi005u6jWmCMQXbf9
         6RxR06bVEnYI/Kh2q39A42ywgIBYhTMWyAEGAuhPcn6NYoSkk/BzM0tXwGvlrLQiNfTO
         0apngE5qZsIORb5wPpVu6M57U9W/Ya25KP9wpvfLwizoZM90sX9mb/iwmKmKH3W3q5Eq
         dofA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qaIn59F0;
       spf=pass (google.com: domain of 3cgmwxwwkam88yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3cgMWXwwKAM88yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tc2Lr+0S1LEek8WbYpm1VQbjH3jJWZQxP2Vnj5HBZ/s=;
        b=a/jmRD4Gbk8cHqvSCqhEZbSZ2/4/0eqnZ1gIx++nf0jB0X1WRFvlXI/K3EURuHYYYn
         OrQ7Be5E0ftQRrIlSQMR4rm7Pz/D56ELq1AhwW/mPIf8ayaVO9odKdgrpYGJzF0UJLUI
         nJ3kBUILzxh6yAM+Jl+vc6JAOxRAvgiHa7T9ePYDLBZNlnuvb1DgGx3Vfvx8B/a5ks4Q
         nGc0BEDXGxoP1m6w2B6c6KKchBNDUYec9IYBQ5YtHSO9Glhx/IzCDDCbF7pUamcwV0/u
         5umlXvxvvRgXbYAJAX1SeFa6RhP0y0aXbRZCDRZ6M6zVGFTBT+96TemdKLxvm3J4sIlp
         lqkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tc2Lr+0S1LEek8WbYpm1VQbjH3jJWZQxP2Vnj5HBZ/s=;
        b=c7XCygUACy8Xe5oXfHVzndjSZ8dgTu4ltFYRmLAEEHwt0eU50DYWNUtCJ1ITgDmjHz
         AZDJFSmk/eseiuAICbuBdHHQChdocEA+7GqaLid/W7FMt/yIX0MNYd7TL9WXbtroPAU+
         6H9kEVZRBhNLR1MGD5E2VB7PMGvY2i3ERMlHqBeZqiqAztH34ZJGwszmAUVtTeLVyDMa
         h1TosljU3T0REacyGM1XSDGuXbPChsOLSAfqgsvGZNNcAGl48Qc7dQljheWzfwetiSis
         Rhe99tnh7u8QtFs8jgMTtKSMUeeSzs6NIgPYjQiN+b84gq82hPxeNpJSOpw1QqjiXq2D
         PKag==
X-Gm-Message-State: AOAM5322paMkaJUK/ZbZCGwYUeD22LBauevQtaLMmw/f3pBi/KCV17FW
	UCz9/U514ifZ029ozuxSZgk=
X-Google-Smtp-Source: ABdhPJz0KEAIn0mDcjSPSnLse/tGJ5fea2jNBH0ks8rv8d6zoABZFkaAJLljOeUpHckjEWh1j7yDKw==
X-Received: by 2002:a17:902:a412:: with SMTP id p18mr19005280plq.283.1595278195628;
        Mon, 20 Jul 2020 13:49:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9344:: with SMTP id g4ls3102184plp.10.gmail; Mon, 20
 Jul 2020 13:49:55 -0700 (PDT)
X-Received: by 2002:a17:902:d685:: with SMTP id v5mr19489876ply.117.1595278195212;
        Mon, 20 Jul 2020 13:49:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595278195; cv=none;
        d=google.com; s=arc-20160816;
        b=CuC3NmmVDOeuQPcXqrLdqiP70SK/xD3zzGmIu5cunM5180Q6dvgvCLe0RstY9bGWMD
         uyAGIO3oKZW+beyZcmelwXlg4e5FaDVF1zRBHtRPIBi7wkX2xQ1CPGT3V1uw4Ai7gEc7
         06tgw6RKPVt8YNrIM4u/FpFuGJlbeyGAbepk/BhFx4vZWk4DgkM44dBWGglTq02L+XH+
         jxWZsNT3AQNK+EJnYTsjZRFL3vAo/ampdzzuC0cgdP6CnrDivW6HzRUA1tUT5EH55xAf
         grALB5AKsklPebl3soU46+MNIHVZj/HmMMlWPpQninr0v1wsSlQQwsD4rzQJhzNtSloM
         8qAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=63aVbZXiTq+rcFDCYht/Xn/AFytJVQi7yE6pi8x5zh8=;
        b=TLWfymwepBoZEkLp+GSCbZwf4kNYBl0y6g1UoqdFQNxo7rNAqFifiE9vgaBC4OdxqR
         unjR4P40XeGVRa2w8ikoUMVz7T1GHXI+3AzhEWQeCJGnM6/3UpJCGxDSYqdM/ozdp+gU
         SRvJg/ydqMjFdSwQH4Bi16hQDUMiKtOC0BNRJqoSoQYHe+FIW65ZX3rBkEKB75df2L1I
         U23lGwF1IOZnK5Thhv0PM25lnjjWyToYtV3d3TXqsVlJsYzBj9kyMDUx/PAGMm3X+QVV
         UPW5YPHzagw+kLBwb/0++ugDgsAd9UGr/+kxGHLQ+/hMiQ57n51frf+PNKggj5/wLEIt
         k1+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qaIn59F0;
       spf=pass (google.com: domain of 3cgmwxwwkam88yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3cgMWXwwKAM88yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id g22si712500plq.1.2020.07.20.13.49.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 13:49:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3cgmwxwwkam88yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id u186so12288652qka.4
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 13:49:55 -0700 (PDT)
X-Received: by 2002:a0c:e008:: with SMTP id j8mr23695256qvk.87.1595278194308;
 Mon, 20 Jul 2020 13:49:54 -0700 (PDT)
Date: Mon, 20 Jul 2020 13:49:16 -0700
In-Reply-To: <20200720204925.3654302-1-ndesaulniers@google.com>
Message-Id: <20200720204925.3654302-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200720204925.3654302-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH v3 02/11] x86/percpu: Clean up percpu_to_op()
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
 header.i=@google.com header.s=20161025 header.b=qaIn59F0;       spf=pass
 (google.com: domain of 3cgmwxwwkam88yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3cgMWXwwKAM88yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
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
 arch/x86/include/asm/percpu.h | 90 ++++++++++++++---------------------
 1 file changed, 35 insertions(+), 55 deletions(-)

diff --git a/arch/x86/include/asm/percpu.h b/arch/x86/include/asm/percpu.h
index 19838e4f7a8f..fb280fba94c5 100644
--- a/arch/x86/include/asm/percpu.h
+++ b/arch/x86/include/asm/percpu.h
@@ -117,37 +117,17 @@ extern void __bad_percpu_size(void);
 #define __pcpu_reg_imm_4(x) "ri" (x)
 #define __pcpu_reg_imm_8(x) "re" (x)
 
-#define percpu_to_op(qual, op, var, val)		\
-do {							\
-	typedef typeof(var) pto_T__;			\
-	if (0) {					\
-		pto_T__ pto_tmp__;			\
-		pto_tmp__ = (val);			\
-		(void)pto_tmp__;			\
-	}						\
-	switch (sizeof(var)) {				\
-	case 1:						\
-		asm qual (op "b %1,"__percpu_arg(0)	\
-		    : "+m" (var)			\
-		    : "qi" ((pto_T__)(val)));		\
-		break;					\
-	case 2:						\
-		asm qual (op "w %1,"__percpu_arg(0)	\
-		    : "+m" (var)			\
-		    : "ri" ((pto_T__)(val)));		\
-		break;					\
-	case 4:						\
-		asm qual (op "l %1,"__percpu_arg(0)	\
-		    : "+m" (var)			\
-		    : "ri" ((pto_T__)(val)));		\
-		break;					\
-	case 8:						\
-		asm qual (op "q %1,"__percpu_arg(0)	\
-		    : "+m" (var)			\
-		    : "re" ((pto_T__)(val)));		\
-		break;					\
-	default: __bad_percpu_size();			\
-	}						\
+#define percpu_to_op(size, qual, op, _var, _val)			\
+do {									\
+	__pcpu_type_##size pto_val__ = __pcpu_cast_##size(_val);	\
+	if (0) {		                                        \
+		typeof(_var) pto_tmp__;					\
+		pto_tmp__ = (_val);					\
+		(void)pto_tmp__;					\
+	}								\
+	asm qual(__pcpu_op2_##size(op, "%[val]", __percpu_arg([var]))	\
+	    : [var] "+m" (_var)						\
+	    : [val] __pcpu_reg_imm_##size(pto_val__));			\
 } while (0)
 
 /*
@@ -425,18 +405,18 @@ do {									\
 #define raw_cpu_read_2(pcp)		percpu_from_op(, "mov", pcp)
 #define raw_cpu_read_4(pcp)		percpu_from_op(, "mov", pcp)
 
-#define raw_cpu_write_1(pcp, val)	percpu_to_op(, "mov", (pcp), val)
-#define raw_cpu_write_2(pcp, val)	percpu_to_op(, "mov", (pcp), val)
-#define raw_cpu_write_4(pcp, val)	percpu_to_op(, "mov", (pcp), val)
+#define raw_cpu_write_1(pcp, val)	percpu_to_op(1, , "mov", (pcp), val)
+#define raw_cpu_write_2(pcp, val)	percpu_to_op(2, , "mov", (pcp), val)
+#define raw_cpu_write_4(pcp, val)	percpu_to_op(4, , "mov", (pcp), val)
 #define raw_cpu_add_1(pcp, val)		percpu_add_op(, (pcp), val)
 #define raw_cpu_add_2(pcp, val)		percpu_add_op(, (pcp), val)
 #define raw_cpu_add_4(pcp, val)		percpu_add_op(, (pcp), val)
-#define raw_cpu_and_1(pcp, val)		percpu_to_op(, "and", (pcp), val)
-#define raw_cpu_and_2(pcp, val)		percpu_to_op(, "and", (pcp), val)
-#define raw_cpu_and_4(pcp, val)		percpu_to_op(, "and", (pcp), val)
-#define raw_cpu_or_1(pcp, val)		percpu_to_op(, "or", (pcp), val)
-#define raw_cpu_or_2(pcp, val)		percpu_to_op(, "or", (pcp), val)
-#define raw_cpu_or_4(pcp, val)		percpu_to_op(, "or", (pcp), val)
+#define raw_cpu_and_1(pcp, val)		percpu_to_op(1, , "and", (pcp), val)
+#define raw_cpu_and_2(pcp, val)		percpu_to_op(2, , "and", (pcp), val)
+#define raw_cpu_and_4(pcp, val)		percpu_to_op(4, , "and", (pcp), val)
+#define raw_cpu_or_1(pcp, val)		percpu_to_op(1, , "or", (pcp), val)
+#define raw_cpu_or_2(pcp, val)		percpu_to_op(2, , "or", (pcp), val)
+#define raw_cpu_or_4(pcp, val)		percpu_to_op(4, , "or", (pcp), val)
 
 /*
  * raw_cpu_xchg() can use a load-store since it is not required to be
@@ -456,18 +436,18 @@ do {									\
 #define this_cpu_read_1(pcp)		percpu_from_op(volatile, "mov", pcp)
 #define this_cpu_read_2(pcp)		percpu_from_op(volatile, "mov", pcp)
 #define this_cpu_read_4(pcp)		percpu_from_op(volatile, "mov", pcp)
-#define this_cpu_write_1(pcp, val)	percpu_to_op(volatile, "mov", (pcp), val)
-#define this_cpu_write_2(pcp, val)	percpu_to_op(volatile, "mov", (pcp), val)
-#define this_cpu_write_4(pcp, val)	percpu_to_op(volatile, "mov", (pcp), val)
+#define this_cpu_write_1(pcp, val)	percpu_to_op(1, volatile, "mov", (pcp), val)
+#define this_cpu_write_2(pcp, val)	percpu_to_op(2, volatile, "mov", (pcp), val)
+#define this_cpu_write_4(pcp, val)	percpu_to_op(4, volatile, "mov", (pcp), val)
 #define this_cpu_add_1(pcp, val)	percpu_add_op(volatile, (pcp), val)
 #define this_cpu_add_2(pcp, val)	percpu_add_op(volatile, (pcp), val)
 #define this_cpu_add_4(pcp, val)	percpu_add_op(volatile, (pcp), val)
-#define this_cpu_and_1(pcp, val)	percpu_to_op(volatile, "and", (pcp), val)
-#define this_cpu_and_2(pcp, val)	percpu_to_op(volatile, "and", (pcp), val)
-#define this_cpu_and_4(pcp, val)	percpu_to_op(volatile, "and", (pcp), val)
-#define this_cpu_or_1(pcp, val)		percpu_to_op(volatile, "or", (pcp), val)
-#define this_cpu_or_2(pcp, val)		percpu_to_op(volatile, "or", (pcp), val)
-#define this_cpu_or_4(pcp, val)		percpu_to_op(volatile, "or", (pcp), val)
+#define this_cpu_and_1(pcp, val)	percpu_to_op(1, volatile, "and", (pcp), val)
+#define this_cpu_and_2(pcp, val)	percpu_to_op(2, volatile, "and", (pcp), val)
+#define this_cpu_and_4(pcp, val)	percpu_to_op(4, volatile, "and", (pcp), val)
+#define this_cpu_or_1(pcp, val)		percpu_to_op(1, volatile, "or", (pcp), val)
+#define this_cpu_or_2(pcp, val)		percpu_to_op(2, volatile, "or", (pcp), val)
+#define this_cpu_or_4(pcp, val)		percpu_to_op(4, volatile, "or", (pcp), val)
 #define this_cpu_xchg_1(pcp, nval)	percpu_xchg_op(volatile, pcp, nval)
 #define this_cpu_xchg_2(pcp, nval)	percpu_xchg_op(volatile, pcp, nval)
 #define this_cpu_xchg_4(pcp, nval)	percpu_xchg_op(volatile, pcp, nval)
@@ -509,19 +489,19 @@ do {									\
  */
 #ifdef CONFIG_X86_64
 #define raw_cpu_read_8(pcp)			percpu_from_op(, "mov", pcp)
-#define raw_cpu_write_8(pcp, val)		percpu_to_op(, "mov", (pcp), val)
+#define raw_cpu_write_8(pcp, val)		percpu_to_op(8, , "mov", (pcp), val)
 #define raw_cpu_add_8(pcp, val)			percpu_add_op(, (pcp), val)
-#define raw_cpu_and_8(pcp, val)			percpu_to_op(, "and", (pcp), val)
-#define raw_cpu_or_8(pcp, val)			percpu_to_op(, "or", (pcp), val)
+#define raw_cpu_and_8(pcp, val)			percpu_to_op(8, , "and", (pcp), val)
+#define raw_cpu_or_8(pcp, val)			percpu_to_op(8, , "or", (pcp), val)
 #define raw_cpu_add_return_8(pcp, val)		percpu_add_return_op(, pcp, val)
 #define raw_cpu_xchg_8(pcp, nval)		raw_percpu_xchg_op(pcp, nval)
 #define raw_cpu_cmpxchg_8(pcp, oval, nval)	percpu_cmpxchg_op(, pcp, oval, nval)
 
 #define this_cpu_read_8(pcp)			percpu_from_op(volatile, "mov", pcp)
-#define this_cpu_write_8(pcp, val)		percpu_to_op(volatile, "mov", (pcp), val)
+#define this_cpu_write_8(pcp, val)		percpu_to_op(8, volatile, "mov", (pcp), val)
 #define this_cpu_add_8(pcp, val)		percpu_add_op(volatile, (pcp), val)
-#define this_cpu_and_8(pcp, val)		percpu_to_op(volatile, "and", (pcp), val)
-#define this_cpu_or_8(pcp, val)			percpu_to_op(volatile, "or", (pcp), val)
+#define this_cpu_and_8(pcp, val)		percpu_to_op(8, volatile, "and", (pcp), val)
+#define this_cpu_or_8(pcp, val)			percpu_to_op(8, volatile, "or", (pcp), val)
 #define this_cpu_add_return_8(pcp, val)		percpu_add_return_op(volatile, pcp, val)
 #define this_cpu_xchg_8(pcp, nval)		percpu_xchg_op(volatile, pcp, nval)
 #define this_cpu_cmpxchg_8(pcp, oval, nval)	percpu_cmpxchg_op(volatile, pcp, oval, nval)
-- 
2.28.0.rc0.105.gf9edc3c819-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720204925.3654302-3-ndesaulniers%40google.com.
