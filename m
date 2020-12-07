Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ4TXL7AKGQEXKFIPFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id C450C2D1A22
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Dec 2020 21:00:04 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id x74sf3350265qkb.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 12:00:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607371203; cv=pass;
        d=google.com; s=arc-20160816;
        b=FCOQ5jIjmRkwUv9welyWAO8Cx2FSZOV+Sw/cbcIa6BbY5NerrUT4EOINrbkqgzR/3C
         NdHuxvHa0DaF46iMaIaYTBAVLdroaIuNf/DFiV5bxUk9lNqHQuXDPbbFYlZxsfx7sSQ2
         1Q1aISRYOfSiH1gCfNNcCrx/ZSMId7QRalLorgeSPlTS7uOOnk8pl3hErmspWsbx99ua
         OiMwyyKPw2Kr534wGwZ+jBNT/gdzZSWobZ/+/UWqb/2/S//2R6lN81VuzZBWaC8jBWuw
         ItI9plDfR2lh+BhtUhS0Cw63SPai6jznPoQIX2vve8d1lRydw0tYASiOPWpPOCPXLnby
         HMMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VzeXTzi4raVXaSLBRr0BXIRpDOc43KgVIbpxpHJVo+g=;
        b=BfKM/lOgDfc4uX+ZsfLQ/SDMuPECmT2ItBA1VcwhDEikSBHtJebiBOVCIX8hDLRkZq
         eZUNEN4WLFS3CCMbob0wWdHFNlKEmHAL1I3OQwdojWmKlTI+TvIG6y2XMhuYJelJv9F1
         LdHRIUru+ebGHTddwDbPULLrmR8d1zKTFipjhJAyyOVie16R3tQmJzyuaojcPrhWG/c4
         J5OGnwyTJK4zEYr9ebzaKYHvZ7YCpnHFH0JWCg/gkK0Tu0zP5vHD7b9tulm0Vp4ycJir
         ntFv4GRrbbmZAkqi788E3ABn98ySeGYfIGBeSz+JeB1vIQBnD41IB0TelFgDXhBRak+2
         jW5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eQCc6Gpf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VzeXTzi4raVXaSLBRr0BXIRpDOc43KgVIbpxpHJVo+g=;
        b=eX2L8jKwbEEor2lCP8t+HUCtM+t9zy+ZaP9ri9MzIPPPTB+mzg/nCcC+HXP5dKnI2Q
         5otuAnT+Io2G0RFqQO8lrxK4boxwj7s41uClqHQ4iWMIGXFil0mFUw+x4fudoYA/vh1o
         AAb3pYpJCFElMX93pobOtH573b9s3oSfC+jXX2q1n3nxbva0Fkfda/M3ffnGOs8ND6KI
         nfV/RHk3SLQVua2UVr0Rh8+8ii14IKa1nSH/7iilnflUPcOpc2uagPQg1yukDRisIBiQ
         onXOFMU/tK/+4g96pMxHjrnG4LnRwoBaPAgggp5veZH2oHEK0fGKqVZg8tFzukUb0lqD
         Uh+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VzeXTzi4raVXaSLBRr0BXIRpDOc43KgVIbpxpHJVo+g=;
        b=CN/6Joi210rpOR+uOSwx7vW+xQcljfyJN3M5+DHXrwI2kwfXg/fbUw7vXwbh86KqKy
         9QNcpX3lVJR7Zzcaz7I4mJIeCdCuI0iO44EaKgqeCVoN/306Oeb/UGR44wVcztU23Oy2
         1gCpEICZ8gf4Gz0CpdnPOgsfoi0G377eRAuRF0YSSxVYhFw0gzl9LQt2PN9rACPkOJ7z
         F/dxk66kMR1iElJbJN4DbbtHAbYBqOWB0nA3oBbSZV7yTa9kqwRsjhowuG02i+nZ2hp9
         OUZb7gWgH6MFtGOfA7FgMv3Atps937J1hF1suknLtOxNevNd5DfTDpILND9FX0hjJBHJ
         T+zg==
X-Gm-Message-State: AOAM530F1L4ppGa6Bm/pMIcR0hbkUFwr+iqyMOhkZUzqXrl/LYpAvd8N
	GZ5XoRaeExJJCzrTZPwoMfg=
X-Google-Smtp-Source: ABdhPJyo4zLpVHb1gG7IAQYzdhCbH9+s8M2zKiRelyPJjmlt8fLR3AS+9XKgUrLkv1G3lkkHnr/Cxg==
X-Received: by 2002:ac8:d0a:: with SMTP id q10mr25957704qti.25.1607371203536;
        Mon, 07 Dec 2020 12:00:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4e29:: with SMTP id d9ls6647104qtw.10.gmail; Mon, 07 Dec
 2020 12:00:03 -0800 (PST)
X-Received: by 2002:ac8:6b14:: with SMTP id w20mr4282437qts.320.1607371203172;
        Mon, 07 Dec 2020 12:00:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607371203; cv=none;
        d=google.com; s=arc-20160816;
        b=UtPdZSMgkNwJvOoQP/e9dBvXBU/EY+p/Wcy7JXbEdkp2+ZEm052M2mF82PfA77QQ39
         p6tutn8YQwn5VxhvZ/39L8ZmPA0+ZjFKskbcaCg2VQrGp+teWSIjTiId9QfIRdgmfus2
         HhojfDIMxadGJM1CgEckQSUDZ39paJDhVqCWyp7MVfqhbuWe61znXAQ/SEgrABmuNGrL
         88KxWBT4I4QhNHdcPZazCm0dsPc1OHLNKsEmLYBb6V/0I7FViQqmw/ZylM0mkgGPmquR
         KbF2gkwCs53MEKoLJaJN5MifiDAqHqKk2/gPYHFq7wNh/nqvr7ikfJPnXViRJ1vFKI9z
         gcrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=S8DaX6mPH//rHNKj878OhZXEWEPwehsi62IBdeG7yh8=;
        b=ZmpF2X2U1PPizwg9M43TcBy8nNiHwrqEWezSIawxd3GSYF7I+gqp3c9okdsQVGeB5X
         53h9cN7485ShfaFcEfUoi8JKQr9AgA+B5bUKbmWBy9WaaW0rnFzQBtjVzp4xpmeBRR2o
         rhEWUzIWbmDtzF3zsd8xnucEMBtjGhkwQ+xERV3Lp4twu7Xnq1RRaikJ/Z6a+snkZlXf
         kJ/C+nbAVJfSVVTl2b6AVZ2JIV6HptzkCfBIRInRQAu8N2AcgXNms4oVjQQQ2UDXV2nC
         iRjcU1WxXKB8nmstj1y0EZzpI6IzqIpMFfdUgt9FlUvfQD9rMAP0sg7ff+LXTS8WS8Xj
         uKlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eQCc6Gpf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id n20si657258qta.1.2020.12.07.12.00.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Dec 2020 12:00:03 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id 131so11183040pfb.9
        for <clang-built-linux@googlegroups.com>; Mon, 07 Dec 2020 12:00:03 -0800 (PST)
X-Received: by 2002:a63:a902:: with SMTP id u2mr19940486pge.263.1607371202100;
 Mon, 07 Dec 2020 12:00:02 -0800 (PST)
MIME-Version: 1.0
References: <c0d7c796be7df6ac0102d8c2701fc6b541d2ff7d.1606198885.git.viresh.kumar@linaro.org>
 <202012030227.bGtZchYO-lkp@intel.com> <20201207094419.lakxblzsono3nqpf@vireshk-i7>
In-Reply-To: <20201207094419.lakxblzsono3nqpf@vireshk-i7>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 7 Dec 2020 11:59:51 -0800
Message-ID: <CAKwvOd=YZtQOVi3oZTa3_BkESRP-z551sEbcNU5feQuiXpn+gA@mail.gmail.com>
Subject: Re: [PATCH V4 3/3] thermal: cpufreq_cooling: Reuse sched_cpu_util()
 for SMP platforms
To: Viresh Kumar <viresh.kumar@linaro.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eQCc6Gpf;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Mon, Dec 7, 2020 at 1:44 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> On 03-12-20, 02:39, kernel test robot wrote:
> > Hi Viresh,
> >
> > I love your patch! Yet something to improve:
> >
> > [auto build test ERROR on 3650b228f83adda7e5ee532e2b90429c03f7b9ec]
> >
> > url:    https://github.com/0day-ci/linux/commits/Viresh-Kumar/cpufreq_cooling-Get-effective-CPU-utilization-from-scheduler/20201124-143027
> > base:    3650b228f83adda7e5ee532e2b90429c03f7b9ec
> > config: powerpc64-randconfig-r025-20201202 (attached as .config)

^ Note: randconfig

> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 2671fccf0381769276ca8246ec0499adcb9b0355)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install powerpc64 cross compiling tool for clang build
> >         # apt-get install binutils-powerpc64-linux-gnu
> >         # https://github.com/0day-ci/linux/commit/17f0c7f4372070206925c3a10ec0e7a09d03615e
> >         git remote add linux-review https://github.com/0day-ci/linux
> >         git fetch --no-tags linux-review Viresh-Kumar/cpufreq_cooling-Get-effective-CPU-utilization-from-scheduler/20201124-143027
> >         git checkout 17f0c7f4372070206925c3a10ec0e7a09d03615e
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> drivers/thermal/cpufreq_cooling.c:562:8: error: implicit declaration of function 'allocate_idle_time' [-Werror,-Wimplicit-function-declaration]
> >            ret = allocate_idle_time(cpufreq_cdev);
> >                  ^

I can see in the top commit
(https://github.com/0day-ci/linux/commit/17f0c7f4372070206925c3a10ec0e7a09d03615e)
you've modified __cpufreq_cooling_register to now call
allocate_idle_time. -Wimplicit-function-declaration is observed when
calling a function for which there has been no previous declaration.
Let's look and see where or under what config allocate_idle_time is
declared, and how a randconfig might expose the missing declaration.
(The first thing I suspect is transitive header dependencies, where
some intermediary header changes what it includes based on
#define/CONFIGs, or calling a function before it's been declared).

It looks like allocate_idle_time is declared in the same
commit...while it's defined twice (once for CONFIG_SMP, once without),
it's not defined when CONFIG_THERMAL_GOV_POWER_ALLOCATOR is not
enabled, which is probably what the randconfig has tickled.

> > >> drivers/thermal/cpufreq_cooling.c:624:2: error: implicit declaration of function 'free_idle_time' [-Werror,-Wimplicit-function-declaration]
> >            free_idle_time(cpufreq_cdev);
> >            ^
> >    drivers/thermal/cpufreq_cooling.c:717:2: error: implicit declaration of function 'free_idle_time' [-Werror,-Wimplicit-function-declaration]
> >            free_idle_time(cpufreq_cdev);
> >            ^
> >    3 errors generated.
> >
> > vim +/allocate_idle_time +562 drivers/thermal/cpufreq_cooling.c
>
> I am not sure why this should happen here, I don't see any such errors
> on my side. Can someone please have another look ?
>
> --
> viresh
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201207094419.lakxblzsono3nqpf%40vireshk-i7.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DYZtQOVi3oZTa3_BkESRP-z551sEbcNU5feQuiXpn%2BgA%40mail.gmail.com.
