Return-Path: <clang-built-linux+bncBD26TVH6RINBBBPSRKDQMGQEWXFZXEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E283BB829
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 09:47:18 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id r190-20020a375dc70000b02903acea04c19fsf13546792qkb.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Jul 2021 00:47:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625471238; cv=pass;
        d=google.com; s=arc-20160816;
        b=eYhtjaOWNBRU3oxH0wjcykBsGOcagkXXzzWvV5nZ+qUVecASdr9YmRXGATcZbZLd/s
         +Dk20LtxsYveEee1vxUFvcHc89CVIUBL2C+sqRe4kC5DKDQbiUbxXvXu68f/lfdFTlB7
         t/eruOBqyaBJpfZNC8oF3K7Mxk6N9bqz+yhwuRsfk9Xq9fpcNoadTr9MRdtY84MliRMB
         DSFCB8RG1sHHnbd06Zjba7XsqSfvQ4/kiql9xU+avwwXNm9elb7iS+QWOgSh3Lsp7Yva
         eUdhohk+JO20I13BR+1DGXHuT30xLF8rQRKGCCN4DWDpsz+8LlR6oeswFQWDp53uxbbg
         Q8iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=EzLRgAGylv3zkxZUpGpKnz7Rkelo7zcekEWcqE+yBsI=;
        b=gIkXlyFV7sn/Qn7tmkfAsRp6WWHlm4/VoDIJxu+s80GcJBeiABH7E3SpCrTyIWu7KT
         bvWl6AGaTNyd0XbXaXjiA4O/3lGRtktQOELqmFrih9pQUab2HO7ucqDsOx6WcnnMetmB
         K16jOGeEkIEgFhRfNLVYjkdySIYy/clZgDm64MuYbOkOEwy4QCN5fy8eO0Hp7cOwEh95
         Rls+g+qb+UAULykwgg41Qoja0knS76R8NWhwfoYiJp8vwx/wop2Qf5kYqdemRC9XYRDD
         UlfzSa8BNDjxTSccJhWRiUcD0WCe8o0izG6UaeGyF8F2jII6B1qLi1BvLJTpeZOcR47Y
         HVdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EzLRgAGylv3zkxZUpGpKnz7Rkelo7zcekEWcqE+yBsI=;
        b=E/iuBzUNJuTECbHFNwomo4HMwpzmG+R3ExBWEaXDQcKF8gIBtn578d9vfDtO7ckDGj
         UF3k1Ln/V2GE9GHj9nUpjg815i2RKWxLQqICgAxHyeZf8nPiP+dTrA5xEQgquDta4GEY
         6HXhPaFpjJG6VrC+6c/J4bXTGqTPFEmn4YQvcG0HMbu2Lfq5w80WO4GczyCQIYG55+3I
         3k21N1spgP6y01Gk4XBxHUKsbPBCD8HOIU5i2eH+tLrqlQQPHKvIZEWAf/ytXBsRYWF4
         oSdSBtlm0OdbN7JtvqC0qvIg4k8rmVdxg+6nPy2zeJfhKkmKAi8hPTt0S1jCjFNysh7A
         5XWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EzLRgAGylv3zkxZUpGpKnz7Rkelo7zcekEWcqE+yBsI=;
        b=cefIvB9eDdefu3pXaE0vXoN8fUt9yjf2DgSenW7vZ1p8E+w0A9KS67lBQVMMUITDNC
         D9HCPoJS2gZeJIIs4Ed4HfkCNuWvNs434fzHpkJCmOoK1n18BYPjNKHQeEcEQG8XwLK1
         5a1tGsjNxW6GG221F3r5u0cKhh4hxGS0d+xDq5dmw58c251n7x8BGhRsHCjtfYy/JWPb
         5GBcWolmh470kJuWVg1TGcli0YYU1pAl/bWNEB/AMx6vkxF3qNIfOPcRAo6Ux+zo7ptK
         fZw+8HhuCtTzvyoXi9UAMru2DgeJAJDSMdNyBtnj7snz6PPn0Iq30DgfwsBvuKE0VOVB
         hLYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530T6jZ1o/FVywRHwCRpqjMX6d+QFgCwEIEhubfBPtUDpNN9HWb4
	EAkweQmC6MfIaEp5+hQOWN0=
X-Google-Smtp-Source: ABdhPJwKF85hfU7K/iyhxE/nk6mG8vXIE1Q9L7FULZ3xkbK/lUzmezVH4KQNO7gwlUef57/ruMiRgg==
X-Received: by 2002:a37:e314:: with SMTP id y20mr12472171qki.289.1625471238037;
        Mon, 05 Jul 2021 00:47:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f214:: with SMTP id m20ls10524147qkg.5.gmail; Mon, 05
 Jul 2021 00:47:17 -0700 (PDT)
X-Received: by 2002:a37:6c04:: with SMTP id h4mr13346148qkc.182.1625471237603;
        Mon, 05 Jul 2021 00:47:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625471237; cv=none;
        d=google.com; s=arc-20160816;
        b=A92zOlRnTC86UKp5AvkB0DZzRGb4R3XP4VPkC4RgCXBqpVKe9IEWMHYIz/qPFxEdYB
         a8SbwmwF8dSyMzVxPyva2hcyV5d57SRbm+02antzgD53ufUOZoyWXTXer9eTsbWOKtnp
         8bTYpFm89LHDvxmp7heVnMbV3XLYB4tWrYbMnjaUi1QhJehVKzJxLXmMYnUDr0/y2KhZ
         6WNZuC73imbxgO0Ki8sbQhk7B0oEznaI9Y/nUP8ZNwKmqZtvnm1Cjw/ZYLf4xNo0DmwE
         aBMgLg6RWEQPbagHaw9znKTxlfmTCRO4h1R1kLPu/FefH/SxMln3/9JXRML1ZT7P1Jkl
         WmHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=Wg1efbeh9DzoNqhsvItCqnLH1ZM/VHjzxEfPxrWDT+w=;
        b=AWFVZUHxXH4jsVIf6KMdsXzp48HarkgxTqV2mPFNWuhal+UZmUReoAc1/rsSc0urIi
         a9W0RX9BkbJIXT+UyS/iAXtuYl1g1AMZ1xCK5inLJo7vVprhe2zFv0Ewz4LF4MV/PtGz
         RbWhMgFmnVk+MfJofez/YLKWtWcd5rq4zstTTNwpansQbZsXwax+0ySvc0fqBbIoNxF2
         xVJh52rbd4DjmbYIsJYG8Qi9ll2JXbjvcPah9mH2fFX+kdgy27we25CqsKhs3OnecF2E
         GJESXsHoVJ5LzckLxc2y7xNwLrj9e8+ZKoaTDAckbxpAA9K4noekKaML+4oLnO7QRWfA
         5AvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id f6si768407qko.3.2021.07.05.00.47.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Jul 2021 00:47:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-IronPort-AV: E=McAfee;i="6200,9189,10035"; a="196223160"
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; 
   d="scan'208";a="196223160"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jul 2021 00:47:12 -0700
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; 
   d="scan'208";a="496033702"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jul 2021 00:47:10 -0700
Subject: Re: [kbuild-all] Re: kernel/time/clocksource-wdtest.c:47:22: warning:
 signed shift result (0x27BC86B00) requires 35 bits to represent, but 'long'
 only has 32 bits
To: paulmck@kernel.org, kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>
References: <202107040532.wqL30yFp-lkp@intel.com>
 <20210704174310.GR4397@paulmck-ThinkPad-P17-Gen-1>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <254ab0ec-2c25-29fd-cbe1-eaf2bc135326@intel.com>
Date: Mon, 5 Jul 2021 15:47:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20210704174310.GR4397@paulmck-ThinkPad-P17-Gen-1>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as
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



On 7/5/21 1:43 AM, Paul E. McKenney wrote:
> On Sun, Jul 04, 2021 at 05:42:36AM +0800, kernel test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>> head:   303392fd5c160822bf778270b28ec5ea50cab2b4
>> commit: 1253b9b87e42ab6a3d5c2cb27af2bdd67d7e50ff clocksource: Provide kernel module to test clocksource watchdog
>> date:   11 days ago
>> config: mips-randconfig-r015-20210702 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9eb613b2de3163686b1a4bd1160f15ac56a4b083)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install mips cross compiling tool for clang build
>>          # apt-get install binutils-mips-linux-gnu
>>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1253b9b87e42ab6a3d5c2cb27af2bdd67d7e50ff
>>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>          git fetch --no-tags linus master
>>          git checkout 1253b9b87e42ab6a3d5c2cb27af2bdd67d7e50ff
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>>> kernel/time/clocksource-wdtest.c:47:22: warning: signed shift result (0x27BC86B00) requires 35 bits to represent, but 'long' only has 32 bits [-Wshift-overflow]
>>             .mult                   = TICK_NSEC << JIFFIES_SHIFT, /* details above */
>>                                       ~~~~~~~~~ ^  ~~~~~~~~~~~~~
>>     1 warning generated.
> You have CONFIG_HZ_24=y and this test module assumes HZ > 100, as noted
> just above the excerpt below:
>
> /* Assume HZ > 100. */
> #define JIFFIES_SHIFT   8
>
> So this is expected behavior.
>
> Would it help if I gave that comment some teeth, for example, as
> shown at the end of this email?

Hi Paul,

I have confirmed that the below change can avoid the warning.

Best Regards,
Rong Chen

>
> ------------------------------------------------------------------------
>
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index e1856030fa66..8f0ad6e4183c 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -2573,6 +2573,7 @@ config TEST_FPU
>   config TEST_CLOCKSOURCE_WATCHDOG
>   	tristate "Test clocksource watchdog in kernel space"
>   	depends on CLOCKSOURCE_WATCHDOG
> +	depends on HZ >= 100
>   	help
>   	  Enable this option to create a kernel module that will trigger
>   	  a test of the clocksource watchdog.  This module may be loaded
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/254ab0ec-2c25-29fd-cbe1-eaf2bc135326%40intel.com.
