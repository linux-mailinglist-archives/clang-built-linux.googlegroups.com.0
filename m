Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6N32WAQMGQEOE3DPFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC253231AB
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 20:56:41 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id s18sf14409348ljp.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 11:56:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614110201; cv=pass;
        d=google.com; s=arc-20160816;
        b=h7unc6F78QzoahbrphYvOy0Sm6yvjDiYiFb577Gufn8u/yDJrgJGM1ULzEAouq9KWP
         T0BcACuvEQ06x9MfTqQJyUtcpYyBUKl6rEuwhvaK7r/ZnGzmq8hyUjQFtZ8fr5Z8tXzL
         JM+cRdAWKxCle4VWrlXtqIFrTtLLGSOu6ek6k51+T0D/eA+rgIdMIQGhAQBdfWY2uYab
         OgaB8balkn0zlAjxTQyJ92mqaeK+G/09Txe5mr+iTvjKscqJzblNXUVe5KxwgUh7unP/
         grNyi5CXt/x8XJy7MACdAR/GobQViT97UEUZjU7sqhtWFYbj2/dDOxOzMwwGwvyT/DXr
         CMbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OSdNRgqmVLCvWfqxlyHescgok0MfCqlzcGLNt75iwrw=;
        b=A5X/3ha0E08Ty5LQ4fbaxVEzdc4s/pTahfZlVcqvGBM4YoCRr3o8umxsk1tF2E6trJ
         /vfsdfrzZ8E/ngK510mBS3Do40Xx/yx2ByXdg8TTwHNgq2bRNal9EOPc/1q2AL6nHwYz
         nEkbCwCSlj2Be48XSfuT+5HikBx+YDcTlQTOn+EGfhU2GbjEqN2r9uLYrViQ/ojlQPog
         HLFUvC4LmVPsRBXXhEOUtyWYEpIyAayiPwo58RmhN2aHtwKXEKmbFLgBHv2pvwEr8zzX
         aaAkhesVwfRRZGS2w3CIKClu42sFupQCRomZSJrYKxJu4m1sumIasXp7wPe7FQn1FcWi
         AyMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=engQRC2w;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OSdNRgqmVLCvWfqxlyHescgok0MfCqlzcGLNt75iwrw=;
        b=MTDWZeMmxWCb//zPm3rR+APrPvUx1QfvzTbKtBon99LkeZr9bYCFbez++6nErIFJaH
         LrHtL/jsfuKgSgvrI0ZKts7xL4fFeuvHsK+F7h1s2/9d2Jpuhh2OrqPZ2VxKjuB6fxkE
         SR6OytUUMHDbYNXRo8F/wLNFD/RrsV7MsugantOgXpGopJBTDFf/UXD3pTCtuvmTvcPX
         X//Aq7YdK3cykOu0Cflz44JpGnBTqon4AfPZVG8KyD9+Gok6UcYpsIlHng9NVbC/ZCUE
         Lv+LRaiZPpKLZGMLmIB90/XRo/5ABOoz9SWDiKG6//Q/RMmQi0IMjc8yPd/jdTLQ8D2V
         zF7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OSdNRgqmVLCvWfqxlyHescgok0MfCqlzcGLNt75iwrw=;
        b=Q6J/D/0oc9u7MjfTjHSfPuyaz3iIyVRr9rf789rKmFMCCgv72479po5GMcHTraSaqB
         aNmGRqdGtzkt0EtxpxXYB4dgq/UkU/BdY7Wpp/nJrppOfdGvsbC4K/9TEBYDsjQ2Ihq2
         rKmYvBpzoRrC8YlTDw4tjpg4Gx4eHkNoYNRn+crLxARpx6vJ2MiM2CW5X9gDqklOKXpu
         31whs8b1pGHa2+/Y6+SYV63xiKelajZ91t9fI5G3OMjGR6W1FQyOzxhabfko8PRCzLAm
         MYL3ZpXhCXCtaDqN917LTGSRWbTRviI7TWoehv0q7etBKhxJSYWihqJvCj9hGsQe2+OC
         pFIA==
X-Gm-Message-State: AOAM530v0u7zifYHC1qR7Xnw5mh+SQaxpy9G4fzGfW3UH1AG50/pvuMU
	q848fWrLCbL4xXvmZ0h8Z9A=
X-Google-Smtp-Source: ABdhPJySwo9DovK+iGE0JRSHPnQVFRJkVqtNE8zG/oSQyNBblSqZ+jrS6Cip/hwrkIX/fjgmebNXJA==
X-Received: by 2002:a05:6512:12c2:: with SMTP id p2mr16821119lfg.339.1614110201448;
        Tue, 23 Feb 2021 11:56:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:2a84:: with SMTP id q126ls791906ljq.8.gmail; Tue, 23 Feb
 2021 11:56:40 -0800 (PST)
X-Received: by 2002:a05:651c:513:: with SMTP id o19mr18508310ljp.68.1614110200525;
        Tue, 23 Feb 2021 11:56:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614110200; cv=none;
        d=google.com; s=arc-20160816;
        b=AxY+U6Dm9PKJ4uJPVlbhrq3lvatFqmoO58QI4fllShwBgIsh9k3Wm0eFw0mB3w3/+R
         GPqPhoW5qLXYPhRq91cL7LLyLpRJfd5le7qo5tr88pwBBft73dz0gTxPKiha5kl3wB+L
         wuvEJVvbYbPpihcxeQXUTNcguLheXftSLAHKa8vq6cL2ZEcjBWGG0mfR1HmCiFVAa71j
         RByyhyutGDgBJW7WRE1vtPIyDp0WLsKEV8G51AraJjh5zCrcaUT9imXwQ1IMZaqlFvAo
         4NmKQ5brNwjTv6/NP9HdfzwoCVOsreIRHm60X2N0l3nmQn8v5rYPt/y0o4x5URn3+oDx
         /gWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RKIeQDdno260XDjLO0s3XwvHiwIe7NNi5S4HPc73sDY=;
        b=pZ6rLU3yfEox8wmr1TRq1yTwv09QVThicrrkVadk6IAe7wNSVp8sgvWR3XOcQ7DACp
         wsMx2W50bkDhUOLuZxdJ5ldjF+dpsHjZX9Db+DB4tNyhxoirxktCnteVhkrlC2EiXLeU
         4dS9dTi+mEJMYo3AXJ1+xZwTg/Ic7kriJBT26sukzt1iJ+UfMEoR3QFGYjN3EIVsC59Q
         LgxfIb7fvphlLXnNGNv9MedpwsDRJRL9YM2X5GwsvlZ6XxzadeNObwQNk/vN0ow/RoiR
         pDQUcx76ONgynhmHY7SVGDrMQtje4aBZOqUkYyfoFHOyeA7Kf1VPCO3JCUIk8BCCW78F
         b7FQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=engQRC2w;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id d5si1080703lfs.11.2021.02.23.11.56.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Feb 2021 11:56:40 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id o16so59920026ljj.11
        for <clang-built-linux@googlegroups.com>; Tue, 23 Feb 2021 11:56:40 -0800 (PST)
X-Received: by 2002:a2e:8357:: with SMTP id l23mr2679418ljh.116.1614110200101;
 Tue, 23 Feb 2021 11:56:40 -0800 (PST)
MIME-Version: 1.0
References: <202102151855.H817KoOF-lkp@intel.com>
In-Reply-To: <202102151855.H817KoOF-lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 23 Feb 2021 11:56:29 -0800
Message-ID: <CAKwvOdmqso8SmPeZ4tOLP-wFSbkkDAthG1vt6k045_C0JoU4Rg@mail.gmail.com>
Subject: Re: [linux-stable-rc:linux-5.4.y 2231/4843] ERROR: "__memcat_p" undefined!
To: Nathan Chancellor <nathan@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, kernel test robot <lkp@intel.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=engQRC2w;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b
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

On Mon, Feb 15, 2021 at 2:49 AM kernel test robot <lkp@intel.com> wrote:
>
> Hi Nick,
>
> First bad commit (maybe != root cause):
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.4.y
> head:   642aa3284e09f63bf1d4832798dd787b4320ca64
> commit: f05f667f8764f9ec834ca3e412ed7f5a20dea3bf [2231/4843] lib/string.c: implement stpcpy
> config: x86_64-randconfig-a005-20210215 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=f05f667f8764f9ec834ca3e412ed7f5a20dea3bf
>         git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
>         git fetch --no-tags linux-stable-rc linux-5.4.y
>         git checkout f05f667f8764f9ec834ca3e412ed7f5a20dea3bf
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> ERROR: "__memcat_p" [drivers/hwtracing/stm/stm_core.ko] undefined!

This error is unrelated to the referenced commit, but we did fix this
error finally in 5.7:
https://github.com/ClangBuiltLinux/linux/issues/515. This is not a
regression, but something that never worked with LLD until 5.7.

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7273ad2b08f8ac9563579d16a3cf528857b26f49
looks like the commit of interest, though I seem to have left a
comment implying there were dependencies:
https://github.com/ClangBuiltLinux/linux/issues/515#issuecomment-612999929
(I no longer recall what they were).

Some other commits in tree reference that bug from the issue tracker.
https://github.com/0day-ci/linux/commit/0cf9baa2dbb8ca29f30ac8a1afb69de51f222d17
https://github.com/0day-ci/linux/commit/565508bb949dd72638b52522fb6ac6ec04ec57fc
https://github.com/0day-ci/linux/commit/0d0537aa772566473bd5310be3874060cbff8672

Not sure whether all 4 of the above worth backporting to 4.4.y?
Thoughts? (Perhaps these would allow us to add x86_64 allmodconfig CI
coverage with LLD for 4.4.y)

>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmqso8SmPeZ4tOLP-wFSbkkDAthG1vt6k045_C0JoU4Rg%40mail.gmail.com.
