Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBA5M4PYQKGQE67GX4LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 899A015142C
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 Feb 2020 03:25:08 +0100 (CET)
Received: by mail-yw1-xc3b.google.com with SMTP id 13sf24191808yww.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Feb 2020 18:25:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580783107; cv=pass;
        d=google.com; s=arc-20160816;
        b=pHVm1SefaTEiuifC12SGa+wz+dfRekPjR8Ha9+oSTo04M8QJ7+GH0NLlBtLVd2vbzR
         OQTo5NPJvAHhUelaYjmdFgHrsgBtI2I7cc4B4WYh1Cj2Du1WH8uvbNEm5wyQaALEorbZ
         1bUZan2QmUtDzbMYRz3MyAfWRYUVDpNq5uATdUerfBMhifTpaLWmeOyNt/KPaZoF91GD
         kZ2hNOs2vqNiWq0fZo2kMOt295Dfw5nfPh6tJE4G3h3swzuuFyacgvuWKJemw6aR1boD
         lqjlyrhWT44uVE1Uj8lddphDfU4g+/TxhtG9ydnvH1OTRJ6FSwroIwiXYa2wHtxz6Kzc
         x1+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7GMg5hFTjFCJ7G8riz6JOBqYcUobkT2kXmz2UJdV5HI=;
        b=TE8tsz5j5z9qWaxgoDsJbBx80rqLUnrhjc4tXdhnO94hlPb4FSnb5FNy5jqxYOpUfa
         SWEqIx7zAh/FbonIjw0/4EeTeXWKcVdS4OKfVtv+StEzKH+t7t1OGMEW8MfOQ51BF87h
         JXBmetm7udZZ4bKVDIb//5QBD3gFBT/e9zKXkKNFK15/B6wqVCR93quWbvLyHefirdP0
         sIw3TbETrx2pvFGcLCVlj+L3Mjl5H4CC6HA/Z25JvHVsk3ZpHJTlT5cos0+Au971dyMH
         0qanp/knGQyXtiBXEKOZ4RYmKXt0uuXs1dlNkOtDD2q/AUfTSSYRpnvsbnRRRZmaUc/m
         upnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7GMg5hFTjFCJ7G8riz6JOBqYcUobkT2kXmz2UJdV5HI=;
        b=M6oIADfLI3n3ZbNp3zdPV7LqgJtDeadjXHlr6p7tFXXJkF2uhpaHeCxWmuc6PfcA9U
         95nLB7+MDb2kyYq8n4ev1IGV4pRcTbonpLN+dWKj4Ebad3Fx8QZvNah5B+LSVc+AlKOI
         r3JMAWmeHISmJbvzHcLPLt90HcPizjHFxFXyDKv5Dl5ExJX13yppREATW7o/Ib3SMBeP
         3lFluDyIStXFDDXbE8DEl0JC6ZGosCJwPZ3Mi3AXihK0IOmAXQDFBeuD4QYeGBpLzyGi
         LCAIGRIk8icso2SKjZK5NHlEDtz+mRM88Bhg6jzeQYePGig8fuAbHp4IhFoiXdzBqAyk
         yRHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7GMg5hFTjFCJ7G8riz6JOBqYcUobkT2kXmz2UJdV5HI=;
        b=b6PuCsZnBCXBOPD98kf1+l3shiqzuQe2i8GCSWnsWUw26iWDCJMdTLKxYdtnzsDH9W
         PnFTikiD9dfiBOE4Q13x5WMJnDdeEChg6MoPiBAUnM8mqtL4aPKHU/ucUnxFcwaKp0Bf
         9SSAzd6WPjqgkeRmpPH6holRr4ConxGKhRTtRoo7l+wgom4R5XDwNmUq+YAVQt47iTd0
         HTUmpLM1f6eqbVRjdsvuUvTMMo0ca7rVXMlY3eVa26nGBu13SVdFt+w2WEfs0tYOX4hC
         8sqEslMODsOp3YEVo1sryeOlJk+88GzOwprbjdF2sjCYqNYQlPJoRZ819xhRKHyKd5N1
         bzxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVweQa4p076HLRHuS1G5cZpaBN1o8ESn4gtYMFFuZujdfbPtR7r
	pfA8c0Rg0WlRSn3uiTeo8/A=
X-Google-Smtp-Source: APXvYqyKkdV7/Pv8JstOzkKMM/Y8QBr61KDjax/WoAro7osHX0LRDg6PWfN8sk0lEUmUKFbdr4ODCw==
X-Received: by 2002:a81:4b10:: with SMTP id y16mr3106340ywa.226.1580783107303;
        Mon, 03 Feb 2020 18:25:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2c58:: with SMTP id s85ls379402ybs.3.gmail; Mon, 03 Feb
 2020 18:25:06 -0800 (PST)
X-Received: by 2002:a25:90b:: with SMTP id 11mr24442362ybj.0.1580783106764;
        Mon, 03 Feb 2020 18:25:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580783106; cv=none;
        d=google.com; s=arc-20160816;
        b=qIPkYvEByKjFvkhavnnQBo1fPHZhzP2PgCxl1SgS6oQ3Bw+7Fbn7ftSFQHBOjlg9vI
         GXu53FF3vxHSjpd1RoZDtQcBzORjChD/EYpG3QJv/I1huDsOfaRkHGTmR8eVIk06aIfL
         OJ+SCwtmRJ3y45KgcBmivs60l/0lHBvJ/r53FM/CMvOaXVmysKVaQFBxUzhbRznEQf0R
         2rtKQbQxhdKJ46wS9i7E8DyH8Dnk5Y45Hohp0HDZfUAkX8bCqdAwz86y6u+rQDegB/Qi
         Pb9U9N/mJrZJWi4TyucSEjyQWfomSmBU+oe7ntipAqCfXxnT/Rb/tyS4a59gG3u3u3Mv
         83Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=M4crCYziW05uAEyO74y7dOC+cqseBncicHlhbN8pc3Q=;
        b=V5bhfZuHdLYsVQkM0Hdk56eGZpQB4OZQjDtbdSfYkaxDGQ3+1YlRHZ/IASsFT6yMZW
         kXWpLenYsKqP/YYj3JjeIyufbHdEPbRlSN3uW1bipfsrrQjeRE0vxWORm/hgd5cvXrC8
         chokZeK0u9O5Q4+cv0UNphOHxFVO+L9lvCmKii3I8kUgWEBcpNMh2QW0jwhj7OxoRSfm
         yK/ttcocJOOT83q4fUKfnOyJxyObPXlBZ+EijNiATDiApan7xv5b4ckyij4cBUqGi2gt
         FbBeTgBfwolKdmMe3eCewrnx1n1sAVx/0FDEqFdt66LiRIeBh/6JkEfOKrs4/SMv6fRw
         /Rwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id s64si1045984ywf.0.2020.02.03.18.25.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Feb 2020 18:25:06 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Feb 2020 18:25:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; 
   d="gz'50?scan'50,208,50";a="249201129"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 03 Feb 2020 18:25:02 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iyntd-0002pI-V6; Tue, 04 Feb 2020 10:25:01 +0800
Date: Tue, 4 Feb 2020 10:24:28 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v1 4/7] device property: fwnode_get_phy_mode: Change API
 to solve int/unit warnings
Message-ID: <202002040242.DOI7bc7W%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="g6ihclfajmyv2tdo"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--g6ihclfajmyv2tdo
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@lists.01.org
In-Reply-To: <20200131153440.20870-5-calvin.johnson@nxp.com>
References: <20200131153440.20870-5-calvin.johnson@nxp.com>
TO: Calvin Johnson <calvin.johnson@nxp.com>
CC: linux.cj@gmail.com, Jon Nettleton <jon@solid-run.com>, linux@armlinux.o=
rg.uk, Makarand Pawagi <makarand.pawagi@nxp.com>, cristian.sovaiala@nxp.com=
, laurentiu.tudor@nxp.com, ioana.ciornei@nxp.com, V.Sethi@nxp.com, pankaj.b=
ansal@nxp.com, "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>
CC: Calvin Johnson <calvin.johnson@oss.nxp.com>, Andy Shevchenko <andriy.sh=
evchenko@linux.intel.com>, Antoine Tenart <antoine.tenart@bootlin.com>, "Da=
vid S. Miller" <davem@davemloft.net>, Dmitry Torokhov <dmitry.torokhov@gmai=
l.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Heikki Krogerus <h=
eikki.krogerus@linux.intel.com>, Matteo Croce <mcroce@redhat.com>, Maxime C=
hevallier <maxime.chevallier@bootlin.com>, "Rafael J. Wysocki" <rafael@kern=
el.org>, Russell King <rmk+kernel@armlinux.org.uk>, Sakari Ailus <sakari.ai=
lus@linux.intel.com>, Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vg=
er.kernel.org, netdev@vger.kernel.org

Hi Calvin,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on v5.5]
[cannot apply to driver-core/driver-core-testing net-next/master net/master=
 linus/master sparc-next/master next-20200203]
[if your patch is applied to the wrong git tree, please drop us a note to h=
elp
improve the system. BTW, we also suggest to use '--base' option to specify =
the
base tree in git format-patch, please see https://stackoverflow.com/a/37406=
982]

url:    https://github.com/0day-ci/linux/commits/Calvin-Johnson/ACPI-suppor=
t-for-xgmac_mdio-and-dpaa2-mac-drivers/20200203-070754
base:    d5226fa6dbae0569ee43ecfc08bdcd6770fc4755
config: x86_64-defconfig (attached as .config)
compiler: clang version 11.0.0 (git://gitmirror/llvm_project 8a68c40a1bf256=
523993ee97b39f79001eaade91)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=3Dx86_64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/clocksource/hyperv_timer.h:16:
   In file included from include/linux/clocksource.h:19:
   In file included from include/linux/of.h:22:
   In file included from include/linux/property.h:16:
   In file included from include/linux/phy.h:16:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:17:
   In file included from include/linux/bvec.h:13:
   In file included from include/linux/mm.h:99:
   arch/x86/include/asm/pgtable.h:1404:22: warning: shift count >=3D width =
of type [-Wshift-count-overflow]
           return (pte_flags & _PAGE_PKEY_MASK) >> _PAGE_BIT_PKEY_BIT0;
                               ^~~~~~~~~~~~~~~
   arch/x86/include/asm/pgtable_types.h:71:5: note: expanded from macro '_P=
AGE_PKEY_MASK'
                            _PAGE_PKEY_BIT1 | \
                            ^~~~~~~~~~~~~~~
   arch/x86/include/asm/pgtable_types.h:60:43: note: expanded from macro '_=
PAGE_PKEY_BIT1'
   #define _PAGE_PKEY_BIT1 (_AT(pteval_t, 1) << _PAGE_BIT_PKEY_BIT1)
                                             ^  ~~~~~~~~~~~~~~~~~~~
   In file included from arch/x86//entry/vdso/vdso32/vclock_gettime.c:31:
   In file included from arch/x86//entry/vdso/vdso32/../vclock_gettime.c:15=
:
   In file included from arch/x86//entry/vdso/vdso32/../../../../../lib/vds=
o/gettimeofday.c:26:
   In file included from arch/x86/include/asm/vdso/gettimeofday.h:21:
   In file included from include/clocksource/hyperv_timer.h:16:
   In file included from include/linux/clocksource.h:19:
   In file included from include/linux/of.h:22:
   In file included from include/linux/property.h:16:
   In file included from include/linux/phy.h:16:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:17:
   In file included from include/linux/bvec.h:13:
   In file included from include/linux/mm.h:99:
   arch/x86/include/asm/pgtable.h:1404:22: warning: shift count >=3D width =
of type [-Wshift-count-overflow]
           return (pte_flags & _PAGE_PKEY_MASK) >> _PAGE_BIT_PKEY_BIT0;
                               ^~~~~~~~~~~~~~~
   arch/x86/include/asm/pgtable_types.h:72:5: note: expanded from macro '_P=
AGE_PKEY_MASK'
                            _PAGE_PKEY_BIT2 | \
                            ^~~~~~~~~~~~~~~
   arch/x86/include/asm/pgtable_types.h:61:43: note: expanded from macro '_=
PAGE_PKEY_BIT2'
   #define _PAGE_PKEY_BIT2 (_AT(pteval_t, 1) << _PAGE_BIT_PKEY_BIT2)
                                             ^  ~~~~~~~~~~~~~~~~~~~
   In file included from arch/x86//entry/vdso/vdso32/vclock_gettime.c:31:
   In file included from arch/x86//entry/vdso/vdso32/../vclock_gettime.c:15=
:
   In file included from arch/x86//entry/vdso/vdso32/../../../../../lib/vds=
o/gettimeofday.c:26:
   In file included from arch/x86/include/asm/vdso/gettimeofday.h:21:
   In file included from include/clocksource/hyperv_timer.h:16:
   In file included from include/linux/clocksource.h:19:
   In file included from include/linux/of.h:22:
   In file included from include/linux/property.h:16:
   In file included from include/linux/phy.h:16:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:17:
   In file included from include/linux/bvec.h:13:
   In file included from include/linux/mm.h:99:
   arch/x86/include/asm/pgtable.h:1404:22: warning: shift count >=3D width =
of type [-Wshift-count-overflow]
           return (pte_flags & _PAGE_PKEY_MASK) >> _PAGE_BIT_PKEY_BIT0;
                               ^~~~~~~~~~~~~~~
   arch/x86/include/asm/pgtable_types.h:73:5: note: expanded from macro '_P=
AGE_PKEY_MASK'
                            _PAGE_PKEY_BIT3)
                            ^~~~~~~~~~~~~~~
   arch/x86/include/asm/pgtable_types.h:62:43: note: expanded from macro '_=
PAGE_PKEY_BIT3'
   #define _PAGE_PKEY_BIT3 (_AT(pteval_t, 1) << _PAGE_BIT_PKEY_BIT3)
                                             ^  ~~~~~~~~~~~~~~~~~~~
   In file included from arch/x86//entry/vdso/vdso32/vclock_gettime.c:31:
   In file included from arch/x86//entry/vdso/vdso32/../vclock_gettime.c:15=
:
   In file included from arch/x86//entry/vdso/vdso32/../../../../../lib/vds=
o/gettimeofday.c:26:
   In file included from arch/x86/include/asm/vdso/gettimeofday.h:21:
   In file included from include/clocksource/hyperv_timer.h:16:
   In file included from include/linux/clocksource.h:19:
   In file included from include/linux/of.h:22:
   In file included from include/linux/property.h:16:
   In file included from include/linux/phy.h:16:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:17:
   In file included from include/linux/bvec.h:13:
   In file included from include/linux/mm.h:99:
   arch/x86/include/asm/pgtable.h:1404:39: warning: shift count >=3D width =
of type [-Wshift-count-overflow]
           return (pte_flags & _PAGE_PKEY_MASK) >> _PAGE_BIT_PKEY_BIT0;
                                                ^  ~~~~~~~~~~~~~~~~~~~
   In file included from arch/x86//entry/vdso/vdso32/vclock_gettime.c:31:
   In file included from arch/x86//entry/vdso/vdso32/../vclock_gettime.c:15=
:
   In file included from arch/x86//entry/vdso/vdso32/../../../../../lib/vds=
o/gettimeofday.c:26:
   In file included from arch/x86/include/asm/vdso/gettimeofday.h:21:
   In file included from include/clocksource/hyperv_timer.h:16:
   In file included from include/linux/clocksource.h:19:
   In file included from include/linux/of.h:22:
   In file included from include/linux/property.h:16:
   In file included from include/linux/phy.h:16:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:17:
   In file included from include/linux/bvec.h:13:
>> include/linux/mm.h:924:5: warning: 'SECTIONS_WIDTH' is not defined, eval=
uates to 0 [-Wundef]
   #if SECTIONS_WIDTH+NODES_WIDTH+ZONES_WIDTH > BITS_PER_LONG - NR_PAGEFLAG=
S
       ^
>> include/linux/mm.h:924:20: warning: 'NODES_WIDTH' is not defined, evalua=
tes to 0 [-Wundef]
   #if SECTIONS_WIDTH+NODES_WIDTH+ZONES_WIDTH > BITS_PER_LONG - NR_PAGEFLAG=
S
                      ^
>> include/linux/mm.h:924:32: warning: 'ZONES_WIDTH' is not defined, evalua=
tes to 0 [-Wundef]
   #if SECTIONS_WIDTH+NODES_WIDTH+ZONES_WIDTH > BITS_PER_LONG - NR_PAGEFLAG=
S
                                  ^
   include/linux/mm.h:937:25: error: use of undeclared identifier 'SECTIONS=
_WIDTH'
           return (page->flags >> ZONES_PGSHIFT) & ZONES_MASK;
                                  ^
   include/linux/mm.h:907:25: note: expanded from macro 'ZONES_PGSHIFT'
   #define ZONES_PGSHIFT           (ZONES_PGOFF * (ZONES_WIDTH !=3D 0))
                                    ^
   include/linux/mm.h:896:23: note: expanded from macro 'ZONES_PGOFF'
   #define ZONES_PGOFF             (NODES_PGOFF - ZONES_WIDTH)
                                    ^
   include/linux/mm.h:895:23: note: expanded from macro 'NODES_PGOFF'
   #define NODES_PGOFF             (SECTIONS_PGOFF - NODES_WIDTH)
                                    ^
   include/linux/mm.h:894:54: note: expanded from macro 'SECTIONS_PGOFF'
   #define SECTIONS_PGOFF          ((sizeof(unsigned long)*8) - SECTIONS_WI=
DTH)
                                                                ^
   include/linux/mm.h:937:25: error: use of undeclared identifier 'NODES_WI=
DTH'
   include/linux/mm.h:907:25: note: expanded from macro 'ZONES_PGSHIFT'
   #define ZONES_PGSHIFT           (ZONES_PGOFF * (ZONES_WIDTH !=3D 0))
                                    ^
   include/linux/mm.h:896:23: note: expanded from macro 'ZONES_PGOFF'
   #define ZONES_PGOFF             (NODES_PGOFF - ZONES_WIDTH)
                                    ^
   include/linux/mm.h:895:40: note: expanded from macro 'NODES_PGOFF'
   #define NODES_PGOFF             (SECTIONS_PGOFF - NODES_WIDTH)
                                                     ^
   include/linux/mm.h:937:25: error: use of undeclared identifier 'ZONES_WI=
DTH'
   include/linux/mm.h:907:25: note: expanded from macro 'ZONES_PGSHIFT'
   #define ZONES_PGSHIFT           (ZONES_PGOFF * (ZONES_WIDTH !=3D 0))
                                    ^
   include/linux/mm.h:896:37: note: expanded from macro 'ZONES_PGOFF'
   #define ZONES_PGOFF             (NODES_PGOFF - ZONES_WIDTH)
                                                  ^
   include/linux/mm.h:937:25: error: use of undeclared identifier 'ZONES_WI=
DTH'
   include/linux/mm.h:907:40: note: expanded from macro 'ZONES_PGSHIFT'
   #define ZONES_PGSHIFT           (ZONES_PGOFF * (ZONES_WIDTH !=3D 0))
                                                   ^
   include/linux/mm.h:937:42: error: use of undeclared identifier 'ZONES_WI=
DTH'
           return (page->flags >> ZONES_PGSHIFT) & ZONES_MASK;
                                                   ^
   include/linux/mm.h:928:30: note: expanded from macro 'ZONES_MASK'
   #define ZONES_MASK              ((1UL << ZONES_WIDTH) - 1)
                                            ^
   include/linux/mm.h:1077:25: error: use of undeclared identifier 'SECTION=
S_WIDTH'
           return (page->flags >> ZONEID_PGSHIFT) & ZONEID_MASK;
                                  ^
   include/linux/mm.h:922:26: note: expanded from macro 'ZONEID_PGSHIFT'
   #define ZONEID_PGSHIFT          (ZONEID_PGOFF * (ZONEID_SHIFT !=3D 0))
                                    ^
   include/linux/mm.h:918:25: note: expanded from macro 'ZONEID_PGOFF'
   #define ZONEID_PGOFF            ((NODES_PGOFF < ZONES_PGOFF)? \
                                     ^
   include/linux/mm.h:895:23: note: expanded from macro 'NODES_PGOFF'
   #define NODES_PGOFF             (SECTIONS_PGOFF - NODES_WIDTH)
                                    ^
   include/linux/mm.h:894:54: note: expanded from macro 'SECTIONS_PGOFF'
   #define SECTIONS_PGOFF          ((sizeof(unsigned long)*8) - SECTIONS_WI=
DTH)
                                                                ^
   include/linux/mm.h:1077:25: error: use of undeclared identifier 'NODES_W=
IDTH'
   include/linux/mm.h:922:26: note: expanded from macro 'ZONEID_PGSHIFT'
   #define ZONEID_PGSHIFT          (ZONEID_PGOFF * (ZONEID_SHIFT !=3D 0))
                                    ^
   include/linux/mm.h:918:25: note: expanded from macro 'ZONEID_PGOFF'
   #define ZONEID_PGOFF            ((NODES_PGOFF < ZONES_PGOFF)? \
                                     ^
   include/linux/mm.h:895:40: note: expanded from macro 'NODES_PGOFF'
   #define NODES_PGOFF             (SECTIONS_PGOFF - NODES_WIDTH)
                                                     ^
   include/linux/mm.h:1077:25: error: use of undeclared identifier 'SECTION=
S_WIDTH'
   include/linux/mm.h:922:26: note: expanded from macro 'ZONEID_PGSHIFT'
   #define ZONEID_PGSHIFT          (ZONEID_PGOFF * (ZONEID_SHIFT !=3D 0))
                                    ^
   include/linux/mm.h:918:39: note: expanded from macro 'ZONEID_PGOFF'
   #define ZONEID_PGOFF            ((NODES_PGOFF < ZONES_PGOFF)? \
                                                   ^
   include/linux/mm.h:896:23: note: expanded from macro 'ZONES_PGOFF'
   #define ZONES_PGOFF             (NODES_PGOFF - ZONES_WIDTH)
                                    ^
   include/linux/mm.h:895:23: note: expanded from macro 'NODES_PGOFF'
   #define NODES_PGOFF             (SECTIONS_PGOFF - NODES_WIDTH)
                                    ^
   include/linux/mm.h:894:54: note: expanded from macro 'SECTIONS_PGOFF'
   #define SECTIONS_PGOFF          ((sizeof(unsigned long)*8) - SECTIONS_WI=
DTH)
                                                                ^
   include/linux/mm.h:1077:25: error: use of undeclared identifier 'NODES_W=
IDTH'
   include/linux/mm.h:922:26: note: expanded from macro 'ZONEID_PGSHIFT'
   #define ZONEID_PGSHIFT          (ZONEID_PGOFF * (ZONEID_SHIFT !=3D 0))
                                    ^
   include/linux/mm.h:918:39: note: expanded from macro 'ZONEID_PGOFF'
   #define ZONEID_PGOFF            ((NODES_PGOFF < ZONES_PGOFF)? \
                                                   ^
   include/linux/mm.h:896:23: note: expanded from macro 'ZONES_PGOFF'
   #define ZONES_PGOFF             (NODES_PGOFF - ZONES_WIDTH)
                                    ^
   include/linux/mm.h:895:40: note: expanded from macro 'NODES_PGOFF'
   #define NODES_PGOFF             (SECTIONS_PGOFF - NODES_WIDTH)
                                                     ^
   include/linux/mm.h:1077:25: error: use of undeclared identifier 'ZONES_W=
IDTH'
   include/linux/mm.h:922:26: note: expanded from macro 'ZONEID_PGSHIFT'

vim +/SECTIONS_WIDTH +924 include/linux/mm.h

348f8b6c4837a0 Dave Hansen       2005-06-23  923 =20
9223b4190fa129 Christoph Lameter 2008-04-28 @924  #if SECTIONS_WIDTH+NODES_=
WIDTH+ZONES_WIDTH > BITS_PER_LONG - NR_PAGEFLAGS
9223b4190fa129 Christoph Lameter 2008-04-28  925  #error SECTIONS_WIDTH+NOD=
ES_WIDTH+ZONES_WIDTH > BITS_PER_LONG - NR_PAGEFLAGS
348f8b6c4837a0 Dave Hansen       2005-06-23  926  #endif
348f8b6c4837a0 Dave Hansen       2005-06-23  927 =20

:::::: The code at line 924 was first introduced by commit
:::::: 9223b4190fa1297a59f292f3419fc0285321d0ea pageflags: get rid of FLAGS=
_RESERVED

:::::: TO: Christoph Lameter <clameter@sgi.com>
:::::: CC: Linus Torvalds <torvalds@linux-foundation.org>

---
0-DAY kernel test infrastructure                 Open Source Technology Cen=
ter
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporat=
ion

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202002040242.DOI7bc7W%25lkp%40intel.com.

--g6ihclfajmyv2tdo
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--g6ihclfajmyv2tdo--
