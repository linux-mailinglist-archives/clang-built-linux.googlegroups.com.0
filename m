Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIPI4D3AKGQES46MDPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id F35801ED954
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 01:37:06 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id p9sf3400025qtn.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 16:37:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591227426; cv=pass;
        d=google.com; s=arc-20160816;
        b=uWkmXZHzJoGFKrpgfhjwv25fFvoNq3mr2fPjJoDmrgxLNnjeeG+oIckgWSo2MiwJHb
         qPbY6YmiTkYsM409ygiijdZjqn3mrmjf5aNuJjsKX2i7dRE2sCufBYUeMiTO2awTmT0E
         jB8iCa//J/F1DWBVWH/4s08kTcLsBXAapSodV8SmBl6kiNEMYbBQ0MLfoBwfGCNkQOjT
         UxKppVjvfOQDCBqEBBvpEZ49BqdyFnC8WBG1U2jjhSOI/XM/qMLHqnkHw5URNPfxU67I
         ZbwPcjk3gA7E2b4id5UrbvToGuuPMeqkmwLREckExURsA7Zgfcs9y8WM7Hnp9c9y9vcz
         aQmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=sPQR/APUiRrOuz3u8639VXZe5HKli9WOJrSrn3M6g6g=;
        b=MHf3oD3zMTdV4s5MZ605Wbu5YsRHhLgxce4Rs9hEA5SI4m+UKqR4WjiMP80jA2UOs4
         +Vh5fpMZoKVG134y387VmvZXbtehgnI1WdMvM/6rZ42dvltylQEmlK61AERDCF23lEoB
         SMuPNQBhJQ9VUNR67zuEis7I+q9Pt4jx1wfc+9DvnKkKKkkTKVeg1IwgHYVXBQ+cDFyK
         1yscuBss+WKdJnq4V0jLHIQ+IKO69w9/diDnvA9BIoDGrwCqiBNYeLbvjIO1ufgPHCKV
         8WeyjiFERL8wFZ5gotLHftGi73gPoELVXX1kyrHcTOYAfi7nAmVDl1Rg3IXIB23cOSNi
         CoEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sPQR/APUiRrOuz3u8639VXZe5HKli9WOJrSrn3M6g6g=;
        b=Bn5uINAKvg9nfGAR8IKbIfe++W4fOZFKA6L62rzkrDUOIPhbAjs7efi9OFW7oyXHwe
         R+coulrZ6sHJowhztcHDfUavfYzpMxwNyKWhTLpmuaTt9/ifi9MPi/OVMvtMV9o2WDMa
         wwHyRj/gsDTMOUZwyOAYEGYlpjXZLEt0BHkZ6k33c3Hg/G7oF/jmw5UKJ8X6ZJ09fnnJ
         uoqF6tMnFgSiHz7rlIpvf1ZieJ0uapWPTEoUYIiQclcyA52CLdBbYGZETE8ST5K/n1kq
         Cq4wYJfAWFPVtFcvwd6nhWPGS8j0vD9cR/JdQjATdeKvxGquaKQMQ/uUM9njwY2+5Z68
         fNFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sPQR/APUiRrOuz3u8639VXZe5HKli9WOJrSrn3M6g6g=;
        b=NDdDxpPCqe6S0uMZiy6ixlmb+zcM73DrEAusjcwwcf9dvMZTf+w7TfVo6HhoJros5l
         UGvnnpFM3bjEOLr9I1wgDoHCKn1WyCIXKjY8tudE18n986rIoxTSp3AaE8wtILd1EMpB
         KAPOiynn+/SSbS8vaz9xhqSiV4rKkqWGjwy1LeCVElUEb8vzHgiI/45pIwkACPzXLiwq
         WdXjmbxR77UGl8rTyfPv2fQKtxf8oDivxPdM2xHrTno48NHLtDE2qZ9obXEtetMyL6yG
         Ep9trRZzmpaXGY6jgIcXCWtF2gdWmkNvna5Rg19Sf2pxEnlpEAVIxlcnh5ALX5ZWCv8b
         vvTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nrCdCL0+AWfJxATvsRXLpvyhBONs+kI/tDuNrtcx8c67vUO0V
	VNrf0X11x7ec8rgqrtpersw=
X-Google-Smtp-Source: ABdhPJxaHdjKqBTQETkQPEFIPCTEFnBe1poFc0JNI6xHE+JQXe8KkEnlQ0ntagH62JB0PAJcowYP+Q==
X-Received: by 2002:ac8:306d:: with SMTP id g42mr1867768qte.18.1591227426007;
        Wed, 03 Jun 2020 16:37:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a914:: with SMTP id s20ls1776838qke.10.gmail; Wed, 03
 Jun 2020 16:37:05 -0700 (PDT)
X-Received: by 2002:a37:674d:: with SMTP id b74mr2198415qkc.108.1591227425656;
        Wed, 03 Jun 2020 16:37:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591227425; cv=none;
        d=google.com; s=arc-20160816;
        b=WEPiiflN2Hu7roDw9DUt0G21HgglSQedHp/UDZiNDz4GByqonxpXxVk0P/UgcfEp4q
         XqJO9p3RjrTER/I5Rm81/vku23pVw9P7IbRCyU2Nv3Nv08YQZcN956mQ3GZ+ZostJC5s
         hj2kHTMfM7cLHkwitVM3gPEqjC067CrvW0hjMbHczY8UeIvJpnVUL+M3kXlokzpv6aQr
         Br0Fqco0gvuw/eRTCk2hKXYV9GUlHIDvC5Iv+/SLxyrVB8l3MfJLhZHzP/UiD/nQV6Ph
         y5C8hxdQ20t9yV0jT9OjkCv2tawvlJ8MxZrmfcxi/i3/OWyPHj8OyM/YwhGttndpFjJW
         gQoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=3wa1pkAsU2skhMOjgSCtDLukoklykP+wIo/ZryMKBYs=;
        b=ghZ5nhzkNRfIL6+7cr0lM9J5zohS/QVuXG9RJjXK/p6lnpjtiiPS1rlmCJwm/6xRY5
         lZE30oCQq0fZ6C9XMsOnTmfnR6eqgUnwnvHFqlkNHWxqX3aPxIl9rfoaiXNtJTkRA1mo
         WVfcBfRzw6+Q9fkNuW2GWP2ybwMi88BxVzols0SzFT3JMQCWf+2xNOHUh4VwRl7HeWZp
         aRZ9z8JnaO7xzPcS/o9rGsbIUTxKblYZ65OaIKo4Ai8s1+Z6asFeOI3sBDZGNN6MwOKL
         nUBHKxINngnoKxCVTZ8S6+cXUT/KwV6y4vt4VLnIzWlDvdvp1REp2cMYxZq/NnWrkO2J
         rHzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id z202si150242qka.6.2020.06.03.16.37.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Jun 2020 16:37:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: GSUzGRKaXJ8YXQGSkm3uVMbwNzOG8e/nC7bdZCaOaYbxIEaGlFqtE5I4M6xabA+nR+gigVbMFh
 tinoDQdoB/Yw==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jun 2020 16:37:03 -0700
IronPort-SDR: s9fGx6z2J3L0rgat7KZTl/QTn7JftLhnSEaR1tbW5BF81CUVOPwsfJhzHFY5vD5HheRdtu0AQN
 wm6Yb0Cl0kvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,470,1583222400"; 
   d="gz'50?scan'50,208,50";a="294142022"
Received: from lkp-server01.sh.intel.com (HELO 8bb2cd163565) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 03 Jun 2020 16:37:01 -0700
Received: from kbuild by 8bb2cd163565 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jgcwO-0000Eg-Oy; Wed, 03 Jun 2020 23:37:00 +0000
Date: Thu, 4 Jun 2020 07:36:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Coly, Li," <colyli@suse.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [bcache:zoned 1/4] drivers/md/bcache/request.c:1340:9: error:
 implicit declaration of function 'blkdev_report_zones'
Message-ID: <202006040758.ixs2HDkv%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ew6BAiZeqk4r7MaW"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--ew6BAiZeqk4r7MaW
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/colyli/linux-bcache.git zoned
head:   7ad445611c4a5f908ba3e8f36ca6582fe5862749
commit: 04ac37cbb2bcc5a953e29796d2db9e4eb1f5f7c9 [1/4] bcache: export bcache zone information for zoned backing device
config: s390-randconfig-r021-20200603 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 16437992cac249f6fe1efd392d20e3469b47e39e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390-linux-gnu
        git checkout 04ac37cbb2bcc5a953e29796d2db9e4eb1f5f7c9
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |                                 ^
In file included from drivers/md/bcache/request.c:10:
In file included from drivers/md/bcache/bcache.h:193:
In file included from drivers/md/bcache/bset.h:9:
In file included from drivers/md/bcache/util.h:6:
In file included from include/linux/blkdev.h:28:
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
In file included from drivers/md/bcache/request.c:10:
In file included from drivers/md/bcache/bcache.h:193:
In file included from drivers/md/bcache/bset.h:9:
In file included from drivers/md/bcache/util.h:6:
In file included from include/linux/blkdev.h:28:
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
In file included from drivers/md/bcache/request.c:10:
In file included from drivers/md/bcache/bcache.h:193:
In file included from drivers/md/bcache/bset.h:9:
In file included from drivers/md/bcache/util.h:6:
In file included from include/linux/blkdev.h:28:
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
In file included from drivers/md/bcache/request.c:10:
In file included from drivers/md/bcache/bcache.h:193:
In file included from drivers/md/bcache/bset.h:9:
In file included from drivers/md/bcache/util.h:6:
In file included from include/linux/blkdev.h:28:
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
>> drivers/md/bcache/request.c:1340:9: error: implicit declaration of function 'blkdev_report_zones' [-Werror,-Wimplicit-function-declaration]
return blkdev_report_zones(dc->bdev, sector, nr_zones,
^
drivers/md/bcache/request.c:1340:9: note: did you mean 'blkdev_nr_zones'?
include/linux/blkdev.h:376:28: note: 'blkdev_nr_zones' declared here
static inline unsigned int blkdev_nr_zones(struct gendisk *disk)
^
20 warnings and 1 error generated.
--
include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |                                 ^
In file included from drivers/md/bcache/super.c:10:
In file included from drivers/md/bcache/bcache.h:193:
In file included from drivers/md/bcache/bset.h:9:
In file included from drivers/md/bcache/util.h:6:
In file included from include/linux/blkdev.h:28:
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
In file included from drivers/md/bcache/super.c:10:
In file included from drivers/md/bcache/bcache.h:193:
In file included from drivers/md/bcache/bset.h:9:
In file included from drivers/md/bcache/util.h:6:
In file included from include/linux/blkdev.h:28:
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
In file included from drivers/md/bcache/super.c:10:
In file included from drivers/md/bcache/bcache.h:193:
In file included from drivers/md/bcache/bset.h:9:
In file included from drivers/md/bcache/util.h:6:
In file included from include/linux/blkdev.h:28:
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
In file included from drivers/md/bcache/super.c:10:
In file included from drivers/md/bcache/bcache.h:193:
In file included from drivers/md/bcache/bset.h:9:
In file included from drivers/md/bcache/util.h:6:
In file included from include/linux/blkdev.h:28:
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
>> drivers/md/bcache/super.c:1392:8: error: no member named 'nr_zones' in 'struct request_queue'
d_q->nr_zones = b_q->nr_zones - reserved_zone_nr;
~~~  ^
drivers/md/bcache/super.c:1392:24: error: no member named 'nr_zones' in 'struct request_queue'
d_q->nr_zones = b_q->nr_zones - reserved_zone_nr;
~~~  ^
20 warnings and 2 errors generated.

vim +/blkdev_report_zones +1340 drivers/md/bcache/request.c

  1330	
  1331	static int cached_dev_report_zones(struct bch_report_zones_args *args,
  1332					   unsigned int nr_zones)
  1333	{
  1334		struct bcache_device *d = args->bcache_device;
  1335		struct cached_dev *dc = container_of(d, struct cached_dev, disk);
  1336		/* skip zone 0 which is fully occupied by bcache super block */
  1337		sector_t sector = args->sector + dc->sb.data_offset;
  1338	
  1339		/* sector is real LBA of backing device */
> 1340		return blkdev_report_zones(dc->bdev, sector, nr_zones,
  1341					   cached_dev_report_zones_cb, args);
  1342	}
  1343	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006040758.ixs2HDkv%25lkp%40intel.com.

--ew6BAiZeqk4r7MaW
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
IHLkpUwBAA==

--ew6BAiZeqk4r7MaW--
