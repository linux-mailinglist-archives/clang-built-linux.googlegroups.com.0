Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB4N7Y6KQMGQEIYYLZOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 364C6553594
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jun 2022 17:12:51 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id e195-20020a6bb5cc000000b0066cc9ece80fsf7769952iof.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jun 2022 08:12:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1655824370; cv=pass;
        d=google.com; s=arc-20160816;
        b=p61c7QaPNoRlobLu6ocboN2Pynnkn3uoHQUqOqlFEXTe8wgXvkcHbNzUp2UukwHyD3
         ACescgVC5Z6idgQNgd42VEYM+stghq3kvL9d6O6AM/QBtpt3q61BXoGLb6Mn/cJxkres
         QF0lK/aZQaeDgDLM57vzfYnjWPAm3Mwnugm7Zs94x9G8PDsOGv6DJyiiXnwsh44jvPdA
         DRYT3JAz7MrNDEmyKimiV4T+tZ4RJ0qTXY59GzdBdFyRWx7Ty0otMS0R9YPOhu9nyxhS
         xk9CCwo3TNuZloCiFaBhMSuQ8TooxX6VnI0aW7YNNfAC2Z9Vok4wgTE291oRx7QpWuSF
         E9Vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6bnfZogXSn0yTk61AVNmyoAEyqmy6kxoIJgU2d8ScZw=;
        b=uhU0/psuG3cvhjIRdLFiE4yW+HVuD/cA04T0Sh66S+vxKDzBX0yTg6Fp/PrTIAUlpO
         3195wnP9R+7NF96+yOMDW46IaSXkwaQ7TdTVhMKnHOHnlOsEGSQH9kOxf0MK7M91GGCq
         gJ+xboxNici6mrPc5NWUhMiMG2pZ3zCVkmTUWzIQNpnB/jzR0a4hyir5vfW4o3huDLyu
         Evs3q53aEW3GFgyMvjWkWJa/5t/y/XKwl/bLEo8NVO3cTSwoDTFhKYsrbeoKfusCcgGq
         XfBiASWq+Com82vAnS3Z4d62rrs1KqRbdMvbIad4jzUMtR5djaXtl9lJkwFh5uX6Y6I7
         5XdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=w6nBDsLT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6bnfZogXSn0yTk61AVNmyoAEyqmy6kxoIJgU2d8ScZw=;
        b=RnZcZGzRXrnU0bOx0wEVcGKDmCYsmOsdcCLcp8NmcB1zLEh/XLFxBiGH1ITT70InBj
         cJ5hoitRjg4za2GR42GYAOdM2OpD+8DYDYu3F6Bq/JUvT+AihcD+54DdZ9OBlVO5sLgw
         YRJ6i7Ybt3RgIADwQlFnUe3Wcm3picQH5x0awZN3Zt3J4wb8sXGzGrCXH0RObhTh82oX
         Y3jC+/pKLJu/pmo2FCEKDndl7K1+0kzwD+5dvDYb8nd72FKpf+c/uvAtZoVbvP2MwmDC
         /u5DzPoNxxUmFbV9Q9nZPo7CW09YzeUr2mRcwlkK54BijEHlsVygGM/s6AHTjg4/r3N/
         XXRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6bnfZogXSn0yTk61AVNmyoAEyqmy6kxoIJgU2d8ScZw=;
        b=dhJB1HC5BAPgIESi0QugzI6UWrKUrGSWsel/PnroANHc6G/YaEiMMBrxlHpvQ3cXN4
         K4zS+hDEH2iPqUsxEPjPJHyzqo5YdyM6ykNJLaVljwDe1GLSWBLc5jtfgfOtVgn2oenR
         EXnAK8rY0q559a9vMkh/RFVKTp5PhF0IHFydptT6zoZOgieqwWg4HDElB1xJKUt9i6Ne
         KPWzsyujXlX4cv0q26yNV6m03sXgYKU1i8FRJl29NiovGEyKHrez6q1YXdVK9f3wpg69
         /pAhwm23lFcRChjpITyafUoiIyJlzOLKgq9a2Ah9u4JvFKQzlnoHUdGYrBaQ9qibRub6
         sFvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora/1Uh3G9XI4LjTC7c9DGgQs9ixDWIss+7uyPnXFRwtnb/PghhU4
	ISR2Sn7kJ7QGMyReu3XyhAQ=
X-Google-Smtp-Source: AGRyM1tOWVa+kbw6qtlj2NbZvN/VWsDHjm6uWIg4lDf/cGSEdlC9i4Ob4abKBG+0ujD5ZnqhUI6UmA==
X-Received: by 2002:a05:6638:1242:b0:339:d42b:1875 with SMTP id o2-20020a056638124200b00339d42b1875mr303122jas.8.1655824370026;
        Tue, 21 Jun 2022 08:12:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:2243:0:b0:331:ec7b:5891 with SMTP id o64-20020a022243000000b00331ec7b5891ls2392998jao.9.gmail;
 Tue, 21 Jun 2022 08:12:49 -0700 (PDT)
X-Received: by 2002:a05:6638:42c8:b0:339:c4d0:431b with SMTP id bm8-20020a05663842c800b00339c4d0431bmr3197847jab.125.1655824369549;
        Tue, 21 Jun 2022 08:12:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1655824369; cv=none;
        d=google.com; s=arc-20160816;
        b=ulkLDpXG15ZaoO/UvrKRNCotQK9436FYN6qkdWVWm/mEWV6U/9obySyVvQZN/aS/Y3
         BY7P1pXlkZk2mVdrYv83v3qihtSj/zKjFWJPU2YmfLlwAbHPzPoCsXh4emZjoD1SXKp4
         aFe8L3CXSgsRIquBD04aCJi7uSu4DKGDIYmO7l4VsBXgh5kNWTRzo/d6U97Q99VVAXBW
         XkJebOMXQRt9JICRLMpPSly3I1gEif46mcdIHuDbWdCrlSjzzCnGniKGYNNW37OkxKah
         LnUU5PMrL7A3ZVK/gp3SQmT690/huH1Tzyc8hTY3jp1Q0AZMajssXWiE0OkkVxOy1U5k
         u+fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=04B8JCKoW1h1aAkIME6d+rIwUAwudSfG+isBLqAfcYg=;
        b=jti4DEsxwlU8j6GmTIROLUwwuYlgczhqXj778VuNKYpjU28sEa4jZh3Wz7l65cqh15
         RggsDd7oarO8fm2GFKVbVomIxHuCyWxaDI1Lu9tD72mGu3qdghYpE8eyjr1txF2I/Gw8
         z6Zbgu1+Z/hujZRZNgZx3+pS5xX38+PWV81DO/vwtqC6ZFoOSn8W7xQdzdowmSRndnMt
         nd/g3q+FNpn7Lhm1/PuQnvVyCaQu8svx+NNOmfDBDmOBgy0sLL+CrUqddBxHuJGfgfDb
         /6wP8tocJlz98QeVFel6mWwwSiDjUQ9xcbdgxD5y98XdlcXJXPSJ8gPwryeaOEcnKS+F
         nEMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=w6nBDsLT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by gmr-mx.google.com with ESMTPS id cs26-20020a056638471a00b00330ebfb4c33si970747jab.1.2022.06.21.08.12.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Jun 2022 08:12:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 3DA9FCE1AD8;
	Tue, 21 Jun 2022 15:12:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF077C3411C;
	Tue, 21 Jun 2022 15:12:44 +0000 (UTC)
Date: Tue, 21 Jun 2022 17:12:42 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org, akpm@linux-foundation.org,
	linux@roeck-us.net, shuah@kernel.org, patches@kernelci.org,
	lkft-triage@lists.linaro.org, pavel@denx.de, jonathanh@nvidia.com,
	f.fainelli@gmail.com, sudipm.mukherjee@gmail.com,
	slade@sladewatkins.com
Subject: Re: [PATCH 5.15 000/106] 5.15.49-rc1 review
Message-ID: <YrHf6j/9ZvBWaNRd@kroah.com>
References: <20220620124724.380838401@linuxfoundation.org>
 <CA+G9fYsvY-0ub_CXbb5is0vRLQ9+SaPS8Op=9mZzCkeccUN+mg@mail.gmail.com>
 <YrGHheX8D0iIz+db@kroah.com>
 <YrGTT/MLbCuHanhB@zx2c4.com>
 <YrGe64z7Al+V3bvB@kroah.com>
 <CA+G9fYs7+kA6pzCZZNBxrwx-2-OFZfV+5Zk4B8a=uE=VUFykFg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYs7+kA6pzCZZNBxrwx-2-OFZfV+5Zk4B8a=uE=VUFykFg@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=w6nBDsLT;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Jun 21, 2022 at 05:06:08PM +0530, Naresh Kamboju wrote:
> On Tue, 21 Jun 2022 at 16:05, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Tue, Jun 21, 2022 at 11:45:51AM +0200, Jason A. Donenfeld wrote:
> > > On Tue, Jun 21, 2022 at 10:55:33AM +0200, Greg Kroah-Hartman wrote:
> > > > On Tue, Jun 21, 2022 at 02:06:06PM +0530, Naresh Kamboju wrote:
> > > > > On Mon, 20 Jun 2022 at 18:36, Greg Kroah-Hartman
> > > > > <gregkh@linuxfoundation.org> wrote:
> > > > > >
> > > > > > This is the start of the stable review cycle for the 5.15.49 release.
> > > > > > There are 106 patches in this series, all will be posted as a response
> > > > > > to this one.  If anyone has any issues with these being applied, please
> > > > > > let me know.
> > > > > >
> > > > > > Responses should be made by Wed, 22 Jun 2022 12:47:02 +0000.
> > > > > > Anything received after that time might be too late.
> > > > > >
> > > > > > The whole patch series can be found in one patch at:
> > > > > >         https://www.kernel.org/pub/linux/kernel/v5.x/stable-review/patch-5.15.49-rc1.gz
> > > > > > or in the git tree and branch at:
> > > > > >         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.15.y
> > > > > > and the diffstat can be found below.
> > > > > >
> > > > > > thanks,
> > > > > >
> > > > > > greg k-h
> > > > >
> > > > > Following commit causing regression while building allmodconfig for clang-13
> > > > > on arm64, riscv and x86_64.
> > > > >
> > > > > > Linus Torvalds <torvalds@linux-foundation.org>
> > > > > >     netfs: gcc-12: temporarily disable '-Wattribute-warning' for now
> > > > >
> > > > > fs/afs/inode.c:29:32: error: unknown warning group
> > > > > '-Wattribute-warning', ignored [-Werror,-Wunknown-warning-option]
> > > > > #pragma GCC diagnostic ignored "-Wattribute-warning"
> > > > >                                ^
> > > > > 1 error generated.
> > > > >
> > > > > Regressions:
> > > > >   - arm64/build/clang-13-allmodconfig - Failed
> > > > >   - riscv/build/clang-13-allmodconfig - Failed
> > > > >   - x86_64/build/clang-13-allmodconfig - Failed
> > > >
> > > > Does Linus's tree also show this issue?
> > >
> > > Linus' tree got rid of the pragma with:
> > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/fs/afs/inode.c?id=874c8ca1e60b2c564a48f7e7acc40d328d5c8733
> >
> > That isn't going to work on 5.15.y at all without a lot of hand tweaking :(
> >
> > > and then a subsequent cleanup:
> > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/fs/afs/inode.c?id=e81fb4198e27925b151aad1450e0fd607d6733f
> >
> > That doesn't work on 5.18 either.
> >
> > I guess I'll go revert the 5.15 patch here for now and let others sort
> > it all out when they want to build 5.15 with gcc-12.
> 
> Whereas clang-14 builds pass. I am considering this as a waiver.
> The problem is with clang-13. you may keep the above patch which is
> adding support for gcc-12.
> 
> We will stop building with clang-13 and we will upgrade our toolchains to
> clang-15 (when released and current clang-nightly builds are in production)
> and gcc-12 builds are running in staging. We would like to bump versions soon.

No, for now I've dropped this.  If people want to run gcc-12 builds then
I need backported patches for them.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YrHf6j/9ZvBWaNRd%40kroah.com.
