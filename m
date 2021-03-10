Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBRH3UOBAMGQEA4XZG7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D20A3344D5
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 18:11:34 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id i10sf9942804pgm.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 09:11:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615396293; cv=pass;
        d=google.com; s=arc-20160816;
        b=LWRwZLYdvnpRyty/lAJpUvxbpoRp2UpiwhHVE+r0Qru0uCh49UncTCtDNVg20YLZg6
         DIal9RIDQwWzCpCuUSSb8OQE8PLqpSIRDM9RCrStU2hyy5hPWW0kZe0m4xLs8lR51jmL
         CerEGa4j0/NLE5F5CQoWugCO3RBuzb/enhCkQVNIta044+ooCtyo+Ff5GyLaXzlIV4DX
         dgK+9T+TTikZeAJqUKpBOK4ytqbTD2TGOhFLiSsEz33PkBvYR5iRLNR8hV6dZ83cS91D
         RCN3zbRcbB4SPgji+Amy9pKjCtlpj+5DxvstzKX/1ckFh7vKqdZIhKOzzKnjPbhI7XnS
         fG7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=eS7uhk5SrewKfT9NaGar4fqAxN4psJm2g2YjLTwzopQ=;
        b=zdYn+wk9f+5CA6J+azAyk02+cUkYTqHMrkaLva+XJQ+Ifx5Kdu/ICFc9lO1IVs2X6L
         779Irdwt4NN5APM12JFDzg+sdV1KxHc/74XQCoBHABUHr/TKP3XZoiZHgWo7MnhrW0Mg
         rHWm5F1ZrElem8QtP8GjusJPvbHulyPzHwcqYPMSH7nj5/SopK+TRV8j5EiucZj8lSBZ
         GKkT+4YVgLy+7fdsKTtmu6zRhoehcR8HAVsrKs3HA8v+ceI3aAPkoMO+zG+IHt0FuOUM
         nvdpe5ZUB/NZB1OFEJKUYadDRrezDa2ygY1d5AMkz+S5SlhtvyIiSWydjpTTwutWgAoO
         iPtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eS7uhk5SrewKfT9NaGar4fqAxN4psJm2g2YjLTwzopQ=;
        b=q727IhgeLS9cJlNdmvaLR3AbTeU7tUhSOQn02Sy9uWexpPR3c/FExF0p/b08LU7gNg
         XZn28sZuOz3VlqllxsGGJtJLy9Bx2SipSXhFzBtrr1+FQ/bk0mbyX4gKitFqj88Qj7dR
         51qqaI8vuBdzQSep6hcpLiFneCPk98+XI2BFk5d6850at6LCbv2R+faW7mb7AC3CcUHP
         hh0aR/BqOc8gd9E0OoUMAT7my1rRAKR8qLxAwZIAqkWKclO4QHocfY/bYbYKaJpMJzbw
         X2iNks5wVh6XoAdCmhAiKIxp6psSTpchkNSDzuMpwpuFodz0D4+SM2CCYRchToN7PkFf
         PnHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eS7uhk5SrewKfT9NaGar4fqAxN4psJm2g2YjLTwzopQ=;
        b=oCMmWmqNVSrormBRKgY7ATKw7xPX8+cAuwUmhP4LqhJLdKkx5Y+98ewOcmb1B4mhte
         okiYZWcg9z2L1yGPzhzrA/BIVEva4hti1EV1k8xrlMQ/mDyrvtfWNl/UE6k+h7rdjKMl
         v81B6we9ZH/QsPuyuypBHkuneAEUm/6ttfHEOvk78e5sV8zZI7ad6IATgmYLLM4JvRzU
         0ltlrMvg6fUSIYRLlednFVPTazAfYsUsb7Gnf+jTUbke/ISOSiPAihWEiticeLxwNQFo
         WtNPZ7OX+8vwlJxV7Ma2b/fWDPAOK1cg7neAy65pU2Qw6mJPfEXRO/ZnxX0vPRzzO7dT
         23lQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tu/vbquotD+4VzOqbIg41DMlnVOWOEe7whom3S+U+TVQvxAyd
	Ml1h6mOo6+H3Xg4Yv5Kcxdg=
X-Google-Smtp-Source: ABdhPJz54iZbcFnyNLvYPvCzielkFEMLU3nHFEUM3f4vnUKxV4piXX18BDxJq04l4IeXUdtaJjynIw==
X-Received: by 2002:a62:ac1a:0:b029:1f9:5ca4:dd4d with SMTP id v26-20020a62ac1a0000b02901f95ca4dd4dmr3581738pfe.68.1615396293017;
        Wed, 10 Mar 2021 09:11:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:f212:: with SMTP id m18ls1199694pfh.11.gmail; Wed, 10
 Mar 2021 09:11:32 -0800 (PST)
X-Received: by 2002:a63:221b:: with SMTP id i27mr3645238pgi.44.1615396292238;
        Wed, 10 Mar 2021 09:11:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615396292; cv=none;
        d=google.com; s=arc-20160816;
        b=wN/ew+W2kIo1UEQos6aRlCNHIKvWG6d1FqSEnBEYCi31kkwJeS0NqX/tuCd2NRZxjh
         4/h/eEGUi+I5fmM8wCuaSgjlhOzL+ibRFTRuQ8ivVA2tUyMvET8CZ9JueR0dLBcKmd4A
         zLrstU8wJvLTcihvz3zMWqbnkMuRmBLdckdBECFfeQogUIOnAqhDvIYjoDaf5Vc4zeSD
         P+Bn5OsZaaye8anmazdBkgJSVQ1mQ6Nymdrz+9YsPYYitgjQNljY3f+vqDIfh2WC+GfS
         rqpTy+V8ydJtmQW4jQtKvzu0hsDGOycjG2AqywgNA39vIdDEENyCFHBDNhtlaVaC6Wl2
         9Q1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=IcnhJ1ojRMcPMlzOVDJczT0MToLDWXaktnZi5lUZ7VE=;
        b=geDVmz7KbSRE7xW60j961l8TUgY7yuBjHIV47jIYO+esD8+w+CsBp1mY93sI/IOeZW
         Yq6U1lRrt8Y9EZUK57+03oMnkEsOEbmEH1+EhDmy9cU/MpZ9ljJ1dYEZ8sZX0k17HUGw
         jhoJkC7e/ZlMZZTcwZRYFC77PsqshCclTgIEQ5s2X1QukvA9MNxJImhYrfutimh9Uiut
         ZhJAUoO1w1sHeIHmznMQhGBJw9/jembW+SGD21o3DzNSlM5yIAOajRXhmlRL1oIy9Yqd
         PRie27tNCbqQcRPCiUUw3Gc+X4nIDdBTZIc1qaxhp9jPHzjlbXZYD87TZ8c8MMstvfY9
         KbxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id z16si16783pju.0.2021.03.10.09.11.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 09:11:32 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: vXTCOatQO5TvyUTHlN+cS1VuIb2Hes9xDvPcSZ6fKES4bBhWrY6WrA5xTFV5DpOWTERTiTajWN
 sx6/l2yw2j1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="187878865"
X-IronPort-AV: E=Sophos;i="5.81,237,1610438400"; 
   d="gz'50?scan'50,208,50";a="187878865"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Mar 2021 09:11:29 -0800
IronPort-SDR: 5I33kYWQj9iY0qlKhP2HGD29TzEhFTKjT2aQzyk9tFSq9eFllXpTTELmxCdhFWQ9vi1/EA4N5r
 /7hy7iM9FrZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,237,1610438400"; 
   d="gz'50?scan'50,208,50";a="509740349"
Received: from lkp-server02.sh.intel.com (HELO ce64c092ff93) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 10 Mar 2021 09:11:27 -0800
Received: from kbuild by ce64c092ff93 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lK2Mo-0000Hz-Jd; Wed, 10 Mar 2021 17:11:26 +0000
Date: Thu, 11 Mar 2021 01:10:45 +0800
From: kernel test robot <lkp@intel.com>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
	Matti Vaittinen <mazziesaccount@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH v2 4/7] regulator: add property parsing and callbacks
 to set protection limits
Message-ID: <202103110108.C5DVmznI-lkp@intel.com>
References: <976edd886660995fa1fd7750a16fc7875d6679bd.1615367099.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="mP3DRpeJDSE+ciuQ"
Content-Disposition: inline
In-Reply-To: <976edd886660995fa1fd7750a16fc7875d6679bd.1615367099.git.matti.vaittinen@fi.rohmeurope.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--mP3DRpeJDSE+ciuQ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Matti,

[FYI, it's a private test report for your RFC patch.]
[auto build test ERROR on a38fd8748464831584a19438cbb3082b5a2dab15]

url:    https://github.com/0day-ci/linux/commits/Matti-Vaittinen/Extend-reg=
ulator-notification-support/20210310-211246
base:   a38fd8748464831584a19438cbb3082b5a2dab15
config: riscv-randconfig-r032-20210309 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project cd9a69=
289c7825d54450cb6829fef2c8e0f1963a)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/a14d17e4af6d54f4808dff28b=
f4e8b9471fdf81e
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Matti-Vaittinen/Extend-regulator-n=
otification-support/20210310-211246
        git checkout a14d17e4af6d54f4808dff28bf4e8b9471fdf81e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Driscv=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic o=
n a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v =3D readw_cpu((void*=
)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           =
~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:88:76: note: expanded from macro 'readw_cp=
u'
   #define readw_cpu(c)            ({ u16 __r =3D le16_to_cpu((__force __le=
16)__raw_readw(c)); __r; })
                                                                           =
             ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from =
macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/regulator/stpmic1_regulator.c:5:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic o=
n a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:57:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v =3D readl_cpu((void*=
)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           =
~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cp=
u'
   #define readl_cpu(c)            ({ u32 __r =3D le32_to_cpu((__force __le=
32)__raw_readl(c)); __r; })
                                                                           =
             ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from =
macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/regulator/stpmic1_regulator.c:5:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic o=
n a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE=
 + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~=
 ^
   arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_c=
pu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from drivers/regulator/stpmic1_regulator.c:5:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic o=
n a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE=
 + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~=
 ^
   arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_c=
pu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_=
le16(v), (c)))
                                                                           =
          ^
   In file included from drivers/regulator/stpmic1_regulator.c:5:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic o=
n a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:61:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE=
 + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~=
 ^
   arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_c=
pu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_=
le32(v), (c)))
                                                                           =
          ^
   In file included from drivers/regulator/stpmic1_regulator.c:5:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic=
 on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> drivers/regulator/stpmic1_regulator.c:139:33: error: incompatible functi=
on pointer types initializing 'int (*)(struct regulator_dev *, int, int, bo=
ol)' (aka 'int (*)(struct regulator_dev *, int, int, _Bool)') with an expre=
ssion of type 'int (struct regulator_dev *)' [-Werror,-Wincompatible-functi=
on-pointer-types]
           .set_over_current_protection =3D stpmic1_set_icc,
                                          ^~~~~~~~~~~~~~~
   drivers/regulator/stpmic1_regulator.c:152:33: error: incompatible functi=
on pointer types initializing 'int (*)(struct regulator_dev *, int, int, bo=
ol)' (aka 'int (*)(struct regulator_dev *, int, int, _Bool)') with an expre=
ssion of type 'int (struct regulator_dev *)' [-Werror,-Wincompatible-functi=
on-pointer-types]
           .set_over_current_protection =3D stpmic1_set_icc,
                                          ^~~~~~~~~~~~~~~
   drivers/regulator/stpmic1_regulator.c:159:33: error: incompatible functi=
on pointer types initializing 'int (*)(struct regulator_dev *, int, int, bo=
ol)' (aka 'int (*)(struct regulator_dev *, int, int, _Bool)') with an expre=
ssion of type 'int (struct regulator_dev *)' [-Werror,-Wincompatible-functi=
on-pointer-types]
           .set_over_current_protection =3D stpmic1_set_icc,
                                          ^~~~~~~~~~~~~~~
   drivers/regulator/stpmic1_regulator.c:173:33: error: incompatible functi=
on pointer types initializing 'int (*)(struct regulator_dev *, int, int, bo=
ol)' (aka 'int (*)(struct regulator_dev *, int, int, _Bool)') with an expre=
ssion of type 'int (struct regulator_dev *)' [-Werror,-Wincompatible-functi=
on-pointer-types]
           .set_over_current_protection =3D stpmic1_set_icc,
                                          ^~~~~~~~~~~~~~~
   drivers/regulator/stpmic1_regulator.c:186:33: error: incompatible functi=
on pointer types initializing 'int (*)(struct regulator_dev *, int, int, bo=
ol)' (aka 'int (*)(struct regulator_dev *, int, int, _Bool)') with an expre=
ssion of type 'int (struct regulator_dev *)' [-Werror,-Wincompatible-functi=
on-pointer-types]
           .set_over_current_protection =3D stpmic1_set_icc,
                                          ^~~~~~~~~~~~~~~
   drivers/regulator/stpmic1_regulator.c:193:33: error: incompatible functi=
on pointer types initializing 'int (*)(struct regulator_dev *, int, int, bo=
ol)' (aka 'int (*)(struct regulator_dev *, int, int, _Bool)') with an expre=
ssion of type 'int (struct regulator_dev *)' [-Werror,-Wincompatible-functi=
on-pointer-types]
           .set_over_current_protection =3D stpmic1_set_icc,
                                          ^~~~~~~~~~~~~~~
   drivers/regulator/stpmic1_regulator.c:494:12: error: conflicting types f=
or 'stpmic1_set_icc'
   static int stpmic1_set_icc(struct regulator_dev *rdev, int lim, int seve=
rity,
              ^
   drivers/regulator/stpmic1_regulator.c:35:12: note: previous declaration =
is here
   static int stpmic1_set_icc(struct regulator_dev *rdev);
              ^
   7 warnings and 7 errors generated.


vim +139 drivers/regulator/stpmic1_regulator.c

ca55b7185b74e7 pascal paillet 2018-10-08  130 =20
7c027c66f2b529 Axel Lin       2019-01-23  131  static const struct regulato=
r_ops stpmic1_ldo_ops =3D {
ca55b7185b74e7 pascal paillet 2018-10-08  132  	.list_voltage =3D regulator=
_list_voltage_linear_range,
ca55b7185b74e7 pascal paillet 2018-10-08  133  	.map_voltage =3D regulator_=
map_voltage_linear_range,
ca55b7185b74e7 pascal paillet 2018-10-08  134  	.is_enabled =3D regulator_i=
s_enabled_regmap,
ca55b7185b74e7 pascal paillet 2018-10-08  135  	.enable =3D regulator_enabl=
e_regmap,
ca55b7185b74e7 pascal paillet 2018-10-08  136  	.disable =3D regulator_disa=
ble_regmap,
ca55b7185b74e7 pascal paillet 2018-10-08  137  	.get_voltage_sel =3D regula=
tor_get_voltage_sel_regmap,
ca55b7185b74e7 pascal paillet 2018-10-08  138  	.set_voltage_sel =3D regula=
tor_set_voltage_sel_regmap,
ca55b7185b74e7 pascal paillet 2018-10-08 @139  	.set_over_current_protectio=
n =3D stpmic1_set_icc,
ca55b7185b74e7 pascal paillet 2018-10-08  140  };
ca55b7185b74e7 pascal paillet 2018-10-08  141 =20

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202103110108.C5DVmznI-lkp%40intel.com.

--mP3DRpeJDSE+ciuQ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
/wPjSZJFy1YCAA==

--mP3DRpeJDSE+ciuQ--
