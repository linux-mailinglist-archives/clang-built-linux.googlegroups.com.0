Return-Path: <clang-built-linux+bncBDB3VRMVXIPRB6O6UCAAMGQEKZWTKJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4512FD141
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 14:26:17 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id z8sf6654556lji.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 05:26:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611149177; cv=pass;
        d=google.com; s=arc-20160816;
        b=Iz7NK/mNa6/bzvWC4NfLtjQ5FK8eixT+al3jAs5QXs1MVN18TJ2g1qoGk/Pib7Vh5B
         DnMi7hhz5dsIVhOmWHkZUv39zglTDCXdaEJb+i5QrO0UJK+09rFVvD3VcCWEruXFQlkA
         ntnDl1kd/4j4WALEnLkAsF74Y9Xq0VMCKaA/hz9ADmcL4L019vaytFQO4YHlDsz33zId
         FYec6MuVdC5pEC31Xti30b7j0t42k0o4Hlql5NHWX3whpqWwecxLJcxTyTh1Z+3N5Tou
         s1AfXfbfkCTBA5Moo3GUTOw+hdpnt8oKVtGmJbE6Brl+Kx9xtREhhykqdl75jMWVh5Ya
         eKkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:dkim-signature;
        bh=1VDD7E3GEw1v5jpikJK2JQpCfc+knucpBO7oSNITtM4=;
        b=kc/JctuKX2BU4X+9eB5Ww49vrPIVvaEGmGLvQivTwnLzDz/slu9TQxEpUT14naFh5W
         raKGVpamPPcEmp0CBV8bwLvxMjtxyWpNwRWwYOlkRs216+UG58ztmaZoB9ZWZo6LgtpA
         jNu0gtpQELMnJwSstQqYAnj6p++FX1uyx8DcW/f2+a+AtPH+MSMUxsGKXI3WezeIqrs7
         +y4d9/uO9Mn3fojLJ3oRjPAsB+JjPEdLJQfzL7R1pKRiRJQI81MKUMed2c0x5IGbLk9M
         XmMC8RyG1J5R6NI+DhBcUsb24+O1hnan3Wq2cajYCvMDS0E6/du8s/hUQ+wx/V9CJCHr
         TVkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b="GL/fY4RS";
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1VDD7E3GEw1v5jpikJK2JQpCfc+knucpBO7oSNITtM4=;
        b=AQ6yZIjdsQO/QasRlvVL55v1rOb/8PRUGWj9hEqmo/EBNluB9KMUCh+0ZQSgxG234Z
         CIcdSRU275vv+NUWqeGeTiRTCGrR8i0MxBABLR4GdoM13Sdyk1fCOUWVcnGxS8RJQEj8
         kVm9cI3XYV810w1Miq2yc/16Gw4NW/1+na13L71tp/E64m4pL9AuowhS0OuTbIMaWVok
         Bxf0s8FvUdLNe4yFF2FOatCo3LCw98iMI+XkR9QuJgpg38gWyvXaP5wn1osRIitD4JEb
         0jbobkopN5aVKtXqkPh16r57YpEtTL/kpZWCdAqVqKiSRTQu5zH3EuQxKSY9ffyacjpW
         UoGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1VDD7E3GEw1v5jpikJK2JQpCfc+knucpBO7oSNITtM4=;
        b=lpP/feTrRFEeAsR2LOmd8LVhTry5TpBFigi0Xln5O5EeJQIZIKKLXMcb081ndgjJ+/
         PF69RHGR+GGDvSIbvNRGOw2JXwSXrbF02ozlsLg/Ap8TSY+qOhr5nRpFtbxm/RS3xgZO
         bGD978/tSqBV/kJqUdNCbiTSEUsB3/bjf75iz6Mp6HOniizavOVC7xybVRFeYrpS1dt0
         Ba6lBDT4xX8XFI9FAVnLJasP9FWGDyKWGJEta2ZgsnAe18jSqnsTJ8Xzw6nFyQL5AbEE
         Yy+j9txtWyhvYm7SIX4vnfWXjO7shkHU21UZfjwrfzCU5I7m2CAJ4idUvFWUqIQ33C6F
         ueuA==
X-Gm-Message-State: AOAM532aBE5b/1lzT6Tu0o6AIN0qFfbHPXsQknomhchsD04ttrnSSgDX
	sSw7BeJOCNB9/31ZTZT+LMo=
X-Google-Smtp-Source: ABdhPJy4yS++ZYxcqS7S5z/dqSrGwLrGAXxKUGdkZjhhD62fexMG5fObjHC9tAfwWb4w6vL5nT5Mxg==
X-Received: by 2002:a2e:b52c:: with SMTP id z12mr4662746ljm.250.1611149177324;
        Wed, 20 Jan 2021 05:26:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:91c3:: with SMTP id u3ls339388ljg.10.gmail; Wed, 20 Jan
 2021 05:26:16 -0800 (PST)
X-Received: by 2002:a2e:b542:: with SMTP id a2mr2896775ljn.306.1611149176407;
        Wed, 20 Jan 2021 05:26:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611149176; cv=none;
        d=google.com; s=arc-20160816;
        b=rdBjroLC7Fv5lEmVe2lo+ilaS83NgvUt0iJ5t9LKw/lUQJ7xpLJapPhAHxA0gK1LXQ
         WcEiMvVME773wERT2MexkPzrgl3iWP8prarewzaT6zGwQqT/OkjbYBS69hPoB9VuHG6V
         9w5KRtjrato8a8S/wp/4ep+blkpdwt18SkwTNlV1xkj/k6zxTgFPxZGZCSesL8m7RKX3
         uayrkHp1pN3N/UzG48mE312N7TWi7gletQp5YXn215FlUj+EfFD177dr7GthTHv/pjIO
         21O24JKvEOj1Wmy0HsG2FiC81lDjfYtwdD14gH4lcr+YdkPzVCL79YYknMoX9/tbGUxX
         nX7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:dkim-signature;
        bh=HLdbfKKd8U3U0mpjOuCtG4D+mEzxepybK1454rxDb0I=;
        b=N2AiEWhte3VQ3PmkAHZQQST/IEls2ZJYEBoUjgGds3IBslRjOXTYoOxmceybMmmVKT
         YMgfpG9NbrBPdxFXkzxjixh44uJYFhgiVzdehCkrnPWYnDVOvHLfNNkN6SDnzCni9wR9
         1YhjPnIH4Y0ZsyycF4gASKKOjG8izYNNClZNiAuQFYwDvX2F0swJhMhivh9s7uGE7vas
         yL39s1oWYfzf/h+IU0bzVWdqx+0zLdFDVm0hfExENVfeTTjge3yicjAdvV/IC/QTugje
         0uAK2YLgY8tSO0JbExx00zbNhw9M0iiHdNxFl640/Goh9IOwPK2WtN64Pfw7wid8YU7b
         WymA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b="GL/fY4RS";
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id c24si129768ljk.7.2021.01.20.05.26.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jan 2021 05:26:16 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 8E708B337;
	Wed, 20 Jan 2021 13:26:15 +0000 (UTC)
From: "'Juergen Gross' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: bpetkov@suse.com,
	x86@kernel.org,
	virtualization@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v4 11/15] x86/paravirt: simplify paravirt macros
Date: Wed, 20 Jan 2021 14:26:09 +0100
Message-Id: <20210120132613.31487-12-jgross@suse.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210120132613.31487-1-jgross@suse.com>
References: <20210120132613.31487-1-jgross@suse.com>
MIME-Version: 1.0
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b="GL/fY4RS";       spf=pass
 (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jgross@suse.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=suse.com
X-Original-From: Juergen Gross <jgross@suse.com>
Reply-To: Juergen Gross <jgross@suse.com>
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

The central pvops call macros ____PVOP_CALL() and ____PVOP_VCALL() are
looking very similar now.

The main differences are using PVOP_VCALL_ARGS or PVOP_CALL_ARGS, which
are identical, and the return value handling.

So drop PVOP_VCALL_ARGS and instead of ____PVOP_VCALL() just use
(void)____PVOP_CALL(long, ...).

Note that it isn't easily possible to just redefine ____PVOP_VCALL()
to use ____PVOP_CALL() instead, as this would require further hiding of
commas in macro parameters.

Signed-off-by: Juergen Gross <jgross@suse.com>
---
V3:
- new patch

V4:
- fix build warnings with clang (kernel test robot)
---
 arch/x86/include/asm/paravirt_types.h | 41 ++++++++-------------------
 1 file changed, 12 insertions(+), 29 deletions(-)

diff --git a/arch/x86/include/asm/paravirt_types.h b/arch/x86/include/asm/paravirt_types.h
index 42f9eef84131..45bd21647dd8 100644
--- a/arch/x86/include/asm/paravirt_types.h
+++ b/arch/x86/include/asm/paravirt_types.h
@@ -408,11 +408,9 @@ int paravirt_disable_iospace(void);
  * makes sure the incoming and outgoing types are always correct.
  */
 #ifdef CONFIG_X86_32
-#define PVOP_VCALL_ARGS							\
+#define PVOP_CALL_ARGS							\
 	unsigned long __eax = __eax, __edx = __edx, __ecx = __ecx;
 
-#define PVOP_CALL_ARGS			PVOP_VCALL_ARGS
-
 #define PVOP_CALL_ARG1(x)		"a" ((unsigned long)(x))
 #define PVOP_CALL_ARG2(x)		"d" ((unsigned long)(x))
 #define PVOP_CALL_ARG3(x)		"c" ((unsigned long)(x))
@@ -428,12 +426,10 @@ int paravirt_disable_iospace(void);
 #define VEXTRA_CLOBBERS
 #else  /* CONFIG_X86_64 */
 /* [re]ax isn't an arg, but the return val */
-#define PVOP_VCALL_ARGS						\
+#define PVOP_CALL_ARGS						\
 	unsigned long __edi = __edi, __esi = __esi,		\
 		__edx = __edx, __ecx = __ecx, __eax = __eax;
 
-#define PVOP_CALL_ARGS		PVOP_VCALL_ARGS
-
 #define PVOP_CALL_ARG1(x)		"D" ((unsigned long)(x))
 #define PVOP_CALL_ARG2(x)		"S" ((unsigned long)(x))
 #define PVOP_CALL_ARG3(x)		"d" ((unsigned long)(x))
@@ -458,59 +454,46 @@ int paravirt_disable_iospace(void);
 #define PVOP_TEST_NULL(op)	((void)pv_ops.op)
 #endif
 
-#define PVOP_RETMASK(rettype)						\
+#define PVOP_RETVAL(rettype)						\
 	({	unsigned long __mask = ~0UL;				\
+		BUILD_BUG_ON(sizeof(rettype) > sizeof(unsigned long));	\
 		switch (sizeof(rettype)) {				\
 		case 1: __mask =       0xffUL; break;			\
 		case 2: __mask =     0xffffUL; break;			\
 		case 4: __mask = 0xffffffffUL; break;			\
 		default: break;						\
 		}							\
-		__mask;							\
+		__mask & __eax;						\
 	})
 
 
-#define ____PVOP_CALL(rettype, op, clbr, call_clbr, extra_clbr, ...)	\
+#define ____PVOP_CALL(ret, op, clbr, call_clbr, extra_clbr, ...)	\
 	({								\
 		PVOP_CALL_ARGS;						\
 		PVOP_TEST_NULL(op);					\
-		BUILD_BUG_ON(sizeof(rettype) > sizeof(unsigned long));	\
 		asm volatile(paravirt_alt(PARAVIRT_CALL)		\
 			     : call_clbr, ASM_CALL_CONSTRAINT		\
 			     : paravirt_type(op),			\
 			       paravirt_clobber(clbr),			\
 			       ##__VA_ARGS__				\
 			     : "memory", "cc" extra_clbr);		\
-		(rettype)(__eax & PVOP_RETMASK(rettype));		\
+		ret;							\
 	})
 
 #define __PVOP_CALL(rettype, op, ...)					\
-	____PVOP_CALL(rettype, op, CLBR_ANY, PVOP_CALL_CLOBBERS,	\
-		      EXTRA_CLOBBERS, ##__VA_ARGS__)
+	____PVOP_CALL(PVOP_RETVAL(rettype), op, CLBR_ANY,		\
+		      PVOP_CALL_CLOBBERS, EXTRA_CLOBBERS, ##__VA_ARGS__)
 
 #define __PVOP_CALLEESAVE(rettype, op, ...)				\
-	____PVOP_CALL(rettype, op.func, CLBR_RET_REG,			\
+	____PVOP_CALL(PVOP_RETVAL(rettype), op.func, CLBR_RET_REG,	\
 		      PVOP_CALLEE_CLOBBERS, , ##__VA_ARGS__)
 
-
-#define ____PVOP_VCALL(op, clbr, call_clbr, extra_clbr, ...)		\
-	({								\
-		PVOP_VCALL_ARGS;					\
-		PVOP_TEST_NULL(op);					\
-		asm volatile(paravirt_alt(PARAVIRT_CALL)		\
-			     : call_clbr, ASM_CALL_CONSTRAINT		\
-			     : paravirt_type(op),			\
-			       paravirt_clobber(clbr),			\
-			       ##__VA_ARGS__				\
-			     : "memory", "cc" extra_clbr);		\
-	})
-
 #define __PVOP_VCALL(op, ...)						\
-	____PVOP_VCALL(op, CLBR_ANY, PVOP_VCALL_CLOBBERS,		\
+	(void)____PVOP_CALL(, op, CLBR_ANY, PVOP_VCALL_CLOBBERS,	\
 		       VEXTRA_CLOBBERS, ##__VA_ARGS__)
 
 #define __PVOP_VCALLEESAVE(op, ...)					\
-	____PVOP_VCALL(op.func, CLBR_RET_REG,				\
+	(void)____PVOP_CALL(, op.func, CLBR_RET_REG,			\
 		      PVOP_VCALLEE_CLOBBERS, , ##__VA_ARGS__)
 
 
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210120132613.31487-12-jgross%40suse.com.
