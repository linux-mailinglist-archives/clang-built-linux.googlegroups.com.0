Return-Path: <clang-built-linux+bncBDV2D5O34IDRBBH63KAQMGQEGEXQ5LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 818C032458E
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 22:03:01 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id 6sf3639295ybq.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 13:03:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614200580; cv=pass;
        d=google.com; s=arc-20160816;
        b=B0pb2/t3AfyqGR1m2bleArtSV/PT0d6wV/h9PrTx0hGO1snZ4LgZbOI22SQ1dndxyC
         LTCnwea4vlpz731MetQTWuHN8R+Z0aa8vtlpJfxYARv9Y9Q0Rfv+qRF9gkYQuQQQMzQG
         mJHWDPg2uk8vlpW2udYUT7kIXbYKrjnuYEgH2xk0wIGOkX7VzTZeKkdGmmKMEtM7xctr
         D+nxikz32OdcJiUWCtO5/FcmFHE12k36inSO5TBXdELvZ2jSGua1jKIKTypnwtTTBu+l
         4NPiekegG50Ef43yHm4PB+MoLH4C/APbI8qibceMXmmIa7zu2vmfDbvSThxS6u3YT04e
         HIqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=yb0ZU9YeBQMKCL1vW4Akf6ceiLJ2aZOjdWePwOnWnUA=;
        b=RVMBFGCHNojhJhuyalJqKxFlOpvi/GIrLLrShpReKGg1D555AY6rt9K21QF4FCR4Nh
         D80Y1RtblVtHE3spFrXbzPayhiNydDNz+8hfVJaQD8mFVcP3w48jGiQ/dwG2+oJQQhmi
         lRh17iggPdRenWHbory9JL9h/D5lrfeC+tPmSLpldIELUUh2kk6eqiZKYq3GKbDxFvP8
         zcD38/rsK86U3F4ZSuH0/NYe4f28pZWZl+Op06eH2MIC/29tz5LOI6gtKOtyjCQplutW
         yb5890rPAPqoME9/P0SPUuc4mu7PBbhdEBtISjuEkPjABgImr/AOkDqkKmi8iZBba7E8
         +SBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=KKrHr0be;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yb0ZU9YeBQMKCL1vW4Akf6ceiLJ2aZOjdWePwOnWnUA=;
        b=EjHckLT3Ctv4ZI6Ne7RD5o64MumcOed1wtg6Z47yv9+sPx8iXX1Su9swth1Yte4PDG
         vZVE2yCR03+1S3LT5k6rVH/EEU3QkAap/tNrli4hD//ZVk9Zkyo6OT9mFHgZKwvGIuUD
         4Uz3ziEokIW1/J72maf5hTQHfOIky+ygzYXMduGUYv0dUQO+zGQAHHzipC9l9OPmpSLz
         pBKNt3m5NUBsm0bPefheUhdfKl2LcQlIdI/2aplQVdwEHpmDUP7ySJIfgA3SvUgqM+YR
         pPR46AYK04xgHw/tlQENcO2zoLNAmtFISetTZqNOfjqRd1JQIu3iFdVF7G71AZMOgjBH
         Tu/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yb0ZU9YeBQMKCL1vW4Akf6ceiLJ2aZOjdWePwOnWnUA=;
        b=CMgoxuQHj5jSBoM6CCkH1lnSDEKgCFrn75dxOjV37zpNIoUiaBG4PnWuDMnJDL5sxd
         gmzZTHiSY1YDW6lv41IZo9m99w43bpvWhS/zQnyFUzBP+iUAoUuDMaH9FAJp7luzTNHQ
         JEJz6GEeN3/7OIpm/WUvpEYc+HDuPmDag6CHAKGnJ/TrlrZEJMNTqXQiAbSMJqNnPJn9
         m0c/0bLEEUBsqUWmO8Z/xCGXR2kesxu1FfMPe29CcMZO/9lhAiC9sa3Ci5PjPfu48lVQ
         /XrPZ7dnfjzVnzcjXSAkhXjwYjYg8+T6bfT/6JQQrlIseQbhzKmKHx9fZaXdqGIgxx1q
         RnQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330NOX5M2a7Y+8WVyaZFnnjddv95cqkPeP/pdqZGDhDunzSMbkn
	kAGN4Yau+1LsdXIWYpFb6Dg=
X-Google-Smtp-Source: ABdhPJy1Op9rz9t4jsQQ2KJEBmEcN/tx8fhDCPgnAjV92z+o6Hlj+dNvEnHatyU3xAAQP+lPVp51+w==
X-Received: by 2002:a25:d251:: with SMTP id j78mr29050168ybg.480.1614200580339;
        Wed, 24 Feb 2021 13:03:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7343:: with SMTP id o64ls1576300ybc.8.gmail; Wed, 24 Feb
 2021 13:02:59 -0800 (PST)
X-Received: by 2002:a25:4101:: with SMTP id o1mr20918057yba.240.1614200579824;
        Wed, 24 Feb 2021 13:02:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614200579; cv=none;
        d=google.com; s=arc-20160816;
        b=RNIGa8Kzpmlhq2SRzXxMQmYT94j31/UB891s2H4YHXKz/arlN9MGChOD/5vXAowo2l
         uwTuAZvMZjp7y38HvCb+Qr9a150q/WqDp+0D/bg0nMUueX7M/Wc0SjmMNIkaI4+xH85V
         wNJd86DNgiK1kFMYyjR2c/UMQx5wN8IdpP/crZqeX3QhvpCG3Xi4mP8ld2kqyo8Mr68U
         Jj4efnPEf8HKXrn8bUzfaJTUO+vGn1NhQOQ1Hrvu9nYy6AvV13e6nQlM7tsJ9t8MxsaE
         L+daHs35pfDEDseYqankv7A+E5l2YnB71o8EGVpSnbs7LidBtssAL+o0gBY7VdYo3Yvz
         a5Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=WhViOo4bMhzCRGucQZfad8LzFD6uv/XnGokgXjpbUmg=;
        b=v9oWfRboqawLiInwHeDEbTLWoCKSzrPSmrWLafyscmkpkbt9DiQ9gLPkXZgo5Xpkln
         k8e2fQoUf9VNHRMQK/6NDkBNLe5/z9qFSQwJ2j1CIEWPXL4xJU9Fh2YzPsPUYoyOCcVS
         4pU7dQsDSinS9eVyMUBSVjeoiwKEbvxdINDir/gYkAqLLlF109Wd9ZkCvyt5G8qt6XZb
         4w+qwPALvu+zG7QsSpokLHAHiDpT3OWuj/aBAUjdg64L0oEKyZB3bdOivr/3P4s4J5OC
         GeEMMM0l3lEme+SytsyfZ0BTerp1AW6TjxL4fvOkDZQLPZTrdKtwN2dt4/qSRmkyQgfo
         hliA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=KKrHr0be;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id s44si249713ybi.3.2021.02.24.13.02.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 13:02:59 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0::d05b]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lF1JA-0008IL-48; Wed, 24 Feb 2021 21:02:56 +0000
Subject: Re: [linux-next:master 11942/12503]
 drivers/video/fbdev/aty/atyfb_base.c:180:6: warning: no previous prototype
 for function 'aty_st_lcd'
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
References: <202102242016.MJskK6hp-lkp@intel.com>
 <97716bb9-6aca-d7e6-e390-1b9d3a0b99a8@infradead.org>
 <CAKwvOdnHZTsYNBONLHGu=dMcPPgp8TM8Lq8vC2L-984CUFwkmA@mail.gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <3628bb0f-0790-2a18-93e5-be244d32be53@infradead.org>
Date: Wed, 24 Feb 2021 13:02:52 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnHZTsYNBONLHGu=dMcPPgp8TM8Lq8vC2L-984CUFwkmA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=KKrHr0be;
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

On 2/24/21 12:42 PM, Nick Desaulniers wrote:
> On Wed, Feb 24, 2021 at 12:03 PM Randy Dunlap <rdunlap@infradead.org> wrote:
>>
>> On 2/24/21 4:46 AM, kernel test robot wrote:
>>> Hi Randy,
>>>
>>> FYI, the error/warning still remains.
>>>
>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>>> head:   577c283560fe8a81a23a95654c6d13e8412d22f1
>>> commit: bfa5782b9caa26f93f42ad79804e1f75a1ce9f18 [11942/12503] fbdev: atyfb: add stubs for aty_{ld,st}_lcd()
>>> config: arm64-randconfig-r004-20210223 (attached as .config)
>>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project f14a14dd2564703db02f80c00db8ae492b594f77)
>>> reproduce (this is a W=1 build):
>>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>         chmod +x ~/bin/make.cross
>>>         # install arm64 cross compiling tool for clang build
>>>         # apt-get install binutils-aarch64-linux-gnu
>>>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=bfa5782b9caa26f93f42ad79804e1f75a1ce9f18
>>>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>>>         git fetch --no-tags linux-next master
>>>         git checkout bfa5782b9caa26f93f42ad79804e1f75a1ce9f18
>>>         # save the attached .config to linux build tree
>>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
>>>
>>> If you fix the issue, kindly add following tag as appropriate
>>> Reported-by: kernel test robot <lkp@intel.com>
>>>
>>> All warnings (new ones prefixed by >>):
>>>
>>>>> drivers/video/fbdev/aty/atyfb_base.c:180:6: warning: no previous prototype for function 'aty_st_lcd' [-Wmissing-prototypes]
>>>    void aty_st_lcd(int index, u32 val, const struct atyfb_par *par)
>>>         ^
>>>    drivers/video/fbdev/aty/atyfb_base.c:180:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>>>    void aty_st_lcd(int index, u32 val, const struct atyfb_par *par)
>>>    ^
>>>    static
>>>>> drivers/video/fbdev/aty/atyfb_base.c:183:5: warning: no previous prototype for function 'aty_ld_lcd' [-Wmissing-prototypes]
>>>    u32 aty_ld_lcd(int index, const struct atyfb_par *par)
>>>        ^
>>>    drivers/video/fbdev/aty/atyfb_base.c:183:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>>>    u32 aty_ld_lcd(int index, const struct atyfb_par *par)
>>>    ^
>>>    static
>>>    2 warnings generated.
>>>
>>
>> These 2 functions are also used/usable (depending on CONFIG options) in
>> mach64_ct.c so they can't be static.
>>
>> AFAIK, we don't make functions have different qualifiers depending on
>> config options.
> 
> Is there a shared header included by both mach64_ct.c and atyfb_base.c
> you could provide a declaration in, that way should the definition
> change we'd catch such a change in order to not break the callers?
> 

atyfb.h:

#if defined(CONFIG_PMAC_BACKLIGHT) || defined (CONFIG_FB_ATY_GENERIC_LCD) || \
defined (CONFIG_FB_ATY_BACKLIGHT)
extern void aty_st_lcd(int index, u32 val, const struct atyfb_par *par);
extern u32 aty_ld_lcd(int index, const struct atyfb_par *par);
#endif

so it's already there unless the .config did not include those #ifdef CONFIG_s.
I'll recheck that.


-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3628bb0f-0790-2a18-93e5-be244d32be53%40infradead.org.
