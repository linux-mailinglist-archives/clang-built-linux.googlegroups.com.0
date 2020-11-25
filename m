Return-Path: <clang-built-linux+bncBD26TVH6RINBBHON636QKGQEQSTHJQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBE92C35AB
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 01:34:39 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id x20sf253237pfm.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 16:34:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606264478; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wo3bhxfK1AepslXRSqMX5F8yoRQ8i1MtUeaTbjID40AsQ0PP2NBgHoORXyHSgl30lS
         Zq6VpXPJ3us1a2UUNGsYu/7GtRuYGvSgaghvS6SnjxTSrZBivLoF2m4I3HiVyMtroMUp
         LW4yGh9vlaz/rovfBNNaU2+DC2nsZ4IXt0j5Imtn3fjoXtRqmNEaCx+aXWdxMY8/bnZF
         AZKarRLbenjYx6eJ+pBKAsIlmuZpLx+RtD4mPRtFz1x6xrQEVUDqaQe58bKbM+8uIFGa
         mfArg+50ps8xlnLY1RUJ2+qcqrLZ+9mU+giu7MdRPKICd8RWBC73rE802WvkaIfm8JAc
         IAsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=AgBc4aRz9hudEhpslz4S5zbKN5DEUNAExPocmwzzDlY=;
        b=IW8vpPKnbk2eqPAIK6zF2F1ZJeQrDkSugEUMelcTmSLDDsZZSSzgbvxTVw1AwS5XsO
         nUIMYY0/ddR1rJ3gW/mTIMUAen12oSy2nKEC4LsR3gvRiKByAnt15SiigPDIrnwPOLMk
         KrNLriTAAP97uOse+6Ad5FccgTjAKNTmu/ErlhQOYlAk3VJZ8tkdZyQ+fD8ZBYnA2obj
         B3+yNtgV5xQ+2jRNgJzzZnPY3Cu0FWS4X38WfPz9rtKFa5nBdJPV7MU/xuEKXzrEf7LK
         uD0US2hdRoyBM7LyFaXFCDVljvUbZqElZ60fb6S6yw0Da6C90piNYFCfTu7JPkhEL/WX
         i9HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AgBc4aRz9hudEhpslz4S5zbKN5DEUNAExPocmwzzDlY=;
        b=kqT/wVTvyCuueWrIVlujNhvG+95OxNEDWzlpZuDzWEabaizbAEEZo3CLKIk7BOo/X+
         kBKHTkpgqhyMsi1DJWXWlaHfCUtVfDuGP4dFINDmDyVsuivOBhtc5OShtuYyw4NwSCXH
         Q7QE7d+KfYCAuDmuFpjZJm9+w7AZBXgy9NUkfv9lcJmFKewecsiLeYRsX2W8Fi6rT1QX
         IujbBzjDvS/KN0tgwYYpzHKkbw7HhWUryBUwcnkM0dCvoyUD9GfcVn4Z424qUUyWm8SX
         PLBnlmJSI2JDEb40THYfL407y6A2tZA7WwpmAEL9Ff3dCaT27DEJiOcF6y+6wRobUVWQ
         XWVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AgBc4aRz9hudEhpslz4S5zbKN5DEUNAExPocmwzzDlY=;
        b=BR7ncfJW8yFwDoslAQpujZkpbuxypdRyipmOrz53EWxIin2hNbHScpfPkoBKTL/onx
         jgyWL5lkfs4yArenUyxwkU8Lr6kxLzK8QEKQoahIE5/ljgVvo6rwSK28mBEnTalaoeUq
         RHJq+GdN0X/y0ST1PjfxM8dO1/HSI9s/HWtc1jO86KDbO9cnlZw/2fCsRPdXZUmlKR4D
         OVIL1+Q6YLXKry13GnH8NrHp15IUioonaE4XZVDIi0jOru+wur3pey+93iNw8z847H/9
         rGo6vK4a4ofRHWsCwV91jtuzqytploNR1yQmV8eCfcvOjpHYjOhRQazGMC5dIvDIQonz
         kdyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530oyBSGnYmXGl0Qegy+E83gFleQCAis/Kg6SmNtGu+obN+BvyWb
	NTWXH47h0mq/ZIlzXFTlQLc=
X-Google-Smtp-Source: ABdhPJx4+ZwJaFce9Fm/k8NUz616XTdB3M/IVIJjAHDBqkDj5FG457miuRSM7V/6W1R7acQEWvHzxw==
X-Received: by 2002:a05:6a00:6:b029:18b:b5a:494c with SMTP id h6-20020a056a000006b029018b0b5a494cmr698140pfk.81.1606264477841;
        Tue, 24 Nov 2020 16:34:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a503:: with SMTP id a3ls246525pjq.2.gmail; Tue, 24
 Nov 2020 16:34:37 -0800 (PST)
X-Received: by 2002:a17:90b:4906:: with SMTP id kr6mr955583pjb.85.1606264477142;
        Tue, 24 Nov 2020 16:34:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606264477; cv=none;
        d=google.com; s=arc-20160816;
        b=RooVSQwbo6GkaV4wIbfs3yXlATb4b0WbZ1gMyCuRvEWBETX/VBSx6s5cbtcUOc5NQE
         /wCWI+qCZWTV1dGRqluNPNQdbw4emiKaJ4gy0Ltw1mQcQUaBChSGcHPGcLZ5FKnyLdPf
         E/+ww+oTRrszwnePIUKkImtR+1kUuFB758S85i1UeEKWZEVRvvAoxSCvkCVBlQc32hhh
         Z9IYwR2DG76lm1onAT2R4ZxcMsjyXxSBy+hkZilYSvNF2KbxiG+H1HybQj8WeQ0W2l9h
         af61ZcFHTSlvGrbWUxLPz88p7ETCdQGfF/c7Aq2QwzG78/rNYqWzAxtqLR5+SRCKiHLg
         HgSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=NrqTVmxwurB18G7WQm9u5b+yYL6kHaZivb9J1k+aXZk=;
        b=QyekqRM+LSiPgcVBBvvKRSo2c225oHljqf242OFb8cRGIIAVxU9F97pxJNTJcHnM2V
         3Dtnv0mTZotwKh93r2vqMRGxyZ65GjvQrPYeoR2EhwMMV+7xv3JLydJtzH7vSh88RLfH
         Vk2hzlP9/Ub//8wW4lx4hX/FWeBziQ5YRU4AiNf0l9+Umejt9Kd/9sAaulir/7MBOcA+
         tNuTmGq9c1VPnh4bIMnHHtWwNEFNvIGtdj0XlTvPZ5Yvp6V8lSNIP+wXP7X8pNYHWCqw
         taUYKc62MJMRclIthCHKerBJknpIoeFi99LgoxMtHc0Orydlyw68EDxgiUD5kn8t2b4C
         vx+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id d2si46087pfr.4.2020.11.24.16.34.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Nov 2020 16:34:37 -0800 (PST)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: n2hdSOCJCtcX9Rk9GYX9SA3cRxQ3OJ/OKdOowPo3xzHEI4ylLzSxZv8GRA82gJExLpBGftPhc1
 0zqQ7d14z8gg==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="151299112"
X-IronPort-AV: E=Sophos;i="5.78,367,1599548400"; 
   d="scan'208";a="151299112"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Nov 2020 16:34:34 -0800
IronPort-SDR: 49PvZQybSUK2OMDtn3ohRmvYCPCcdvONETyCCkFn5JQrLjvs1WpJs3S5tTiZVTGpaPef3zbYtm
 QkWokUDiIpQw==
X-IronPort-AV: E=Sophos;i="5.78,367,1599548400"; 
   d="scan'208";a="478713242"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.117]) ([10.239.13.117])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Nov 2020 16:34:32 -0800
Subject: Re: [kbuild-all] Re: drivers/net/wan/slic_ds26522.c:205:12: warning:
 stack frame size of 12288 bytes in function 'slic_ds26522_probe'
To: Andrey Konovalov <andreyknvl@google.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux Memory Management List <linux-mm@kvack.org>
References: <202011200603.Fq2dmeMk-lkp@intel.com>
 <CAAeHK+zykqmcDPAa5GAeu4hSfyWF-D4PAa15y=CSgtAxSQTkGQ@mail.gmail.com>
 <71e44c1f-3c9f-db89-0347-3e23699d67cb@intel.com>
 <CAAeHK+wc=A=52o1fwK3KeRMk7k6QE-nuoU51TrkoRTWhAF44rQ@mail.gmail.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <cf982a93-9517-5cd8-0170-a414441d47e6@intel.com>
Date: Wed, 25 Nov 2020 08:33:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAAeHK+wc=A=52o1fwK3KeRMk7k6QE-nuoU51TrkoRTWhAF44rQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as
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



On 11/24/20 7:51 PM, Andrey Konovalov wrote:
> On Tue, Nov 24, 2020 at 9:02 AM Rong Chen <rong.a.chen@intel.com> wrote:
>> On 11/23/20 10:15 PM, Andrey Konovalov wrote:
>>> On Thu, Nov 19, 2020 at 11:16 PM kernel test robot <lkp@intel.com> wrote:
>>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>>>> head:   3494d58865ad4a47611dbb427b214cc5227fa5eb
>>>> commit: cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4 kasan: allow enabling stack tagging for tag-based mode
>>>> date:   3 months ago
>>>> config: arm64-randconfig-r002-20201119 (attached as .config)
>>>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b2613fb2f0f53691dd0211895afbb9413457fca7)
>>>> reproduce (this is a W=1 build):
>>>>           wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>>           chmod +x ~/bin/make.cross
>>>>           # install arm64 cross compiling tool for clang build
>>>>           # apt-get install binutils-aarch64-linux-gnu
>>>>           # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4
>>>>           git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>>>           git fetch --no-tags linus master
>>>>           git checkout cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4
>>>>           # save the attached .config to linux build tree
>>>>           COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
>>>>
>>>> If you fix the issue, kindly add following tag as appropriate
>>>> Reported-by: kernel test robot <lkp@intel.com>
>>>>
>>>> All warnings (new ones prefixed by >>):
>>>>
>>>>>> drivers/net/wan/slic_ds26522.c:205:12: warning: stack frame size of 12288 bytes in function 'slic_ds26522_probe' [-Wframe-larger-than=]
>>>>      static int slic_ds26522_probe(struct spi_device *spi)
>>>>                 ^
>>>>      1 warning generated.
>>>> --
>>>>>> drivers/gpu/drm/panel/panel-sitronix-st7789v.c:194:12: warning: stack frame size of 18352 bytes in function 'st7789v_prepare' [-Wframe-larger-than=]
>>>>      static int st7789v_prepare(struct drm_panel *panel)
>>>>                 ^
>>>>      1 warning generated.
>>> Same issue as reported previously. Copying my response from the other
>>> email just in case:
>>>
>>> This is the same issue in LLVM that was reported by Arnd for generic
>>> KASAN (also see KASAN_STACK_ENABLE option description). By default
>>> KASAN shouldn't have stack instrumentation enabled unless
>>> KASAN_STACK_ENABLE is specified. Perhaps it makes sense to disable it
>>> for KASAN_SW_TAGS config on the kernel test robot.
>>>
>>> [1] https://bugs.llvm.org/show_bug.cgi?id=38809
>> Hi Andrey,
>>
>> Thanks for the explanation, we'll disable CONFIG_KASAN_SW_TAGS.
> Hi Rong,
>
> No, no, if you have a CONFIG_KASAN_SW_TAGS-based config - keep it
> enabled, just disable CONFIG_KASAN_STACK_ENABLE to avoid these stack
> overflows.
>
> Thanks!

Ah.. my fault, will disable CONFIG_KASAN_STACK_ENABLE for this case.

Best Regards,
Rong Chen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cf982a93-9517-5cd8-0170-a414441d47e6%40intel.com.
