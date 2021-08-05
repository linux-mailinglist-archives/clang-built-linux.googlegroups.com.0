Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBG4RV6EAMGQEKYNMKTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BF13E13AB
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 13:16:46 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id k1-20020a17090a39c1b0290176898bbb9csf5753187pjf.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 04:16:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628162204; cv=pass;
        d=google.com; s=arc-20160816;
        b=YVkBpxZixqLVmRI6ZsWvMlrUz1d/jvc1h5e77cmGL3SbVlHPuseT0PkIAO1mlZWIaU
         rNdQB0HxH6jshc/xS1klHN11LDxLpU4zL/qkG3ylY7kdy3DMgjM7/6iTQ0bAqYLHIMJ0
         DB9mLRVxkcHBDye5lcJqAD7D5/fxXJYOJOMUlOMBCwtPQHza7fPI8e75d040uQPcO+Rc
         BjjLB9Q1BBCNzhwXeW/dJioblhwlGbUbsL9VTlrqH1Ly2AQ++6QGkcl6Holzs8Hi/OU4
         ahgyUA7vNbwHi6ES2apJvZtOhUqB9V8e6N05IYFDwOZbvpAwcrWF/SUZ0EHTbT7MTTIm
         la1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=8nfC8/qwUVLeEbD9kPJc/AsqRM5qitsuevcN4skuJI0=;
        b=kISmCu2t/VSu01LqW3MrQjCqxWf985fp4ph9TamFonSclKzWdzBc6vq2O1Bubq1Y7B
         OixfrlunDiLkp5af5bNuhnuX0Y6OWXlnWVme9Z+7ObWL6+IZzN3iJ2gRQhl8/azexK/k
         SzJdttZjO5g4vREVpMxrkO1L6ytSMzNPSUn0/m6HQqeNFPtS1Iz5zjkqOiNT7GKkmPfA
         dC4S96/PfyXb5k9N1MRY3ajaa2zrqST0v+G4AvI8anK2TcbvlD4nr11QcXZArPRfwitM
         zEpO2Kdi1YOHZESb67n1f3iZ/KSqw8GHS5LL4xaqc7Pq5rA1K93qgIPaQyBSjFvYt1lG
         YIYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lsk1cwLj;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8nfC8/qwUVLeEbD9kPJc/AsqRM5qitsuevcN4skuJI0=;
        b=hCdNhq6TMQLN+KygMFVuxn1pIfOcNAnJ2Mgqug+36RJbsMfZoZh3ikcDGn8xcLIEEO
         hHFDacMDqtIVgNj3tk+Dn33j50WRoe3onF0ZbajqXl993mpFC/7zhVxEJrx48sfcSngz
         GkLhfX5qZooOK2Ikk9d9RCheXgA1RA2Z57DflGl27YM4ewwHM9ys5oUVehkjVb5Qqz94
         TniBGc86gHI43cYioXeUr4hiFA/eiOo2x0DBSrUSFoJNZOOKUJG2IXTx7QmivRYN8uyU
         q6ikhjOU3UPM/21q5CXJJgxwqvWNnRm1AwUC/LPMevpiX3k56CoXZayP6dXy+FCFjZZR
         172A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8nfC8/qwUVLeEbD9kPJc/AsqRM5qitsuevcN4skuJI0=;
        b=ORGa5Pz9iKFccYFiptKhht6Z32ZIvF0mru+5jIq2/OCdM0uzU650tocsz8OTHLZRBf
         JQLCs4ykQQ9HsgD1EFU2X/GTGRuMM4KGg3p4BCleDf0urKPpFABmEbAFthiZuFXsdkKN
         gZKE7SqEIEzj+o9OQyOCe+t3vslDFnqN7xNZYi9INzD6pFRoMeLf/Rrv0ChGqQIIdeTe
         boiCgeWw9lO1dQMy5aB6TCb/ELSIhvxTYc9iDMHFwkRuB/xlhLV+oH6784um0wNKcMMI
         I5qU+kefNLQBNoq49nFaG+m6hXGPsLewC2H6cgTbhzDghQz8EPwHAp9rHczG+dNPZZFs
         HHbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8nfC8/qwUVLeEbD9kPJc/AsqRM5qitsuevcN4skuJI0=;
        b=QVXsSe3SPSqEzgAhIpg32ltm8S5nTTLclsQjsoQxMCuifA5s6olDoBwVBTF20gwIqX
         gA6cnAXxYfR9035er8iREOERWmhryVoGeMIkFhfUd74sPOaHGUOlvgkpOzvnM0rVd1cG
         vyZR1+arPJVtc3gus1PHdXkcrDgUnq2oRQd3zAlKFErQ1e1n05+imyJWXE8TVsKcyPk6
         xuicgS2/p5fzSj6Czt2Wrlbuxeeid/40ts5IcB4n8wtZKUuU4vPIwLPWuTwSOf3ytv8i
         N8F8SD3zi91UGQ1i6fblTVvcYzbSPdeI0vRymnUq4kOG5+VO5vI3mTkH56uUKpUtJKWN
         9bPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qFQrDDfEYoBvtklQkTBPro7t12Q8UKkkY0TfXLAemVpXdz+dk
	o/yuG51LBGj90tjfZkLbFgs=
X-Google-Smtp-Source: ABdhPJz6BmXlc9fWNc2H8Zmpl4kauLnyY0FYpsK6tFxE60jUKyDVmpv0SPDrvEx2bJpfngLUPR3YLQ==
X-Received: by 2002:a65:5c48:: with SMTP id v8mr1140882pgr.411.1628162204087;
        Thu, 05 Aug 2021 04:16:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:294c:: with SMTP id x12ls3090957pjf.1.gmail; Thu, 05
 Aug 2021 04:16:43 -0700 (PDT)
X-Received: by 2002:a17:90b:e0a:: with SMTP id ge10mr15339772pjb.86.1628162203483;
        Thu, 05 Aug 2021 04:16:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628162203; cv=none;
        d=google.com; s=arc-20160816;
        b=sIST5rw86sFtdmK2KfhT9Z6IJqodcOhT2YKagrvtLnKcDftPsxa9AsD9kMTKqYKHMD
         Gyljz3m5QUX5Qv6tAWDi7X9V9bxKUhwklHXmd7P7yN+p31yg4WdGMuHaOVG3Xpm2u404
         gJpk/kSSrmXmspIHQkBuvNY6w64FPRZ47BU/pkP7GWQEdQKBGlM4yV22rXnx/G6nX9uV
         k7s0ljvuPxf9hY2jLwWvcZu7oISC/XtDmcGm8iNlW3pRnO1esaHlMq0nsnWEFZhTsv/r
         z5IJjnVmT40LRvalDFl1+1hSm2coMVCenEFG4oD85kg8q3NDMH7M2Yd8Pmc1DfOAmHac
         OuqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ec1ubnGTZ0UpBpG/g+/7DgxXje7vYm5huuXGijAek3o=;
        b=s8BwPZSpmRzYRC2RJC+38CGQYL14seAVw0LKyG1j0fUyz9c4HdgJzO9LATHXpCLihO
         CjQBH+JULcu8hFefl7sAmWc8ilU8t+xV7T1nbxum6pjfaqFZICLQM+Om16vMTQo7hxBe
         JzUt0fwlghmvEOnjrjRJCguw07ZDm1a+mrpXzvG3floJqDoIxmqUyeqlD3BL5qBL+QeT
         OJkxAcmCAfyjWmZuNnbARvpyweoHwQ5iDIcUTY3i1xaoX4yS7cwQlc1wljols0Z3efBP
         Mw18n7LZD0QbJ7mVQqcjTdmY26M/QLFG5crRf7Ll1jXPIVINGZM7F90jHnvV3iznc0kT
         TOog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lsk1cwLj;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id u5si542983pji.0.2021.08.05.04.16.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 04:16:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id a8so7849972pjk.4
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 04:16:43 -0700 (PDT)
X-Received: by 2002:a17:903:2444:b029:12c:8eba:fd6a with SMTP id
 l4-20020a1709032444b029012c8ebafd6amr3572953pls.0.1628162203212; Thu, 05 Aug
 2021 04:16:43 -0700 (PDT)
MIME-Version: 1.0
References: <202108041809.QsYhsqqy-lkp@intel.com> <c303b831-54cf-2079-77e5-ae2cf79db45d@intel.com>
In-Reply-To: <c303b831-54cf-2079-77e5-ae2cf79db45d@intel.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 5 Aug 2021 14:16:03 +0300
Message-ID: <CAHp75Vf7oDkmvHpvcADMm2g1Lv5U9Ggt33ZgRwjQ6wUUM5y0WQ@mail.gmail.com>
Subject: Re: [pavel-linux-leds:for-next 9/18] drivers/leds/blink/leds-lgm-sso.c:635:4:
 warning: Value stored to 'ret' is never read [clang-analyzer-deadcode.DeadStores]
To: kernel test robot <rong.a.chen@intel.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	"kbuild-all@lists.01.org" <kbuild-all@lists.01.org>, Linux LED Subsystem <linux-leds@vger.kernel.org>, 
	Pavel Machek <pavel@ucw.cz>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lsk1cwLj;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 5, 2021 at 1:36 PM kernel test robot <rong.a.chen@intel.com> wr=
ote:
>
>
> tree:
> git://git.kernel.org/pub/scm/linux/kernel/git/pavel/linux-leds.git for-ne=
xt
> head:   64f67b5240db79eceb0bd57dae8e591fd3103ba0
> commit: 9999908ca1abee7aa518a4f6a3739517c137acbf [9/18] leds: lgm-sso:
> Put fwnode in any case during ->probe()
> config: x86_64-randconfig-c001-20210803 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project
> 4f71f59bf3d9914188a11d0c41bedbb339d36ff5)
> reproduce (this is a W=3D1 build):
>          wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          #
> https://git.kernel.org/pub/scm/linux/kernel/git/pavel/linux-leds.git/comm=
it/?id=3D9999908ca1abee7aa518a4f6a3739517c137acbf
>          git remote add pavel-linux-leds
> git://git.kernel.org/pub/scm/linux/kernel/git/pavel/linux-leds.git
>          git fetch --no-tags pavel-linux-leds for-next
>          git checkout 9999908ca1abee7aa518a4f6a3739517c137acbf
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross
> ARCH=3Dx86_64 clang-analyzer
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

Oh l=C3=A0 l=C3=A0, it reveals another piece of (broken) code in that drive=
r,
i.e. we shadow error codes when bailing out from the loop. I'll
prepare a separate fix for that, thanks!

--=20
With Best Regards,
Andy Shevchenko

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAHp75Vf7oDkmvHpvcADMm2g1Lv5U9Ggt33ZgRwjQ6wUUM5y0WQ%40mai=
l.gmail.com.
