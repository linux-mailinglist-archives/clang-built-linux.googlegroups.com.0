Return-Path: <clang-built-linux+bncBD26TVH6RINBBIPFTCCQMGQEDKBS3RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id BC88F38A3F5
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 11:57:54 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id w1-20020a6bd6010000b029042308b21fb9sf11691271ioa.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 02:57:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621504673; cv=pass;
        d=google.com; s=arc-20160816;
        b=i0CJllTqage5QfzcSPJlfL90h3gJENI8h7yjeySQJ0hQHVgWgTEr3Q+H50sdoi4WTM
         QcswgPmAtHZowUcTlV1XCqmCbB3EyEESzOHzFY8DaxtzCR5u+MPWO4Jd39OurD4jIvVo
         kbnaFzI+lsiPGCFBfbAHrs/3pHAXV57JIgWbSsmIsQEk+p128IZyhXheg/P8R7O8H2ja
         a9P9dcvVDvTcuZvaq9yacuU+E92JtOhPML9DkVDnmyLwzayATOEtTOkAZcXzClzjMObw
         w+o1/KSAeMwj/Wq03ebCmGelnxV+XcDuDXFkKZyzMQVaRef7q1lBNGysTRcY8Ve7TSMp
         kFSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=gp4X+CacMyJsor9345XkvQuTBPYJzVzmwkInbHyeOb8=;
        b=zMCeCecHog8/50dj64SSZJEzQ6AIrYXpjOpSPVffkqCKCLpsrpWCmoMUs87uSv7g7H
         Hi7f2a0Ha3G9ZY44aAgwZjrFhomosFewGt2RlFWz3HXD5Zlz1Bn42XlkZnzesMVJ2SDV
         PiYUxuqoTlU1SxJqueeizcwbW0W/2sp2t5k6NYgzt7KiAInQwkVAoChMHbrM6yVodkdq
         GlXSDH0SgHn/+jvO4eH5TmHBhJ2VciopJVENv4znZsT5Vy/veou3xydY/lfHSe1zXtc3
         T1/rkTnzruq5KL3Kft/aSomCzFHJGapkDuynLl/7EfMhJNMH6T/bqSv3qlLZ79fjE/og
         bmPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gp4X+CacMyJsor9345XkvQuTBPYJzVzmwkInbHyeOb8=;
        b=fmhy5qse5kT+eAlnDq2cj0SUd5U6MVQi6tYlURr/w8NjTV7FmuBu4T5X10q8lZH33E
         ayWFkpBnbh8hn7hlEWgfbzq5X1sEvixQqV0qH/CufFtrjz2h2rnC6vxtSezFGHdXcf6r
         q9hMJ+NvK2k1os+ofI/zLMsx51VTsO+iBa/Y54A4fZtcgoPE7wDuBybiAP3BTM4US2GB
         C8SUcahtrbt50gWg/C1jlqaisAXQwCO1HNwIAWo4KD9JmkiJBuTf/j2juxiPdW0YJ0Zt
         JPKRtINpX59XZSEuYSyOu5oU/vKtvLnBNn672M92/jPlGif85/K2RR5hOJi3u5UWHYwx
         slgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gp4X+CacMyJsor9345XkvQuTBPYJzVzmwkInbHyeOb8=;
        b=sqK0WIoWSy6kyg0syTxnKMziXHip+4moZHXF0LxsjNhVP9GpcY2cOGR9P1tCPHHH0+
         hOoAHnJKKwW23F+Tasw/5tlSaVwPFltWQbMB+sVgNj3DkovJIXqAwUsQSYkYA7RpC8iH
         balF9mNDQNIMhWWHw0EzGQWXDZ22SbvF93tXBdAH5rp580FY3LGwVqgbrYziSorLxKPb
         QrPmCynfqtQEntGG6puAL9ov2y8wWJ+33z6HbxnJNOARlE+Tv2FiZxWOuha1nrnqvpQW
         fjsDSN7AIRnPFgycLFmoej1PopFb60kSPxWHP2yUDAssVDvNDVCNF/ZaLTAZShVRyJuf
         DKcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XpeE/G25urh6OrPD/sujgKE4lwRRCjr6tnjsP6TPdRyzmI302
	2dzUFdRT9AVYZTdeV1KH8ag=
X-Google-Smtp-Source: ABdhPJwP8d/X7S0MSljNAxB3F2+Qbk9qx5c2uEYMl5hjaQRLbwE4hTwIFJDWIeSeEx7Y/hEkIN65PQ==
X-Received: by 2002:a05:6602:72f:: with SMTP id g15mr4641535iox.5.1621504673513;
        Thu, 20 May 2021 02:57:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c9c8:: with SMTP id k8ls551277ilq.3.gmail; Thu, 20 May
 2021 02:57:53 -0700 (PDT)
X-Received: by 2002:a92:3307:: with SMTP id a7mr4246574ilf.113.1621504673184;
        Thu, 20 May 2021 02:57:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621504673; cv=none;
        d=google.com; s=arc-20160816;
        b=vmXfypjU/F1jTcjefnEM14OZq5Yw4+UURYi3ubYSkqsJsNldkMOL1w/qBIEmS4KTUZ
         5I5HFPU32E1mT8/XCp9/iKA/BXqfHZf7KEbtAvFyxvt62xAAZQX/NnU5ifzgSSHaisvE
         A0tY+cYxfsBLilnpoq7ZbF4iGRXV9SDA17xQ6bz2D3tuPP8dyrq17UWr6Y/TgPze8z6x
         h3b4yInlwERJD+G6Y+r3aYfhf8jGPfiUXnj+/guLaRmcnz+gYLWtfX8ptIdN5bZAvlHZ
         w2obEco3xTe7PcwKEAJTnLEbVXSfOY0FaCAKGarpetCA9ZEGjDlSAznhjWvamjlloWWC
         gs2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=HvTFlf7la3ASjDtox2tRTj639ROC2NnuW3SL8naPOi8=;
        b=s6Y7PEZRkZ+l0SHFFlbqB6IYV1GdfueiJmTraDHRZb6zPx/WxlMP7kHkGYfDhafYwi
         0W82cyhwqTACmIyH3rydUwDL+bOz3y8QzCVg1oIH4PYRKGfLIyGL/kVi1nx846ZlHgOZ
         tfFIBCPJKu8sSH2r/p3820GivnHKI1cFG9b5qlttG3Rn4vTLyGyQjolp1/1PYHP38FYv
         s+75DtRJPAkRDdX77R1e9bLF2ubV0jLiqz8vfZ34mBnRE8v4Brq+Wx52ox1ddrVgqKuS
         ap2fCd8okWS9JPmYsuqtEqbYvV3t6y78YIFtmWILAPrH7kmEIOy88zxRZAuwa917mo9l
         y9nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id c1si150064iot.4.2021.05.20.02.57.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 May 2021 02:57:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: N/ChCn8hWJa9E3JT1b7BzwUKtGPrbbr1psMI/7Mh4BpPFhs569etcGpdCQLODYI3G1vfvSrqep
 rmTzRRO8CXVA==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="188593576"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="188593576"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 02:57:49 -0700
IronPort-SDR: WVxt2gBpSjV2MGG8Wyw/2v9pscFp4RqvyWNeaf0PmFt/JWyQ23i8ZK2uucROiOecp/D6vjMPw0
 DyEIyIquEoMA==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="473934936"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 02:57:47 -0700
Subject: Re: [kbuild-all] Re: [linux-stable-rc:linux-5.10.y 3189/5262]
 drivers/usb/dwc2/hcd.c:3835:6: warning: stack frame size of 1032 bytes in
 function 'dwc2_hcd_dump_state'
To: Arnd Bergmann <arnd@arndb.de>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nathan Chancellor <nathan@kernel.org>, Kees Cook <keescook@chromium.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux Memory Management List <linux-mm@kvack.org>
References: <202105200357.eXI65Gfu-lkp@intel.com>
 <CAK8P3a2j61ouv8h-rWj7zPzjZ8Ok7GtQpyT5NaiYGxwxWHfwAw@mail.gmail.com>
 <e65bc9b7-13ef-0e83-1ec5-0287d5875d2c@intel.com>
 <CAK8P3a3hc67Ks_j8cXokOQBQBEJfMbrDLHfDTXcPFYQfxga=ag@mail.gmail.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <9df0d465-d671-d970-4b45-61af014749c9@intel.com>
Date: Thu, 20 May 2021 17:56:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3hc67Ks_j8cXokOQBQBEJfMbrDLHfDTXcPFYQfxga=ag@mail.gmail.com>
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



On 5/20/21 5:27 PM, Arnd Bergmann wrote:
> On Thu, May 20, 2021 at 11:22 AM Rong Chen <rong.a.chen@intel.com> wrote:
>> On 5/20/21 4:28 AM, Arnd Bergmann wrote:
>>> On Wed, May 19, 2021 at 9:48 PM kernel test robot <lkp@intel.com> wrote:
>>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.10.y
>>>> head:   689e89aee55c565fe90fcdf8a7e53f2f976c5946
>>>> commit: 5f2f616343b1d62d26f24316fbfc107ecf0983a9 [3189/5262] linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
>>>> config: mips-randconfig-r015-20210519 (attached as .config)
>>>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8e93d10633d751a3e9169bf9fa68326925ffa097)
>>>> reproduce (this is a W=1 build):
>>>>           wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>>           chmod +x ~/bin/make.cross
>>>>           # install mips cross compiling tool for clang build
>>>>           # apt-get install binutils-mips-linux-gnu
>>>>           # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=5f2f616343b1d62d26f24316fbfc107ecf0983a9
>>>>           git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
>>>>           git fetch --no-tags linux-stable-rc linux-5.10.y
>>>>           git checkout 5f2f616343b1d62d26f24316fbfc107ecf0983a9
>>>>           # save the attached .config to linux build tree
>>>>           COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
>>>>
>>>> If you fix the issue, kindly add following tag as appropriate
>>>> Reported-by: kernel test robot <lkp@intel.com>
>>>>
>>>> All warnings (new ones prefixed by >>):
>>>>
>>> I analyzed another bug like this today, and I think this is again just
>>> CONFIG_UBSAN_ALIGNMENT=y
>>> on mips/clang causing tons of these warnings.
>>>
>>> I don't think this should be considered a regression, but we may want
>>> to change either the
>>> kernel or the 0day bot from test building this combination of options.
>>>
>>>          Arnd
>>>
>> Hi Arnd,
>>
>> We have disabled CONFIG_UBSAN_ALIGNMENT for mips/clang in our kconfigs
>> to avoid reporting such warnings again.
> Thanks a lot, that helps.
>
> Have you considered always enforcing CONFIG_COMPILE_TEST=y for any
> randconfig build? That would address this issue along with a number of similar
> ones. I have sent a number of patches to add COMPILE_TEST dependencies
> for things that otherwise break in randconfig builds but could still be useful
> in more specific cases when users know better.
>
>         Arnd

Hi Arnd,

Thanks for the advice, we'll consider it in the near future
after assessing the existing configures.

Best Regards,
Rong Chen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9df0d465-d671-d970-4b45-61af014749c9%40intel.com.
