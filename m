Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRWYYCCAMGQETILPTUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8CC371D27
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 19:00:55 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id y3-20020a1991430000b02901c713e7949esf3203116lfj.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 10:00:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620061255; cv=pass;
        d=google.com; s=arc-20160816;
        b=PbFkHmLifJqyZx/jhXtpwUUvi9AhGhWBjVPrnMYZIRWWofPuDe8sRJVKhhdvAEgdSm
         HBw3WTVLQ9Xj8pRJuhzoWpF2wWFxehfG8GY9BrXtFO1P7J8sIBrnClbjfRJ23meKTVYG
         XMWeGA7KwaJgGpz050tOtFKVG3Mt87FKkQuiQk1qnYb3V41BqoVIHjPHZt3tMtGriwcI
         OHkpEov9bE9mwa4dBNnmIJDcp+lXd4R5sds7ra7gC+2SeP22H8u/FToES71W/lDqV4MG
         QDb9awJtwHY2DJMJ/++9UHDlAydj4cdsMmW3GScpRMQr897BzKkUosiHbXNOrUJhH27U
         9WAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OTboi4hXD3JPP48xkv0/LTJGgu/KgE0pERBpaKs+oBA=;
        b=lBbYSxfUiucom23lPNlCyX21weQu0UAzM/2XUEQG36wAIC3p7y8uIa4EV6XBTv2cFv
         w7IkAwE9Qgf5M1KHzs+aMh08iE8AfFTiBHs58Wa/lL2bDlIs/BICg6Nyq8jt2PaHeew2
         HLo1jQPGkFqIko5feZJ27wXOoyKm1F1yeSwYCjGNEPSse2ZIyeYJ3vDCfxbD28ttMQQT
         Wv2vLekvl8oyLcWYsyOWHWoA4R1O2nRShmg1j2jFJIJmU0tsADxhxCynCMRX2uD2AnCT
         Obxz9fNzkVokLscApEPH9r46YB8FXkx8HpcMi6HZxMZ/SliNbZS9zlri1p6sfzMsPvpe
         hAvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p46kSkME;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OTboi4hXD3JPP48xkv0/LTJGgu/KgE0pERBpaKs+oBA=;
        b=e6p0ltnpKqUSogyhJR1idyVPs4dHokyvU/N/1Z+Bn+L6d+tDwDCE04gmA4XahOYoww
         WdlPgAYLthGKFzmuwMdsZzuB44iDR0d1YSUtbev3RQA4YhbdQr4zE2E2tTDR3Z4m6aYg
         c4pdfZPe929HH2/+yH64VgR4B6xax0yCpT4gwPO+fT8jzrZs4o4Sgfr4oPifFQO89nyV
         bvgx7a8sSY+mM7pX5bMHZn9YXYJXQDFWOtZPZgxzvEaeFo10aUpfeXw7PxPJIWCYOp7C
         NlzQ4+S0kPtM3BZ8Yzy00sQyeEcmxXSqTXJobVpRixZMJV5ZcaR7ZsL51BFAnHS3K2gb
         +r/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OTboi4hXD3JPP48xkv0/LTJGgu/KgE0pERBpaKs+oBA=;
        b=bdNmklaqxIoXf5sG5XimHoD+/YKS2QeWMWR9k8xvGap2M/7uc0AyG0x/yEIe1KyEcy
         b3ycScIdSKGnQ1LVg/Ua/gk0wq2aBqcT07rH3Ndd0bhlKBM1OgLoUfAx9M8bPpPGTWLV
         0QV6zUpZ3nkWVM6iRd66HTtLsP+odHFR81oyHn4G+RIEYWoIhBALFtX2hAjfJx9hP9ju
         wSn6NHjsyJX9maJXZIGgQ+bb1yR4ueD99Fzhh8dmmPHRILqSWqHheaHBr+sCtOnP7Htf
         n8SR8eRT0Cp/R+FcHMoa8mjvrJ7Jmeo8fdwPeHXMt9wkDBtmeJz07dDieJkoX0DguIZT
         sn0A==
X-Gm-Message-State: AOAM5316z4j0WyY4bzA1mhjHjjxTWFv4qyqPa3PBt3dMIIASaJIIIiSW
	PK1VQsxWFdUYi73h/35OFx8=
X-Google-Smtp-Source: ABdhPJw5zP+xikIa7xq76TXrb7cILS4GcvC9WuGkQVykgPecqwi9n2a+xGlWSQM/2a1+yYACIuxspg==
X-Received: by 2002:a05:6512:21af:: with SMTP id c15mr10562966lft.184.1620061255092;
        Mon, 03 May 2021 10:00:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls1059696lff.3.gmail; Mon, 03
 May 2021 10:00:54 -0700 (PDT)
X-Received: by 2002:a05:6512:3713:: with SMTP id z19mr11282097lfr.566.1620061254045;
        Mon, 03 May 2021 10:00:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620061254; cv=none;
        d=google.com; s=arc-20160816;
        b=XD5+HEIAcUWsZ1kNyjwFEV5n6u020b0K7cr1W8cPZmRUSTGDmuuvg/V2HO9eRx3zoc
         X9Gveo1HZCMxZKAd5BUIw/8JaD++TT7cTVOCZ7S3tTbIADkdBRVr5bf4KS0dEjmts4P5
         WtOaHKPfwP+P879TdFNqsb8sku7PJWsLKHMqohpe1djggkwXg2VfnqWnwBKZVfULlbzj
         CY7qVLBz0OFCDYNZmH/U7kFmWx8RJ82xKND8rzJVjHcfexXmxBrRnuidSLY0TUHWCgLn
         +hOXMtm5Ice1zOyUwnWQB6J77JmHLpNEsLL2vf9C0KO43sqIGdWdeVjBALUk2zfrnLDy
         U1NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bxJ/I6hQ/UIge7vBBXoiJ5gz7GFug3B6n2Lu955uxsE=;
        b=sSRO6npGm5aJWrsRlL1f6PZts5qT0HYXn92ZVb76AV6BGrnvNVmVz9zsRxxv8XFIPv
         NoI+86V4xTZf361QR3ur17JMyAU/F9ArV6WoSI/aMtYGCOcrkE3PH2aLaAmhXYS36lE2
         RFr6de4t11O5AILJh+oXaxGHLHEah4Orinhm2+N3kSMe2SAz5ndtQ8TAzqXHuXLKl9Y/
         WqLGfbs02bk2XJdc+uOmZycnTG+zoPiEB/NaoBZxurOkpYuqGuldO9wcrmC7KCuMlTZ7
         XKW76aNZDqFDtjuSpvoU8DHSuvOvPPQqlkQ30HBjzR58ZJs2cNpvGC5LhSh4PLpAlUiJ
         +IFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p46kSkME;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com. [2a00:1450:4864:20::236])
        by gmr-mx.google.com with ESMTPS id n10si1257lft.1.2021.05.03.10.00.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 May 2021 10:00:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) client-ip=2a00:1450:4864:20::236;
Received: by mail-lj1-x236.google.com with SMTP id a36so7618488ljq.8
        for <clang-built-linux@googlegroups.com>; Mon, 03 May 2021 10:00:54 -0700 (PDT)
X-Received: by 2002:a2e:8e3a:: with SMTP id r26mr6028326ljk.244.1620061253645;
 Mon, 03 May 2021 10:00:53 -0700 (PDT)
MIME-Version: 1.0
References: <202105030311.xWwkyV9z-lkp@intel.com> <CAK8P3a0ZdZY94KVwF-C_t+7rx=iHC60ty52AQAmc1VDZwsn9Rw@mail.gmail.com>
In-Reply-To: <CAK8P3a0ZdZY94KVwF-C_t+7rx=iHC60ty52AQAmc1VDZwsn9Rw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 3 May 2021 10:00:42 -0700
Message-ID: <CAKwvOdmCmvHNpyjNtNU1OeSzK_E_9n9T4CPiFGD7K_JuJDOj-w@mail.gmail.com>
Subject: Re: [stable:linux-5.4.y 5541/6083] ERROR: "__memcat_p"
 [drivers/hwtracing/stm/stm_core.ko] undefined!
To: Arnd Bergmann <arnd@arndb.de>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, Sasha Levin <sashal@kernel.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=p46kSkME;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236
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

On Mon, May 3, 2021 at 5:42 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Sun, May 2, 2021 at 9:28 PM kernel test robot <lkp@intel.com> wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git linux-5.4.y
> > head:   370636ffbb8695e6af549011ad91a048c8cab267
> > commit: 99f1960cae4f417d513be5ea55136383c2a58798 [5541/6083] stop_machine: mark helpers __always_inline
> > config: x86_64-randconfig-a002-20210502 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git/commit/?id=99f1960cae4f417d513be5ea55136383c2a58798
> >         git remote add stable https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git
> >         git fetch --no-tags stable linux-5.4.y
> >         git checkout 99f1960cae4f417d513be5ea55136383c2a58798
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> ERROR: "__memcat_p" [drivers/hwtracing/stm/stm_core.ko] undefined!
>
> I'm fairly sure this is unrelated to my patch, but I don't see what
> happened here.

It's unrelated to your patch. It was fixed in 5.7 by
7273ad2b08f8ac9563579d16a3cf528857b26f49 and a few other dependencies
according to https://github.com/ClangBuiltLinux/linux/issues/515.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmCmvHNpyjNtNU1OeSzK_E_9n9T4CPiFGD7K_JuJDOj-w%40mail.gmail.com.
