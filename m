Return-Path: <clang-built-linux+bncBD26TVH6RINBBJWV4X7AKGQEJFKZBGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id AA47A2DB8B3
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Dec 2020 03:02:15 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id p6sf18142250ils.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 18:02:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608084134; cv=pass;
        d=google.com; s=arc-20160816;
        b=0pFaHPjj4C5hQH8OgD9buMcIEV+BqHwPuSKT5pdolXy1sZxKXdhEOB7yXqdc/3E413
         v3ecKY+ciw+z3b39E/wpQAzmsnRJtDKhZGBGO3HExj7bP22HvHGawnqJTNnna2J1xS5M
         TfCfs5aieyDrRDRU2l4gJqxiLn242JKLQsZgi/RM8L6FVQdUsbfBDLgBknmJ0MSMgbUE
         ze4xP2C9Y/jPHBV8sI0gXm8QJ169H7/m45Xn0TKrmH3NGoDz5uBjcUTb7fuRRm/s3PsZ
         /cNtFPHWILLpyeYPPpTlGkZ0x4hujyB3R2I3E8WHCxGSU1qCt+rLNYrnp9I/vbAZOjBS
         Oq5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=dabNrsvjiAgRNz1gdLnWFxb/jt0dyZhxLlHoxfpgBlI=;
        b=06zV5AjAVp9AsCzzzsVGez0aUEl9pd9xOvt5Rz6HLM6OZvnGtX44ejJhsftlXxFZ2K
         rivJkFRUb/Hc4HeJChvDe29vITYUskP86LheXi5W/P9YLn2gsPxcWtKep39tGUQRNjuM
         ACLBAma891ZywOssQwrnluH4WxuSrZuocXVcQrDmeovTGl3Ia6xjP6FMLd22VoXR258t
         cnwtq/Bih/9q814Ci40VAjbUk9VYMgSg+tgtJoEOX+pY9d/j+8Doys2oWn/EiAt4YUH3
         bLoWEdPy1rLPkAypxDoKvtKKmDNHMhlr+VJEzwbdWEQUtqU2yOlYiz4BAuh/ErXr7/3r
         sJoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dabNrsvjiAgRNz1gdLnWFxb/jt0dyZhxLlHoxfpgBlI=;
        b=WHBpjQTvF/7qroOAlafwYuOY2NfFLbNAY/4SZSv7WmFAJMsknJWvEstw87OVqvBCce
         M5WujBIsviQ8cR0L2vCUbC+UmLLxkYN641yg8R6K901BfFRmt6KLJc6fmLIiCKR9XQZK
         Enlal5Hl6j4I0yUTyCUVegpXw7r8iNkEoA60o0nS5GMjTrLiaxzeL8fZDc1LECrbthzj
         EQSZhFNhQWMaHNGkxYH/i7iLw6PA99S/fL/Mst0R9Vn9odPt7fNBQp5TJcJuiz28x/I0
         2ewoMlKBfyO25iZWbA5m5stffSIGszn523i4gfmHixIUdPF6ygV50Kf71P7l+L9eTURV
         HJhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dabNrsvjiAgRNz1gdLnWFxb/jt0dyZhxLlHoxfpgBlI=;
        b=aLCpNoG6U1ZmleCvUrhoKMEwscfpwS/vfBl8C77mfBLDJf2cayQ4lSdp280fduAqYY
         GUrQEbJXN5exsU0ZNIajrrZ0w7HD1DraFFxLW/pcvZ05AR//Pnrdepn3rAUbQOkVoQMA
         Q2QYpSmY8+9neMUKICCl5yDcirf0dRSuOiGt5EcAlGV7MGyXjtVIsLpIR2fWUMOf1ExK
         G9OA6Fs4HPfgcZx5h12yKcFAJDjeNDlcSBcxc1o4GLWbNYvxGdVLc60mNNqdstN8ytLL
         AJNxGeW25H5DuVIfnfckTEZOE7iO/kbDNZpfqBmKVxQ1BresdRYMaWtgF67GCJ1BXQcJ
         xdMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BCesJuzXIiNFntqDD/ilLDLffbrmHkHWJLpjhKqRdYcQYsnxY
	9yHH1hWW8RCgB8fA4nQ0ur0=
X-Google-Smtp-Source: ABdhPJx8IzilbsvaWGO020rvY/08EgbP7kU93NyimE2V+moCNUfc1/20iLOzZ1IKEkh2bYjFIOxTqQ==
X-Received: by 2002:a92:b60a:: with SMTP id s10mr43703717ili.135.1608084134505;
        Tue, 15 Dec 2020 18:02:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9f06:: with SMTP id q6ls3610971iot.1.gmail; Tue, 15 Dec
 2020 18:02:14 -0800 (PST)
X-Received: by 2002:a6b:b3c6:: with SMTP id c189mr41207150iof.68.1608084133980;
        Tue, 15 Dec 2020 18:02:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608084133; cv=none;
        d=google.com; s=arc-20160816;
        b=JEc3D4XViCjSP0Iqk5Z2MCYlw8GxD4s+0vF5DL9AHss8NPP4U9y/S0405Y/CqUVWxH
         X993ZLUvNrmJXBsqoKDwbEyxICWXfbrvWF0KZflIFcTO+iMQlLg4GlaHQKI6PKzDtAKQ
         0vhfy66lT88WAk5+8EKLI11OnW2GrZrPSN7DTpTXkEXf/jL53kRSFSbnGc+M8+RFxASp
         nrRflYEjfre2yyA8IetBtM/uKPx/Lbc9uxKtr3XujR84Es3/GrUFklCrcZtLhwooXqyb
         xrCNkjT6Hk1dQfVTULjxo/z5Pmn54OVy3pYk4X3+Rvr31GRwdDRmNAryYlFNPUspZHj1
         xjrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=I6DUAfrnkCdeydc33b845QU9d5tkuDbzPuxv8IqZWco=;
        b=KMPmCfQyLdr7QOh5tCKSdgMGVnQ0BQbXPuDSMxAKpqNf/nPZO5MWt18BCtEl/uXv44
         YF90W2697UaKoQVaKqAYEl13TGsoDA9Xcwo5czA2SmrEpD5Rdh0ZA2KMd63I3LAto1SC
         SPiQjuAm6kT2SKEPUpjlHBu4xHUBrkKMSbwYThwS2+b2UZMwXGNy60zuHp4s9v7x7mqf
         IkzsppxRzzsAOn9eIAmg0FFRIZYC782rMxyXTbn2GoryOydothkPV5xzDZ+KVG1zYj/4
         zkElp5ez3TZDclfcN8VkTilJk0luFsoueTVATVBh7On1mC1rKYvcSa4LXySWUHAH098L
         bn8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id b8si27817ile.1.2020.12.15.18.02.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Dec 2020 18:02:13 -0800 (PST)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: pm+msxg3X/09BohOfXHixT1Dj9fP7qSxHDEIHS2KrM3Q3XiNPJFeQS78KGWv2XusbNFuNn0T86
 KMjyztVarf/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="175093441"
X-IronPort-AV: E=Sophos;i="5.78,423,1599548400"; 
   d="scan'208";a="175093441"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Dec 2020 18:02:12 -0800
IronPort-SDR: 2aCwRwf+9gWdIItrlMWBNnRQXh+Rj0I5QHH5o2I1EK8pVJb+BfZOmDbtvQF1gavdq4W9oMUqvd
 50N0JsEq/WTQ==
X-IronPort-AV: E=Sophos;i="5.78,423,1599548400"; 
   d="scan'208";a="337920350"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.117]) ([10.239.13.117])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Dec 2020 18:02:08 -0800
Subject: Re: [kbuild-all] Re: [PATCH 1/3] Add TX sending hardware timestamp.
To: Philip Li <philip.li@intel.com>, "Geva, Erez" <erez.geva.ext@siemens.com>
Cc: kernel test robot <lkp@intel.com>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Jakub Kicinski <kuba@kernel.org>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, Arnd Bergmann <arnd@arndb.de>,
 Cong Wang <xiyou.wangcong@gmail.com>, Sudler@ml01.01.org,
 Andreas <andreas.meisinger@siemens.com>,
 "jan.kiszka@siemens.com" <jan.kiszka@siemens.com>,
 "henning.schild@siemens.com" <henning.schild@siemens.com>
References: <20201209143707.13503-2-erez.geva.ext@siemens.com>
 <202012101050.lTUKkbvy-lkp@intel.com>
 <VI1PR10MB244664932EF569D492539DB8ABCB0@VI1PR10MB2446.EURPRD10.PROD.OUTLOOK.COM>
 <20201212084708.GA31899@intel.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <9ac27644-6e7b-e618-2750-7e6c77465410@intel.com>
Date: Wed, 16 Dec 2020 10:01:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20201212084708.GA31899@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.65 as
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



On 12/12/20 4:47 PM, Philip Li wrote:
> On Thu, Dec 10, 2020 at 12:41:32PM +0000, Geva, Erez wrote:
>> On 10/12/2020 04:11, kernel test robot wrote:
>>> Hi Erez,
>>>
>>> Thank you for the patch! Yet something to improve:
>>>
>> Thanks for the robot,
>> as we rarely use clang for kernel. It is very helpful.
>>
>>> [auto build test ERROR on b65054597872ce3aefbc6a666385eabdf9e288da]
>>>
>>> url:    https://github.com/0day-ci/linux/commits/Erez-Geva/Add-sending-TX-hardware-timestamp-for-TC-ETF-Qdisc/20201210-000521
>> I can not find this commit

Hi Erez,

The url has been recovered now.

Best Regards,
Rong Chen

>>
>>> base:    b65054597872ce3aefbc6a666385eabdf9e288da
>>> config: mips-randconfig-r026-20201209 (attached as .config)
>>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1968804ac726e7674d5de22bc2204b45857da344)
>> However the clang in
>> https://download.01.org/0day-ci/cross-package/clang-latest/clang.tar.xz  is version 11
> Sorry that these are issues at our side, including the branch/commit missing.
> The push to download.01.org failed and did not really work, we will look for
> recovering them.
>
>>> reproduce (this is a W=1 build):
>>>           wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>> Your make cross script tries to download the clang every time.
>> Please separate the download (which is ~400 MB and 2 GB after open) from the compilation.
> Hi Erez, thanks for your feedback, we will improve the reproduction
> side per these suggestions.
>
>> Please use "wget" follow your own instructions in this email.
>>
>>>           chmod +x ~/bin/make.cross
>>>           # install mips cross compiling tool for clang build
>>>           # apt-get install binutils-mips-linux-gnu
>>>           # https://github.com/0day-ci/linux/commit/8a8f634bc74db16dc551cfcf3b63c1183f98eaac
>>>           git remote add linux-review https://github.com/0day-ci/linux
>>>           git fetch --no-tags linux-review Erez-Geva/Add-sending-TX-hardware-timestamp-for-TC-ETF-Qdisc/20201210-000521
>> This branch is absent
>>
>>>           git checkout 8a8f634bc74db16dc551cfcf3b63c1183f98eaac
>> This commit as well
>>
>>>           # save the attached .config to linux build tree
>>>           COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
>>>
>> I use Debian 10.7.
>> I usually compile with GCC. I have not see any errors.
>>
>> When I use clang 11 from download.01.org I get a crash right away.
>> Please add a proper instructions how to use clang on Debian or provide
>> a Docker container with updated clang for testing.
>>
>>> If you fix the issue, kindly add following tag as appropriate
>>> Reported-by: kernel test robot <lkp@intel.com>
>>>
>>> All errors (new ones prefixed by >>):
>>>
>>>>> net/core/sock.c:2383:7: error: use of undeclared identifier 'SCM_HW_TXTIME'; did you mean 'SOCK_HW_TXTIME'?
>>>              case SCM_HW_TXTIME:
>>>                   ^~~~~~~~~~~~~
>>>                   SOCK_HW_TXTIME
>>>      include/net/sock.h:862:2: note: 'SOCK_HW_TXTIME' declared here
>>>              SOCK_HW_TXTIME,
>>>              ^
>>>      1 error generated.
>>>
>>> vim +2383 net/core/sock.c
>>>
>>>     2351	
>>>     2352	int __sock_cmsg_send(struct sock *sk, struct msghdr *msg, struct cmsghdr *cmsg,
>>>     2353			     struct sockcm_cookie *sockc)
>>>     2354	{
>>>     2355		u32 tsflags;
>>>     2356	
>>>     2357		switch (cmsg->cmsg_type) {
>>>     2358		case SO_MARK:
>>>     2359			if (!ns_capable(sock_net(sk)->user_ns, CAP_NET_ADMIN))
>>>     2360				return -EPERM;
>>>     2361			if (cmsg->cmsg_len != CMSG_LEN(sizeof(u32)))
>>>     2362				return -EINVAL;
>>>     2363			sockc->mark = *(u32 *)CMSG_DATA(cmsg);
>>>     2364			break;
>>>     2365		case SO_TIMESTAMPING_OLD:
>>>     2366			if (cmsg->cmsg_len != CMSG_LEN(sizeof(u32)))
>>>     2367				return -EINVAL;
>>>     2368	
>>>     2369			tsflags = *(u32 *)CMSG_DATA(cmsg);
>>>     2370			if (tsflags & ~SOF_TIMESTAMPING_TX_RECORD_MASK)
>>>     2371				return -EINVAL;
>>>     2372	
>>>     2373			sockc->tsflags &= ~SOF_TIMESTAMPING_TX_RECORD_MASK;
>>>     2374			sockc->tsflags |= tsflags;
>>>     2375			break;
>>>     2376		case SCM_TXTIME:
>>>     2377			if (!sock_flag(sk, SOCK_TXTIME))
>>>     2378				return -EINVAL;
>>>     2379			if (cmsg->cmsg_len != CMSG_LEN(sizeof(u64)))
>>>     2380				return -EINVAL;
>>>     2381			sockc->transmit_time = get_unaligned((u64 *)CMSG_DATA(cmsg));
>>>     2382			break;
>>>> 2383		case SCM_HW_TXTIME:
>>>     2384			if (!sock_flag(sk, SOCK_HW_TXTIME))
>>>     2385				return -EINVAL;
>>>     2386			if (cmsg->cmsg_len != CMSG_LEN(sizeof(u64)))
>>>     2387				return -EINVAL;
>>>     2388			sockc->transmit_hw_time = get_unaligned((u64 *)CMSG_DATA(cmsg));
>>>     2389			break;
>>>     2390		/* SCM_RIGHTS and SCM_CREDENTIALS are semantically in SOL_UNIX. */
>>>     2391		case SCM_RIGHTS:
>>>     2392		case SCM_CREDENTIALS:
>>>     2393			break;
>>>     2394		default:
>>>     2395			return -EINVAL;
>>>     2396		}
>>>     2397		return 0;
>>>     2398	}
>>>     2399	EXPORT_SYMBOL(__sock_cmsg_send);
>>>     2400	
>>>
>>> ---
>>> 0-DAY CI Kernel Test Service, Intel Corporation
>>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>>
>> Please improve the robot, so we can comply and properly support clang compilation.
> Got it, we will keep improving the bot.
>
>> Thanks
>>     Erez
>> _______________________________________________
>> kbuild-all mailing list -- kbuild-all@lists.01.org
>> To unsubscribe send an email to kbuild-all-leave@lists.01.org
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9ac27644-6e7b-e618-2750-7e6c77465410%40intel.com.
