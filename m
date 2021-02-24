Return-Path: <clang-built-linux+bncBDV2D5O34IDRBLH73KAQMGQEMTJ2WUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8655D324592
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 22:05:49 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id j1sf2667770ioo.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 13:05:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614200748; cv=pass;
        d=google.com; s=arc-20160816;
        b=EYK8NVLfXUAo8JlVLmCJapSX+hsrLKUPmTECt28YMu556L/vIhSWAnu3hQ/5vn0JWU
         IcC9LCTLz8Rsg5dd6gyF7Iw/03EtKVori94n3MYMnr7t027DPZDMJ5CPNSO3svnLcRmC
         x8tJiYaBXPA4zDOjPcfiiLq7kDB8D0w/aiGZqfZQSGZrxulJ/e5lMXgBeJn+URG79rbD
         Z6d6eCYQ8iI/M/BMWRO9PGE9T9kvbOoPThXAc1WruiWV3eIyqXEgTHe0bybz5HYajH5r
         K+RYMavPcHTJEIRZ1TqOlI4OisVzRPrf1oZgJvuwI7KgLHATRQFxro1Cz3rpjTLhR6tw
         TDAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:from
         :subject:sender:dkim-signature;
        bh=0tuGCAFZQN92EggiWuCfd7ytSPIHL33LX7OX9IW9Im4=;
        b=jkhGAo8k0A5DxdinsyhLavNB2bbWfAZVxC4TzIO1Q587jHmLX433sey9ryDHbo2GSS
         gnTQw2dur4gkyRmuqRmaq3FBmlGCw3Yrwpf1NGj+cT23pstkzid4V/SFdHHN6f6zl3Vv
         qkIebdhFF1yNP1wTKNHHCp5/AbvWt7usMB+8j7dSioefSVMoAdWSqP8emuv4/iX/wBTd
         ydOE0pX/14KfJORq2+GLaU3y9TiWH/R0C6DXpb38Efm5jccSx9cRImp7fpHUlvSLjMoU
         0HYnetS7k/Fq5fr97HzQfWAdm7WAKPsvremgkNY69duqOcDGuTmRKlfkcFl2TzunsQxV
         efOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=pldvQ1e4;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0tuGCAFZQN92EggiWuCfd7ytSPIHL33LX7OX9IW9Im4=;
        b=Qz25FZAG9as8pFSpU1Ds1leJNNZLP1Hj1E2b6zzIJlOAGLU+m94gcq5caD7aYVHH2f
         MlPaPHAAis/NYzRj7dHVFCaRg9JMkgHesixBh22SB+J+Ap/+11aNkaEi3erTueFEh5AH
         oUQZKIx534XNQayLh1+mNeiWzfqle+JrlCtfMz7t2qaFXafO8By2inwo+Yw0tejRR/xK
         jGn/r/opeiIUcEDI7YwO1Rb4fpesAJlUrK8Qy/CvqazYcfVpKwTYlK7bnh+P81Qdu/Rt
         ahxEDGkhSS3itku3vzXQVLbIrqHgJ35h6oA91L0oF4i5Nch2xQiGHST3M0x9PY/FvqNh
         PwTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0tuGCAFZQN92EggiWuCfd7ytSPIHL33LX7OX9IW9Im4=;
        b=jL9+IKCuT5gou7y8lFOMMvh/BC5ny5kb2LazDZS3dxAfIrtAzwvd8jiGk2UVlb2Eqj
         98GJoCgTTyiCl37iXEdD4a8D/fdhMhd8oIsLq9ZTTeD6NiWOcYeJg1D6E4f6oNQ2lUBV
         BfOE+4NfBnaWC7PQiS6aHRKUIDZePPuouX+Wub05BpKpyMY++XY0PwWrR329efiMAaET
         kC0JMVj5tPvLN17MCBJTDgv6h4lMXU5n74VwULfmTwty1fo46u7xAqxaTaNPFqNJVtWC
         qz8tgVJCTNd8xoLUirjip66VVOIAhrbH1LHe6bkAqF9zI1ZYG9H4wC6H0fbGA7hzp3s3
         2S2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533tMIv0X2QVDngIjJkFtBoNim2CwCf6B/dyKOMq+0qzHALlaP6n
	ZmLc7m9a5KJHD/NbLScYALE=
X-Google-Smtp-Source: ABdhPJyEGq7G80zwgSEnpSs1jo8RjRsufkImb7gXvyylEDT3V6hBML+l0TLo93ido3DQlPBq4Gchvg==
X-Received: by 2002:a5d:81c8:: with SMTP id t8mr25843643iol.38.1614200748586;
        Wed, 24 Feb 2021 13:05:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:cc63:: with SMTP id j3ls495006jaq.6.gmail; Wed, 24 Feb
 2021 13:05:48 -0800 (PST)
X-Received: by 2002:a05:6638:3389:: with SMTP id h9mr17530504jav.65.1614200748254;
        Wed, 24 Feb 2021 13:05:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614200748; cv=none;
        d=google.com; s=arc-20160816;
        b=lRKpV11oJ20V1D3kgVsIbdBYx/tSLOsi1JQHQLD8BQnzgpGavK/6JnEPkQNr26rRpb
         1Fclbr6slEys+VHnobdus+Weu6OhMJeTE7FWfBaxL1nlTW/Q2vlcnoydU4H6lssn4YjH
         bbcYIogdRBM8WwqlZkaPL6/OW+tg2doZMKx0yxUQ7/hpmSOC+xR1d9H0Uv0OJENchWw/
         5DHjWz/JiRg2lzhehaG7ZSbcIV1X6AZgyDtrS2itYuSLU0PK2Fe4zAQf9nLTEHMEJni1
         sO+PqmpsqL78fFXx3qLxCo/XsUh/NKakuHAWiZ1RCoQUGstZNvllf1pyLgzRHUpnBVKO
         MuZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=aZXalGwZSAKQIwSjOWmxTwvg1m6thX64kxngN7tNTGw=;
        b=mhPGZUHuF0LdsO9QJT7mgKw7+Jg7bpG0gpPkzhzlK26EwfPswYLRnOHqMMcEkgCrXX
         FIdlQoQmBMibgqt5WAAQW8IdrHNIEw2mf6U/nx/2fjcL5FJDpYwdLPDW+FWTdqEZcyeC
         Qc4f/bPQzX3NDiWEx+PWXxcqugsF96EKl5gCtIXXdJvwGtUxOWNGOMMRKU+VFPeXQHYF
         ZRmi0+hjpNNdOrUYYg0Ib7WObcP5vyCtoj+QIv6r1S2p6XjkMMM43y4fNgLudnK1FB1g
         HmtzdJGvTL1XJKXmf3zndjbPUx+dQMzLx4jtceBdxN6ojT8bmsCZ8XdQCaHxLIo3DXLE
         nnVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=pldvQ1e4;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id s10si174173ild.2.2021.02.24.13.05.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 13:05:48 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0::d05b]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lF1Lt-0008Ts-Az; Wed, 24 Feb 2021 21:05:45 +0000
Subject: Re: [linux-next:master 11942/12503]
 drivers/video/fbdev/aty/atyfb_base.c:180:6: warning: no previous prototype
 for function 'aty_st_lcd'
From: Randy Dunlap <rdunlap@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
References: <202102242016.MJskK6hp-lkp@intel.com>
 <97716bb9-6aca-d7e6-e390-1b9d3a0b99a8@infradead.org>
 <CAKwvOdnHZTsYNBONLHGu=dMcPPgp8TM8Lq8vC2L-984CUFwkmA@mail.gmail.com>
 <3628bb0f-0790-2a18-93e5-be244d32be53@infradead.org>
Message-ID: <cb70d76f-36af-0d78-4a12-31d18be2cea9@infradead.org>
Date: Wed, 24 Feb 2021 13:05:41 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <3628bb0f-0790-2a18-93e5-be244d32be53@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=pldvQ1e4;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 2/24/21 1:02 PM, Randy Dunlap wrote:
> On 2/24/21 12:42 PM, Nick Desaulniers wrote:
>> On Wed, Feb 24, 2021 at 12:03 PM Randy Dunlap <rdunlap@infradead.org> wrote:
>>>
>>> On 2/24/21 4:46 AM, kernel test robot wrote:
>>>> Hi Randy,
>>>>
>>>> FYI, the error/warning still remains.
>>>>
>>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>>>> head:   577c283560fe8a81a23a95654c6d13e8412d22f1
>>>> commit: bfa5782b9caa26f93f42ad79804e1f75a1ce9f18 [11942/12503] fbdev: atyfb: add stubs for aty_{ld,st}_lcd()
>>>> config: arm64-randconfig-r004-20210223 (attached as .config)
>>>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project f14a14dd2564703db02f80c00db8ae492b594f77)
>>>> reproduce (this is a W=1 build):
>>>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>>         chmod +x ~/bin/make.cross
>>>>         # install arm64 cross compiling tool for clang build
>>>>         # apt-get install binutils-aarch64-linux-gnu
>>>>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=bfa5782b9caa26f93f42ad79804e1f75a1ce9f18
>>>>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>>>>         git fetch --no-tags linux-next master
>>>>         git checkout bfa5782b9caa26f93f42ad79804e1f75a1ce9f18
>>>>         # save the attached .config to linux build tree
>>>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
>>>>
>>>> If you fix the issue, kindly add following tag as appropriate
>>>> Reported-by: kernel test robot <lkp@intel.com>
>>>>
>>>> All warnings (new ones prefixed by >>):
>>>>
>>>>>> drivers/video/fbdev/aty/atyfb_base.c:180:6: warning: no previous prototype for function 'aty_st_lcd' [-Wmissing-prototypes]
>>>>    void aty_st_lcd(int index, u32 val, const struct atyfb_par *par)
>>>>         ^
>>>>    drivers/video/fbdev/aty/atyfb_base.c:180:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>>>>    void aty_st_lcd(int index, u32 val, const struct atyfb_par *par)
>>>>    ^
>>>>    static
>>>>>> drivers/video/fbdev/aty/atyfb_base.c:183:5: warning: no previous prototype for function 'aty_ld_lcd' [-Wmissing-prototypes]
>>>>    u32 aty_ld_lcd(int index, const struct atyfb_par *par)
>>>>        ^
>>>>    drivers/video/fbdev/aty/atyfb_base.c:183:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>>>>    u32 aty_ld_lcd(int index, const struct atyfb_par *par)
>>>>    ^
>>>>    static
>>>>    2 warnings generated.
>>>>
>>>
>>> These 2 functions are also used/usable (depending on CONFIG options) in
>>> mach64_ct.c so they can't be static.
>>>
>>> AFAIK, we don't make functions have different qualifiers depending on
>>> config options.
>>
>> Is there a shared header included by both mach64_ct.c and atyfb_base.c
>> you could provide a declaration in, that way should the definition
>> change we'd catch such a change in order to not break the callers?
>>
> 
> atyfb.h:
> 
> #if defined(CONFIG_PMAC_BACKLIGHT) || defined (CONFIG_FB_ATY_GENERIC_LCD) || \
> defined (CONFIG_FB_ATY_BACKLIGHT)
> extern void aty_st_lcd(int index, u32 val, const struct atyfb_par *par);
> extern u32 aty_ld_lcd(int index, const struct atyfb_par *par);
> #endif
> 
> so it's already there unless the .config did not include those #ifdef CONFIG_s.
> I'll recheck that.

OK, none of those 3 kconfig symbols is set. I'll check again where the
usage is.


-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cb70d76f-36af-0d78-4a12-31d18be2cea9%40infradead.org.
