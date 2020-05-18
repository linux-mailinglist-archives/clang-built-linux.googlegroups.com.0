Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJU7RP3AKGQEKILOWYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8EF1D8402
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 20:10:47 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id h17sf9269634ior.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 11:10:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589825446; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q4XUXFgj16LMaAHBI/dAp8kslnRyn2sLKAYbmMbdUU9MrKxeuyNKllsvl4eiXKVXdP
         nEmajFH6Xsjarursjmj2iK6ux0OS9E+Ic/54se0NFVedJ6DH+3FXeOpRsnHuXGGMVzE3
         FLiaE+xs45sH1XROkBXwwml4rNGweBW5+rouLIxJHPOSc4OhmuGO6f3m4CzopvP3seLO
         2KIMYhPhNbVZbU/oypzj66z+g9j9NZpgb/PRJlv+TdoOT0ADKVp1mBu4w9EXLCCPNzpn
         2NwKygwM8TnU0PTD2oT6+DMX5txK3S5Tlxno0fGAY25FW8VMkTceTQKSBV3z3H32MHpy
         cd4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=9ZBYLKmhGCzhHIJ7gbD4WYHl/8iZ2ayTKl4l3OZa93E=;
        b=ThKWUJnkPc51hU1zDcU+l46aCw9QGaOxrKj5CbkSCesF51sJcOzQoKtb7nHpuBbOA4
         qz/1PZF+fyGqK7QW15jf8k8fg0eOd8TdfWcgSCtCq4LP0eExcM8hykXVr3L476Li24ee
         ITBuS5L7Y3Y/tYwSPx3KSzkKaQESK2nSRWLXbvAWMz1dEqVOBa5srKDbX8/8XU87ymkv
         yvUHwlaDGon3y4iwiXbo+CzH9ssEClWkibQ0saiiQcL/CMpR5Q+r5+UEsQLNdwFaYNYj
         kpBxfQsqScc/EcXzYsU0Biw5aMqJkq+3OOj5bF+3MyYYmY05x3AD4gIOmIPC9qIjT+8P
         hf7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rgY0C0Tx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9ZBYLKmhGCzhHIJ7gbD4WYHl/8iZ2ayTKl4l3OZa93E=;
        b=Kvkf3lZXQBSfbd35aorL3sc3wGc04hyoOHLf47L/X3b33APOe97toFBN+M8yV196af
         OFp6CV+FnQyXIVMVvD3DDE9RmK4VoM6PAc5H9roCQm0V7eeT0BO13WOl8lFAQr4i8o25
         OXga5aXE8BuOToMJfh/ArKs/Cw7CS8b8/CUGtXXV3zHqC7/LnvCwEbk6zSUbSZ+YjpM6
         wM+swZPUX9H+D9NOkQX1Dfvs0ilLiId82LXrycuynPQkxokZ8yPS0NWmCr5nW/BCaJNl
         n7yq+sgGehKxR9tlKTQRRW7A3xK0OgiTONcDbV10rwe1qLodWJVbW501PFjKGGhgbC3P
         v5zw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9ZBYLKmhGCzhHIJ7gbD4WYHl/8iZ2ayTKl4l3OZa93E=;
        b=r4xDzrkSs07/6IbvqEJ/8rIvEUWbs8UgbC8/h+RavHF8rX4uBmM1f+/KWakBO1B5TW
         RrCPchEvCs5YJQk0fDfZZAu+AlvhzdR8hS/Z0og/hgTKckTIbWpOifkW5BezQ7au/JXC
         GkHqRPPXQi+D9euyeJNxkEJNkJmlflQwEQctmyG83zWMLNLsPvX0xZXYNyv8h6piU9nN
         x3xYuRUTACckC59yukKhLp9VBMfyj0APajbI4TKl8XG6libnO1oVxL9gwpGHV4Rik0Cm
         ODAxRL7cv+LsoZHDXOqIsl3h2RnZtshNEXQmafBFUFyu/1s89mfWnDnXiEbw3zXreHgZ
         xLMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9ZBYLKmhGCzhHIJ7gbD4WYHl/8iZ2ayTKl4l3OZa93E=;
        b=ao/3YqKGAfns77Zj+DHf/PRPRUGRFg4uvD6CNGRvPL17YLVfL+fVMoyLxxxA6zC/ga
         1ulX+o/Horj/Bbq2mT9czvOykdyLb+4fbHzVPTu0A7VRiZHMSem24IxskrWXWOtpij/Q
         L0r0zl+oZEsvTR/aD/rTVk+o7Yute+Dit7DJASYoO+EAlJvPJFG8PQZ9XK8CS1gphcPp
         oXVgBew6NJuq5Peg4LATaDYWD7k1arEovkTQiEi1E7nupF6clDduyLnJm6v8q5ZGamsq
         ojfYSjM/DaSA3fiVFnMQn7VJffIm2CR+qIa0GdfCYxsuS13g0M9zDFDtRLmulw2RRGEY
         DL+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/Pv/D3M5uW4zpXIURh9CKnyP61dpFV5Oc41MYJpYgXrEOAVv4
	UsHazwhsxvIRounkKjZY3aI=
X-Google-Smtp-Source: ABdhPJyDbVts2nbn9UoLULzveW3oF/9HouSvf3vszuUlmIx48QbTXGhQoAtUH/u0lkjduSTrqASq/Q==
X-Received: by 2002:a92:8359:: with SMTP id f86mr17999599ild.28.1589825446240;
        Mon, 18 May 2020 11:10:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5b8c:: with SMTP id c12ls2803273ilg.5.gmail; Mon, 18 May
 2020 11:10:45 -0700 (PDT)
X-Received: by 2002:a92:d34b:: with SMTP id a11mr6477095ilh.180.1589825445850;
        Mon, 18 May 2020 11:10:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589825445; cv=none;
        d=google.com; s=arc-20160816;
        b=SOdkaeGkfyUaRCo99xgbF+MsjnZMbPV+WWVFywWgUiwp4jSgvDSBKO5/+zlG2HQ0jd
         BqNfC6NDTM5FFGs+lyCKFFCocgi8JHSLo7PKRZ3eBYyFAbeIziNt5PMlaCQy5znK/FxX
         YbzMxbR0Pjk1j/5qiUNG5I4e74SDBqYbZTmqwK0Ocexx5ZUGbdZKZy9tcSuAYRdY0WkA
         Wkww54pVtzFNFgdcHthwcH10BUbXZZwONH0KRYocql3k2IfH4/sKNEZjBJC2PJWWGM/s
         fYtuwKz2H/J/Nj8rkmc/AEUOUuKG9bH840EDa6dpoZ0Dw1VGCT/kQinXyZXGUniRW5Xk
         4NDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dZxD1YrOrHOLHOKBWQNSGC/hDMCUT9Jgny3VoBoayC0=;
        b=moiNnZ6Ahnf4xeq/Lv5o/YG1uuHeVS14yrTGRa8k+u1b0+IBvK3Cjw8vyq/b7MMJOr
         JoRIsbGqDj78eSo14p9ko5rcXEIOPIfQqvfO/6qaRxzDXp7ZJNFdrusO3YA5VvdaYtw7
         TZ+P70iOF2K5fpG6MAVNgwEJgg0B928BDuThCHL0uKBTg1VZtT+69kyGkQP1blx0dPtX
         ucf8UuWK+1Lm529jRssIpNnkXhpN7mUHe5FRABOTkP5X2kI1/XTX/6082JiLa2SO5rCZ
         yYzkb2bz9ZxRti+WOeDYSW2vteCBz+KZ4EIGvOzqt1X5sqfamICo/dKVrJgUCNSmKHTQ
         IO0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rgY0C0Tx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id s66si878013ild.2.2020.05.18.11.10.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 11:10:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id w22so8905962otp.5
        for <clang-built-linux@googlegroups.com>; Mon, 18 May 2020 11:10:45 -0700 (PDT)
X-Received: by 2002:a9d:a4c:: with SMTP id 70mr13974434otg.334.1589825445493;
        Mon, 18 May 2020 11:10:45 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id t22sm3217760oij.2.2020.05.18.11.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2020 11:10:45 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	kbuild test robot <lkp@intel.com>
Subject: [PATCH] input: i8042: Remove special PowerPC handling
Date: Mon, 18 May 2020 11:10:43 -0700
Message-Id: <20200518181043.3363953-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <87a7254bxd.fsf@mpe.ellerman.id.au>
References: <87a7254bxd.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rgY0C0Tx;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

This causes a build error with CONFIG_WALNUT because kb_cs and kb_data
were removed in commit 917f0af9e5a9 ("powerpc: Remove arch/ppc and
include/asm-ppc").

ld.lld: error: undefined symbol: kb_cs
> referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a

ld.lld: error: undefined symbol: kb_data
> referenced by i8042.c:309 (drivers/input/serio/i8042.c:309)
> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> referenced by i8042-ppcio.h:33 (drivers/input/serio/i8042-ppcio.h:33)
> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> referenced by i8042.c:319 (drivers/input/serio/i8042.c:319)
> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> referenced 15 more times

Presumably since nobody has noticed this for the last 12 years, there is
not anyone actually trying to use this driver so we can just remove this
special walnut code and use the generic header so it builds for all
configurations.

Fixes: 917f0af9e5a9 ("powerpc: Remove arch/ppc and include/asm-ppc")
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/input/serio/i8042-ppcio.h | 57 -------------------------------
 drivers/input/serio/i8042.h       |  2 --
 2 files changed, 59 deletions(-)
 delete mode 100644 drivers/input/serio/i8042-ppcio.h

diff --git a/drivers/input/serio/i8042-ppcio.h b/drivers/input/serio/i8042-ppcio.h
deleted file mode 100644
index 391f94d9e47d..000000000000
--- a/drivers/input/serio/i8042-ppcio.h
+++ /dev/null
@@ -1,57 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-#ifndef _I8042_PPCIO_H
-#define _I8042_PPCIO_H
-
-
-#if defined(CONFIG_WALNUT)
-
-#define I8042_KBD_IRQ 25
-#define I8042_AUX_IRQ 26
-
-#define I8042_KBD_PHYS_DESC "walnutps2/serio0"
-#define I8042_AUX_PHYS_DESC "walnutps2/serio1"
-#define I8042_MUX_PHYS_DESC "walnutps2/serio%d"
-
-extern void *kb_cs;
-extern void *kb_data;
-
-#define I8042_COMMAND_REG (*(int *)kb_cs)
-#define I8042_DATA_REG (*(int *)kb_data)
-
-static inline int i8042_read_data(void)
-{
-	return readb(kb_data);
-}
-
-static inline int i8042_read_status(void)
-{
-	return readb(kb_cs);
-}
-
-static inline void i8042_write_data(int val)
-{
-	writeb(val, kb_data);
-}
-
-static inline void i8042_write_command(int val)
-{
-	writeb(val, kb_cs);
-}
-
-static inline int i8042_platform_init(void)
-{
-	i8042_reset = I8042_RESET_ALWAYS;
-	return 0;
-}
-
-static inline void i8042_platform_exit(void)
-{
-}
-
-#else
-
-#include "i8042-io.h"
-
-#endif
-
-#endif /* _I8042_PPCIO_H */
diff --git a/drivers/input/serio/i8042.h b/drivers/input/serio/i8042.h
index 38dc27ad3c18..eb376700dfff 100644
--- a/drivers/input/serio/i8042.h
+++ b/drivers/input/serio/i8042.h
@@ -17,8 +17,6 @@
 #include "i8042-ip22io.h"
 #elif defined(CONFIG_SNI_RM)
 #include "i8042-snirm.h"
-#elif defined(CONFIG_PPC)
-#include "i8042-ppcio.h"
 #elif defined(CONFIG_SPARC)
 #include "i8042-sparcio.h"
 #elif defined(CONFIG_X86) || defined(CONFIG_IA64)

base-commit: 72bc15d0018ebfbc9c389539d636e2e9a9002b3b
-- 
2.27.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200518181043.3363953-1-natechancellor%40gmail.com.
