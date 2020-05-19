Return-Path: <clang-built-linux+bncBCJP7WOE5UIBBNUXSD3AKGQEII27NRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A121D9CFF
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 18:39:20 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id x4sf211913pll.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 09:39:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589906359; cv=pass;
        d=google.com; s=arc-20160816;
        b=SJGDY6A0BsZwtUvrtwhu8rYR/W173MaWesIXm2H217zIbtdifGWRk5RvcGKXLmVrLt
         fWhzTASH/ki6a0KOyCgGE3xd7MCmARLx2PmFs3vSLfB2rEb5kqMdKsCUS7lNFF8d53/M
         8JwEg5yIxhIs7Uir/s3tRwbWiWI4EwyZ4KVgESix5OyaYW/LFw8z59G5Z2bzdnU0l0It
         A4URu1q5sfEIOdgZJMbcop5AFAXv9g8RAhJ0S2r//xLExNBC/qXCmU9sNQEvvBtiHj27
         q6fMKrbxFAuVfcP0ZBlApUVnQ9RnJuz9+TQpacJ86XnhgfN89K8Njj9AivYA7PzWMQUI
         FvcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=CIN9cAMQQ7AeSyTKL5lK2Of8Nz42FaNz2rqBFJgUvXk=;
        b=vd5Z3VFRORw6KQHkOOwA2f05W+TY6S50t3Pqzn0cqFSBMwy4K0DB8QbPIyndjJOjHn
         xCGHPgmpVPTe/ZjEx9JB5RIGkON0EhT0wQqEWxS00otlWeYrJRnomavjbA4wcGaoLGCo
         yHWcQrM4A0i+ZvOtxTDXyiHLkOrzPv3tBaJaMEi2gDL43LVRazBCC4Ztriug/hyqlMV/
         ndKUBYWtd95O4dTwyYCkytGV8uQMsPveuEaW1eFyWaoARFJrbUnc+Jcp8zirpEZAjQjv
         Sx4UOnbRES3nUpM59rYdUMzA2FxHSmDL5WrlUoiDQyYS+QAYAUl0BgJS5bJcU8ufxAx+
         qXNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KctNtEV5;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CIN9cAMQQ7AeSyTKL5lK2Of8Nz42FaNz2rqBFJgUvXk=;
        b=sOFG3psyCoP3q4fweWrZ38SBw43KsB8NYc2Gvbl3gBBhp65ykxF1bBYvfkENLUnK4L
         imMTxWskRZFTmvrLGERLMkmuuMv0upR63UAumoJ1F78eJZ8CpUFNpf9yUjx1Bf69P3Qv
         9gucKF2gobp9eVkEeQTyKrUewAU/dev4YM+AYt46U3TVSNe+NC/0mn1CMW2bj6jfD0kE
         30XAoClXpjFv/AFIGxAr6CWBxW6GAGuYD0cUCFPfnaPRyVBefpJCj/0vpH6uOhQu0NWk
         HsdlNTPueiAwuhDAuI1kfSFJCJtSLTdj+roNdI+NTkkKb1Xuc+eJVvKWhokFfa2aA793
         VOCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CIN9cAMQQ7AeSyTKL5lK2Of8Nz42FaNz2rqBFJgUvXk=;
        b=Xzi8CEaq8HmkNlAhxr2wUUu9Mr/LCEccvmm4qil5kgWpOnSkQQcWuAg2eS+proKuWN
         3G4pekO+LwG1CGUn8L9DtnVcDBh6U6yaoKFBRjnGVm+5yTEYBxo9j0IxeS4rLVHihBma
         iPTJWatNvXgBbnZpiLly/y9oZRI+fYaWbS0Fmauo7Lf5r+h8lCeHLnBANDkS+EWLtBET
         l63LLZ/AnxV9jCbY67Lg1ARB7nE59dAWI0G+gtcnvQRViakb83iRsZehLSMX8TSzaGYf
         u2wC1GS0SyRBJYZoJGrBiX5AURRjc2Xa67wHbrTWH3TMwx4J5OYDG6w1h4/SULbIc/Tm
         ZELQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336yciDf4DclH/LjK7cTGnkPN7AWCeFCm2Ybg4vIAQHHxg+hLjj
	GU/yx3cMRHlZTUOW4YYVDus=
X-Google-Smtp-Source: ABdhPJxPsCG77jhjQSlN0DR76r5zwRiPlgv4iXQT26R4zAXk3VaNv3Q8L3+/kyRmjhOBXmkMReRKWw==
X-Received: by 2002:a63:7052:: with SMTP id a18mr68712pgn.39.1589906359068;
        Tue, 19 May 2020 09:39:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4f04:: with SMTP id p4ls129546pjh.3.canary-gmail;
 Tue, 19 May 2020 09:39:18 -0700 (PDT)
X-Received: by 2002:a17:902:422:: with SMTP id 31mr361946ple.310.1589906358612;
        Tue, 19 May 2020 09:39:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589906358; cv=none;
        d=google.com; s=arc-20160816;
        b=AznfYylY0fLbjsi96JyNCNqtipwrgdLWU56HRZ+DkMAzIlUfaeeGTpuGWpRhoHhRPU
         Gw+mpIV7vhvvW8S0h7XzpeeaXEAcyMkLicz0S5236Ox/hJdvanOJ9As6vuuhNk1mZ6PT
         FLuYXFWke0IJTIAi1jArgYqWysGpWTP0q72qcyRpXReZ/p9uQSO8B1y/iYNNxKmctL6p
         kBmYivtCs7N1Wazh/n0/tJ5KwRsDxdKxJFlrqaLN5V35snhL93Za5QositVQaSWG2rD5
         5b9PM/U6nSZVl2dySG7HH81FsCSDbtouIQAHDgUgosgfUoqtaUFwCS5J37SbhipJe5eA
         djdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=l0udWa5/TZvHZRor1k25nzWovDcA/KqZlug7UE90TD0=;
        b=MTZClc4yoRkkfr6fyeUgABeg8wub2Xcw3adWwzjbg3NR7TP690+tClqfPQ4T+K0l9I
         ekU2N/Qz76tV4CUAeunh1bjqzBQSmSSwk9ebPKcybEwA81hBZvP1267t0sZaOFTx63Yb
         VUcXYRLt/NGLRjeaDnxwET4KKCw885FiCLJwaIDcmoXv1EXDUiV+rczHk2QiA7IUleOi
         MWJOwWvzyFLXSciE7CVoe8EqxeA7ruLEnkBm8AMGq0GTPGojVkAXGxKiIHHXxVgjOAwg
         +RK4UPugeBlQ2dHyqPhy8Lw4a5uyiHuPlISffBSfA8NrWw8f5+BT0CqHIfLA89hFLnSH
         gEpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KctNtEV5;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id a1si10272plp.2.2020.05.19.09.39.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 09:39:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Received: by mail-vs1-xe44.google.com with SMTP id 62so8305192vsi.2
        for <clang-built-linux@googlegroups.com>; Tue, 19 May 2020 09:39:18 -0700 (PDT)
X-Received: by 2002:a67:fa81:: with SMTP id f1mr3856vsq.104.1589906357548;
        Tue, 19 May 2020 09:39:17 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id e205sm70551vke.21.2020.05.19.09.39.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 09:39:16 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id v26so8315228vsa.1
        for <clang-built-linux@googlegroups.com>; Tue, 19 May 2020 09:39:16 -0700 (PDT)
X-Received: by 2002:a67:e884:: with SMTP id x4mr4850vsn.106.1589906356121;
 Tue, 19 May 2020 09:39:16 -0700 (PDT)
MIME-Version: 1.0
References: <202005200021.2bVBUTxG%lkp@intel.com>
In-Reply-To: <202005200021.2bVBUTxG%lkp@intel.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 19 May 2020 09:39:03 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WHr6=jMStO8bgTzO0z15CSc=wpFmjqA7jr-hQZ_qCm2Q@mail.gmail.com>
Message-ID: <CAD=FV=WHr6=jMStO8bgTzO0z15CSc=wpFmjqA7jr-hQZ_qCm2Q@mail.gmail.com>
Subject: Re: [danielt-linux:kgdb/for-next 9/14] drivers/tty/serial/kgdboc.c:410:13:
 error: expected parameter declarator
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	Daniel Thompson <daniel.thompson@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dianders@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=KctNtEV5;       spf=pass
 (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::e44
 as permitted sender) smtp.mailfrom=dianders@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Hi,

On Tue, May 19, 2020 at 9:07 AM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/danielt/linux.git kgdb/for-next
> head:   3dc6a1ac3f70f1e4530132bd231599e0a91d5b5d
> commit: eae3e19ca930a56c726fbf4dc3adc198b8f5d61d [9/14] kgdboc: Remove useless #ifdef CONFIG_KGDB_SERIAL_CONSOLE in kgdboc
> config: x86_64-allmodconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 135b877874fae96b4372c8a3fbfaa8ff44ff86e3)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout eae3e19ca930a56c726fbf4dc3adc198b8f5d61d
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All error/warnings (new ones prefixed by >>, old ones prefixed by <<):
>
> >> drivers/tty/serial/kgdboc.c:410:13: error: expected parameter declarator
> early_param("ekgdboc", kgdboc_early_init);
> ^
> >> drivers/tty/serial/kgdboc.c:410:13: error: expected ')'
> drivers/tty/serial/kgdboc.c:410:12: note: to match this '('
> early_param("ekgdboc", kgdboc_early_init);
> ^
> >> drivers/tty/serial/kgdboc.c:410:1: warning: declaration specifier missing, defaulting to 'int'
> early_param("ekgdboc", kgdboc_early_init);
> ^
> int
> >> drivers/tty/serial/kgdboc.c:410:12: error: this function declaration is not a prototype [-Werror,-Wstrict-prototypes]
> early_param("ekgdboc", kgdboc_early_init);
> ^
> void
> 1 warning and 3 errors generated.
>
> vim +410 drivers/tty/serial/kgdboc.c
>
> 9731191f75a54c4 drivers/serial/kgdboc.c Jason Wessel 2010-05-20  409
> 9731191f75a54c4 drivers/serial/kgdboc.c Jason Wessel 2010-05-20 @410  early_param("ekgdboc", kgdboc_early_init);
> 9731191f75a54c4 drivers/serial/kgdboc.c Jason Wessel 2010-05-20  411
>
> :::::: The code at line 410 was first introduced by commit
> :::::: 9731191f75a54c4fa17e9b9b88f3144cf4b47836 kgdboc: Add ekgdboc for early use of the kernel debugger
>
> :::::: TO: Jason Wessel <jason.wessel@windriver.com>
> :::::: CC: Jason Wessel <jason.wessel@windriver.com>

I already got yelled at and posted a fix.  See the thread at:

https://lore.kernel.org/r/20200520000524.69af8a86@canb.auug.org.au

-Doug

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAD%3DFV%3DWHr6%3DjMStO8bgTzO0z15CSc%3DwpFmjqA7jr-hQZ_qCm2Q%40mail.gmail.com.
