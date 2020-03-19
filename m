Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFMTZ7ZQKGQE2VOJFZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 990FE18C079
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 20:35:51 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id r42sf2371780pjb.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 12:35:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584646550; cv=pass;
        d=google.com; s=arc-20160816;
        b=qn/eLkmRK1vpOlIsDkitCSrsvOZdWXE23PQjr0ZsGu9CCHpiRTwDzi4F+g6clKz6ec
         fWbOtsMD+s1HslHxw1o5ZJm+koRqrvIAAECDauQai8UIasroUUcXnd2jZZoEjj7A0w+U
         xMd/GwsPLH9CG5hfcuPb1JIDVsHClFfBuP5IZuFZY9/28XwbLM0SHFrC+09P5ZKEuDWx
         AyPgvuXrkmQRgM34DHALYCqumWZlltTXrAiTUE2d0bzA/zAoUfAOdssVREZ0qOcHSjjG
         xwkLROy7Ko+V7bMCg1wnuPdo9bX4Ku/GlwZel7fc2Bb8I05LHepHV6cTicEEKyVNWpwt
         25PA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wSLrSndNSX+VICZLZu5tmp9j/KnXxHx0UIDycIG0G2s=;
        b=ebGHrQTBXfXDQ2VhmPhRFdVlzeqtB8OJNhxSccoKVZ0/MHxWWnyxZRIGBar+AVcm/N
         fMDiu5i5aONf97uVIHlZcM+hA1uP5uzfKOsB99Ios+hfpWoVu/6nR/+3g/8kru9EiehX
         GIQGcEWoo3ZGpgJW0QEGJqotpJPzNlAaDa4VtqM2Si6B+I2gvmd4rBaJ2tmjpHYKM9Oh
         TFTOVZWTu5yLmwHnjqVQzE2BrShgI2Fi5qPPFRCDWU3q8zfGCGdYH84f0gMfl9x6bb3O
         YZOP97DOZIGGRzRS5wQkfhp0hVDjYkBlJvY/ELso4DnLWE50Gw4+kZaDMhrGESd2WKbX
         V1aQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vN55EE+k;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wSLrSndNSX+VICZLZu5tmp9j/KnXxHx0UIDycIG0G2s=;
        b=qHZgaSsDyKU+TWg8F10Nsz5eRDF5PRRebEAa16KsTVWAwGt7Tvr2ve39LtYUwvEy5Q
         cinlcV7UI2McDRUbVQX4aofasQ62yAPdzPGMQw/8QRIrgtO99KoImRuMRejw34Bdncsy
         NMQdUbCIcXWMprwSPpjKjeHgH4KJtHcI/VooF8obGEug2vmw5IKO5gJJnEwtX9K1o7IZ
         ioY7j+f0MESBI1PAukY0JGK3XmPIMmbf2N/e+9+Jr/HVuct8Yobc6vwiOJbNW1ArhBpl
         xlsFOZLUrL0uON5HoOi/VG1mBonRk6NMzvYbyVVmee1wzkLoIbm4ukzPllCy5W49wgr5
         4pQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wSLrSndNSX+VICZLZu5tmp9j/KnXxHx0UIDycIG0G2s=;
        b=Aa7fDvzF18/y+MvjSBZGddq5rH/o4YtkMC+4HLex4YAbP76M/76je7bVu0HqDqXWGD
         FQGfFa1Ebl9ZPXGRoVUDG6HuNlL1A5Ay2PRtQbVcK7KJCGmfBxeAN25K3j0De90lPwK9
         X5nrTUWuoNTflXojHBRJaoSu0kPQmQtjitwPqTOcS9B5LYsXLwWXQvOuB261HBTj3X8L
         zLiulNHhEpBaMlgEtso0+P1nkYI1nrP4vlckcoJxiZTfdn6Uw2r8iVFTeO8+R0Tc/KVc
         SzZbYc1w+SoBxACQhbTTjEmCeSVpN4QJbi0UDrYOT06QEBm8PF1zDKpHp1tPK7Ut9Jps
         UYLg==
X-Gm-Message-State: ANhLgQ35XGdPZWX5BUGQ5wxegYXiX1SDR5OSXZQMCLsWiKnx0xrvFaTl
	Q00ivBt/4kzy0z8HzTC+dDw=
X-Google-Smtp-Source: ADFU+vuCw+NPWCiAsz35ziFISw561tql2uuws6UEJ9wxPL2qNwdp/4MqniCsC6+01ggaEQaWyiVHlg==
X-Received: by 2002:a17:902:ed11:: with SMTP id b17mr3560443pld.322.1584646550013;
        Thu, 19 Mar 2020 12:35:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9e2:: with SMTP id 89ls1865240pjo.2.canary-gmail;
 Thu, 19 Mar 2020 12:35:49 -0700 (PDT)
X-Received: by 2002:a17:902:464:: with SMTP id 91mr5038254ple.261.1584646549541;
        Thu, 19 Mar 2020 12:35:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584646549; cv=none;
        d=google.com; s=arc-20160816;
        b=ayniVJ5IWMPel2KIJ/WE8yDWzgT0d2lsYCUf8HVva3acnRth3YO0iehM6jY5a3RF/O
         fm1R2JkHIEtXtqRRC/Y+mKD1nj9wjokATJOE9porkpw4/bDkK7Y3iuDMQXsGINZNaGTE
         c13ZVlPRikTajN+TDN/G3xBSKLvoUXS9IThMAM6BQ3LC0Z76fdrdZizcnSEt82xGilis
         1FK/dWF3Wf942CKX/aAFPsCuyptSZ7VryEDEM9aR2PC8xahwl+OBOZuYpmv7CJAXTVuO
         mTxMuJpRHRiX48e3ocx8xLKsn5yrW0tenzsdfgWk3ZVyd4IQ/+e+0mXwSytKhZA49GSs
         M/pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8pdir9x+wdKoEuLPd7LmgW9C9AvqaPbtH0Z7MhqsS6U=;
        b=pFlKJ4jBZvP8V/4HvCWTCJ0TzHb+G2fXUxMG9gr/6VGaf1N3ds7VgmSkmZfx2TRSOi
         cJh+sWwQWwjEAewa+ne4M7XYfd1TJ1d4771LiO205HgINEuNmKA8xv2EJAUUoa+s0kAz
         KIdZjCL/MCpNghF0BM1DcYDu3cT2J9S8/E3Cwhax65oKAdIAXO1h4kT70XvfCheIUM69
         KGmBRoChx95dXEzKx9kqsHTWnAvChi30XcJL5bWR4f7sshuFUJ4EX7LKufhp/2DFeN53
         GhstEHbKhCyR4DGNj/dNSE+lc32OXMaB7vjz7pDhVVWrQi/26ZPZjkkU8YKMLlfIGygG
         5sTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vN55EE+k;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id r11si187979pjq.0.2020.03.19.12.35.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 12:35:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id m1so1483503pll.6
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 12:35:49 -0700 (PDT)
X-Received: by 2002:a17:90a:9a90:: with SMTP id e16mr5448502pjp.164.1584646548634;
 Thu, 19 Mar 2020 12:35:48 -0700 (PDT)
MIME-Version: 1.0
References: <CACT4Y+ax3BuO7kNofmTWoTKtZ1O0-6KbnKMrWxPviJom+2wngQ@mail.gmail.com>
 <CAKwvOd=kSrNTdYiXWDLgqPoaZas5FddbM9XQHc=P=se3e7X04Q@mail.gmail.com> <CACT4Y+agNoC5zUtHjBniZAjA+JRrYnwUQ8TmJ6-SVFoC50HbJw@mail.gmail.com>
In-Reply-To: <CACT4Y+agNoC5zUtHjBniZAjA+JRrYnwUQ8TmJ6-SVFoC50HbJw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 19 Mar 2020 12:35:37 -0700
Message-ID: <CAKwvOd=+Hs3Mpe04aCQtMvMw_i6VKmtzztPe41E_hEX9mfzjBQ@mail.gmail.com>
Subject: Re: some clang miscompilation again?
To: Dmitry Vyukov <dvyukov@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Alexander Potapenko <glider@google.com>, Tom Roeder <tmroeder@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vN55EE+k;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Thu, Mar 19, 2020 at 12:31 AM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Wed, Mar 18, 2020 at 8:45 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Thanks for the reports.
> >
> > On Wed, Mar 18, 2020 at 4:26 AM 'Dmitry Vyukov' via Clang Built Linux
> > <clang-built-linux@googlegroups.com> wrote:
> > >
> > > Hi,
> > >
> > > We started seeing massive crashes on one of syzbot instances. You can
> > > see 2 examples below. The rest are piled here:
> > > https://syzkaller.appspot.com/bug?id=d5bc3e0c66d200d72216ab343a67c4327e4a3452
> > > (search for "ci-upstream-kasan-gce-smack-root").
> > >
> > > This happens only on the smack instance. It's the only instance that uses clang.
> >
> > Can you please enable more bots to test with Clang?
>
> What are additional configurations you are interested in?

We're testing:
architectures: arm64, arm, x86_64, mips, ppc, (s390 and riscv in build
capacity, not yet booting, TODO)
trees+branches: -next, mainline, stable (back to 4.4)
configs: defconfig, allmodconfig, allyesconfig (defconfigs all the way
back to 4.4, allyesconfig only more recently)
clang: ToT, latest release

The more coverage, the better.  I understand the limitations around capacity.

> It's not exactly a unit-testing system, using it as unit-testing is
> expensive and breaks production. So far we've seen 2 breakages due to
> clang and 0 due to gcc. If we switch more instances, we will also need

Syzcaller has never found a compiler bug in GCC? That's surprising.

I thought the one clang bug you identified was due to using a
pre-release version of clang-9 (was ToT at some point) which had
already been previously identified and fixed?

What was the second bug? This report? Are you sure it's a Clang
miscompile at this point?  Are you sure it's not undefined behavior in
the kernel somewhere?  Feel free to say "told you so" when we get to
the bottom of it, but I wouldn't be so certain at this point, lest
someone tell you "told you so" otherwise.

> some dedicated people ensuring that they work. I think eventually we
> will make half of instances use clang/half gcc, but so far clang has
> proven to be less stable for the kernel and we don't have these
> dedicated people... If somebody volunteers? :)

Doesn't syzcaller generally have this problem? People working on
reporting bugs, not necessarily fixing them?

We're here to fix Clang bugs; if we can find bugs that appear only
with Clang and not GCC, then yes please send them to our list.

FWIW, I'm a big fan of go/kernel-disaster and go/fix-linux; I'm
drafting up a similar doc along the lines of "maybe we should spend
some money and fix this" but more specific to Clang+Linux.  I don't
think phrases like "clang has proven to be less stable for the kernel"
are accurate when your sources are weak, or will win you a lot of
volunteers to fix bugs reported by your tool though.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D%2BHs3Mpe04aCQtMvMw_i6VKmtzztPe41E_hEX9mfzjBQ%40mail.gmail.com.
