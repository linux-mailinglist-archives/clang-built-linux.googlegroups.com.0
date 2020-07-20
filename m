Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAMH3D4AKGQEABG43HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD98227002
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 22:50:10 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id y24sf5484270plp.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 13:50:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595278209; cv=pass;
        d=google.com; s=arc-20160816;
        b=lIDfynXDgpQFeOSHgIbfWbOIAsjXRIku2D1GH2gMedrm3hJdU3ZsgXFE2QdSYv2nrt
         PToR/ZLstrpiLmh8o5/RB5Ej5qOiaxc+eVgWwWz6wpRou1GrklbersP8jQnRVL/fo5TV
         v5Wwkn4ehQ3OXt3qrV9ndL8zlcnozZv1kQZaRIhUzPDhDtjfXl9230vdrAdJLpqxYufj
         iwqSjUtHSAyrHEWVUvsJD+TYXI3vbaCRvWGMF5BjM82N4+TQKdwStJfFdaT05Qhoq2g6
         JsoZ/3SDd83NVIPbETnge0S2HOkyhg4Uk32/FNQkYS5+PAUjYXWdpsvzCvoXsLvknBxu
         /+LQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ll/L9c050PZWCv3nQmbsqz737vyneD4h11eitiJFuPY=;
        b=efh8skyOBq1VTCutVzCNh6YmX6iWJjuk6OssA9v7Dmf4s+PKnkJ1S0nvIp/Kxg125R
         bhcq5BI4FT98m6QHLmjs2o19WGH0xm6HmdTU9RVySQIng9ax3Lk5KY2KeLBUYKv6Yv/1
         bdYZ5itKzJskuF7gCkxPgKPusCnzwwJOndXber5WSLiSq6I6Gz+l1bKE5sjyBJDUyRcN
         CPNne9bbNfUnNOADdLJ+wfDQGaUeF9MfLRk0/jnVLjceSHV3+GqpZHq7bhspWKPnNklv
         i2cXtmAFP/o6Ygsfu8eKcfg/sXI8RG8H+IiatdB4tU8waYpS0ADIVECs8fTqVHnAdoay
         YK2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XD68lI7x;
       spf=pass (google.com: domain of 3gamwxwwkan0mcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3gAMWXwwKAN0MCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ll/L9c050PZWCv3nQmbsqz737vyneD4h11eitiJFuPY=;
        b=nVSW85h7A5jnqDDjsJXBNLXEPTkVuHx+ffmPd8p6qK/hrXSxWogIe2iGxKy8qvpE7b
         8i/qSr6fsinjowR/LjYE0HEJ2TnXdmTYHow/O+ojotuUMhpX9SHZUQP/F7VIBKN2o5IX
         nI10UsZKrLuxHHEaWb5ZEbOdWW9eaVQDIdr2l0FTAvNCf9OGW7QxwsdmNkhBYQXPhrqE
         71HQsasf9XqvIqGZbj0iVAze0w5KNzz9WSb3pa9cHqWSN/FkbrfP82n3rLAoZbB/BRKy
         mpNSj6HtpGlWab2FZKSA9JeY7oX/TUaw4Z7XvljbjgDWX5xkTFpd9k6chcy6VEpMrd28
         iBOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ll/L9c050PZWCv3nQmbsqz737vyneD4h11eitiJFuPY=;
        b=iGtegiC2QBvkuM3wXKWDI/pW3+8QxZBQSZyy02jpwW/EOg4YIIL3am67lCmKIZC7VZ
         95IlVvzqMgVYhzX8Cn5eah7HJbYiEDZk6FZd6y8+T0L9r3wZ07bUmS3/0dDvjZeum+U8
         oWmVDjQRi6Po8UESwT8Cy/RS4hQwGETVqKMcdQPWA1AZGII7kez56dZdppP63uc8nJdd
         l0nKlCoPHWgSjtFhTIqN61z5xQ9/4NsyrAmkaTL4KC4KPKFZvrdW9CUWJ+754Bj4/Qbb
         551W3+V7bjnKdj3SvI2PDMJvp4DBfRm+ckIu7vP/tjx11aWbLPi1FUHZXHafDCtc+XGJ
         MRLQ==
X-Gm-Message-State: AOAM53008qRhToIouLSxvRlIfRVTPUblJFE8082gBTB89J9DhJE6ceeb
	95VSP1AGgZsdnosvPqfn/EU=
X-Google-Smtp-Source: ABdhPJy8GMN2IY+ao5D6sgpJkjl9RBMrFYWAhYr8YxuI8CVkORwFax0JldBmdIIFmEXRWFhyBPsusQ==
X-Received: by 2002:a17:902:7d86:: with SMTP id a6mr20414918plm.215.1595278209363;
        Mon, 20 Jul 2020 13:50:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:86c3:: with SMTP id y3ls245991pjv.0.gmail; Mon, 20
 Jul 2020 13:50:09 -0700 (PDT)
X-Received: by 2002:a17:90b:4ac7:: with SMTP id mh7mr1258898pjb.158.1595278208945;
        Mon, 20 Jul 2020 13:50:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595278208; cv=none;
        d=google.com; s=arc-20160816;
        b=wGNwEeuJe0SZfXGH8jxRMP1I6w0CYoqkTo33z5RM3eomVfmc1g1BGEC/8shub+P3AS
         7GtNbO3EII4INrIykBwXw/bdc+gyviN7D7cGnkt2QLWY17ygf4ekJY3GH5NCu5iFxHIL
         +SU6yoiXpX9i7xO7Z+7BUMTdy/+NhicWmAaM54FwUm58IDPkyUOHm1gqoeFyDGoBiYap
         KZYitcOFDk/AcI9On2j1BCiRPMFn7j75dL7QsAva5yY+bCF6VleAS9s0KVPL2aQQAGol
         wPOw1DFRUq3r2+qRQ6a+AWzrdkajcVK57/csrYbDNbEFoAyzA3qrRnPzU9oIbciGpu3V
         6fkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=H8n8NlDA+XqQVjoji1oNapNAeXpu2S6QN9jGft1e7uI=;
        b=rXXmbculc+AkJrzMo268+6pnrzBaZvGNynH5KZ+Xqz53QX/Vd9iC7qsm31TTjmPE7U
         LqvhqptTNcqasKUKrRmyt1ab7FvUHGfSBXfdKYLQYQKe4L6NWu627CIDnXYKl8MuDtHz
         FP4DaDcL7o3+eQZuBy61U0oIg2HzkNinAOLfZ9zUISIp8GamVYodQqqLt9vocmW62UYI
         tShVMsjvprgdC7em3Gojk5qTwrQ5rh8Z7GYxkUMrbGJZKUDDuaCRZJo+aFZOwcM8KO72
         JSklHYjWP73Iko82nUMnGD8u4pFerog3dYVaJajlxjsX3nZJczOuta6ZmGQzdMVwjE+s
         IxMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XD68lI7x;
       spf=pass (google.com: domain of 3gamwxwwkan0mcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3gAMWXwwKAN0MCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id v5si808006plo.4.2020.07.20.13.50.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 13:50:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3gamwxwwkan0mcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id w35so23158595ybi.16
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 13:50:08 -0700 (PDT)
X-Received: by 2002:a25:641:: with SMTP id 62mr36056360ybg.484.1595278208076;
 Mon, 20 Jul 2020 13:50:08 -0700 (PDT)
Date: Mon, 20 Jul 2020 13:49:18 -0700
In-Reply-To: <20200720204925.3654302-1-ndesaulniers@google.com>
Message-Id: <20200720204925.3654302-5-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200720204925.3654302-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH v3 04/11] x86/percpu: Clean up percpu_add_op()
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
 header.i=@google.com header.s=20161025 header.b=XD68lI7x;       spf=pass
 (google.com: domain of 3gamwxwwkan0mcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3gAMWXwwKAN0MCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
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
 arch/x86/include/asm/percpu.h | 99 ++++++++---------------------------
 1 file changed, 22 insertions(+), 77 deletions(-)

diff --git a/arch/x86/include/asm/percpu.h b/arch/x86/include/asm/percpu.h
index a40d2e055f58..2a24f3c795eb 100644
--- a/arch/x86/include/asm/percpu.h
+++ b/arch/x86/include/asm/percpu.h
@@ -130,64 +130,32 @@ do {									\
 	    : [val] __pcpu_reg_imm_##size(pto_val__));			\
 } while (0)
 
+#define percpu_unary_op(size, qual, op, _var)				\
+({									\
+	asm qual (__pcpu_op1_##size(op, __percpu_arg([var]))		\
+	    : [var] "+m" (_var));					\
+})
+
 /*
  * Generate a percpu add to memory instruction and optimize code
  * if one is added or subtracted.
  */
-#define percpu_add_op(qual, var, val)					\
+#define percpu_add_op(size, qual, var, val)				\
 do {									\
-	typedef typeof(var) pao_T__;					\
 	const int pao_ID__ = (__builtin_constant_p(val) &&		\
 			      ((val) == 1 || (val) == -1)) ?		\
 				(int)(val) : 0;				\
 	if (0) {							\
-		pao_T__ pao_tmp__;					\
+		typeof(var) pao_tmp__;					\
 		pao_tmp__ = (val);					\
 		(void)pao_tmp__;					\
 	}								\
-	switch (sizeof(var)) {						\
-	case 1:								\
-		if (pao_ID__ == 1)					\
-			asm qual ("incb "__percpu_arg(0) : "+m" (var));	\
-		else if (pao_ID__ == -1)				\
-			asm qual ("decb "__percpu_arg(0) : "+m" (var));	\
-		else							\
-			asm qual ("addb %1, "__percpu_arg(0)		\
-			    : "+m" (var)				\
-			    : "qi" ((pao_T__)(val)));			\
-		break;							\
-	case 2:								\
-		if (pao_ID__ == 1)					\
-			asm qual ("incw "__percpu_arg(0) : "+m" (var));	\
-		else if (pao_ID__ == -1)				\
-			asm qual ("decw "__percpu_arg(0) : "+m" (var));	\
-		else							\
-			asm qual ("addw %1, "__percpu_arg(0)		\
-			    : "+m" (var)				\
-			    : "ri" ((pao_T__)(val)));			\
-		break;							\
-	case 4:								\
-		if (pao_ID__ == 1)					\
-			asm qual ("incl "__percpu_arg(0) : "+m" (var));	\
-		else if (pao_ID__ == -1)				\
-			asm qual ("decl "__percpu_arg(0) : "+m" (var));	\
-		else							\
-			asm qual ("addl %1, "__percpu_arg(0)		\
-			    : "+m" (var)				\
-			    : "ri" ((pao_T__)(val)));			\
-		break;							\
-	case 8:								\
-		if (pao_ID__ == 1)					\
-			asm qual ("incq "__percpu_arg(0) : "+m" (var));	\
-		else if (pao_ID__ == -1)				\
-			asm qual ("decq "__percpu_arg(0) : "+m" (var));	\
-		else							\
-			asm qual ("addq %1, "__percpu_arg(0)		\
-			    : "+m" (var)				\
-			    : "re" ((pao_T__)(val)));			\
-		break;							\
-	default: __bad_percpu_size();					\
-	}								\
+	if (pao_ID__ == 1)						\
+		percpu_unary_op(size, qual, "inc", var);		\
+	else if (pao_ID__ == -1)					\
+		percpu_unary_op(size, qual, "dec", var);		\
+	else								\
+		percpu_to_op(size, qual, "add", var, val);		\
 } while (0)
 
 #define percpu_from_op(size, qual, op, _var)				\
@@ -228,29 +196,6 @@ do {									\
 	pfo_ret__;					\
 })
 
-#define percpu_unary_op(qual, op, var)			\
-({							\
-	switch (sizeof(var)) {				\
-	case 1:						\
-		asm qual (op "b "__percpu_arg(0)	\
-		    : "+m" (var));			\
-		break;					\
-	case 2:						\
-		asm qual (op "w "__percpu_arg(0)	\
-		    : "+m" (var));			\
-		break;					\
-	case 4:						\
-		asm qual (op "l "__percpu_arg(0)	\
-		    : "+m" (var));			\
-		break;					\
-	case 8:						\
-		asm qual (op "q "__percpu_arg(0)	\
-		    : "+m" (var));			\
-		break;					\
-	default: __bad_percpu_size();			\
-	}						\
-})
-
 /*
  * Add return operation
  */
@@ -388,9 +333,9 @@ do {									\
 #define raw_cpu_write_1(pcp, val)	percpu_to_op(1, , "mov", (pcp), val)
 #define raw_cpu_write_2(pcp, val)	percpu_to_op(2, , "mov", (pcp), val)
 #define raw_cpu_write_4(pcp, val)	percpu_to_op(4, , "mov", (pcp), val)
-#define raw_cpu_add_1(pcp, val)		percpu_add_op(, (pcp), val)
-#define raw_cpu_add_2(pcp, val)		percpu_add_op(, (pcp), val)
-#define raw_cpu_add_4(pcp, val)		percpu_add_op(, (pcp), val)
+#define raw_cpu_add_1(pcp, val)		percpu_add_op(1, , (pcp), val)
+#define raw_cpu_add_2(pcp, val)		percpu_add_op(2, , (pcp), val)
+#define raw_cpu_add_4(pcp, val)		percpu_add_op(4, , (pcp), val)
 #define raw_cpu_and_1(pcp, val)		percpu_to_op(1, , "and", (pcp), val)
 #define raw_cpu_and_2(pcp, val)		percpu_to_op(2, , "and", (pcp), val)
 #define raw_cpu_and_4(pcp, val)		percpu_to_op(4, , "and", (pcp), val)
@@ -419,9 +364,9 @@ do {									\
 #define this_cpu_write_1(pcp, val)	percpu_to_op(1, volatile, "mov", (pcp), val)
 #define this_cpu_write_2(pcp, val)	percpu_to_op(2, volatile, "mov", (pcp), val)
 #define this_cpu_write_4(pcp, val)	percpu_to_op(4, volatile, "mov", (pcp), val)
-#define this_cpu_add_1(pcp, val)	percpu_add_op(volatile, (pcp), val)
-#define this_cpu_add_2(pcp, val)	percpu_add_op(volatile, (pcp), val)
-#define this_cpu_add_4(pcp, val)	percpu_add_op(volatile, (pcp), val)
+#define this_cpu_add_1(pcp, val)	percpu_add_op(1, volatile, (pcp), val)
+#define this_cpu_add_2(pcp, val)	percpu_add_op(2, volatile, (pcp), val)
+#define this_cpu_add_4(pcp, val)	percpu_add_op(4, volatile, (pcp), val)
 #define this_cpu_and_1(pcp, val)	percpu_to_op(1, volatile, "and", (pcp), val)
 #define this_cpu_and_2(pcp, val)	percpu_to_op(2, volatile, "and", (pcp), val)
 #define this_cpu_and_4(pcp, val)	percpu_to_op(4, volatile, "and", (pcp), val)
@@ -470,7 +415,7 @@ do {									\
 #ifdef CONFIG_X86_64
 #define raw_cpu_read_8(pcp)			percpu_from_op(8, , "mov", pcp)
 #define raw_cpu_write_8(pcp, val)		percpu_to_op(8, , "mov", (pcp), val)
-#define raw_cpu_add_8(pcp, val)			percpu_add_op(, (pcp), val)
+#define raw_cpu_add_8(pcp, val)			percpu_add_op(8, , (pcp), val)
 #define raw_cpu_and_8(pcp, val)			percpu_to_op(8, , "and", (pcp), val)
 #define raw_cpu_or_8(pcp, val)			percpu_to_op(8, , "or", (pcp), val)
 #define raw_cpu_add_return_8(pcp, val)		percpu_add_return_op(, pcp, val)
@@ -479,7 +424,7 @@ do {									\
 
 #define this_cpu_read_8(pcp)			percpu_from_op(8, volatile, "mov", pcp)
 #define this_cpu_write_8(pcp, val)		percpu_to_op(8, volatile, "mov", (pcp), val)
-#define this_cpu_add_8(pcp, val)		percpu_add_op(volatile, (pcp), val)
+#define this_cpu_add_8(pcp, val)		percpu_add_op(8, volatile, (pcp), val)
 #define this_cpu_and_8(pcp, val)		percpu_to_op(8, volatile, "and", (pcp), val)
 #define this_cpu_or_8(pcp, val)			percpu_to_op(8, volatile, "or", (pcp), val)
 #define this_cpu_add_return_8(pcp, val)		percpu_add_return_op(volatile, pcp, val)
-- 
2.28.0.rc0.105.gf9edc3c819-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720204925.3654302-5-ndesaulniers%40google.com.
