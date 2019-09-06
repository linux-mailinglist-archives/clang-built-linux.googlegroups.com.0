Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7ODZLVQKGQEDSJGZLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E1CABF38
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Sep 2019 20:14:23 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id f71sf5196802ybg.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 11:14:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567793662; cv=pass;
        d=google.com; s=arc-20160816;
        b=hM4qRzablDCOT3kgjgr6+1aYWzCAb9n8O01KDPJQWruoCAUPgaXLW6DbRqM+KY1EQr
         OJItpGf+2IIE2XtcL+s9AlmSSI/nlDj9N+pJ7Yxd9JeTULSAjaqR28HfNnMufig/+Ym+
         UGMRJgOxrhUgVIcFVzw5cvoUhZIPBczNZePPe9MBBh05psKTqWruU+McXeBnfPejzi9V
         way5YU/flyruTlimd6Sg8XeoN3LCFpboYMvn9znopOVip1yxYp1RpngYqljjTb+kjK4G
         iMc6u0GRYXgy0oSyx5uC2ysqwlasui3/VcumzCaq3g5T89w8UVWE9tYfb4KOi1csMrgH
         vpBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ri8G+pg5zlHc0xXdE91sx+CTydzvqQE8kMheDjSQ4L4=;
        b=t1Ier8upgH8pGeTRXd1nqVDUWjsYlnMMqyOnyM/Bfni2Ny8K8/o5AL2qPOeWGtw9v8
         RS1uVsjwlpGNot+EmB1uDhjYt3crHiaPT3ZTmqrCdLRvPBYboiHK1CfDaH+rNpM7rKOB
         UYlAacFOWEnLiaHjWR8tz8PJ/on3ld+R7ILDJixs3IzaOxn7XK/BRYyK+x6Bq5TmYRD2
         lVwdV+utWsZTsmny9I5v5YnaFOwC69/IOGsvU3hEETbZ1QwHGGjRRVfJ7ebD0QUcvXvc
         9gG/3fpggBdr3LGV7KSBR9WdF+obmz6nvtpfPPEtfFoPOWPzx9giL8q/oEiqumW/ghrH
         Dycw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bwGlTu37;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ri8G+pg5zlHc0xXdE91sx+CTydzvqQE8kMheDjSQ4L4=;
        b=gygZl6NR0/hsKBLVENhexSIViMh9CQmVZvh9LWdA94BaknH/zNhMwqXP3+iKOJQGPc
         HkoSSf7gLgF99SlPJd9za+y/vGuPEi52+AQpIR1IJwnrQxgSRVXAQ+qGfBt5pVrccebY
         JinS6GcCbcRNd9k5FSErW5EBqIF0VexxOC7NDniVK+jkZ+8hdYakS4kNBHCepTU/VgWN
         m5YyGyB2vE6W+jtXvqTjCs1Tp+O1+bZCcMfQQQzAbKc7Oh9BWsIL2pSXBmcge1RtWR30
         XbJdL5YfLDAtOfKx8PjRcwU3WHuUTWe79k7ehDZJiYCGIjlwH1zqvCrpwvfCLhIZDzYl
         ir/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ri8G+pg5zlHc0xXdE91sx+CTydzvqQE8kMheDjSQ4L4=;
        b=ffcNMwfOlODJ2PaQD10NTkqXMd8HjuJoYgzh8wS9z2uzNDMic+lkEl0LPts+CcUezI
         IZM9zdMVoMN2ow5vpsDCPmGXXsTqmTlvusjnq1N9/ybi/NQMX1DbQyXnTtHXyYZfna5W
         D+NtC49MDpv5adzpeVJ8JUawrervGwtrHfroEKkIQZreMgwFnqerXa+Q92+AX+R5nAVF
         uENL4ylaSv1RdXAioIug2rbuzd7++OtWJB0nfJQwkLPRIoVw6pWDz8DSfvA4XM376T0Q
         WGvhVOJvbnxyECI/vc1t+S5Wu5BCKaMONpvjoj3K7gqD6ee7JVe5vOgBXvBW0kWcXi4P
         W6HA==
X-Gm-Message-State: APjAAAU47sZ6o5lxMz6BlaXhyL2Fc7H9+i9zsGLwWD8SEIZOJtlPZkaz
	M7epGa3qD1waWL2Eyv2cLL0=
X-Google-Smtp-Source: APXvYqy+DoJAO5DEWID8VWjrQjqemTfArZlozS85eeohscy5T++ClbJqWCO/jjOrwtHmyaqSWpxhFQ==
X-Received: by 2002:a0d:c804:: with SMTP id k4mr7339805ywd.63.1567793662052;
        Fri, 06 Sep 2019 11:14:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ae98:: with SMTP id b24ls50596ybj.12.gmail; Fri, 06 Sep
 2019 11:14:21 -0700 (PDT)
X-Received: by 2002:a25:e089:: with SMTP id x131mr7897351ybg.406.1567793661805;
        Fri, 06 Sep 2019 11:14:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567793661; cv=none;
        d=google.com; s=arc-20160816;
        b=eY1yBkAe5DuXYJuOm+Eh+0e8QoLfq67G9xdys3xdDNPAiQS1uQopqLpEYgMRFqWcVm
         MTLMbJEdBytIv+gXJbd5mJZbVF09tnN93PEMhbNtpxT5WTba0dZzwsxcH5JUm2IbtpwB
         81m95BOYCvNlE88w9/0ri87hZd75YnRgyU90uIbHx4BntJiMuI6J5vVluRh+Z6/p+aP5
         71TWZaG8mD8TsvuQuWcKGlTlV3f39wrQqGCHLdUiQjp/2A0luRysn052XeX1c3lyMqM4
         mgkH++f1XaY3ym6RJ5yDvUXk2zw6f8A70CfPFOWM+PMip/oURTQWHlRlJGMnipFpTEB4
         DppA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IVmS35APPsvZEyHb/hkutEn/YX4Fk0dbgk2QnuIg6M8=;
        b=wH48jzNosGjdu6Ebm3RMkG0/WmFN4du0+kBM3LCefyDgUHoqMclLYRwMboZJaKZhWh
         0XUYbo8+4lRrzXxBCN1wTa8J0yQZPRTo8VO9uIB3GChbQZWwVdf4SjmQyTL+g+sQ71lf
         GZhEly2+0NjqpC/+mzF2c1UL4NGCYe6HbD4HfQYD6rxVhavs4jAtBe6BXMkIFOvAG1w6
         IBTG/FolyTZyTPkXh03/mLwhLD7g2iDivMu0QfPK8LZxLnQLEOlUSAFEng2oPJyxXxcG
         6ha0QIM1Tshc4v+efC3W02z1+VpwpkL7h1blHVreS1XCG+Yg4fZLaY3sFdYgb+cB+uok
         RYDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bwGlTu37;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id p188si261249ywd.1.2019.09.06.11.14.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 11:14:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id 4so3898679pgm.12
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 11:14:21 -0700 (PDT)
X-Received: by 2002:a62:cec4:: with SMTP id y187mr12206609pfg.84.1567793659699;
 Fri, 06 Sep 2019 11:14:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190829083233.24162-1-linux@rasmusvillemoes.dk>
 <20190830231527.22304-1-linux@rasmusvillemoes.dk> <20190830231527.22304-5-linux@rasmusvillemoes.dk>
 <CAKwvOdktYpMH8WnEQwNE2JJdKn4w0CHv3L=YHkqU2JzQ6Qwkew@mail.gmail.com>
 <a5085133-33da-6c13-6953-d18cbc6ad3f5@rasmusvillemoes.dk> <20190905134535.GP9749@gate.crashing.org>
 <CANiq72nXXBgwKcs36R+uau2o1YypfSFKAYWV2xmcRZgz8LRQww@mail.gmail.com>
 <20190906122349.GZ9749@gate.crashing.org> <CANiq72=3Vz-_6ctEzDQgTA44jmfSn_XZTS8wP1GHgm31Xm8ECw@mail.gmail.com>
 <20190906163028.GC9749@gate.crashing.org> <20190906163918.GJ2120@tucnak>
In-Reply-To: <20190906163918.GJ2120@tucnak>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Sep 2019 11:14:08 -0700
Message-ID: <CAKwvOd=MT_=U250tR+t0jTtj7SxKJjnEZ1FmR3ir_PHjcXFLVw@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] compiler-gcc.h: add asm_inline definition
To: Jakub Jelinek <jakub@redhat.com>
Cc: Segher Boessenkool <segher@kernel.crashing.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	"gcc-patches@gcc.gnu.org" <gcc-patches@gcc.gnu.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bwGlTu37;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Fri, Sep 6, 2019 at 9:39 AM Jakub Jelinek <jakub@redhat.com> wrote:
>
> On Fri, Sep 06, 2019 at 11:30:28AM -0500, Segher Boessenkool wrote:
> > On Fri, Sep 06, 2019 at 05:13:54PM +0200, Miguel Ojeda wrote:
> > > On Fri, Sep 6, 2019 at 2:23 PM Segher Boessenkool
> > > <segher@kernel.crashing.org> wrote:
> > > > I can't find anything with "feature" and "macros" in the C++ standard,
> > > > it's "predefined macros" there I guess?  In C, it is also "predefined
> > > > macros" in general, and there is "conditional feature macros".
> > >
> > > They are introduced in C++20,
> >
> > (Which isn't the C++ standard yet, okay).
>
> Well, they have been required by SD-6 before being added to C++20, so we
> have tons of the predefined macros for C++ already starting with gcc 4.9 or
> so, but it is something required by the standard so we have to do that.
> Most of them depend also on compiler options, so can't be easily replaced
> with a simple __GNUC__ version check.
>
> What I'd like to add is that each predefined macro isn't without cost,
> while adding one predefined macro might not be measurable (though, for
> some predefined macros (the floating point values) it was very measurable
> and we had to resort to lazy evaluation of the macros), adding hundreds of
> predefined macros is measurable, affects the speed of empty compiler run,
> adds size of -g3 produced debug info, increases size of -E -dD output etc.
>
>         Jakub

Here's the case that I think is perfect:
https://developers.redhat.com/blog/2016/02/25/new-asm-flags-feature-for-x86-in-gcc-6/

Specifically the feature test preprocessor define __GCC_ASM_FLAG_OUTPUTS__.

See exactly how we handle it in the kernel:
- https://github.com/ClangBuiltLinux/linux/blob/0445971000375859008414f87e7c72fa0d809cf8/arch/x86/include/asm/asm.h#L112-L118
- https://github.com/ClangBuiltLinux/linux/blob/0445971000375859008414f87e7c72fa0d809cf8/arch/x86/include/asm/rmwcc.h#L14-L30

Feature detection of the feature makes it trivial to detect when the
feature is supported, rather than brittle compiler version checks.
Had it been a GCC version check, it wouldn't work for clang out of the
box when clang added support for __GCC_ASM_FLAG_OUTPUTS__.  But since
we had the helpful __GCC_ASM_FLAG_OUTPUTS__, and wisely based our use
of the feature on that preprocessor define, the code ***just worked***
for compilers that didn't support the feature ***and*** compilers when
they did support the feature ***without changing any of the source
code*** being compiled.

All I'm asking for is that when GCC adds a new GNU C extension (such
as `asm inline`), define a new preprocessor symbol (like has already
been done w/ __GCC_ASM_FLAG_OUTPUTS__), so that we don't have to use
version checking (or reimplementing autoconf) and use feature
detection instead.  This simplifies use of this feature even between
codebases supporting multiple versions of GCC.

(Also, I'm guessing the cost of another preprocessor define is near
zero compared to parsing comments for -Wimplicit-fallthrough)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DMT_%3DU250tR%2Bt0jTtj7SxKJjnEZ1FmR3ir_PHjcXFLVw%40mail.gmail.com.
