Return-Path: <clang-built-linux+bncBDXYVT6AR4MRBRFISXXQKGQEDM4U5HI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1BA10EEF9
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Dec 2019 19:13:25 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id 132sf260417vkw.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Dec 2019 10:13:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575310405; cv=pass;
        d=google.com; s=arc-20160816;
        b=AJeDEF7dpO0IbfiumEQHMXsnQKwoMR1PfU5eNafCTQRe3e9X94DuJtZ0bJnh8pgtjx
         rwdo6eRFBRrasrqnZTvvwOYehXdwzeb/CiZc9dYvOCEBiCS9CnOwfuE6SWSVHVk0dd5A
         7a17RbAUIQ0RnafAehb672dz6MIw2oWwwOYhnAKI2S8gi7KV11QiA2F+4WmR2jA7bVQa
         lHVjfy0U1jY6FjpCaaMHQcJ469hN4L9mvXxuxPde5r//14kwae13a5Hv6S/vvLLtRPVV
         la3bDQqOvfmFx3d8ZDVVIIC6koFJpFKKPIrlT311L58IEZCX1XTtjcVR9KOCAjVNsEpk
         MJug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=H9TuFoZpH+1mUM/CfD4OPZytq6xhCsJXFLyGxim7g+o=;
        b=b2PadZZo10Xufo0m0UI376e7oPczI7+Qx0cHd9RyLTa2//6mVHUMryzH/5zBBZTJWp
         rRl4Df1RsRKG4btgpp3/OKLtxVTy8jjNZp0/SSFgLmXocF6c1l2Bd5kG+3QSr+rssib8
         bo9AWg83pvZxa07eXH/wVDIiAJ8FoJBvK3nXRz+En+moFoohMSIfYsTWCX5SLapNKtNM
         d2Lt3R7IG9mZK7JBPoyNjstKzHGJxCMZJypck3mWVo7jDHA0UV+zSZTJZpFeVj4jW+aG
         ZfKJiKdqR3+fBibNg0pFT2fyBQSwwwphjjccqszDj+17qefUtMW0/Dbls/RRzTSGyyen
         MxZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H9TuFoZpH+1mUM/CfD4OPZytq6xhCsJXFLyGxim7g+o=;
        b=XjK7M0UjN9bvvmJvGjBfQBaxYjDtTnJU5mrlFumdLZzFGkU0IaWC3kpOgH1kiLJN1G
         wP0OurC3SWVkn2BmBMrfuccwAgUKXNdZLsl9Q+VbOKWo4q2LG2oi/bUdxMNjzpY9iyMb
         vmwL1NxAtIbdaOnXo4LsQ5EVVTnqL/PO9wB5MJ1+cy7LHfq7+1MAdwGMkHt54biDc0Xa
         WRrvlmfv/slNFibcMO1Vxxp53dbzR7CiUj/g1wAAHgIzm9zjmalOx7T9XjREDCEZum8K
         8Rr8crN41qtefeNJ8q9kZaFMu5yn4XcwusZBKxX8EM82IiOIIB3JxkNe1gMTfdQK8DMv
         ah8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=H9TuFoZpH+1mUM/CfD4OPZytq6xhCsJXFLyGxim7g+o=;
        b=fJ/TGfD/dWmkhJkIklErpUn96UpxKOsN3SBCmifuzJh0oYUkLngVF/KA6498Z01dMW
         DkjaFYWu9S3OVWe6gYlihGlxAa/34DFblC87E7J0AJ+W4UetkXgM56tMTKRx4LRnvYKT
         +wxTmRne3D0KDw7GlSGX9Sj8QiMYM7Ej0a88g0vzi1BirQSd94xwZ4DyLR6JEHPaqrAy
         qPUsEhu6Bc9Q29Xb3eaAXn920uJYWiz7uvwYwbxccDwwfE6pHojT975MkQWFtx+FJMVk
         fk3FJb8if3AH3WBY1L1ZA5ACWY8rv1BNZE+5gBMZBx6XOXb1khgvjUa/cUjJrCv8k20P
         Q3FQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWZKnV81Sd26nm1h26+x5gTD1XZLE8Kzz3Dw7wcWXUpcQSr3wa3
	a+tE8GxhJLPcA16rVBmXWzo=
X-Google-Smtp-Source: APXvYqw16fFRrRmUE98psva46ln+VXelZvk70pb944PSKFYBY2KRlDjWwdiLGic/dzETl0u60z3HnA==
X-Received: by 2002:a67:fc1a:: with SMTP id o26mr143396vsq.229.1575310404827;
        Mon, 02 Dec 2019 10:13:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fd08:: with SMTP id f8ls32119vsr.13.gmail; Mon, 02 Dec
 2019 10:13:24 -0800 (PST)
X-Received: by 2002:a67:7a92:: with SMTP id v140mr171871vsc.218.1575310404435;
        Mon, 02 Dec 2019 10:13:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575310404; cv=none;
        d=google.com; s=arc-20160816;
        b=GgiyQS3T+MDUMmPoitrwUxOvWTkiShgYufamgYb9uQsCgLFuEaIUqHUDrbqpQsrD3R
         HGiJeBv+t27KCXI8Iu7x6BG6QxFVHnXaC6MR+1zL3mFIYiSXC8CzS8xVrahlqNy5RY9J
         U6VlTzEGxzoE3Huap/L9CqQR0oKoVW0SujubX8fGDRz8fJpV+rkr3fRpcX8b1R3FzIUw
         +Qa2UlSvA+EunTiwXJZsqzYwYx+VEU99NKunyYcUuWWbrAwFi+rr5hYczmmzXoN5+qD6
         gGAYpzT1F50l31ZCE12gqu/yEmYxwhXYNVYPygEwfJjmRYjZojX/Sdj3NPyjAugz56i+
         FRnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=ytiq/GwdpjUjl4ltNHZ8MA8PuA844RHUXrE7zg0sbnE=;
        b=u1r/BwFYAY05eT38S1qJwFDqXo+AcJC2kZ6ifwcFKNvFKyxo06ECksHOtvRn/ZtJb4
         pX4FfpPAW8vWVrhOS4mobH/ZqPn0Pusbt7oWUK5Q78t93zLeTXY8lffHd+HHuKIfm1+6
         E95yLqgbxeYXBDwnh1VI7BPzlxwc+jJ9IWTB/mp7ZYkGIh5vEAEQ2zxQYjAezOXFvm3E
         PpuKB0b4kR+Yqy+v6IgAExz0uaCM8wu5yJl3DcJ7Q+eW48+iiXNLwhrM7o4Mkugprj4p
         7Jh/5RlBv0IJjCzAa8PNkm8j+Ti7RzT3Pk0a3onZnSLXT5qambbmBYNi3mAxhea072qN
         YXaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id f12si14521vso.1.2019.12.02.10.13.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Dec 2019 10:13:24 -0800 (PST)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Dec 2019 10:13:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,270,1571727600"; 
   d="scan'208";a="208213299"
Received: from djiang5-desk3.ch.intel.com ([143.182.136.137])
  by fmsmga007.fm.intel.com with ESMTP; 02 Dec 2019 10:13:22 -0800
Subject: Re: [PATCH RFC 12/14] dmaengine: request submit optimization
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, kbuild test robot <lkp@intel.com>
References: <201911221043.gVTvI4zk%lkp@intel.com>
 <20191124060656.GC25359@ubuntu-x2-xlarge-x86>
From: Dave Jiang <dave.jiang@intel.com>
Message-ID: <1f3006cc-1233-bf52-210e-cd8a2c605b4b@intel.com>
Date: Mon, 2 Dec 2019 11:13:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191124060656.GC25359@ubuntu-x2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 192.55.52.115 as
 permitted sender) smtp.mailfrom=dave.jiang@intel.com;       dmarc=pass
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



On 11/23/19 11:06 PM, Nathan Chancellor wrote:
> Hi Dave,
> 
> On Fri, Nov 22, 2019 at 11:26:33AM +0800, kbuild test robot wrote:
>> CC: kbuild-all@lists.01.org
>> In-Reply-To: <157428509565.36836.4500949956170655742.stgit@djiang5-desk3.ch.intel.com>
>> References: <157428509565.36836.4500949956170655742.stgit@djiang5-desk3.ch.intel.com>
>> TO: Dave Jiang <dave.jiang@intel.com>
>>
>> Hi Dave,
>>
>> [FYI, it's a private test report for your RFC patch.]
>> [auto build test WARNING on tip/x86/core]
>> [also build test WARNING on v5.4-rc8 next-20191121]
>> [if your patch is applied to the wrong git tree, please drop us a note to help
>> improve the system. BTW, we also suggest to use '--base' option to specify the
>> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>>
>> url:    https://github.com/0day-ci/linux/commits/Dave-Jiang/idxd-driver-for-Intel-Data-Streaming-Accelerator/20191121-205839
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 004e8dce9c5595697951f7cd0e9f66b35c92265e
>> config: x86_64-defconfig (attached as .config)
>> compiler: clang version 10.0.0 (git://gitmirror/llvm_project cf823ce4ad9d04c69b7c29d236f7b14c875111c2)
>> reproduce:
>>          # save the attached .config to linux build tree
>>          make ARCH=x86_64
>>
>> If you fix the issue, kindly add following tag
>> Reported-by: kbuild test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>     In file included from drivers/tty/serial/8250/8250_port.c:41:
>>     In file included from drivers/tty/serial/8250/8250.h:12:
>>     In file included from include/linux/dmaengine.h:1398:
>>>> include/linux/idxd.h:10:16: warning: redefinition of typedef 'dma_async_tx_callback_result' is a C11 feature [-Wtypedef-redefinition]
>>     typedef void (*dma_async_tx_callback_result)(void *dma_async_param,
>>                    ^
>>     include/linux/dmaengine.h:473:16: note: previous definition is here
>>     typedef void (*dma_async_tx_callback_result)(void *dma_async_param,
>>                    ^
>>     1 warning generated.
>>
>> vim +/dma_async_tx_callback_result +10 include/linux/idxd.h
>>
>>       9	
>>    > 10	typedef void (*dma_async_tx_callback_result)(void *dma_async_param,
>>      11			const struct dmaengine_result *result);
>>      12	
>>
>> ---
>> 0-DAY kernel test infrastructure                 Open Source Technology Center
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
> 
> The 0day bot has been doing clang builds for us and sending the results
> to our mailing list and this warning popped up. Mind taking a look at
> it? I know this patch is an RFC but I'd say that is the best time to get
> these warnings knocked out :) let me know if you have any questions or
> concern.

Thanks! That extra redef shouldn't be there. I'll remove.

> 
> Cheers,
> Nathan
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1f3006cc-1233-bf52-210e-cd8a2c605b4b%40intel.com.
