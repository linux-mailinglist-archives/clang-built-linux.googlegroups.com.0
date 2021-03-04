Return-Path: <clang-built-linux+bncBD26TVH6RINBBS62QCBAMGQEPGHLSKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 279B432C3AD
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 01:43:57 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id o9sf28575951yba.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 16:43:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614818636; cv=pass;
        d=google.com; s=arc-20160816;
        b=pzCEaXV5/GCvzQ6RZXL7uKf2uLcbSjFV0i4LjHcYPLRYl7Ht2XG/YtgZ7icqqX6prH
         QFOd6TH7dxW7wPXPHQ2vIztrSPjOHzc92+7xXzlh0QOS9SD40cYr1YAsy8vm4cY+vdRZ
         989OM4Py3XnnUIg35ABWcc1+nsEtb/iUC30/8y5vo/J3C7Pt4AXBlpfpLjjarKcocqSE
         Sr2K0iA1W1aOWCPGw48ewZCanA7aIXClpNyPe0a5BtWXwWoLCDHNvXvVWq224/qb7Sk6
         3ApOUyxzVxb3cEm7EXjPaIUKMpWR4qc3T61s1rrWrYMHX4ELxnbNeikXrrACS70d7v26
         gZQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=ncnyKUC2zCRBNEy2wwBFcTma4APgbti2AlbNmaOm08U=;
        b=EnRpvadWo612PHzGfR6I6NIOJTEjgeI43Qac3XqTD5b5fdYmwvh3EtXnRd+4T5STbZ
         Q9UxZXysJM4vDwciUOLYAvmJvK8gJV7RZMZNs95fLCF5lFDBDpjWU+8NbsUo1viSsmOc
         wUVV4dltzVzetV8kIk4ExzM7+LI1WWzA1thnaAOCBc3AA5oh2qnmj7xFpMnox7fd5zRS
         mK9iNZpL8sAvnwhWXFrFILnSgn2ufaDp5cq8kp2Gdqk7EfE3zMTiQeI4JvtcrX8hyblI
         WzZGwg1ZoO7yWA4kv7JmA/UkyUvYADoTDQdx88ECVT8CFjgfiiDf/HiYVwmf99n97JDO
         M6XQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ncnyKUC2zCRBNEy2wwBFcTma4APgbti2AlbNmaOm08U=;
        b=QwX/Te61rnNaGuVBUpeSXUIF/qzbC//uOwxv/GzvaHl2r0YNnB/oMUMxlvCkP7/gnd
         UbjZDiJVTdHwp6Wz5QTYvATpg/OwX9/NgePp2+Op9aJj5Vq8BTNm+m9D+KxHP8BdsBTB
         LmjTq8+VVr+6cicjm7537NqlKvZVUQDDkFRmFZJQ4Dx5Ap9IEXuoWauf1d87cPjVzZL9
         dyKFDI2nk/fp2Viynb/QawuAw7hMBLZbp8uDJzLKGl4uHumpMiOBoXf0n/hYhdKx3oNx
         i20x0N9BBbG0J33zE/hdNhsLAjSDPfm1nT5agi/dlXqGzOxHvxkPZkQDYv1fl4+zJvNx
         skYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ncnyKUC2zCRBNEy2wwBFcTma4APgbti2AlbNmaOm08U=;
        b=KRqBqjT781Z1N+OxTqQHyhpj2WMX9HgR0UDgUOQxLt+/UO2/GYZPQ+gIUvCzrc7m4v
         0YM/sTwaZryiN4u6cENMqSEeeXa4AZ6b4E7vYcNbNbyFPH+KjToht7wPjfGq6oEdHolg
         SIK/jJQZVVBQeLIZ73rD0MUuk7g/qfQjRneWHbrYR6SnvwIs5nVpLVseGkn/mCrddeSM
         evjOsYOyW/mAbyex551mIi1TCla2BG1JLbCDnqpdY4g0T2Y6iqUIGEC9Bmhu9VjhQI+j
         UVQUNLZg3ENDIjGbvOZpmbT/LgIuY7MoS9kRANjS5u8RWbznBmUGZmUUHNi8Ici8MbLT
         T2Dg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kSOIG81Aq5dSxr/W9Cf/MFc8x5vUj0nRHqQ9wAcdVdCh7V/VI
	Nxm25O0rBkJdduLYqxYah/c=
X-Google-Smtp-Source: ABdhPJyyteRdMx9yIAzhHWIk8ZSUbjAr7bdEOuK8Fv7DBYwNiyB6e7/V6EF3p6/YmdLwvTmK6EJ8rA==
X-Received: by 2002:a25:8006:: with SMTP id m6mr2914564ybk.336.1614818636000;
        Wed, 03 Mar 2021 16:43:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3b57:: with SMTP id i84ls1976518yba.2.gmail; Wed, 03 Mar
 2021 16:43:55 -0800 (PST)
X-Received: by 2002:a25:d3c5:: with SMTP id e188mr2880509ybf.345.1614818635466;
        Wed, 03 Mar 2021 16:43:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614818635; cv=none;
        d=google.com; s=arc-20160816;
        b=jrao1gCCsOjxVFKkCg5bjJq6CNPCnVJIuikfsCQxmLlnqxLL90Nu2kuX02YmNw+X9x
         lG6bfdSTkdl8Kwdwy6TJ/GkfmGdCdx8WpaKnCsx/mNEMHsgP8UtpBDERG5JOBm8LFr53
         OGMdA4dnEip0IYjBbAN+hbMn9Bd79YHvOmoGtpOJuI5VyCnKb+k1LHE4JiIz//Ar/Dpj
         397pU8QUkGDE3ba6QH1DLNS5hBRfFpymB2cbtYwxZvBxak/PYbzA2zGztJPcfDA94mwG
         RVB1jK2xSaxnMH4sWB8t/abXsahZ5lWXBaWIgf9a6prGfH91STXlAtWaUafStmYiY9VI
         zmVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=ujpWY2hsRKWR7BI7W5akl9pmfG0tHiOunXWckmTNsZg=;
        b=JlOcK8YVIytBkmRCMMFY5P+JVy5dERqSC6pctLkJQj5yv5QkI6WdoftL8s0uIP2MqU
         FA24Rqi+FA/Pckhbdl6unyHFq+M+9/4ijQhh9/qRzPS61z1JeqwNk0Xz+mzL1ZtJsyzJ
         5o9nWSMilcs+hzFe5YG2cxpvy8TOYMGrxqQa9hgTXTEXEn39mG/tWuSGNfSLgLuCd9sW
         AH6ben8o3UM4SRureimGBPcPU9b1GgB5rrBNNgsB7V2vmrIFsFs3CbWYuNe6M8+/a97f
         3WasN2bjiI9UaDnQQ2AA7K0Yg65AZ4LJUHUMcQZhHyua+jQ9mxaC6eqUF/TyrH27UGhD
         X73w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id s44si2033128ybi.3.2021.03.03.16.43.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 16:43:55 -0800 (PST)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: RzirvzG97i8JHeLpfXKm42DBp8c6nxEszEyytyY32qcN/0Gi/ePFbdlntLSyyFK385TBx5lr8M
 Am2XStn8nKQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="183930683"
X-IronPort-AV: E=Sophos;i="5.81,221,1610438400"; 
   d="scan'208";a="183930683"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2021 16:43:53 -0800
IronPort-SDR: N7D+3EvlNR8UwvdwOPucLAM6Aik2z5DkxQd+lTINUGQRjKhToOYwUXkTBrKmR3hHeArqmZt36T
 8bOo7+m6Hh3g==
X-IronPort-AV: E=Sophos;i="5.81,221,1610438400"; 
   d="scan'208";a="407476586"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2021 16:43:51 -0800
Subject: Re: [kbuild-all] Re: net/ceph/messenger_v1.c:1204:5: warning: stack
 frame size of 2944 bytes in function 'ceph_con_v1_try_read'
To: Ilya Dryomov <idryomov@gmail.com>, kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 LKML <linux-kernel@vger.kernel.org>
References: <202103011657.ttO1k7BO-lkp@intel.com>
 <CAOi1vP8nq6fOC+coHdq8w63k5uq8kXHY9zgtxDs0k_aVWY88wQ@mail.gmail.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <b34f6a4e-a779-a319-a948-5036a0c9b62b@intel.com>
Date: Thu, 4 Mar 2021 08:43:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAOi1vP8nq6fOC+coHdq8w63k5uq8kXHY9zgtxDs0k_aVWY88wQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 3/1/21 7:42 PM, Ilya Dryomov wrote:
> On Mon, Mar 1, 2021 at 9:36 AM kernel test robot <lkp@intel.com> wrote:
>> Hi Ilya,
>>
>> FYI, the error/warning still remains.
>>
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>> head:   fe07bfda2fb9cdef8a4d4008a409bb02f35f1bd8
>> commit: 2f713615ddd9d805b6c5e79c52e0e11af99d2bf1 libceph: move msgr1 protocol implementation to its own file
>> date:   3 months ago
> It's fine.  This commit just moved the code which has been this way for
> years and never caused any real issues.  Please add it to the allowlist
> if possible.

Hi llya,

Thanks for the suggestion, we have added to the allowlist.

Best Regards,
Rong Chen

>
>> config: powerpc64-randconfig-r001-20210301 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 5de09ef02e24d234d9fc0cd1c6dfe18a1bb784b0)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install powerpc64 cross compiling tool for clang build
>>          # apt-get install binutils-powerpc64-linux-gnu
>>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2f713615ddd9d805b6c5e79c52e0e11af99d2bf1
>>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>          git fetch --no-tags linus master
>>          git checkout 2f713615ddd9d805b6c5e79c52e0e11af99d2bf1
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>     __do_insb
>>     ^
>>     arch/powerpc/include/asm/io.h:541:56: note: expanded from macro '__do_insb'
>>     #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>>                                            ~~~~~~~~~~~~~~~~~~~~~^
>>     In file included from net/ceph/messenger_v1.c:8:
>>     In file included from include/net/sock.h:38:
>>     In file included from include/linux/hardirq.h:10:
>>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>>     In file included from include/linux/irq.h:20:
>>     In file included from include/linux/io.h:13:
>>     In file included from arch/powerpc/include/asm/io.h:604:
>>     arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>>     DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
>>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>>                     __do_##name al;                                 \
>>                     ^~~~~~~~~~~~~~
>>     <scratch space>:32:1: note: expanded from here
>>     __do_insw
>>     ^
>>     arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
>>     #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>>                                            ~~~~~~~~~~~~~~~~~~~~~^
>>     In file included from net/ceph/messenger_v1.c:8:
>>     In file included from include/net/sock.h:38:
>>     In file included from include/linux/hardirq.h:10:
>>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>>     In file included from include/linux/irq.h:20:
>>     In file included from include/linux/io.h:13:
>>     In file included from arch/powerpc/include/asm/io.h:604:
>>     arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>>     DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
>>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>>                     __do_##name al;                                 \
>>                     ^~~~~~~~~~~~~~
>>     <scratch space>:36:1: note: expanded from here
>>     __do_insl
>>     ^
>>     arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
>>     #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>>                                            ~~~~~~~~~~~~~~~~~~~~~^
>>     In file included from net/ceph/messenger_v1.c:8:
>>     In file included from include/net/sock.h:38:
>>     In file included from include/linux/hardirq.h:10:
>>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>>     In file included from include/linux/irq.h:20:
>>     In file included from include/linux/io.h:13:
>>     In file included from arch/powerpc/include/asm/io.h:604:
>>     arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>>     DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
>>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>>                     __do_##name al;                                 \
>>                     ^~~~~~~~~~~~~~
>>     <scratch space>:40:1: note: expanded from here
>>     __do_outsb
>>     ^
>>     arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
>>     #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>>                                             ~~~~~~~~~~~~~~~~~~~~~^
>>     In file included from net/ceph/messenger_v1.c:8:
>>     In file included from include/net/sock.h:38:
>>     In file included from include/linux/hardirq.h:10:
>>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>>     In file included from include/linux/irq.h:20:
>>     In file included from include/linux/io.h:13:
>>     In file included from arch/powerpc/include/asm/io.h:604:
>>     arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>>     DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
>>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>>                     __do_##name al;                                 \
>>                     ^~~~~~~~~~~~~~
>>     <scratch space>:44:1: note: expanded from here
>>     __do_outsw
>>     ^
>>     arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
>>     #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>>                                             ~~~~~~~~~~~~~~~~~~~~~^
>>     In file included from net/ceph/messenger_v1.c:8:
>>     In file included from include/net/sock.h:38:
>>     In file included from include/linux/hardirq.h:10:
>>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>>     In file included from include/linux/irq.h:20:
>>     In file included from include/linux/io.h:13:
>>     In file included from arch/powerpc/include/asm/io.h:604:
>>     arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>>     DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
>>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>>                     __do_##name al;                                 \
>>                     ^~~~~~~~~~~~~~
>>     <scratch space>:48:1: note: expanded from here
>>     __do_outsl
>>     ^
>>     arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
>>     #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>>                                             ~~~~~~~~~~~~~~~~~~~~~^
>>>> net/ceph/messenger_v1.c:1204:5: warning: stack frame size of 2944 bytes in function 'ceph_con_v1_try_read' [-Wframe-larger-than=]
>>     int ceph_con_v1_try_read(struct ceph_connection *con)
>>         ^
>>     13 warnings generated.
>>
>>
>> vim +/ceph_con_v1_try_read +1204 net/ceph/messenger_v1.c
>>
>>    1200
>>    1201  /*
>>    1202   * Read what we can from the socket.
>>    1203   */
>>> 1204  int ceph_con_v1_try_read(struct ceph_connection *con)
>>    1205  {
>>    1206          int ret = -1;
>>    1207
>>    1208  more:
>>    1209          dout("try_read start %p state %d\n", con, con->state);
>>    1210          if (con->state != CEPH_CON_S_V1_BANNER &&
>>    1211              con->state != CEPH_CON_S_V1_CONNECT_MSG &&
>>    1212              con->state != CEPH_CON_S_OPEN)
>>    1213                  return 0;
>>    1214
>>    1215          BUG_ON(!con->sock);
>>    1216
>>    1217          dout("try_read tag %d in_base_pos %d\n", (int)con->in_tag,
>>    1218               con->in_base_pos);
>>    1219
>>    1220          if (con->state == CEPH_CON_S_V1_BANNER) {
>>    1221                  ret = read_partial_banner(con);
>>    1222                  if (ret <= 0)
>>    1223                          goto out;
>>    1224                  ret = process_banner(con);
>>    1225                  if (ret < 0)
>>    1226                          goto out;
>>    1227
>>    1228                  con->state = CEPH_CON_S_V1_CONNECT_MSG;
>>    1229
>>    1230                  /*
>>    1231                   * Received banner is good, exchange connection info.
>>    1232                   * Do not reset out_kvec, as sending our banner raced
>>    1233                   * with receiving peer banner after connect completed.
>>    1234                   */
>>    1235                  ret = prepare_write_connect(con);
>>    1236                  if (ret < 0)
>>    1237                          goto out;
>>    1238                  prepare_read_connect(con);
>>    1239
>>    1240                  /* Send connection info before awaiting response */
>>    1241                  goto out;
>>    1242          }
>>    1243
>>    1244          if (con->state == CEPH_CON_S_V1_CONNECT_MSG) {
>>    1245                  ret = read_partial_connect(con);
>>    1246                  if (ret <= 0)
>>    1247                          goto out;
>>    1248                  ret = process_connect(con);
>>    1249                  if (ret < 0)
>>    1250                          goto out;
>>    1251                  goto more;
>>    1252          }
>>    1253
>>    1254          WARN_ON(con->state != CEPH_CON_S_OPEN);
>>    1255
>>    1256          if (con->in_base_pos < 0) {
>>    1257                  /*
>>    1258                   * skipping + discarding content.
>>    1259                   */
>>    1260                  ret = ceph_tcp_recvmsg(con->sock, NULL, -con->in_base_pos);
>>    1261                  if (ret <= 0)
>>    1262                          goto out;
>>    1263                  dout("skipped %d / %d bytes\n", ret, -con->in_base_pos);
>>    1264                  con->in_base_pos += ret;
>>    1265                  if (con->in_base_pos)
>>    1266                          goto more;
>>    1267          }
>>    1268          if (con->in_tag == CEPH_MSGR_TAG_READY) {
>>    1269                  /*
>>    1270                   * what's next?
>>    1271                   */
>>    1272                  ret = ceph_tcp_recvmsg(con->sock, &con->in_tag, 1);
>>    1273                  if (ret <= 0)
>>    1274                          goto out;
>>    1275                  dout("try_read got tag %d\n", (int)con->in_tag);
>>    1276                  switch (con->in_tag) {
>>    1277                  case CEPH_MSGR_TAG_MSG:
>>    1278                          prepare_read_message(con);
>>    1279                          break;
>>    1280                  case CEPH_MSGR_TAG_ACK:
>>    1281                          prepare_read_ack(con);
>>    1282                          break;
>>    1283                  case CEPH_MSGR_TAG_KEEPALIVE2_ACK:
>>    1284                          prepare_read_keepalive_ack(con);
>>    1285                          break;
>>    1286                  case CEPH_MSGR_TAG_CLOSE:
>>    1287                          ceph_con_close_socket(con);
>>    1288                          con->state = CEPH_CON_S_CLOSED;
>>    1289                          goto out;
>>    1290                  default:
>>    1291                          goto bad_tag;
>>    1292                  }
>>    1293          }
>>    1294          if (con->in_tag == CEPH_MSGR_TAG_MSG) {
>>    1295                  ret = read_partial_message(con);
>>    1296                  if (ret <= 0) {
>>    1297                          switch (ret) {
>>    1298                          case -EBADMSG:
>>    1299                                  con->error_msg = "bad crc/signature";
>>    1300                                  fallthrough;
>>    1301                          case -EBADE:
>>    1302                                  ret = -EIO;
>>    1303                                  break;
>>    1304                          case -EIO:
>>    1305                                  con->error_msg = "io error";
>>    1306                                  break;
>>    1307                          }
>>    1308                          goto out;
>>    1309                  }
>>    1310                  if (con->in_tag == CEPH_MSGR_TAG_READY)
>>    1311                          goto more;
>>    1312                  ceph_con_process_message(con);
>>    1313                  if (con->state == CEPH_CON_S_OPEN)
>>    1314                          prepare_read_tag(con);
>>    1315                  goto more;
>>    1316          }
>>    1317          if (con->in_tag == CEPH_MSGR_TAG_ACK ||
>>    1318              con->in_tag == CEPH_MSGR_TAG_SEQ) {
>>    1319                  /*
>>    1320                   * the final handshake seq exchange is semantically
>>    1321                   * equivalent to an ACK
>>    1322                   */
>>    1323                  ret = read_partial_ack(con);
>>    1324                  if (ret <= 0)
>>    1325                          goto out;
>>    1326                  process_ack(con);
>>    1327                  goto more;
>>    1328          }
>>    1329          if (con->in_tag == CEPH_MSGR_TAG_KEEPALIVE2_ACK) {
>>    1330                  ret = read_keepalive_ack(con);
>>    1331                  if (ret <= 0)
>>    1332                          goto out;
>>    1333                  goto more;
>>    1334          }
>>    1335
>>    1336  out:
>>    1337          dout("try_read done on %p ret %d\n", con, ret);
>>    1338          return ret;
>>    1339
>>    1340  bad_tag:
>>    1341          pr_err("try_read bad con->in_tag = %d\n", (int)con->in_tag);
>>    1342          con->error_msg = "protocol error, garbage tag";
>>    1343          ret = -1;
>>    1344          goto out;
>>    1345  }
>>    1346
> Thanks,
>
>                  Ilya
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b34f6a4e-a779-a319-a948-5036a0c9b62b%40intel.com.
