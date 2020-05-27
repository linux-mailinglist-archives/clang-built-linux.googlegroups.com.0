Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB2EDXH3AKGQEWZRKUTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6DE1E3F10
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 12:33:13 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id j9sf2857624oon.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 03:33:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590575593; cv=pass;
        d=google.com; s=arc-20160816;
        b=ouhSDqOEkhVDy5R7hxsdiMEOZluUT9KC2QPAcFVlerl1BRK/vKzq/I0gPrIJNAakWR
         lz/KnB9yWEZOTmBVOVx02uitvsyvx4HdYMNq2BRyczEqLJpgHrIN1UgYQiQvq5/Rrcy0
         i284t09Eh419ActIGyBak7sVAashO3fQ5aSKLZ3+9Y4eQoJOvtT3tTNjclkvElEjIbCH
         n+avg/4Nuei1wR62oFrDD+vjLQ7dP8pLCZ6phVNu3Uu4dHvSA/5GUpUS8Fw8f7h8A9Rz
         bbf1fkn6IztOQylWnFfqv1qGh71VoW2hLE0Eus41FG0/6863XXWstCU/C01dCiuW30BB
         0YeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=zEF/gv3u3uGqKvO3hCGK3wae47ykP2ym9KwhQQhbRz0=;
        b=dyVI06iwlUrrmBIbUkKHOcZHbg04TdCtFVDN0f7i2JfkMDsj7j6RYX45AR59fEHY3Q
         NCk2UJJ0EqQ6kMolhpmrIWecAtV/IgPnFSo/f5TIniUkmH7IA6V7MiXoTs/4BsBtOxjg
         +R1gV1X4s2Wd8tJoFo6OLGiMG4I8pJZCr34ctK2DUlxZ/TTHGbiTvU1uMCUOuNtyJP6+
         q1M+zNQJETQ3CPkpldeHh+AmDu0szT2QcVeTwMA9jZEpLkh3Id74ESoEWO/wzR/9jTf0
         gaHnuyFLKTXny5WjH+a7wkRPJ9asNhCMO+yCX6Oi3fTgyJhNNtQlBohSlMruqHcGTo5B
         tw1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h9B95SbK;
       spf=pass (google.com: domain of 350hoxgukeaaelvergoogle.comclang-built-linuxgooglegroups.com@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=350HOXgUKEaAELVERGOOGLE.COMCLANG-BUILT-LINUXGOOGLEGROUPS.COM@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=zEF/gv3u3uGqKvO3hCGK3wae47ykP2ym9KwhQQhbRz0=;
        b=kdI1CJQRIc3TdRnlmNuyDoW2LfEyC16B7YToNLflnLovlrigoTgvFNsR0a9f5UxFxk
         8wcqVsJ/HZvajE48/Tu388+xYqK70uaxT8JcPfFLuCpMUrzIg7gzoiQdOFrgfOp4JHCL
         2HUx2OMNu+AXlDnWNrCQS0gQozrX83giECxwuqNZtH/j45UnT2Gia07y+cd7ePWDt/eC
         b3gmoi31mw5Ef4Y6xxv54qrzN/qh//e0Txk0AvQnbhZf+4g+HP46OBfv6oS8pujFCQvp
         0iDb4R5WxBwYX5ykWytZXQ+eD1FTKziWoXVBh1PR7vLBTXDO037IM6NuVQLjDXlvcyt0
         GCwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zEF/gv3u3uGqKvO3hCGK3wae47ykP2ym9KwhQQhbRz0=;
        b=Uu14QhJUFA/S0Pc3D1Modb+RSWC5FIM+teroCX39cxLPhrWYl79djsG/66LlCtVPfV
         i+rHboyH7MFTLxkQGxZ2ozIv5oUrx4XN7oWW+VeOmRD0nJt+MNAHj3/y3Xk1stg0LeMM
         2kZoLKmxhAmXB8toXJmdNFRCfnxgoTBHIBD+mhlhcNolEs9b5qdxO0v31SSwbBjWrvLw
         irWkfoIKCI+jAzn4Bu1h4kkFLjc5NG+mibYDNHd63y/r8CiCCNlAbdaCrfR+S1RsJPhZ
         YwDV4+osFIIx0aGys5ixnrRGUY4/bxs3Wk5PDJ7H6dxUIHf3XMhUjL6loAg0pmvSY3CC
         V1JQ==
X-Gm-Message-State: AOAM530bxhPtCij5Z6/f0yYPcHLUHcbN1drM4JtoOg3PbNj47wvHG1yo
	IaGPeK2vAcbYE2QasivZDaQ=
X-Google-Smtp-Source: ABdhPJx9Jtd72AZ1UY5pIzC2EBibz9AfP3k2YCl2XYBSNbBWbfT8CWuzpPXp5z08ke8ZO1Eg9n4Jyw==
X-Received: by 2002:a05:6830:2f0:: with SMTP id r16mr4257061ote.338.1590575592712;
        Wed, 27 May 2020 03:33:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e1a8:: with SMTP id 8ls822980ooy.4.gmail; Wed, 27 May
 2020 03:33:12 -0700 (PDT)
X-Received: by 2002:a4a:d0c8:: with SMTP id u8mr2521459oor.28.1590575592351;
        Wed, 27 May 2020 03:33:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590575592; cv=none;
        d=google.com; s=arc-20160816;
        b=UIR1EEzg970vKBU5DXiLMv5gdftjbrmI2qw408sMAfvAGgdxQHwDdHrOH5VTGu4bEl
         H6iMZJ10BnOA7yY/lCoS3Sw41J4vZZ8vALB+Eknf4oyajMcFyUjUFSKPaTORb+2735YN
         9YLpS8Cq0PA/lwKfPFXlGLAe+WaNcy90jnoQZTVsSD5/MvUSgobAfYhf1/SLboX7dl8j
         NXkAajE5lACzru/x84liJs5sXoFT6WxGV3Dv5M8loWfzPnt3IQ0L3tPjuu6JXNUPwmvY
         hlP9C/sqDDJj101HpbwgS/h7exJnlA1RNVyEfOPqH90xF78R9tx2DiUu7WzRN83F0yBv
         W1vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=DosOYF3ps8rgQKGpMQeCZ1cwpGKFHV+Ez1qTc9wvzYQ=;
        b=qsi5IbuaXBieoHfDBdn9KPQ7BPb47u3I//tAeMrqgT+lIP3rad42Otrx5iZABt03ye
         xDWZboKyyYo01eyhWJ55rdxD2SCUdrIPLoJiCVG2oRaOHqST0O6zkvXU9KNHgtnklyTH
         abX71pcQYFLXPGLUea6isooGiwzU4GgQc9ROvGXkupTmakZu1CBdOEK3rfDonPUVN7x1
         j37eN/hB4WqeCcvqtk4uJjrt4cVw0cvddZ8ajGjSrBpRe5k4CFxpoiJC2+2lui9QRNiA
         rXIxwIMYgviPup5EzlO+dUiliVJTwvxJvGwiryUcjz/q4AcUFZiZr7PaXijULKAZlJY1
         GUoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h9B95SbK;
       spf=pass (google.com: domain of 350hoxgukeaaelvergoogle.comclang-built-linuxgooglegroups.com@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=350HOXgUKEaAELVERGOOGLE.COMCLANG-BUILT-LINUXGOOGLEGROUPS.COM@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id t2si160398otr.1.2020.05.27.03.33.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 03:33:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of 350hoxgukeaaelvergoogle.comclang-built-linuxgooglegroups.com@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id n22so7923011qka.18
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 03:33:12 -0700 (PDT)
X-Received: by 2002:ad4:5684:: with SMTP id bc4mr24918443qvb.85.1590575591788;
 Wed, 27 May 2020 03:33:11 -0700 (PDT)
Date: Wed, 27 May 2020 12:32:36 +0200
Message-Id: <20200527103236.148700-1-elver@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.rc0.183.gde8f92d652-goog
Subject: [PATCH -tip] compiler_types.h: Optimize __unqual_scalar_typeof
 compilation time
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: will@kernel.org, peterz@infradead.org, bp@alien8.de, tglx@linutronix.de, 
	mingo@kernel.org, clang-built-linux@googlegroups.com, paulmck@kernel.org, 
	dvyukov@google.com, glider@google.com, andreyknvl@google.com, 
	kasan-dev@googlegroups.com, linux-kernel@vger.kernel.org, 
	Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=h9B95SbK;       spf=pass
 (google.com: domain of 350hoxgukeaaelvergoogle.comclang-built-linuxgooglegroups.com@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=350HOXgUKEaAELVERGOOGLE.COMCLANG-BUILT-LINUXGOOGLEGROUPS.COM@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

If the compiler supports C11's _Generic, use it to speed up compilation
times of __unqual_scalar_typeof(). GCC version 4.9 or later and
all supported versions of Clang support the feature (the oldest
supported compiler that doesn't support _Generic is GCC 4.8, for which
we use the slower alternative).

The non-_Generic variant relies on multiple expansions of
__pick_integer_type -> __pick_scalar_type -> __builtin_choose_expr,
which increases pre-processed code size, and can cause compile times to
increase in files with numerous expansions of READ_ONCE(), or other
users of __unqual_scalar_typeof().

Summary of compile-time benchmarking done by Arnd Bergmann [1]:

	<baseline normalized time>  clang-11   gcc-9
	this patch                      0.78    0.91
	ideal                           0.76    0.86

[1] https://lkml.kernel.org/r/CAK8P3a3UYQeXhiufUevz=rwe09WM_vSTCd9W+KvJHJcOeQyWVA@mail.gmail.com

Further compile-testing done with:
	gcc 4.8, 4.9, 5.5, 6.4, 7.5, 8.4;
	clang 9, 10.

Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Marco Elver <elver@google.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Paul E. McKenney <paulmck@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Will Deacon <will@kernel.org>
Link: https://lkml.kernel.org/r/CAK8P3a0RJtbVi1JMsfik=jkHCNFv+DJn_FeDg-YLW+ueQW3tNg@mail.gmail.com
---
Same version as in:
https://lkml.kernel.org/r/20200526173312.GA30240@google.com
---
 include/linux/compiler_types.h | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 5faf68eae204..a529fa263906 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -245,7 +245,9 @@ struct ftrace_likely_data {
 /*
  * __unqual_scalar_typeof(x) - Declare an unqualified scalar type, leaving
  *			       non-scalar types unchanged.
- *
+ */
+#if defined(CONFIG_CC_IS_GCC) && CONFIG_GCC_VERSION < 40900
+/*
  * We build this out of a couple of helper macros in a vain attempt to
  * help you keep your lunch down while reading it.
  */
@@ -267,6 +269,24 @@ struct ftrace_likely_data {
 			__pick_integer_type(x, int,				\
 				__pick_integer_type(x, long,			\
 					__pick_integer_type(x, long long, x))))))
+#else
+/*
+ * If supported, prefer C11 _Generic for better compile-times. As above, 'char'
+ * is not type-compatible with 'signed char', and we define a separate case.
+ */
+#define __scalar_type_to_expr_cases(type)				\
+		type: (type)0, unsigned type: (unsigned type)0
+
+#define __unqual_scalar_typeof(x) typeof(				\
+		_Generic((x),						\
+			 __scalar_type_to_expr_cases(char),		\
+			 signed char: (signed char)0,			\
+			 __scalar_type_to_expr_cases(short),		\
+			 __scalar_type_to_expr_cases(int),		\
+			 __scalar_type_to_expr_cases(long),		\
+			 __scalar_type_to_expr_cases(long long),	\
+			 default: (x)))
+#endif
 
 /* Is this type a native word size -- useful for atomic operations */
 #define __native_word(t) \
-- 
2.27.0.rc0.183.gde8f92d652-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527103236.148700-1-elver%40google.com.
