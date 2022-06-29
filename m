Return-Path: <clang-built-linux+bncBCH67JWTV4DBBTFH6KKQMGQE5FMPCZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B1556083C
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 20:02:53 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id 130-20020a251288000000b0066c81091670sf12704376ybs.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 11:02:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656525773; cv=pass;
        d=google.com; s=arc-20160816;
        b=CUCzsPLBCFLacQKFlHvuZ+SlBUXAzr6itcOpn0GdQIj5pichppZ4lNw6tIeBq/9CmE
         myW1ZgXNSxwtMBtWG/Hg8xMMEDXe+qeq2/xsz5OWwwXXVAEyMF9Q1v49LiRNVL0/oKgm
         /nMPXDJajWCCyO/56FLAJPIw2cwjFMoP1IzPV4sjn0LxR/4zSab131DTZQAZYZAu/vtS
         nlTvSGQq5fikSJq18iPnv3ppfTgtrVb9raJWZe2JQPxw1SnLW1RQoeY5ImSYY1xlqo/o
         JPnT4yo/UX1XRWO/KMc3KjYOnkjPMI80ROh6nbfWoNXeirjnRYcciiqvEBs8rsxOfvhQ
         3wTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=7VCdcT/gOIPdMz32i10Xa3eoYW10caprUy105GPLV3I=;
        b=vwPPzmBRc6dAmki46FrG7zeESrB0xe2sZt4/56U0GxDtLgLuBHylKI3tFcSiccSwLE
         CUmoo1ET0IWPecXmvq46JipegNw3DfFqinLmIC+W9LiXIay0xnrFkOwOROJOH3D9vMua
         za6VQWij+eZd8VIkzkFjP7votRo/SkwFcaF+ByJiAsrRdiYcT+za6Mso9rNqUeNqqbp4
         vnATrAEiQtU4y7M0ROP+dW4U8lpZR0DE3oKg+YHZap914lBfQ2hha+w2Q6vVI2w0GjVl
         OozJXT8hrR5w/CFtfTAmluXugnQdVvJ3YKX5z7cqMXPewJd4Dc8Rg/bX3tv2omg9plWr
         Hc/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ISwwkFSM;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7VCdcT/gOIPdMz32i10Xa3eoYW10caprUy105GPLV3I=;
        b=muHETkEakvqbeLG8mfJilpSeh9AqSQn1asn81uda/tMGep6gCLKlkVEBSkkjz9XS8g
         Pddo1Jv/+otm54G5pN//nOugxe5HIBJ3cFxpCG5IPbwQy/NgOK0HiLuvi5v4SisFwy9T
         D5Y8YAhW0G4rGM3FYY0SiUO6kdCbNdzd2K7cWTIw8mZYQeJwlMlzgaxI6Q4b+OdvYkXu
         +F86ZWx8IBjuxZ133lmoaL/u+k/XmKKIpi2YS7izYFiQSdroXQg6EQyA52RJcYIR7IOn
         1kRIx8+XziTT6YuCa/GgcDE19kGtIiqB/p9ump6Hm2rKZhmsMBLqP1TQPfXs5d3rN76X
         tUrg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7VCdcT/gOIPdMz32i10Xa3eoYW10caprUy105GPLV3I=;
        b=BQhC5cRQKuK3lurSvbNakxaRhpaY7MbSIh8AaVVLeObs3uLgFRysSa63zUG0DBOeBq
         ATcaM6HKKXxyOJtx/6qqX2YuQ4/LY6sx8x9+nkggbF7dgmK1heNGB0OmpJ0FfWRvocqW
         IU/RbBwcfH+VLxiQis3QnU1mfzyxZgcNB90WB90ZhTmqgFuzOyok/i9YC0vXkl3uiGRI
         Lk8oxxyUCYRLuIaJf06PlZgvmlsKLck0c5lj0+z3S7uZ2yg8OeY+u86JeQ1HH0AWfi5n
         PqMym65dMs7gbBKVrekPgtYEJJM7SsX/TeCmvIOc992awbAK4JgFIddUC+em8cZ+B8TT
         8YpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7VCdcT/gOIPdMz32i10Xa3eoYW10caprUy105GPLV3I=;
        b=m5usPffouTgKo9uYm5rvhWPRwhCKqzR2mtRE6g/EYiBespavcfdzxB60FHhOHI2A5K
         hfv7YkNkX+QrCKp9ofO8joXgYNKdh3hNiVk/AZvUGDCAPbYAkPIU/sYagfR39vwXuTlo
         aGmJOIO3/y+Duu6A8LaSydNuXHrNA+Mvli93sitDtU3ApEPA3QRdwFfPL4Q1RWH4tyI4
         18Bi4Veu1mYRmuZ57cNs2qTB5RvBiOz9GxKoPHqRXI6XuhciTRuaHCZU9C3kfRt6zWV7
         sE4qsyDAkTwGKvMUekZCyEGDl74EeRHxtgcqEDIl2bnmNLadVrgpt+Q6ncSn6pCYcU1Y
         ORgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora9zZFPXz7lE13O4d0/GA6ZjvIOaB7+XSCMX5V+OFdb0KrXPKpyi
	a93yel7P5dUdZPpksyzTKC4=
X-Google-Smtp-Source: AGRyM1voefULgsTqciEQT/Kdna6b7VlQPA5s/CjCXgzIlWlE7gIqisGmD49nDn7NY6byHl98eGbm8w==
X-Received: by 2002:a81:1ac1:0:b0:317:c2f7:a69d with SMTP id a184-20020a811ac1000000b00317c2f7a69dmr5453710ywa.60.1656525772729;
        Wed, 29 Jun 2022 11:02:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:690c:b84:b0:31b:d12c:83cc with SMTP id
 ck4-20020a05690c0b8400b0031bd12c83ccls4369262ywb.6.gmail; Wed, 29 Jun 2022
 11:02:52 -0700 (PDT)
X-Received: by 2002:a81:6507:0:b0:313:cc8d:fd79 with SMTP id z7-20020a816507000000b00313cc8dfd79mr5041563ywb.319.1656525772031;
        Wed, 29 Jun 2022 11:02:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656525772; cv=none;
        d=google.com; s=arc-20160816;
        b=OfbeiQW7cOfv2m2bQrwDLKiT18HDD9lJ/QPn57sOpfmFtVzlSE2Zk5NhFenQZmtmW8
         BD22SJzvgo3VmkemN0iXEnHgTmWPVMg3mcrT2EB+Ifuz7P4/gCyTEmbQ2qk2nPrNz3ox
         gcbWThBMAtAhsBYgoAdwT/+Y4JTHWUu13yy6uLaDo88h9xUtcWbouOX1W3B0eSzpvaUi
         5Mgdpds7hMV/qpHx29oV5hk/iubdQTyRnR4XkDn1SwYywTIeRKYaCdkoelcE6DvkonOr
         1mnNocEqHa3JZBIMFwHyZb7m0FMykfqjzyGVTgQMTcWk4aSr5Y3zzu8GEtti9VmhETkG
         ALqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=yKeg97WBqSrHg/vFckVR4dCqjwAhqI/IXZ1Q/lkCmf8=;
        b=JPsPX90w0IT+Mfo2tkNKcWz2zCc5noKGYgKApjA+Jt2VdEQRpSZM5U/9ngjxbTHyxJ
         EtsMjDT9WffbHghdrLJ+5u6hsOV5RUhMKAOLBa/lTUMnvUJ9lCg54T+PqOSUWzu8UhIG
         E9zy7hy06bLf6F1Bc9UDzu0X1c/CxCamrHs9uQYapabns+798veogxoOwGs0+7rWlNy4
         3Cmwu5Yqwh6NNvCVt8UjyPcNT9TYbdFjBGMNXGARHxtA+vZ7P696W7i1ib+UIfZbW/dV
         4MM8ueBuXLdp6jKfQp4ylPoDRJy5pevhFc9TKAt8p9hnzjxS7QzpBVyjKp5Als2nQ3EE
         QGwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ISwwkFSM;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id 19-20020a810913000000b0030c2e0694absi719154ywj.2.2022.06.29.11.02.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 11:02:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Received: by mail-pf1-x435.google.com with SMTP id t21so15829276pfq.1
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jun 2022 11:02:51 -0700 (PDT)
X-Received: by 2002:a63:91c1:0:b0:40d:33cb:3d57 with SMTP id l184-20020a6391c1000000b0040d33cb3d57mr4038974pge.10.1656525771628;
        Wed, 29 Jun 2022 11:02:51 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s7-20020a17090302c700b00168e83eda56sm11736371plk.3.2022.06.29.11.02.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 11:02:51 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: stable@vger.kernel.org
Cc: Stefan Agner <stefan@agner.ch>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Tony Lindgren <tony@atomide.com>,
	Hans Ulli Kroll <ulli.kroll@googlemail.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nicolas Pitre <nico@fluxnic.net>,
	Andre Przywara <andre.przywara@arm.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jian Cai <caij2003@gmail.com>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM PORT),
	linux-kernel@vger.kernel.org (open list),
	linux-crypto@vger.kernel.org (open list:CRYPTO API),
	linux-omap@vger.kernel.org (open list:OMAP2+ SUPPORT),
	clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT),
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH stable 5.4 07/11] ARM: 8929/1: use APSR_nzcv instead of r15 as mrc operand
Date: Wed, 29 Jun 2022 11:02:23 -0700
Message-Id: <20220629180227.3408104-8-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220629180227.3408104-1-f.fainelli@gmail.com>
References: <20220629180227.3408104-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-Original-Sender: f.fainelli@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=ISwwkFSM;       spf=pass
 (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::435
 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

From: Stefan Agner <stefan@agner.ch>

commit 9f1984c6ae30e2a379751339ce3375a21099b5d4 upstream

LLVM's integrated assembler does not accept r15 as mrc operand.
  arch/arm/boot/compressed/head.S:1267:16: error: operand must be a register in range [r0, r14] or apsr_nzcv
  1: mrc p15, 0, r15, c7, c14, 3 @ test,clean,invalidate D cache
                 ^

Use APSR_nzcv instead of r15. The GNU assembler supports this
syntax since binutils 2.21 [0].

[0] https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commit;h=db472d6ff0f438a21b357249a9b48e4b74498076

Signed-off-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/boot/compressed/head.S | 2 +-
 arch/arm/mm/proc-arm1026.S      | 4 ++--
 arch/arm/mm/proc-arm926.S       | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index cdaf94027d3b..17f87f4c74f5 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -1274,7 +1274,7 @@ iflush:
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220629180227.3408104-8-f.fainelli%40gmail.com.
