Return-Path: <clang-built-linux+bncBDV2D5O34IDRBL4F3OAQMGQESAKVPRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A66A3245A7
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 22:18:40 +0100 (CET)
Received: by mail-ej1-x639.google.com with SMTP id ia14sf1422664ejc.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 13:18:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614201519; cv=pass;
        d=google.com; s=arc-20160816;
        b=ekRTbZrpngEiArhzVY7DbYsGQdbXwTvA1EMOGO2dHFck1RhpyeiEXLrSzBkFbQ2X/u
         IjnH+zwucySoAA8k4m58TNHqp/i8q0mhsJUhweyWBjSQ3ZzGyF0RmVd/C7KRBztBTKtJ
         45MdSpUZbVnw2jZBl08pqK4x+3u2kPiIgB+5rsldeGYCdbYU+0JD4pdRROaj/6TWxWIh
         +a0SbHSshY0+l79filLr1P53IdxLSXruUKRGWrI2riTKxn/YmyPuN5EowUrfFoddg6wj
         KKCFZBAHfn7fwtS8mMxst/DYYRpTOfl5gNZWegYqGSAVyLlRIo1UHPRWIGWpyGbX8lb3
         9mIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:from
         :subject:sender:dkim-signature;
        bh=MYETWnMPvT7SIwWJgvXWvVL4/Uww5/LntDEiGjI9bSM=;
        b=kjKlWW4iJP2eJU6HsW6ZbL8D4xVOVop4PJJHnr3hSE6b9D3gCsuRmlt0l7Q+b35sdh
         MwXs1fH/O2Kw/8CrgTqyMcYqBR/toqz7YgFctfl88+l8B/7DNZZZOj0chcuC6ZRxvTUu
         f5dt1Qr83QRCXZh7A8QQz4q+NEUUJ9prfc5pMdzZtpZHvBGxYGn67MINVYy+G9YL4TFb
         LVLHwPS5n7yvT464FgC7RHxvIqJfmtOsIAihFmk/AfGL70uRxC2aarkPseuGUjCK6/+o
         DgsgxQCVhdEJE5naGxGBdAAxIpX9ujsSUR581cYt5IsB5OL9rgkVp0Waj/JLOsKhkyZu
         UJHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=GRvuPBWY;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MYETWnMPvT7SIwWJgvXWvVL4/Uww5/LntDEiGjI9bSM=;
        b=Su95/W++m+jTuOPCzYu7/VNULsPWbqZpJ/2m+uQTNqIKhFMYANjKxxSmsZg6tPg489
         xEtV+YBGJG1vO9dyH9vYMnKYfo1oqX/BwADmaG6Fm6L+AhhJ04gtJii84gelZcrVZMdu
         Vp25n+ifJn7BEfG7ThF+87S753n5SRU0ph1V5qxY9sS2NQmhoByJuZspTqLpmegguuwC
         iEByEq2bIpz4b5xTZz/oIMGRYmf8Y3wFezNKb7fZ+4ft5B/hR5BTrK8NuetaMK2YPXCD
         kl1eO9t/Cyl+Hxg7cOHQ8lZ3NA0wxJjaArxB+1YMmuDcFWSQel6A3Rlf4yYtESu0atyW
         T3vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MYETWnMPvT7SIwWJgvXWvVL4/Uww5/LntDEiGjI9bSM=;
        b=BOPN5PjqS4XGpP5neh+DSOTQf14sRhzZp66x2oD8ItqZNyJkn5gVIPE7AJ3C25BU6x
         OS2ZnadB+bmqb2ZR656CXrVQvx3F4mgbzNxd7hH+ZEKIq8UxAjsIHqJU++R7/oWQEvUn
         L+dymGKbJjc7om5+wN+cBJzeQ9yswtpNm5WRaL1FjaeWIK3Kr4+2LR1dcDZZB0St8BgS
         k9unt7RtyI8UPDkXvwlzdh1i9jxjdzR/qkTLtVQGg2aIuKmaki1YGsekWGcvfjtqzawg
         SFF7OD+J4ywkZIkUBIKQNimb1taFQ6i5YZTi6XsfzQ+SgWZ2cuHkbmOWa7c/HRhIFVd1
         gqQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310ZSxjuMV/5Ma69/YYWX/812YzZXKowpp77M9PSjBR572zABt2
	MrfZ9TnO28f9Kl8wZZV60M4=
X-Google-Smtp-Source: ABdhPJy8+yAjC2ZmT0Du1Kf+GR8YxP0ke3fizzt+uayZyM3mocnZpDn+2Wyb2R/7fZDYLYEeIOC4tA==
X-Received: by 2002:a17:907:94d4:: with SMTP id dn20mr33118697ejc.397.1614201519745;
        Wed, 24 Feb 2021 13:18:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:c192:: with SMTP id g18ls1626379ejz.10.gmail; Wed,
 24 Feb 2021 13:18:38 -0800 (PST)
X-Received: by 2002:a17:906:2743:: with SMTP id a3mr33389698ejd.378.1614201518915;
        Wed, 24 Feb 2021 13:18:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614201518; cv=none;
        d=google.com; s=arc-20160816;
        b=BPe3RId5lyPRiyeBszkiqkfTk27SQB7UyuD8BKAS4e5f4yk/0M3bsPi8x1o6N7cJ/O
         GXlr7uXqM2zjzsXPAe3iQi1mbg9ZQmKupC28O60XkQC2U5p5SUhsGKWdSLIeIg3V5WIs
         OMnkMPyxcyOBv+VDGhLbEqCNqoHgz/yR334amZN9KC2e35cRx7QNWM8QaCtq1WHAd+Qj
         mb504LPVSV6jceJA3+8ngmLNJC+6zfr9MAFnufIsSPO9zcNql2DXNjqFa7uTF9mVP6XR
         d71TEOthPbMPkHBa9fOtCwtU01UF1/praf48U8NfYheutwsW6uq/u3YOdyyR6tQUoIsh
         a+pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=NkdOm/Wr6jKULUuvilCEerFUVq06JLI/C+YFLMpTzlg=;
        b=w9zx9Tw1efn6anEuwqISnXkurwO44hw+iHe3lCW6KwMDzmzl2tCxqRIwgan5TmhObY
         l2p5kWD+uFV6XyX5mrPx19aXpzlmkh7x7VyFOtXhgxTuGyKk2WisiTokf57ZPgz2+sDi
         dcv+Cv+4LBCxeiK3a1V8Oy2skcGz0ji7c7WPCjBRqXM5ikPs/qYa2vxwY4a6SOHE0w/Z
         ACTDMsOVJjLD47uF2t7GZI6KabQRiJjvpPu8kA5tniWN0AiudxPtTEli0FXfTJxXdAuH
         NOnzd8LkRF6ZBTU4jfdh00N/1+3ak2ORSFWAVJ8H2f+WYHKb0mKGdbrN/LimJPHMjVn1
         AgfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=GRvuPBWY;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id p3si162490edq.4.2021.02.24.13.18.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 13:18:38 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::6d64]
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lF1Y9-009trw-Jq; Wed, 24 Feb 2021 21:18:27 +0000
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
 <cb70d76f-36af-0d78-4a12-31d18be2cea9@infradead.org>
Message-ID: <99802c78-c809-2b02-b79e-c1fc7885e588@infradead.org>
Date: Wed, 24 Feb 2021 13:18:22 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <cb70d76f-36af-0d78-4a12-31d18be2cea9@infradead.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=GRvuPBWY;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 2/24/21 1:05 PM, Randy Dunlap wrote:
> On 2/24/21 1:02 PM, Randy Dunlap wrote:
>> On 2/24/21 12:42 PM, Nick Desaulniers wrote:
>>> On Wed, Feb 24, 2021 at 12:03 PM Randy Dunlap <rdunlap@infradead.org> wrote:
>>>>
>>>> On 2/24/21 4:46 AM, kernel test robot wrote:
>>>>> Hi Randy,
>>>>>
>>>>> FYI, the error/warning still remains.
>>>>>
>>>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>>>>> head:   577c283560fe8a81a23a95654c6d13e8412d22f1
>>>>> commit: bfa5782b9caa26f93f42ad79804e1f75a1ce9f18 [11942/12503] fbdev: atyfb: add stubs for aty_{ld,st}_lcd()
>>>>> config: arm64-randconfig-r004-20210223 (attached as .config)
>>>>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project f14a14dd2564703db02f80c00db8ae492b594f77)
>>>>> reproduce (this is a W=1 build):
>>>>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>>>          chmod +x ~/bin/make.cross
>>>>>          # install arm64 cross compiling tool for clang build
>>>>>          # apt-get install binutils-aarch64-linux-gnu
>>>>>          # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=bfa5782b9caa26f93f42ad79804e1f75a1ce9f18
>>>>>          git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>>>>>          git fetch --no-tags linux-next master
>>>>>          git checkout bfa5782b9caa26f93f42ad79804e1f75a1ce9f18
>>>>>          # save the attached .config to linux build tree
>>>>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
>>>>>
>>>>> If you fix the issue, kindly add following tag as appropriate
>>>>> Reported-by: kernel test robot <lkp@intel.com>
>>>>>
>>>>> All warnings (new ones prefixed by >>):
>>>>>
>>>>>>> drivers/video/fbdev/aty/atyfb_base.c:180:6: warning: no previous prototype for function 'aty_st_lcd' [-Wmissing-prototypes]
>>>>>     void aty_st_lcd(int index, u32 val, const struct atyfb_par *par)
>>>>>          ^
>>>>>     drivers/video/fbdev/aty/atyfb_base.c:180:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>>>>>     void aty_st_lcd(int index, u32 val, const struct atyfb_par *par)
>>>>>     ^
>>>>>     static
>>>>>>> drivers/video/fbdev/aty/atyfb_base.c:183:5: warning: no previous prototype for function 'aty_ld_lcd' [-Wmissing-prototypes]
>>>>>     u32 aty_ld_lcd(int index, const struct atyfb_par *par)
>>>>>         ^
>>>>>     drivers/video/fbdev/aty/atyfb_base.c:183:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>>>>>     u32 aty_ld_lcd(int index, const struct atyfb_par *par)
>>>>>     ^
>>>>>     static
>>>>>     2 warnings generated.
>>>>>
>>>>
>>>> These 2 functions are also used/usable (depending on CONFIG options) in
>>>> mach64_ct.c so they can't be static.
>>>>
>>>> AFAIK, we don't make functions have different qualifiers depending on
>>>> config options.
>>>
>>> Is there a shared header included by both mach64_ct.c and atyfb_base.c
>>> you could provide a declaration in, that way should the definition
>>> change we'd catch such a change in order to not break the callers?
>>>
>>
>> atyfb.h:
>>
>> #if defined(CONFIG_PMAC_BACKLIGHT) || defined (CONFIG_FB_ATY_GENERIC_LCD) || \
>> defined (CONFIG_FB_ATY_BACKLIGHT)
>> extern void aty_st_lcd(int index, u32 val, const struct atyfb_par *par);
>> extern u32 aty_ld_lcd(int index, const struct atyfb_par *par);
>> #endif
>>
>> so it's already there unless the .config did not include those #ifdef CONFIG_s.
>> I'll recheck that.
> 
> OK, none of those 3 kconfig symbols is set. I'll check again where the
> usage is.

I think I just need to make them always visible in atyfb.h.
I'll test that and then send a patch.


~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/99802c78-c809-2b02-b79e-c1fc7885e588%40infradead.org.
