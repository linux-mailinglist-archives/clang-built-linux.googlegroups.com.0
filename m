Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBY7P4TZQKGQEP5WXPQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9FF19010A
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 23:27:48 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id y4sf10619970plk.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 15:27:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585002467; cv=pass;
        d=google.com; s=arc-20160816;
        b=FHFm7yH+su8VtqA52Pp4pRrt3yS9Ufi6On6PcHmMy8w9bi0c8+WNdPItX7jZreW3Rz
         LTA0q45ItMlRgfwBCgmtqKarPCNWVVAG8KJ7+6Npv52Af3otbCE9bB0jxHPGIvgTaB2h
         lubwQarWkekIjrK71cp+pdxWJcR8OkFIra/oM5gRxdDKvmzUL/6B3rocHI5UZtLsMqIu
         J4U5zaq176udm3ghTB3NUy8HeGtwacXvzkQJ+MkWSNyKIO8yDr8row0W59/QuWy7yMuA
         CAdorhRFm7hR8ugWea4SPLd3wzB2ZhlQeoqaWgE95NFw2nfe8lltdkEnAuc51K67uqOa
         lNhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=rNSG1XHWBLQVNjg09Ka06keLY9YgC5DmisHmfiTSDFI=;
        b=nixszndRngNd9+ngBlk/24oEQ7FoIVMsXkQTmEbiUrWZAXqZXsPKLk4TOfWwnlWgoS
         Ah34s9k7sfThp3IyebbarL31qSISoatBH9rzbGOiY38BdrvSkx/NFJ9//3ftnnc48BrW
         FyVTuUZeXVlzEbS5ES1Y02MU0VG5vt2d4v0lpMW8Rgr4/bM71QV+PnztUkIhYyRwaFXa
         VGeiUKBbTI/35UnDqXogpE8VcL4EqVyRjZ19cv4yyRtbj5DsgRWUdrKfLERrUbqAWn/n
         GvL//fXxqYL85Gzn7CvguFyVaqOmX1LGzWU1+kJFF6cyXtOWgBmIHQx/lFZ3Jm2MZnOg
         cdfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BK9j0God;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rNSG1XHWBLQVNjg09Ka06keLY9YgC5DmisHmfiTSDFI=;
        b=okjm7yG2Cb9jyo0gFujjqii9m7cq3g0M86yUtZjhyq+b+jSATK6RtavxfstYTDAQWi
         S99i+21bFZnkqlq8C8GNn6QtXk9TT+aQcdYXHTdngC9m9Rid0Yu1w39ztN6xaHF3iAGm
         c73i2yzWvk/44/030ueDbUdAVCKIUOUlDtlNAGxAivxI7+jFCNNj/YnVCtBI87Dvu+gB
         3oMxptmnsfBpX9tY5yF+FRWSdMYOKCxddSJQqlnV7Scj6fVAIV5BpHMtT+ij0YQp4tdM
         PYVlEQgKSjT9TdwFgjl1/bR1ocBNOZ2D7EVMH0BLwa8FW0HZiVxI2MQnVMM9ouwyJ4YC
         jwfg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rNSG1XHWBLQVNjg09Ka06keLY9YgC5DmisHmfiTSDFI=;
        b=hs6E4y9d2G/ZN0IoUsEyYPIAdlTXrvQTNevDtQXIK9HsZecf5mw2bbitf0yq0e4jIN
         KttmkLzzTt+hRmJyw7hbzCjPwXn96hJvlwGJ12Zjfaiw0IlD/iZJPZRjz1vKp7H9NmOZ
         H+fcij36ciuI+ABQbqjuxicdckKV5Es0xnRryNdwl2NI1S3nL2/597VLYy4kW2NW+ylz
         KdVOgrvmbxERrW4UIjgNUgla4uY9eIW3BEmf78pXt4/DiwMB9rfdEc/MHEdZZLMahxBC
         sAa1nhei3SI3jfv8CHfrIhHrDq9ZMt+sN7vgWxAuaGftens9ejzsizw3wzFnC7NM3gY9
         KJMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rNSG1XHWBLQVNjg09Ka06keLY9YgC5DmisHmfiTSDFI=;
        b=TPNpGpFzznvWqksZ5XQ/PK1OBhvplw2fNMFA+Np8axIB2ekTJpiYSxP/aXe0XgYYeK
         TjozZIc128of06n/kTyPjM1rizETUFqh8JFc+shngVQ5WyYg5I4bXAyUd7WJr1jz2UTN
         YkEbJXSg+Yqy5cLhKY21ObtluOe3Lkx7B/CvV2zvDdeUhCmkdb0avL3m3GLltlzcyXWq
         qNer0BcNMCAouqyqth0PbMZD/KkYpCkSPgreoKC1W/ky83rLhDkR+TcgcwbAI+OW+bjh
         Ai91vRtVii/7IEP/o1sl+NM6I5Nyyl/9YO/wK2BcluidhyFlbBMkE2R7gUn2uZAoR4Dt
         CDiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0YFwRRtxChdIVGgBPjuRDlJY/lvD9z17foA7vXgsPceK0xn5KL
	1n+9fIBCynjaFZBqLt1kvg4=
X-Google-Smtp-Source: ADFU+vu4Njb7SbF6oatgLSqMqSgAzCeBQu+BYN7Nag+eO40KBetkRIbrc9wJZmSS7RkcApnX53uHyg==
X-Received: by 2002:a17:902:bc4a:: with SMTP id t10mr1333101plz.199.1585002467333;
        Mon, 23 Mar 2020 15:27:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:834a:: with SMTP id h71ls8201669pge.4.gmail; Mon, 23 Mar
 2020 15:27:46 -0700 (PDT)
X-Received: by 2002:a63:1862:: with SMTP id 34mr24660137pgy.191.1585002466897;
        Mon, 23 Mar 2020 15:27:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585002466; cv=none;
        d=google.com; s=arc-20160816;
        b=OrtYPsfiiZ3VXi/9RiGZ0QEcu/9KV2TDIuT5uFKd2M4Qq9I1fdJwi7GpkugvzuzFWJ
         /bsKFPCyBHM0WF6b6rMJFqxajRquzrOCsQ3BkUaHGm3o0UFg6XKLpebrw8jHzv39uzU1
         d7C+TaOxug1zI7MfyKQwCOiOXMCC8KXgDuJXUd3Flg4nOsCiWUchhryWDjLuOO65BhXQ
         JTwOML72RhlZLhI0HRQqemiqPwyAh49Fhjf6MWu6C0RVME7K6h39qVm8CSX1rcA2er7m
         id+AES0pz2lt0nhK9D3hVoEbyHp4jLLJlBZ2j0a9O+F2HYj28RI90Zh67vuv8gx8gB5W
         mwsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Tmt/AtSQf/b1AfMKrhHYlgdsJf3jzbEQVXwlMTLV4uU=;
        b=W3VC0g3Ljz0ukAQh33I5TIEQJqrLzm+oOTY/TBGITs3ev/T5O96eFvr4AMPU4UvboZ
         Xk+McIM6/ED2zk83M5X8QTTy0TbVkIz/h90zxaR9Ke7KDu43U7L4AyAmY+nNMhKlXA4A
         /fKkSF0POh5tnweR9LHoqD2CUSr5apy3aGQylBiGX2fPpTbkf04MTobga7slCYWw/3XB
         3zxgrTjGpZnVsF3B9aW54RmJWoRVu5t/gjd+j+4AIUMC9JLZvfWJC8K/NeaQ7DqKzvbQ
         6JV0ZzM5mt7Wc6zpSEPi1rLUVcB8gEoYAd+KHFGCvCbLhG6awUipIjow/7+WmMNMAUzB
         Fh3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BK9j0God;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id 188si1025633pfb.1.2020.03.23.15.27.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 15:27:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id k18so16587636oib.3
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 15:27:46 -0700 (PDT)
X-Received: by 2002:aca:3302:: with SMTP id z2mr1282962oiz.3.1585002466086;
        Mon, 23 Mar 2020 15:27:46 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id y9sm5708282oie.0.2020.03.23.15.27.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 15:27:45 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>
Subject: [PATCH] powerpc/maple: Fix declaration made after definition
Date: Mon, 23 Mar 2020 15:27:29 -0700
Message-Id: <20200323222729.15365-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BK9j0God;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When building ppc64 defconfig, Clang errors (trimmed for brevity):

arch/powerpc/platforms/maple/setup.c:365:1: error: attribute declaration
must precede definition [-Werror,-Wignored-attributes]
machine_device_initcall(maple, maple_cpc925_edac_setup);
^

machine_device_initcall expands to __define_machine_initcall, which in
turn has the macro machine_is used in it, which declares mach_##name
with an __attribute__((weak)). define_machine actually defines
mach_##name, which in this file happens before the declaration, hence
the warning.

To fix this, move define_machine after machine_device_initcall so that
the declaration occurs before the definition, which matches how
machine_device_initcall and define_machine work throughout arch/powerpc.

While we're here, remove some spaces before tabs.

Fixes: 8f101a051ef0 ("edac: cpc925 MC platform device setup")
Link: https://godbolt.org/z/kDoYSA
Link: https://github.com/ClangBuiltLinux/linux/issues/662
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Suggested-by: Ilie Halip <ilie.halip@gmail.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/powerpc/platforms/maple/setup.c | 34 ++++++++++++++--------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/arch/powerpc/platforms/maple/setup.c b/arch/powerpc/platforms/maple/setup.c
index 6f019df37916..15b2c6eb506d 100644
--- a/arch/powerpc/platforms/maple/setup.c
+++ b/arch/powerpc/platforms/maple/setup.c
@@ -291,23 +291,6 @@ static int __init maple_probe(void)
 	return 1;
 }
 
-define_machine(maple) {
-	.name			= "Maple",
-	.probe			= maple_probe,
-	.setup_arch		= maple_setup_arch,
-	.init_IRQ		= maple_init_IRQ,
-	.pci_irq_fixup		= maple_pci_irq_fixup,
-	.pci_get_legacy_ide_irq	= maple_pci_get_legacy_ide_irq,
-	.restart		= maple_restart,
-	.halt			= maple_halt,
-       	.get_boot_time		= maple_get_boot_time,
-       	.set_rtc_time		= maple_set_rtc_time,
-       	.get_rtc_time		= maple_get_rtc_time,
-      	.calibrate_decr		= generic_calibrate_decr,
-	.progress		= maple_progress,
-	.power_save		= power4_idle,
-};
-
 #ifdef CONFIG_EDAC
 /*
  * Register a platform device for CPC925 memory controller on
@@ -364,3 +347,20 @@ static int __init maple_cpc925_edac_setup(void)
 }
 machine_device_initcall(maple, maple_cpc925_edac_setup);
 #endif
+
+define_machine(maple) {
+	.name			= "Maple",
+	.probe			= maple_probe,
+	.setup_arch		= maple_setup_arch,
+	.init_IRQ		= maple_init_IRQ,
+	.pci_irq_fixup		= maple_pci_irq_fixup,
+	.pci_get_legacy_ide_irq	= maple_pci_get_legacy_ide_irq,
+	.restart		= maple_restart,
+	.halt			= maple_halt,
+	.get_boot_time		= maple_get_boot_time,
+	.set_rtc_time		= maple_set_rtc_time,
+	.get_rtc_time		= maple_get_rtc_time,
+	.calibrate_decr		= generic_calibrate_decr,
+	.progress		= maple_progress,
+	.power_save		= power4_idle,
+};
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323222729.15365-1-natechancellor%40gmail.com.
