Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBQMX2KBAMGQEXV4EJAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3FD341B89
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 12:32:18 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id e29sf17844582ljp.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 04:32:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616153538; cv=pass;
        d=google.com; s=arc-20160816;
        b=IfCMeoYZW2bkLSD+M5+QY4H7Owd1GYLvR9QfH6lT+j8n9xo28/3aBQ9vIFZ6DfY6u7
         f8+wxOhNoL1XTRrmhDtmUHkCeEjBe3hmNIc69geueCZl5gjH1cUdp6hRPiPOeTYkJEzQ
         7ugKp72djUAriF+1mgY5IKBJO6vTCg+h4SvJcPagJGA0UvBJ4Bym6EQBAq4xu8HVKXKO
         d6dAwPdb1lOeXVuHfmcWaPKPa0qgyZW5MzIPuqmfz99cCxuKE/+2ftjacDVHPG8Q/Fyp
         qLNLz7iVC79d4pwvvWbWmz9yqZ5Llw5YPctTMaxJlfUrA3RpS1FFMqjDzpHRpH1IJhx/
         enLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=/aeHb6T67nBo8qPc7KbAwd3jTGoqfAZzsuFpTaAVKDY=;
        b=dUdvPuGs/YHrbi0Az062I2lk8Hyis3jRIT0vCTWTboduB/asjq+Ej1ahufGXcib37z
         ApIIYV0d58KxJCI7C4oXpAoZfS9CgVa4eNj94nDdpgJTPhDTmiSrImQmKsPtB+h+Vy1p
         qh/1AwwLIFebh4wH76N6MdYd6nDvlJaD9LyaLR/F0uiKVPKqcjTZh20vlMEEHbcEd+ZC
         lhE859L+vHdAF9isyu1tlTxlcmfNEe8typVcRqvFDHNenRAtxau9PSqxgPBUXurCssb1
         mjDgJDKimt+mEm72gMQZeFvOmNfkQ2mP/zR7GtiISpM+5GBZaK/f09MvtzdGj8xQppEf
         iLew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/aeHb6T67nBo8qPc7KbAwd3jTGoqfAZzsuFpTaAVKDY=;
        b=lhK30cfo86bYsjyvFzdIo+lwuqWkoEVoHBTF59FhGzOn6MkSbbWGvy7dcibLpKS1jO
         7m9DBD4AOEpyEQah1zYDzz5XwZEdvAAiZiO/y3TVFxoyAn9T/Z0hu9pVPaKf/57qGIPY
         l/eHWJivOOY/qMVhCLAKGUOXO0yuYf1ak9DEVyqHsyquKs1y22YCQvI9Hr+yp6gF7S/h
         YNJeFaAflP99OgsS3pol11e0hrJCh+uvZ7AYNDZHfs0umt83ix00fZozbdQx/kPzZ3E2
         Ur3G38uNauWKFPEJCHhIt9vvnTNC4tMAPPaJwWNE2zGy9KLlrOQEZmA/0GCU55FlmLa0
         spZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/aeHb6T67nBo8qPc7KbAwd3jTGoqfAZzsuFpTaAVKDY=;
        b=b0bDoFq28xdyHQ+QbelzJJyzZI6SrmKli6pRRnOd6k2gQUNgoxS0ohBxwgP7HhqdHB
         D0qaw56/CuTogVTzCtqW+tvAi/kghNcGLSHv22MxXm+aCu3+Kllrc8zRi3JG9OSIK/Ap
         guby6FEUg/D8TYnum4WIGq+ZEiLvpY9exD2rn0Nftq+t+4mA4Uifgdi3r8avIr3RQKo5
         L4aYqVEnmsu0M5fsovRyMwytGT44SdAuujLfjmcPg8W7X1Zg9gSlSSZJyRIWMiavCSAY
         N6Zz754/QDT10+W7BA452TX13cbDei/Q5lC9PkTfPuRW0R8qE5kk+kwCXWcox1diTjuO
         b3og==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533d4OfFzXtDkE9JAfb3goUwvQrB4/lbkfuOVC5Z5yfArI5OkcJm
	Kub8eKAMVP9xWm6P6i94JyM=
X-Google-Smtp-Source: ABdhPJwX5VPskY8qG44wVHZIhVfsTaPdnW5AJoKIEUyLqdmSoK3y6SBg8iE6IzBFZUacAVCv19wWUg==
X-Received: by 2002:a2e:974d:: with SMTP id f13mr626926ljj.210.1616153538004;
        Fri, 19 Mar 2021 04:32:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bc23:: with SMTP id b35ls1025431ljf.7.gmail; Fri, 19 Mar
 2021 04:32:17 -0700 (PDT)
X-Received: by 2002:a2e:a487:: with SMTP id h7mr588492lji.447.1616153537031;
        Fri, 19 Mar 2021 04:32:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616153537; cv=none;
        d=google.com; s=arc-20160816;
        b=PW5FnH2FEqXn8UUua2NzQ03h3SA09i52RWh9DiODGu1E2HsEKjjK84H76XAPw28RLe
         +sHohsrFF4mHfoSvQZlFttUSTt5CdPybUjbOu7K+E12/mcbcw82yrLsmod/TQRBvr1wq
         vyk1+gSssUcuic8hHap2ZyAs0sJaE/ApfU5USVm7e7dN4R5ljFSo1n58n1BEDDBg7Rvw
         O6LPxnFt7TdozPRaMc4wII1lj70bbK/R01Vgo1G038k2/KUAneSoK3sJmM/VQxaoBzz5
         dNTr7Hq03iKWUkd1jRloNrx8NXqxy8nJ8nSh+aPzxLC9IdT7hKz2TdNlLfJRdeN9ASni
         VvCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=BRk/tLt2n1eC3O9RtFPOkJ0oUwcbrffp7SaUpOVKTdw=;
        b=ejoyZ0UhyNxaNo/63yl+BvAVGw1JbULclxh+5nlFPZ2vE8VRWsxxWr+twEH1/g/pb+
         lv6ujk5uxTwMG+4ToeGK82bDiMi98s/EX5ve4zea5UUK7ZEUjBw77Hcd/cKxHJh4gtHo
         1t14NztE56O6O66mVTNJjn/pwQiHNOX1DFv9vyGaLIMh61cWetyX1aUCQThTd8wvy1MM
         dYdrnSpRzB8H1XexMzuy4bSxYTeGjIDis0pY0Y6WuYqylyAGTxGo//eW6Y0oL0eLtfQS
         8myTWsMVIJdHzQUCcZWUut4Q7oU7PljDlM9k8WOBoWEvSdPrDZfIcRWELOouG/f4tEPT
         Ys7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.75])
        by gmr-mx.google.com with ESMTPS id 63si180298lfd.1.2021.03.19.04.32.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 04:32:16 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.75;
Received: from mail-ot1-f48.google.com ([209.85.210.48]) by
 mrelayeu.kundenserver.de (mreue109 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MLR5h-1l6VSO1fNL-00IR1m for <clang-built-linux@googlegroups.com>; Fri, 19
 Mar 2021 12:32:15 +0100
Received: by mail-ot1-f48.google.com with SMTP id g8-20020a9d6c480000b02901b65ca2432cso8191911otq.3
        for <clang-built-linux@googlegroups.com>; Fri, 19 Mar 2021 04:32:15 -0700 (PDT)
X-Received: by 2002:a9d:6341:: with SMTP id y1mr791241otk.210.1616153534185;
 Fri, 19 Mar 2021 04:32:14 -0700 (PDT)
MIME-Version: 1.0
References: <CA+G9fYseDSQ2Vgg5Cb=8HHdpm56aeVQH0Vdx7JK1SktGpRRkgw@mail.gmail.com>
In-Reply-To: <CA+G9fYseDSQ2Vgg5Cb=8HHdpm56aeVQH0Vdx7JK1SktGpRRkgw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 19 Mar 2021 12:31:57 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3Za8N2-Hs02nG0CcGJ+RcTrR0UqDOesd8E6PmhYRR2_A@mail.gmail.com>
Message-ID: <CAK8P3a3Za8N2-Hs02nG0CcGJ+RcTrR0UqDOesd8E6PmhYRR2_A@mail.gmail.com>
Subject: Re: sparc: clang: error: unknown argument: '-mno-fpu'
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org, 
	sparclinux <sparclinux@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Anders Roxell <anders.roxell@linaro.org>, =?UTF-8?B?RGFuaWVsIETDrWF6?= <daniel.diaz@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:LEfYXA4cByMYyPrsbM/NCu71XcrIeTSugBAElVnLKjkaqg29Qcp
 OSUpoVY6PEy1kgniJUBO8HWxelrKq7FQcmfBP4bMA8PhbwTQOYpPFpF6DOmO8xsdwNnQEtG
 xOh5KD3hh5oAxYYZxLS/Ikbhh5vn1nsMgX9LQmXSCLvsy/4mUlzH0rAPI15yYbrFh0LU/Og
 eSeQBrizq47Ipemqkd32w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Mt1m9XtqE1Y=:8RF4djpooexoeXn+FuQ5o0
 +bdpx/FNp25R+I7KTQPbMthgapKuefVOocn+G7diBLPuGLE+apiJIRhiUczADurvTM525byGK
 raCogtvkF4Jre82rqaiSIUEVfS8xNryPhd1B1bycFVGAVEZY0Ih/E9+gQYyeXzLA1YzubIECD
 BMXO8LVVSItTwZf7vqFjpyIYd6E8uf4ZGWG2NbVJDkgSMCvGd01lqDFWnM2gDKh2THh2xAGdA
 xXB4xWMpNjux+eiVXayXSqp/Mz8TKhSBV1rVWzfot8zKdRUQ8NWSS2llUp4YBtqaLfPkSoBnk
 Zw6DVaHN9F6UZlQ28KielL4qhNoVWCFwKLmTGFM8IP0kLbtFcnOuWRr9SWDb7kFyVTx+rEM+A
 iEr4uk4D9pvoOGWh8CfQ4tFvP1Y8bz6GIpQvBhwv1cGJhrYmW7xqnbEpeA5rH
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.75 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Fri, Mar 19, 2021 at 8:36 AM Naresh Kamboju
<naresh.kamboju@linaro.org> wrote:
>
> Linux mainline master build breaks for sparc defconfig.
> There are multiple errors / warnings with clang-12 and clang-11 and 10.
>  - sparc (defconfig) with clang-12, clang-11 and clang-10
>  - sparc (tinyconfig) with clang-12, clang-11 and clang-10
>  - sparc (allnoconfig) with clang-12, clang-11 and clang-10
>
> make --silent --keep-going --jobs=8
> O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp ARCH=sparc
> CROSS_COMPILE=sparc64-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> clang'

I don't think anyone has successfully built a sparc kernel with clang,
and I don't
think it's worth trying either, given how little upstream work the
sparc port sees
overall.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3Za8N2-Hs02nG0CcGJ%2BRcTrR0UqDOesd8E6PmhYRR2_A%40mail.gmail.com.
