Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB27RUCEAMGQEFKUWTZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 423753DDF1D
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 20:26:53 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id i18-20020a9d62520000b02904ccb7285c38sf8451704otk.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 11:26:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627928812; cv=pass;
        d=google.com; s=arc-20160816;
        b=zJMsFKegpxhhJQApLUE6u4SsTjbMewlgUNJi3gIhGljZjTDXSPAm9zLjLJc4hkMicS
         XJVr+TbFccmR/CfUhVLnTm7TUCNiUPBwpboFf6qNBcp2eoGbICeJTWGauLZsuO4Mkdvv
         evej8lABkcn4Vqlrx+IRjLheGRq+7pzPjzp5060xI1w4ivSBpbFRWs08eSp49+RNeWQL
         X+EwS6YJfYx94BMvDEpf+m/dGnvksRbgK27qa88Qa0pUdbWjfbYXYktMsAyo8idkzBUb
         uZKr4fKJeMhN4gsOSv2OWhMUW9+TUVg6NJTYSwMO4bfLlweHUJ8TRBPP8cSjLUbzFkR7
         OpNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=C04T6I5dK9cuhFWe6H7cIN6zC72YBf7QgzHA+EfgBNk=;
        b=btOLAzmxEQv6tt0OsjMgtTDfWgZPg0ThhA4EQeWaasXGe/qauo670Y0EAwM/Emw1gB
         sZj64JTODcpcp73YG705CvgOgvUZzo4BWw/FkAzrhHxk3Yy8IGk8JbWE2kr9HUbQ8zX4
         pBKMF3OxNUh9sV180LhNaUXL35C8dioi2ph7dim+Fry8EuIdxue/Dil/HOxoZ3llDhYN
         lEWaCN5/w9vxkBNuQ259w5zEvnXGYS+xWMVyn3ITmV2zeTmmPXWZt2mnxbuD17V9PtGe
         j885g/odpkSac9tzmzRq0XKdbQ5QcS7K6KXaeeFzD7ulQXaWWqv05oewJ6YGHDLhIklz
         +6vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C04T6I5dK9cuhFWe6H7cIN6zC72YBf7QgzHA+EfgBNk=;
        b=sxAoZ+6dJqmrMzOGIFi+PYxehNaHu5OpflvIcyT+kkhRAsR72kNQOB8qu2BBRLEvsX
         OVq8fQhIF0a/Xjb0AU6bl8GonAEatPfnfAPS/e5/6ObwXXm1LqaYU6GQAa7uCylz9mse
         P7rcdi3UrgaPUoa2HrjUA3L0Eqy1HkYJQt3dHbnZadNGkabltMRWCpwNu+et/21r35Mz
         wJ6SAoGljDUa0t3QnhuQAnENDhgUV9vTLq9Q8Fgp/+EgkBcsm/U0OA4gBMxS4sm5btRT
         c7VatSR8+mtL3l0XXoJXQZZsWBUSzHZjZ66lqJ/p/u3EX0Hf2Hp70KYWgIh6oHGUAUX+
         59Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=C04T6I5dK9cuhFWe6H7cIN6zC72YBf7QgzHA+EfgBNk=;
        b=Uo+FjRTM6FkxTu/ocDjbfXyXnsqnT8JpUfbHpz8tG4B6Gy27mi7c86KkLY+Ou4VJOV
         nNGTRwC3SlPfjkOpVlGnBher0Dyw5Jt3ChWUQM0RizhgNqYTiTx4u1j7jHfaklta52fN
         ryB/ACVnM2cFH6eijbnyMSAC6JCF1WkTcvi5YxSF7OXUQImmvxryytitBD/Ewg/mOYIm
         b/A1Auw4zBXTwOI4cEWp0ANOEgu9jUFyHjwUQ+hCseBYHj+7JCWY7TazN8/45o3toWbE
         L7tM9CTEi+LyNWreS/fOBVFrUvhCC+5Wxs6nVS/UFsi01imO6IW76eBTRuFCwC5Epuz5
         dCHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dukpXEgK5MKvQt8h6FEkuHFplFlslREtiZpyXu0VZH1AHo/AX
	lSYuyzwEiRc63VBgQXoRju0=
X-Google-Smtp-Source: ABdhPJxdXA4y6Q7ltedIdLenyUwpt4/AAJknL5LSQSsMtRGCvbgAl62t4sMZtNXlLD+j7FB5kjerDQ==
X-Received: by 2002:aca:7550:: with SMTP id q77mr10889491oic.5.1627928811802;
        Mon, 02 Aug 2021 11:26:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:51c7:: with SMTP id s190ls625893ooa.7.gmail; Mon, 02 Aug
 2021 11:26:51 -0700 (PDT)
X-Received: by 2002:a4a:be1a:: with SMTP id l26mr11867711oop.27.1627928811186;
        Mon, 02 Aug 2021 11:26:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627928811; cv=none;
        d=google.com; s=arc-20160816;
        b=tel3xQmnTSBzxXAP2upNQWEiszqFeNHfoh9s9VtHpHWZRIoATekkk1qKbR7wdA5iLc
         T/+HA/zlpLHJj3hlroqEary3JRH3BYq1cuxeqoE492fcnets+JK9oQreUZRuhbiUG/mr
         wy7KxXaB8dkByrrPjF49LjZdRoD6r2Yuvn076iZk+FVY6rqqtIDvL+GgN2RcLaS1+Zjs
         qGIWHCQgLmDHHo+PDOCBDaBnwMn688wnn3KPv9VFN9gEnIq88rx2FxTuhKsejnW/F7Hw
         CZFR+olT9rBDwGmimHfpfvw5PnGXgvLcQW12MdOde4cJtjodIX1U0IE2OwLVFKHscfxQ
         aT5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=pOcrbfRGaCK/VcJPExZwg1DKNaAAlzTAt929aPSrWoI=;
        b=FTgNHL4O209Co4pFaeEba1WBrGzXJY9oHE7rsKGWoZtuBBNN5GhKMm8J59RCY1ss3k
         mqQCTsF6FyKNZsi7nPi357onq+0qiuUej+DxAW06n/fKoupRsfMsvVeSeNg1I3etbvzp
         kHSG2qGuhAE3sdp5HhYK+7eBEBfoYSZ3K8R/LPwQgYEfaQCnyC9IGuRG8zFp+Nig/V3s
         xTgL9c314/GD0cV5lG6AWMSvSE6lgQ+Hbx4ehI455Mp1q6cwlWp7WHQRNvcjywfxIpCy
         PPGf5RCcStpY8lOuUFyVw7jq/vaHoGYdKTaJcJqIwHDEOBbRE55dO/xpVNt1wWBxnlRg
         4eJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id q1si817208oij.1.2021.08.02.11.26.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Aug 2021 11:26:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="193104586"
X-IronPort-AV: E=Sophos;i="5.84,289,1620716400"; 
   d="gz'50?scan'50,208,50";a="193104586"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Aug 2021 11:26:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,289,1620716400"; 
   d="gz'50?scan'50,208,50";a="478957856"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 02 Aug 2021 11:26:48 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mAceF-000DF2-Ij; Mon, 02 Aug 2021 18:26:47 +0000
Date: Tue, 3 Aug 2021 02:26:11 +0800
From: kernel test robot <lkp@intel.com>
To: John Garry <john.garry@huawei.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org
Subject: Re: [RFC PATCH] null_blk: Add pseudo-managed interrupts support
Message-ID: <202108030259.vRvHnXnv-lkp@intel.com>
References: <1627917756-122544-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="x+6KMIRAuhnl3hBn"
Content-Disposition: inline
In-Reply-To: <1627917756-122544-1-git-send-email-john.garry@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi John,

[FYI, it's a private test report for your RFC patch.]
[auto build test ERROR on block/for-next]
[also build test ERROR on hch-configfs/for-next linux/master linus/master v5.14-rc3 next-20210730]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/John-Garry/null_blk-Add-pseudo-managed-interrupts-support/20210802-232925
base:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git for-next
config: s390-randconfig-r032-20210802 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 4f71f59bf3d9914188a11d0c41bedbb339d36ff5)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/0day-ci/linux/commit/71a575975dd2d9622d9ec5f49a5b90e5082452c9
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review John-Garry/null_blk-Add-pseudo-managed-interrupts-support/20210802-232925
        git checkout 71a575975dd2d9622d9ec5f49a5b90e5082452c9
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=s390 SHELL=/bin/bash drivers/block/null_blk/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/block/null_blk/main.c:12:
   In file included from drivers/block/null_blk/null_blk.h:8:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from drivers/block/null_blk/main.c:12:
   In file included from drivers/block/null_blk/null_blk.h:8:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from drivers/block/null_blk/main.c:12:
   In file included from drivers/block/null_blk/null_blk.h:8:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> drivers/block/null_blk/main.c:1590:9: error: no member named 'use_managed_irq' in 'struct blk_mq_queue_map'
                   qmap->use_managed_irq = 1;
                   ~~~~  ^
   12 warnings and 1 error generated.


vim +1590 drivers/block/null_blk/main.c

  1584	
  1585	static int null_map_queues(struct blk_mq_tag_set *set)
  1586	{
  1587		struct blk_mq_queue_map *qmap = &set->map[HCTX_TYPE_DEFAULT];
  1588	
  1589		if (g_irqmode == NULL_IRQ_MANAGED)
> 1590			qmap->use_managed_irq = 1;
  1591	
  1592		return blk_mq_map_queues(qmap);
  1593	}
  1594	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108030259.vRvHnXnv-lkp%40intel.com.

--x+6KMIRAuhnl3hBn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--x+6KMIRAuhnl3hBn--
