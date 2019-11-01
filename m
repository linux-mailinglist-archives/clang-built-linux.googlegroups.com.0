Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBFOQ6LWQKGQEGN2DS5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id C147BECA7E
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 22:48:05 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id p6sf6267609wrs.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 14:48:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572644885; cv=pass;
        d=google.com; s=arc-20160816;
        b=OWcVJiswFtwnGzhQMKm+kf73LE4u2Gh6RND+YFaTouS+LY7OJNuRqLbYSf24PeZzRg
         n2u+BAr9bqM/sUVnte8xAqOYN/VW+OiixWY2AItR4c4iUJXwKZWiMn1Hj0ou0d+4V8he
         SLdBcS92Pu19agIRFKStXmCFrb384OriXBkIXtt0fcLkCcuIW3Tszdc2i5GivfmxrVFU
         WlJnxF9PcuseIEsBSn10PpSZ4Wh7EZ1bhkJMyxq/GKyxpK8n7Ch2Al7QOFWXnw1bXvZd
         eRioxUE6rrHTttWR/5Qk42RMk+kKIokfZLh5PdA3vq7yp+VUalYkHwaUlmKaUFkxOkGp
         Q2KQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=n9RoF3n1iCziZFs5eHmiUw9jsAPuPckCxu1yLczoWdo=;
        b=RIw0k6/mvbztewhiRo0SuZYS5A/4+cmfoCinru/yQR5owlTiu7RxuMnY9RC0LEb/Te
         7sPJPTju8gPLTrZRXPxXllYB46L480wZTFgBvcVyQPGp8e4hj7WePM19HXNmvoHDWSgV
         mxVn7Q6/jgN7elr1ivJiPtcY9mf54hLLVG1Tg+atdinXQIpm4/DTFgwXiA23q/Q0zkVZ
         Q47paO/fVLJ6D5Bwk5BOWPMeMLb9TafD4aiJxmwg+7N1vVBilsCb6co1cyUqpHHsomkX
         y+Y9p+aiCD9ZmSiTPMPzYNGP1dzU0CrcqK8RTJ66Kx+CscL+sfOBJpPLC/HiXXRBDp27
         ceVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=oqrarDW4;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n9RoF3n1iCziZFs5eHmiUw9jsAPuPckCxu1yLczoWdo=;
        b=DW11lUrHVZW80PUqfXtlzrCJ9Kvr83UtaXCgnPLWfxF9/gjG6ddgkRcH5FpY4HBZHI
         LjNu8F4rudMDXBZd5rS7ejp9ujgTdh5G043YDSu7mDHu6JYxWmRtRjZI32TDCchqr48o
         UE94pjPvlJJ6hSF0l/AgEedqiVCYlzrvu6cktlTPp7vFinDxZN98La5+0SWPX2T3pvwQ
         oPYUYwmfnZLQmzjZ2eLj788cXWhj8maIClS72ZghT4YImkqcml+GahasTR83Dlk1wHX7
         TuwIA+eiMRcc7owJ2LPoavb4x5ecU2PXNeHq/HYOPKE+ply1RryjQqJQ+NOOlT/3cntW
         JTLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n9RoF3n1iCziZFs5eHmiUw9jsAPuPckCxu1yLczoWdo=;
        b=CemNJRN7ve2p/tLME+bk130kdZ3TuvyTEGz9FWXEmC2RWCkKM+8YtpGkS2G32S8JEf
         LiQj7NhhrNufGdMDI9M/Z2D6gg9WJRuoygmkJa+OHTnhzoz59WMDFuaZpVIziytMkS0N
         q8Z1wLSsPV9tPS9FXtFFxlbaHX7mCPG4SzJuWUp3/WpcLb4sODbn1lqr0p8R4oJMuVJ5
         aQ8mPK1wGnrbqXHaOLaVshfqFJgZhz0Z62wqJErqhSEr9eikkmNfw+wUFRjNo2GdK1Z3
         8hUkrbcjQs2WtCML7d3lhz6oCx9sKAvoRl2KMO0fS/+s1ILK40+wnjpQKDH+70DcCfSc
         NcOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUsLiRSzFD8OqilhYsKSOzcd11kvwHtJUIVgHAzZQeCnLRVWL57
	RnuYr1W/tMF7nTseNUi/ht4=
X-Google-Smtp-Source: APXvYqz14Fc8oM0kILmggl82hxPBop3oTKITTyCLKOpcvxpFJsx8WnPGMYhaOWfF/Phx589+LO4XFA==
X-Received: by 2002:adf:fbc4:: with SMTP id d4mr13474125wrs.265.1572644885408;
        Fri, 01 Nov 2019 14:48:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:960a:: with SMTP id y10ls9767810wmd.0.gmail; Fri, 01 Nov
 2019 14:48:04 -0700 (PDT)
X-Received: by 2002:a7b:c632:: with SMTP id p18mr386602wmk.73.1572644884645;
        Fri, 01 Nov 2019 14:48:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572644884; cv=none;
        d=google.com; s=arc-20160816;
        b=RhYQFVE5FMrUIP58pqC5B5e0NXRhrHuqHEHBXa+4Tw+VWrAcd6Jmlnvnjv3t3hIFLA
         MRTwjoShCg2LTNZyb17cL+ciQVfP4RoFRi8H8eZbujUvgXBJo1JhUIURmHATijFjDkVE
         oLbD0PyY2TXf9DNDVzPdUSiGdx1q4LqezHW48aHh8yJxe7yDFpOJLDyQNkMYyXVLuYgb
         F0VruS6PiL3W1vZu6L69cJminaV/e7LHeOp4tyUmyTgf543nHTCaG0te+SegbqJflgXL
         5MbZMISkPlRKvm72i+LpaMqScdwmeztzJweyXgrInpdmS3xqso6A6MBw4Hx63KVvFnZG
         ofDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=O13dNAYrYnYnAw0xq29Wh01pA7LkcCcNnwb/S9BEyZ4=;
        b=voiLweFpHXQ6OHQaH25QDKgkoW4XKWTPUNdPTuK16zdQtHmsok6MNTUTZoGrb1nw3O
         8anjVJvZ7acafJLc/aQhVAgEhA6OhNL/eT5UqY9qBpDa0qcMwnxU+rdRTHTviEm2tgUy
         FKpHZonKMlaqMzit/alt/Y3n2hmwoXtBiW18mrOh0OXpX7DajAdcQQ0ZTe49QTJqZATC
         7O55W+auHUstinv08gwvLiIAj+R9VGS2WQRvmnpsoo/IaIOOml/BOO0/EDN70gM2ZzBU
         1T52tQOhDpbr7jBNOhS3zmg66E7o2tE6rMOOfRBiNKvjrB8pHABZMu8TIhkL/jrHOAT0
         Lf3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=oqrarDW4;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id q128si405824wme.1.2019.11.01.14.48.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 14:48:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [37.17.234.113])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 10A635C3996;
	Fri,  1 Nov 2019 22:48:04 +0100 (CET)
From: Stefan Agner <stefan@agner.ch>
To: linux@armlinux.org.uk
Cc: ndesaulniers@google.com,
	nico@fluxnic.net,
	rfranz@marvell.com,
	linus.walleij@linaro.org,
	ard.biesheuvel@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stefan Agner <stefan@agner.ch>
Subject: [PATCH] ARM: use APSR_nzcv instead of r15 as mrc operand
Date: Fri,  1 Nov 2019 22:47:58 +0100
Message-Id: <472f8bd1f000f45343cc0c66a26380fe4b532147.1572644664.git.stefan@agner.ch>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Spam: Yes
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=oqrarDW4;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

LLVM's integrated assembler does not accept r15 as mrc operand.
  arch/arm/boot/compressed/head.S:1267:16: error: operand must be a register in range [r0, r14] or apsr_nzcv
  1: mrc p15, 0, r15, c7, c14, 3 @ test,clean,invalidate D cache
                 ^

Use APSR_nzcv instead of r15. The GNU assembler supports this
syntax since binutils 2.21 [0].

[0] https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commit;h=db472d6ff0f438a21b357249a9b48e4b74498076

Signed-off-by: Stefan Agner <stefan@agner.ch>
---
 arch/arm/boot/compressed/head.S | 2 +-
 arch/arm/mm/proc-arm1026.S      | 4 ++--
 arch/arm/mm/proc-arm926.S       | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 15ecad944847..ead21e5f2b80 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -1273,7 +1273,7 @@ iflush:
 __armv5tej_mmu_cache_flush:
 		tst	r4, #1
 		movne	pc, lr
-1:		mrc	p15, 0, r15, c7, c14, 3	@ test,clean,invalidate D cache
+1:		mrc	p15, 0, APSR_nzcv, c7, c14, 3	@ test,clean,invalidate D cache
 		bne	1b
 		mcr	p15, 0, r0, c7, c5, 0	@ flush I cache
 		mcr	p15, 0, r0, c7, c10, 4	@ drain WB
diff --git a/arch/arm/mm/proc-arm1026.S b/arch/arm/mm/proc-arm1026.S
index 10e21012380b..0bdf25a95b10 100644
--- a/arch/arm/mm/proc-arm1026.S
+++ b/arch/arm/mm/proc-arm1026.S
@@ -138,7 +138,7 @@ ENTRY(arm1026_flush_kern_cache_all)
 	mov	ip, #0
 __flush_whole_cache:
 #ifndef CONFIG_CPU_DCACHE_DISABLE
-1:	mrc	p15, 0, r15, c7, c14, 3		@ test, clean, invalidate
+1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3		@ test, clean, invalidate
 	bne	1b
 #endif
 	tst	r2, #VM_EXEC
@@ -363,7 +363,7 @@ ENTRY(cpu_arm1026_switch_mm)
 #ifdef CONFIG_MMU
 	mov	r1, #0
 #ifndef CONFIG_CPU_DCACHE_DISABLE
-1:	mrc	p15, 0, r15, c7, c14, 3		@ test, clean, invalidate
+1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3		@ test, clean, invalidate
 	bne	1b
 #endif
 #ifndef CONFIG_CPU_ICACHE_DISABLE
diff --git a/arch/arm/mm/proc-arm926.S b/arch/arm/mm/proc-arm926.S
index 3188ab2bac61..1ba253c2bce1 100644
--- a/arch/arm/mm/proc-arm926.S
+++ b/arch/arm/mm/proc-arm926.S
@@ -131,7 +131,7 @@ __flush_whole_cache:
 #ifdef CONFIG_CPU_DCACHE_WRITETHROUGH
 	mcr	p15, 0, ip, c7, c6, 0		@ invalidate D cache
 #else
-1:	mrc	p15, 0, r15, c7, c14, 3 	@ test,clean,invalidate
+1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3 	@ test,clean,invalidate
 	bne	1b
 #endif
 	tst	r2, #VM_EXEC
@@ -358,7 +358,7 @@ ENTRY(cpu_arm926_switch_mm)
 	mcr	p15, 0, ip, c7, c6, 0		@ invalidate D cache
 #else
 @ && 'Clean & Invalidate whole DCache'
-1:	mrc	p15, 0, r15, c7, c14, 3 	@ test,clean,invalidate
+1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3 	@ test,clean,invalidate
 	bne	1b
 #endif
 	mcr	p15, 0, ip, c7, c5, 0		@ invalidate I cache
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/472f8bd1f000f45343cc0c66a26380fe4b532147.1572644664.git.stefan%40agner.ch.
