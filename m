Return-Path: <clang-built-linux+bncBDF4B3EXYABRBU7OUKCQMGQEQYMM4NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC6538D444
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 09:48:35 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id h18-20020a05640250d2b029038cc3938914sf12606049edb.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 00:48:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621669715; cv=pass;
        d=google.com; s=arc-20160816;
        b=F8+Vh8UJaQUKbcR7WV6uLx+/l7V+C8lJUWhR6Tg85lAs55Hq+xPBd2UXuIg6qP5Ekw
         Hosw7rgoTw84s5ic+eGIG4uns0yRCBYzsVPpZvobjXqTxff9JGzWU89/7QBA2+hLTKs5
         wXIUMeeconepfcHmaIY8FiTNg+kM4Rf3zu6eUQ1TIumfUhAmBZvPcBWhc0A8iSE/tyZL
         v5oYDE8h+0eQHoUfxRncNJREq99oWTHJZFCxOYD+/dcLfEUhN5yZTzayeZxdQ8SsYUEs
         hrg05PxfBEoR/vKCr+07NyV3w1kgFBVFH2n4DIj/bkU2YzWN719EcrhWCjsVxCv3odfW
         dfKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=xmS+Nnml2D5mRuLQPaIAjRXPk23xYUbJeWrG2BOSI1w=;
        b=YwohZAmxgCr0Nc93cFxffk1zRT3fYzQ4wRmcW0HGcm8wjm1PgxfddzeiB5cBMi7ixc
         GGg/9wI+zxPMGKLP5hKBH/1zhACqFM4M4rTCQZdRpM29tlpp33Yv7TX2Iz5pG/EzF+b1
         SRfPSWf/aAIO2GnqgjQEUB9quIEF9huvbD+9/xUTG+9jRA72t8L4fTfXcqYUmw/jttZq
         ENINjjcY591jADcP9Ty22Ncxu2WC864HerjqFxlbBTILJnQCjYdfvLcv8UlzseCRH5Y8
         DwE7vDom0U2I4IgQyjW1bwOlInFA5wTv/yEWME0ZkXespCncRMHAxLWFE3+l+saQyzBx
         s9bA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SHK7mIjE;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xmS+Nnml2D5mRuLQPaIAjRXPk23xYUbJeWrG2BOSI1w=;
        b=XOYyFTDJLdvbIkxjSab+/G7oJ55wWQfi88VNNkdITL4uAoTm2p4AL0uaWIKFeEx4Xt
         s7v4nLjoXfZLgpf740IYKNFyB+uEjgv75Hnab7azuMj7jZbEmMiXKOVzT84RWp/g5JuS
         AbVOspUQpYXm3vHzoDLqXj8S6tFsnxYnAbdAo91tY7Tn8ARy1TPrjGsbWOtsqNLdf7JR
         SCsQXJZJZCv/9UPjd1gRaYaw15vskNHYygw813T7k0lLjnBfd6tjLqjjO+7nmnO5vDbX
         DO+ClzTz/we2Zg4DQC4Sz+7XYrdFpIOg221V3lUO2G4gsGTReWqcPDzdhXYkDLEVY50v
         k2PQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xmS+Nnml2D5mRuLQPaIAjRXPk23xYUbJeWrG2BOSI1w=;
        b=i59bQmXhoGbb17ln3TfSfkFOqvDdrEx7ypprQ/23TU2tbwHxc3gtOVvTusecV7HQMo
         fIlgNyjgCKiX+sNI5FIwq9shy9TON24D2TqQux8KbFPceuQ11R898hvZAgEgSJZsXRFX
         pg9szHQmr7FuzB6q1m2rZGB06J2ZRyBfqEBTRAUMP/w1p+4juC5SIr/Bee72n9cXjGgm
         11YJdJAUjtsrT+N6CQQV3138LZ6cJeZTz6dygF3xIPjNl9qTKarw/hkpOpo8IstqWp5P
         mZooa4DmmXtwINMUhBwRZdTgHsVFJuPo4QdGnKMTYN2bMee9qSLNPX/n2dVivhBu0b2l
         dfyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xmS+Nnml2D5mRuLQPaIAjRXPk23xYUbJeWrG2BOSI1w=;
        b=s9U+LzYWucCnlSf6qa3zc+na+y/MWD2j3I95NUsSUh9x1e7TU25HiPuKEvfyJs3h04
         sj6bxhTlADBb6kbzIIykmcdDhDu+rM++nE/h033mErJRF5E2aJt5fWMKXLu6V0ayQX95
         nW0mNgBYjl4PaoSPe2O9UikW1sPOkZDG9kGs3S9zJzVtacIgvc5X4wO/7QTVSRHFAKO3
         Izja1JmCnRnlMBMhgros6+IIfHrhHMxCtGtEsvUt7R1duGpCLHbSRgkinmrbrWMO+yut
         d7RW2OkyzdQ0cydnUwsEHWbDeOVvgUJeHl15KCpWqtTbRfziRWWbY+fvr4Iv9WxLfQXb
         HHtg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bywuZbjMpSg1XDk1sMVcrZbG/SRqo/Xe88lFRlLdstXve508G
	RyvvX/LG29tdvLUxtR5ICJw=
X-Google-Smtp-Source: ABdhPJwVnGC5KpwwL7dLG6YlqDX0eF0R7+kv/lORCvUTtg1UTWOwjzw2rL+yxDL9rHERT2DdPpqO5Q==
X-Received: by 2002:a17:907:c04:: with SMTP id ga4mr2144990ejc.83.1621669715201;
        Sat, 22 May 2021 00:48:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:e046:: with SMTP id g6ls2038999edl.3.gmail; Sat, 22 May
 2021 00:48:34 -0700 (PDT)
X-Received: by 2002:a05:6402:2317:: with SMTP id l23mr15304231eda.265.1621669714364;
        Sat, 22 May 2021 00:48:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621669714; cv=none;
        d=google.com; s=arc-20160816;
        b=sKiY7P7hGl+bgFmil4aeoRmSdA8++1aCUVKXG7lIHPSGQdhFBp25AkxVGws/UCFDbB
         Gdize2tFgTn2uXZCdXTET+/crrhEEvQAg3BDhvpoqgr883zvcJzpShV1ayUktddm9NRm
         +NCJrOY82DzO8HUwMAbkVAaeyRbT7vnriqH46r/9Q0Zmo+6Yss96mM7exPlKP6B54L8O
         D11SUgMqHDvZqYaMFVjzH0CJlkmVkK4NUWzFLXtSw6JLEEUynnCteL/y+kCYtfQBCVS4
         ZRrNG646sW8f5Om+Y0FnHJIJh4bkc98o9RfCimNFlIJBjuorDvwE0sakVQNjL4B/BAtt
         2Fjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=f6rySvgRlBN/T31lzxGz/WWM84gEGemugwmSK+NtGuk=;
        b=pcq0hH3VkloWDbVf9e8MG+2ZWXaepY2C6Eco9iQ0D8gH2t3EelfCJHEWbNJNzFfXzB
         Po0/iyfs2bGOomSkhNnGFxSCPe/F+riIpZjLxD56NTbAZAmqKHuX/C317iAT7SDjDo19
         77rdxaRtgFGHtg7rXq9nNijbqNVzuGnzE0KCPrfi5/SyQQziw6aRLLah2M0ZY/4gPzJe
         jy29kJcrYRtZt78slVx++RrSsoMFN8An7Wxj3f+rFIfE1Pl3edWb5M5R2giw/w+tzfS5
         cDTBKZ3MtuTSmKBVwRkrl/wyCpJ1vMoIDorUw818j5SSdh5tRFlWju9UXS9aQBv15uW/
         7kMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SHK7mIjE;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com. [2a00:1450:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id b25si426184edr.3.2021.05.22.00.48.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 May 2021 00:48:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) client-ip=2a00:1450:4864:20::62d;
Received: by mail-ej1-x62d.google.com with SMTP id i7so15905617ejc.5
        for <clang-built-linux@googlegroups.com>; Sat, 22 May 2021 00:48:34 -0700 (PDT)
X-Received: by 2002:a17:907:3f1d:: with SMTP id hq29mr9163475ejc.163.1621669714210;
        Sat, 22 May 2021 00:48:34 -0700 (PDT)
Received: from agape.jhs ([5.171.81.18])
        by smtp.gmail.com with ESMTPSA id f7sm6273997edd.5.2021.05.22.00.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 May 2021 00:48:33 -0700 (PDT)
Date: Sat, 22 May 2021 09:48:31 +0200
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: kernel test robot <lkp@intel.com>, devel@driverdev.osuosl.org,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [staging:staging-next 201/268]
 drivers/staging/rtl8723bs/core/rtw_security.c:89:6: warning: stack frame
 size of 1120 bytes in function 'rtw_wep_encrypt'
Message-ID: <20210522074830.GA1523@agape.jhs>
References: <202105201711.QuzeTqRK-lkp@intel.com>
 <20210521142656.GA1409@agape.jhs>
 <YKgHy7ZNNxv/KMl8@archlinux-ax161>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <YKgHy7ZNNxv/KMl8@archlinux-ax161>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: fabioaiuto83@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SHK7mIjE;       spf=pass
 (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::62d
 as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hello Nathan,

On Fri, May 21, 2021 at 12:19:39PM -0700, Nathan Chancellor wrote:
> Hi Fabio,
>=20
> On Fri, May 21, 2021 at 04:26:57PM +0200, Fabio Aiuto wrote:
> > Hi robot,
> >=20
> > On Thu, May 20, 2021 at 05:03:14PM +0800, kernel test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/stagin=
g.git staging-next
> > > head:   b9f38e913a926b455e5048a95f53a993b515509f
> > > commit: 1b11e893eda0907fc9b28696271e2d9c4337e42d [201/268] staging: r=
tl8723bs: replace private arc4 encryption with in-kernel one
> > > config: powerpc64-randconfig-r011-20210520 (attached as .config)
> > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project =
bf9ef3efaa99c02e7bfc4c57207301b8de39a278)
> > > reproduce (this is a W=3D1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master=
/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install powerpc64 cross compiling tool for clang build
> > >         # apt-get install binutils-powerpc64-linux-gnu
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/stag=
ing.git/commit/?id=3D1b11e893eda0907fc9b28696271e2d9c4337e42d
> > >         git remote add staging https://git.kernel.org/pub/scm/linux/k=
ernel/git/gregkh/staging.git
> > >         git fetch --no-tags staging staging-next
> > >         git checkout 1b11e893eda0907fc9b28696271e2d9c4337e42d
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cros=
s ARCH=3Dpowerpc64=20
> >=20
> > can't compile this, I get the following error:
> >=20
> > make CONFIG_OF_ALL_DTBS=3Dy CONFIG_DTC=3Dy HOSTCC=3D/home/fabio/0day/cl=
ang/bin/clang CC=3D/home/fabio/0day/clang/bin/clang LD=3D/home/fabio/0day/c=
lang/bin/ld.lld HOSTLD=3D/home/fabio/0day/clang/bin/ld.lld AR=3D/home/fabio=
/0day/clang/bin/llvm-ar NM=3D/home/fabio/0day/clang/bin/llvm-nm STRIP=3D/ho=
me/fabio/0day/clang/bin/llvm-strip OBJDUMP=3D/home/fabio/0day/clang/bin/llv=
m-objdump OBJSIZE=3D/home/fabio/0day/clang/bin/llvm-size READELF=3D/home/fa=
bio/0day/clang/bin/llvm-readelf HOSTCXX=3D/home/fabio/0day/clang/bin/clang+=
+ HOSTAR=3D/home/fabio/0day/clang/bin/llvm-ar CROSS_COMPILE=3Dpowerpc-linux=
-gnu- --jobs=3D8 LLVM_IAS=3D1 ARCH=3Dpowerpc drivers/staging/rtl8723bs/
> >   CC      scripts/mod/empty.o
> > clang: error: unsupported argument '-me500' to option 'Wa,'
> > make[1]: *** [scripts/Makefile.build:272: scripts/mod/empty.o] Error 1
> > make[1]: *** Attesa per i processi non terminati....
> > make: *** [Makefile:1226: prepare0] Error 2
> >=20
> > moreover I had to add LLVM_IAS=3D1, and ARCH=3Dpowerpc64 is not a valid=
 architecture (used powerpc instead).
> >=20
> > Could you help me?
> >=20
>=20
> This is not a clang specific issue, I would not bother with trying to
> use the bot's reproducer steps.
>=20
> I can reproduce it with GCC 11.1.0 using the following commands:
>=20
> $ make -skj"$(nproc)" ARCH=3Di386 defconfig
>=20
> $ scripts/config -e MMC -e STAGING -m RTL8723BS
>=20
> $ make -skj"$(nproc)" ARCH=3Di386 olddefconfig drivers/staging/rtl8723bs/
> drivers/staging/rtl8723bs/core/rtw_security.c: In function =E2=80=98rtw_w=
ep_encrypt=E2=80=99:
> drivers/staging/rtl8723bs/core/rtw_security.c:91:1: warning: the frame si=
ze of 1084 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
>    91 | }
>       | ^
> drivers/staging/rtl8723bs/core/rtw_security.c: In function =E2=80=98rtw_w=
ep_decrypt=E2=80=99:
> drivers/staging/rtl8723bs/core/rtw_security.c:128:1: warning: the frame s=
ize of 1060 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
>   128 | }
>       | ^
> drivers/staging/rtl8723bs/core/rtw_security.c: In function =E2=80=98rtw_t=
kip_encrypt=E2=80=99:
> drivers/staging/rtl8723bs/core/rtw_security.c:531:1: warning: the frame s=
ize of 1112 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
>   531 | }
>       | ^
> drivers/staging/rtl8723bs/core/rtw_security.c: In function =E2=80=98rtw_t=
kip_decrypt=E2=80=99:
> drivers/staging/rtl8723bs/core/rtw_security.c:633:1: warning: the frame s=
ize of 1084 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
>   633 | }
>       | ^

I could not get these warnings in a x86_64 build, so I tried
to reproduce exactly what the robot says. I should have tried
simply an i386 build :)

>=20
> Your commit introduced this because the size of the arc4_ctx structure
> is 1032 bytes so allocating it on the stack will cause it to go over the
> 32-bit limit of 1024 bytes. The previous arc4context was only 264 bytes.
> For that large of structure, I would recommend allocating it on the heap
> with kzalloc() and freeing with kfree_sensitive().

I have already I fixed it by putting two arc4_ctx field in security_priv st=
ruct without
locally allocating each time encryption-decryption functions are called.
Hope this is good...

>=20
> Cheers,
> Nathan

thank you for help,

fabio

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210522074830.GA1523%40agape.jhs.
