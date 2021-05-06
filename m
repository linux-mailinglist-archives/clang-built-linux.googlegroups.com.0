Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHH42CCAMGQES76JLFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C87375B61
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 21:06:05 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id h6-20020ac24d260000b02901c679f8f74csf1182313lfk.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 12:06:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620327964; cv=pass;
        d=google.com; s=arc-20160816;
        b=spJ4Sn5pQeG/amhoOGP/GUkJfwuGUvvJwqUV/eznM1ardrEypI3SPWL1z79hiu2Xgu
         NRsMErGaZP6cK5lbgeSV4WTHbLA+b/v0ftcU/TyyI1/4AFcMRrYGA9aZdSXH8VlEBDqX
         iLwueJlbQrQBDHvtaWkscq4HZbJiaL39B3WuaAN+0P/rPGkf4SsL1aWxePYSOC9IEl+h
         UmREcUmvd3YWFFHHYoIPwUuUhIbPP64UeoFDbvM9LEQoJpFnj17SDL4iDPHyIsH4vQIE
         mUHdbkZ/PWK5Cdm9MtQSNKNHSoSw0PQtcMz43v3Q4TN7+VVcp03+lPR1z634kY3nhpMc
         7wKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MjdXK+VA+EhPfCONHvINT8+gNT2UfPzwUpbybwFSTEc=;
        b=pTW155ZB4/4FVs+2k2jVwkMHZtLMnICh3kEdMm+5olMPqbxyav5cotHb3/UgTYt5BN
         SsyHMvY+mAvVRMYOUzjSqiFXbEpFq7HwZDxZZl796YkMQ/Kv+Xkt/9Pje+rASC0VA+LA
         /gaVyjH8E0lqN8AB5J0ywJOux3q41TM/V/zibrO1louo8YG+hZgPHjslmfau/GqXk0oT
         zklqwu7gh6GbDsdMZAnun6hl7kgtyFYRtZ/WIQd5/Nh3kCqyv42yhzGG8E+Ixr5rX43Z
         Ravaove/tTB64yfp9G6NRQUJaqwJCySGwWFGbdIx7Y2w7+l7uuT9qaFKQNWpeuMCcUmB
         up6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cv21ktlF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MjdXK+VA+EhPfCONHvINT8+gNT2UfPzwUpbybwFSTEc=;
        b=G2kObiaZeqUDdVdLuE0bZMkJfX5a9qxvymctuauwaMkmy7L2gosdI2jNWZS8LZi5Pv
         Ce8C9jQBZJgGzJLYfyR8/XYzA9yCKHQL43sJ262BSdnd9zqnZ4KdKXyVT0u4aibf+Huj
         5317OyeSx3ifTySN8/pepAqEWVz6jv1bMaPQUnEgegvjAmkcB70mwLjEq/Fra8Y3B835
         /7ZjogYIAK3RiCSGCq+A3Dr2SM1Pe8E6nhkgn171N8uFhLLc5UuYhxFE78zHyt8HAsn4
         b+PPsVI2ZHw1cgjyvmUuJFpIDhG2H8qfAKrE6lHglAGXpY8WUpd4AWc6zgIXaPepU/4N
         WGSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MjdXK+VA+EhPfCONHvINT8+gNT2UfPzwUpbybwFSTEc=;
        b=tUdLPE/bpUbKQDkzLa5dLU+EqkS2w2ppOZO37dkP4PbsWn+vgi3U8ee2B/G1HVCeGr
         OrdL5GFhIcBXBgoUpSGspfSiLrCBgWO16OE5BU9mWvNCA1o/QbpbRO1hkKrY4e/SaNe5
         wo1nu/b6gXDLk9xyAG9qE3urzEG1U9aMdyu07qhhUCu4NyJ/YTFoxd2PETlkAiB4arW7
         y0E1VVnKcpWtWipNACe0NYPB1hFrsvScWr5eycF1Js34IC6MM20Mi83NCeEMkeqfCUVV
         xPCs/svH3O2H6YM3SofYYnTfij8YYaEqQZYgY8V0unCfiZ2VpoeGtr93LAhA/4WRM5+6
         uBCg==
X-Gm-Message-State: AOAM533iS5Wb+SHd9WzPTFi+C4mg6XCKLOrRyj55iC/758tVBrs1+Byl
	4dGFn5CrfpmktEQW7Ij7OwU=
X-Google-Smtp-Source: ABdhPJyaoaBa3USsPNdHXkvMs6Y4XS2UHi/+/OcJqW1bftcYT4HQ2Ti8PnZM55K89LLdTjaUSS5hfw==
X-Received: by 2002:a2e:3803:: with SMTP id f3mr4772569lja.230.1620327964588;
        Thu, 06 May 2021 12:06:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf0f:: with SMTP id c15ls763826ljr.9.gmail; Thu, 06 May
 2021 12:06:03 -0700 (PDT)
X-Received: by 2002:a05:651c:513:: with SMTP id o19mr4721889ljp.291.1620327963510;
        Thu, 06 May 2021 12:06:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620327963; cv=none;
        d=google.com; s=arc-20160816;
        b=riJpWJxdBHLm9PDMPLMLWo+2/fdyLwQOwlZuAkzeWKLJJqAm+3ol8U+N4HJGHnGnwg
         BMhd3iAUghyQi2MPu/9jmS1kI8Cd7qvRV55RxLZTfgSEAF+zGxjv00WAkhWkVzZRz+aV
         RayaEsj9xRBe5eLxPvdOIqhJ1BIKazEwtsTwf+a0pIVCsZDqXuAdduasX/usyDXjbGZ5
         qYMgl17YQUNGHR7VBJblfzIPkYx3PhHd4BpX9WEFGvDoYSEAGaGkmCw2ghuWhz7iXtLO
         VHan8UMauS+FpHWNTnSwKoLQD59UXX+kddkVRiqDDNjn4zF3MQ0v1Mc9J2rt5GzijaSv
         fXVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/NdQibKnHEdQUK2PlGMLKqJjV1Iooerno1oueN2ggmw=;
        b=p8szh7xFwH3hWDR0O077IRQnr0EqbWzjQti/ZDPdVzsQy/AC5i3FzG3jbLI/PbJmCF
         A2tpd7g46SomfnqnCcl4vEH6OhQbMVPJr4dRRdaoErxML/ogfNhEoHGTiOrqct54ABXQ
         Umvk0TB9oHT8oNd0++TInqZ35pcdi1Ie293r4KvUyU8xJMHP8pB5BeMtXtKj/t9vkqaX
         NMjGHzV6B8ON9BJ3Ghcx6VQ0YY8xMKPC5Y85n/q8fBmtR1Zn28YGctYAbRzWOF7qYpgI
         4RoI4c6DjT3d23x3h+xO4awcs3OvUr5le1mUBsViLmnQLBtOHEuVscWH+2u44DuoQvme
         3TDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cv21ktlF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id a10si130396lfs.11.2021.05.06.12.06.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 12:06:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Received: by mail-lf1-x134.google.com with SMTP id n138so9330264lfa.3
        for <clang-built-linux@googlegroups.com>; Thu, 06 May 2021 12:06:03 -0700 (PDT)
X-Received: by 2002:ac2:528d:: with SMTP id q13mr4114753lfm.73.1620327963078;
 Thu, 06 May 2021 12:06:03 -0700 (PDT)
MIME-Version: 1.0
References: <202105010813.KwuE0a5t-lkp@intel.com>
In-Reply-To: <202105010813.KwuE0a5t-lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 6 May 2021 12:05:51 -0700
Message-ID: <CAKwvOdnQ+hiGxfsG5VeJO4qGqfRPvf=Mp7TRgjKzZnTspZjntA@mail.gmail.com>
Subject: Re: arm-linux-gnueabi-ld: warning: orphan section `__cpuidle_method_of_table'
 from `arch/arm/mach-omap2/pm33xx-core.o' being placed in section `__cpuidle_method_of_table'
To: Kees Cook <keescook@chromium.org>
Cc: kbuild-all@lists.01.org, LKML <linux-kernel@vger.kernel.org>, 
	Ingo Molnar <mingo@kernel.org>, kernel test robot <lkp@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cv21ktlF;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134
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

On Fri, Apr 30, 2021 at 5:11 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Kees,
>
> FYI, the error/warning still remains.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   65ec0a7d24913b146cd1500d759b8c340319d55e
> commit: 5a17850e251a55bba6d65aefbfeacfa9888cd2cd arm/build: Warn on orphan section placement
> date:   8 months ago
> config: arm-randconfig-r024-20210501 (attached as .config)
> compiler: arm-linux-gnueabi-gcc (GCC) 9.3.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5a17850e251a55bba6d65aefbfeacfa9888cd2cd
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 5a17850e251a55bba6d65aefbfeacfa9888cd2cd
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross W=1 ARCH=arm
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> arm-linux-gnueabi-ld: warning: orphan section `__cpuidle_method_of_table' from `arch/arm/mach-omap2/pm33xx-core.o' being placed in section `__cpuidle_method_of_table'
> >> arm-linux-gnueabi-ld: warning: orphan section `__cpuidle_method_of_table' from `arch/arm/mach-omap2/pm33xx-core.o' being placed in section `__cpuidle_method_of_table'
> >> arm-linux-gnueabi-ld: warning: orphan section `__cpuidle_method_of_table' from `arch/arm/mach-omap2/pm33xx-core.o' being placed in section `__cpuidle_method_of_table'

Filed: https://github.com/ClangBuiltLinux/linux/issues/1372 (though
this isn't specific to clang).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnQ%2BhiGxfsG5VeJO4qGqfRPvf%3DMp7TRgjKzZnTspZjntA%40mail.gmail.com.
