Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBUPLXH3AKGQE7YWYUSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 985641E4575
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 16:14:41 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id z10sf11366380wrs.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 07:14:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590588881; cv=pass;
        d=google.com; s=arc-20160816;
        b=iE3PsnYKuRxp6wyi77FYXNxl8aBpMSUIYzKR8P59+FIGZO9W9T1utqzJaAnBunZ/7L
         ArQLkL6j/sKhfulSuO0G/u4khhnWUooo+AKquVXylBOxBG8MJmYIcuT5I35lD0awpTXr
         gap2pmIY4ZoWDNDNerLd1/WIXxSzi4L8DC7m4tyyuuGQR0C382N311RhFKzD8oiJNVvW
         rVhU8TiOR8jZafnkE7zw71pAV/VaKFuip04ImNgiz0yipp5QeUsyNH9CrujIP8QTRPl4
         7xGyqtmgq3cJoicW+BKi8OGCNpZcwkPIoK2GtpFPLNlqmHEDGnrYf86loUvPBcpg2ibi
         W2cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=3rPepCtK2xtB0rekJDGGnMdAswjPuTQCVb37tDIRZ5o=;
        b=t15RkoAERGRB4soNhJnBXhdMi8faPyGxgklh7rpiJf4Qku0uGZ8znbYRWXyymgBZFI
         JpMJ1Jp6CzOD8EDHW6jR48ahT9YLbOTJ5xyH5/T22YyuYU8n7xXRmsC9peBRZkriwzuk
         Vp9wiZYC1h8nLI06SbQ0gRSxGYhZhlvHMwlzJZfwB9IunZqhlF6AwUescPDwv+wxuwJj
         wuuCwU1aRoAjmkRGr3b1qcvGVG0M7OLoifgkcMy/Rd0zF/b205122D04UrqJb91sqMfd
         RT7I+NMMffHjxmFCHqqnivm2ny5AW05OXaweKh9AY0ZFsPPede770WPcwn/xYcQcM1q3
         Ft8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3rPepCtK2xtB0rekJDGGnMdAswjPuTQCVb37tDIRZ5o=;
        b=jZNZa2P7KoLtwmLk2DliKWM1JZYfqE+gxcQ9Rh0deW8g702jFol6FqVTJ78n7LjGHU
         w1etGC53sf/Woi+jcDjh9v//KjmunDQvx+W6nrLyRC/7EwaNFb1YnCgkdblalYxwnoQI
         UWbkfI8rgchJr2MReVQ4UtnmhKTz3hvSayg68Yb1+FHVhlpcYLPTIFVqPuqBp+I2JbTI
         huMnQ6dXDUQt48VJ4vuf+pUt3vW5SkVjp1knngtnig8PmASsYEGr9wO6BWThLWgxEc0Y
         vX2uebJUt53H0J1mjfGJr8Gz7XcWB+S2b/GbcX+pjsYPvUAhxPN5lOgasUpzN97FJsX1
         wHnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3rPepCtK2xtB0rekJDGGnMdAswjPuTQCVb37tDIRZ5o=;
        b=Hk3r7Papjbp+UGayyMlNQdv4R+j9yOppHWgNc9+xpEL+1wCXaqAlqOuvT+pw7hh/wC
         FqU0dcIo7xctWcuor1EdhvyOGl4JK2xevrDJhNHDO8OYJnbh100+oc7sScC/BSbMM8Y7
         yC6E+U7MSIKyR6Npt7va0eTK26hHaxbrradC6kgkE7/8EPmd3xw4dPYcHEv/D8TDCbVY
         3OTtqwB8er3KntqsJ2PslQycUFje2XE8FzgPP+bDi3Wnpx7wcj89pPHKhwtr2GNp+V6f
         q8Nr5e5W8tVB669hi0AXckC5ZkveiIZzE7jfkEUPT3da1bSpf9/ggv2hZEJBjq1mL9je
         SkpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rlaPTO0+OO6PIvLDYtrqkDJ+4aAUN8I51v1iAHwbBo6MHe6pK
	SKPEPy5JuazQV+VYQtDX/Dk=
X-Google-Smtp-Source: ABdhPJx+mTw6QM6Cbl5rVam4iw5bJlUb5rJwue+uH7KeeAO2JJ23yY2Y6Vs/9zWGc7usuIBWGjxt5w==
X-Received: by 2002:adf:f643:: with SMTP id x3mr6293946wrp.360.1590588881328;
        Wed, 27 May 2020 07:14:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fac9:: with SMTP id a9ls3631004wrs.2.gmail; Wed, 27 May
 2020 07:14:40 -0700 (PDT)
X-Received: by 2002:a5d:4490:: with SMTP id j16mr16264550wrq.276.1590588880818;
        Wed, 27 May 2020 07:14:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590588880; cv=none;
        d=google.com; s=arc-20160816;
        b=K1n4vfb8molruQPewqHObWYTt4BsIhX07ljD8+UuWF6ni0z1M9YNpbVw7c4d5kubq+
         L0cM7WOndmChRhVVH+gwC+xcrZqley7TQR6yRhYJYD/FyL1jmmZ63at/lzQz44e0GHpu
         g0ewQiayyPketki8DWlQzuPu79Maa/Ps8dL58NQ9e9ff4PxgK3Z3Hz9CYqh/pPCecQFs
         bN8V2kvABPZeqlYMVQ3ZEdcYZTltZcDhtIUl5XtPHfOzD4qJNofXeKnXyWj0PkRN5u1U
         VPL8L/fut+NeXBR2/K5kxWmgXyTRqKtQpUA37X/YorM58yGzy9lnU6i53wFVx4Ufewqu
         xnxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=VcApyV7Zg9GNNAcrpyKz/uXzexAru7woM+K+MHeAOu4=;
        b=XJ89wzJvBAYWAUQCW1dgi0SN9UOv1k8zZepX7HVi7LFsMGiOBqVs27/BK2zJSTIIDB
         x/AdYeDcvSXJaD83iaI07nxH7NwcZ/f2yqHdf8coY+AcHc3NAnVmDrhhGOsch7PTwdtw
         zYsvnDSSqNd8xEU3EAr0q/pX9aJvz5oj/C7aVQiDkKjOkC8u/71KRDtWSQj3kaZ8C/ck
         WYltzkyg8OnyTjS8kaFVdQ8TWuM/ARubAVswcuNTDRbZq6CmxHZ3r6RGSeiHiLTb7m2o
         M9cTook+/jREUNo3bRcb73Hspdd6H8JpuEVFpCPJe2/Wu1GirgZcb5NESFqeEcs7MRiK
         5zrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id y65si59633wmb.0.2020.05.27.07.14.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 07:14:40 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MPXxi-1jQ7At0vQY-00McXf; Wed, 27 May 2020 16:14:37 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	stable@vger.kernel.org,
	Alexios Zavras <alexios.zavras@intel.com>,
	Enrico Weigelt <info@metux.net>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] arm64: fix clang integrated assembler build
Date: Wed, 27 May 2020 16:14:03 +0200
Message-Id: <20200527141435.1716510-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:7D97oLdlne2qL09g2jgGMc+fbgxIgsEVGqtW3VCiQSLFiFZYW+g
 fn2jFC8fox4CvFLOjk636cGCNApIdf+wHKZhqEFujfdqm2RA4gYBX6NwhZyD2COJG9mMmWc
 hZsygdfgYo/BJ0Kpgn67wE5vUFZRUdL6nV85teYEDlb3akqK8j5BG/d4Xix3+ngCzx8f8Fk
 QtdTh5UFRdMZ4v9ZxpTRA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nopDGBtTCRY=:gmcT7aGMYwgi+osEwcoJQd
 M7Gi+selGs6VVEavYYgErF6uTZ6bBgfdli88sKgqNPoV0LvojDp5VmIyj+rdciv7gMGj0A7yG
 jsDiTtFH2SJfh7G9T0mVtBLKxjCxcwuRBA3IpHG0Ix0Mc69PlCAi/WhHLq+ulS4Lr2XGvHq+i
 eA+ZilQHHREFYpRTpuJ9UzLbt3crO7IIwk+rIZuIFadfFGdEIrYcveNcP/Mx8s+rISZu+U6fJ
 o966l0cWMOpV7uUKixyQJ0gMm+m68gva1gZofkGPUgIHSZaHr+APCqVB32JERs1Kxh694ljSD
 jfg4u9GwJhba3Gqq0v3ZuyVcZA+bjVgkmONZpObxYgc+EMWanX2BG0+mRqhOR2UsifUB3KzUm
 MAqbVfxh5u/+Yd/wIvs4YR0FaYOCZs2u7VqJhQk5GviOVbJwaxBNTBMUXaQQQVAIeu5e4+QGf
 t9Vunr7FO6GBeg8gS+jJWKY1gpNoyF7sf9FLmbvnzDd9Av8oCauSMuRkkhOgeObnSI++XiJEE
 qbNady/hj5hewA4LQ2EPTinkoYjYimoGhthiKhIWh7LA95VBplavcS1deQ7/kIXn+FDcxCQUK
 9t9W8JPchCM0Q5Cq67VWkxasU2WZJ6OeyGeGtFRh3pICiDj75iXYPhK5rWPROhou2rwiDod/a
 AF5XVDZ6xPZOQcB3bPuIi1NpFtZVahogUzIPTLa7zYcHQYAuYyREDxOL+m1+FuPwuatMfZU8Y
 DDCAknP3KxiYVzUCmkp/UY9UPUCIqRb43sIcaParqPIxnSOG348OK23sPnh9lbzh5HCA7ky13
 hySQO9Htd477w1nEt4Lp3Ht6poAUlCheVhQ1ndjIPxQg+Cl5WU=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.130 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

clang and gas seem to interpret the symbols in memmove.S and
memset.S differently, such that clang does not make them
'weak' as expected, which leads to a linker error, with both
ld.bfd and ld.lld:

ld.lld: error: duplicate symbol: memmove
>>> defined at common.c
>>>            kasan/common.o:(memmove) in archive mm/built-in.a
>>> defined at memmove.o:(__memmove) in archive arch/arm64/lib/lib.a

ld.lld: error: duplicate symbol: memset
>>> defined at common.c
>>>            kasan/common.o:(memset) in archive mm/built-in.a
>>> defined at memset.o:(__memset) in archive arch/arm64/lib/lib.a

Copy the exact way these are written in memcpy_64.S, which does
not have the same problem.

I don't know why this makes a difference, and it would be good
to have someone with a better understanding of assembler internals
review it.

It might be either a bug in the kernel or a bug in the assembler,
no idea which one. My patch makes it work with all versions of
clang and gcc, which is probably helpful even if it's a workaround
for a clang bug.

Cc: stable@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
---
 arch/arm64/lib/memcpy.S  | 3 +--
 arch/arm64/lib/memmove.S | 3 +--
 arch/arm64/lib/memset.S  | 3 +--
 3 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/lib/memcpy.S b/arch/arm64/lib/memcpy.S
index e0bf83d556f2..dc8d2a216a6e 100644
--- a/arch/arm64/lib/memcpy.S
+++ b/arch/arm64/lib/memcpy.S
@@ -56,9 +56,8 @@
 	stp \reg1, \reg2, [\ptr], \val
 	.endm
 
-	.weak memcpy
 SYM_FUNC_START_ALIAS(__memcpy)
-SYM_FUNC_START_PI(memcpy)
+SYM_FUNC_START_WEAK_PI(memcpy)
 #include "copy_template.S"
 	ret
 SYM_FUNC_END_PI(memcpy)
diff --git a/arch/arm64/lib/memmove.S b/arch/arm64/lib/memmove.S
index 02cda2e33bde..1035dce4bdaf 100644
--- a/arch/arm64/lib/memmove.S
+++ b/arch/arm64/lib/memmove.S
@@ -45,9 +45,8 @@ C_h	.req	x12
 D_l	.req	x13
 D_h	.req	x14
 
-	.weak memmove
 SYM_FUNC_START_ALIAS(__memmove)
-SYM_FUNC_START_PI(memmove)
+SYM_FUNC_START_WEAK_PI(memmove)
 	cmp	dstin, src
 	b.lo	__memcpy
 	add	tmp1, src, count
diff --git a/arch/arm64/lib/memset.S b/arch/arm64/lib/memset.S
index 77c3c7ba0084..a9c1c9a01ea9 100644
--- a/arch/arm64/lib/memset.S
+++ b/arch/arm64/lib/memset.S
@@ -42,9 +42,8 @@ dst		.req	x8
 tmp3w		.req	w9
 tmp3		.req	x9
 
-	.weak memset
 SYM_FUNC_START_ALIAS(__memset)
-SYM_FUNC_START_PI(memset)
+SYM_FUNC_START_WEAK_PI(memset)
 	mov	dst, dstin	/* Preserve return value.  */
 	and	A_lw, val, #255
 	orr	A_lw, A_lw, A_lw, lsl #8
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527141435.1716510-1-arnd%40arndb.de.
