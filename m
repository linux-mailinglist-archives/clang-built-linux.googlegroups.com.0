Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIHJ6L2QKGQEZ2Y4YYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 356EA1D2543
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 05:01:54 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id k10sf633534plk.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 20:01:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589425312; cv=pass;
        d=google.com; s=arc-20160816;
        b=K6x9+peqG/iXeMFHMvorusHs+qwVDVQvyUws6UjYGQ+rxM+MZLeqITB00djxk9wvts
         PgqY3FWz61VotzIl90RtyaYFf8BEq0NMIfTPZP4l03nlCAXyNEhTb2b7zfm2zG+poSpG
         GNrhKtRPjwDH7lwz5UD9CKJ5PtGPmdIHgCSTHFoQ6B9MM/vK1stvjfo5+Kpp4ZyIkVk3
         yq8Hskr1tR+uS8Bm/v5+FRGmatqLhOG95L2qf5uszUCjhPzkT84tlcsuSbxCh7xtacMS
         xIe8pP0WCNnGQganNZL1vcgPXlrNRrPmYzG/VWj/j7bCOQy3oHPB4qud533nxOzoAmbo
         ObqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Sj5scOfot8o0ujyvtV3nMU20FTCtcJuRmCxHjyo+Etc=;
        b=lbGq3EQjsHameZaAGonkXPQR7APepA8GD9ClEhhEiVJ9CbLY+c4mBEzbQ2THJYt3St
         pUB1YqE/Qj+CpWxvkJVstlvghrPq+A+cO+xi5Me94SOS2ToJJvU1WfEyy8LVKrapqbMx
         WB6a796HE/y9gU6LXFYcGJrvL5gJ1QeaNAn9SIBOp/7gSOJyLitvAIYSEiYNVH6H/BlZ
         t/jp+89XA0OcmUtCj8sjBXIAMj+JNCy9RTV/gyyYBL4tLFnzKHWXpM2hGVSPc8sktv+P
         RpGdxPuz5Si1clePszE6IyWs14UUIHwvRWkzgItS2nd2H9EUWPTqB4+aMW+te9ZcHYez
         YOVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q1HdYDG9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Sj5scOfot8o0ujyvtV3nMU20FTCtcJuRmCxHjyo+Etc=;
        b=bLl93OZ5AFbXUxafEFT/m5KBo/jHNRzwJDXOvEyJarOgRk6yQyyWLHLd3ueJIcaAlA
         M4WTjRlzV+lJXC+9F6QckVN4Df/BhqqzGrvkuAUe6Zo+Jb61lbrJkaPcjli+LvJo3FkL
         zyS313PcsxPPSGotCkmzI8855giaOMXvm0P+xBVDniov2lowqF3dfDT14QTiDyAJ32Ma
         AIqhmoroC2b6ZRkejxWvxm17xSEZV+Fa7De/Kn64ARujO5k9EsOU56+H4DUIA1mB4fzn
         9gj7n0N0ll/NLFqHf7xluVLgmLb52DUxaAmU7KAZB+X40O387oicA+ovBXrYdFQwk6f4
         1ftg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Sj5scOfot8o0ujyvtV3nMU20FTCtcJuRmCxHjyo+Etc=;
        b=OIt2/Pmho0iOMXt04J9go82td9T6RW2o2D4shJC8HfszTwgtlfv/lsiVy0ZdMzFfB4
         7+VuLFD7e64rPKXjDkUAUYPdmyqSp73PM+beyrOqYnvoVIRcvLQRo0x7OrI6PtMoQpn+
         EqsiSO3IsLFopf9LjYOAMT+qh9OutU4S05ZuLzMNOm2SrERgPwUQM06jhmgqqFIpPCVa
         p+mtx52H7gZRcJdsIz1ujCyWpSFczWw3G37u4BT7pCg+7SQKndJVJ29JuGQkgE0i0RTZ
         BtNnUyB9JRFsY5lyhwzlCgPhedFksN9+H7bQ/S94mONzV264CdjhSF/HuEiwivfUVLNn
         K4Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Sj5scOfot8o0ujyvtV3nMU20FTCtcJuRmCxHjyo+Etc=;
        b=EMHyCSR6WqxajoFvETDMw/UIqyIgbwmz9w1cEA6yYjoQWiJ+wlNQtTVTgjkO7d5E66
         L6+mF/+YC62S8Pc4MVDKSgzDPgJMXWmG2f/2c1z+qq7ytyd+j2l8H7foPp72+0gSnvk0
         Qu+oAhx19UHfnq6i5BXWlAuuCY33xiA5xh0rKj3yDanQFx3EPUGnROMKDFJufkM9l18F
         TQhcrXFNNIHA9mXuREcdybxGMgm3JhMricb/a2YgOgGgMrZMI2w9OZcIYDjDAzFv7mr2
         kOFRsHmxiZlPR4wS2EA2zA4elHJOP6dHeeYntSnJrcoJolWum3Z4+M9+5v15+rkfGyfZ
         MZCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZWx+Iu7ORpQ6LEK6KVzdjVH/Dl1q4Aro7u2NB2HIBExGoX5kKP
	iS3E1X0vh11rrX7co8wbANE=
X-Google-Smtp-Source: APiQypI20bKfJ21bueSKpGXh2YZ9hMCvzMOvdExzt2FZy0+mm3KLgeMmBQpnTBOva0tyl0G9lq3iWA==
X-Received: by 2002:a17:90a:fd8c:: with SMTP id cx12mr37223220pjb.211.1589425312539;
        Wed, 13 May 2020 20:01:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4383:: with SMTP id q125ls403364pga.7.gmail; Wed, 13 May
 2020 20:01:52 -0700 (PDT)
X-Received: by 2002:a63:e148:: with SMTP id h8mr2200026pgk.313.1589425312034;
        Wed, 13 May 2020 20:01:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589425312; cv=none;
        d=google.com; s=arc-20160816;
        b=QAFV6rBYN/XT6oLR6CVMtkE8uGeBtAlNzSXb56/guPB0FrY06KHjsBBeZCSeallTuU
         igM/0t9Yq48NPiVFl75laA5PT++njnci+jDwhVENnE+gU6EQvTp96lLDANIOWP6EVejz
         r2sJ8SYraLPlL2sIYAxN7lqotp+fAq/qirULVZQEgMc+OQhg0qA63brjsXXMxYVFmlbw
         LMnPf05qfB9tGFWFSyvI+NQ64N53u19UGyUFgVYvWmbmSrIrQNuicz2anmB7/jUCuPlk
         YLzM0bxzmK7bNVxFVQL864WoXNKJVdNCXWgIPH5hCdZ2ZxZbx3wdghMCU2AipONRK8FI
         rCHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=D0DXJFYXFg8miFahx4IIEl7ks6L+9RP226Ci1x5buMc=;
        b=zKsETuj67o+WN/qKnEGUs9hpV0w7LrCxn7M0PZSeYnpb9hIa3d00G5X1XG9HRq3ArX
         88q3eIpm1udTvNXotSMfYfMcOfjqHXY87eKexCX7qQfVf7eBzNYG4YgmUIAxrGdw8V4v
         ISv9b1ARLlUOxZbzTJXHAbiHrqLCgidi46eZYlcswyn016bQ2FMcySGzeeb0/qgbemS7
         THLJFlsG+sM5vipuTLJEUuqa0DiExVNCzE6vJimEl1dyGJ2Wy7T01CqrRFyKr+pYJEB7
         zEN5s/XhVK6gZ3XKlF5O1EoaBVRmM7Jqn5PXk3rS9bUrWVyirV+lG4ARLB6K3aD9151N
         eYJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q1HdYDG9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id g11si81319pgj.2.2020.05.13.20.01.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 May 2020 20:01:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id w22so1036604otp.5
        for <clang-built-linux@googlegroups.com>; Wed, 13 May 2020 20:01:51 -0700 (PDT)
X-Received: by 2002:a05:6830:1e7c:: with SMTP id m28mr2041492otr.151.1589425311131;
        Wed, 13 May 2020 20:01:51 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id i127sm3879874oih.38.2020.05.13.20.01.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 May 2020 20:01:50 -0700 (PDT)
Date: Wed, 13 May 2020 20:01:49 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>
Subject: Re: ld.lld: error: undefined symbol: kb_cs
Message-ID: <20200514030149.GA1841966@ubuntu-s3-xlarge-x86>
References: <202005140845.lthaPgxR%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202005140845.lthaPgxR%lkp@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=q1HdYDG9;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, May 14, 2020 at 08:13:48AM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   24085f70a6e1b0cb647ec92623284641d8270637
> commit: 5990cdee689c6885b27c6d969a3d58b09002b0bc lib/mpi: Fix building for powerpc with clang

I am certain that this patch did nothing to cause this... Maybe exposed
it but not the root cause.

> date:   3 weeks ago
> config: powerpc-randconfig-r034-20200514 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 310d32cb80a611e6384a921e85607fea05841f26)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         git checkout 5990cdee689c6885b27c6d969a3d58b09002b0bc
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> ld.lld: error: undefined symbol: kb_cs
> >>> referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
> >>> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> >>> referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
> >>> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> >>> referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
> >>> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> >>> referenced 45 more times
> --
> >> ld.lld: error: undefined symbol: kb_data
> >>> referenced by i8042.c:309 (drivers/input/serio/i8042.c:309)
> >>> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> >>> referenced by i8042-ppcio.h:33 (drivers/input/serio/i8042-ppcio.h:33)
> >>> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> >>> referenced by i8042.c:319 (drivers/input/serio/i8042.c:319)
> >>> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
> >>> referenced 15 more times

kb_cs and kb_data are declared as extern void pointers when
CONFIG_WALNUT is set, which this config does. However, it looks like
the definitions of these variables were removed in
commit  917f0af9e5a9 ("powerpc: Remove arch/ppc and include/asm-ppc"),
way back in 2.6.27-rc1... So presumably, this has been broken for 12
years and nobody noticed? Probably means there is a good amount of dead
code that can be removed, or we could just avoid ever selecting this
driver with CONFIG_WALNUT (if it does not actually work without the
special handling from i8042-ppcio.h) while removing the dead code.

Cheers,
Nathan

diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index 924c541a9260..59b2f655e39e 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -138,7 +138,7 @@ config PPC
 	select ARCH_HAVE_NMI_SAFE_CMPXCHG
 	select ARCH_KEEP_MEMBLOCK
 	select ARCH_MIGHT_HAVE_PC_PARPORT
-	select ARCH_MIGHT_HAVE_PC_SERIO
+	select ARCH_MIGHT_HAVE_PC_SERIO if !WALNUT
 	select ARCH_OPTIONAL_KERNEL_RWX		if ARCH_HAS_STRICT_KERNEL_RWX
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_USE_BUILTIN_BSWAP
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

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200514030149.GA1841966%40ubuntu-s3-xlarge-x86.
