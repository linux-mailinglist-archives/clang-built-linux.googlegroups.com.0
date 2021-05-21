Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUMPUCCQMGQET7NOM2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CFA38CE10
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 21:19:46 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id w1-20020a0568304101b02902fc17224cf5sf13762128ott.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 12:19:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621624785; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ku7mhxdKFtFj1uLfqAnpAJKXMopWLsmxAOVAJLibT//wmVSadsuKPruIkuq3jy+hMO
         dAHHVFboHhgCxHbNWbWSgNQvHw2EQfft3lxqs08x93rpb2aj346Kyt+nbCAanwSKoLPx
         eqO6Nzuq+hptLJSEoScqao1sI2ewhX87A8dT+Z6kP6IbyTjHlV9kfancqmEcRlRlycZ0
         uB8AxoPSWSGQceivju68wQ5zmVwto+DuP5UgbAEnpaT0/3rqkdax6d5YJBn0Ckm+HBLK
         qS+CgIKKs3tMkHpMvZScNy09Bbv/WrmVVX/twSSAjf6ZIVW1kTQlFpRc4Cn9XlvFMSL0
         48Vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=otBY3urKnMLdv/a8bHAUioaStlnIWJxlYbZiSTjfV9c=;
        b=kPslmpKagXSvlLbIzDz5u+dHVsYhs3fA3Y/IJdAmfOeuzP+MIhXfFGqvdKDPE3IdrK
         rcacq4oDEkMd9C8PsMTZcvYWdcNcm36N5h2b2ShpCQHVMMI9JSDoWygA/UWbRIVIjKA+
         G1kuiky+4f50xHIId0tLIFht7P1ASYHZrW6jhxeRV51sozl6Kf1BVDxKVij0p7/sV0Ao
         zZ+1JRzr3AcgyqKvYg13/I6Kq5EIjKIVg1SaJafxgVErUm84ES4AjT/xtDik4UN3mTGU
         Jpd4gWEBrn1Vty3C7B74ZZApcuqNbPQ4U9NsdPXpuC9knVvxoGZZlDeK66z06NJAk2fl
         UevQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KShRBID3;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=otBY3urKnMLdv/a8bHAUioaStlnIWJxlYbZiSTjfV9c=;
        b=boFv1iJ8CgR5g2ZZMIMfFN2sdTaydlKSFBykSemqZgM3lw3GJtTBL3y2zznJq4ykdD
         xbw7dwpJraHA70gseC/Rje3JbCpWxT9+uVTlhsZYvHgiLafRkJ3BV+tkD9/9cHe7wYmc
         31uATR5BNhUUR1I8U/TJfrSypEIlbv/WmdJqGDVdZxJ4v1FAnM6/UTcqY2aTjDvwpizK
         dCpY75u7gN867EHTMu0Y7LYrNmLK5w7npHUqddsFUYUH8/0ctcphiDi87PmBYsmZQbxS
         jfE/gG7hTBq8ZhEUseb+ChXjvBCz/84La0C66K9Pd7LLpprJyfpoAFuXcKXIvFHhu0VP
         F4YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=otBY3urKnMLdv/a8bHAUioaStlnIWJxlYbZiSTjfV9c=;
        b=KOTvrWXhGCscBnRTOPCUWKdZBNGBLc1VcSATGgk2dynVQ/Uf+iwj4bfvV+nGOLxi5D
         uLblUCD4HT4WLVepu69dWiqVl7MEb47IiJvDjAy3K48tmUee7s6PqfrrXIIufsUZCu+L
         h7BNbxwknkncha7LLuSJhQBspeVsh+Cht6EzVnmU02ofo9D1YR58HRa33LhCSKEboJb5
         KUScOVIzvPW20q9JFM6j9etGRRs42UtXQKyngIb/hsgbl1btBfnthL1AlzT0eRiFU9Mx
         9ZpMAVX+Pa5LeWWXumyKAvc/bf8nkcxdb/0DD4YbBjd7H8kT9WoOl37VnMNPcBdORFRH
         bE3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gIGpcKnDI5L0d7DibdPo5q+4sxAyHtH1xYS9LtJiYCl/G3gP3
	Ku7DuLJxYq/gqo1592qpXIo=
X-Google-Smtp-Source: ABdhPJwM+TYbWk/Fmlhgp+FlUaWVBo7P6wpz5020x8h09T/bZdmgmVwiukMVMl4Qukj8fYPWjGlYoQ==
X-Received: by 2002:a05:6830:1307:: with SMTP id p7mr9618139otq.210.1621624785640;
        Fri, 21 May 2021 12:19:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:68ca:: with SMTP id i10ls2359641oto.8.gmail; Fri, 21 May
 2021 12:19:45 -0700 (PDT)
X-Received: by 2002:a05:6830:45a:: with SMTP id d26mr9878272otc.339.1621624785284;
        Fri, 21 May 2021 12:19:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621624785; cv=none;
        d=google.com; s=arc-20160816;
        b=i4yZ0FQLcUfQ9n3QmmGI7Ll08c8fOQlEGQepoJaQ+FQNU0rdheZz7XONofQUwa7WBM
         /ryQG+OfDrVnZ2FSEiGCnMiXNocPfmsoF6i00bpQAM4s0tBkkvItApZNrUsxp8Tppmda
         ll5e4H/pdryYjEPPPOv+KzWrpWRMUjvlmUdxPWuzgxErD7GuHKInmcMhjSXFr6OMsl8l
         i7pji5Qtr6H/XJyZyHLuXe7JcqpF4uwKmHWcyuB2hnRpCdjo/RjOO+DEiyZ0/kxlI0KO
         7RZ6ZJBeQ/r8QNgw0oIGz4SQYnNNEpn1/k2ot2bTlgqwQRzv62l7+pA6zRarBX6ex5DD
         b83A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=SFdACDxm0PvjmDEJOdUjXuMoEKAhF7LZIVDivTKUzNA=;
        b=uQKj5+6Q9298dmuwc5W//+3Myt63fhmQ/iaLBgPmhd5TGRaV/e9Svx/9zGUXt9RJEr
         EvYWvGffKFYNKzVBlcjJFdtWX+wRrUDCXXYklqPmaBxrtm6qWFKlVBJ5FIScGdnv0pLm
         rgsgxv7lnYq/Yyl1mKsGYSZZsvArudIqBfCQGkzzjukfjEvZfuVMw/iDteEQzNlj6z8Y
         aUBzaS70pMp3uQyZtf2GzAmi8xh7thY/3D3y0DQZderoQWr+6DwbWYOg4kh8SmSNCi9I
         P/DprV6j7ZYD6ZTYGf+KiEn4sfoG+YQmxl6CyF6N1JRjWIMhFyEsKC+HvMkOehDpO0Yu
         xQQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KShRBID3;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w16si929067oov.0.2021.05.21.12.19.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 May 2021 12:19:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EFBE5613B6;
	Fri, 21 May 2021 19:19:42 +0000 (UTC)
Date: Fri, 21 May 2021 12:19:39 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Fabio Aiuto <fabioaiuto83@gmail.com>
Cc: kernel test robot <lkp@intel.com>, devel@driverdev.osuosl.org,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [staging:staging-next 201/268]
 drivers/staging/rtl8723bs/core/rtw_security.c:89:6: warning: stack frame
 size of 1120 bytes in function 'rtw_wep_encrypt'
Message-ID: <YKgHy7ZNNxv/KMl8@archlinux-ax161>
References: <202105201711.QuzeTqRK-lkp@intel.com>
 <20210521142656.GA1409@agape.jhs>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210521142656.GA1409@agape.jhs>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=KShRBID3;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Fabio,

On Fri, May 21, 2021 at 04:26:57PM +0200, Fabio Aiuto wrote:
> Hi robot,
>=20
> On Thu, May 20, 2021 at 05:03:14PM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.=
git staging-next
> > head:   b9f38e913a926b455e5048a95f53a993b515509f
> > commit: 1b11e893eda0907fc9b28696271e2d9c4337e42d [201/268] staging: rtl=
8723bs: replace private arc4 encryption with in-kernel one
> > config: powerpc64-randconfig-r011-20210520 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project bf=
9ef3efaa99c02e7bfc4c57207301b8de39a278)
> > reproduce (this is a W=3D1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install powerpc64 cross compiling tool for clang build
> >         # apt-get install binutils-powerpc64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/stagin=
g.git/commit/?id=3D1b11e893eda0907fc9b28696271e2d9c4337e42d
> >         git remote add staging https://git.kernel.org/pub/scm/linux/ker=
nel/git/gregkh/staging.git
> >         git fetch --no-tags staging staging-next
> >         git checkout 1b11e893eda0907fc9b28696271e2d9c4337e42d
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross =
ARCH=3Dpowerpc64=20
>=20
> can't compile this, I get the following error:
>=20
> make CONFIG_OF_ALL_DTBS=3Dy CONFIG_DTC=3Dy HOSTCC=3D/home/fabio/0day/clan=
g/bin/clang CC=3D/home/fabio/0day/clang/bin/clang LD=3D/home/fabio/0day/cla=
ng/bin/ld.lld HOSTLD=3D/home/fabio/0day/clang/bin/ld.lld AR=3D/home/fabio/0=
day/clang/bin/llvm-ar NM=3D/home/fabio/0day/clang/bin/llvm-nm STRIP=3D/home=
/fabio/0day/clang/bin/llvm-strip OBJDUMP=3D/home/fabio/0day/clang/bin/llvm-=
objdump OBJSIZE=3D/home/fabio/0day/clang/bin/llvm-size READELF=3D/home/fabi=
o/0day/clang/bin/llvm-readelf HOSTCXX=3D/home/fabio/0day/clang/bin/clang++ =
HOSTAR=3D/home/fabio/0day/clang/bin/llvm-ar CROSS_COMPILE=3Dpowerpc-linux-g=
nu- --jobs=3D8 LLVM_IAS=3D1 ARCH=3Dpowerpc drivers/staging/rtl8723bs/
>   CC      scripts/mod/empty.o
> clang: error: unsupported argument '-me500' to option 'Wa,'
> make[1]: *** [scripts/Makefile.build:272: scripts/mod/empty.o] Error 1
> make[1]: *** Attesa per i processi non terminati....
> make: *** [Makefile:1226: prepare0] Error 2
>=20
> moreover I had to add LLVM_IAS=3D1, and ARCH=3Dpowerpc64 is not a valid a=
rchitecture (used powerpc instead).
>=20
> Could you help me?
>=20

This is not a clang specific issue, I would not bother with trying to
use the bot's reproducer steps.

I can reproduce it with GCC 11.1.0 using the following commands:

$ make -skj"$(nproc)" ARCH=3Di386 defconfig

$ scripts/config -e MMC -e STAGING -m RTL8723BS

$ make -skj"$(nproc)" ARCH=3Di386 olddefconfig drivers/staging/rtl8723bs/
drivers/staging/rtl8723bs/core/rtw_security.c: In function =E2=80=98rtw_wep=
_encrypt=E2=80=99:
drivers/staging/rtl8723bs/core/rtw_security.c:91:1: warning: the frame size=
 of 1084 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
   91 | }
      | ^
drivers/staging/rtl8723bs/core/rtw_security.c: In function =E2=80=98rtw_wep=
_decrypt=E2=80=99:
drivers/staging/rtl8723bs/core/rtw_security.c:128:1: warning: the frame siz=
e of 1060 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
  128 | }
      | ^
drivers/staging/rtl8723bs/core/rtw_security.c: In function =E2=80=98rtw_tki=
p_encrypt=E2=80=99:
drivers/staging/rtl8723bs/core/rtw_security.c:531:1: warning: the frame siz=
e of 1112 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
  531 | }
      | ^
drivers/staging/rtl8723bs/core/rtw_security.c: In function =E2=80=98rtw_tki=
p_decrypt=E2=80=99:
drivers/staging/rtl8723bs/core/rtw_security.c:633:1: warning: the frame siz=
e of 1084 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
  633 | }
      | ^

Your commit introduced this because the size of the arc4_ctx structure
is 1032 bytes so allocating it on the stack will cause it to go over the
32-bit limit of 1024 bytes. The previous arc4context was only 264 bytes.
For that large of structure, I would recommend allocating it on the heap
with kzalloc() and freeing with kfree_sensitive().

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YKgHy7ZNNxv/KMl8%40archlinux-ax161.
