Return-Path: <clang-built-linux+bncBCRZD2XX6EEBBGE75KCAMGQEGXPFZCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE6237A87E
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 16:07:22 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id l33-20020a4a94e40000b02901e649bf6733sf9231342ooi.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 07:07:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620742040; cv=pass;
        d=google.com; s=arc-20160816;
        b=gECm/bFUxnNm68iuX1m8tclzJssEDc280BuH2b6YHSVUCBb7trbAAjTq5Id4IDWOhO
         eCDYKaJ4uuoquzLmVW/6hpI0ao8wvV9gKNSSKRbLmELSK2oLmNY3dZwTGT9g7bFx93SQ
         hMbeJa84EZh4+L039Lt/6sXN+TcIrtS/hAjSG79iArTM5qFlQ/iL6+3TFZ2SDM6OoNI1
         /l0iUO5ZHJaw4xDi78Cl7QuWlOrL6wNT40JnOMuPzuAyNy1cIXctjx9Or4RdthrEtW7J
         bCnuYOSGIrnNcWrRyw0Nd66V3hp/LwNIEvzg4b1csDC8Zc8otC1cDanPErnIKoifnl6f
         cFwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=oTpkHb5Mm5vbwfJFZT87TKSi2TRdPrdYmG7YtNwzgYQ=;
        b=SFMzGFjViB8Ca2xeZJxW2r6rdcZuSJIQtQvu09td9+fIqzJNHGsCzgvW/yZAMFSqH4
         79gJT302JXD7AgAoSTqg3ipm5ihsPHUtRv7QuACYj8xp2HMs8f62g05+DeP1xj/Tv1M5
         tV3ICc0aRvNWIKqt62RGebZwduCBJDZBLTOLAq8EduxbWXwphLkzH2cU7/sfj9VSK+ph
         NgyBcyt4ZLVGRWXM80sdH4w2fipps2JTkCBr4tx/PwURj5NZ/uSpx1USKxC6oW+ZCPQL
         ESHxKyhrpW0L1tdU2rOPJ+CplouSGXWB5wbFgVxNAjZP9jU6UaAnSs9LMMs7pMFA8UaH
         JO8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=lorenzo.pieralisi@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oTpkHb5Mm5vbwfJFZT87TKSi2TRdPrdYmG7YtNwzgYQ=;
        b=eu7kOw8XDL/xs+gqa/uhTdRqTt9f8knMvynJZuPuTnjM+eKRo/9c3ynLFKFoX40Eke
         u5sibEkO5LW0+w+b5ZYbqG4rHsnWO/IpiljJZCwOmdwxeDyZh1uVCk1DBqh7H9+KcITn
         E347nJob8wiPd0QLK4NT+yfRzhHAXCfu0CaMWzyQe0Y3cFEW3lc9q3s9wSDNf9LYOwG2
         zMLy8T0IYD92ZcrpjVCEZFTeTqWUbs9dc/JTTlNlvWBtyYn4IPfHx9IWmHLZqltTuKyF
         ZVYujhFCMt9pOfi6IjlCPu9Pwla4P5WA4aultPJ2WZmscSj3XL9UMn7QlzsCRBIC4dDl
         skcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oTpkHb5Mm5vbwfJFZT87TKSi2TRdPrdYmG7YtNwzgYQ=;
        b=L0dLLMAANLsPp1DzssnYNax0VDQmHLXaeTH95Sb/kezZgQqAzqOO3JiUxooWkxL1gW
         hmH+yVucF5CRlBjS2Bt31hnLLrvm29eoYvGBKVgfB2K1Rw40MgNEYZXAGs8e+zYUveAN
         t0AnH+GjSVxQJCj+1Olz7fIE7zDOU8Jw06iJcWnWFtwwwEQYYGmIFMioEaerWxPl+ui9
         dv/+jxPoDG+SY1C9AgXcZ8La/FlV2H7TRzKoYDy8uEqnSEsjTcTaERIDLkzqCOwaWRsM
         K4B090k/kRm6hSThhC95VRDsqEmBp4lO4k1iK+xN+PtUGpF7BSQsSUynZwnZH7IZMpk6
         4k0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qqpLCBayZDE20crgu7QeYTK7MzMtbED7adkZUICiFLlkg6g3C
	IPGrZYDEhGXxmMDFB18vpLk=
X-Google-Smtp-Source: ABdhPJyBFpXc7Cye03Ea/CXsseisMPdyvwMkO9mxGUWARnbjLQH+t2ygv5FxW0ApdSRUoEoVgcYALQ==
X-Received: by 2002:a9d:7f83:: with SMTP id t3mr23251532otp.32.1620742040512;
        Tue, 11 May 2021 07:07:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7b46:: with SMTP id f6ls1695205oto.2.gmail; Tue, 11 May
 2021 07:07:20 -0700 (PDT)
X-Received: by 2002:a9d:543:: with SMTP id 61mr22679576otw.287.1620742039971;
        Tue, 11 May 2021 07:07:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620742039; cv=none;
        d=google.com; s=arc-20160816;
        b=yLLZiVRflkuPzJUO00D0zgdDEEbgtJbJ2qx2NP66HmnXzd5oS8J0yL462GqK6Qw3Lu
         DO9XYr0S/pKAGSR66uE/w3rTy+F62d8AhdrBW1lc99ipkRNyIze01RCCOzUrRo+JxV9B
         FEGcJzCvtluHSY9NAFBPmRoQfDVv79GCfGnrA1gtmOtrUYxgBHi7JIfgIjWrDf+HigX3
         No2cdB7SecSekXLABYT34zVVxR3yZWthpzzFc0U3bsGzvRZq6ZEmSkY9LW3L9pJbuv8J
         eBPFFCwqtRmV/Ar+g2k4EQkoQJSHVaLjkMcUS35x5VlT91qeNWMiAHK464xf0Q7S3ely
         mnkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=C5UBdsd8FdowD+mQGHgHujurmzqXwX0EWcjbFTjofbg=;
        b=w2xREPTs0Aolp85azVmw3wP6tJ5VpKR5EERnOoQgL3f0eH7WD7xAfXm+9Fa8GHEshs
         haZXWO3jsVo0DuIDeFIIVRhC/0+5xlVG9T9aNIXGiVC7MyUSKwhUJ2iYTaTriTD7aVXu
         mMr3jfAz7sTI01d54eCNkX4BFBYGGMPgrM1vX3q2kJehDYwstjis7JXUIBj8gS9Orue2
         gcIrLJEAFDmCU7j6ynnRYsICilCLskgHyLp5pZoBBMQAYj1dwSJRNP7+jbBjOBqkfkJ5
         26hyYLzsnRl2x9tp44JxzZFXOC2PKTwayK1deEDyNI/vUr8A+FzU2JMoMJrduDzKgewp
         3Ocw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=lorenzo.pieralisi@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id c9si943460ots.4.2021.05.11.07.07.19
        for <clang-built-linux@googlegroups.com>;
        Tue, 11 May 2021 07:07:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 92D0E101E;
	Tue, 11 May 2021 07:07:19 -0700 (PDT)
Received: from lpieralisi (e121166-lin.cambridge.arm.com [10.1.196.255])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 251A53F718;
	Tue, 11 May 2021 07:07:18 -0700 (PDT)
Date: Tue, 11 May 2021 15:07:12 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>, kbuild-all@lists.01.org,
	LKML <linux-kernel@vger.kernel.org>, Ingo Molnar <mingo@kernel.org>,
	kernel test robot <lkp@intel.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	khilman@kernel.org, robherring2@gmail.com,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: arm-linux-gnueabi-ld: warning: orphan section
 `__cpuidle_method_of_table' from `arch/arm/mach-omap2/pm33xx-core.o' being
 placed in section `__cpuidle_method_of_table'
Message-ID: <20210511140712.GA24463@lpieralisi>
References: <202105010813.KwuE0a5t-lkp@intel.com>
 <CAKwvOdnQ+hiGxfsG5VeJO4qGqfRPvf=Mp7TRgjKzZnTspZjntA@mail.gmail.com>
 <CAKwvOd=0_KbumyVLS2dn2DiKes50oG3te4Cd4aTAxnc5moERuw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=0_KbumyVLS2dn2DiKes50oG3te4Cd4aTAxnc5moERuw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: lorenzo.pieralisi@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=lorenzo.pieralisi@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

On Thu, May 06, 2021 at 12:09:46PM -0700, Nick Desaulniers wrote:
> + folks from commit 449e056c76cc ("ARM: cpuidle: Add a cpuidle ops
> structure to be used for DT")

Hi Nick,

I thought this patch was meant to be merged upstream to fix it:

https://lore.kernel.org/linux-arm-kernel/20201230155506.1085689-1-arnd@kernel.org

I can add a review tag to it but I don't think that's necessary, just
let me know please.

Thanks,
Lorenzo

> On Thu, May 6, 2021 at 12:05 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Fri, Apr 30, 2021 at 5:11 PM kernel test robot <lkp@intel.com> wrote:
> > >
> > > Hi Kees,
> > >
> > > FYI, the error/warning still remains.
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > > head:   65ec0a7d24913b146cd1500d759b8c340319d55e
> > > commit: 5a17850e251a55bba6d65aefbfeacfa9888cd2cd arm/build: Warn on orphan section placement
> > > date:   8 months ago
> > > config: arm-randconfig-r024-20210501 (attached as .config)
> > > compiler: arm-linux-gnueabi-gcc (GCC) 9.3.0
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5a17850e251a55bba6d65aefbfeacfa9888cd2cd
> > >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > >         git fetch --no-tags linus master
> > >         git checkout 5a17850e251a55bba6d65aefbfeacfa9888cd2cd
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross W=1 ARCH=arm
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> arm-linux-gnueabi-ld: warning: orphan section `__cpuidle_method_of_table' from `arch/arm/mach-omap2/pm33xx-core.o' being placed in section `__cpuidle_method_of_table'
> > > >> arm-linux-gnueabi-ld: warning: orphan section `__cpuidle_method_of_table' from `arch/arm/mach-omap2/pm33xx-core.o' being placed in section `__cpuidle_method_of_table'
> > > >> arm-linux-gnueabi-ld: warning: orphan section `__cpuidle_method_of_table' from `arch/arm/mach-omap2/pm33xx-core.o' being placed in section `__cpuidle_method_of_table'
> >
> > Filed: https://github.com/ClangBuiltLinux/linux/issues/1372 (though
> > this isn't specific to clang).
> > --
> > Thanks,
> > ~Nick Desaulniers
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210511140712.GA24463%40lpieralisi.
