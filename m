Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRHN5H3AKGQEQQRONTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6381EFE2C
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 18:45:57 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id y16sf7907337pfe.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 09:45:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591375556; cv=pass;
        d=google.com; s=arc-20160816;
        b=KjzdOXBE6PmV6N+GvoG/e2Y7TTJxVGX7mWFGKKLgc9Ax+e9VUl6zaYcdhh4e/SUMRT
         399GRWL3Vtrm0+2bZaLmS7CpojF892scPcv4LiYXFYrtrSVLWfX9Sfw6OPpZBlYarYor
         XmEaE3vO5Ukjz9RqVpTX4MCEkxZbWCHryTNke6FH35TlAR0qDOFxk3YIpxu2SwPAS+NQ
         Gdxy4+3iTjPWb8nudpt3Xm82RHfrv9Q6YJ6lHe5p1xU4uN1xdQQ8IUrAzVvrW09MnxQQ
         Q6+p1mxmKyyiEyAt2XPlqDOfXMnoNkszeeA4rIG97/4HhtdgCigoSr5fi/LEkU7gg7qI
         3PDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pvhtewOSV2y4OYgJDFlxAOAI7OxXaBXLxhDocfUnm9o=;
        b=m1WcujfKAtQg36JcWeFBCGW56tIoyAdeDeIprUT7jeTKWho1CAVOWOWleJPwLJIslO
         YoSwwUGlpb5td+kYxfaIIZgvmw5BthWnJO0QUR5XnkZMbtLRx7tqLRSqyBtS2y6odFTJ
         k5BMFB6Cyt3qV8QY9LECVYvAqvX/7CX+9E0YVqkY4Jat4zRTVBhgkNHlYLBQCQ/lf7Hv
         isqjRwaRjlwcmtg9k8YH0nTz60lXe1dcCgNzQQDTvkpvVmzcWK6h4ui2rJzS0PfD3a3K
         ihpB48wjreZFZxijnOljtL/KTzlQYQ1ngbpzunvWA6D23pHGADAXEne27Re/vv8OHFdf
         lDeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Yugvd6VF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pvhtewOSV2y4OYgJDFlxAOAI7OxXaBXLxhDocfUnm9o=;
        b=kW809Qzg1jos4ZYpFG8iBQje5WCqjzqNH6/tpWZptHEyVD7HeWzR0j1kCUuDgUIyXC
         4VjzhSDlKFU+8RgX/g2wfdNji6aP61Hs1tYaw6pUDfwPitvkRMMn5wp3FE2uWdu3VzRU
         6i7FkbiuZZz/kawfi6jItEoOdGXzYgvsCkVRdNY4v5sUDmgqLV/KkBshskxvqRl7zZkx
         mApuxuDwu8i/VpAGuafOLUUmAYouj8aqrpt7mrbIck8+t4NfLR8yh96JX8awcMF3YJn+
         FRoM5lq2zmVswWmFtDqz3nNTLqzq69Z1A7CqruT4jS025nTrCU181zKen3u/EtJ+24mv
         H3lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pvhtewOSV2y4OYgJDFlxAOAI7OxXaBXLxhDocfUnm9o=;
        b=rPhoc8ILiQitVn3mThci2ybodVFu44VgUAbUE9UB1chNpRBRI425IIj3zT4lh8xMz2
         U5S6KHMj6L/CVynDlF4xeE0A0x0273nObrP2e0Drr7/BvlLQLk+XMzJ+kW0wVpf5CkYV
         Gixo67Wj+SiGnllxz/Lwcrr9fVVXHrYKAL7U0NKpOsdafIRBvPV0rAxMQMZ6K3nJ740A
         o/AcJ8ybs04pS19WDtz15Cu05rLUV8XbpQCt1hqsX1tNeT0g+70TEf17Ih+bjaVo7fJO
         eftji4vAolGqeM0GI/7rGnELMU64uxSX3aZdKiiLhHI5Wle31oD7/HgqbdPIkgyTVZG3
         idvw==
X-Gm-Message-State: AOAM530sMuecUlY+hRxBg1KiAuLU5jOUbRl4qHBCzMd5yDuGBAYnwuEy
	9B20O2gVJObo4yNjp5Cuvr4=
X-Google-Smtp-Source: ABdhPJz45ZrlXSX8HOxVAfe4Xkktl0iQykrNzpyniSmRcNS8zmTg2ntawqM05hThUy8vkFcIyLxI9w==
X-Received: by 2002:a17:90b:30d8:: with SMTP id hi24mr4108498pjb.78.1591375556258;
        Fri, 05 Jun 2020 09:45:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7143:: with SMTP id g3ls4383084pjs.1.gmail; Fri, 05
 Jun 2020 09:45:55 -0700 (PDT)
X-Received: by 2002:a17:90a:20c2:: with SMTP id f60mr4209542pjg.29.1591375555891;
        Fri, 05 Jun 2020 09:45:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591375555; cv=none;
        d=google.com; s=arc-20160816;
        b=wxjXwoGJ4JnJXK1e5zmxTCRydbihUcWszO031VZJBuBMVn2vT1ngEP8N/ULnR4/+Hw
         RNQ5Sc49Z9aO8p7VIBtS5DFz38ZGlQ1RUY73nylBWCJ/CeK9fbPK7cDC1HdZOkV/s/+B
         I22ueCsRFlYrTHNBsBp5Cf2vnzKPHcH81bErUcrNfJb4IFawkwZp83w8UCsQ/CaXCWqA
         dSAOAhbZUh2q+fWNft6RDqSfTRbEfG4OtRTC47/TUT0jH5vkx2syPhBe9nePaGgBXLBq
         PQ9stXJQD2CnBWb7ym4U1iS9dR5rLUjksqa76uEgCpdvz5KwYsYKO3myUwB6z9gQe+Ep
         TLCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=S7xS4af/gOGfuhZ4Zdqv+jXOd8ZOfkOlCILXhBQbbH4=;
        b=YG/z5NL4b40AdzJMNwq6zGyD6sHsJ6RtOhuMKYtXNvFi8KKpZJ1y5qfpTUN0poU5a8
         d92VueBLZZpC2YzqqDjeqHQFp7MGtt59IuGYBl4n+zmr7F+W1UYvjrGD6eaIk2eF1+C2
         KZusA4cio7SFeYvWi5l/h6hi1AOhAnRRmOCjIpuxafDufW9lE6Kuqm+PT7svpDHcG2hN
         26Gql0GPmGqZZ+f9jivOiK84xDm0PcY1amNhVLKeYObB3LIwQnAl/Vz9ZYZWTBZzObKm
         HXNR65iK+7G33e49LNikjW5FtZW94OHXXpiQG1YiV/xBk/k/g3MqvL6MECSm4EGR2PRy
         dDGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Yugvd6VF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id l22si11090pgt.3.2020.06.05.09.45.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2020 09:45:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id ne5so375803pjb.5
        for <clang-built-linux@googlegroups.com>; Fri, 05 Jun 2020 09:45:55 -0700 (PDT)
X-Received: by 2002:a17:90b:949:: with SMTP id dw9mr3275416pjb.101.1591375555254;
 Fri, 05 Jun 2020 09:45:55 -0700 (PDT)
MIME-Version: 1.0
References: <202006051725.63EW72i7%lkp@intel.com> <20200605145546.GA227721@google.com>
 <20200605160830.GB1373@sol.localdomain>
In-Reply-To: <20200605160830.GB1373@sol.localdomain>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Jun 2020 09:45:43 -0700
Message-ID: <CAKwvOdm1Ew1dBVcmxDHtKWp383Dsrxjhaweek=-LDomfKnj7Qg@mail.gmail.com>
Subject: Re: [f2fs-dev] [f2fs:dev-test 48/48] fs/f2fs/super.c:3303:12:
 warning: stack frame size of 2064 bytes in function 'f2fs_fill_super'
To: Eric Biggers <ebiggers@kernel.org>
Cc: Jaegeuk Kim <jaegeuk@kernel.org>, kernel test robot <lkp@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	linux-f2fs-devel@lists.sourceforge.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Yugvd6VF;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Fri, Jun 5, 2020 at 9:08 AM Eric Biggers <ebiggers@kernel.org> wrote:
>
> On Fri, Jun 05, 2020 at 07:55:46AM -0700, Jaegeuk Kim wrote:
> > Eric,
> >
> > Could you PTAL?
> >
> > On 06/05, kernel test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/f2fs.git dev-test
> > > head:   adf3d3a53cf13d0998c699ba43d8582c875179e3
> > > commit: adf3d3a53cf13d0998c699ba43d8582c875179e3 [48/48] f2fs: don't return vmalloc() memory from f2fs_kmalloc()
> > > config: powerpc64-randconfig-r011-20200605 (attached as .config)
> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project ac47588bc4ff5927a01ed6fcd269ce86aba52a7c)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install powerpc64 cross compiling tool for clang build
> > >         # apt-get install binutils-powerpc64-linux-gnu
> > >         git checkout adf3d3a53cf13d0998c699ba43d8582c875179e3
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
>
> I don't know what's causing this.  It doesn't look at all related to my commit,
> and I don't see what's using so much stack in f2fs_fill_super().
>
> @kernel test robot: the directions given above don't actually work.
> First I got an error due to powerpc64-linux-gnu-elfedit not existing.
> So I had to build binutils for powerpc64 myself.
>
> Then I still got an error:
>
>         make: *** No rule to make target 'arch/powerpc64/Makefile'.  Stop.

If you have the config, then
$ ARCH=powerpc CROSS_COMPILE=powerpc64-linux-gnu- make CC=clang -j71
If you recompile with CONFIG_DEBUG_INFO, you can get the stack frame
information. I wrote a tool to parse this for these cryptic warnings.
https://github.com/ClangBuiltLinux/frame-larger-than

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm1Ew1dBVcmxDHtKWp383Dsrxjhaweek%3D-LDomfKnj7Qg%40mail.gmail.com.
