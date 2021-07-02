Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBKMM7KDAMGQE2TYYIAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3A43B9AF5
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 05:21:14 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id z64-20020a257e430000b0290550b1931c8dsf11213606ybc.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 20:21:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625196073; cv=pass;
        d=google.com; s=arc-20160816;
        b=H3N7xXeD47KLyv2fpzFvmAKDPysObcgWR1hzSdDXAwgBaKUX83RhMUGMGDAROMWzf9
         pJfkyxCwu67YppYqREYI1Nc9r0bmT5RD0hCDWF3aio8RQR7WE5E4hb8qAb0cSpJBEgaQ
         f4WfnrKcILpnZ/1zHJm2GD2hyxVMB/LKdDn2SVlh9xixIf3iNgSOvkYSAp3QQ7y99FMJ
         Is8J90ltherEVpf1aPLQRQkG3aNDM1NcgWZ7p20H4SnTebXZGm3TsvgUMKtziUsfWlak
         3RdYvY6WaJBAY7TUkj+/ODqtCwpHmXsmv+LiliN76/ASKuadUf8x/Mf8vzk90f6H0cjp
         jXUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5LeaC00Ob1FnIPqEF2GX7aI6qVfszIdIxjd4uu6JN7U=;
        b=dekloYYnBJojt4IZi8xJ4iKI0ni+zlMXnyO+HFx9JLlhjM6oje+CDzQvXMWRyucSKO
         NRARMiWE9i/oPyUQ3N9Lq0ePZNUTweBsqRA6PgiUKxyQNz62Xm/GjrHi0vPwjKdFTubM
         CCIU6SZyq8f7TP6vimRlioukhWXTXOwuP578q8eYqwBwZhcIi+PkTTVg8+s8msh8OU4Z
         IAvytPVOf/PDzRT3Vmce9Y16so34FfjvKbMEpxMoKM69es62HW5lArgtu1o9MQHryEka
         e4GbU6r3KDgHHvtOR/3H2EpJL04O57/F4iwgfr8aBtHX0kSlP6qBSO6P/USsAzS72K7p
         bk6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5LeaC00Ob1FnIPqEF2GX7aI6qVfszIdIxjd4uu6JN7U=;
        b=nMppMr7y6kLkADlzc++5sLSkrX1+2sCiGzAZ1IRX+6DkfUN4b0JaZ0j9YhXSodIf/s
         2HjyWcyVOm0H1VLkIJVb85UvPN7Ptc9YSAQkqSgVMEyopv3roiYB2XcWb69051zqiX6g
         cb7Z4oj2j8rXMqQn96tqLoo+XtLKkW8cVgcP6UcJCT4rZQ6EtAY1xMmmYkrL8G/Klg8w
         JMTk8sMQ4GdkkrQxa21gYOcx0B/paCMRtTDzTW4PV7VbAL9SkL2xmVey03VcA595P/uU
         jzy1ymSVMcba9cNSItxxNc5/40OXIukUNvUDJOJNE8R24k/gPbVH17AqpkqAaWkXMUZ7
         n5/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5LeaC00Ob1FnIPqEF2GX7aI6qVfszIdIxjd4uu6JN7U=;
        b=t/A9njukWbsCCEhX86kAO15B3/MgOKQMQeJlb+ySsynV8x6znrxAIIXg1P40dJZexT
         CB/4bhjX9/yInE6Hh1TOdkleRMIPy8pYeHxLJqSCL+8/L0F/QcrKoEy/H3/ERSQf8Dyl
         /bHHg9WA+hUMVi7p+HYHNfxUKzjsTWuqV5VzVFHabwHSjfyqX6AydbK7npRHrLcsrtBL
         7t1LUWGtl6D8SFcOyXe0xEL6O7H0yeVpVZucY8Y4mnbOFsdw4638WRNgOeV8k+COylVS
         4YQ/Ta7V/gSk2eryxHwO4Ds/2WtZoeRyQQYCnqnpqU3De4pQyB/zbntQce63XE78F9kq
         VXZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MtxnAxJgCYGCn8Ky2TT3QcWAMiAhXS7qz68Cf0gHbDzzBFWWn
	gHBPm6CB+oMDh6cTas7iK58=
X-Google-Smtp-Source: ABdhPJy3v/lWCW4aIVpis2/X/esGMCUpzo05W6Qik/LyZdcYhMS3QQ+Z9AUhY6ize8KYWKY07wvBHA==
X-Received: by 2002:a25:ae16:: with SMTP id a22mr4119067ybj.416.1625196073687;
        Thu, 01 Jul 2021 20:21:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4053:: with SMTP id n80ls4898479yba.11.gmail; Thu, 01
 Jul 2021 20:21:13 -0700 (PDT)
X-Received: by 2002:a25:23ce:: with SMTP id j197mr4038186ybj.477.1625196073089;
        Thu, 01 Jul 2021 20:21:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625196073; cv=none;
        d=google.com; s=arc-20160816;
        b=jhicK8cuqPdiEH5gkfi+FRF88lNPM+Y5Dq5nDK3OnBanSeSdayNglgOxCUrG9srbn9
         1fGn/QgkO4CvOsDXpoSPd6Eynir3f8kERnbijI3wJ6L1Cv6/0t1EWxAPYkVoQiQxZPUM
         BGd2ixAtQFFb/3CLzqXtm7ilYoETn++sCoqBvVr2476E+o/QrTmzaZ9NRrl25QO6W4E1
         VIfzzEsN1lUE7WDoTjpZmIFz1Wl+gc0VdC1AxNbF+xisXVptAdvSoQ8GJSCprFDrHKK4
         UWXB+2OC16RBqCB2aCMBOpHeC58AeEb5l7WHx3YFiErAIlldu/9tT+lPRiBFn2d5gjWF
         PKgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=xPMTSKOut1u1Tuk+EwEh500kCXFHVLaCQuwdbVzAMbs=;
        b=vOyH6mGAMVK2soOA241SK+HzlD87b0+ro8QY0uLA7Sr5ZFgoPOujj84tYuQx9PZYPM
         Y/lAmTVAvOMJl4u3+wo0wL4qgFR/T7wYCzyp0J2IfxRMeKB2fNO9XiCGL4eUhjbqbN6I
         aEKTjXPhV718ke3EEXQRqocbqQH6AKOfrH9h2icTy2hOzttVhcje+Uy06HqRhoVicRFj
         xAwrmzhPg8m2kiIrfN6YllFHDh4ul9kl4RDlEAridm6v1gc4qL4tXTv3tEGy5ZtMXxXs
         BegfdSVBpoJk8DTF2pUuiYlX3fkXE3Khcah6a4FdeJOyu1HloCNubmlYOx3pKw4H+i4d
         3svg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id c13si228932ybr.5.2021.07.01.20.21.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 20:21:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: b8b6fa4102924558afc3271190e5e027-20210702
X-UUID: b8b6fa4102924558afc3271190e5e027-20210702
Received: from mtkcas10.mediatek.inc [(172.21.101.39)] by mailgw02.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1843929319; Fri, 02 Jul 2021 11:21:05 +0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 2 Jul 2021 11:21:04 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 2 Jul 2021 11:21:03 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <ndesaulniers@google.com>
CC: <clang-built-linux@googlegroups.com>, <keescook@chromium.org>,
	<lecopzer.chen@mediatek.com>, <linux-kbuild@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <masahiroy@kernel.org>,
	<michal.lkml@markovi.net>, <nathan@kernel.org>, <samitolvanen@google.com>,
	<yj.chiang@mediatek.com>
Subject: Re: [RESEND PATCH v2 1/2] Kbuild: lto: add CONFIG_MAKE_VERSION
Date: Fri, 2 Jul 2021 11:21:03 +0800
Message-ID: <20210702032103.7787-1-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <CAKwvOdkGjz-rH8AHudO3dJmSt+48FSJ8iT-eCacwyeMhWv909w@mail.gmail.com>
References: <CAKwvOdkGjz-rH8AHudO3dJmSt+48FSJ8iT-eCacwyeMhWv909w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: lecopzer.chen@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as
 permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

> On Thu, Jul 1, 2021 at 2:28 AM Lecopzer Chen <lecopzer.chen@mediatek.com> wrote:
> >
> > To check the GNU make version. Used by the LTO Kconfig.
> >
> > LTO with MODVERSIONS will fail in generating correct CRC because
> > the makefile rule doesn't work for make with version 3.8X.[1]
> >
> > Thus we need to check make version during selecting on LTO Kconfig.
> > Add CONFIG_MAKE_VERSION which means MAKE_VERSION in canonical digits
> > for arithmetic comparisons.
> >
> > [1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
> > Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
> > ---
> >  Makefile                |  2 +-
> >  init/Kconfig            |  4 ++++
> >  scripts/make-version.sh | 13 +++++++++++++
> >  3 files changed, 18 insertions(+), 1 deletion(-)
> >  create mode 100755 scripts/make-version.sh
> >
> > diff --git a/Makefile b/Makefile
> > index 88888fff4c62..2402745b2ba9 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -516,7 +516,7 @@ CLANG_FLAGS :=
> >
> >  export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC
> >  export CPP AR NM STRIP OBJCOPY OBJDUMP READELF PAHOLE RESOLVE_BTFIDS LEX YACC AWK INSTALLKERNEL
> > -export PERL PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
> > +export PERL PYTHON3 CHECK CHECKFLAGS MAKE MAKE_VERSION UTS_MACHINE HOSTCXX
> >  export KGZIP KBZIP2 KLZOP LZMA LZ4 XZ ZSTD
> >  export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
> >
> > diff --git a/init/Kconfig b/init/Kconfig
> > index 55f9f7738ebb..ecc110504f87 100644
> > --- a/init/Kconfig
> > +++ b/init/Kconfig
> > @@ -86,6 +86,10 @@ config CC_HAS_ASM_INLINE
> >  config CC_HAS_NO_PROFILE_FN_ATTR
> >         def_bool $(success,echo '__attribute__((no_profile_instrument_function)) int x();' | $(CC) -x c - -c -o /dev/null -Werror)
> >
> > +config MAKE_VERSION
> > +       int
> > +       default $(shell,$(srctree)/scripts/make-version.sh $(MAKE_VERSION))
> > +
> >  config CONSTRUCTORS
> >         bool
> >
> > diff --git a/scripts/make-version.sh b/scripts/make-version.sh
> > new file mode 100755
> > index 000000000000..ce5af96696cc
> > --- /dev/null
> > +++ b/scripts/make-version.sh
> > @@ -0,0 +1,13 @@
> > +#!/bin/sh
> > +# SPDX-License-Identifier: GPL-2.0
> > +#
> > +# Print the linker name and its version in a 5 or 6-digit form.
> 
> The linker? 

my bad, I'll fix this, thanks



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210702032103.7787-1-lecopzer.chen%40mediatek.com.
