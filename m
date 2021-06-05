Return-Path: <clang-built-linux+bncBDLKPY4HVQKBBXPZ5SCQMGQE5Y2NVDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 38ADD39C6EA
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Jun 2021 10:59:10 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id t14-20020adfe44e0000b029011851efa802sf5274618wrm.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Jun 2021 01:59:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622883550; cv=pass;
        d=google.com; s=arc-20160816;
        b=tEF0PXY6aBQO+gUZM6riJGKg7tKb7WNVxeQJf9HLGHLeUUFp6YQvk+TarFv4ytmvtA
         fXI0CGN8wSLnf6WzINftOjV/8UDyjLUsnk4mf1ifvD7KEr5dG2McJG+vHY1Hseqpurmh
         IJgV9HBvJR8H9ewkcUS8mwA23YnHFgfiJrsaK6JWtjZEnrLUsyaBnc8VyGMBFpABDyfT
         KxZ+5BhaRJlZInTUn1ORZT4DKAhSMmItcwKDekrJmNL0+kiZ9yczY70P2CeAF4eGpgfD
         CsUWf93CriGjwX2Lyqvqen82tQcX/E78Rgit+uHAfv84o2W23SzsaNzxpRkMsnZFdzyR
         AnKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=V+h2LZ7h2qvFWKwSbXPB5FhsAehyJZ8avHbTaAPSkTY=;
        b=Ez6HL5FkzBuNFBIbrMBzKlCUySvszTvw6kUTjEgr64AipPl1fKMMVz7DUOQU18DP3U
         2otCetBxM95yNKII+85Amk5dvPaIVyzH9ZtzL8VPZce80bhvxfwBUSgWcKA2OTr5/Yye
         ClbdipjBUN8ExaFPFMQMhT36NexGhEIY6llOLVM3GhWH3atEdLZGbDzwfqewOIbb/i7u
         ABBISxV2RueH9hFTkIOp/yPqP8n06hFk5bqi6qoEvNUCY+Y21qAjz7WkCrt5zbJYG1zS
         Bkx50wWc9pOwH/DfvlEQ6AEqIg2XS3PmhQo4hpZ7kjo2mgtLA6D8NZjxFt+kLNAprrV2
         EDbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V+h2LZ7h2qvFWKwSbXPB5FhsAehyJZ8avHbTaAPSkTY=;
        b=aBOpvTZN+B+2l7TRnszFb62Wd7rVcZEKwRLaWLtkvudQhsjwBAXnEWjiDcSKOeBIiZ
         8E4ymxkf8Xdl5hKD+VkP1inWkmNyYkstbCj8MAEWnkqJ25a/me4AyiHxO5aNkhvHL8G2
         /pZ7I4QyURPrtQ6gMfKJLHpjKuTby0W47FiTbRfZgdEtlbm4xvoBnawtXt+5vJooHbK0
         M/ipRKGjQDDo8fbp7b1d6oBkbdE6FdbWuiphMIIwphbeO1gWI99z83yNwHoW7XvPeFpD
         C6Dp0Yj2LVkmLgDyQxbQATNIj0BU9HAMaBWrIinSYds3d+P7hjKsuAA9QIn1mqmd3zkg
         XNYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V+h2LZ7h2qvFWKwSbXPB5FhsAehyJZ8avHbTaAPSkTY=;
        b=iDYRFCm4mjT/6gN2Ym9Vl9JiPBzUqikKRnoF65i5UQ/k+fe0koTvX6SeIiIhp1mu77
         8lHEsQ89ZuFGSAGKNPdqJcPLep4+6YG7/OpBOhfR5FOHfE6urOl3GdPnRxJhnKmnjeBT
         2CCefxHjCRx2Wj3Loy8KWpdpKrAhXWaLpH4wZ30UxwbDRQtrgVtF7KEylru3ChPa0tso
         Pkw80LER/eA70fRnPu0O3VjeUAeUITYnCNiNkQRXzUIq3UO3BqE3y0OgJkmn9uRad9m/
         GJ98C7Pi4/zwPITmHJIGYT1guB3eQ28CJBDwhP0f16pKv1p/n4F2U+J5z0TOc1zKqBP+
         gzew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533j9TRywA/vgSyAKPZOqC7FwxZRhEjU+xHPKqJU+CaZox5WiiFY
	FEh+pkrR7XIapCLZV/7xDdo=
X-Google-Smtp-Source: ABdhPJz+nhC98dAQA7nRjDZ80OdKmHQ/aJYHGWQZxiBu5NEAErs0aV29GMshrquRTuG/KzhySJaXvQ==
X-Received: by 2002:a05:600c:22c9:: with SMTP id 9mr5589523wmg.44.1622883549943;
        Sat, 05 Jun 2021 01:59:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:19d3:: with SMTP id u19ls3657575wmq.3.canary-gmail;
 Sat, 05 Jun 2021 01:59:09 -0700 (PDT)
X-Received: by 2002:a7b:c157:: with SMTP id z23mr7582433wmi.148.1622883549100;
        Sat, 05 Jun 2021 01:59:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622883549; cv=none;
        d=google.com; s=arc-20160816;
        b=hoVHht/0bDZhlCDneLLWiqe2HlXEsLsTPG1T0bT7VPIRjZJ/kP0hWHljkXm9Qf1rcg
         gFx+seUsF1WiktwSio1PHrufiKFEAdco9AhXWqrDKxkbKptjHmxA1kR8jTeGLoN5WLvi
         UsMhX+kw0zI8vNKhdYfcjTnkuXi/+9Y1vbORnH3xo7d9iMHaCJ15/jGrdWEbs04KMrIf
         VfL7amvFSKJuS3X7h3ON+AU5mYj6ftQ+gYJS90/IcDo+Pe1MY3E1XKo+7O2EEUpT+osn
         Z/LjnLJsqBrbCFPOojRKhEO97/TE/H9FMGjfceF3qHGBRaZjYTR63zEOyQ8RUoMz0cGF
         djww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=ekW5LlcIVF87uicAGK9n9CVIGAKPwXpX4AEOgkyfk0Y=;
        b=FSadXlKGQCLj15rw89SM+rKL+Mtlg6fuHrcTrsjZoW408oNMRjNIsLwPE9xF4UAuH6
         9CRuUiiZfISYiUyJ1TUnIpiZaunJgrRy1PaVhkzInNjYIDl/8ECTchWuKhDj4X53eb25
         hoMxoMwwhj8sBd5Ybt3RfQ9pe5OTDf58srUMGAgCCKMPEwhzdmQo+1nb2PE2GJbJr2Mo
         DxsvfzEURNrfDOH4n1n1RyjUYetEasa/MQvqLSHDgFKCtqfXgL6/yBthq8DyOLYBVj/S
         sowvxCarqqN1mHLz/ipS9L8Xj3fSv0DAVM62zUUbctT5fGn5tx37OF1AihvePx9BVpfm
         y8Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id s13si437161wrr.5.2021.06.05.01.59.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 01:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub3.si.c-s.fr [192.168.12.233])
	by localhost (Postfix) with ESMTP id 4Fxtq05hkBzBBMk;
	Sat,  5 Jun 2021 10:59:08 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QwKEXgcAPbWS; Sat,  5 Jun 2021 10:59:08 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4Fxtq025zyzBBMM;
	Sat,  5 Jun 2021 10:59:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 2989E8B775;
	Sat,  5 Jun 2021 10:59:08 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id 2OID4sTNR9EC; Sat,  5 Jun 2021 10:59:08 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 8D5808B763;
	Sat,  5 Jun 2021 10:59:07 +0200 (CEST)
Subject: Re: arch/powerpc/mm/mem.c:53:12: error: no previous prototype for
 function 'create_section_mapping'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>
References: <202106051109.BB1BLmy7-lkp@intel.com>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <af3be658-1126-c0ba-62ef-40eacf6c3960@csgroup.eu>
Date: Sat, 5 Jun 2021 10:59:06 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <202106051109.BB1BLmy7-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@csgroup.eu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as
 permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
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



Le 05/06/2021 =C3=A0 05:11, kernel test robot a =C3=A9crit=C2=A0:
> Hi Christophe,
>=20
> FYI, the error/warning still remains.
>=20
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t master
> head:   ff6091075a687676d76b3beb24fa77389b387b00
> commit: b26e8f27253a47bff90972b987112fd8396e9b8d powerpc/mem: Move cache =
flushing functions into mm/cacheflush.c
> date:   7 weeks ago

Fixed by=20
https://patchwork.ozlabs.org/project/linuxppc-dev/patch/3e5b63bb3daab54a1eb=
9c20221c2e9528c4db9b3.1622883330.git.christophe.leroy@csgroup.eu/

Christophe


> config: powerpc-randconfig-r005-20210605 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8ec9=
aa236e325fd4629cfeefac2919302e14d61a)
> reproduce (this is a W=3D1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install powerpc cross compiling tool for clang build
>          # apt-get install binutils-powerpc-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux=
.git/commit/?id=3Db26e8f27253a47bff90972b987112fd8396e9b8d
>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel=
/git/torvalds/linux.git
>          git fetch --no-tags linus master
>          git checkout b26e8f27253a47bff90972b987112fd8396e9b8d
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross A=
RCH=3Dpowerpc
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All errors (new ones prefixed by >>):
>=20
>     ^
>     arch/powerpc/include/asm/io.h:537:62: note: expanded from macro '__do=
_outl'
>     #define __do_outl(val, port)    writel(val,(PCI_IO_ADDR)_IO_BASE+port=
);
>                                                ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from arch/powerpc/mm/mem.c:15:
>     In file included from include/linux/memblock.h:14:
>     In file included from arch/powerpc/include/asm/dma.h:22:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:43:1: error: performing pointer ar=
ithmetic on a null pointer has undefined behavior [-Werror,-Wnull-pointer-a=
rithmetic]
>     DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:200:1: note: expanded from here
>     __do_insb
>     ^
>     arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do=
_insb'
>     #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b)=
, (n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from arch/powerpc/mm/mem.c:15:
>     In file included from include/linux/memblock.h:14:
>     In file included from arch/powerpc/include/asm/dma.h:22:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:45:1: error: performing pointer ar=
ithmetic on a null pointer has undefined behavior [-Werror,-Wnull-pointer-a=
rithmetic]
>     DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:202:1: note: expanded from here
>     __do_insw
>     ^
>     arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do=
_insw'
>     #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b)=
, (n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from arch/powerpc/mm/mem.c:15:
>     In file included from include/linux/memblock.h:14:
>     In file included from arch/powerpc/include/asm/dma.h:22:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:47:1: error: performing pointer ar=
ithmetic on a null pointer has undefined behavior [-Werror,-Wnull-pointer-a=
rithmetic]
>     DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:204:1: note: expanded from here
>     __do_insl
>     ^
>     arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do=
_insl'
>     #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b)=
, (n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from arch/powerpc/mm/mem.c:15:
>     In file included from include/linux/memblock.h:14:
>     In file included from arch/powerpc/include/asm/dma.h:22:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:49:1: error: performing pointer ar=
ithmetic on a null pointer has undefined behavior [-Werror,-Wnull-pointer-a=
rithmetic]
>     DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned lon=
g c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:206:1: note: expanded from here
>     __do_outsb
>     ^
>     arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do=
_outsb'
>     #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b)=
,(n))
>                                             ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from arch/powerpc/mm/mem.c:15:
>     In file included from include/linux/memblock.h:14:
>     In file included from arch/powerpc/include/asm/dma.h:22:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:51:1: error: performing pointer ar=
ithmetic on a null pointer has undefined behavior [-Werror,-Wnull-pointer-a=
rithmetic]
>     DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned lon=
g c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:208:1: note: expanded from here
>     __do_outsw
>     ^
>     arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do=
_outsw'
>     #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b)=
,(n))
>                                             ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from arch/powerpc/mm/mem.c:15:
>     In file included from include/linux/memblock.h:14:
>     In file included from arch/powerpc/include/asm/dma.h:22:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:53:1: error: performing pointer ar=
ithmetic on a null pointer has undefined behavior [-Werror,-Wnull-pointer-a=
rithmetic]
>     DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned lon=
g c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:210:1: note: expanded from here
>     __do_outsl
>     ^
>     arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do=
_outsl'
>     #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b)=
,(n))
>                                             ~~~~~~~~~~~~~~~~~~~~~^
>>> arch/powerpc/mm/mem.c:53:12: error: no previous prototype for function =
'create_section_mapping' [-Werror,-Wmissing-prototypes]
>     int __weak create_section_mapping(unsigned long start, unsigned long =
end,
>                ^
>     arch/powerpc/mm/mem.c:53:1: note: declare 'static' if the function is=
 not intended to be used outside of this translation unit
>     int __weak create_section_mapping(unsigned long start, unsigned long =
end,
>     ^
>     static
>     14 errors generated.
>=20
>=20
> vim +/create_section_mapping +53 arch/powerpc/mm/mem.c
>=20
> bc02af93dd2bbd Yasunori Goto          2006-06-27  52
> 4e00c5affdd4b0 Logan Gunthorpe        2020-04-10 @53  int __weak create_s=
ection_mapping(unsigned long start, unsigned long end,
> 4e00c5affdd4b0 Logan Gunthorpe        2020-04-10  54  				  int nid, pgpr=
ot_t prot)
> fecbfabe1dc940 Benjamin Herrenschmidt 2016-07-05  55  {
> fecbfabe1dc940 Benjamin Herrenschmidt 2016-07-05  56  	return -ENODEV;
> fecbfabe1dc940 Benjamin Herrenschmidt 2016-07-05  57  }
> fecbfabe1dc940 Benjamin Herrenschmidt 2016-07-05  58
>=20
> :::::: The code at line 53 was first introduced by commit
> :::::: 4e00c5affdd4b04e6392001716333971932f3d0c powerpc/mm: thread pgprot=
_t through create_section_mapping()
>=20
> :::::: TO: Logan Gunthorpe <logang@deltatee.com>
> :::::: CC: Linus Torvalds <torvalds@linux-foundation.org>
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/af3be658-1126-c0ba-62ef-40eacf6c3960%40csgroup.eu.
