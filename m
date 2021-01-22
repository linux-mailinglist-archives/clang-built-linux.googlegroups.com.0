Return-Path: <clang-built-linux+bncBDYJPJO25UGBBINKVSAAMGQEIUB5FXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id D83BC300AA0
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 19:10:42 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id g14sf1457551qtu.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 10:10:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611339042; cv=pass;
        d=google.com; s=arc-20160816;
        b=pKtKARum7KG7wNaJzORxQZzXkRQYidhlDK/gznDPm8y48gr1NwkOpavPwmtLtbYmbB
         GqfXyE0dbJDP7EpHPVVpRAr9/aVgxjfo83FmExoklMSH/mm4XdW417Mkk8DT4C3H/xoK
         ioiFhjHk0TrZFQfDiRvnS9IjB57hPFdPljUj9eBaL9mxDouurIYqOJ3cHSSFztlK5F8e
         kIiqDAfFtDRj+ASlW2w32wBrfnZloswWG0pZ2CIc+bXilEjNPV5QdyZiwR66x2D4LO1s
         wueXF4xxFjfKXJR/jQlIRUbFq2SzJZ61kQO8p87kBGay0JNkWsztpHw0AL65OROYEmGy
         Dwiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=eOVVO2URE38YzKpx2svamXIcfETIoTvmR5lk1h3aQ88=;
        b=ePAbaOeAUkDGffGeVwlnWw/TroqSXZn9RncPDwybh+zh1AALXOz4/iQ9SbZR/sIYqm
         +Sf9NXtyLFxheZgguGVz9Ya62duiU4p5UtSO+EBxbsAprNP0QzQjXahhNjZD7t+tfavq
         qBLNTMXvJy6S2lcoQy8JtZT9H/PUS2bqY92diJXGVewiQN7mKa193Lf9CNIRSX5+BMEr
         jb+xpkkmiOKp05eYqW2QzCrP/G5QsERJX7jvintBOn/trtEGBiyQ88MEmwBuUDGQZfVh
         XZAmD/Ms57qSzOW/Dk6KDdBduR1Pk4Y3iGHWrVhpqQgkc04AG+nNnjQJGsF9Nvvd9o+x
         YQCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=C4jkq5xm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eOVVO2URE38YzKpx2svamXIcfETIoTvmR5lk1h3aQ88=;
        b=gnGdCr8Z9D+bwGeWvma10UiKO8K/FbFVjnxxblwd9C0sPJFarAXtmWBClH/UNkLlWY
         GldRsfOabskQU8rq1FJP0YIrTJ9Hu77eahrCdGH+OlUFCp0p29M1ZosFQ5GDbLdRE+MJ
         6Bu/sST5+Y1BizahjL/6jB2cvztf99PIF7GkS/4Ue0dO4Bpg/BQiziJpjG+O+Zp6Gxqr
         FK4k2KCNKvNS3Msj5U69bFIz7HZWbGxHs1zUZ1d5f7MzCfaA7AsDSFnTVugv/iMo3Ibv
         FLlQRpCOg8EJSewlnVeJnLYMTXLjLN1hCgsN0oYzUAre1nloTKR8pg6P/TQs9aF9KBh+
         NOJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eOVVO2URE38YzKpx2svamXIcfETIoTvmR5lk1h3aQ88=;
        b=tpN+dhwLNxF1rMEQaoFijzZNaj9ybzDGuV5PpP4ZDsuDTcE0yy3ltQm6JOTdc/omAf
         g5RiL6+PLXpCSFpdaO1ISjGyN16aZDkvEyFN3M9ElL7vPAkQYIKKLNBQoq2Z3U3Hdj1l
         6Ntq47BqSz7oB0DxeeMc/ZPyado/JktyCTLAsENF1KAj0GYLtLtLb/OiN+gpJGh44hML
         BXVGnOMb5yC2MIMyWSA3qeOUAd27OXfgNf5xJd0fmrJtvlKyOilQASSUzLCP33mrpWeM
         NWGAAUeylqcEqYEDvAg6yrc9Yhb0/kyTNa2PT8cqKyHENVp5J6Hd0//QQjuJgaW7K1EO
         Hn6Q==
X-Gm-Message-State: AOAM530M8BEA/eKUQtNI7gvtQ54SEz3CjZafYtjHyRMlljAxT2JyBJ79
	RuD7b7a/72KDrUEA7G1qk94=
X-Google-Smtp-Source: ABdhPJxhB4C0AqN+zZ7X0MfNOJqCwdBTfsLrILIRv/kmkr62/TxWeMIWgwDCz8VNkXD8jt8mDgADMQ==
X-Received: by 2002:ac8:5483:: with SMTP id h3mr5381943qtq.289.1611339041952;
        Fri, 22 Jan 2021 10:10:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4816:: with SMTP id g22ls2476585qtq.11.gmail; Fri, 22
 Jan 2021 10:10:41 -0800 (PST)
X-Received: by 2002:ac8:7259:: with SMTP id l25mr5456129qtp.1.1611339041562;
        Fri, 22 Jan 2021 10:10:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611339041; cv=none;
        d=google.com; s=arc-20160816;
        b=CXGKXeK1kvsBCLXsBL9VB86FU0W+4kVfpFxw77MRwaR7/u2beza7gXs7vF7dsuisFU
         A8j7utTW20lml9s1Zsp1WL/Lo6Z2HbVvcA7P7x42EZmfjQjH/LBIhuSoXeKRL6heyUXX
         L6cDDrvP1Mxc8LHp4y06ImeZv1nHCViYGnyyjX7Gehz3sfFRemJKem+4nh1RX9bzLAxD
         31pArLHxj58wt8348W56XH0+TWDy2avqabxgEgJT7VbWKoiBc3cDHY2f75QSo0wbUNUU
         8Z9Syud9btC3uNM+zU1tv8AS8hpajPxAvk5i5JYHO1G7LnfXwcfuJqYWH/QC4s5Xvx87
         Cmiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=onXgfk50DtN3v5QEyv/WEjxxRRdvu/axfAB5ohqM2OM=;
        b=XumlChz903MK7E/sxiaMVaqI1Dc5nfHipMlPajIT6OlRC38ddFU5nU716Nskw4gr8O
         86thCiQB0FCYhHCe4X7st7ljM3bSa9jdU7FsaqpnDkqkNMIsveK5GGagzqzR3RrIvi4+
         7S20BlXj9eGbbd6WQ9Z4vCo4ft9KkGRichC1T+pYrftTcBIA1DlZxFmZSay5vJsBTb8H
         STfVzEbP2ryF5ytKVP2PZ2FzHiRugxeKURBeezTCKKsPY0eyMJFa3waLjRHOIgVcEnjD
         mnBC6CVB7+wdL0vlLb+/ofDOQs1H8mXf4oPBaNbqzR6ZZR2I9QG9NmHmZz1SZk+edHhE
         UPhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=C4jkq5xm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id a26si60999qkl.1.2021.01.22.10.10.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 10:10:41 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id 31so3719634plb.10
        for <clang-built-linux@googlegroups.com>; Fri, 22 Jan 2021 10:10:41 -0800 (PST)
X-Received: by 2002:a17:90a:9915:: with SMTP id b21mr6730628pjp.101.1611339040406;
 Fri, 22 Jan 2021 10:10:40 -0800 (PST)
MIME-Version: 1.0
References: <20210122135735.176469491@linuxfoundation.org> <CA+G9fYso4QNbRWdrQiiOiMb5RUr8VtM3AkKEGLasgN+KsPSvDw@mail.gmail.com>
 <YArqULK9c1Cnt5gM@kroah.com> <CA+G9fYuzE9WMSB7uGjV4gTzK510SHEdJb_UXQCzsQ5MqA=h9SA@mail.gmail.com>
 <20210122153604.GA24972@willie-the-truck> <20210122154246.GA1308786@ubuntu-m3-large-x86>
In-Reply-To: <20210122154246.GA1308786@ubuntu-m3-large-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 22 Jan 2021 10:10:29 -0800
Message-ID: <CAKwvOdkaW3abbZOzf4zj=e2OcNQKiAgc4afnxFcFdT3Di8LZUA@mail.gmail.com>
Subject: Re: [PATCH 4.14 00/50] 4.14.217-rc1 review
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Will Deacon <will@kernel.org>, Naresh Kamboju <naresh.kamboju@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, open list <linux-kernel@vger.kernel.org>, 
	Shuah Khan <shuah@kernel.org>, patches@kernelci.org, lkft-triage@lists.linaro.org, 
	linux-stable <stable@vger.kernel.org>, Pavel Machek <pavel@denx.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Guenter Roeck <linux@roeck-us.net>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=C4jkq5xm;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c
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

On Fri, Jan 22, 2021 at 7:42 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Fri, Jan 22, 2021 at 03:36:04PM +0000, Will Deacon wrote:
> > On Fri, Jan 22, 2021 at 08:43:18PM +0530, Naresh Kamboju wrote:
> > > On Fri, 22 Jan 2021 at 20:38, Greg Kroah-Hartman
> > > <gregkh@linuxfoundation.org> wrote:
> > > >
> > > > On Fri, Jan 22, 2021 at 08:32:46PM +0530, Naresh Kamboju wrote:
> > > > > On Fri, 22 Jan 2021 at 19:45, Greg Kroah-Hartman
> > > > > <gregkh@linuxfoundation.org> wrote:
> > > > > >
> > > > > > This is the start of the stable review cycle for the 4.14.217 release.
> > > > > > There are 50 patches in this series, all will be posted as a response
> > > > > > to this one.  If anyone has any issues with these being applied, please
> > > > > > let me know.
> > > > > >
> > > > > > Responses should be made by Sun, 24 Jan 2021 13:57:23 +0000.
> > > > > > Anything received after that time might be too late.
> > > > > >
> > > > > > The whole patch series can be found in one patch at:
> > > > > >         https://www.kernel.org/pub/linux/kernel/v4.x/stable-review/patch-4.14.217-rc1.gz
> > > > > > or in the git tree and branch at:
> > > > > >         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.14.y
> > > > > > and the diffstat can be found below.
> > > > > >
> > > > > > thanks,
> > > > > >
> > > > > > greg k-h
> > > > >
> > > > > arm64 clang-10 builds breaks due to this patch on
> > > > >    - stable-rc 4.14
> > > > >    - stable-rc 4.9
> > > > >    - stable-rc 4.4
> > > > >
> > > > > > Will Deacon <will@kernel.org>
> > > > > >     compiler.h: Raise minimum version of GCC to 5.1 for arm64
> > > > >
> > > > > arm64 (defconfig) with clang-10 - FAILED
> > > >
> > > > How is a clang build breaking on a "check what version of gcc is being
> > > > used" change?
> > > >
> > > > What is the error message?
> > >
> > > make --silent --keep-going --jobs=8
> > > O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp ARCH=arm64
> > > CROSS_COMPILE=aarch64-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> > > clang'
> > > In file included from <built-in>:1:
> > > include/linux/kconfig.h:74:
> > > include/linux/compiler_types.h:58:
> > > include/linux/compiler-gcc.h:160:3: error: Sorry, your version of GCC
> > > is too old - please use 5.1 or newer.
> > > # error Sorry, your version of GCC is too old - please use 5.1 or newer.
> > >   ^
> > > 1 error generated.
> > >
> > > build error link:
> > > https://gitlab.com/Linaro/lkft/mirrors/stable/linux-stable-rc/-/jobs/980489003#L514
> >
> > Urgh, looks like we need backports of 815f0ddb346c
> > ("include/linux/compiler*.h: make compiler-*.h mutually exclusive") then.
> >
> > Greg -- please drop my changes from 4.14, 4.9 and 4.4 for now and I'll
> > look at this next week.
>
> That backport is going to be pretty gnarly, there was a pretty decent
> tailwind of fixes around that patch IIRC.
>
> The simple solution would be to stick a !defined(__clang__) in that
> preprocessor conditional so that it truly fires only for GCC.

I agree with that approach.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkaW3abbZOzf4zj%3De2OcNQKiAgc4afnxFcFdT3Di8LZUA%40mail.gmail.com.
