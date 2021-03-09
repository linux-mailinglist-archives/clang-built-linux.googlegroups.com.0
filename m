Return-Path: <clang-built-linux+bncBDB3VRMVXIPRBJ7ZTWBAMGQEOHRS4XQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CDB33277F
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Mar 2021 14:48:23 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id a24sf5672994ljp.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 05:48:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615297703; cv=pass;
        d=google.com; s=arc-20160816;
        b=aKY9EW5J73/u7dqJqSyZOzO9gB3tqFJscG2aWYpwBVX1hEN5Uok7qRRzUragi8KdZ2
         khOgZ3Z+NLmi7KayT1zK1Vg/IbXbj5cLf5EuzmLdGlVBkqUmrLzqGRpw1ToP4nv2Tn9+
         bRAqjkkCgd0kthnvc8GuPtLpiqSu2PTS/e7ayBYXi4n5bOC0183EPN+cVdyF12q85g8N
         TZPgkEhmihByUfUovebczGWecR/019I7JdzEVU6gcKk6p/rG6S2/RNXcsDmTIXOtpm/a
         K/rDZhG7qYtjFVT3O1j6fn5Pmh5z75q1MSGXme2HenrhLVsAZYtZZ/PrI+H5YTcBI15P
         4vqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=+PHH94fEmtL8rIqu8WC8UV2U0pJVA0yvrpMSfOI/FGM=;
        b=LlixuMcpBE2dXifg1ZzYUxpi87d60LbiLAYXELy7HdwvRsFyEBwIOe16AbhSvFXlod
         fpEWakt39Kk/qM40QaXgwYAHp305NHtkZRsr63Cz+hqqb7MkjC51K1d3ggUHQEhHhzJY
         zF1BjnW0ceQmgoTJ3p87+M4L793OPunG9m8x372nz/Ut8lO/40nb0T0i4DufUsh5ndxO
         ZN0rp0zLYYLUNSUdWUFDltYiQ5QuQECkY0rD4KIRzOw4vxtOrDoZcmZgr0JYErPKec8S
         Z7uxbxKe2Ki1oarK46SpbbW/+9iu2dhi7wxQVA12AFDmMjziGaec52P7wpan6i6spUwP
         svgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=ry6NxALg;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+PHH94fEmtL8rIqu8WC8UV2U0pJVA0yvrpMSfOI/FGM=;
        b=TIJirAMA4ebQyWFQ07+/+D5A/ZcWpA+anGPRBYlAZgwn1opo8EtoG26TyKJ5NFuZA0
         sKA+Ycuf1hscGkCd4VTHNq5c/ym8qcv9lU2ZmwMpjPXPzsoayfrWOFQXJnyE0vpHKX7K
         BdFBvsTjtTNteJOnqPsR0rzm12Z3acnwVo4VAs68dLDVMDeBrWhAia+VTRO4QXlGx/7Y
         mI8p4YJ2//NeHzLS1piyaOqAlWS0cD8YglALJbNbSyM8NCR2LWq7lZTomryNNLEEd7YU
         VxEqvNChwM/6+i5a16/1RDH1XfYpZEjN9wl5T7nLwWnzhPL0Ct7Mnp1fN6sZxUAd4rUJ
         m6MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+PHH94fEmtL8rIqu8WC8UV2U0pJVA0yvrpMSfOI/FGM=;
        b=Iu9mrdTn7E/C2/OxxKf3AaBIXRbw3Rf15AR/NnAXM5Tf0WcpEFkdbPFFxO0nSqRwnQ
         E6MmMjGCB1usaq+Fr2xmYYMyBw3zAJGkqqWn6IP3nATkdRI/qDeXdsW+8+Ev73pakzIS
         7iCSiM4GBVzw89XoiRwbYPtTLkjjtkQTrYKPEpPceTjPIng5F+DluyZbDhj3HBY5sH+i
         JJgpuzMs0Jbc3zRTTmFPCiZrM5oNZLhULxbvxcgxEdAGEYbBS/uuVVHTq9hd3mKJCIJk
         8WIDz102khRgjnbLQTRHT5Vw7MGT0/vFbFH6EmS7zSciSK+ZuPeyJxC1F9hKoIItZ/Rb
         oofw==
X-Gm-Message-State: AOAM53078nLxrjYApdZAVX/2oFyKLCjH0YRvSvlwoVbM6OMAC4L6qCaE
	sJh4XOEgneBVgj9xpOQaVjY=
X-Google-Smtp-Source: ABdhPJyk6YmSIj7xj2jPqlHfFavGT6kks+g53/4iZ+Mun1vwUQc1jiQ3hFbn6Wd2jIdqPsPib29Ifg==
X-Received: by 2002:a2e:7f08:: with SMTP id a8mr16589604ljd.458.1615297703483;
        Tue, 09 Mar 2021 05:48:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ac46:: with SMTP id r6ls3881749lfc.2.gmail; Tue, 09 Mar
 2021 05:48:22 -0800 (PST)
X-Received: by 2002:a05:6512:3582:: with SMTP id m2mr18291835lfr.10.1615297702469;
        Tue, 09 Mar 2021 05:48:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615297702; cv=none;
        d=google.com; s=arc-20160816;
        b=fCtlP1ZKHfnGTUKnamKgdybcMHs3EqR4rTJcaSepbcpTIypkecSWf4SXnZ1dRw5X1e
         9iTbXEqXASFc623DrDZMQI5Z41yWAtGC0QKA89GtHmiFtbepMwemCLnYgv6mR4PJ5aph
         gC391bEvu4ODzeGR7PYTWBYIq70jcBdEj99/ORnKTtzWpzY/6BXdXuBtgzMsVOph0Dxh
         gAZ4zedkIYIBJcT+0CxbGFZG1ectbZ1fbgFnxKdmuS1j5R8DfaPhQyufJAozw3+OvZa1
         T31DRd9/LkQnj+q4Oh0jpov6vGMi2hYeDT6UTCGYvWRgSDCHi+D9CPvymb5xHqJv+WAw
         H16Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Oc97+qf4A0YSsFztEucEY2JDBPPlEsNort962uFLwIM=;
        b=DDlZPcs1kWlzvvjLjH/xmPkXIGlzycLH56lf3DkoIJzkyTYOw85bhZ1PRe3gBNZmRK
         95n16WYsDpmbo59s3+8OulYEWharcqTrDUWHOpNwVrNdoP+i7W4MvlEe3ayuM/Vr3JVW
         sQYU5h4NgbZ5OKWu9sYx8dkzWaONMb+gvJ1njEOt0JwDTG17sJQRV/U2p+WuIWfYVQX8
         qYiTMfs4Ih8ROGE5feFclpLkQAmUbcxTlxG7c11yc3APvbgvsxJWdScTykC5TS21BBD6
         oim/e9BlZ4+0vzspOJr2Smderey9a7ZO7issl6xoqzcByIy2XJw6LSADJs0/2ug4/AMx
         mYiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=ry6NxALg;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id a66si539136lfd.7.2021.03.09.05.48.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Mar 2021 05:48:22 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 8F94AADCD;
	Tue,  9 Mar 2021 13:48:21 +0000 (UTC)
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
	Nick Desaulniers <ndesaulniers@google.com>,
	Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH v6 08/12] x86/paravirt: simplify paravirt macros
Date: Tue,  9 Mar 2021 14:48:09 +0100
Message-Id: <20210309134813.23912-9-jgross@suse.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210309134813.23912-1-jgross@suse.com>
References: <20210309134813.23912-1-jgross@suse.com>
MIME-Version: 1.0
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=ry6NxALg;       spf=pass
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
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210309134813.23912-9-jgross%40suse.com.
