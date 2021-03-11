Return-Path: <clang-built-linux+bncBDB3VRMVXIPRBX6PVCBAMGQESWGHXGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id D1835337560
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 15:23:27 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id j15sf6830489lfe.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 06:23:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615472607; cv=pass;
        d=google.com; s=arc-20160816;
        b=R68sVTE1pHIl5XJgblGgd6ZnmUyHY90RKDrhRTgkHtLqoP8NQcOP+qKZ0TiLuva206
         czVOKX+OiHhT5nLmZZ71s9jXYZ4rmvUqoOWJUIO5b9e2hjqj+GRp2Eg/RQqPq/X0fPIM
         da/gdOVkq77lnUPAwAcBCZ4mo5uKEhq4Q2rZw6ZFyz8kt6hy1Jd2/0QqwQgNVCJ2GX59
         JbNIrLbzkuPgGlvYUzdtnJXz20cHvtzmrRP13vUx9l5Juf/sdqNZUCf9zfLtW2tkSddC
         keWcYWvM4jEDSnLHLHatVPgzMpazOMZ7gNuvGBmMUJ5r4FfAte5UXAG6+Wcw6TV76cvd
         Mg6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=1kVMvqOU5N3alwrsijFMudc2QlZs5SVed6+raxQT91c=;
        b=HjIxnLXpiWMqcZpPTH9w57VH0S4TPEqgDYB+3iAkxJYPZAmHv9zZXjN1NEpA7k6Fma
         6BXjD4lOJiViYMj8paJf2Y4baVOzwgJPDkWKNbFH2f1rIUfH7f7EMOPVgqIuui0OMG5f
         Jf+T/YJ4eL9VeL4KawT4rcdq9cPm6GI/oylqdtEl/YaVYttCdqKqY4BU13AFn1wcSbA/
         D02u7TyTYRZzIsDEPaBFu5vvNNMGXf3AEQbgJLmSjIGIisGyoc7D2rUJqIXhGOOBWCA7
         zv8Ki1NXaTYsb2kBMfXU1yYHeuu9HVHvWz8ylpISkb7dU/bKTlDe/k2DLtbuuLMGndmY
         RECw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=CWrLLOWM;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1kVMvqOU5N3alwrsijFMudc2QlZs5SVed6+raxQT91c=;
        b=RAaQG9RGhcBqWIinJtGocruJ5At2GFaa/z4Lk0tHN6dIlFemfRViOfJmb6rS8HGHjQ
         eLK6VHNwCw9olq6yAcsyM2QEbwkz2eLvUTTC/njhOZA7uMq016J9D/CgfZu0KTVaSoEP
         yE4W2fElCVaVN9z1pYorK39lSeLo1nwkfuZhPgqAtLTvxUPwyQbpENKDNz9vaQRF6MEt
         Slv2UlG/eBAQmCJQX/d+1XZPXxBVEDSNcheCWtrPwkhgWk4VnVII6quMa8dfQB4ayDEv
         R+3Q6/XyorSZR5npskvNcHNcmHHNyWmLp4d+jXLVAsBiR7qojRwG05eL9jxKCpnMKOEY
         RpFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1kVMvqOU5N3alwrsijFMudc2QlZs5SVed6+raxQT91c=;
        b=G8Qd8UfxBV6Nq5b7rVoqpp0rzLCetMmnC/sst1WDlIYeffVV+Tdp8PfGlPzAPm1wsK
         2Tws+jpn6WxBEkjmCIigkLPDErVTHkdkraY4me0/sI5lgwzG1wdvvp+eF8Z60ccTjFcA
         pjJu98zLznegAsZoA/fI3LMB9I8+pq1I/qkEcFigfR6FP0uBpiGZtsu62VBfqX7JgAyk
         TCAKOWDnMidfnlWq9IzCZwEY6FKFsJ2WNLyNTBa2553JR6qmAjJtrGxKdvxP028AQXbJ
         F4WD0d8lq0KEitQBw+QG3ky0Z4rg6FszWCXeWpTKbpRWQRK3ufl7efhAC5k+OubR2ATd
         VIFA==
X-Gm-Message-State: AOAM530/D7O28/xF1HEecShtdA+0MYpBLhlTyMTJUsBsArfb0iLLz2AY
	GcdVOcK0DvLafz6HpNW1yPs=
X-Google-Smtp-Source: ABdhPJx3e2OCkdbT4CRI4njX9dIa84aWZjh/1EcOhXGYIn/wHkpXEmIAr8NBuFyVFFhGIhEl6I75wA==
X-Received: by 2002:a2e:9b16:: with SMTP id u22mr5312381lji.184.1615472607245;
        Thu, 11 Mar 2021 06:23:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ac46:: with SMTP id r6ls905519lfc.2.gmail; Thu, 11 Mar
 2021 06:23:26 -0800 (PST)
X-Received: by 2002:a05:6512:3327:: with SMTP id l7mr2472075lfe.639.1615472606226;
        Thu, 11 Mar 2021 06:23:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615472606; cv=none;
        d=google.com; s=arc-20160816;
        b=F0XV/5cGCqAZDGfuaiCFJvgAy/b2HVoU0K4fBA0XOOAAgXcTav0qGVl6NiUTem3G+v
         RGrdUopS0QtkFraJ3GjDLg4+SoqovYcAXYJmknN4RvSQeBriqmDcVh4iXhnhfoR/503w
         6MMKERwX2FxFNY1sZthGwmPUrb6B/1nz3WalIlWOnH3sDNDh29SP/SmH8d3gc8ZpYiIO
         le5Ge+47Q3puv/XaJqsSAImpQzmBd13GW9CcYyGimMXWDEVu+f+ZanJOigAZ11MrZmhn
         KMcE7CYkv34ox0iSdRctyuCzIHEQ/zQvvB74+Xo9WfY1cUOwBeFrIUNnRllWJk79SGkr
         T4uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Oc97+qf4A0YSsFztEucEY2JDBPPlEsNort962uFLwIM=;
        b=bwNWAMHhPyi+t5d1nRlhKZeoOkUTyOVzimOY7G6dHpisLtYYLP4XYzEce+gZmdSxjl
         fJnNlena493RoMudpblS0sZv/WkQwlNFU1rzwjH8qXh484braMyUeIDHy/oVoIzIdXi0
         4VAnv5yUo25MmzIF+mBIKDt7RHcEJfIT7jv82Nc644TYeK+Ams5iyts/ReyPThXvXF0w
         4slZ9QX5x8JcBip7XxITBh+r3kTluRAxPHs78JiXMNhvpDBbKezDW/zuU8n+9a0R2f5P
         qVnGzxUKoM6Q0krebiTqaF4jKt8BoVQkW7o+MqUfzP4/liaEr1zaVsAK5aQN8tqXpeCf
         o4wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=CWrLLOWM;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id t21si80690lfe.3.2021.03.11.06.23.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Mar 2021 06:23:26 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 87391AE49;
	Thu, 11 Mar 2021 14:23:25 +0000 (UTC)
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
Subject: [PATCH v7 10/14] x86/paravirt: simplify paravirt macros
Date: Thu, 11 Mar 2021 15:23:15 +0100
Message-Id: <20210311142319.4723-11-jgross@suse.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210311142319.4723-1-jgross@suse.com>
References: <20210311142319.4723-1-jgross@suse.com>
MIME-Version: 1.0
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=CWrLLOWM;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210311142319.4723-11-jgross%40suse.com.
