Return-Path: <clang-built-linux+bncBDLKPY4HVQKBBINZQ2DAMGQEHCURQ2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BA53A23AB
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 07:01:22 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id c21-20020a0564021015b029038c3f08ce5asf13622119edu.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Jun 2021 22:01:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623301281; cv=pass;
        d=google.com; s=arc-20160816;
        b=BAQFlHUwY2hxkulHHzaX64yToz0CA4aNFVZliB+21aYaGoqr4AGzl2wk/KcDJXMj3C
         vIFw7wDEbqqo8Tvy4bP3SXbdTqP6DmGP9E5Thar4l71lI91cvNkUpG281EiNPKq9nYQm
         t9Fh6lbU3Oa0Nh+1/E7nodhIjr1MQ3HHn09wWgHqmDwrxkGDqx2Pf6e5rDsR2mgqPjtQ
         VqIBKJQ897AmCzvA/a54igE8lwLn85ibI6KpY3Kzt6AZnlR03ZCBlnisC1YaGTR3eoPs
         ZOcjNADwTlxDdwgtu3tFcLU7T0yLPZaEy2XCNUSTjX1By45SQFGBZ33Hl7R/JXazT6Wl
         iIjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=h+eNB4/bZ3Hkf6CdM/ZvEkR4W8MF7ZDqqzcDyijdTT8=;
        b=egyKjbJrNo7O3uNQAs9iwHBw7oHFI4lHhppTsvraY8TrQATPZesPN6fLszcmbwrcJ8
         DwfuqayMb8OJo6fLEek7vMF/IlaaC1m+2z9i0mAurFERPmqpiky/Ppbq+Kh5bI4Cy6IS
         ICdLoJxOMjIWyHbjaEneeM1QbSX71wjwUkrRNeEDpN8jx6GnBrKlGxDtX2epq1PxhUfL
         UCwcoEp69VDZZOA98PgWcOKp850W7looB+T1LVHaWmtb6m118G1uP3LyXMGItgzCSeHF
         DeBjSo0NFAs6pRbL5XFgelXJG61VZ+2DYSC6HKeCCU42WLcih8vlWGHYO4kCRxux2eH+
         8jvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h+eNB4/bZ3Hkf6CdM/ZvEkR4W8MF7ZDqqzcDyijdTT8=;
        b=Vn4sR5/s2AYXjI9Mmx9xdZSymhMyQ7VcMUgz/FSyycBW6IzhIwGUdCnlTyGI+JKNJw
         ms7kHlHFXGaWjQ/cKp+W9jaqyQHKrxuUEYzWCtBw5FlSOXWSCURlWJE9Iqzi+laMLdDf
         xteVR5JCp42x5ZrasxDMBvpBiHdloEjcZgCWq0Snbq+zgwbpZEBaSiEMnyxSSxG7cg/E
         pEw9XRWFO6/M8qbNvFo9t8GK6Mg1kE+dspu3EGy8jYWJO4nsvUlk6eHu/I7mGdNxGK+1
         8nO2rXp9MHDoOnnQwHLovsYOkk48gVZMCVGGPkV4Hqe1tgUGVOVuIy7Ci0z/SCmgA4VJ
         DtqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h+eNB4/bZ3Hkf6CdM/ZvEkR4W8MF7ZDqqzcDyijdTT8=;
        b=aAaXVGKuf1fwEnqG1E0L+jeWP3p2upoDzM0Tzt/K1J8a3sRBmI8cTAPY1dFuB+89Us
         kafRTKRk7cER/dBpYSHV4nOhqZc3wgq9xcmQ2c75jD1hVY/Popa9fh75jYu5zIIqq9GI
         pfoIgyKaA2xzrscDofYt8SDwtMiISNIUvGs6iIaZElAR2mNaONgr5OkSZKLar88Ha4aG
         /xm/EMNEHrVLoeulTylgEMIEQxBj2sCh9WZrDZtwd+jDK1kbg/w/pvjof2KrbOWJTKW5
         xHdtJBkbqaWL8k/Ui48upm99iCQYhNcLgsjykWrj7njWOwGfBWQN1VJ1GHbJuzGkUPbT
         s6Ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325BeWqaxBBrYSGXBJxAMUK0eHDtvu36H8lG3svFP1FQKilxIsS
	mCkjvomObj6bzUhFYFxTwZ0=
X-Google-Smtp-Source: ABdhPJwhAo2F/5eGvYCjENlDtnAx/E1ut7vGdAp97Oz3blnS6TWXhL/fgUtaxR9ZJyHaCA454BkBJQ==
X-Received: by 2002:aa7:d590:: with SMTP id r16mr2844803edq.355.1623301281749;
        Wed, 09 Jun 2021 22:01:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1c97:: with SMTP id cy23ls1301987edb.0.gmail; Wed,
 09 Jun 2021 22:01:20 -0700 (PDT)
X-Received: by 2002:a50:9d8d:: with SMTP id w13mr2829746ede.94.1623301280796;
        Wed, 09 Jun 2021 22:01:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623301280; cv=none;
        d=google.com; s=arc-20160816;
        b=floF9QqDHC1TZyT5Z8La1vVveH61wqKwxuIoXr7guMN4tbnuvUJT0GXZGouYrxjbJI
         pxBp758w4wxKmXaI9wsXod88iCW1An/Hl1dsmSgKLrXjKzEGgS2KnpSse6U1U2O50DBv
         8P/G51YqX3zJaHvJee+zf06noBRtltHUuuqsEdEERf0bDoc7SdbmEGiChw2QYukqFcqq
         b+h7O4PhojSglXgxWEK+uue/216l4V+CLCliqNux4rhbVhNzgp/avz4uiZqsNRr2zR0g
         97amaJW8RF3wneaR7qMICqLK0GxTN6d9qIs6M4802awUluWABxt/ZORUr/r/O8RB3SaY
         uk5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=LSmltTlR98UcwVz9iQyYuDcb5gAgydugcg5uLTLLXzE=;
        b=AOd+gGddR0NKqMijfXjFzv8MvbIi58e80Frug1E4IQBXel2d1nEoShhJDnR19MyDuH
         gYXGRed06tYSyE2l0PVe13l77oiTAWIbMvhQEdMVypw2KHszo6wTKznnneiN0zLe8y5E
         coh1qEN/5XzGDN+aSw7f3oasodj9i0YyLxmhW/OwDKCVBOcwQrU01jFQho5R3sT/zX3v
         bScX5TTFVepll+JR+uI/lRFOqxJKqebRU4D5O0Z5CT9KJ4X3LJ8YDDusgeoyAcvEww9D
         kvLGHNcRU2vuA2GDCs/WHn/PH1S3gXDXCKf7ma00u9qjJDsWR0PjVJdOVeorlxDcYFIO
         Os7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id cz2si98396edb.5.2021.06.09.22.01.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jun 2021 22:01:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub3.si.c-s.fr [192.168.12.233])
	by localhost (Postfix) with ESMTP id 4G0sJJ35rlzBFFy;
	Thu, 10 Jun 2021 07:01:20 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R33AoF1KkJoA; Thu, 10 Jun 2021 07:01:20 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4G0sJJ25b5zBFFj;
	Thu, 10 Jun 2021 07:01:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 9C6088B7EA;
	Thu, 10 Jun 2021 07:01:19 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id 4cUB7oa0Pkzp; Thu, 10 Jun 2021 07:01:19 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id C6D7F8B7E6;
	Thu, 10 Jun 2021 07:01:16 +0200 (CEST)
Subject: Re: drivers/crypto/talitos.c:3328:12: warning: stack frame size of
 1040 bytes in function 'talitos_probe'
To: kernel test robot <lkp@intel.com>, Nathan Chancellor <nathan@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>
References: <202106100743.JgPkQBD1-lkp@intel.com>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <29dbb338-f42b-8665-a58f-5242df1b12f9@csgroup.eu>
Date: Thu, 10 Jun 2021 07:01:17 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <202106100743.JgPkQBD1-lkp@intel.com>
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



Le 10/06/2021 =C3=A0 01:50, kernel test robot a =C3=A9crit=C2=A0:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t master
> head:   368094df48e680fa51cedb68537408cfa64b788e
> commit: 43a942d27eaaf33bca560121cbe42f3637e92880 crypto: talitos - Fix ct=
r(aes) on SEC1
> date:   4 months ago
> config: powerpc-randconfig-r031-20210610 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d201=
2d965d60c3258b3a69d024491698f8aec386)

That's likely a CLANG issue.

With the same commit and the same .config, talitos_probe() has a frame of 1=
12 bytes when built with=20
GCC 11

Christophe


> reproduce (this is a W=3D1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install powerpc cross compiling tool for clang build
>          # apt-get install binutils-powerpc-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux=
.git/commit/?id=3D43a942d27eaaf33bca560121cbe42f3637e92880
>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel=
/git/torvalds/linux.git
>          git fetch --no-tags linus master
>          git checkout 43a942d27eaaf33bca560121cbe42f3637e92880
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross A=
RCH=3Dpowerpc
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
>     __do_insb
>     ^
>     arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do=
_insb'
>     #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b)=
, (n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from drivers/crypto/talitos.c:19:
>     In file included from include/linux/interrupt.h:11:
>     In file included from include/linux/hardirq.h:10:
>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>     In file included from include/linux/irq.h:20:
>     In file included from include/linux/io.h:13:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer =
arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithme=
tic]
>     DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:225:1: note: expanded from here
>     __do_insw
>     ^
>     arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do=
_insw'
>     #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b)=
, (n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from drivers/crypto/talitos.c:19:
>     In file included from include/linux/interrupt.h:11:
>     In file included from include/linux/hardirq.h:10:
>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>     In file included from include/linux/irq.h:20:
>     In file included from include/linux/io.h:13:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer =
arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithme=
tic]
>     DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:227:1: note: expanded from here
>     __do_insl
>     ^
>     arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do=
_insl'
>     #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b)=
, (n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from drivers/crypto/talitos.c:19:
>     In file included from include/linux/interrupt.h:11:
>     In file included from include/linux/hardirq.h:10:
>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>     In file included from include/linux/irq.h:20:
>     In file included from include/linux/io.h:13:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer =
arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithme=
tic]
>     DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned lon=
g c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:229:1: note: expanded from here
>     __do_outsb
>     ^
>     arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do=
_outsb'
>     #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b)=
,(n))
>                                             ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from drivers/crypto/talitos.c:19:
>     In file included from include/linux/interrupt.h:11:
>     In file included from include/linux/hardirq.h:10:
>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>     In file included from include/linux/irq.h:20:
>     In file included from include/linux/io.h:13:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer =
arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithme=
tic]
>     DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned lon=
g c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:231:1: note: expanded from here
>     __do_outsw
>     ^
>     arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do=
_outsw'
>     #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b)=
,(n))
>                                             ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from drivers/crypto/talitos.c:19:
>     In file included from include/linux/interrupt.h:11:
>     In file included from include/linux/hardirq.h:10:
>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>     In file included from include/linux/irq.h:20:
>     In file included from include/linux/io.h:13:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer =
arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithme=
tic]
>     DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned lon=
g c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:233:1: note: expanded from here
>     __do_outsl
>     ^
>     arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do=
_outsl'
>     #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b)=
,(n))
>                                             ~~~~~~~~~~~~~~~~~~~~~^
>>> drivers/crypto/talitos.c:3328:12: warning: stack frame size of 1040 byt=
es in function 'talitos_probe' [-Wframe-larger-than=3D]
>     static int talitos_probe(struct platform_device *ofdev)
>                ^
>     8 warnings generated.
>=20
>=20
> vim +/talitos_probe +3328 drivers/crypto/talitos.c
>=20
> c3e337f88a5b37 Kim Phillips     2011-11-21  3327
> 1c48a5c93da631 Grant Likely     2011-02-17 @3328  static int talitos_prob=
e(struct platform_device *ofdev)
> 9c4a79653b35ef Kim Phillips     2008-06-23  3329  {
> 9c4a79653b35ef Kim Phillips     2008-06-23  3330  	struct device *dev =3D=
 &ofdev->dev;
> 61c7a080a5a061 Grant Likely     2010-04-13  3331  	struct device_node *np=
 =3D ofdev->dev.of_node;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3332  	struct talitos_private=
 *priv;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3333  	int i, err;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3334  	int stride;
> fd5ea7f011932d LEROY Christophe 2017-10-06  3335  	struct resource *res;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3336
> 24b92ff276e8f6 LEROY Christophe 2017-10-06  3337  	priv =3D devm_kzalloc(=
dev, sizeof(struct talitos_private), GFP_KERNEL);
> 9c4a79653b35ef Kim Phillips     2008-06-23  3338  	if (!priv)
> 9c4a79653b35ef Kim Phillips     2008-06-23  3339  		return -ENOMEM;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3340
> f3de9cb1ca6ce3 Kevin Hao        2014-01-28  3341  	INIT_LIST_HEAD(&priv->=
alg_list);
> f3de9cb1ca6ce3 Kevin Hao        2014-01-28  3342
> 9c4a79653b35ef Kim Phillips     2008-06-23  3343  	dev_set_drvdata(dev, p=
riv);
> 9c4a79653b35ef Kim Phillips     2008-06-23  3344
> 9c4a79653b35ef Kim Phillips     2008-06-23  3345  	priv->ofdev =3D ofdev;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3346
> 511d63cb193292 Horia Geanta     2012-03-30  3347  	spin_lock_init(&priv->=
reg_lock);
> 511d63cb193292 Horia Geanta     2012-03-30  3348
> fd5ea7f011932d LEROY Christophe 2017-10-06  3349  	res =3D platform_get_r=
esource(ofdev, IORESOURCE_MEM, 0);
> fd5ea7f011932d LEROY Christophe 2017-10-06  3350  	if (!res)
> fd5ea7f011932d LEROY Christophe 2017-10-06  3351  		return -ENXIO;
> fd5ea7f011932d LEROY Christophe 2017-10-06  3352  	priv->reg =3D devm_ior=
emap(dev, res->start, resource_size(res));
> 9c4a79653b35ef Kim Phillips     2008-06-23  3353  	if (!priv->reg) {
> 9c4a79653b35ef Kim Phillips     2008-06-23  3354  		dev_err(dev, "failed =
to of_iomap\n");
> 9c4a79653b35ef Kim Phillips     2008-06-23  3355  		err =3D -ENOMEM;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3356  		goto err_out;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3357  	}
> 9c4a79653b35ef Kim Phillips     2008-06-23  3358
> 9c4a79653b35ef Kim Phillips     2008-06-23  3359  	/* get SEC version cap=
abilities from device tree */
> fa14c6cfcecb00 LEROY Christophe 2017-10-06  3360  	of_property_read_u32(n=
p, "fsl,num-channels", &priv->num_channels);
> fa14c6cfcecb00 LEROY Christophe 2017-10-06  3361  	of_property_read_u32(n=
p, "fsl,channel-fifo-len", &priv->chfifo_len);
> fa14c6cfcecb00 LEROY Christophe 2017-10-06  3362  	of_property_read_u32(n=
p, "fsl,exec-units-mask", &priv->exec_units);
> fa14c6cfcecb00 LEROY Christophe 2017-10-06  3363  	of_property_read_u32(n=
p, "fsl,descriptor-types-mask",
> fa14c6cfcecb00 LEROY Christophe 2017-10-06  3364  			     &priv->desc_typ=
es);
> 9c4a79653b35ef Kim Phillips     2008-06-23  3365
> 9c4a79653b35ef Kim Phillips     2008-06-23  3366  	if (!is_power_of_2(pri=
v->num_channels) || !priv->chfifo_len ||
> 9c4a79653b35ef Kim Phillips     2008-06-23  3367  	    !priv->exec_units =
|| !priv->desc_types) {
> 9c4a79653b35ef Kim Phillips     2008-06-23  3368  		dev_err(dev, "invalid=
 property data in device tree node\n");
> 9c4a79653b35ef Kim Phillips     2008-06-23  3369  		err =3D -EINVAL;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3370  		goto err_out;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3371  	}
> 9c4a79653b35ef Kim Phillips     2008-06-23  3372
> f3c85bc1bc72b4 Lee Nipper       2008-07-30  3373  	if (of_device_is_compa=
tible(np, "fsl,sec3.0"))
> f3c85bc1bc72b4 Lee Nipper       2008-07-30  3374  		priv->features |=3D T=
ALITOS_FTR_SRC_LINK_TBL_LEN_INCLUDES_EXTENT;
> f3c85bc1bc72b4 Lee Nipper       2008-07-30  3375
> fe5720e2b7c1e8 Kim Phillips     2008-10-12  3376  	if (of_device_is_compa=
tible(np, "fsl,sec2.1"))
> 60f208d7836216 Kim Phillips     2010-05-19  3377  		priv->features |=3D T=
ALITOS_FTR_HW_AUTH_CHECK |
> 79b3a418e09024 Lee Nipper       2011-11-21  3378  				  TALITOS_FTR_SHA22=
4_HWINIT |
> 79b3a418e09024 Lee Nipper       2011-11-21  3379  				  TALITOS_FTR_HMAC_=
OK;
> fe5720e2b7c1e8 Kim Phillips     2008-10-12  3380
> 21590888490ce2 LEROY Christophe 2015-04-17  3381  	if (of_device_is_compa=
tible(np, "fsl,sec1.0"))
> 21590888490ce2 LEROY Christophe 2015-04-17  3382  		priv->features |=3D T=
ALITOS_FTR_SEC1;
> 21590888490ce2 LEROY Christophe 2015-04-17  3383
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3384  	if (of_device_is_compa=
tible(np, "fsl,sec1.2")) {
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3385  		priv->reg_deu =3D pri=
v->reg + TALITOS12_DEU;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3386  		priv->reg_aesu =3D pr=
iv->reg + TALITOS12_AESU;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3387  		priv->reg_mdeu =3D pr=
iv->reg + TALITOS12_MDEU;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3388  		stride =3D TALITOS1_C=
H_STRIDE;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3389  	} else if (of_device_i=
s_compatible(np, "fsl,sec1.0")) {
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3390  		priv->reg_deu =3D pri=
v->reg + TALITOS10_DEU;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3391  		priv->reg_aesu =3D pr=
iv->reg + TALITOS10_AESU;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3392  		priv->reg_mdeu =3D pr=
iv->reg + TALITOS10_MDEU;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3393  		priv->reg_afeu =3D pr=
iv->reg + TALITOS10_AFEU;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3394  		priv->reg_rngu =3D pr=
iv->reg + TALITOS10_RNGU;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3395  		priv->reg_pkeu =3D pr=
iv->reg + TALITOS10_PKEU;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3396  		stride =3D TALITOS1_C=
H_STRIDE;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3397  	} else {
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3398  		priv->reg_deu =3D pri=
v->reg + TALITOS2_DEU;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3399  		priv->reg_aesu =3D pr=
iv->reg + TALITOS2_AESU;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3400  		priv->reg_mdeu =3D pr=
iv->reg + TALITOS2_MDEU;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3401  		priv->reg_afeu =3D pr=
iv->reg + TALITOS2_AFEU;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3402  		priv->reg_rngu =3D pr=
iv->reg + TALITOS2_RNGU;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3403  		priv->reg_pkeu =3D pr=
iv->reg + TALITOS2_PKEU;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3404  		priv->reg_keu =3D pri=
v->reg + TALITOS2_KEU;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3405  		priv->reg_crcu =3D pr=
iv->reg + TALITOS2_CRCU;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3406  		stride =3D TALITOS2_C=
H_STRIDE;
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3407  	}
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3408
> dd3c0987f5426d LEROY Christophe 2015-04-17  3409  	err =3D talitos_probe_=
irq(ofdev);
> dd3c0987f5426d LEROY Christophe 2015-04-17  3410  	if (err)
> dd3c0987f5426d LEROY Christophe 2015-04-17  3411  		goto err_out;
> dd3c0987f5426d LEROY Christophe 2015-04-17  3412
> c8c74647b2945e Christophe Leroy 2019-06-17  3413  	if (has_ftr_sec1(priv)=
) {
> 9c02e2852fcabf LEROY Christophe 2017-10-06  3414  		if (priv->num_channel=
s =3D=3D 1)
> 9c02e2852fcabf LEROY Christophe 2017-10-06  3415  			tasklet_init(&priv->=
done_task[0], talitos1_done_ch0,
> dd3c0987f5426d LEROY Christophe 2015-04-17  3416  				     (unsigned long=
)dev);
> 9c02e2852fcabf LEROY Christophe 2017-10-06  3417  		else
> 9c02e2852fcabf LEROY Christophe 2017-10-06  3418  			tasklet_init(&priv->=
done_task[0], talitos1_done_4ch,
> dd3c0987f5426d LEROY Christophe 2015-04-17  3419  				     (unsigned long=
)dev);
> dd3c0987f5426d LEROY Christophe 2015-04-17  3420  	} else {
> 9c02e2852fcabf LEROY Christophe 2017-10-06  3421  		if (priv->irq[1]) {
> dd3c0987f5426d LEROY Christophe 2015-04-17  3422  			tasklet_init(&priv->=
done_task[0], talitos2_done_ch0_2,
> dd3c0987f5426d LEROY Christophe 2015-04-17  3423  				     (unsigned long=
)dev);
> dd3c0987f5426d LEROY Christophe 2015-04-17  3424  			tasklet_init(&priv->=
done_task[1], talitos2_done_ch1_3,
> dd3c0987f5426d LEROY Christophe 2015-04-17  3425  				     (unsigned long=
)dev);
> 9c02e2852fcabf LEROY Christophe 2017-10-06  3426  		} else if (priv->num_=
channels =3D=3D 1) {
> 9c02e2852fcabf LEROY Christophe 2017-10-06  3427  			tasklet_init(&priv->=
done_task[0], talitos2_done_ch0,
> 9c02e2852fcabf LEROY Christophe 2017-10-06  3428  				     (unsigned long=
)dev);
> 9c02e2852fcabf LEROY Christophe 2017-10-06  3429  		} else {
> 9c02e2852fcabf LEROY Christophe 2017-10-06  3430  			tasklet_init(&priv->=
done_task[0], talitos2_done_4ch,
> 9c02e2852fcabf LEROY Christophe 2017-10-06  3431  				     (unsigned long=
)dev);
> dd3c0987f5426d LEROY Christophe 2015-04-17  3432  		}
> dd3c0987f5426d LEROY Christophe 2015-04-17  3433  	}
> dd3c0987f5426d LEROY Christophe 2015-04-17  3434
> a86854d0c599b3 Kees Cook        2018-06-12  3435  	priv->chan =3D devm_kc=
alloc(dev,
> a86854d0c599b3 Kees Cook        2018-06-12  3436  				  priv->num_channel=
s,
> a86854d0c599b3 Kees Cook        2018-06-12  3437  				  sizeof(struct tal=
itos_channel),
> a86854d0c599b3 Kees Cook        2018-06-12  3438  				  GFP_KERNEL);
> 4b992628812137 Kim Phillips     2009-08-13  3439  	if (!priv->chan) {
> 4b992628812137 Kim Phillips     2009-08-13  3440  		dev_err(dev, "failed =
to allocate channel management space\n");
> 9c4a79653b35ef Kim Phillips     2008-06-23  3441  		err =3D -ENOMEM;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3442  		goto err_out;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3443  	}
> 9c4a79653b35ef Kim Phillips     2008-06-23  3444
> f641ddddc3ad13 Martin Hicks     2015-03-03  3445  	priv->fifo_len =3D rou=
ndup_pow_of_two(priv->chfifo_len);
> f641ddddc3ad13 Martin Hicks     2015-03-03  3446
> c3e337f88a5b37 Kim Phillips     2011-11-21  3447  	for (i =3D 0; i < priv=
->num_channels; i++) {
> 5fa7fa147b1572 LEROY Christophe 2015-04-17  3448  		priv->chan[i].reg =3D=
 priv->reg + stride * (i + 1);
> 2cdba3cf6ffc1f Kim Phillips     2011-12-12  3449  		if (!priv->irq[1] || =
!(i & 1))
> c3e337f88a5b37 Kim Phillips     2011-11-21  3450  			priv->chan[i].reg +=
=3D TALITOS_CH_BASE_OFFSET;
> ad42d5fc853832 Kim Phillips     2011-11-21  3451
> 4b992628812137 Kim Phillips     2009-08-13  3452  		spin_lock_init(&priv-=
>chan[i].head_lock);
> 4b992628812137 Kim Phillips     2009-08-13  3453  		spin_lock_init(&priv-=
>chan[i].tail_lock);
> 9c4a79653b35ef Kim Phillips     2008-06-23  3454
> a86854d0c599b3 Kees Cook        2018-06-12  3455  		priv->chan[i].fifo =
=3D devm_kcalloc(dev,
> a86854d0c599b3 Kees Cook        2018-06-12  3456  						priv->fifo_len,
> a86854d0c599b3 Kees Cook        2018-06-12  3457  						sizeof(struct tal=
itos_request),
> a86854d0c599b3 Kees Cook        2018-06-12  3458  						GFP_KERNEL);
> 4b992628812137 Kim Phillips     2009-08-13  3459  		if (!priv->chan[i].fi=
fo) {
> 9c4a79653b35ef Kim Phillips     2008-06-23  3460  			dev_err(dev, "failed=
 to allocate request fifo %d\n", i);
> 9c4a79653b35ef Kim Phillips     2008-06-23  3461  			err =3D -ENOMEM;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3462  			goto err_out;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3463  		}
> 9c4a79653b35ef Kim Phillips     2008-06-23  3464
> 4b992628812137 Kim Phillips     2009-08-13  3465  		atomic_set(&priv->cha=
n[i].submit_count,
> 4b992628812137 Kim Phillips     2009-08-13  3466  			   -(priv->chfifo_le=
n - 1));
> f641ddddc3ad13 Martin Hicks     2015-03-03  3467  	}
> 9c4a79653b35ef Kim Phillips     2008-06-23  3468
> 81eb024c7e63f5 Kim Phillips     2009-08-13  3469  	dma_set_mask(dev, DMA_=
BIT_MASK(36));
> 81eb024c7e63f5 Kim Phillips     2009-08-13  3470
> 9c4a79653b35ef Kim Phillips     2008-06-23  3471  	/* reset and initializ=
e the h/w */
> 9c4a79653b35ef Kim Phillips     2008-06-23  3472  	err =3D init_device(de=
v);
> 9c4a79653b35ef Kim Phillips     2008-06-23  3473  	if (err) {
> 9c4a79653b35ef Kim Phillips     2008-06-23  3474  		dev_err(dev, "failed =
to initialize device\n");
> 9c4a79653b35ef Kim Phillips     2008-06-23  3475  		goto err_out;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3476  	}
> 9c4a79653b35ef Kim Phillips     2008-06-23  3477
> 9c4a79653b35ef Kim Phillips     2008-06-23  3478  	/* register the RNG, i=
f available */
> 9c4a79653b35ef Kim Phillips     2008-06-23  3479  	if (hw_supports(dev, D=
ESC_HDR_SEL0_RNG)) {
> 9c4a79653b35ef Kim Phillips     2008-06-23  3480  		err =3D talitos_regis=
ter_rng(dev);
> 9c4a79653b35ef Kim Phillips     2008-06-23  3481  		if (err) {
> 9c4a79653b35ef Kim Phillips     2008-06-23  3482  			dev_err(dev, "failed=
 to register hwrng: %d\n", err);
> 9c4a79653b35ef Kim Phillips     2008-06-23  3483  			goto err_out;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3484  		} else
> 9c4a79653b35ef Kim Phillips     2008-06-23  3485  			dev_info(dev, "hwrng=
\n");
> 9c4a79653b35ef Kim Phillips     2008-06-23  3486  	}
> 9c4a79653b35ef Kim Phillips     2008-06-23  3487
> 9c4a79653b35ef Kim Phillips     2008-06-23  3488  	/* register crypto alg=
orithms the device supports */
> 9c4a79653b35ef Kim Phillips     2008-06-23  3489  	for (i =3D 0; i < ARRA=
Y_SIZE(driver_algs); i++) {
> 9c4a79653b35ef Kim Phillips     2008-06-23  3490  		if (hw_supports(dev, =
driver_algs[i].desc_hdr_template)) {
> 9c4a79653b35ef Kim Phillips     2008-06-23  3491  			struct talitos_crypt=
o_alg *t_alg;
> aeb4c132f33d21 Herbert Xu       2015-07-30  3492  			struct crypto_alg *a=
lg =3D NULL;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3493
> 9c4a79653b35ef Kim Phillips     2008-06-23  3494  			t_alg =3D talitos_al=
g_alloc(dev, &driver_algs[i]);
> 9c4a79653b35ef Kim Phillips     2008-06-23  3495  			if (IS_ERR(t_alg)) {
> 9c4a79653b35ef Kim Phillips     2008-06-23  3496  				err =3D PTR_ERR(t_a=
lg);
> 0b2730d8d8b38e Kim Phillips     2011-12-12  3497  				if (err =3D=3D -ENO=
TSUPP)
> 79b3a418e09024 Lee Nipper       2011-11-21  3498  					continue;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3499  				goto err_out;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3500  			}
> 9c4a79653b35ef Kim Phillips     2008-06-23  3501
> acbf7c627fb59d Lee Nipper       2010-05-19  3502  			switch (t_alg->algt.=
type) {
> 373960d794d2b0 Ard Biesheuvel   2019-11-09  3503  			case CRYPTO_ALG_TYPE=
_SKCIPHER:
> 373960d794d2b0 Ard Biesheuvel   2019-11-09  3504  				err =3D crypto_regi=
ster_skcipher(
> 373960d794d2b0 Ard Biesheuvel   2019-11-09  3505  						&t_alg->algt.alg.=
skcipher);
> 373960d794d2b0 Ard Biesheuvel   2019-11-09  3506  				alg =3D &t_alg->alg=
t.alg.skcipher.base;
> acbf7c627fb59d Lee Nipper       2010-05-19  3507  				break;
> aeb4c132f33d21 Herbert Xu       2015-07-30  3508
> aeb4c132f33d21 Herbert Xu       2015-07-30  3509  			case CRYPTO_ALG_TYPE=
_AEAD:
> aeb4c132f33d21 Herbert Xu       2015-07-30  3510  				err =3D crypto_regi=
ster_aead(
> aeb4c132f33d21 Herbert Xu       2015-07-30  3511  					&t_alg->algt.alg.a=
ead);
> aeb4c132f33d21 Herbert Xu       2015-07-30  3512  				alg =3D &t_alg->alg=
t.alg.aead.base;
> aeb4c132f33d21 Herbert Xu       2015-07-30  3513  				break;
> aeb4c132f33d21 Herbert Xu       2015-07-30  3514
> acbf7c627fb59d Lee Nipper       2010-05-19  3515  			case CRYPTO_ALG_TYPE=
_AHASH:
> acbf7c627fb59d Lee Nipper       2010-05-19  3516  				err =3D crypto_regi=
ster_ahash(
> acbf7c627fb59d Lee Nipper       2010-05-19  3517  						&t_alg->algt.alg.=
hash);
> aeb4c132f33d21 Herbert Xu       2015-07-30  3518  				alg =3D &t_alg->alg=
t.alg.hash.halg.base;
> acbf7c627fb59d Lee Nipper       2010-05-19  3519  				break;
> acbf7c627fb59d Lee Nipper       2010-05-19  3520  			}
> 9c4a79653b35ef Kim Phillips     2008-06-23  3521  			if (err) {
> 9c4a79653b35ef Kim Phillips     2008-06-23  3522  				dev_err(dev, "%s al=
g registration failed\n",
> aeb4c132f33d21 Herbert Xu       2015-07-30  3523  					alg->cra_driver_na=
me);
> 24b92ff276e8f6 LEROY Christophe 2017-10-06  3524  				devm_kfree(dev, t_a=
lg);
> 991155bacb91c9 Horia Geanta     2013-03-20  3525  			} else
> 9c4a79653b35ef Kim Phillips     2008-06-23  3526  				list_add_tail(&t_al=
g->entry, &priv->alg_list);
> 9c4a79653b35ef Kim Phillips     2008-06-23  3527  		}
> 9c4a79653b35ef Kim Phillips     2008-06-23  3528  	}
> 5b859b6ebb18b3 Kim Phillips     2011-11-21  3529  	if (!list_empty(&priv-=
>alg_list))
> 5b859b6ebb18b3 Kim Phillips     2011-11-21  3530  		dev_info(dev, "%s alg=
orithms registered in /proc/crypto\n",
> 5b859b6ebb18b3 Kim Phillips     2011-11-21  3531  			 (char *)of_get_prop=
erty(np, "compatible", NULL));
> 9c4a79653b35ef Kim Phillips     2008-06-23  3532
> 9c4a79653b35ef Kim Phillips     2008-06-23  3533  	return 0;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3534
> 9c4a79653b35ef Kim Phillips     2008-06-23  3535  err_out:
> 9c4a79653b35ef Kim Phillips     2008-06-23  3536  	talitos_remove(ofdev);
> 9c4a79653b35ef Kim Phillips     2008-06-23  3537
> 9c4a79653b35ef Kim Phillips     2008-06-23  3538  	return err;
> 9c4a79653b35ef Kim Phillips     2008-06-23  3539  }
> 9c4a79653b35ef Kim Phillips     2008-06-23  3540
>=20
> :::::: The code at line 3328 was first introduced by commit
> :::::: 1c48a5c93da63132b92c4bbcd18e690c51539df6 dt: Eliminate of_platform=
_{,un}register_driver
>=20
> :::::: TO: Grant Likely <grant.likely@secretlab.ca>
> :::::: CC: Grant Likely <grant.likely@secretlab.ca>
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
clang-built-linux/29dbb338-f42b-8665-a58f-5242df1b12f9%40csgroup.eu.
