Return-Path: <clang-built-linux+bncBD26TVH6RINBBZMF42DAMGQEANELIXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2EE3B5A3C
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 10:05:58 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id e14-20020a170902784eb0290102b64712f9sf5446012pln.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 01:05:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624867557; cv=pass;
        d=google.com; s=arc-20160816;
        b=CgAwew9Ciq8Vk8hf4CEg+Qw1iEqGlUZE0MGV40FbgJEW9/+5ZTzE96iSmuYqXvM7QZ
         3awZvYO585o5XKDx+c65gn0wqfMOMun9X9pyYvxVUAOu/4noBWgPSXJxkjzG29kW/t/d
         m+MlPPH5ur3o9n/lIuW0/4DPpCfcKoNWoCygxRnJC8tKNf0KQDCbxz8bzkQ7QV52FE8j
         DYxpIK+CrvDnfGlvZ2kFI02HOI7eyoyd3pl7Ul33kim5fTlsGKarmtdjMBrL6VAeh0s6
         aCwsnv7I8DH0cWdvalG475alaQ0FzfY9LiTx0NqUc5ApCNgqajKmgNinmJfLzVVm/8KR
         OM7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=V+pgD9DNBsxptzHqMebDU3w4bgHSvxSUyCFutFKtRVU=;
        b=Q5v1JkJlek4xddT/jXtpnltGWkafHZwvuUMoz27lZqIuVUaLQ/C78UC15S061E3BwN
         VDQPs9aqjk0j6Nl8VmK/mqzrg0Nh38Gtwm2yF/TdjYwLldPuqZjRB38aJRJikRlLswia
         qW1lXjT0zmMqcP9kOQsAPqyEscttR2wWDJTIuArUydVpBubYA4mgNY1XA0bNrY757dXD
         6Cey3z4MqP8PEEB302K/Zzx23mVsRX+LXz1HNybdgS1nMD6MRISXkHschDmEM1hTkXVF
         6vkamapwPVHsiJOa5T9Gqj+hkz1loJOyaA+LL+eqGzMYC5e0NGVkhfnGeYQY4+4yCHdg
         k2Uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V+pgD9DNBsxptzHqMebDU3w4bgHSvxSUyCFutFKtRVU=;
        b=ODqnpeVobQqQvQ2IdOBrP3UZIzjdV3PvWGGUKK/t7s+DPxKLFn02LVlgwG4AIrzXnH
         FwWX9AnO8zoUgzbYKC6kQ41xAcgJLg2xDbZZabatzbxVOw3ajCFRkMOBqccYbSJIUZPe
         OHN7c6rvek+OFpY3/E6NV7X6KjHZT/WiHBp5kFY0rA2FFDpwNNsp227okQAcBouScf++
         qU99B1BCjd40b+v6g6bSvMgcCw65janR30ztyFHOhaFDwPkD/O/23EETSs6xpO5X+9VD
         q7n9GSVJnzK6E4Yss0Y5b6PGpIdApKMncX5vstXmi6zyKrd+Qf04nFgZSrlNWgpssJ6h
         BCYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V+pgD9DNBsxptzHqMebDU3w4bgHSvxSUyCFutFKtRVU=;
        b=DmvoIYfTTXux8eYhiOnjs18ZdLr1N1a16gDnCRdhtmqf/YFEsf+xzCQXSAGkxmhk6l
         RcMRfVLF1z52KFte7Ab2rt7t6llp91oq+H77CblC6IloJuzX76Zj5+sq9AdclDW/J9UB
         4s3v6XF5w5kTWly/5I/C9Mdb8ebTFNZ3GhDmS2iMBp0PtwlIhMdo8wok3kMR1Qqqy5sO
         NoNJ3/2LsGCHiwVuYNcPhwXF1s2J7ioYmG9UfuFrg/ZqvODzx9sqGdVQBa3amArKJRcW
         k2uugS2iZBZ195K/1dVjIIC3aDkuqP+DK5Qu8lYo5Pt6fYMz53/6aNUh15kXIq5D0Luy
         RJHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Uw3sUf3RygeXnh28Qh2+270LAyw0arayYWGrjevX6hYa4QPQI
	RNEgBn8481+ydG7CTjfYJJ8=
X-Google-Smtp-Source: ABdhPJzby/mD4kagFIw8EG1vaDaRmedsAFTpq8avmZjuzSNmrKV0GyAfDnMrnkv/sWkn88xhLzFGdg==
X-Received: by 2002:a17:902:9a02:b029:118:307e:a9dd with SMTP id v2-20020a1709029a02b0290118307ea9ddmr21632817plp.47.1624867557275;
        Mon, 28 Jun 2021 01:05:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa09:: with SMTP id be9ls9000625plb.6.gmail; Mon, 28
 Jun 2021 01:05:56 -0700 (PDT)
X-Received: by 2002:a17:90a:ab96:: with SMTP id n22mr26374535pjq.92.1624867556748;
        Mon, 28 Jun 2021 01:05:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624867556; cv=none;
        d=google.com; s=arc-20160816;
        b=k0z3QZbk1YhwrVboVuNOWbIQljY+kIDIYedD05NNQbAUF/mbx7TJja0y4AoBYUbLp3
         ZSZx3NT7rGWmsk5zlWFn25V+78WZv4Ia1+2lvveyfuiNrQmHvYWV2ycj4ZrZP1zER3T5
         qfd6LhpEbhWg0ESOCCMc/KNAJKq6RjmZXMTGidPp6HU72OSRQNAOfWhLz5ZbNhDYEwWL
         rCbqoTpeTIKTugRqeuuPKEzlK/w3Lpl1HWxT7KEodxvWX3JwsJuv0MfRmxV+ED9N/aV5
         gzY6PWxOIlnF2YzJ+xBBalZ+eVtHEuy/Fe5cwtBVgWGnlqautX1AUkNCwjyl6PFeP/1z
         oFgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=VcQK6b8Q1K4mMo4J4GLgB2LCcmGGPFFZDsUg4tVqu2A=;
        b=SL96jo2GS7CmlVut6moaik//HyLgb3Bny3FkuE6nT7cmDLVGclV+48WLdi8poyFmWJ
         8xSurnBkGvyUrryZxbjsABKL5iZE8hvNZFrL4e0AvA3X42cbvtIAKTWlmG7/tOoPD2mf
         n1UvVStPpvCXOeuh2U9jnpZcTwKO1CB9LZe4rIcqSGAvfEaXdz074JCuPjFET6lt8R0B
         x5Rsf1K/+IkQXQP3tGt4aGoML6zsmsD6qVDeouDODLqH4fGCSMNrtvXj1ttbwvLK2nSZ
         XefYD9MlRAQcXMVUPZ5dzMSwCnKbZA668qsac8wGlekjBDr8g4KOgKjU9X5z3qOMs5Kx
         19uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id o21si795446pgu.0.2021.06.28.01.05.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Jun 2021 01:05:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-IronPort-AV: E=McAfee;i="6200,9189,10028"; a="204901470"
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; 
   d="scan'208";a="204901470"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jun 2021 01:05:56 -0700
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; 
   d="scan'208";a="456226358"
Received: from rongch2-mobl.ccr.corp.intel.com (HELO [10.255.30.185]) ([10.255.30.185])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jun 2021 01:05:53 -0700
Subject: Re: [kbuild-all] Re: net/ceph/messenger_v2.c:2808:5: warning: stack
 frame size (2336) exceeds limit (2048) in function 'ceph_con_v2_try_read'
To: Ilya Dryomov <idryomov@gmail.com>, kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 LKML <linux-kernel@vger.kernel.org>
References: <202106280955.VUsBSyHq-lkp@intel.com>
 <CAOi1vP-FR2PpqdW4WuhJaaFPZifxthf0B45dV03v00ef66R8wg@mail.gmail.com>
From: "Chen, Rong A" <rong.a.chen@intel.com>
Message-ID: <a875976b-3117-f001-606b-8e90802bef8a@intel.com>
Date: Mon, 28 Jun 2021 16:05:48 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAOi1vP-FR2PpqdW4WuhJaaFPZifxthf0B45dV03v00ef66R8wg@mail.gmail.com>
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



On 6/28/2021 4:02 PM, Ilya Dryomov wrote:
> On Mon, Jun 28, 2021 at 3:25 AM kernel test robot <lkp@intel.com> wrote:
>>
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>> head:   62fb9874f5da54fdb243003b386128037319b219
>> commit: cd1a677cad994021b19665ed476aea63f5d54f31 libceph, ceph: implement msgr2.1 protocol (crc and secure modes)
>> date:   7 months ago
>> config: powerpc64-randconfig-r034-20210628 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 59558129276098d62046c8cda92240d292cbfb1c)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install powerpc64 cross compiling tool for clang build
>>          # apt-get install binutils-powerpc64-linux-gnu
>>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cd1a677cad994021b19665ed476aea63f5d54f31
>>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>          git fetch --no-tags linus master
>>          git checkout cd1a677cad994021b19665ed476aea63f5d54f31
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>>                     __do_##name al;                                 \
>>                     ^~~~~~~~~~~~~~
>>     <scratch space>:2:1: note: expanded from here
>>     __do_outl
>>     ^
>>     arch/powerpc/include/asm/io.h:522:62: note: expanded from macro '__do_outl'
>>     #define __do_outl(val, port)    writel(val,(PCI_IO_ADDR)_IO_BASE+port);
>>                                                ~~~~~~~~~~~~~~~~~~~~~^
>>     In file included from net/ceph/messenger_v2.c:17:
>>     In file included from include/linux/scatterlist.h:9:
>>     In file included from arch/powerpc/include/asm/io.h:604:
>>     arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>>     DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
>>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>>                     __do_##name al;                                 \
>>                     ^~~~~~~~~~~~~~
>>     <scratch space>:30:1: note: expanded from here
>>     __do_insb
>>     ^
>>     arch/powerpc/include/asm/io.h:541:56: note: expanded from macro '__do_insb'
>>     #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>>                                            ~~~~~~~~~~~~~~~~~~~~~^
>>     In file included from net/ceph/messenger_v2.c:17:
>>     In file included from include/linux/scatterlist.h:9:
>>     In file included from arch/powerpc/include/asm/io.h:604:
>>     arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>>     DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
>>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>>                     __do_##name al;                                 \
>>                     ^~~~~~~~~~~~~~
>>     <scratch space>:34:1: note: expanded from here
>>     __do_insw
>>     ^
>>     arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
>>     #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>>                                            ~~~~~~~~~~~~~~~~~~~~~^
>>     In file included from net/ceph/messenger_v2.c:17:
>>     In file included from include/linux/scatterlist.h:9:
>>     In file included from arch/powerpc/include/asm/io.h:604:
>>     arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>>     DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
>>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>>                     __do_##name al;                                 \
>>                     ^~~~~~~~~~~~~~
>>     <scratch space>:38:1: note: expanded from here
>>     __do_insl
>>     ^
>>     arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
>>     #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>>                                            ~~~~~~~~~~~~~~~~~~~~~^
>>     In file included from net/ceph/messenger_v2.c:17:
>>     In file included from include/linux/scatterlist.h:9:
>>     In file included from arch/powerpc/include/asm/io.h:604:
>>     arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>>     DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
>>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>>                     __do_##name al;                                 \
>>                     ^~~~~~~~~~~~~~
>>     <scratch space>:42:1: note: expanded from here
>>     __do_outsb
>>     ^
>>     arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
>>     #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>>                                             ~~~~~~~~~~~~~~~~~~~~~^
>>     In file included from net/ceph/messenger_v2.c:17:
>>     In file included from include/linux/scatterlist.h:9:
>>     In file included from arch/powerpc/include/asm/io.h:604:
>>     arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>>     DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
>>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>>                     __do_##name al;                                 \
>>                     ^~~~~~~~~~~~~~
>>     <scratch space>:46:1: note: expanded from here
>>     __do_outsw
>>     ^
>>     arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
>>     #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>>                                             ~~~~~~~~~~~~~~~~~~~~~^
>>     In file included from net/ceph/messenger_v2.c:17:
>>     In file included from include/linux/scatterlist.h:9:
>>     In file included from arch/powerpc/include/asm/io.h:604:
>>     arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>>     DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
>>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>>                     __do_##name al;                                 \
>>                     ^~~~~~~~~~~~~~
>>     <scratch space>:50:1: note: expanded from here
>>     __do_outsl
>>     ^
>>     arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
>>     #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>>                                             ~~~~~~~~~~~~~~~~~~~~~^
>>>> net/ceph/messenger_v2.c:2808:5: warning: stack frame size (2336) exceeds limit (2048) in function 'ceph_con_v2_try_read' [-Wframe-larger-than]
> 
> Same as for ceph_con_v1_try_read(), please add this instance to the
> allowlist.

Got it, thanks for the information.

Best Regards,
Rong Chen

> 
> Thanks,
> 
>                  Ilya
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a875976b-3117-f001-606b-8e90802bef8a%40intel.com.
