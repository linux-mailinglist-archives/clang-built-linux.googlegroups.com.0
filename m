Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBONHRP2AKGQEOWCWRSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3F6198BA7
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 07:23:07 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id w76sf19087568ila.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 22:23:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585632186; cv=pass;
        d=google.com; s=arc-20160816;
        b=cZjxSQ3vt7qkMNLz5L+8Ise21iE+YutjeMIM8mzFYgdJu9iVZTazRs3g3fC4e5qwbc
         FKmG+qyctGXOoMY8ybJ3WdAVRrwi7bEV6hyoFdNuEv1Qrk1nu1H0ZDiRg1/hZuM/0kA0
         01EKtI8liOlF1xQts2Tby+fNRkHPkCZl4mLgHE+uYQtvxzBFx4mRPS3lScfgBly77puE
         wUQ5IarVeGVFUedAviBlq1ApAiYmWNU+LFsJlCNvNJqOcqYxi9I/UCM/yYgxLYxAEChV
         NXkrlTItdKqRjVrLd9BHux/etrAP9eX4rWAXLuBBozJ7Jh58e7IIw7pbfPXGgjFNn6Zt
         /Ekg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=+/HQmtaDN2QUaHMvNnGa0divR+ZVa3S4HoItIgq/X3I=;
        b=ZlqN1wpFC4G2IoiNhKdzLxxfldWV9Qt4r1uBJ2Jhb5NqabovBeSmiPQpoHPZVjGZ38
         f33G6xbdTgyoiKtXefjzWbzpHHqfVIw7mh3auE3C2IfafRCBOIQbHK3hoizC35UO4rUU
         50O2EoLomKCE6Z2YwbXI9GSZ/6Ez8om/5UkzzLx7G1b13RhSwNpuIAHy0h0HHrap6M1c
         O9Ki91QzwRl2nQeeGFsGFz+HJY7qT8q2v+SwuhjY42Jz9SDd3IUOCBBpsVmsGjHNsmNx
         XDj2VLGqP+5PlWAkp27N/s4O5OI7MMOuKdN+XgXpzK4EW7ti97VHtLr0xh+GXMJMbd/B
         +qnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+/HQmtaDN2QUaHMvNnGa0divR+ZVa3S4HoItIgq/X3I=;
        b=DGtRZYcpv97oFXG7pQUoW0fjJbAjHTmO4mAJsFH7XPRnVolPSKhvS4tdGpN2H73YIc
         EHqIwLxpBuWqsI93vLHXRsRt3E4bKk5n+IDcD0d7jbh0RpESIxhJEpbtekMUGjGNe3NQ
         Trx46IQEqoxVuQ6omSmJRPTY7X01bpsRIn5VUxeVg88LqaFh0cXW9b0q1S29KioPd1Ay
         gYoyQT3TjeEY2MvCk82oWy7NYhpYjvQhpww4ZsjAWBK/K9fTjJq/f0RJvbWK9cjdIlyh
         26//4f0i9t5mtsOtWTr0dV1pDb0EJ5SfFawV7gBAO9bbLW906PQItTwKlHjeSbm5SOHQ
         ccog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+/HQmtaDN2QUaHMvNnGa0divR+ZVa3S4HoItIgq/X3I=;
        b=EZu+/F+rjJsLYo2VVCOO4CeRAdzMsDm7BOAUwWkV9voyujEtJ4medBC2LlVtp20cpn
         phc/lwtCmoGJAmdMRk5WFMJYMnQh4SlAQu14p5RYx8zgaIYEnN2bJmjcparZuLLs2kkm
         Gr/5waFhwzzRngDh3tlE8YBwIaFVSXnnOhJBwEcGfdVT1g+wfOse2u99ie7WhvUEQB3y
         Zm1vqziphUjVxvyvUh/9HpY9go/9rNIuNMJCW18QQSyLq3RxcFCTApt9Pebq2eWg+dC8
         cNZU+rq1yjL3TERyh0AZsfsU9xNDsArKAZf63JoSe1WAPebzvwbB4HkL9ukQ39OO427b
         cB3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1csZAOiUrlLjJAKEu70usCdPPu03jfPsUtZ4/byyL3DX2Xa2PW
	QkpjgbwrEul5IMiZHp21dks=
X-Google-Smtp-Source: ADFU+vsXfq6Wvs3W7AbeGNwtgWjeVlipfAelUAI794WtZdU1RswYl9MTro8sc2Y40ywGw2skIOhmsg==
X-Received: by 2002:a6b:8e08:: with SMTP id q8mr14203611iod.17.1585632185973;
        Mon, 30 Mar 2020 22:23:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1e6:: with SMTP id t6ls2752969jaq.2.gmail; Mon, 30
 Mar 2020 22:23:05 -0700 (PDT)
X-Received: by 2002:a02:77d4:: with SMTP id g203mr14219016jac.66.1585632185364;
        Mon, 30 Mar 2020 22:23:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585632185; cv=none;
        d=google.com; s=arc-20160816;
        b=wKGRnfFPYrVHcY41BeHGBpEH+ov4tNL46gLpeOFK3+VaB/PFmnOEyHmCU+Xni32FEL
         P0vO0nKHyQqoDciP/fok4X+3t46HmxyZRZKcmKVBItQbRQYFSfOZELrWbIf17+vcdH1W
         vHAZSlLIZm8Lx8uaAd9QFVvoO6GgTK8xu1TCkvxjpZMwlvQuNlODj+1fQErezIJJmz8v
         bS35pVqNVM5UhEC0Mqt49j/b7EFEeZN7+UUj/BabcxPQu+G9tubc0qfICwcR2FZ8sy5S
         Q65WNWrzHKMvOq2tWCfeVS/JEXyP80LUoNe1bpVIc4z3NSo9ODSCamYhtnjaJYpIVg08
         l0/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=kP1mSTOfs1mGS7PhKAyxu5s642KEgFQxMzxDygYQQ1c=;
        b=KFbGFjVlv+E4VZXu1mg5asa/WwZdiEbs6tZy609gDQUN6Wb4/vY8K7S0cNxEWn6EfH
         G9l5eL09Bjel2gn++Abv5wLOJ9L8e+13UdbVJD67aC481h/p4H5To367EDpu9REhZQgd
         eSnyq4ePoCOGqOrT0POJP0pDJZFJAVMxeCQ+2NcOI0+8guMTLTgo4N2jgbdGS5Re0SXn
         40dzsSZ3YD573LysjGmbZzaOTEUtiuCujDHT5hRxXbp3evP2dnTny8C64Zv1tuxXonYA
         EbgaXyDLw9HCmw1BERMDj0aD2AWpI3+EQs3KPCLFksm3emHoopF/tBinx33jWLwlI13C
         Ih6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id t13si804269ilk.5.2020.03.30.22.23.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 22:23:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: NuB98KXqtrT92cGu2Ntl1on4maR00dAaCu5cUyXBx8t5T4S+2kQgTLHZlM3Z+j7qswhvVUmnkn
 kVsUSdX4kW2w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2020 22:23:04 -0700
IronPort-SDR: jjSDt0sGR0jEVrpkUc2dMbErId9L2Dx8ff2YAlYZFTA2eNYzZhZFZztgwnXKo9v6zHiXN0sAEx
 lEQDMPxmn80w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; 
   d="scan'208";a="422177181"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga005.jf.intel.com with ESMTP; 30 Mar 2020 22:23:01 -0700
Date: Tue, 31 Mar 2020 13:22:22 +0800
From: Philip Li <philip.li@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Rob Herring <robh@kernel.org>,
	David Gibson <david@gibson.dropbear.id.au>,
	Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	kbuild test robot <lkp@intel.com>
Subject: Re: ld.lld: error:
 drivers/staging/rtl8192e/rtllib_wx.o:(.rodata.str1.1): offset is outside the
 section
Message-ID: <20200331052222.GB13302@intel.com>
References: <202003310500.8jcJ6fgm%lkp@intel.com>
 <CAKwvOdnwaoPSB_pavQimvNEuFdt9wF4xSHBbLtjzQUC=urJAxw@mail.gmail.com>
 <20200330213406.GA3170@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200330213406.GA3170@ubuntu-m2-xlarge-x86>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.43 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Mon, Mar 30, 2020 at 02:34:06PM -0700, Nathan Chancellor wrote:
> On Mon, Mar 30, 2020 at 02:21:20PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> > Apologies, we're in the process of getting LLD turned on.  These
> > warnings look new to me, so I'll file an issue to follow up on.  It's
> > unrelated to the yyloc change.
> > https://github.com/ClangBuiltLinux/linux/issues/959
> 
> $ gzip -d .config.gz
> 
> $ rg ENDIAN .config
> 781:CONFIG_CPU_BIG_ENDIAN=y
> 782:CONFIG_CPU_ENDIAN_BE8=y
> 810:CONFIG_ARCH_SUPPORTS_BIG_ENDIAN=y
> 1112:CONFIG_VHOST_CROSS_ENDIAN_LEGACY=y
> 7875:CONFIG_FB_FOREIGN_ENDIAN=y
> 7876:CONFIG_FB_BOTH_ENDIAN=y
> 7877:# CONFIG_FB_BIG_ENDIAN is not set
> 7878:# CONFIG_FB_LITTLE_ENDIAN is not set
> 9047:CONFIG_USB_OHCI_LITTLE_ENDIAN=y
> 
> ld.lld does not support AArch64 or ARM big endian:
got it, we will update build logic to keep lld where it suits.

> 
> https://reviews.llvm.org/D58655#1410281
> 
> https://github.com/ClangBuiltLinux/linux/issues/380
> 
> Does 0day do an allyesconfig little endian? I know that arm64 defaults
currently no, the default arm allyes uses CONFIG_CPU_BIG_ENDIAN=y.

> to little endian after commit d8e85e144bbe ("arm64: Kconfig: add a
> choice for endianness") but arm does not have something like that (maybe
> it should?). I've always forced CONFIG_CPU_LITTLE_ENDIAN with the
> KCONFIG_ALLCONFIG variable, as I note in issue #380 above.
> 
> Kind of surprised that it got to drivers/staging though, I error out in
> arch/arm/vdso/Makefile:
> 
> $ mkdir -p out/arm32 && curl -LSs 'https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org/message/V6YPX24H2YFOKOE7FWFJ66DQI63R3WKZ/attachment/2/config.gz' | gzip -d > out/arm32/.config
> 
> $ make -j$(nproc) -s ARCH=arm CC=clang CROSS_COMPILE=arm-linux-gnueabi- LD=ld.lld O=out/arm32 olddefconfig all
> ld.lld: error: unknown argument: --be8
> make[3]: *** [/home/nathan/src/linux/arch/arm/vdso/Makefile:50: arch/arm/vdso/vdso.so.raw] Error 1
> 
> > On Mon, Mar 30, 2020 at 2:17 PM kbuild test robot <lkp@intel.com> wrote:
> > >
> > > Hi Dirk,
> > >
> > > First bad commit (maybe != root cause):
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > > head:   7111951b8d4973bda27ff663f2cf18b663d15b48
> > > commit: e33a814e772cdc36436c8c188d8c42d019fda639 scripts/dtc: Remove redundant YYLOC global declaration
> > > date:   3 days ago
> > > config: arm-allyesconfig (attached as .config)
> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project b4695351cb4ce1c4450a029a0c226dc8bb5f5d55)
> > > reproduce:
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         git checkout e33a814e772cdc36436c8c188d8c42d019fda639
> > >         # save the attached .config to linux build tree
> > >         COMPILER=clang make.cross ARCH=arm
> > >
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All errors (new ones prefixed by >>):
> > >
> > > >> ld.lld: error: drivers/staging/rtl8192e/rtllib_wx.o:(.rodata.str1.1): offset is outside the section
> > > >> ld.lld: error: drivers/staging/rtl8192e/rtllib_softmac.o:(.rodata.str1.1): offset is outside the section
> > > >> ld.lld: error: drivers/staging/rtl8192e/rtllib_tx.o:(.rodata.str1.1): offset is outside the section
> > > --
> > > >> ld.lld: error: drivers/staging/rtl8192u/ieee80211/dot11d.o:(.rodata.str1.1): offset is outside the section
> > > --
> > > >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_debug.o:(.rodata.str1.1): offset is outside the section
> > > >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_sta_mgt.o:(.rodata.str1.1): offset is outside the section
> > > >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_security.o:(.rodata.str1.1): offset is outside the section
> > > >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_wlan_util.o:(.rodata.str1.1): offset is outside the section
> > > >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_ieee80211.o:(.rodata.cst4): offset is outside the section
> > > >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_odm.o:(.rodata.str1.1): offset is outside the section
> > > >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_recv.o:(.rodata.str1.1): offset is outside the section
> > > >> ld.lld: error: drivers/staging/rtl8723bs/hal/hal_com.o:(.rodata.str1.1): offset is outside the section
> > > >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_ioctl_set.o:(.rodata.str1.1): offset is outside the section
> > > >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_xmit.o:(.rodata.str1.1): offset is outside the section
> > >    ld.lld
> > > --
> > > >> ld.lld: error: drivers/misc/mic/vop/vop_vringh.o:(.rodata.str1.1): offset is outside the section
> > > --
> > >    ld.lld: error: drivers/staging/rtl8188eu/core/rtw_efuse.o:(.rodata.str1.1): offset is outside the section
> > > >> ld.lld: error: drivers/staging/rtl8188eu/os_dep/xmit_linux.o:(.rodata.str1.1): offset is outside the section
> > > --
> > > >> ld.lld: error: drivers/staging/kpc2000/kpc_dma/fileops.o:(.rodata.str1.1): offset is outside the section
> > >    ld.lld: error: drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.o:(.rodata.str1.1): offset is outside the section
> > >
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > >
> > 
> > 
> > 
> > -- 
> > Thanks,
> > ~Nick Desaulniers
> > 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200331052222.GB13302%40intel.com.
