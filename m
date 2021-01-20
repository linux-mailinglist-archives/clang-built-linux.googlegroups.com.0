Return-Path: <clang-built-linux+bncBDB3VRMVXIPRB47MUCAAMGQEJM7ASBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5581C2FD1F2
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 14:56:04 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id y6sf9213561edc.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 05:56:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611150964; cv=pass;
        d=google.com; s=arc-20160816;
        b=ciojq+oyBiHOFV0mOyp9V9IBtguy12EuGcKNYIiiCEvsmZpFxhx6BEjsmj01zk8lfu
         +f+ExLtqC60jRzbfgOIs9PmKevw5ZR96QZzzpfEG7w5zaaFUsvCoOQ4Dk2QMsoRyLszt
         JYMdbBAWUNK/47L+xNsW4WQbS0ETXyIk/kzOU0adI0J9XQhziFNsvqIf5h2e5cvgE2vi
         SUMKYEW9G1Gz3ifbEptdYTSeEkz2O4yBhw+TJPGXXs7srU+fnZfKMPRwr1OZlWwxKWEl
         P+fNSPPK2ptEEYvGsAY3oF/fqOM+BRp0ta5K8DCPJdJDXzcwiQSVxZWDYwV9M5glNNzg
         8kcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=cr5NhNuVdULRh1pjPbKdK5+12ySB5Iu8/eYimSe3VI4=;
        b=Akv8yS+g0O/Q+mYXly/fTtE9KV6NlgpG5rGPpvx/DHDPDq+RQVK4S8woI4NeL3eAL9
         sFMbxOU2valPjtnapnZOS+n91NqpgAX+SHd9AF1c4yuWKP8t+MwyQr85Jx6qrTYnElSE
         2RDiza0Ze+2/Z5qBLBYRbqv4tH1RgrDtcAetFVUr5Wg8E7LwhZB/Jx5slv1c2bstKYa8
         pe+3qPBaWm8u5dGNFd4ApOmuFHLvb3Zr9aF/yAjDu97FLowf3FuqXwDqtGF2J1oXqBxq
         yB5Tjfkq4UvuLl+OhZeUXjGaPbNeffy3bLTl2Csls1ZkcfhvCdcmCbXtKPfOsnxNEkiv
         YgzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=WiWvsvSc;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cr5NhNuVdULRh1pjPbKdK5+12ySB5Iu8/eYimSe3VI4=;
        b=loakY91/IASLKkE3UyyoH8tUAsFbUy4w7M1pQzi2UW9rbPqFsv7qEaV/wCe9pS6ZNk
         MQsEwoWskTs8t2bGafaIjpXLRHRu4nztmnmuGSw4ma/B9yxYg4gRZqUih46ij3IxFPxA
         HWzWs0BslsSklsE9h29W87QeONWbq6FxgKwPCOCD5wc80hgaoRIrruUDnaxzP5Jh4Mrq
         7PDEaTVwghaZ9vSmVuWVh9U6ddQ/CCiPQYZLPniNN/5lxnnzhKa/EsWfGEmD70xnFFvh
         dntOuzHKGX17WpT7RFb9EpBbU+oJobi3vgkMm0SNZ2vuYXCqmM20nRWH6FBDNYPkleKF
         LPWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cr5NhNuVdULRh1pjPbKdK5+12ySB5Iu8/eYimSe3VI4=;
        b=X39ZwCu/UYKJco/01bAjvLtWSfW5WjoIR/JmEO2dpf2MwOMwmaLiMmq706Jdlo85Lm
         Eg5IriymeMwE4ZA7/kipTOx/HaWG2PGWSDrbPPZueyPH5iMT0vWUcdifz12CdCTDr8Zj
         WoBB518b7btNnTpAR5StLBmGCiH+Kqc/5AJ/eOzbuuVC4mTJ6AjL+QR2WKJqqYjD6sgQ
         pMxXoR9sspI3b2nh8tcOlGTcJm/yKviDxnSPczzZ8k2C2UysYbZ9TpsBjx0yHj2CgA7y
         JgSrfuAQID2VzjLW/HCgUxybqd1L28rVAnlEx9TMJBWnoHmDbXxdmOcMhyk59ullampm
         BUfQ==
X-Gm-Message-State: AOAM5303io2aHDJ8aQqpleVErIos6XBobajNNT/BwC8A3mNrHVB2x/4J
	i1q0/mSvqKlsoDjA4CbW0Oo=
X-Google-Smtp-Source: ABdhPJweJD6iCx3oSkKsqcMFlTkmEDyMqCPBSyiGJfZVvrT/Q04PuWj2fAlhadIjtyDNgda8m0+VnQ==
X-Received: by 2002:aa7:d148:: with SMTP id r8mr7407945edo.127.1611150964040;
        Wed, 20 Jan 2021 05:56:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:5245:: with SMTP id y5ls2825293ejm.7.gmail; Wed, 20
 Jan 2021 05:56:03 -0800 (PST)
X-Received: by 2002:a17:906:3404:: with SMTP id c4mr6403078ejb.86.1611150963205;
        Wed, 20 Jan 2021 05:56:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611150963; cv=none;
        d=google.com; s=arc-20160816;
        b=glagpjxo0xudK3dCIzgVfF1yS8wp8kpzCidSKNsocHdUG3kFwew4je/qDGVu6L75Rn
         ZqKFd84YJGnJ1iOM900d9k1p9xJEcuHtupZisgfhbaWgEWFuhuyVV73vMqyZBFFucXS4
         o0nKfiTTxFxnYrH41qDHy/GDOKEDiHQRlAe3dwqO7WnVAgfACb8mZjuvtLMR9OcZ/rN7
         +iqk16oor6ZpCE/wtQLiUbOOCW+PccXrWsvbewJaWcYU2g8mUeK73DJkQ8HDfSLtqtn/
         lWWsF/nFRYHfm1Ay6hL0+bF3ukERkRf1mV0IM7iEXviMqMkILE48gvapbaNsnrNorCHX
         m/oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HLdbfKKd8U3U0mpjOuCtG4D+mEzxepybK1454rxDb0I=;
        b=0rkcmM8y5ySNSK8HrzSeZAHj32sKwUcv2FUQYLo1ClMH4H/sZVAjVKWU33qAtM+aPb
         qCEl59qd3yjtSPq7cfJucykMzdvy3MAtPKtTBwlSBFjGDefIPBeKXa0ACjvNWwE8ToLL
         eNI6vpgWU7+nEWaFTwlhplWXodT5IAZv2BCI0RavnebC1JjjGbBkkW+J/ROisYCu5w6V
         JvkwD3ZmJuOAzN1a4EiQXB0gyc7OUtBHH0Tl2uGpshwZx9gxFIjI5TUwfU3fba51AFg/
         xTWN7DzlhcM5WlL+/CT6J+L821Ixh8Zar9/D9FgoS/wDMRQpYRTXyiyCTxtsarXclpUt
         FxEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=WiWvsvSc;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id k20si141608edx.3.2021.01.20.05.56.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jan 2021 05:56:03 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id C33F6B707;
	Wed, 20 Jan 2021 13:56:02 +0000 (UTC)
From: "'Juergen Gross' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: xen-devel@lists.xenproject.org,
	x86@kernel.org,
	virtualization@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Juergen Gross <jgross@suse.com>,
	Deep Shah <sdeep@vmware.com>,
	"VMware, Inc." <pv-drivers@vmware.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v4 11/15] x86/paravirt: simplify paravirt macros
Date: Wed, 20 Jan 2021 14:55:51 +0100
Message-Id: <20210120135555.32594-12-jgross@suse.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210120135555.32594-1-jgross@suse.com>
References: <20210120135555.32594-1-jgross@suse.com>
MIME-Version: 1.0
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=WiWvsvSc;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210120135555.32594-12-jgross%40suse.com.
