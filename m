Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUOLRH2AKGQE7IFVREA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B382198695
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 23:34:11 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id z207sf17479635iof.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 14:34:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585604050; cv=pass;
        d=google.com; s=arc-20160816;
        b=EClDpPiLHK+wnikJlY7LnNFs32Dd8+LXTiRX7viqKePV7/S0mG9a1pen4sRcIzf93M
         KfH7IBj0pjfAkT6aCcZOg3Hw6bcZtDGA7AKQm9HKFS//ve4Dp/nQk6gdyYD/CRYArt6G
         vS+3pE8NRyQp2WGyJjv+7jdwu5xV67e/aW+Qv3YEnBdMsXHgWw/LGqk7aAl/CXvyHtWj
         VbCV6aWMnxf69s+uzyO3ghtAwNN2Tld3Tbohjojnym38ej6oYEk3sDWaP54VHQk78GbT
         /685nTe/V4hP53ENnd4wYAyoOhJShkwRBgj1MfKGyogYppBJIf19rdXj1MO80XyTYDY7
         a6rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=zV3CpDMbATR4lGTjmlqLfjRMOYGFCVwrwSSVW4hUG4M=;
        b=SmPb27kR4xkGHbScs0cbLArF0YlnxO/WZTVxCDhrO/rt9X2/0e7fUr5BkCrUwFP6mX
         b7KSY2NhRQLPBVzb1X05Hnug1/egcJV48f+LGGGqu5wEQybMPdc2QZRu7oRuiGvRusVD
         WWsGQ4QHf7773X4IWK8Os93YBW6uriBYeHS2hpQW+vXrn1Hj7Ilw3guy4tRJBRZLhUU9
         zDgq/7XgdgwX3YMputBN81OlIA0Yf3fXf0dv3OYgKrMHE2oTdku4cd6hja6NrjZlabrk
         e6hz/JcW78/nKLSMYaI8JnFEUd5H3lPCsybIPhLcH153hskNZgbG0RClyMwQduS1u48w
         ND6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HrLDXXXt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zV3CpDMbATR4lGTjmlqLfjRMOYGFCVwrwSSVW4hUG4M=;
        b=XtJ0vRL47+wWfZcdFA1XAcssGcMFNB485Sx6KiixN1QEE3adD1tkmuL5lV/gHix03G
         ZKdPSEDGqeWhpJ574GKao+4kB2OQ7pZbXn3h5I2wl4iuD6OEJBRd9wxa54qabe7Y/Kyq
         Ue4WiJghZeqMeJMVE8bGdJFQDlGTGE1OluJjEdVq11WCyd/XpQwJROJqqm9St18e80w2
         j86PH2GKIm714yNE3/KMpDaH6Kx5qN0nC4/zp4QKPm74tg0gxEcGCmFqRrcY29rb4jB/
         SaSsVLiIIUccJnBHX/dnogj9agGQFwWRvU8rXqFGAVtN/ulRaa9i1bCM+IEkB/OxYWs3
         zXTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zV3CpDMbATR4lGTjmlqLfjRMOYGFCVwrwSSVW4hUG4M=;
        b=ZExnRFeMZ/uPviG+h2/pnoSI7dpY8SAvAA8/nt3tuW1jI8XfYzRKoHwLo1HV03MoQU
         /ezxEVXXpIzz7sZAol8Co48k+l6bDlQav9F22PNkgeJhumXcl6R3cjSI4rS7Q7gbqW4+
         LVlGUrjE5GfYQa/M1M5mOs8rVzGXqQgv/XDFA873zdCvDsCp5pexVCjiCGvCE+4wBoJT
         jIcc7BrACfB+FytQTPyCNrWv+iN3qLhdauM69/EfnMK1WVLLNn6yssFvsdK1LIjsmntC
         c3SGF+wAMRunWcoblyo7PwDpIReSywYuEMsblthhDY83UTBn9tUKfH7IfNzgs+Z5hd5n
         DLwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zV3CpDMbATR4lGTjmlqLfjRMOYGFCVwrwSSVW4hUG4M=;
        b=lZnA9ESWD3oINgjvQ6VGWaS/UXJE8V0mqnFVfuqDv7kJlYkoSvQyGAsg8steqRXDlc
         fdZ5TmgJOHCAfmR0lDEyDgpXeTk/ruPOWSINPLOydJncjn3P4eO5nhwjcUNb7VUq26sG
         EsZmU98dUe5NsxE8dJmjuzima8c7kmXt/QHLNsUwxvotBzv2CJsrJ0J4TWZwTYSsjQlL
         Ic9DPE7Ny2ByQhEO+PJEU6GEROVH+ehc+nV/EHq9fyEoPNjtAkG+Kyqpn7LSqvqpbwkG
         DKQIhG9xYUvb1HtbTpFD9ojW57X1aDqPH+rJrIlqeKr/jnltRSFdvTrIjbZFP7+IDFe2
         IS6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3Uvbdwb7pIiGJUNL4CEk6FAUAS+zV/BrpnDIbqRwcbQBNpZR6E
	sSsLeKk24Nsb9pUPXdfZMNA=
X-Google-Smtp-Source: ADFU+vsnagoQ5tNEiKKXbaYKAbSI8Qup0ZRYIN1xuqB3toT+X+XdF02pXcMsP+DrS7YQou4JUMGcHw==
X-Received: by 2002:a02:ccb8:: with SMTP id t24mr1231259jap.8.1585604049874;
        Mon, 30 Mar 2020 14:34:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:d2:: with SMTP id w18ls2628548jao.7.gmail; Mon, 30
 Mar 2020 14:34:09 -0700 (PDT)
X-Received: by 2002:a05:6638:c51:: with SMTP id g17mr13124229jal.33.1585604049323;
        Mon, 30 Mar 2020 14:34:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585604049; cv=none;
        d=google.com; s=arc-20160816;
        b=qp7HKeOiRKne8pbXY6l5bRcG+btHgFSaiczDWww4BKH3hoTaOXV44eMgFHAxaQne5Z
         du3xL/VYdH0KFATqgKo+YJ/B5+8lj2TRY9+D5Ckin+qKCIjuQyCqb4nG5lJy3QObgZae
         a52MuFAtcsBEcZM5QlS7gtJro2AD5bK5FK8defBWwKBrUSjYaZZbnVaGgL6S0TV9lAwQ
         Lj3VN7TohWF/OQcns4WaKesV19v+rfnTc1vccdnPn1QmZlDM5Xlg/fFBA2F51msQ5qP3
         VLXUHgOsUfWI+not5rSog1rfvvKjhPCXirDAqGDUjGVmMwn/yu7b3Oh49qE/J0wIqHCX
         NkuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=eJ9iVLSHIFSUq96XznsAAHwNQ6GF7Gxs04ont8jFwbk=;
        b=lrVeiMbjh5bjBI/SZTvVjHe2Ga//ceeiAL0Y9tOJLPZCzfYOcIW9/jCgufCaNf6Kib
         B8E55Wow4tjFX15NgjisZA01tisfmWYC9LOfdzeyFGuayVXaZAPnEWRG9E2g7YjdBTLD
         TvfSNgoe+UmdU6+RbLq0CuSsi96SjDWG2Evuw2qdBNH0BW62fKukA0Wuou7+rk1e0tFS
         mQ0oE43NCmOX+fjKoUJhBhRmHWl/Gl62KXscLZ73nGwjZkCyn2lpT+6kCPtaLXLuxGOs
         ib2NAvevHaeO5jHfyLZtlLXANccCKYA0Ty+YV1NcVPXB9uJLY4dIfQxTfq13+bgcQan+
         N0sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HrLDXXXt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id a3si1512387iog.2.2020.03.30.14.34.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 14:34:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id t28so19812681ott.5
        for <clang-built-linux@googlegroups.com>; Mon, 30 Mar 2020 14:34:09 -0700 (PDT)
X-Received: by 2002:a05:6830:11c1:: with SMTP id v1mr10963169otq.264.1585604048763;
        Mon, 30 Mar 2020 14:34:08 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id h65sm4741444oth.34.2020.03.30.14.34.07
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 30 Mar 2020 14:34:08 -0700 (PDT)
Date: Mon, 30 Mar 2020 14:34:06 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Rob Herring <robh@kernel.org>,
	David Gibson <david@gibson.dropbear.id.au>,
	Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	kbuild test robot <lkp@intel.com>, Philip Li <philip.li@intel.com>
Subject: Re: ld.lld: error:
 drivers/staging/rtl8192e/rtllib_wx.o:(.rodata.str1.1): offset is outside the
 section
Message-ID: <20200330213406.GA3170@ubuntu-m2-xlarge-x86>
References: <202003310500.8jcJ6fgm%lkp@intel.com>
 <CAKwvOdnwaoPSB_pavQimvNEuFdt9wF4xSHBbLtjzQUC=urJAxw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnwaoPSB_pavQimvNEuFdt9wF4xSHBbLtjzQUC=urJAxw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HrLDXXXt;       spf=pass
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

On Mon, Mar 30, 2020 at 02:21:20PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> Apologies, we're in the process of getting LLD turned on.  These
> warnings look new to me, so I'll file an issue to follow up on.  It's
> unrelated to the yyloc change.
> https://github.com/ClangBuiltLinux/linux/issues/959

$ gzip -d .config.gz

$ rg ENDIAN .config
781:CONFIG_CPU_BIG_ENDIAN=y
782:CONFIG_CPU_ENDIAN_BE8=y
810:CONFIG_ARCH_SUPPORTS_BIG_ENDIAN=y
1112:CONFIG_VHOST_CROSS_ENDIAN_LEGACY=y
7875:CONFIG_FB_FOREIGN_ENDIAN=y
7876:CONFIG_FB_BOTH_ENDIAN=y
7877:# CONFIG_FB_BIG_ENDIAN is not set
7878:# CONFIG_FB_LITTLE_ENDIAN is not set
9047:CONFIG_USB_OHCI_LITTLE_ENDIAN=y

ld.lld does not support AArch64 or ARM big endian:

https://reviews.llvm.org/D58655#1410281

https://github.com/ClangBuiltLinux/linux/issues/380

Does 0day do an allyesconfig little endian? I know that arm64 defaults
to little endian after commit d8e85e144bbe ("arm64: Kconfig: add a
choice for endianness") but arm does not have something like that (maybe
it should?). I've always forced CONFIG_CPU_LITTLE_ENDIAN with the
KCONFIG_ALLCONFIG variable, as I note in issue #380 above.

Kind of surprised that it got to drivers/staging though, I error out in
arch/arm/vdso/Makefile:

$ mkdir -p out/arm32 && curl -LSs 'https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org/message/V6YPX24H2YFOKOE7FWFJ66DQI63R3WKZ/attachment/2/config.gz' | gzip -d > out/arm32/.config

$ make -j$(nproc) -s ARCH=arm CC=clang CROSS_COMPILE=arm-linux-gnueabi- LD=ld.lld O=out/arm32 olddefconfig all
ld.lld: error: unknown argument: --be8
make[3]: *** [/home/nathan/src/linux/arch/arm/vdso/Makefile:50: arch/arm/vdso/vdso.so.raw] Error 1

> On Mon, Mar 30, 2020 at 2:17 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > Hi Dirk,
> >
> > First bad commit (maybe != root cause):
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > head:   7111951b8d4973bda27ff663f2cf18b663d15b48
> > commit: e33a814e772cdc36436c8c188d8c42d019fda639 scripts/dtc: Remove redundant YYLOC global declaration
> > date:   3 days ago
> > config: arm-allyesconfig (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project b4695351cb4ce1c4450a029a0c226dc8bb5f5d55)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout e33a814e772cdc36436c8c188d8c42d019fda639
> >         # save the attached .config to linux build tree
> >         COMPILER=clang make.cross ARCH=arm
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> ld.lld: error: drivers/staging/rtl8192e/rtllib_wx.o:(.rodata.str1.1): offset is outside the section
> > >> ld.lld: error: drivers/staging/rtl8192e/rtllib_softmac.o:(.rodata.str1.1): offset is outside the section
> > >> ld.lld: error: drivers/staging/rtl8192e/rtllib_tx.o:(.rodata.str1.1): offset is outside the section
> > --
> > >> ld.lld: error: drivers/staging/rtl8192u/ieee80211/dot11d.o:(.rodata.str1.1): offset is outside the section
> > --
> > >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_debug.o:(.rodata.str1.1): offset is outside the section
> > >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_sta_mgt.o:(.rodata.str1.1): offset is outside the section
> > >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_security.o:(.rodata.str1.1): offset is outside the section
> > >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_wlan_util.o:(.rodata.str1.1): offset is outside the section
> > >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_ieee80211.o:(.rodata.cst4): offset is outside the section
> > >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_odm.o:(.rodata.str1.1): offset is outside the section
> > >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_recv.o:(.rodata.str1.1): offset is outside the section
> > >> ld.lld: error: drivers/staging/rtl8723bs/hal/hal_com.o:(.rodata.str1.1): offset is outside the section
> > >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_ioctl_set.o:(.rodata.str1.1): offset is outside the section
> > >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_xmit.o:(.rodata.str1.1): offset is outside the section
> >    ld.lld
> > --
> > >> ld.lld: error: drivers/misc/mic/vop/vop_vringh.o:(.rodata.str1.1): offset is outside the section
> > --
> >    ld.lld: error: drivers/staging/rtl8188eu/core/rtw_efuse.o:(.rodata.str1.1): offset is outside the section
> > >> ld.lld: error: drivers/staging/rtl8188eu/os_dep/xmit_linux.o:(.rodata.str1.1): offset is outside the section
> > --
> > >> ld.lld: error: drivers/staging/kpc2000/kpc_dma/fileops.o:(.rodata.str1.1): offset is outside the section
> >    ld.lld: error: drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.o:(.rodata.str1.1): offset is outside the section
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200330213406.GA3170%40ubuntu-m2-xlarge-x86.
