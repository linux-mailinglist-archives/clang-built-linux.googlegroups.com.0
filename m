Return-Path: <clang-built-linux+bncBDXJDZXNUMORB7X32WCAMGQE6FDNTNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A187B3769B0
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 May 2021 19:50:55 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id k21-20020a0568302435b02902e3741cb6c1sf884646ots.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 May 2021 10:50:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620409854; cv=pass;
        d=google.com; s=arc-20160816;
        b=erFXatFonr1WegrqGJAvg4iJluYg1PxQl8iRrwf4B7pHb8Bh4wMueC4b5z15w8pXJv
         +aOVgGsDYaTRDmygk/gyM27r3lh1E4laPO06XlX7j6x96IkE+K53MuxE0mtFQto3sRde
         di6DQUW9YWlSOdIDxhIkZZ9j4LMRdzH2CdFexVXR8Qn4EeVT8geKbG2t+qRYFau6lm5p
         CkaL5e24oEG7suofhsd3FkEtxog6EuFpQMnuUig5sV3fHAjTsoRreB/GZeNKFoYSiVt3
         usuvWl8uLKe3SrECAXAb7JWCRn6IYvwdNb+eQiiFB5zvDwhkG/hvwuIFfkGc0E9yiaHK
         E2XQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=5cissf74/zfvy/2WNuUn4maDZ3RqLoI05joRryfHbq0=;
        b=uZQasB+RJd6vTgdz/YNZp5Ao7Drlq3O9tE5wxMsHql40wEEAeempphuzyM2SGA/dQX
         GWwhBe8R2YU987ZS6VdOdQ4ffNLevtpTUhjLzWoSFQZEHeoFWGrfKtKnD2USAqpQP5UR
         lFTHUfMthyp3imjPASlyF/oghMERYrixx7tsLo5Nb9doxLYHi0Bhc2F9EC5mk8UGq9r+
         y0vYwbEYQnKVYotcMw+RbNpVfB3pWfxDKlW8qM8czDNV7mDRPSNDfmPbBx8DAlU5dYaL
         lzBBD3cdM0uXY1u6VgFVvszduG1ZbPiAmq/AX6Hzax1XTgE56KC1dE8EvP5A19/AyI2S
         SMdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZMnagMd0;
       spf=pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5cissf74/zfvy/2WNuUn4maDZ3RqLoI05joRryfHbq0=;
        b=RQiDR14kcr4tUUKqIOAgx6/3V4qRv/LA1eN/KCMshlCUxSPqQf4qmQfORvDOOVijae
         EM00WBIdO/zVSH8irT5yMCyy8mxVUba4jF5EWGfo5ywXTZWP+/Xnne+2esD6OYBfURy5
         GP4IKscLgT0f2zsBliNnt0uwSw5Bk719sVH2+i8Yf1Hhk6o1ThUth13LL7VYhQHdDuBK
         Uv/qXEqPyqFMgZ60oY7qZePTwkBofWUAfcgLR29OJzjSGM4EiMnkqMS27d10wzxfWKiY
         kpu02RM79TStsaUxdp4+1sBxDPW/ryxNNV21zgd8nyxeixY8u7yY3YZaWQqWAKpk/rwf
         PY/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5cissf74/zfvy/2WNuUn4maDZ3RqLoI05joRryfHbq0=;
        b=eLWd9AbqWT8wTEecKPaICvJo2YKW3b/yLQ2MNPFnk70Na+E7CwpGqy3GDS7Sqyli6R
         sNhuMPlyFmWayZimKhHQLkJ3FCF/cMtWdwwjEHWcbKBuUZfRMw9I4PBYvOOaVSQwAibJ
         l2T55BWpUrW6cqqOA3czR6NfiLTv3fNppDsmo7OLxCoYJjScHbiNX/6cfDEpP9+/mspr
         PyXHxmrI/e8ZliHUHuOCZ96npC5TyCIXHsXqET7VWHV+rUZzvjUYt+lWhO7dHbVjsJfU
         XnriHeU2t75zgtA4fLLPhebe9PTdpTkE90XzUVpyWnIwm1CeiOk93IBGTjVhJsO+aDUU
         3FEg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530oiwhBiL7413q5aYdhhg70EWtVYhmwUfll22PlTTnVv+8sXRlx
	SL+2Xslj5NSRBMK9rscHppw=
X-Google-Smtp-Source: ABdhPJyyZmLpPsKJ2hQ7pXcIcQF2bd2LKkYeP2DHeH/b6NZiPKhQsu1TPGY1duHn51uIuvmw4bCOfA==
X-Received: by 2002:a9d:2212:: with SMTP id o18mr9556153ota.91.1620409854400;
        Fri, 07 May 2021 10:50:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:a6f:: with SMTP id 102ls2017930otg.8.gmail; Fri, 07 May
 2021 10:50:54 -0700 (PDT)
X-Received: by 2002:a9d:be2:: with SMTP id 89mr9166931oth.269.1620409854000;
        Fri, 07 May 2021 10:50:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620409853; cv=none;
        d=google.com; s=arc-20160816;
        b=OxbFRU1tpZWsFCAmtx3/f0QGlUEslkYEnYGMIbiPEIR33pMiVT6aD4toW3fwcUVaqP
         2J8luTZV6yc/5izYCryOb1QMFs7/9FGSbjb/trC68QqRqNzbeg84fep+8Cviga1HvPGJ
         GspSl8DJltS9UU1h93tTwzjmoQARI92uBgN61WPW92IDBUItyHmc3h68cNCeN1ce1kmh
         fhx7Tn81mdtNe8247IUqy2kMpDGDgxCncD2PV2DNn2aImT9JPhXUW/BvWJY5O/W2LeQa
         Laenui5P5jY4hKQsoBudWgG46jKXyASdaPPSBVFc43U+xJCOaO5f6fVIe/R5JPibOiVM
         L1Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=DSNpCzw8LD1WG93QQuFsR01YkfcYXmae7I0b0AL/dW4=;
        b=OW8Q3egWb+5O+/yJbQBHlDoYQ68HYgZxCyiwhbZwyPhryyFtmXwNNHwS0LSqV1UjUH
         Ksg2GsE+38Yndmumb03ESiKJaDQfzCFaxD8DQtAVOJZfebIhgdjV2+7emkm2vyA0IsA3
         RUZj60WePMnDR1i7th0KiusuClFg5O9iTVwfupVaxoQayxeNU9/Btut5eBSP1wMwTEgA
         sKMZhXbC+4NcuZ9lAxcMOr6gitCxhwfx93dUHlxHcOS0VpVX3Us4eylQQkSPe4ZFKmQY
         JPBdooBlP/kkOzAO3MBh7N5lxD4AdkpFRU2E1Izxg/A7wZGt3g4bfDWGyfnkLwv6+OdE
         Bqng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZMnagMd0;
       spf=pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o7si184976otk.1.2021.05.07.10.50.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 May 2021 10:50:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8CE0061431;
	Fri,  7 May 2021 17:50:52 +0000 (UTC)
Date: Fri, 7 May 2021 12:50:51 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Vidya Sagar <vidyas@nvidia.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: drivers/pci/controller/dwc/pcie-tegra194.c:243:27: warning:
 unused variable 'pcie_gen_freq'
Message-ID: <20210507175051.GA1521138@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202105080046.TTuEQIwi-lkp@intel.com>
X-Original-Sender: helgaas@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ZMnagMd0;       spf=pass
 (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=helgaas@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Transfer-Encoding: quoted-printable
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

On Sat, May 08, 2021 at 12:33:52AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t master
> head:   a48b0872e69428d3d02994dcfad3519f01def7fa
> commit: 7f100744749e4fe547dece3bb6557fae5f0a7252 PCI: tegra: Add Tegra194=
 MCFG quirks for ECAM errata
> date:   3 weeks ago
> config: arm64-randconfig-r013-20210507 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a3a8=
a1a15b524d91b5308db68e9d293b34cd88dd)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.=
git/commit/?id=3D7f100744749e4fe547dece3bb6557fae5f0a7252
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/=
git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 7f100744749e4fe547dece3bb6557fae5f0a7252
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross W=
=3D1 ARCH=3Darm64=20

Thanks for the report!

Just FYI, I followed the instructions above and got this:

  12:32:35 ~/linux (kbuild)$ COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3D=
clang make.cross W=3D1 ARCH=3Darm64
  Compiler will be installed in /home/bjorn/0day
  cd: received redirection to `https://download.01.org/0day-ci/cross-packag=
e/'
  lftpget -c https://download.01.org/0day-ci/cross-package/./clang-latest/c=
lang.tar.xz
  tar Jxf clang-latest/clang.tar.xz -C /home/bjorn/0day
  make CONFIG_OF_ALL_DTBS=3Dy CONFIG_DTC=3Dy HOSTCC=3D/home/bjorn/0day/clan=
g-latest/bin/clang CC=3D/home/bjorn/0day/clang-latest/bin/clang LD=3D/home/=
bjorn/0day/clang-latest/bin/ld.lld HOSTLD=3D/home/bjorn/0day/clang-latest/b=
in/ld.lld AR=3D/home/bjorn/0day/clang-latest/bin/llvm-ar NM=3D/home/bjorn/0=
day/clang-latest/bin/llvm-nm STRIP=3D/home/bjorn/0day/clang-latest/bin/llvm=
-strip OBJDUMP=3D/home/bjorn/0day/clang-latest/bin/llvm-objdump OBJSIZE=3D/=
home/bjorn/0day/clang-latest/bin/llvm-size READELF=3D/home/bjorn/0day/clang=
-latest/bin/llvm-readelf HOSTCXX=3D/home/bjorn/0day/clang-latest/bin/clang+=
+ HOSTAR=3D/home/bjorn/0day/clang-latest/bin/llvm-ar CROSS_COMPILE=3Daarch6=
4-linux-gnu- --jobs=3D16 W=3D1 ARCH=3Darm64
  make: /home/bjorn/0day/clang-latest/bin/clang: Command not found
    SYNC    include/config/auto.conf.cmd
    HOSTCC  scripts/basic/fixdep
  /bin/sh: 1: /home/bjorn/0day/clang-latest/bin/clang: not found
  make[2]: *** [scripts/Makefile.host:95: scripts/basic/fixdep] Error 127
  make[1]: *** [Makefile:533: scripts_basic] Error 2
  make: *** [Makefile:709: include/config/auto.conf.cmd] Error 2
  make: *** [include/config/auto.conf.cmd] Deleting file 'include/generated=
/autoconf.h'

After adding a symlink "clang-latest -> clang/", it worked as
expected and reproduced the warning.

But I guess I'll wait for Vidya to fix it.

> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
>    In file included from drivers/pci/controller/dwc/pcie-tegra194.c:25:
>    In file included from include/linux/pci-acpi.h:12:
>    In file included from include/linux/acpi.h:35:
>    In file included from include/acpi/acpi_io.h:7:
>    In file included from arch/arm64/include/asm/acpi.h:12:
>    include/linux/efi.h:1093:34: warning: passing 1-byte aligned argument =
to 4-byte aligned parameter 2 of 'get_var' may result in an unaligned point=
er access [-Walign-mismatch]
>            status =3D get_var(L"SecureBoot", &EFI_GLOBAL_VARIABLE_GUID, N=
ULL, &size,
>                                            ^
>    include/linux/efi.h:1101:24: warning: passing 1-byte aligned argument =
to 4-byte aligned parameter 2 of 'get_var' may result in an unaligned point=
er access [-Walign-mismatch]
>            get_var(L"SetupMode", &EFI_GLOBAL_VARIABLE_GUID, NULL, &size, =
&setupmode);
>                                  ^
> >> drivers/pci/controller/dwc/pcie-tegra194.c:243:27: warning: unused var=
iable 'pcie_gen_freq' [-Wunused-const-variable]
>    static const unsigned int pcie_gen_freq[] =3D {
>                              ^
>    drivers/pci/controller/dwc/pcie-tegra194.c:250:18: warning: unused var=
iable 'event_cntr_ctrl_offset' [-Wunused-const-variable]
>    static const u32 event_cntr_ctrl_offset[] =3D {
>                     ^
>    drivers/pci/controller/dwc/pcie-tegra194.c:259:18: warning: unused var=
iable 'event_cntr_data_offset' [-Wunused-const-variable]
>    static const u32 event_cntr_data_offset[] =3D {
>                     ^
>    5 warnings generated.
>=20
>=20
> vim +/pcie_gen_freq +243 drivers/pci/controller/dwc/pcie-tegra194.c
>=20
> c57247f940e8ea Vidya Sagar 2020-03-03  242 =20
> 56e15a238d9278 Vidya Sagar 2019-08-13 @243  static const unsigned int pci=
e_gen_freq[] =3D {
> 56e15a238d9278 Vidya Sagar 2019-08-13  244  	GEN1_CORE_CLK_FREQ,
> 56e15a238d9278 Vidya Sagar 2019-08-13  245  	GEN2_CORE_CLK_FREQ,
> 56e15a238d9278 Vidya Sagar 2019-08-13  246  	GEN3_CORE_CLK_FREQ,
> 56e15a238d9278 Vidya Sagar 2019-08-13  247  	GEN4_CORE_CLK_FREQ
> 56e15a238d9278 Vidya Sagar 2019-08-13  248  };
> 56e15a238d9278 Vidya Sagar 2019-08-13  249 =20
>=20
> :::::: The code at line 243 was first introduced by commit
> :::::: 56e15a238d92788a2d09e0c5c26a5de1b3156931 PCI: tegra: Add Tegra194 =
PCIe support
>=20
> :::::: TO: Vidya Sagar <vidyas@nvidia.com>
> :::::: CC: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210507175051.GA1521138%40bjorn-Precision-5520.
