Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB5XBXH3AKGQEO5JKMYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A33D1E4490
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 15:53:58 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id p10sf796855wrn.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 06:53:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590587638; cv=pass;
        d=google.com; s=arc-20160816;
        b=wFH8YwwuHNbkebxEA6k4awAabPsmxHPnf4F2EbP4BHiUTk0VfEhVtXiJZe43Jq+RhD
         lYwc4dspKxVzn1KopEP/A6mxzF6nH8RtBj0YhZhts40jt977EGqTbrtyBC0wmDi8UTP6
         p8NfxvyPMo9ahxwz+t+XQu1zLTKxxHy4muSbgVNPYHD5hovJ4sUdAei37fCbxT59mk4V
         oGJEe+RWYaTnyoOW968C1/Ip1cNBP0g/aw8qXI/Y4AosLKv2L5ibaNmSAO+vQy0uMS1E
         PbS+ee9BDjpfzFXhEAnn9GgeHezeLItDkRRGLOzz8CDG3cdOp+Die1NlHfwMrHLsJgUp
         a/sQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=iGJfozZUspeeyfszMKpGmZm8A2jiI5uiws4awj10N2Y=;
        b=Ncadk0l3gXmxgnTY9DdcFA53FoBWmnHx2EQaDJGbhXk2snuCp+ljZhnGKe/DFS3Y6k
         9owTa+8V0S9SprjtlL6ok5Wy2YajMFjaXokqDnOG6p9TW7+r/4pqAcjRrOONNQcZUE5V
         uplldGupW1qKzgHtY1bn+OzIHyfCMYJGBOhvX5vR4Xi44is5iIMd276MtoGvRfjMhZzq
         nEPu4qjBvxcKRsQFEzDeGotZBDG131xhtLhGv8h4/ZkZF/E9+CUGlNhqT8CR+gU2Su/e
         Hx93jgObhP9xN4qkr2KqChYriLGrbVflMHoygf5+jkAmcdkO1pm3uWPV99nkQ8P4E//4
         IrLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iGJfozZUspeeyfszMKpGmZm8A2jiI5uiws4awj10N2Y=;
        b=SJJO//iZ/eNvVhdIm9lX5kJ+pddZ0kXeIGXeVC4vPVOc6QrKwaatFjCswnl/gKzmWR
         a1eGAeeMCIigNclk48pulkupC1F9UKMsbZ/z2wzzcWn8Fyew/JIbS5is6upGN5L47qGn
         m8LtFIa6+lb3J1QnoDSeC+wSkTtP/VwreUGlG/b7yBF9+I4yEsmpgVmf2XEPHXY/8FcS
         Xr+heVTK0MExRLyzk/+SuTBikHFVYQ+ri3J3nAJE8rnXLGUVq2Ul85z31xUxQLZ8VyMH
         Qo1Y4bCOsN2GZhPbeThMIJi8DKyBU25mUN3OqIko0STbpU0wVkhb1UUrFJPxGNAoDKox
         Z8GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iGJfozZUspeeyfszMKpGmZm8A2jiI5uiws4awj10N2Y=;
        b=FOf1/NBdmwlt+eXaQRrRNWhSgS3Uxid/IP+siB+xMsVeFBUmzYN57f+cKIe5zfyJFh
         zGULRzRzwpE3IOWChhU6HfCUQHu9CT/bHUGRI7/d/nyJCDLWA3KODN72AJpQ8E43EEfi
         Lna3zoR67kD+9xKy7miH4e8hKU0PQEIqRDJsTebVH4vmdyTE6Hs5az93auYNd6wfxj+n
         V4+ZYpnMBvTgO8+rYOW/40uXylwaT5A3xr+lrtYlrrZOg+IkT2DC2WOLHg5/7HHkKtxU
         Ejmr3OmCw7AQ5lJORPljX+XBlkqpgEEWq2Z2/6XdJx4Yr4/pXpPMFi/t5UmLqPEZPT4E
         Pwbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531J7pEr+otBoj5DKxrsQMuy4ex31ex8xlfC/nwWiAq5LkZXS2KQ
	+MUGHSsezdlrM5RYaX900PY=
X-Google-Smtp-Source: ABdhPJzRNYR23y7Zv4m7ELJwaTDDPEp6HJbI1OwYm8wVAvufUVxEyQf2c7dQ0I47KOzSPowuQZY6LQ==
X-Received: by 2002:a1c:4b18:: with SMTP id y24mr3878060wma.102.1590587638069;
        Wed, 27 May 2020 06:53:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fac9:: with SMTP id a9ls3552419wrs.2.gmail; Wed, 27 May
 2020 06:53:57 -0700 (PDT)
X-Received: by 2002:a05:6000:1003:: with SMTP id a3mr7990892wrx.149.1590587637668;
        Wed, 27 May 2020 06:53:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590587637; cv=none;
        d=google.com; s=arc-20160816;
        b=veZFRVlMQPJzJfuIcOAkIPX59pyTTIodT55SMk29hMgAS8itRT/f4iUJUOFLiI2GnL
         f6CdV6wrRiBhU4V47RqRPR4nx7y52JA7WAeeMP5dhY3d1MfwpP0qM16OVI3vXv44YNI1
         z2gBhCCIDj9aQSmVyERyJ+aP2DboykTRxxRHskN0cTtv9VIJV8cp9YDJh9vcea4YsB5B
         t/hBzDdaHW14u/lvVv/6q7i0fxnGfJBX36aQOnC/AV5RPJd+WAa87b3D1JNAwB6qN+ts
         qgUrE4sTREkJFFR/XjT215ss3EuMo1t+bYyK2BQjCvjeEqvjP3rXQQTwCsGqpIeJKTnN
         qxbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=ZDxC9+4nJl6mRHB7xG3YDJpzUBrjeW8DIPB/1qskQxQ=;
        b=BToziMFxoikFlOOuEjwGlU2ZH4r8LRLOujh89jhFqGx2S1c3bjtajNCHIVGfMQz0UR
         cX+Og32FFkwcBoOVshxNzgMQRSGeFQBCa1RIcm8W/8cJGv4EyIV2qZbZQDhgIWO42Lwn
         68vVqRDDXjkJXL/UXSyBP8sQ8nKPEbmDmWYeqIozuZUMTmJGWkEN/vQIFrT1oyury29x
         gABlQqecMmsZH1mAPeJ+I1eNuKYBwSjoT6rv7T/YLj2iZzw1d1QwI399yZoPGbjcYFnh
         vrXOKAyxEk6kc/TFpEDrd6kf7j4qapYckripQfw9gzTeZwbbj2dnm+RjCRo7K8NE9zrl
         fskg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.133])
        by gmr-mx.google.com with ESMTPS id y65si55227wmb.0.2020.05.27.06.53.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 06:53:57 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.133;
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MYLqs-1jYsGf049q-00VMV5; Wed, 27 May 2020 15:53:55 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Bill Metzenthen <billm@melbpc.org.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Jiri Slaby <jslaby@suse.cz>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] x86: math-emu: fix up 'cmp' insn for clang ias
Date: Wed, 27 May 2020 15:53:46 +0200
Message-Id: <20200527135352.1198078-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:bSrmojBkHTfwlBXgReUiC68L/lv6zZjqVNBUHsNFg+IGhZRhrGV
 GkkV8WpHw22LMwMARAYsoD5KYA3pBnHFcoLH5dp/x2hSAMrGJi8dChPbY792apwXWnZd7qZ
 jIjJEhxCW7TyMCWq6e4TF4u20TGSW1z/lfJGlEqVJu6zfglnwR4k+xll6LtQsZjRrt0AYNY
 lMD3pl0DIQ5Nn1RISeDUg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lnX7E2HrOZE=:FQJKTfvN7qUyJoPZ/9XhYF
 BHoBketx+AjcNfu8zISxSCiEuFElld5XxsZKyouO4UuxkVJX5UJbUSRBNSS2zPdcx1tqe1eYr
 5lLfUjgr6K+z1suXLLiiJEWbR6VNaa90S33XThu00XuzJ4ZUfRW7i2A9WwwigAR3oR5jjnl0S
 8qAzdChCzOarZwq1EmYdcZw5EYnrkNBgHLqnQurRz2wk3+XSDaJyF+AoXW1im396iIrM6XeyZ
 pim7zL+SIdCRqnCynq0Y0gqppBcselctb9eb4GldF8BznfGXzlWrzC0NDHjypcSZ+UF0aJ5SE
 mzqyq8Ut3RKvELOYDAEofKljsX7hcSP1wQWDutZn2pmadfNyg/5+bRwCV9xierE6Hl0KeKvPI
 B+p3ZQrTPf4wTxead11PdWu0QX4gxK6ie1cWxtKYF78QqZUY/RMiHQy8/IvB8BHPDoZez0kQS
 I8VBI3DtBqLDXR8Zr9j81ppkoEE9pNetsYgxp5RaRxxM9klNgnWm0xKKBDh8ea8mvTSH/d+iA
 RSbvbtp0x9Dsc1IJ2SIdSRcrwrsdHfe/cjdMnjoDkbq3FweSgHg/pvnIylD4Q1+kvH4yZ4tqO
 cdzTFxVzNauQka5xtd/67AW4eRtN05mA4mf2R3e+4S9az6jn6bYtdEia6AnMfY0Fa1FLQd9se
 YMi3qZvuywzqlFAuFEDjFs/lWWnyjyNyq9w1moyIlPNdWNE8xLijzCyxxZXJ1qloHg3Pp9kLo
 o35PzC6xAQXDjcxzCx3i7meueFIaU8Woyz3uad7d6wOb74hFhme11d1kd5mAfq2szTKiapUum
 9s0OMIfFXXp18flKMpOEKpJlSZam6A25qkIIAEuKL8pCC7m/mI=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.133 is neither permitted nor denied by best guess
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

The clang integrated assembler requires the 'cmp' instruction to
have a length prefix here:

arch/x86/math-emu/wm_sqrt.S:212:2: error: ambiguous instructions require an explicit suffix (could be 'cmpb', 'cmpw', or 'cmpl')
 cmp $0xffffffff,-24(%ebp)
 ^

Make this a 32-bit comparison, which it was clearly meant to be.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/x86/math-emu/wm_sqrt.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/math-emu/wm_sqrt.S b/arch/x86/math-emu/wm_sqrt.S
index 3b2b58164ec1..40526dd85137 100644
--- a/arch/x86/math-emu/wm_sqrt.S
+++ b/arch/x86/math-emu/wm_sqrt.S
@@ -209,7 +209,7 @@ sqrt_stage_2_finish:
 
 #ifdef PARANOID
 /* It should be possible to get here only if the arg is ffff....ffff */
-	cmp	$0xffffffff,FPU_fsqrt_arg_1
+	cmpl	$0xffffffff,FPU_fsqrt_arg_1
 	jnz	sqrt_stage_2_error
 #endif /* PARANOID */
 
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527135352.1198078-1-arnd%40arndb.de.
