Return-Path: <clang-built-linux+bncBDB3VRMVXIPRBBFRTCBAMGQEC7V3W3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1DB330D73
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Mar 2021 13:28:53 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id 75sf4723565wrl.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Mar 2021 04:28:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615206533; cv=pass;
        d=google.com; s=arc-20160816;
        b=qjHiA1HxYS8zfQyEzjhlum3idVditJPAfnuj1jho7+HX9z6tx13DOZxw0NPzgsJuH5
         Zy4dPOyIJbStMOGo62Km8Tl2lIarCB/5jZrSSgLxH4A/l2rTWIY1Yy9hMekRej08uicU
         fEHlvq7RIwEgSYIb7cKbuy9DCLu6Z3emBE4w4VVN2T7W4VuTPopQPVF3yf1wcq/2BFXu
         F+fQR8bE6KjoudCdgKplz4SmmnRmkTpiKgbtwdZVUeWRNvoMl11ahEasea2CT0gCh50r
         HLXnOdc65UVBqiZd8U/ghWNacStlvtU/Jy2zwWZRskIOj07rp6vXT4p+XLH8tb56SWiE
         ZKhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=SUjbZs8/sKZ8nNSnUmWFv4A9299ztPgCVOS53ZxoofU=;
        b=bz9GJvoQXSFzfHGV2DGYx3q1lnflGJXpst8gXmykBYm1ne4fSpW50JvKIGYfGzFlCL
         doC1q1/dkDF8ZW/EWoKWP9kT4QOra2MvxEE19WmTj7GdoDTahZ4OASasBfGhgQ3Z4Nw0
         1O/j7O+WUWNcmyC02534emKZ226kczfsin4X0lIG0N7JYWx8LyGkHPfa7YW2MrleR+ar
         RbFCz2eCLv2SyawWdbUZKFZ7nhjdvcJezhpMdL3rZ0V7xYY2BN7FAnv6cRtc7IS5E22E
         0lIq8lzG4MIrApg8lXhm9zGmH90hh+jQA7dt1KRRfafz1NlZvCAGddekwJhUjeIHnHPq
         Bpvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=YNXv3uCm;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SUjbZs8/sKZ8nNSnUmWFv4A9299ztPgCVOS53ZxoofU=;
        b=kUELN5bn6jw218nMXtpMlvy5OrISZU1ek8EJfYT6d3nrIa5Po6UUqLQr/JBoEKXeBX
         STNLqTKszyIfvhS/qPpAdIkY8Z7d9zdKql4K4+CMGu4t3/fhVTvjz/OKx4Qq4aMeisd8
         L2D7b+IQRxXRldJGmWCoMq2AMoUkydJUEIMUBImmB/bSgOm5A0DIcvI1TaRuglS0ig/b
         szTaQzbvRV6EP9pwzWr3Sx1zdYOcYnEHtrLewIq5y9FuynKkTGX8Xdt3N8pJcqYmYa1l
         KWHJyIC8j980W/aq4L/NkovHnH2syPksEM4a4+9jTUNiYs83iqdc3Y/sLnRLOwhA1YIf
         YGLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SUjbZs8/sKZ8nNSnUmWFv4A9299ztPgCVOS53ZxoofU=;
        b=SN880Nl0FSgEUqDavn+vPhkcfTEboAIGR8KUklsV5DcomnD6kuakW3jnTODChURyhI
         mM9ixDFA/RDP6ZkpV4lS2sAxyo3EkxB9Lhab69mNoEC+Obi0EpT5fKBdMqQawFXja5gm
         aCj3aVtTHVicMP/W1QAfZNtt0c1q7w3W3UpMt3rM/byPQkxGg24cU4mtijPSo2O1Y9iu
         7aBiHNvV0/TmncicOsuFjorSRXq9V/1V/ih2mHyqtpxQG9MEAfbrB6OdKqNCdXSHt/Ng
         uovmYCySriX7SWfew3xXBjUO3BYmnCevQ8lFfDgtfD4QC11Qeh0ItwwjQ2WhQ6z2tg5t
         BkDQ==
X-Gm-Message-State: AOAM53279WKum25eW8gkgcHju7WAPHLJb/HGhqBdyc4dS1OQLbUZhI1p
	TjeagM8VudDVFmKigRIFZ10=
X-Google-Smtp-Source: ABdhPJxhpuYrVe+M9J4vP8CuezDGz06MtsWe6GX/aZx1RHyH1l2anf+4CeME5bGiaSKg8T7VeBY8Ww==
X-Received: by 2002:a5d:4521:: with SMTP id j1mr22211863wra.354.1615206533008;
        Mon, 08 Mar 2021 04:28:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:bd84:: with SMTP id n126ls2746330wmf.2.canary-gmail;
 Mon, 08 Mar 2021 04:28:52 -0800 (PST)
X-Received: by 2002:a1c:a791:: with SMTP id q139mr21436669wme.20.1615206532174;
        Mon, 08 Mar 2021 04:28:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615206532; cv=none;
        d=google.com; s=arc-20160816;
        b=hTnAdJZ27EjDupWOi1l8lvi7u+ttKxAvi+IVskX+1Cn4O59TGLx4LB0daR3pUQCsFu
         I8mzFVyMidYl66RRXRjYtzHiWixpjvFxFApzCvZsLDG+vb5Vb91S6fzVUXZRb1Yj4uI2
         Llu5GzoEnAOi1Iq0iyGVI0HX+3tS3fHMzf14fXqkflXcPO3PTt164Bxhb9xjdvHxm7WI
         CE0m+2BMiQgeoeY9yQFpDBkFluBM5D2sLwFjYeS2mmHaLuzdI2XGLg5XJjlvZd+LOQFI
         8nDkWTL92VOc6aIQzdpMqN1baVwiIXO2dEM/R3uGoyy5eoixBcMbfu3J75L3kyoaiziP
         cExw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=u3YnMSkFlUp/21QNZ1kMggcxHe1yXHAkDy5ICMJL1QU=;
        b=x+RxcZ3MIeR+Nx1CbMd1JezyIo+p8iJFr8t+y3nLELXBnuUGYRm8bLybx2FC10ldFi
         Ty+mKQgkSFqtQeHczapYG4+gA2wz0TMPzWq5jJmTVMHWPjNKtpC3VF1b3pkGXboMUEDe
         MRv2Dg5TCSe2MP0wA5R6gVGfbs4Drhb0/MSDuHZHWNiSob2qTMwJGOgr/eH5fmwXg+n7
         CZC2SkCo/f4RVNQgnEY5L65F2zQ3TxGSw84uCdL+uCuKPMQ6pRtksvhaJmEp8sd24uXl
         ML0fvKovW/zJMB46IvDkFSjd1AhANk8dghAjtzcCF5Agy4fdqDyyHynrW1BDjfJG0yjS
         WwzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=YNXv3uCm;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id g137si857307wmg.4.2021.03.08.04.28.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Mar 2021 04:28:52 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id C3CDDADE3;
	Mon,  8 Mar 2021 12:28:51 +0000 (UTC)
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
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v5 08/12] x86/paravirt: simplify paravirt macros
Date: Mon,  8 Mar 2021 13:28:40 +0100
Message-Id: <20210308122844.30488-9-jgross@suse.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210308122844.30488-1-jgross@suse.com>
References: <20210308122844.30488-1-jgross@suse.com>
MIME-Version: 1.0
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=YNXv3uCm;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210308122844.30488-9-jgross%40suse.com.
