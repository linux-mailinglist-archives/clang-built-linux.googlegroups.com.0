Return-Path: <clang-built-linux+bncBDYJPJO25UGBBC4H3D4AKGQE5PO7GBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F4A227005
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 22:50:20 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id 63sf12005133ioy.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 13:50:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595278219; cv=pass;
        d=google.com; s=arc-20160816;
        b=p0IJHHnPz1Et1tpku23EBdtH4Kzg9ydrJ0q0xvsBtVegjHJmDROl4APj1K+fEEwRQH
         2fq4S56Uz7fUifnndPzbtH9lE4nRnxgzdpqJUVrsMWfoN7byjSkJl5o71WpEsE2iUPeM
         vO+H65g8xiFIf1NVyljL9tNNlQm75cVuWT3osXyU58R1ppBP7GqM2yJpuStyQYuIfUMT
         VPLxxYuNFyYTiMw0gOFb1erehjK4AqDe11QgsZKaFZOMRuKsInK8joQr1kTFmfgkUMny
         t2i0rCK7z+DVr3Coj3UYLNbqVi5NiNnw+AF0medFXUK3S4QEbuenRz9rC9XR8AR/80SB
         1o9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=yWhDn3br99EAEv9D8Lv2gHq8yRBgVA8MMJ8U5fMpZoQ=;
        b=blZTGoSFTPtDrILKJn+BdEwJG7sV7ByHnVaq5YebliMRUolbDN3KPHOXxmpJsp6HRJ
         3qffQqSzT0+7xmvTqEiaI0pHNjwXsd4bjKyRwPfnt5GufDnaC1IonNbeFx2RrASmJuhJ
         OE+AXRQMMh4zoEcP/KDdORUCrC2swRJJv8IONyF0Br3lTIpfkYJ+RfFc+TCOaDqYMiJy
         2FSu48i4l9LVQTHtnuOIQ99j7hKgg4L7eKTkYdil2/jSdf1Hu/RcScpG3NtaMv5JDShh
         F7AMr8iZ8um5CFun6ol5fT5o9Th6+k+PjC5MT7MawYcFbShJwlfk4rnCEaoxoEnZtsU5
         Ogpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YgwGYfJw;
       spf=pass (google.com: domain of 3igmwxwwkaocwmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3igMWXwwKAOcWMNbJdUWRNabPXXPUN.LXV@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yWhDn3br99EAEv9D8Lv2gHq8yRBgVA8MMJ8U5fMpZoQ=;
        b=fUh+dZ393oMMV4bnUmWJ/OME5AFqNlPJ1QoxjUAdr/gbXke5ZEZPxCej/Zj3sffx9V
         dBDMtWqQ6xlwVtDxjlWYUDrfgDhkkHXpgPjzO5OGwjdU8zt6KJKDmCpJFdcBjMQ3abd+
         hAdc3le9HfpxOVsI/1m3hWOQMqHxWVpIpPYyPrUfDoFK9TQ1TIW5X1x5DaIPfzdbNYZc
         dap8KLDosLiTVDCfHaPGXG2Kol5HRHb+JfLNQsMJmsu4HX7YOqLDKwggMmycDjAIt/H9
         wJ22skQ9JNnIPXXxdgk1iptjhauhyEwT7x5Tjakpo5AXy9KVbEw1Q8CuJESFwVp3lxz+
         bxJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yWhDn3br99EAEv9D8Lv2gHq8yRBgVA8MMJ8U5fMpZoQ=;
        b=p9Ef1mhAlJ71P0YpWu8bZ1t+u1ky50O3xCiGW0vyTnLPCn/iBCZSbeUCRlDJKTZF6a
         nj1hrNyK5D6jwBSbkrf86IiI6sSn60e9ZpGdPdf2rk7Gd5dJaiQlyVJpDS0xad4OXWRN
         y2N7oeL1hrCeQNNPO3RTE1JDU7oQVwEO7tU+XH7T2iXVD24lnBKILkbK4sV1co87PShw
         CrNtxVdGtXvzatKQ2k5Y8/NIBco06s+2QBT25yKqM0HqwovJUaUZXOXn8ITWsWpq0Lkl
         J2OEdlZ2i6iMBF1b67DmLnJDIZQfRJzqyeJCuTDLe8nezOu2zCSAF+Fh5aq1KVZoUNmc
         ssiw==
X-Gm-Message-State: AOAM532HT58YZf4fJrGrGbkPfiedQcmuY46sG6Ht3FoHGM2CkbFG78RC
	zLmSQet/E2tNKta+/TVKlk8=
X-Google-Smtp-Source: ABdhPJyN5vHinjyeSnCQcgUuGorr/aUmzQa5aYi/w5fed5K2XCLXTI27k2kdlYlPweaO23npYfJSbA==
X-Received: by 2002:a02:b714:: with SMTP id g20mr27846147jam.117.1595278219258;
        Mon, 20 Jul 2020 13:50:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:94e7:: with SMTP id x94ls1472296jah.7.gmail; Mon, 20 Jul
 2020 13:50:19 -0700 (PDT)
X-Received: by 2002:a05:6638:2401:: with SMTP id z1mr3462879jat.97.1595278218888;
        Mon, 20 Jul 2020 13:50:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595278218; cv=none;
        d=google.com; s=arc-20160816;
        b=b9AI1bDBw7HduLPI8HnGHRG395+rBjEMgjZMsm9vzLaWo7/pK5XqQV/Dq8XUqSoBCf
         1LYWDkunTSzPldNqHHCS1lN1X1PjozV0VjZQ1WHiNdI/gPaBVtQ1HaBfAubYNXtdgrRY
         Up8i2zOJyblBf39B8On34hEAOkvoYHVaCCcR5V3FCzjwprymRd+U01QVthTMGr/eKWtd
         /5EbnDMrUWSSu0gztSDtqsr9X55NRxDlz4INViihxvmRFof+q/aVCjXYTV5DW7DOim5y
         6vD/2Ip9sV9tu8zIkvFW62blzs08+qvEROdVpbZCqzfkCMIrB0ml923lOwTD0kadxkSN
         07KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=qr1G39+WcPcTQOpLfSr1R0TatiitMUIoDWHFssxm+t4=;
        b=XZAyUOr4bw0ii6HvAu6mrQhy1/oGi4s8xXnVLiALvIvJEipDsE5YJ7exk9gkFwlHuR
         8zXR0L8BLUhDHAgjaulIfzddd5n+6AtrHxl2ToDPuLAOd2Bm9Qwfockl7e9VnWQf0CJd
         2s/wR+J2rFeWTdelSDMece2KaxwsJN3bcjKSjKAWHQORbifjYJfECjWYfjU4BuMwcFDf
         DpcfUUwEMv57Xpsb8JkBqGBdAmvp6/1wYhc+qOKMAzN1+y8/Ty+d1lQoeRI++SBArcAZ
         4kkKpZZKh0NpvYy/So3ykl/18X3EwQcPlY67dNozDAbP43t/R4vqSNoEShg7qhiT0uVP
         Zl2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YgwGYfJw;
       spf=pass (google.com: domain of 3igmwxwwkaocwmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3igMWXwwKAOcWMNbJdUWRNabPXXPUN.LXV@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id k8si934294ios.2.2020.07.20.13.50.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 13:50:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3igmwxwwkaocwmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id j187so22885607ybj.7
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 13:50:18 -0700 (PDT)
X-Received: by 2002:a05:6902:6b2:: with SMTP id j18mr36704610ybt.178.1595278218312;
 Mon, 20 Jul 2020 13:50:18 -0700 (PDT)
Date: Mon, 20 Jul 2020 13:49:20 -0700
In-Reply-To: <20200720204925.3654302-1-ndesaulniers@google.com>
Message-Id: <20200720204925.3654302-7-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200720204925.3654302-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH v3 06/11] x86/percpu: Clean up percpu_add_return_op()
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
 header.i=@google.com header.s=20161025 header.b=YgwGYfJw;       spf=pass
 (google.com: domain of 3igmwxwwkaocwmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3igMWXwwKAOcWMNbJdUWRNabPXXPUN.LXV@flex--ndesaulniers.bounces.google.com;
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
 arch/x86/include/asm/percpu.h | 51 +++++++++++------------------------
 1 file changed, 16 insertions(+), 35 deletions(-)

diff --git a/arch/x86/include/asm/percpu.h b/arch/x86/include/asm/percpu.h
index 9bb5440d98d3..0776a11e7e11 100644
--- a/arch/x86/include/asm/percpu.h
+++ b/arch/x86/include/asm/percpu.h
@@ -199,34 +199,15 @@ do {									\
 /*
  * Add return operation
  */
-#define percpu_add_return_op(qual, var, val)				\
+#define percpu_add_return_op(size, qual, _var, _val)			\
 ({									\
-	typeof(var) paro_ret__ = val;					\
-	switch (sizeof(var)) {						\
-	case 1:								\
-		asm qual ("xaddb %0, "__percpu_arg(1)			\
-			    : "+q" (paro_ret__), "+m" (var)		\
-			    : : "memory");				\
-		break;							\
-	case 2:								\
-		asm qual ("xaddw %0, "__percpu_arg(1)			\
-			    : "+r" (paro_ret__), "+m" (var)		\
-			    : : "memory");				\
-		break;							\
-	case 4:								\
-		asm qual ("xaddl %0, "__percpu_arg(1)			\
-			    : "+r" (paro_ret__), "+m" (var)		\
-			    : : "memory");				\
-		break;							\
-	case 8:								\
-		asm qual ("xaddq %0, "__percpu_arg(1)			\
-			    : "+r" (paro_ret__), "+m" (var)		\
-			    : : "memory");				\
-		break;							\
-	default: __bad_percpu_size();					\
-	}								\
-	paro_ret__ += val;						\
-	paro_ret__;							\
+	__pcpu_type_##size paro_tmp__ = __pcpu_cast_##size(_val);	\
+	asm qual (__pcpu_op2_##size("xadd", "%[tmp]",			\
+				     __percpu_arg([var]))		\
+		  : [tmp] __pcpu_reg_##size("+", paro_tmp__),		\
+		    [var] "+m" (_var)					\
+		  : : "memory");					\
+	(typeof(_var))(unsigned long) (paro_tmp__ + _val);		\
 })
 
 /*
@@ -377,16 +358,16 @@ do {									\
 #define this_cpu_xchg_2(pcp, nval)	percpu_xchg_op(volatile, pcp, nval)
 #define this_cpu_xchg_4(pcp, nval)	percpu_xchg_op(volatile, pcp, nval)
 
-#define raw_cpu_add_return_1(pcp, val)		percpu_add_return_op(, pcp, val)
-#define raw_cpu_add_return_2(pcp, val)		percpu_add_return_op(, pcp, val)
-#define raw_cpu_add_return_4(pcp, val)		percpu_add_return_op(, pcp, val)
+#define raw_cpu_add_return_1(pcp, val)		percpu_add_return_op(1, , pcp, val)
+#define raw_cpu_add_return_2(pcp, val)		percpu_add_return_op(2, , pcp, val)
+#define raw_cpu_add_return_4(pcp, val)		percpu_add_return_op(4, , pcp, val)
 #define raw_cpu_cmpxchg_1(pcp, oval, nval)	percpu_cmpxchg_op(, pcp, oval, nval)
 #define raw_cpu_cmpxchg_2(pcp, oval, nval)	percpu_cmpxchg_op(, pcp, oval, nval)
 #define raw_cpu_cmpxchg_4(pcp, oval, nval)	percpu_cmpxchg_op(, pcp, oval, nval)
 
-#define this_cpu_add_return_1(pcp, val)		percpu_add_return_op(volatile, pcp, val)
-#define this_cpu_add_return_2(pcp, val)		percpu_add_return_op(volatile, pcp, val)
-#define this_cpu_add_return_4(pcp, val)		percpu_add_return_op(volatile, pcp, val)
+#define this_cpu_add_return_1(pcp, val)		percpu_add_return_op(1, volatile, pcp, val)
+#define this_cpu_add_return_2(pcp, val)		percpu_add_return_op(2, volatile, pcp, val)
+#define this_cpu_add_return_4(pcp, val)		percpu_add_return_op(4, volatile, pcp, val)
 #define this_cpu_cmpxchg_1(pcp, oval, nval)	percpu_cmpxchg_op(volatile, pcp, oval, nval)
 #define this_cpu_cmpxchg_2(pcp, oval, nval)	percpu_cmpxchg_op(volatile, pcp, oval, nval)
 #define this_cpu_cmpxchg_4(pcp, oval, nval)	percpu_cmpxchg_op(volatile, pcp, oval, nval)
@@ -418,7 +399,7 @@ do {									\
 #define raw_cpu_add_8(pcp, val)			percpu_add_op(8, , (pcp), val)
 #define raw_cpu_and_8(pcp, val)			percpu_to_op(8, , "and", (pcp), val)
 #define raw_cpu_or_8(pcp, val)			percpu_to_op(8, , "or", (pcp), val)
-#define raw_cpu_add_return_8(pcp, val)		percpu_add_return_op(, pcp, val)
+#define raw_cpu_add_return_8(pcp, val)		percpu_add_return_op(8, , pcp, val)
 #define raw_cpu_xchg_8(pcp, nval)		raw_percpu_xchg_op(pcp, nval)
 #define raw_cpu_cmpxchg_8(pcp, oval, nval)	percpu_cmpxchg_op(, pcp, oval, nval)
 
@@ -427,7 +408,7 @@ do {									\
 #define this_cpu_add_8(pcp, val)		percpu_add_op(8, volatile, (pcp), val)
 #define this_cpu_and_8(pcp, val)		percpu_to_op(8, volatile, "and", (pcp), val)
 #define this_cpu_or_8(pcp, val)			percpu_to_op(8, volatile, "or", (pcp), val)
-#define this_cpu_add_return_8(pcp, val)		percpu_add_return_op(volatile, pcp, val)
+#define this_cpu_add_return_8(pcp, val)		percpu_add_return_op(8, volatile, pcp, val)
 #define this_cpu_xchg_8(pcp, nval)		percpu_xchg_op(volatile, pcp, nval)
 #define this_cpu_cmpxchg_8(pcp, oval, nval)	percpu_cmpxchg_op(volatile, pcp, oval, nval)
 
-- 
2.28.0.rc0.105.gf9edc3c819-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720204925.3654302-7-ndesaulniers%40google.com.
