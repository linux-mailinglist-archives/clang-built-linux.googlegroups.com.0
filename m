Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6U67H7QKGQE62YWPEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id DA31A2F4147
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 02:40:11 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id 24sf461395pgt.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 17:40:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610502010; cv=pass;
        d=google.com; s=arc-20160816;
        b=JHjtvA8iJ+bc9mJ4s/2IwoKBymQc/Bxj1F995BBYcVkzDfeo6Q7SgBIXo9bhjHEGol
         7/+cxrFU1IzQBjX95xUBTwFEmIcddPrAGJWpFi47h4kIaJmZbllHqzITk4IXZJvr8b0L
         e4h+7AcKLiqR1H84DnPbEOD6cNTNF9rG5lBOgUofEjOCjpdyZ9keiTiT6wO0ZjV2zZbc
         lEnrSJvRd+s58Zxa4aDQhnsaN/e4ebALbXyITEYuXzeCZGBq0wtvh5mPu107qPu5uHD0
         fDi2Tnv8iCEldm9rbRo9K9g76k0I5qt2ZVrrEYMwkP1z4xXB7XdvOLzXKYQh/GBo0crd
         dGrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=lBM8hnJaaoEnKGniUCWS4sd+FFduS+ddn63GFEsITqs=;
        b=eM+uZs9id94OZYbVqYy1qYYSD3viVvAabpvbf2WxajoJjvx+Qr99wAsdsaX1o2fjNv
         Oyt98dITx/aUy+Fo1GYREAT+21E2VE92+ir7uvqTbm0VxowhCIhAaPygaTHEYVLsPPSu
         KHeooXGe/vus1TTkpry1XvzZZt3LnHsdo+mHkCU3M4wvipae5tTIy7iesPIVZHGqrj2+
         xrguY2fXv0+msFhkD5OcnWq7eqCxiO7c9MpH4ClhszBjpsoahNO0U1d13yQ3kfvvLe7c
         +KlOvckB0hH0Sb8t4pYJ5rRLBUojGHDCDgj5CJYcOQTgWIk6Kl17AzeQTYHPGPv4jxPi
         y8Gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bmfJtT5A;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lBM8hnJaaoEnKGniUCWS4sd+FFduS+ddn63GFEsITqs=;
        b=s7VfERcawWTXy2A89oKG2pqaBFMR9QmFraVGbYJimAl7pqoRKgYDrC7btl0tLU/KQd
         wx8QHjwYe5rFSvysvAPigVE6+LXsZ2oaRaUwD7NGC2JgQ6rrojg8+FCd3ShEXLjk/Vn4
         STLVVoWTN/WNNSL92cY/eE1DKJHnv/g9UtFQ8XjYOOLN87AWCx9qT1H9WOFSI7NSJyp9
         7g8dnuYyLrjmAX2kxxlMYh7T+GbUy0W2r01Y6XafSRurhwphISEpafqLCoE0xjgnF/EO
         yv2O7DP3UibXYYsklpGgqL6oDez6Jzwiwqn92pt22CrRln+WEXHMlJhKAVcJXfyLGAOH
         ut4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lBM8hnJaaoEnKGniUCWS4sd+FFduS+ddn63GFEsITqs=;
        b=n+FFwxjXdZrfr4oUoSCCC2T5TohYvB8TTcL6HeJqk+anmTSdXA/0viDcNV3JEfhzU9
         E/zHXZD0+zoYiZzgWP1jYHgDM3JPetu3pHUjPE7YoK4HsKX11KI2bZYUJjALNV44brub
         Liqv7FQ5RN2bY0jujJw0ZjiJQleeeH1cQTw/qScBpq9DUoUIfn6eS6JKrGJn5QUOH94l
         sss0lEAC+AONL9of7JQM+FpwfVQSyfcfTXkIlWiEu7WXSgWvzAs/30lR8os07NjIhvcX
         WDWG/mkCw0+Vih/DWRZdXuxiNqYfMqnBWuO9XF8N2+4qPBU45B1YGToAznpUZo3FIdL+
         nvOw==
X-Gm-Message-State: AOAM531do7M2geyp8brHbx/frfjNj+XG0DD2GLnCjp8yJ3Xa0xLKi2kk
	uJ+cDpibB4U1p3vIWN921Bo=
X-Google-Smtp-Source: ABdhPJyG3gv27l7GnMTQmSTvowVzC4yJ4qgRxjTifwlBddF50kTrRaYolmuit96NeqPVyPxh32CrGw==
X-Received: by 2002:a63:a13:: with SMTP id 19mr1875959pgk.103.1610502010608;
        Tue, 12 Jan 2021 17:40:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5803:: with SMTP id m3ls246950pgb.3.gmail; Tue, 12 Jan
 2021 17:40:09 -0800 (PST)
X-Received: by 2002:a63:924f:: with SMTP id s15mr1908576pgn.360.1610502009652;
        Tue, 12 Jan 2021 17:40:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610502009; cv=none;
        d=google.com; s=arc-20160816;
        b=0OnYmSakRuaFb7Nga1YILyl9QUDsrA46ob7pSQlMu/wJJ3kBeSqrZHtOlupy3zsIg8
         caiFV2Y3vNbmEatFpAbes1mUbdBQg5qSUkgtC6hxkJlPz3CaTb0G6dKMHai6WeYN8qA4
         ddDMHhFKuvxRB+v1k2gwMR8VSxeBQa330hNW9rhxAm+94hcTOCjKUf5fShKY1ZSjI9qf
         BHMC7eaH1zcQInFlCIE4ZuPIuysXsoc2ZYxgzWDcP3dNp/OG1+03wqIoQXc9Qmn2IRAE
         UF470AnMc5N1/PEC6evb3YtZxwJw4u0ohRng1R6EJwCuLsZLZ4V9FjON9QtNu6UrMMDo
         Tb8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=I0c6HHoktXki3GZbMqs3WroLaVoqrCxFNA0EKtNCuyI=;
        b=Pd3g0pgh8JiCxy6aiHiIuYgEPX07Uetu2VPcjbvUxYwFfiWtCtdGfydYybiCuaE81Z
         ls0/XzTmsXyc4Pm0VqkVYqrf+lAcQTAUmhxn5uq5mS9MKg+KZyaPIKSOohMFM4XSvWJ8
         c7n6zfUCYRR4LcCjC0I08TmVPPyBB3i6tYYVwtEOi/WWHPSf/3pxZ+qUg5G8QgRDvmpK
         ueTyS2ltG6EqpxeyTusE9rGUX+9SzUytIWognb9wMOrnzuBmbkiUP6EW34yLyJ/bGu7D
         ouHV4EZ5iU1hYA3pplvgc7f4CaA3RhG347rsPXKFQJGCRuvz2KW5FeG8kzXs3OjfHKTf
         1TJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bmfJtT5A;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id r2si23890pls.2.2021.01.12.17.40.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 17:40:09 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id m6so236621pfm.6
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 17:40:09 -0800 (PST)
X-Received: by 2002:a63:1142:: with SMTP id 2mr1905914pgr.263.1610502009086;
 Tue, 12 Jan 2021 17:40:09 -0800 (PST)
MIME-Version: 1.0
References: <20210112205542.1375847-1-natechancellor@gmail.com>
 <202101130859.JSORPQUn-lkp@intel.com> <20210113013130.GA3446359@ubuntu-m3-large-x86>
In-Reply-To: <20210113013130.GA3446359@ubuntu-m3-large-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 12 Jan 2021 17:39:57 -0800
Message-ID: <CAKwvOdnx99YTGhP-mH-9E6YTLLUfauuteFtqZSeXLv5Vy+XowA@mail.gmail.com>
Subject: Re: [PATCH] ubsan: Implement __ubsan_handle_alignment_assumption
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kernel test robot <lkp@intel.com>, Kees Cook <keescook@chromium.org>, 
	Andrew Morton <akpm@linux-foundation.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bmfJtT5A;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Jan 12, 2021 at 5:31 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Wed, Jan 13, 2021 at 08:39:52AM +0800, kernel test robot wrote:
> > Hi Nathan,
> >
> > I love your patch! Perhaps something to improve:
> >
> > [auto build test WARNING on 7c53f6b671f4aba70ff15e1b05148b10d58c2837]
> >
> > url:    https://github.com/0day-ci/linux/commits/Nathan-Chancellor/ubsan-Implement-__ubsan_handle_alignment_assumption/20210113-055714
> > base:    7c53f6b671f4aba70ff15e1b05148b10d58c2837
> > config: arm64-randconfig-r031-20210112 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 32bcfcda4e28375e5a85268d2acfabcfcc011abf)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm64 cross compiling tool for clang build
> >         # apt-get install binutils-aarch64-linux-gnu
> >         # https://github.com/0day-ci/linux/commit/775adad26a60878926c0ee6cd460a1375bbe51e6
> >         git remote add linux-review https://github.com/0day-ci/linux
> >         git fetch --no-tags linux-review Nathan-Chancellor/ubsan-Implement-__ubsan_handle_alignment_assumption/20210113-055714
> >         git checkout 775adad26a60878926c0ee6cd460a1375bbe51e6
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >    lib/ubsan.c:192:6: warning: no previous prototype for function '__ubsan_handle_add_overflow' [-Wmissing-prototypes]
> >    void __ubsan_handle_add_overflow(void *data,
> >         ^
> >    lib/ubsan.c:192:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> >    void __ubsan_handle_add_overflow(void *data,
> >    ^
> >    static
> >    lib/ubsan.c:200:6: warning: no previous prototype for function '__ubsan_handle_sub_overflow' [-Wmissing-prototypes]
> >    void __ubsan_handle_sub_overflow(void *data,
> >         ^
> >    lib/ubsan.c:200:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> >    void __ubsan_handle_sub_overflow(void *data,
> >    ^
>
> Given that these are compiler inserted functions, there is not much of a
> point to having prototypes to them. If people feel shutting these
> warnings up is worthwhile, we can just add the prototypes right above
> the function definition in a follow up patch.

Same as stpcpy; it would be nice though. ;)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnx99YTGhP-mH-9E6YTLLUfauuteFtqZSeXLv5Vy%2BXowA%40mail.gmail.com.
