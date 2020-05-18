Return-Path: <clang-built-linux+bncBCR5PSMFZYORBFUXRL3AKGQEC6NL7JI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8CC1D799A
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 15:20:24 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id g15sf10788200qvx.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 06:20:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589808023; cv=pass;
        d=google.com; s=arc-20160816;
        b=IAhwe9EDu4LIWifFUbOTniQ2NllnaF0ZzAr58ILHrnKCaAnxsnatzt+XWu3RQY3q2C
         Z9tGOxpNY+5YzBrqEUMQ5RNcNJl0AivUfycAqbwtuFMdAuAmYxZnMHwIloNOhMH0OYrz
         24DaTwgX61gv1r5p6nEHyV3jQ7+yP+bt4flrsg69Ud7Vm3v8rYKyM2PvSvschasZcdbA
         Hwafe1sqDyvjCkZLHTaiHi+LdGwdgvx61OkSYqIj5EiJgnbV3xgWgMPqY9s0Bw0AkLjt
         Xq7Rfq49h/tbebyYMk6NSacHrrYEHhwJglloOHaZieNqDXeZYtvTM1d09glYzuOpF2xa
         tOeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=5p3fNAgiAUr7qBx3SmfhEP2rK36Jk0t0OKPrmVRxao0=;
        b=ypH8WsgBh8g78T6dinb0+N68JYZJ1b9RhdwVRjGK/Qz1pEsvlOCe3tYs6N0grwGZnp
         KfQrkkaB1/vEnsJRNKnkCqz30NHMTzqg0T5v/QRwtztb20pJh+u/DAFOP8JqxC+Y1/iv
         Qinp0u9X965F7JXvLmIZ4+ayJlRyvXTFei59hMxm/up6ycu7yQCnLu+qElAzOkNQPXDI
         Yq6vxqFS3/iPd3RSTNPYSLOVHITOCOlirk4EmOj1ccSILNgE/z2Z6x7kyojf8lrmnOyn
         BIzbNtCzrdLgUqjs1koksKMymey6v5CAjNwszgx7DQ6sXzyP3C75N+AZcepWirdQlU9x
         9KxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=bwhULTYe;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5p3fNAgiAUr7qBx3SmfhEP2rK36Jk0t0OKPrmVRxao0=;
        b=r729KDIzEDNY++rhQoSughDRo7LVyYDm0DD2T0LOepSzZqp73cnzTXjBzzZbH0c4n/
         o9zysHW3PSq2J6/YVuQZ/YNal9KY/VJD+XltlFDuACktjnCWHomWTxXEFkZfaPR89IfF
         fahBHYlLPcZx71WcCk4HY2WICdEOozk39UfcCdDPrd25Lus1+0gDQvJp5Uow/vLl/H0/
         r/QcY9TxsbR/NSxPfQwkFq4NmI2MQz0XecyZWbkUEheGQpswQmwjhPQ8XuomWKoUoxNc
         HklrFD6wTD1khsFYKpqc5qQBrE993uNIUnGId4m4lUDoegdoYFlg4A9e6e5K5dyDja8e
         woYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5p3fNAgiAUr7qBx3SmfhEP2rK36Jk0t0OKPrmVRxao0=;
        b=EHgR+LUsAQFD94cyQjqbPwRXp1/yvISRN8xA0pQQR9uPQ9uMoFL1rZmc4CZI6H6vmf
         Ve9T/Tb8ptwyyvBwvYQCjsYNIdukTtd6jMIwFOuuM6DSdv+T4d0aPe9RDFFV+84FeEK4
         +m+OtBQiSNsWS80bRh6sYlls76lrAeeJJ6lbFpTj9K5NPF9LW8dgb4PLekoTVsjMbnVD
         Q99D7wWwtQir610nC5/oBjC7CdJG1UErZGfLygjycECkpcnYx4eeU3ySIOYFsKp7SZof
         VLbVqlELY2RpTFy6hPsGVOv43TL+rWf6XlJXvfD91S/WiqfLFSB6meCMFfqTZ4/LcmPd
         MUow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tQPbmPqDfCeHDy0WA6YxWmQkEu8CLTV62+Gdlg6j782OaEnKD
	/8Ffm8KGmrChA/5n++PP1z4=
X-Google-Smtp-Source: ABdhPJywhdEmJGcd9sqJcVFHCqR0Bxd8nUEBcwcvkTmBKv7kiuxFAXsKfvD8N8dlFlkZS38DM8CW2Q==
X-Received: by 2002:ac8:3a22:: with SMTP id w31mr6334371qte.156.1589808023071;
        Mon, 18 May 2020 06:20:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6288:: with SMTP id w130ls4732671qkb.10.gmail; Mon, 18
 May 2020 06:20:22 -0700 (PDT)
X-Received: by 2002:a37:86c4:: with SMTP id i187mr15335069qkd.403.1589808022225;
        Mon, 18 May 2020 06:20:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589808022; cv=none;
        d=google.com; s=arc-20160816;
        b=SoKqVhLFfV9gUP75Jaz0e2zonM8kjdnsaeJEzOrULCFySvwvb/H+P0375ZZYSx4MIU
         IufsYQzqZoyoV+0VNPiYpMZ9GJPojk6StDAEtt7+a6p/GILrTU4hGwceXdJ8PDQCUYL3
         d1zhNOq2gCnyZhWvCLzxycA6a1pRNRIN8kOZsRczBQnVnvnyhOhVy067LiqeYa2xwuN8
         r4c+njvirXH3hbuHD0YN4HEmKxlL2Bv04htxSQevhMhpgHdVClV8TxNPdBoSl5Qv/n8Z
         u6la3bY84Irr55t6twWlYrIDNawCR5obFJhuDrA0LO9etUTYELu72LHI8JQ+2fEADFpd
         GTzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=JLtDw4pcpTZWJNPT77of6AHO0JQdF2AV/Iakt/0+zag=;
        b=hEqzDk5Ypb2jzIuO9Hh85ffH43cgNaiiTTrfyDp6vL6X3tUNhXWkCZZqYBzuPN8ze0
         TmjO6eVBan5hEgGQK1Q0mk1HU8Myk0LaaxWrv/5g1OYCFbLbWnUR8aPoxu3AuJR/Yiwl
         daNfSHTdC+xQLEXseasiw9f3nW/l7Z/gMO74WeMREzX/LKWh27I03tUDUjzFm/0SYlcK
         sRy2xVrwj9yOylOFMz6BDVCwGRMgl6hWxiHKdLwAQg5eNICtBM5Bn+l0a2oWG1UJiEj1
         Ivv/qOFkFsXthqLLHrcnATVgfElueAkddR2zKIhXyFGWH+qZyI9XwkBq+wCTZFbiRJ2q
         843w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=bwhULTYe;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id z206si130720qka.4.2020.05.18.06.20.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2020 06:20:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 49Qfl1694vz9sTS;
	Mon, 18 May 2020 23:20:13 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nathan Chancellor <natechancellor@gmail.com>, kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Subject: Remove WALNUT hacks in serio/i8042 (was Re: ld.lld: error: undefined symbol: kb_cs)
In-Reply-To: <20200514030149.GA1841966@ubuntu-s3-xlarge-x86>
References: <202005140845.lthaPgxR%lkp@intel.com> <20200514030149.GA1841966@ubuntu-s3-xlarge-x86>
Date: Mon, 18 May 2020 23:20:30 +1000
Message-ID: <87a7254bxd.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=bwhULTYe;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=mpe@ellerman.id.au
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

[ Cc += linuxppc-dev ]

Nathan Chancellor <natechancellor@gmail.com> writes:
> On Thu, May 14, 2020 at 08:13:48AM +0800, kbuild test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>> head:   24085f70a6e1b0cb647ec92623284641d8270637
>> commit: 5990cdee689c6885b27c6d969a3d58b09002b0bc lib/mpi: Fix building for powerpc with clang
>
> I am certain that this patch did nothing to cause this... Maybe exposed
> it but not the root cause.
>
>> date:   3 weeks ago
>> config: powerpc-randconfig-r034-20200514 (attached as .config)
>> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 310d32cb80a611e6384a921e85607fea05841f26)
>> reproduce:
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install powerpc cross compiling tool for clang build
>>         # apt-get install binutils-powerpc-linux-gnu
>>         git checkout 5990cdee689c6885b27c6d969a3d58b09002b0bc
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 
>> 
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kbuild test robot <lkp@intel.com>
>> 
>> All errors (new ones prefixed by >>):
>> 
>> >> ld.lld: error: undefined symbol: kb_cs
>> >>> referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
>> >>> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
>> >>> referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
>> >>> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
>> >>> referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
>> >>> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
>> >>> referenced 45 more times
>> --
>> >> ld.lld: error: undefined symbol: kb_data
>> >>> referenced by i8042.c:309 (drivers/input/serio/i8042.c:309)
>> >>> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
>> >>> referenced by i8042-ppcio.h:33 (drivers/input/serio/i8042-ppcio.h:33)
>> >>> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
>> >>> referenced by i8042.c:319 (drivers/input/serio/i8042.c:319)
>> >>> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
>> >>> referenced 15 more times
>
> kb_cs and kb_data are declared as extern void pointers when
> CONFIG_WALNUT is set, which this config does. However, it looks like
> the definitions of these variables were removed in
> commit  917f0af9e5a9 ("powerpc: Remove arch/ppc and include/asm-ppc"),
> way back in 2.6.27-rc1... So presumably, this has been broken for 12
> years and nobody noticed?

Hmm, nice. 12 years is a pretty typical time frame for finding bugs in
the powerpc tree ... o_O

Our ppc40x_defconfig has CONFIG_SERIO=m, but explicitly disables
CONFIG_SERIO_I8042. And walnut_defconfig disables CONFIG_SERIO.

So I guess it has a PS2 controller but most folks didn't use it?

> Probably means there is a good amount of dead
> code that can be removed, or we could just avoid ever selecting this
> driver with CONFIG_WALNUT (if it does not actually work without the
> special handling from i8042-ppcio.h) while removing the dead code.

I'm inclined to let the driver be selected, rather than carry a wart for
it. I doubt anyone will ever turn it on explicitly, and if they do they
can have fun debugging it.

> diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
> index 924c541a9260..59b2f655e39e 100644
> --- a/arch/powerpc/Kconfig
> +++ b/arch/powerpc/Kconfig
> @@ -138,7 +138,7 @@ config PPC
>  	select ARCH_HAVE_NMI_SAFE_CMPXCHG
>  	select ARCH_KEEP_MEMBLOCK
>  	select ARCH_MIGHT_HAVE_PC_PARPORT
> -	select ARCH_MIGHT_HAVE_PC_SERIO
> +	select ARCH_MIGHT_HAVE_PC_SERIO if !WALNUT
>  	select ARCH_OPTIONAL_KERNEL_RWX		if ARCH_HAS_STRICT_KERNEL_RWX
>  	select ARCH_SUPPORTS_ATOMIC_RMW
>  	select ARCH_USE_BUILTIN_BSWAP

So I'd drop this hunk.

> diff --git a/drivers/input/serio/i8042-ppcio.h b/drivers/input/serio/i8042-ppcio.h
> deleted file mode 100644
> index 391f94d9e47d..000000000000
> --- a/drivers/input/serio/i8042-ppcio.h
> +++ /dev/null
> @@ -1,57 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> -#ifndef _I8042_PPCIO_H
> -#define _I8042_PPCIO_H
> -
> -
> -#if defined(CONFIG_WALNUT)
> -
> -#define I8042_KBD_IRQ 25
> -#define I8042_AUX_IRQ 26
> -
> -#define I8042_KBD_PHYS_DESC "walnutps2/serio0"
> -#define I8042_AUX_PHYS_DESC "walnutps2/serio1"
> -#define I8042_MUX_PHYS_DESC "walnutps2/serio%d"
> -
> -extern void *kb_cs;
> -extern void *kb_data;
> -
> -#define I8042_COMMAND_REG (*(int *)kb_cs)
> -#define I8042_DATA_REG (*(int *)kb_data)
> -
> -static inline int i8042_read_data(void)
> -{
> -	return readb(kb_data);
> -}
> -
> -static inline int i8042_read_status(void)
> -{
> -	return readb(kb_cs);
> -}
> -
> -static inline void i8042_write_data(int val)
> -{
> -	writeb(val, kb_data);
> -}
> -
> -static inline void i8042_write_command(int val)
> -{
> -	writeb(val, kb_cs);
> -}
> -
> -static inline int i8042_platform_init(void)
> -{
> -	i8042_reset = I8042_RESET_ALWAYS;
> -	return 0;
> -}
> -
> -static inline void i8042_platform_exit(void)
> -{
> -}
> -
> -#else
> -
> -#include "i8042-io.h"
> -
> -#endif
> -
> -#endif /* _I8042_PPCIO_H */
> diff --git a/drivers/input/serio/i8042.h b/drivers/input/serio/i8042.h
> index 38dc27ad3c18..eb376700dfff 100644
> --- a/drivers/input/serio/i8042.h
> +++ b/drivers/input/serio/i8042.h
> @@ -17,8 +17,6 @@
>  #include "i8042-ip22io.h"
>  #elif defined(CONFIG_SNI_RM)
>  #include "i8042-snirm.h"
> -#elif defined(CONFIG_PPC)
> -#include "i8042-ppcio.h"
>  #elif defined(CONFIG_SPARC)
>  #include "i8042-sparcio.h"
>  #elif defined(CONFIG_X86) || defined(CONFIG_IA64)

#elif defined(CONFIG_UNICORE32)
#include "i8042-unicore32io.h"
#else
#include "i8042-io.h"
#endif

The rest of the context is ^

Which makes it clear that your removal of the entire file results in no
change when WALNUT=n.

I'm not sure if anyone really maintains that code, but this is all PPC
really so I think we could merge it.

Do you want to send a proper SOB'ed patch?

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87a7254bxd.fsf%40mpe.ellerman.id.au.
