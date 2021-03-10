Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBFVGUOBAMGQEKNA5IOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5BB333FF8
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 15:09:28 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id g6sf5426144pfo.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 06:09:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615385367; cv=pass;
        d=google.com; s=arc-20160816;
        b=uHpEZczM38VjbkVdlIU3A3oTWO1rudEcLpX4IoR2WPVkKd1sMFTsJt4j4R+RHWGMBg
         3/l/a+tWyyiOEl/seI5G9KjiZRTqpCq1WxTrGA2e5dTLdDvTne1yvMALEosb4G1qPxBl
         GyRT4fbfGA902K43GsyqltySAY8d/r5zl6nkiZ0LAkB7vKCPDuug3Cb1aqe4dewgkD10
         AdNBe5bZJnOy6Hf3bCHFXf5jdIfAjxavQHnQkO/s87nWVzy520mpMB0Fh0D1iWTAAeCc
         4i3IpdxhtwShX4XX/IrC03ibPxgnsJ0ynYLYeSZWYTAo00kO+nx2ivpk56PfbZNhcwKw
         s93w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=G6dNFjdfXj6vQz6ZcHMYGMsNIlc6BwTLi5fGSg0/VBc=;
        b=Xk693fK8kJEdVg+SjR/DKeCB/yjfPZpIMbXl0xE9LNNWup6KWyOeMUdj/XAeDI4OaI
         h0mTdI7KFnct/NH2YEm/UircIQZDAmDlMTEh9RitBGeL2FL3hI+BiIqFIswK0q9OOwDB
         Jt2MQLxV0EE2F27myQpwRLr603nHGiBh7Me6mu15CnMebIwL9XWUfjzpCXd2qlsKp4qK
         tSTioXLD7Md4eLTSVy0Y6UazPTEP370DkynainP+vDdoWTRfsCpiLgopQ3NKXdgtIMPe
         goeKz0K8G45V1PD3zDbGtQ1ve/vvmrKPui7bZLGqR0w+BMFm+I0NIvm5P9Lxcx+EKXWo
         g3SQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G6dNFjdfXj6vQz6ZcHMYGMsNIlc6BwTLi5fGSg0/VBc=;
        b=afyFnXVayo+d7sghdwZTmb6PS/4V6t/cruR3OwI6jwwiZC7XrOQCJKZxQeVaQet9kL
         baXWO+OwuX7irFqMNIP1dfN5Ljmzp7LkRBMFK3AB+0TK7/Qr8XlIj9PA5hmpwCD9fpIb
         kUrJCFeiFux3p/hEEbkKPHl7EQnaYq0+zfDzXUUVU0sleIs5sVPwN6DoKoDh/f2bDCdE
         k1p+KUBZKzouTefWJtniJdMo2WhPDoG3deI4jeoS6DBXwRYGPmuB9xkY9G/fPzCIqr/8
         WAYXpA+iaUW9GstQPd4dWwLb9YXesSo8ttwXWYia5g+hS17f/nWsWKHMJS2wFF4+4F60
         gXSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G6dNFjdfXj6vQz6ZcHMYGMsNIlc6BwTLi5fGSg0/VBc=;
        b=sFzDbIL+e1a3MJDcNiY649FdEU0Fde56Ie+uAB1EOmmZZZnHzIBzvr5RdVfBe9PtYP
         PdjoYWbO4qE42348D+2Hghk7jdmR3x+gOc7AfcMMp0qrzCs6oJUzS+ONh/tDenVi6y+e
         9Iku0chuUUkt8WcuQ3XGqi9BO4RGAxGlr2+iZOMr8YbNd4WWatXDIUdyx/F1dDt8PHTe
         wvMxnL6rLQrQardT/hGf/HGwruGew5Z7UM66QihQpHYnCBrKrHjlulQqCrxwzHqNYEjT
         v2fRVYVQeiL7IV6VGCgYvhgMuaZRW4GhRdQhAyrDzE+AGKQEdI/9tCf/qD3BY4hLgf/y
         9RgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533akrIhi+kq39HMAHItsEGySZJk7ibHi/Qru2PgWlDtHRNZ5uG/
	4HzkRGeKh4zzEVWUPW+dd2M=
X-Google-Smtp-Source: ABdhPJzBI+aDDz1sm5O38vYamXn1H5Ld4fss0iwpKzUTyjkkxh2sFcPxRc80txMlGgPZ0FBBWItJGA==
X-Received: by 2002:a05:6a00:894:b029:1dc:2f68:5f0 with SMTP id q20-20020a056a000894b02901dc2f6805f0mr2832092pfj.23.1615385366608;
        Wed, 10 Mar 2021 06:09:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:778b:: with SMTP id o11ls1310076pll.0.gmail; Wed, 10
 Mar 2021 06:09:26 -0800 (PST)
X-Received: by 2002:a17:90a:eb0b:: with SMTP id j11mr3710389pjz.62.1615385365576;
        Wed, 10 Mar 2021 06:09:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615385365; cv=none;
        d=google.com; s=arc-20160816;
        b=BM3+9RCjIAh2jvEIgTg2+/uqzBlqUKJMK29UdAKWE6PIjlqsHSEp05hhnglb7uT/7E
         0dL7eoh4Qd7urK1jnM9PCWT0TD6/8T1hmjLpFFh+gVZwChuNslNsp6Jo6WGon0ir8j8r
         HAmc35+jfoJOx+n9Kw4QFEGu81FwkiKOskxeFQM8g1dLpdueqDVzX9zKG3QT5oH6u0nZ
         DGFTD7Kt1ZjtWTpuVoWpjd5DjCRLk44WgL9UKrkC3J1EXmQKRlhjY5Ut+DxU+aIakn7P
         Ez6WLEqMufcl61kuvZaJsbARYVpB6zRAv3BXlG1MFHlrQQFkfP+NI08fI04yq1SexBeo
         uZeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=+2c3T6pFAAvN/FLM4pKfeBypmyDWLyr5P7OKHYp5oeo=;
        b=aPBWgUHjDofuWciLeKQ59oADgf2a+Eky8HdnputZzyjbij4Q6KwVDrNUQiS/aL9mCX
         YbkX9Hf5fph8EO3vMfnDCT3uZzGgMrdwNhd6/VCW+zSRS0ZfRVJ1/G/MmcHXs5ZoIoAv
         2GiUjhZDcJsF4d74U1HNr5/CnRTK0MzLm/69vrVIARk/7orRM4GIj3MZtoa3u2v3KjZb
         dn6gL2uciGkAXs0hQiBc8tUtDYUUCfvu1N3ppQESB/BKsLajGr2wH61TJWQj2djjRZl4
         SG8JshJA0vkpzFpnqjZnvXisNjDzEQvCpNmPwezHAvUA06k6wO/GCREZDuyUOpExoo9j
         GhRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id 131si206055pfa.2.2021.03.10.06.09.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 06:09:25 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: QU99EW/vsrEEgL0ghxP5JrcXxzmNJ0MnpKxdVhmXaQ8G4eGjn3mIPRQW6ecFJLRErMMuv3N6Sl
 SzZQNTbGb0hg==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="208274444"
X-IronPort-AV: E=Sophos;i="5.81,237,1610438400"; 
   d="gz'50?scan'50,208,50";a="208274444"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Mar 2021 06:09:24 -0800
IronPort-SDR: YrFEEBpNA44L4hVlVXPh+tq6Np02mq7awCppkpGs1MmaG7WM4wUSLOVq5FxY7sxzCtDY6o+q/J
 erM18ziwaJYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,237,1610438400"; 
   d="gz'50?scan'50,208,50";a="438325749"
Received: from lkp-server02.sh.intel.com (HELO ce64c092ff93) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 10 Mar 2021 06:09:21 -0800
Received: from kbuild by ce64c092ff93 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lJzWa-0000Dv-Ps; Wed, 10 Mar 2021 14:09:20 +0000
Date: Wed, 10 Mar 2021 22:08:51 +0800
From: kernel test robot <lkp@intel.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Swapnil Jakhade <sjakhade@cadence.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH v3 6/6] phy: cadence-torrent: Add support to drive refclk
 out
Message-ID: <202103102234.u1k7Izsp-lkp@intel.com>
References: <20210310120840.16447-7-kishon@ti.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="pWyiEgJYm5f9v55/"
Content-Disposition: inline
In-Reply-To: <20210310120840.16447-7-kishon@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--pWyiEgJYm5f9v55/
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Kishon,

I love your patch! Yet something to improve:

[auto build test ERROR on linux/master]
[also build test ERROR on linus/master v5.12-rc2 next-20210310]
[cannot apply to phy/next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Kishon-Vijay-Abraham-I/AM64-Add-SERDES-driver-support/20210310-201224
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 144c79ef33536b4ecb4951e07dbc1f2b7fa99d32
config: powerpc64-randconfig-r013-20210308 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project cd9a69289c7825d54450cb6829fef2c8e0f1963a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/0day-ci/linux/commit/918d7061e3f8808f1665112ca2bc8ed424d108bd
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Kishon-Vijay-Abraham-I/AM64-Add-SERDES-driver-support/20210310-201224
        git checkout 918d7061e3f8808f1665112ca2bc8ed424d108bd
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/phy/cadence/phy-cadence-torrent.c:15:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:184:1: note: expanded from here
   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/phy/cadence/phy-cadence-torrent.c:15:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:186:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/phy/cadence/phy-cadence-torrent.c:15:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:188:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/phy/cadence/phy-cadence-torrent.c:15:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:190:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/phy/cadence/phy-cadence-torrent.c:15:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:192:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/phy/cadence/phy-cadence-torrent.c:15:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:194:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/phy/cadence/phy-cadence-torrent.c:225:3: error: use of undeclared identifier 'CDNS_TORRENT_REFCLK_DRIVER'
           [CDNS_TORRENT_REFCLK_DRIVER] = "refclk-driver",
            ^
   drivers/phy/cadence/phy-cadence-torrent.c:311:19: error: use of undeclared identifier 'CDNS_TORRENT_REFCLK_DRIVER'
           struct clk *clks[CDNS_TORRENT_REFCLK_DRIVER + 1];
                            ^
   drivers/phy/cadence/phy-cadence-torrent.c:1702:14: error: use of undeclared identifier 'CDNS_TORRENT_REFCLK_DRIVER'
                    clk_names[CDNS_TORRENT_REFCLK_DRIVER]);
                              ^
   drivers/phy/cadence/phy-cadence-torrent.c:1745:17: error: use of undeclared identifier 'CDNS_TORRENT_REFCLK_DRIVER'
           cdns_phy->clks[CDNS_TORRENT_REFCLK_DRIVER] = clk;
                          ^
   drivers/phy/cadence/phy-cadence-torrent.c:2237:31: error: use of undeclared identifier 'CDNS_TORRENT_REFCLK_DRIVER'
           cdns_phy->clk_data.clk_num = CDNS_TORRENT_REFCLK_DRIVER + 1;
                                        ^
   6 warnings and 5 errors generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for HOTPLUG_CPU
   Depends on SMP && (PPC_PSERIES || PPC_PMAC || PPC_POWERNV || FSL_SOC_BOOKE
   Selected by
   - PM_SLEEP_SMP && SMP && (ARCH_SUSPEND_POSSIBLE || ARCH_HIBERNATION_POSSIBLE && PM_SLEEP


vim +/CDNS_TORRENT_REFCLK_DRIVER +225 drivers/phy/cadence/phy-cadence-torrent.c

   223	
   224	static const char * const clk_names[] = {
 > 225		[CDNS_TORRENT_REFCLK_DRIVER] = "refclk-driver",
   226	};
   227	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103102234.u1k7Izsp-lkp%40intel.com.

--pWyiEgJYm5f9v55/
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICDrOSGAAAy5jb25maWcAjFxLcxu3st7nV7CSqlPnLhxT1CPyPaUFBoMhEQ4GowGGpLRB
MRTt6EaWdCjZsf/97ca8AAwoJwvH7MYb/fi6G+NffvplQr68Pn3evt7vtg8P3yef9o/7w/Z1
fzf5eP+w/88klZNC6glLuf4VGuf3j1++vX9++nt/eN5Nzn89mf06fXfYzSbL/eFx/zChT48f
7z99gRHunx5/+uUnKouMzw2lZsUqxWVhNNvoq593D9vHT5Ov+8MLtJucnP46/XU6+fen+9f/
ff8e/vx8fzg8Hd4/PHz9bJ4PT/+3371OdncfthcfZpcfdr9dzs7vzs/Ozqe7Py4uZx8+7j/O
dpf76ceTDxen2//5uZt1Pkx7NXWWwpWhOSnmV997Iv7s256cTuG/jpen40GABoPkeToMkTvt
/AFgxgVRhihh5lJLZ1afYWSty1pH+bzIecEcliyUrmqqZaUGKq+uzVpWy4GS1DxPNRfMaJLk
zChZORPoRcUIbKXIJPwBTRR2hWv7ZTK3cvAwedm/fnkeLpIXXBtWrAypYMtccH11OhsWJUoO
k2imnElySUnenczPP3srM4rk2iEuyIqZJasKlpv5LS+HUaLElGWkzrVdlTNKR15IpQsi2NXP
/358etyDYPwyaZuoNSkn9y+Tx6dX3GLXU92oFS8pzNC3XBNNF+a6ZjVzO/R8WkmljGBCVjeG
aE3oItquViznSWROu2dSwSSkBi2DJcB55d09wJVOXr788fL95XX/ebiHOStYxam9cbWQ6+FM
Qo7J2Yrlcb7g84povJcomxe/M3qcTRfuXSAllYLwIkYzC84q3OSNz82I0kzygQ3HUaQ5c6W6
m1Mojn2OMqLTZ7KiLG0lnbs6r0pSKRYf0Y7GknqeKSsL+8e7ydPH4DLCTlbNVsP9BWwKirCE
uyi0szd776jkmtOlSSpJUkpc7Yn0frOZkMrUZUo06yRI338GMxsTIjunLBiIiTNUIc3iFnVZ
2IvvBRiIJcwhU04jUtz04nB1wUjeEHy+MBVT9qgq5etJe8aj5XajlRVjotQwqjWE/aAdfSXz
utCkuomqX9sqsvKuP5XQvTs0Wtbv9fblr8krLGeyhaW9vG5fXybb3e7py+Pr/eOn4BihgyHU
jtFIWT/zilc6YJsCtG7FIotBwbNy5I3lWgpFFyDPZDX3JTdRKexEUgbGCPrq4xyzOvWOT/Ho
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

--pWyiEgJYm5f9v55/--
