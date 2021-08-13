Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBAER3KEAMGQEDYOZUAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 039403EB72A
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 16:58:10 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id v40-20020a25abab0000b02905938a82d807sf9459100ybi.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 07:58:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628866689; cv=pass;
        d=google.com; s=arc-20160816;
        b=hm6RkLku+Jyq0h00/Fsb/1nU4vBcfsWIiW1asuqs9KAMT1m64g/Ocp0WcrTr5DLH59
         hp63X1uicylnNT8xzGSLgKKUljUw/Li8/hG65M21K2Fsrylc+1V7zpEPO1YMB4MF+gZ/
         CbdP+H2UGr8EvNE/C4NxqhPruoJ3FtDUkCjfYowx1zJO4XyuAa79Vd4m3UJa7AMjS8Nc
         m1LZDojOPmtlCHRv41N9Lev1PbGyzg6eu/E2Hf7GZvNDMr7CdQIodyakqmtDl8Y0OOTN
         ohpSsXHKc1NjGGx+f9GdefxRKhKk2GkOQjkgezYS6nqhX5y6ocJcSl2YVcd97AKMacfK
         eloQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=49QECt7b9Zlv80E7WM0G8xwTBtQ3tPaHK1E0FWEhlfQ=;
        b=0KwcuGScXw5rg4l9GoT8VVzJrv2tzsugD91ZiJ5K87fQlFuVD+jsZU8yfPX4FT24wv
         e9fYaGc/oX84jDQURYKu//1Riihsuk77AYV0XGer0xcdJsAkM10mzixvxlq7i1ADiRiT
         XB17aAY9okoD/LS/PvjWi32yotxCRdcGJEsFY3wXG8/AxfqFTDJnGU5nL6Yqf42lFBtT
         X6xiVw3v7eOlw/Y+ExOJzk/ls4LKooBWhTkou4ILuXGVkOk5D8erh3JMkrFkonN3Ryvh
         mrikoSwi75UIM5fxgBTQoqJ4cbRBnjylCqbAeHdL+P36jmrRzwiv1DdOtlnx73GMMT+K
         gO0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=49QECt7b9Zlv80E7WM0G8xwTBtQ3tPaHK1E0FWEhlfQ=;
        b=TwZ/YtlWBXyRAkS9w9pHhJiWu7XFpAJuO+1yKDGLIufMeM8ORRdOVKh8JydfSvKpsx
         ESzHflajJy++lZ3h7zX5bO2f/SXI06666PApZZjPGMfDJEvmqz0bS0ji/cI1AgjDgMk2
         XomP68EJfpzvuRerGg8dYQ4t+PQBmKjiBAXpzUaObH+HP6VcEpLTKYulCLjQ7dSi0XAZ
         ohcPumvgbHN2VBqkTziU2Sce+zokuF8werxtsvYoh7xX3wpWmaNP9TdUEQ9cSEIyF4Xn
         gNmOiCMXoX2d9uJhCZVsMEICiqR5QO5Vp5nQev0UZMlomOobun2RAkwYvS230jZQvRkS
         Xsvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=49QECt7b9Zlv80E7WM0G8xwTBtQ3tPaHK1E0FWEhlfQ=;
        b=H2OL74/S1erlUbnBCwxqKhZflNGfAjJFdFgvunT8ealH9Q/jmoVUh0idMvAzprcy8p
         C4BtkWb/tPztWlgZoAHRt4/Ibl5TzOGT7OGmN22kmDQMT2uuYsyxQXg9GPepgtnB10Zm
         fO05ljXCWhxfXZAStO4GPsis21Kpfddqek+hH5MbdBkv0uimZg+tRTjzWNjukvAIq6pn
         vHNMUapyw2P/hh8AtpVS8va47s4bcu7T+92RkeCOGc45wqhNMROznTPLkpdiaBzYVRK/
         v7W/7nvRI1rdjna9RipkwY7WrmUAzuO8hsjKmsVjWO6L7AJvQdJEYvWLrdhKTZsBukty
         nN9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533t8lm6S7I9GaY2SNBR4w0rZtnG9/hDHnhX5GAiMyyoDhgDkhDO
	IHFxRJ2stXMYbUHiiVZTghU=
X-Google-Smtp-Source: ABdhPJx8pbLTte9Zlkrf919355O19qe0O7RtYsceq3LsjHv7/8L2k8nXiv5hDZQU/dZ/HxgtlSqRlg==
X-Received: by 2002:a25:b904:: with SMTP id x4mr3422918ybj.48.1628866688928;
        Fri, 13 Aug 2021 07:58:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9808:: with SMTP id a8ls155851ybo.11.gmail; Fri, 13 Aug
 2021 07:58:08 -0700 (PDT)
X-Received: by 2002:a25:df4b:: with SMTP id w72mr3568315ybg.417.1628866688425;
        Fri, 13 Aug 2021 07:58:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628866688; cv=none;
        d=google.com; s=arc-20160816;
        b=LTgQ4BP5n1Va1sCLD0LfRJe0tslZELfwFvkg7wt14hROO7E+hkdpfEIK5NUt/W1/iS
         7glJ5sBvW8iKEBEL7B3J+TAwX57AK00Gip1VLK4KgndgJAnB9MslSd72Rk1JMlVE4lgW
         XQVnp8fs++djpx9LJP4Ajo1zUG6xXPCdcjBI46tfwPfCmKTgOupQILC0K8Tmq7Df+/1a
         8bPgsl8WYNt6ryoJ5qMoNd/Kqmzd9cmdIFj8bfBX3MlMlxtYLacchduE6sD8NvzFEU+d
         cJDz7Xm/011q+OUIlD55Nc/rboIMXIa+LHCKD0W9gByoxEFKavSw50/fRnoWXJXTQnBl
         sUIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=dH/H0aIft+dkZcJSSm4Z8NZ+6vdH7eF3HGzLd0jgJr0=;
        b=WDrmmKpYm1RpG6VtGqc6I1di4WJFFn5TvrQbx5hMN9MpI8gdidflPxv4KuitBylLBA
         Vi1ppxly7A7Bfc10cRhr1fxsFaF0FsZelVVQ2sxgiTQZRUrLeaWussu0hzsJo4erw3xH
         Zu3w1Kf/wGWQS1mM277zbaQUx2rP4XiEnQ5CSYREdNBc/lMDWYWfwpGiIhqStkxOwyvL
         ayTj0Y/CxkUcqHYNm0PVM9NrTJqm7a4s0wLKeiC/Njaw073HoLM2UQrYs7ldJhTfP0Ll
         Hfn6M/rWkVmJGTsJEeeUjdSgiZGWsM1XUzvodTR/dfyCqhqWvYgge8bdB18F/lNXFzTq
         SFFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id e137si115614ybf.2.2021.08.13.07.58.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Aug 2021 07:58:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10075"; a="276601422"
X-IronPort-AV: E=Sophos;i="5.84,319,1620716400"; 
   d="scan'208";a="276601422"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2021 07:58:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,319,1620716400"; 
   d="scan'208";a="518185420"
Received: from pl-dbox.sh.intel.com (HELO pl-dbox) ([10.239.159.39])
  by FMSMGA003.fm.intel.com with ESMTP; 13 Aug 2021 07:58:03 -0700
Date: Fri, 13 Aug 2021 22:52:09 +0800
From: Philip Li <philip.li@intel.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Randy Dunlap <rdunlap@infradead.org>, kernel test robot <lkp@intel.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild-all@lists.01.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Nathan Chancellor <nathan@kernel.org>
Subject: Re: Error: kernelrelease not valid - run 'make prepare' to update it
Message-ID: <20210813145209.GA1514245@pl-dbox>
References: <202108111155.RvN9J3Hs-lkp@intel.com>
 <5ec75ad9-a861-4402-9c16-ae7cb0aaeaba@infradead.org>
 <CAK7LNATk21qWbgWORfmCLPD3Cieon-fwtuLtFhgOo1XORWJT6g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAK7LNATk21qWbgWORfmCLPD3Cieon-fwtuLtFhgOo1XORWJT6g@mail.gmail.com>
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.31 as
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

On Fri, Aug 13, 2021 at 07:18:45PM +0900, Masahiro Yamada wrote:
> On Wed, Aug 11, 2021 at 12:19 PM Randy Dunlap <rdunlap@infradead.org> wro=
te:
> >
> > On 8/10/21 8:16 PM, kernel test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linu=
x.git master
> > > head:   9e723c5380c6e14fb91a8b6950563d040674afdb
> > > commit: ba64beb17493a4bfec563100c86a462a15926f24 kbuild: check the mi=
nimum assembler version in Kconfig
> > > date:   4 months ago
> > > config: riscv-randconfig-r025-20210810 (attached as .config)
> > > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project =
d39ebdae674c8efc84ebe8dc32716ec353220530)
> > > reproduce (this is a W=3D1 build):
> > >          wget https://raw.githubusercontent.com/intel/lkp-tests/maste=
r/sbin/make.cross -O ~/bin/make.cross
> > >          chmod +x ~/bin/make.cross
> > >          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/l=
inux.git/commit/?id=3Dba64beb17493a4bfec563100c86a462a15926f24
> > >          git remote add linus https://git.kernel.org/pub/scm/linux/ke=
rnel/git/torvalds/linux.git
> > >          git fetch --no-tags linus master
> > >          git checkout ba64beb17493a4bfec563100c86a462a15926f24
> > >          # save the attached .config to linux build tree
> > >          mkdir build_dir
> > >          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cro=
ss O=3Dbuild_dir ARCH=3Driscv prepare
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All errors (new ones prefixed by >>):
> > >
> > >>> Error: kernelrelease not valid - run 'make prepare' to update it
> > > --
> > >     clang --target=3Driscv64-linux-gnu -no-integrated-as --prefix=3Dr=
iscv64-linux-gnu- -Werror=3Dunknown-warning-option: unknown assembler invok=
ed
> > >     scripts/Kconfig.include:50: Sorry, this assembler is not supporte=
d.
> > >     make[3]: *** [scripts/kconfig/Makefile:63: syncconfig] Error 1
> > >     make[2]: *** [Makefile:617: syncconfig] Error 2
> > >     make[1]: *** [Makefile:726: include/config/auto.conf.cmd] Error 2
> > >     make[1]: Failed to remake makefile 'include/config/auto.conf.cmd'=
.
> > >     make[1]: Failed to remake makefile 'include/config/auto.conf'.
> > >>> Error: kernelrelease not valid - run 'make prepare' to update it
> > >     make[1]: Target 'prepare' not remade because of errors.
> > >     make: *** [Makefile:215: __sub-make] Error 2
> > >     make: Target 'prepare' not remade because of errors.
> >
> > Yes, I have noticed this one and a few other ('static') make targets th=
at
> > should not need a .config file. I have a note to myself to ask about th=
ese,
> > so thanks for bringing it up.
>=20
>=20
> I think it is unrelated.
Sorry for the false report, which is a regression in our tool setup and
make.cross script.

>=20
>=20
>=20
> The 0-day bot has already shown the real reason
> of the error:
Thanks for the detail analysis including below reproduce output, it's our f=
ault
that we didn't notice the breakage of riscv. We will fix it soon.

>=20
>    clang --target=3Driscv64-linux-gnu -no-integrated-as
> --prefix=3Driscv64-linux-gnu- -Werror=3Dunknown-warning-option: unknown
> assembler invoked
>    scripts/Kconfig.include:50: Sorry, this assembler is not supported.
>=20
>=20
>=20
>=20
> This happens when the proper toolchains are not found.
>=20
> That is, make.cross passed CROSS_COMPILE=3Driscv64-linux-gnu-
> to the make command line, but riscv64-linux-gnu binutils
> are not installed on the system.
>=20
>=20
>=20
> Without installing binutils-riscv64-linux-gnu,
> I can see a similar error log.
>=20
>=20
>=20
>=20
>=20
> masahiro@grover:~/ref/linux$ wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
> --2021-08-13 18:57:01--
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> Resolving raw.githubusercontent.com (raw.githubusercontent.com)...
> 185.199.110.133, 185.199.109.133, 185.199.111.133, ...
> Connecting to raw.githubusercontent.com
> (raw.githubusercontent.com)|185.199.110.133|:443... connected.
> HTTP request sent, awaiting response... 200 OK
> Length: 9655 (9.4K) [text/plain]
> Saving to: =E2=80=98/home/masahiro/bin/make.cross=E2=80=99
>=20
> /home/masahiro/bin/make.cross
> 100%[=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D>]
>   9.43K  --.-KB/s    in 0s
>=20
> 2021-08-13 18:57:01 (44.7 MB/s) - =E2=80=98/home/masahiro/bin/make.cross=
=E2=80=99
> saved [9655/9655]
>=20
> masahiro@grover:~/ref/linux$ chmod +x ~/bin/make.cross
> masahiro@grover:~/ref/linux$ git checkout
> ba64beb17493a4bfec563100c86a462a15926f24
> HEAD is now at ba64beb17493 kbuild: check the minimum assembler
> version in Kconfig
> masahiro@grover:~/ref/linux$ rm -rf build_dir; mkdir build_dir
> masahiro@grover:~/ref/linux$ zcat  ~/Downloads/config.gz  > build_dir/.co=
nfig
> masahiro@grover:~/ref/linux$ COMPILER_INSTALL_PATH=3D$HOME/0day
> COMPILER=3Dclang make.cross O=3Dbuild_dir ARCH=3Driscv prepare
> Compiler will be installed in /home/masahiro/0day
> make --keep-going CONFIG_OF_ALL_DTBS=3Dy CONFIG_DTC=3Dy
> HOSTCC=3D/home/masahiro/0day/clang/bin/clang
> CC=3D/home/masahiro/0day/clang/bin/clang
> LD=3D/home/masahiro/0day/clang/bin/ld.lld
> HOSTLD=3D/home/masahiro/0day/clang/bin/ld.lld AR=3Dllvm-ar NM=3Dllvm-nm
> STRIP=3Dllvm-strip OBJDUMP=3Dllvm-objdump OBJSIZE=3Dllvm-size
> READELF=3Dllvm-readelf HOSTCXX=3Dclang++ HOSTAR=3Dllvm-ar
> CROSS_COMPILE=3Driscv64-linux-gnu- --jobs=3D16 O=3Dbuild_dir ARCH=3Driscv
> prepare
> make[1]: Entering directory '/home/masahiro/ref/linux/build_dir'
>   SYNC    include/config/auto.conf
>   GEN     Makefile
>   HOSTCC  scripts/basic/fixdep
>   HOSTCC  scripts/kconfig/conf.o
>   HOSTCC  scripts/kconfig/confdata.o
>   HOSTCC  scripts/kconfig/expr.o
>   LEX     scripts/kconfig/lexer.lex.c
>   YACC    scripts/kconfig/parser.tab.[ch]
>   HOSTCC  scripts/kconfig/preprocess.o
>   HOSTCC  scripts/kconfig/symbol.o
>   HOSTCC  scripts/kconfig/util.o
>   HOSTCC  scripts/kconfig/lexer.lex.o
>   HOSTCC  scripts/kconfig/parser.tab.o
>   HOSTLD  scripts/kconfig/conf
> /home/masahiro/0day/clang/bin/clang --target=3Driscv64-linux-gnu
> -no-integrated-as --prefix=3Driscv64-linux-gnu-
> -Werror=3Dunknown-warning-option: unknown assembler invoked
> scripts/Kconfig.include:50: Sorry, this assembler is not supported.
> make[3]: *** [../scripts/kconfig/Makefile:63: syncconfig] Error 1
> make[2]: *** [../Makefile:617: syncconfig] Error 2
> make[1]: *** [/home/masahiro/ref/linux/Makefile:726:
> include/config/auto.conf] Error 2
> make[1]: Failed to remake makefile 'include/config/auto.conf'.
> make[1]: Failed to remake makefile 'include/config/auto.conf.cmd'.
>   GEN     Makefile
>   WRAP    arch/riscv/include/generated/uapi/asm/errno.h
>   WRAP    arch/riscv/include/generated/uapi/asm/fcntl.h
>   WRAP    arch/riscv/include/generated/uapi/asm/ioctl.h
>   WRAP    arch/riscv/include/generated/uapi/asm/ioctls.h
>   WRAP    arch/riscv/include/generated/uapi/asm/ipcbuf.h
>   WRAP    arch/riscv/include/generated/uapi/asm/mman.h
>   WRAP    arch/riscv/include/generated/uapi/asm/msgbuf.h
>   WRAP    arch/riscv/include/generated/uapi/asm/param.h
>   WRAP    arch/riscv/include/generated/uapi/asm/poll.h
>   WRAP    arch/riscv/include/generated/uapi/asm/posix_types.h
>   WRAP    arch/riscv/include/generated/uapi/asm/resource.h
>   WRAP    arch/riscv/include/generated/uapi/asm/sembuf.h
>   WRAP    arch/riscv/include/generated/uapi/asm/setup.h
>   WRAP    arch/riscv/include/generated/uapi/asm/shmbuf.h
>   WRAP    arch/riscv/include/generated/uapi/asm/siginfo.h
>   WRAP    arch/riscv/include/generated/uapi/asm/signal.h
>   WRAP    arch/riscv/include/generated/uapi/asm/socket.h
>   WRAP    arch/riscv/include/generated/uapi/asm/sockios.h
>   WRAP    arch/riscv/include/generated/uapi/asm/stat.h
>   WRAP    arch/riscv/include/generated/uapi/asm/statfs.h
>   WRAP    arch/riscv/include/generated/uapi/asm/swab.h
>   WRAP    arch/riscv/include/generated/uapi/asm/termbits.h
>   WRAP    arch/riscv/include/generated/uapi/asm/termios.h
>   WRAP    arch/riscv/include/generated/uapi/asm/types.h
> Error: kernelrelease not valid - run 'make prepare' to update it
>   UPD     include/config/kernel.release
>   HOSTCC  scripts/dtc/dtc.o
>   HOSTCC  scripts/dtc/flattree.o
>   HOSTCC  scripts/dtc/fstree.o
>   HOSTCC  scripts/dtc/data.o
>   HOSTCC  scripts/dtc/livetree.o
>   HOSTCC  scripts/dtc/treesource.o
>   HOSTCC  scripts/dtc/srcpos.o
>   HOSTCC  scripts/dtc/checks.o
>   HOSTCC  scripts/dtc/util.o
>   UPD     include/generated/uapi/linux/version.h
>   LEX     scripts/dtc/dtc-lexer.lex.c
>   YACC    scripts/dtc/dtc-parser.tab.[ch]
>   HOSTCC  scripts/dtc/yamltree.o
>   HOSTCC  scripts/dtc/libfdt/fdt.o
>   UPD     include/generated/utsrelease.h
>   HOSTCC  scripts/dtc/libfdt/fdt_ro.o
>   HOSTCC  scripts/dtc/libfdt/fdt_wip.o
>   HOSTCC  scripts/dtc/libfdt/fdt_sw.o
>   HOSTCC  scripts/dtc/libfdt/fdt_rw.o
>   WRAP    arch/riscv/include/generated/asm/early_ioremap.h
>   WRAP    arch/riscv/include/generated/asm/extable.h
>   WRAP    arch/riscv/include/generated/asm/flat.h
>   WRAP    arch/riscv/include/generated/asm/kvm_para.h
>   HOSTCC  scripts/dtc/libfdt/fdt_strerror.o
>   WRAP    arch/riscv/include/generated/asm/user.h
>   WRAP    arch/riscv/include/generated/asm/vmlinux.lds.h
>   WRAP    arch/riscv/include/generated/asm/bugs.h
>   WRAP    arch/riscv/include/generated/asm/checksum.h
>   WRAP    arch/riscv/include/generated/asm/compat.h
>   WRAP    arch/riscv/include/generated/asm/device.h
>   WRAP    arch/riscv/include/generated/asm/div64.h
>   WRAP    arch/riscv/include/generated/asm/dma-mapping.h
>   WRAP    arch/riscv/include/generated/asm/dma.h
>   WRAP    arch/riscv/include/generated/asm/emergency-restart.h
>   WRAP    arch/riscv/include/generated/asm/exec.h
>   WRAP    arch/riscv/include/generated/asm/fb.h
>   WRAP    arch/riscv/include/generated/asm/hardirq.h
>   WRAP    arch/riscv/include/generated/asm/hw_irq.h
>   WRAP    arch/riscv/include/generated/asm/irq_regs.h
>   WRAP    arch/riscv/include/generated/asm/kmap_size.h
>   WRAP    arch/riscv/include/generated/asm/local.h
>   WRAP    arch/riscv/include/generated/asm/local64.h
>   WRAP    arch/riscv/include/generated/asm/msi.h
>   HOSTCC  scripts/dtc/libfdt/fdt_empty_tree.o
>   WRAP    arch/riscv/include/generated/asm/percpu.h
>   WRAP    arch/riscv/include/generated/asm/preempt.h
>   HOSTCC  scripts/dtc/libfdt/fdt_addresses.o
>   WRAP    arch/riscv/include/generated/asm/rwonce.h
>   WRAP    arch/riscv/include/generated/asm/serial.h
>   WRAP    arch/riscv/include/generated/asm/shmparam.h
>   WRAP    arch/riscv/include/generated/asm/simd.h
>   WRAP    arch/riscv/include/generated/asm/softirq_stack.h
>   WRAP    arch/riscv/include/generated/asm/topology.h
>   WRAP    arch/riscv/include/generated/asm/trace_clock.h
>   WRAP    arch/riscv/include/generated/asm/unaligned.h
>   HOSTCC  scripts/dtc/libfdt/fdt_overlay.o
>   WRAP    arch/riscv/include/generated/asm/vga.h
>   HOSTCC  scripts/dtc/fdtoverlay.o
>   WRAP    arch/riscv/include/generated/asm/xor.h
>   HOSTCC  scripts/dtc/dtc-lexer.lex.o
>   HOSTCC  scripts/dtc/dtc-parser.tab.o
>   HOSTLD  scripts/dtc/fdtoverlay
>   HOSTLD  scripts/dtc/dtc
> make[1]: Target 'prepare' not remade because of errors.
> make[1]: Leaving directory '/home/masahiro/ref/linux/build_dir'
> make: *** [Makefile:215: __sub-make] Error 2
> make: Target 'prepare' not remade because of errors.
>=20
>=20
>=20
>=20
>=20
>=20
> It can be fixed by installing riscv64-linux-gnu toolchains.
>=20
> On debian or its variants,
>=20
> you can do it by
> "sudo apt install binutils-riscv64-linux-gnu"
>=20
>=20
> Or, you can download it from
> https://download.01.org/0day-ci/cross-package/gcc-11.2.0-nolibc/
>=20
>=20
>=20
> Then, the 0day bot command will proceed.
>=20
>=20
>=20
>=20
>=20
>=20
> masahiro@grover:~/ref/linux$ sudo apt install binutils-riscv64-linux-gnu
> Reading package lists... Done
> Building dependency tree... Done
> Reading state information... Done
> The following packages were automatically installed and are no longer req=
uired:
>   cpp-10-riscv64-linux-gnu cpp-riscv64-linux-gnu
> gcc-10-riscv64-linux-gnu-base libatomic1-riscv64-cross
> libc6-dev-riscv64-cross libc6-riscv64-cross
> libgcc-10-dev-riscv64-cross
>   libgcc-s1-riscv64-cross libgomp1-riscv64-cross linux-libc-dev-riscv64-c=
ross
> Use 'sudo apt autoremove' to remove them.
> Suggested packages:
>   binutils-doc
> The following NEW packages will be installed:
>   binutils-riscv64-linux-gnu
> 0 upgraded, 1 newly installed, 0 to remove and 9 not upgraded.
> Need to get 1,187 kB of archives.
> After this operation, 8,838 kB of additional disk space will be used.
> Get:1 http://jp.archive.ubuntu.com/ubuntu hirsute/main amd64
> binutils-riscv64-linux-gnu amd64 2.36.1-6ubuntu1 [1,187 kB]
> Fetched 1,187 kB in 0s (4,826 kB/s)
> Selecting previously unselected package binutils-riscv64-linux-gnu.
> (Reading database ... 478665 files and directories currently installed.)
> Preparing to unpack .../binutils-riscv64-linux-gnu_2.36.1-6ubuntu1_amd64.=
deb ...
> Unpacking binutils-riscv64-linux-gnu (2.36.1-6ubuntu1) ...
> Setting up binutils-riscv64-linux-gnu (2.36.1-6ubuntu1) ...
> Processing triggers for libc-bin (2.33-0ubuntu5) ...
> Processing triggers for man-db (2.9.4-2) ...
>=20
> masahiro@grover:~/ref/linux$ COMPILER_INSTALL_PATH=3D$HOME/0day
> COMPILER=3Dclang make.cross O=3Dbuild_dir ARCH=3Driscv prepare
> Compiler will be installed in /home/masahiro/0day
> make --keep-going CONFIG_OF_ALL_DTBS=3Dy CONFIG_DTC=3Dy
> HOSTCC=3D/home/masahiro/0day/clang/bin/clang
> CC=3D/home/masahiro/0day/clang/bin/clang
> LD=3D/home/masahiro/0day/clang/bin/ld.lld
> HOSTLD=3D/home/masahiro/0day/clang/bin/ld.lld AR=3Dllvm-ar NM=3Dllvm-nm
> STRIP=3Dllvm-strip OBJDUMP=3Dllvm-objdump OBJSIZE=3Dllvm-size
> READELF=3Dllvm-readelf HOSTCXX=3Dclang++ HOSTAR=3Dllvm-ar
> CROSS_COMPILE=3Driscv64-linux-gnu- --jobs=3D16 O=3Dbuild_dir ARCH=3Driscv
> prepare
> make[1]: Entering directory '/home/masahiro/ref/linux/build_dir'
>   SYNC    include/config/auto.conf
>   GEN     Makefile
> .config:792:warning: symbol value 'm' invalid for MTD_NAND_ECC_SW_HAMMING
> *
> * Restart config...
> *
> *
> * CPU/Task time and stats accounting
> *
> Cputime accounting
>   1. Simple tick based cputime accounting (TICK_CPU_ACCOUNTING)
> > 2. Full dynticks CPU time accounting (VIRT_CPU_ACCOUNTING_GEN)
> choice[1-2?]: 2
> Fine granularity task level IRQ time accounting (IRQ_TIME_ACCOUNTING)
> [N/y/?] (NEW)
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> --
> Best Regards
> Masahiro Yamada
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210813145209.GA1514245%40pl-dbox.
