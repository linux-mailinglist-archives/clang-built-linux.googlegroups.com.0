Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBYETWH3QKGQE6N5KQSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4F1200197
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 07:15:18 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id y12sf2920517uao.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 22:15:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592543717; cv=pass;
        d=google.com; s=arc-20160816;
        b=jZ30OMgJbOTWF6qRMZch+GNfDp5KWy7PSmweQiSCTYsBjt63aPW1Y/J3XDRY0V937X
         Aei3pDAz+qX+nJUJnas6Wek3Yo6fnRV1wm0OfO+kup9ZiWvuQONI+vG3UJBcpJ8VPisK
         rRb7Kv7KTEqZw5x+N8tFsZ4EBo8iNuKZNJ3AHujRv8f1I/4vR3vaKDD2kWXk+mqo+6y4
         KqHzeI/6ByB3G5ujmT43H9G44r8e1PAcWsdRzZ33nJxB6IFfNS5bS3KVv/pb+uU3nvm4
         2aF9+BBu36SJT8MeSF3NkwMMj/Yb7Jhpg3vnhuCTLdv33tkMKRS02HfRkTW24+D9U9xY
         emoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=64gsl7Txsd9NtEd74TF8twAgvsO6KdsdQev9s8x0gsQ=;
        b=T08PXSS3wMGPn4YzMOCtr9KEWhS6orufgE5rehrnRFr7EjrFxaqPmZPJqPEqy5DUPH
         y5Rbd4YBGMTe3TmJkFu3aihFdUHtW4OdwkJqlhcN7zFk/RQXOVnbPHN/lg/CObsqIAXz
         MuVqH6rTv12m59yow7txzZeAt6R3LTwT9YtW27jv8EmqQtJ35NNOdO3UwsLtzEbolZtz
         VSrCm+17lHTHixlMxJJRr4ZbzrendQvdRpQ+OoXYmK6uk1hmwzVCb/RIUM+sWIITjKo3
         A04eyCD8w3DUiJPJnjWkPDI/gLeN8TVzB7ZQ+yxQAcbJcKcp48CEqNV+Tq03LdnzmIg8
         kaMA==
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
        bh=64gsl7Txsd9NtEd74TF8twAgvsO6KdsdQev9s8x0gsQ=;
        b=LBQjkN8iXcao3BdjVmg1sh289QoWa0tyzfTLdaARyencAnj5B1tAKqkpdkfhzOdei6
         1e6kFIfF2bpDL6rJlcc6S5fMGYRU3LVk1gbtL8v9+jB2E3Ad3Qyt3/PQb5Bfm1IbBaoU
         0D1xDT1y/s3YUjro1N+DDvx1aXXuaGWeUd4vs7lmJDJP7DrTzs5hPtR7NoTPlz860fkA
         dlYd6eL/HCK0l0/F0Py0Xl07LIz7XzDYapbX7F5duQ7v1b+LHsaZau8xklEAOVtD++Bv
         yROppJ0FzDg1tfB8a9w7sI/OaEiOJhZjwSq1k5ILMahg9CNh3hTHeFV4rslMameGOkjO
         +MnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=64gsl7Txsd9NtEd74TF8twAgvsO6KdsdQev9s8x0gsQ=;
        b=k4+RlLtsOYnCRIGR0VqocoGi3U1BdS4o4Im7/Xb4R8vHH97yuV/+Japyn17Z2oBV1U
         ZHQJbuS72TmVmlQBhSynXIGY6bYClDOx8LAyLR3aOi/g48yrm/uWYYtChjH7ajPMivm4
         VSTOkg0vkDYjndyWHIXt9CEqN1x3tIt4ZjhAH81h4/1EM59iAwkyczd7z6VfKjTAvX2W
         qAJuB+5IUs0r0V8fZm4CoI/8qBV4y6quF68vS/sJ/5huYy+msHb8pg3KbMqvz4AfYliX
         NMeUrbiWBP3E4aE/B8eGnUHL3r6agkVqZFrcR+Ts0nFyoiyFkHKKtkVl65rZmBMpp8Fn
         mEaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317keyEGXCn8Zf2KlE1R9zs5HB+oF5NX7u/+5ltdrf3A7P8wpVY
	mj9spx5Ps5rNoLVPPF0K7Zs=
X-Google-Smtp-Source: ABdhPJyU7GJKTXGi/zFg52+m0/Dg4aPBcOnC2un4rfXRIMsog+wSK348qVE1mTZCnyjkU4GsQA9W1A==
X-Received: by 2002:a05:6102:21b0:: with SMTP id i16mr5973871vsb.232.1592543712116;
        Thu, 18 Jun 2020 22:15:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2083:: with SMTP id 3ls562292uaa.9.gmail; Thu, 18 Jun
 2020 22:15:11 -0700 (PDT)
X-Received: by 2002:ab0:1c5a:: with SMTP id o26mr1259608uaj.85.1592543711405;
        Thu, 18 Jun 2020 22:15:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592543711; cv=none;
        d=google.com; s=arc-20160816;
        b=EW1ax1wL1xIRwQsoDvQLWb8JVO/t6cKbuOvvcQorI94GEV1/mWpx1B+pdnQYxJjmkx
         yqYhEcMTig8bPmPI0rAHMEdOgRMvhlTEjl+B+T/534qKb/B9DKY1v4v+Q0G8TpvVZiBv
         Pq6InvqaKkaXMLSerVEaixz3T1j3sSh44CFXwoc1vhf6VBulSJcyPntCQr9bYdWEU2JL
         qigKl6pts2f/7GzSPBdbgmOTE0GsZyJgzTG2bALmI8Tny2FpfjFzf2jEmdEXhhF4lpwg
         IBqbJF36VmPVa5uL995YPamGpdufgI85llipOMhslP+FNfHNjs/qFWFrGFexdu7WOb8G
         XRDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=xKyAdLCHt18+lTTf0kP68TBPBMFqho/GslSQg6rm4Nc=;
        b=tVVBUZCscAEmgGd6lVMelrtjmAyUhvajeipYoP7ftGWZP+fo4akRxMKbgFI55fOgr8
         kslE1KJmS0Ee5auNNje2/3aKG47YV1ZHlQRtU8CN95IySsk0ZFZO1/+LLfRFOu8R+cpN
         quOCUGj/Xir4YKSUdPEOaNjY1qUREuf48+GZ3V5WDrw4SBEHP9TLsjuVaTTJ2wND3FvT
         2wkcFuRZ31L3vAOk7TkLA/EuVZjNFphxuCcJDqov/8kwdee19bbKlj52xDmbQXxcf9Ie
         jGyKP6S8Qac1Nqr2G8EtRt34ycV3LBmu4CDma7tBco369vMDa7RZndQMqH70JGJSxV2c
         eQBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id t139si367674vkd.3.2020.06.18.22.15.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jun 2020 22:15:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: coGJ62ASg6hUweUrHEBH0d6xjpMZbChHYNLrOXEIXd5bf+QVUCaN/TxUwktpTZXGE3bq+Tohlf
 +yHe2nn+cEAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9656"; a="141909867"
X-IronPort-AV: E=Sophos;i="5.75,253,1589266800"; 
   d="gz'50?scan'50,208,50";a="141909867"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jun 2020 22:15:09 -0700
IronPort-SDR: sLwBrr/dF/ojc/gVcHhntB3UuxtL/s+dWcDZIx4DtavuTzbRIHzHvPhP8BrtQBLffbWDbchkLX
 8KUH76h+Ip0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,253,1589266800"; 
   d="gz'50?scan'50,208,50";a="263779138"
Received: from lkp-server02.sh.intel.com (HELO 5ce11009e457) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 18 Jun 2020 22:15:06 -0700
Received: from kbuild by 5ce11009e457 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jm9Mn-0000h2-Oi; Fri, 19 Jun 2020 05:15:05 +0000
Date: Fri, 19 Jun 2020 13:14:15 +0800
From: kernel test robot <lkp@intel.com>
To: Dan Murphy <dmurphy@ti.com>, andrew@lunn.ch, f.fainelli@gmail.com,
	hkallweit1@gmail.com, davem@davemloft.net, robh@kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Dan Murphy <dmurphy@ti.com>
Subject: Re: [PATCH net-next v8 4/5] net: dp83869: Add RGMII internal delay
 configuration
Message-ID: <202006191331.33wIcMzQ%lkp@intel.com>
References: <20200618211011.28837-5-dmurphy@ti.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="7AUc2qLy4jB3hD7Z"
Content-Disposition: inline
In-Reply-To: <20200618211011.28837-5-dmurphy@ti.com>
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


--7AUc2qLy4jB3hD7Z
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Dan,

I love your patch! Perhaps something to improve:

[auto build test WARNING on net-next/master]

url:    https://github.com/0day-ci/linux/commits/Dan-Murphy/RGMII-Internal-delay-common-property/20200619-051238
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git cb8e59cc87201af93dfbb6c3dccc8fcad72a09c2
config: s390-randconfig-r014-20200618 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 487ca07fcc75d52755c9fe2ee05bcb3b6eeeec44)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |                                 ^
In file included from drivers/net/phy/dp83869.c:6:
In file included from include/linux/ethtool.h:18:
In file included from include/uapi/linux/ethtool.h:19:
In file included from include/linux/if_ether.h:19:
In file included from include/linux/skbuff.h:31:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |                                 ^
In file included from drivers/net/phy/dp83869.c:6:
In file included from include/linux/ethtool.h:18:
In file included from include/uapi/linux/ethtool.h:19:
In file included from include/linux/if_ether.h:19:
In file included from include/linux/skbuff.h:31:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0xff000000UL) >> 24)))
^
In file included from drivers/net/phy/dp83869.c:6:
In file included from include/linux/ethtool.h:18:
In file included from include/uapi/linux/ethtool.h:19:
In file included from include/linux/if_ether.h:19:
In file included from include/linux/skbuff.h:31:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
__fswab32(x))
^
In file included from drivers/net/phy/dp83869.c:6:
In file included from include/linux/ethtool.h:18:
In file included from include/uapi/linux/ethtool.h:19:
In file included from include/linux/if_ether.h:19:
In file included from include/linux/skbuff.h:31:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:503:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
__raw_writeb(value, PCI_IOBASE + addr);
~~~~~~~~~~ ^
include/asm-generic/io.h:513:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
__raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
~~~~~~~~~~ ^
include/asm-generic/io.h:523:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
__raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
~~~~~~~~~~ ^
include/asm-generic/io.h:585:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
readsb(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:593:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
readsw(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:601:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
readsl(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:610:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
writesb(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:619:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
writesw(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:628:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
writesl(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
>> drivers/net/phy/dp83869.c:103:18: warning: unused variable 'dp83869_internal_delay' [-Wunused-const-variable]
static const int dp83869_internal_delay[] = {250, 500, 750, 1000, 1250, 1500,
^
21 warnings generated.

vim +/dp83869_internal_delay +103 drivers/net/phy/dp83869.c

   102	
 > 103	static const int dp83869_internal_delay[] = {250, 500, 750, 1000, 1250, 1500,
   104						     1750, 2000, 2250, 2500, 2750, 3000,
   105						     3250, 3500, 3750, 4000};
   106	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006191331.33wIcMzQ%25lkp%40intel.com.

--7AUc2qLy4jB3hD7Z
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
wHm185N7jxN+ocwq/w+2XL8/aGwBAA==

--7AUc2qLy4jB3hD7Z--
