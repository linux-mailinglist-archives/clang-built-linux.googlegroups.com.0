Return-Path: <clang-built-linux+bncBD26TVH6RINBBAGORWEQMGQEYB2IFMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1893F472D
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 11:14:41 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id z11-20020a170902834b00b00130c1b330bcsf2154990pln.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 02:14:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629710080; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jb6qIbXG4aac+WvPNo/YV4LcZ8qmL1vbr8WxkVfi0595HGy9ooy01CvIQ0ikBT0njo
         heMq5tTqtEHDwJjXi9GaEYZzri97paerDjot7mQ7GR4RS1vNUmixlN3po/tzxQyUQo/a
         iAxpZBtwIIWhBgcZ1T4JPxUKnu7tqyvPfsLw4HwWxUTCpjK+tJO7YHQXKpyttJgQ8769
         HvTcGCd6mFx+oe/ajNiHGuF6THVRiCG3d9t3enwfq5pOQiQMOA6xJ32puhxo0iVf6w1j
         vMvLVi+Ld+wIJRie/74mAGuDOCQCYpBFXHmEAFqdyGiGWF8He3Yzk8Pbmz/bZzxSKtYZ
         BuOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=16eod0dVf6SDtkp7Od+iefGH/VVaByKvTccEWUWkzik=;
        b=Bk26nEuWmRfxTEM4Q0A5xrrrUxST8WHPo3oZNfSZGUcGyUPm81ULCCEoOyCIex3kMu
         L+PcJR6AsQfaPqXi2rOHuRxvrlXmo2ltbCIvne/cEu46ZdoIG58VvAOTDVPOITUqa0hm
         FWe7A5hS053VrSOyQIH/hsZoRzvedgoH89+iLoWCxj4oNQDejoz7W9p0+M/ghbykSwjZ
         A99L79hKUMru/5+/JvWPuRP5jig4zA9aESS+9x/D+zwisDtUqGDv6fQMKm0xl1a8ceiT
         ML4OCVBD4xvkO5FNCyUDtIBHC9kIsFL0R73/dULtawI+LCFn7J3/3xo2H66FugfmTaXa
         Q3hA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=16eod0dVf6SDtkp7Od+iefGH/VVaByKvTccEWUWkzik=;
        b=sUm3OWFKdboxOhHFJcQjqn8koRGQOE+xM+0K8QaTrvmzlt2TS9Sy4kscjbzccWtAFJ
         POIxmaMHDgFJPSDkUlRYqmKa2ZiMq2ctg7Ch6XFckMidHX4uARnqL3kaJnrOF/U18EH4
         K2hcK8xOoidh70nptfdfTLWbG/MRF6xSzf2j7EOCS7zors8lS/VQ1yh5rofAoSjvWA/2
         F2CS+6kuKikE2tHppOXhhx6bUWmoXKjUcefG617WCBv4j41RpE64jMrWmtm1HRgJVtCV
         sTiRJEQlD5bV3AeBDlNxhsJGEAHuBXh43zwCZRlM5FDEek+3DpFBMxpIT7Dnvbnl6POO
         eNVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=16eod0dVf6SDtkp7Od+iefGH/VVaByKvTccEWUWkzik=;
        b=SyYMY987hzJHxLqGWUSzZ9A7AIRvqqyu7aiekv5y0xCRhUSGAxxp2WFy/UDaCizZoR
         jZpeFzRianHtL812X726JDInRcsuqdAvZHrzy8OQ4rimwcEFc2eW7pDaS9Q3NpTS5o8E
         QpTXcTM9pl8k4YCW+VY819SnXysP3XVcfeRnksn1m7MN1BHz+gdfGdbEV82Kq8031pAZ
         N5TWYcq15PDNWdhHohf+zObfPgFl/Hwosw1pTb2ijOB2TaN16E1eZppIJEpNspid4GU0
         UPha+q7ulaFL2CHJpPrv/p0n6+nf27j2eHsPPsrVK+I/J7nPGXAwW2WqVnZRh23H2vC6
         8fNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321As4HpD+osxt9dquozev5yYRsI64DqeMgjKjHj5GaQ9hZcYSk
	F9pEHJbf9hZTcDf+xDBuWhI=
X-Google-Smtp-Source: ABdhPJxRkvm/oCQ6MQjIOIPR/f6+rKXQgUn3aCY7rOCvlWJtB8OBVHC5pdqaaeHALjTtryNfvQavZQ==
X-Received: by 2002:a17:902:b407:b0:12d:96b3:cf46 with SMTP id x7-20020a170902b40700b0012d96b3cf46mr27605056plr.48.1629710080313;
        Mon, 23 Aug 2021 02:14:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3154:: with SMTP id x81ls7015435pgx.2.gmail; Mon, 23 Aug
 2021 02:14:39 -0700 (PDT)
X-Received: by 2002:a63:4610:: with SMTP id t16mr30599389pga.176.1629710079802;
        Mon, 23 Aug 2021 02:14:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629710079; cv=none;
        d=google.com; s=arc-20160816;
        b=Exhp90eTon/ITWPqdwCW4muYMt/ya+xdXGoehT7PVgKhmDJqjR1yktD6DSDSWUTwD6
         Ji5fKl0Wd4kUGpb27H9xXoK3fydOpPU+YJJw5Z1FzPO3BqmrzE3G0wc4BazwK52Pybj7
         o73o4svuGcxcHDQ3zusvCqtlTlB2fK7MyFstwWv7QuFCsUI9GAXHmhzL31UqwQsFsb+w
         oHw4VYlgkl8sUdX5EhtRht2gJLEBsn2IJkE4V+4qhm1MqLcc+/qQTi3w/i/nfN8s2KHl
         ZiejtT3EimFfNDBd6K9C56XfsLdiqVmOcq5r/7L+WONWWXfdaY8glXDsDgOx5cJVoH7X
         Wl3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=gVndP+FiFqguCT5EocMc/DUqmcC9Y24GB4myYAKVq0M=;
        b=APZOn7NsFoBhfwpgIWCVYGsNJwQk1X6re0y9S/fR7CioYjBM/kcDszSW5UDDvselfM
         w2/TyLpC7KcNAURL0M4agMsEjrS/1zua3X6OZT6pvqr8LbV6ag1wc6lsHr4ftKyBlDCs
         I3oh+jSuA8NRCUvO4Wb8OBQ9hCV3hY0x0NOvT5x4R1rAsF2RLftVWSyH9EGXiK7UkIF9
         K4yPfAhagUh2E/+LGAoyCyXFfrnX7vfgTXCKipkuETfcQZmothsv8v/gjcaTlHBLwr3n
         V5EGR1WdoGPVSOdh71EAttir1m0tZglLZnidpIjDhTq6ODa4rXyhY8NbR3icqI6QDdyQ
         f6Vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id q2si822429pfl.0.2021.08.23.02.14.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Aug 2021 02:14:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="215221766"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; 
   d="scan'208";a="215221766"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2021 02:14:39 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; 
   d="scan'208";a="525863323"
Received: from rongch2-mobl.ccr.corp.intel.com (HELO [10.255.29.47]) ([10.255.29.47])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2021 02:14:37 -0700
Subject: Re: [kbuild-all] Re:
 arch/arm/boot/compressed/fdt_check_mem_start.c:62:10: warning: no previous
 prototype for function 'fdt_check_mem_start'
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 kernel test robot <lkp@intel.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 kbuild-all@lists.01.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>
References: <202108141331.fMjjWaW2-lkp@intel.com>
 <CAMuHMdXUpk_dLhvcdgs1H6yLPrwXFJz_86dfXpm8PYxNq+DXrQ@mail.gmail.com>
From: "Chen, Rong A" <rong.a.chen@intel.com>
Message-ID: <3b5f0086-5589-bb2b-29a7-312cd4a4f559@intel.com>
Date: Mon, 23 Aug 2021 17:14:35 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdXUpk_dLhvcdgs1H6yLPrwXFJz_86dfXpm8PYxNq+DXrQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as
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



On 8/21/2021 4:45 PM, Geert Uytterhoeven wrote:
> Dear Robot,
> 
> On Sat, Aug 14, 2021 at 7:43 AM kernel test robot <lkp@intel.com> wrote:
>> FYI, the error/warning still remains.
> 
> Yes, and that's fine, as this function is never called from C code,
> only from assembler.


Hi Geert,

Thanks for the feedback, we'll ignore this warning.

Best Regards,
Rong Chen

> 
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>> head:   dfa377c35d70c31139b1274ec49f87d380996c42
>> commit: 0673cb38951215060d7993b43ad3c45cd413c2c3 ARM: 9045/1: uncompress: Validate start of physical memory against passed DTB
>> date:   6 months ago
>> config: arm-randconfig-r003-20210814 (attached as .config)
>> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 62df4df41c939205b2dc0a2a3bfb75b8c1ed74fa)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0673cb38951215060d7993b43ad3c45cd413c2c3
>>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>          git fetch --no-tags linus master
>>          git checkout 0673cb38951215060d7993b43ad3c45cd413c2c3
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>>> arch/arm/boot/compressed/fdt_check_mem_start.c:62:10: warning: no previous prototype for function 'fdt_check_mem_start' [-Wmissing-prototypes]
>>     uint32_t fdt_check_mem_start(uint32_t mem_start, const void *fdt)
>>              ^
>>     arch/arm/boot/compressed/fdt_check_mem_start.c:62:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>>     uint32_t fdt_check_mem_start(uint32_t mem_start, const void *fdt)
>>     ^
>>     static
>>     1 warning generated.
>>
>>
>> vim +/fdt_check_mem_start +62 arch/arm/boot/compressed/fdt_check_mem_start.c
>>
>>      46
>>      47  /*
>>      48   * Check the start of physical memory
>>      49   *
>>      50   * Traditionally, the start address of physical memory is obtained by masking
>>      51   * the program counter.  However, this does require that this address is a
>>      52   * multiple of 128 MiB, precluding booting Linux on platforms where this
>>      53   * requirement is not fulfilled.
>>      54   * Hence validate the calculated address against the memory information in the
>>      55   * DTB, and, if out-of-range, replace it by the real start address.
>>      56   * To preserve backwards compatibility (systems reserving a block of memory
>>      57   * at the start of physical memory, kdump, ...), the traditional method is
>>      58   * always used if it yields a valid address.
>>      59   *
>>      60   * Return value: start address of physical memory to use
>>      61   */
>>    > 62  uint32_t fdt_check_mem_start(uint32_t mem_start, const void *fdt)
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3b5f0086-5589-bb2b-29a7-312cd4a4f559%40intel.com.
