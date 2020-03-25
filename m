Return-Path: <clang-built-linux+bncBAABBVEY5TZQKGQE65KJ5LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA301921DC
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 08:46:29 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id q198sf943981qke.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 00:46:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585122388; cv=pass;
        d=google.com; s=arc-20160816;
        b=lUEceM65/zC/kgdPhgUg6E5qc3Ldm9D1ga8bWD3qfBb2sL4nT9sTLpkf5UNvHGEkR4
         29nz23U4sMeX0TJ5sRLWde3OGhaQxKrZQLHhsXTqNefMUd6Hi0LnAsf7K4T1AljDyc+s
         1752u40HHQiiLVm9avCjjilm3/RKqY25MD2xP4YTf0dDCcnGgZKFQxWwd3AOutXLbgQk
         J3Dze/HWlQIATw80EO0WOB3La3Hi9K4jeRysu7sZGPDCJn/+mWfxn8hXi5RbAMBX9FVa
         1J+2yI4qac8HOKNvLD25CvxsLFrEvEPnS8+vHnicK79PdkyA8+x0mC00Ci2Fvm9YsBsc
         Rkvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=xTrpPDimx6Xp/re+d7qslWNcffnrgAwZgmkuhIWGym8=;
        b=IbsuAw99xu86o8IzEpON2XvYfVmZnsU+BuEZqzs8UBo4uJpUfS6D+/1nZuO2TrVSwG
         lQua07WLQYDKSerxZDYQODx5LHkn6f8pvydAuD0uz5JUAHXpmWCkZdWrGFtzTs7HFsQj
         Z44fQkIE70ZO3TzdV4eF8jWn1bqwGjHTdN0VMKdbXxaE1T7TrLlBKqh3q+GTAEpnvsdm
         gEDIF+6HNb0tw726E8q62rxn3hxV7lEl393iWSW0Xs4/JWhDpOWzZjjlRletju47vBzM
         Aad6A0vN2dmg/9/jWX5g8/wyTYKI/4eEVl709a6NxLiT1GO3UOifNaFxuS0LJvoJn/cx
         z1Aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ERev4LjB;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xTrpPDimx6Xp/re+d7qslWNcffnrgAwZgmkuhIWGym8=;
        b=PdiZmkirPnl/4xzVYHOaqrmkvJEqnSiCJCjtU5FxSOorSFQ8GeecqIIeIJNu73Izd4
         TgoAD+KUAu/JMXy20heq8Yu/1QN8e76OtQ9yZfXInlQGXjOwF1Qt+BTDCiOConljY9aX
         ag7q9OL6H+8JTXKOWUR1ki34O07pHnur/kcNuHp8LJ448ga8Jq2EzZpS9lblCw0NTNjG
         JI0wKRFWFj1CyyebVpgzFyh2SuEt2zw6pof8J1N9RPj/93J9pKxw/jnd9ixAH2jxB9PN
         /qYrxDRxzmoh+Atm7puMN+slGF9Npd+hMqZG7ToEXI0VzI9nkzu/zpJcZgjBjaAYKhHZ
         Nosw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xTrpPDimx6Xp/re+d7qslWNcffnrgAwZgmkuhIWGym8=;
        b=mSix1y9gbd1EJHQL18ZfRQJE61JO8/PCseRLLsA29bYAugp6LZjM7HAqdZGSKM3CCH
         +I5X7yUgnm3Nl+inH7OxZEVrozOOD0RkiN6K3rLEUXtaPHyqBo2RH1ShBEvD286Bs2It
         JxBLM/9IBy0LG2W4nXReswaF6sH5JbQG089GGs4bRKjihy3pFkZhKHRNRjcQCLz+Bd9y
         LvVY7Tzl6UJaI+I18mQJlfneEp5YHZQK54hA5VPb8nK4KxHqDDinocPet5vVgNUKrnss
         iC29tmyNhklR/HMYj13XldtlTwGmj/Ra4xfs163/mFWlYbBdQMDtYLoAueyj4ALaS5ML
         HoYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3jxtjhucgPD82DbXoj5TNc6UEFneKzY7E4LzwV8VQCXyoPzwao
	9IUgKf+wsb80xS8rhaG8/Bk=
X-Google-Smtp-Source: ADFU+vvaYVYdCcY1TxFYY3lCu4177oZspoT8cmLykjsK6B81nxjixSJN2+p6/64+CEhDSUR0qru5Iw==
X-Received: by 2002:ac8:7b2f:: with SMTP id l15mr1643320qtu.320.1585122388307;
        Wed, 25 Mar 2020 00:46:28 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9e41:: with SMTP id h62ls438807qke.8.gmail; Wed, 25 Mar
 2020 00:46:28 -0700 (PDT)
X-Received: by 2002:a37:678f:: with SMTP id b137mr1702266qkc.500.1585122388021;
        Wed, 25 Mar 2020 00:46:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585122388; cv=none;
        d=google.com; s=arc-20160816;
        b=HyWHC3PE3JvoQBSeBh0JSSzFDd6gGtcrr0jbM45rAZKmUl+LWEiylTXVTTVzvmSgvI
         hmZTBzLBpTEUG7ioayTtK9e/v/v4nnUTXnMNDux0NUl4Z3xH0IGgK2/XHJSxfHBErLvc
         EqAgJpufGd8QlINmRabh8gKrza94qp/iSG99smxVcHSPPI7S09gLzrTpCrxxz4bpuRie
         S3VWv4YcWW3ESmB4jZwyPjE1trSpvLTrqxP0sbR1rU0+YQ7Cx9gj0InS1QoB5JcTnRhm
         Ll6NvNRICgE7tIVuR1oOuBVoy0A7V9uDZ09AZHqy6Wgp/AHkeJTJgEd7KznL/q+Kzyyr
         eP1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=EUymPS1gsQvy5W5tjvkKRd13Qol+LTFsH2NwiaiOcDU=;
        b=bhLz5q7juj6z5GOkg18NJqg+uVqhNCV6/Td5/ytrHVcC3MsfueuvggkLdlZ39+TN/i
         YNH9WWzPcFQNIUfERrqDuDCKUN9/4jPvYD8qnSJgftbzqDhku6J2CDOlgJ6AZCuOOG7A
         Phm4uYXJpjXlmTHcAkPVkHs5lo8TAvhfYGezJxIYZ92VunWuWaIjIxW0yIcLkLfxRkIB
         DpSNlMc9wVPXHlEJR4GF4Yz+NCshc2IZKT4Nrxp6fJ/S/WNX+nd/2zXdYYHZJrGqrFdW
         kV1buesUWvQ8rIaSozgRUKKFlud6qTZkvHc7COE9nJK8Ik2pWS5kNu88WbzSgWOIePnc
         qGTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ERev4LjB;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id p11si525399qkh.3.2020.03.25.00.46.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 00:46:27 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02P7jkld015692;
	Wed, 25 Mar 2020 16:45:46 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02P7jkld015692
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-mips@vger.kernel.org,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: "Maciej W . Rozycki" <macro@linux-mips.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>,
        Alexander Lobakin <alobakin@dlink.ru>,
        Paul Burton <paulburton@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v2] MIPS: do not compile generic functions for CONFIG_CAVIUM_OCTEON_SOC
Date: Wed, 25 Mar 2020 16:45:29 +0900
Message-Id: <20200325074529.24772-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ERev4LjB;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

MIPS provides multiple definitions for the following functions:

  fw_init_cmdline
  __delay
  __udelay
  __ndelay
  memmove
  __rmemcpy
  memcpy
  __copy_user

The generic ones are defined in lib-y objects, which are overridden by
the Octeon ones when CONFIG_CAVIUM_OCTEON_SOC is enabled.

The use of EXPORT_SYMBOL in static libraries potentially causes a
problem for the llvm linker [1]. So, I want to forcibly link lib-y
objects to vmlinux when CONFIG_MODULES=y.

As a groundwork, we must fix multiple definitions that have previously
been hidden by lib-y.

If you look at lib/string.c, arch can define __HAVE_ARCH_* to opt out
the generic implementation.

Similarly, this commit adds CONFIG_HAVE_PLAT_* to allow a platform
to opt out the MIPS generic code.

[1]: https://github.com/ClangBuiltLinux/linux/issues/515

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - Use #ifdef instead of __weak. This avoids increasing image size.

 arch/mips/Kconfig          | 12 ++++++++++++
 arch/mips/fw/lib/cmdline.c |  2 ++
 arch/mips/lib/delay.c      |  4 ++++
 arch/mips/lib/memcpy.S     |  3 +++
 4 files changed, 21 insertions(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 797d7f1ad5fe..4bf103e5c139 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -973,6 +973,9 @@ config CAVIUM_OCTEON_SOC
 	select SYS_HAS_EARLY_PRINTK
 	select SYS_HAS_CPU_CAVIUM_OCTEON
 	select HAVE_PCI
+	select HAVE_PLAT_DELAY
+	select HAVE_PLAT_FW_INIT_CMDLINE
+	select HAVE_PLAT_MEMCPY
 	select ZONE_DMA32
 	select HOLES_IN_ZONE
 	select GPIOLIB
@@ -1229,6 +1232,15 @@ config GENERIC_ISA_DMA_SUPPORT_BROKEN
 	bool
 	select GENERIC_ISA_DMA
 
+config HAVE_PLAT_DELAY
+	bool
+
+config HAVE_PLAT_FW_INIT_CMDLINE
+	bool
+
+config HAVE_PLAT_MEMCPY
+	bool
+
 config ISA_DMA_API
 	bool
 
diff --git a/arch/mips/fw/lib/cmdline.c b/arch/mips/fw/lib/cmdline.c
index 6ecda64ad184..f24cbb4a39b5 100644
--- a/arch/mips/fw/lib/cmdline.c
+++ b/arch/mips/fw/lib/cmdline.c
@@ -16,6 +16,7 @@ int fw_argc;
 int *_fw_argv;
 int *_fw_envp;
 
+#ifndef CONFIG_HAVE_PLAT_FW_INIT_CMDLINE
 void __init fw_init_cmdline(void)
 {
 	int i;
@@ -41,6 +42,7 @@ void __init fw_init_cmdline(void)
 			strlcat(arcs_cmdline, " ", COMMAND_LINE_SIZE);
 	}
 }
+#endif
 
 char * __init fw_getcmdline(void)
 {
diff --git a/arch/mips/lib/delay.c b/arch/mips/lib/delay.c
index 68c495ed71e3..2e8dfc1d59c8 100644
--- a/arch/mips/lib/delay.c
+++ b/arch/mips/lib/delay.c
@@ -24,6 +24,8 @@
 #define GCC_DADDI_IMM_ASM() "r"
 #endif
 
+#ifndef CONFIG_HAVE_PLAT_DELAY
+
 void __delay(unsigned long loops)
 {
 	__asm__ __volatile__ (
@@ -63,3 +65,5 @@ void __ndelay(unsigned long ns)
 	__delay((ns * 0x00000005ull * HZ * lpj) >> 32);
 }
 EXPORT_SYMBOL(__ndelay);
+
+#endif
diff --git a/arch/mips/lib/memcpy.S b/arch/mips/lib/memcpy.S
index f7994d936505..88065ee433cd 100644
--- a/arch/mips/lib/memcpy.S
+++ b/arch/mips/lib/memcpy.S
@@ -598,6 +598,7 @@ SEXC(1)
 	 nop
 	.endm
 
+#ifndef CONFIG_HAVE_PLAT_MEMCPY
 	.align	5
 LEAF(memmove)
 EXPORT_SYMBOL(memmove)
@@ -665,6 +666,8 @@ EXPORT_SYMBOL(__copy_user)
 	/* Legacy Mode, user <-> user */
 	__BUILD_COPY_USER LEGACY_MODE USEROP USEROP
 
+#endif
+
 #ifdef CONFIG_EVA
 
 /*
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200325074529.24772-1-masahiroy%40kernel.org.
