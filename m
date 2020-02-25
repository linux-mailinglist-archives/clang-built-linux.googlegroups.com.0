Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7FP23ZAKGQEMX3757A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8A516F24B
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 22:56:14 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id k20sf1238766qtm.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 13:56:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582667772; cv=pass;
        d=google.com; s=arc-20160816;
        b=jiD0DTNCag2oumHLQZ6vWorXmfNIUSzZjmbMqpiQ7o6XK641KA2UHTbxpnYQDmGDZn
         NXCf/W4nxoewkGP0acbB2vlJtu+uuIsv/F2pK0HbmxqvoJUbU63PFyW1UGG1A2+Krltc
         oUD1TTlwZLENQfrTEw1IKJnugr3v4UTmFF74h5TIVR2SO/MWKzGQOlIhxy7bk1X1raxH
         ExhLeqbrsm43V67kTZW8pW2B1XhLv4kFHIkLZRSi/2/4o/vfDE99CgXNCQN4E8WzT7uw
         ChwMB5ATmKBOv04Tg7Q7Op1J0IduQRllbJYBJdE2RWhXcD61UVdNofZ5gvSAhrfASOJ2
         oxaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=b2IX9x2hflnf5ocLHFLDK6rA2o/izs/STA3/EvujWMA=;
        b=O50dUCU95peFXBGzIBvDju0htABOpEkpxvB01rPJVWt588H97lcCUA+HI80ma12CvJ
         XtDz13SikJHFX1XcseLO+loT53X8/d7GLQJZDau13GhOn5eQAN1yeCKvgPrnRF5g7mbA
         0CChCD3gBSGKVOg140l7Bu9nQabmejmp/hGBV+fPsQaDf3lq9EgjpzuZLaHKuBKgWBfX
         fqFVOU7ieP4YUgncmsUCu6Vh6tuC1xgfhudMOE8q2l4BZi/gAAZNvH70iF+B3m5G1dNd
         efmaTonAKFPLm4utZB4SQ3IunyFpVXjS06p9xcfN59yygf3x1ViLjxBv9SDcs9rnbKc/
         A8Iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fcql3YFv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b2IX9x2hflnf5ocLHFLDK6rA2o/izs/STA3/EvujWMA=;
        b=PeRTP2shtutkcaPzTN4P0AXh6M2gqF8RPDQXeHOfuPcWJtrChi2EANtu4QD/I5IB8B
         ct+b91DEKOflymIRC2XjzpbFASaDTd/APtX4XBRUJEFch/bEOp7OyH0EHF+6DIgaoyWX
         KTCkm6t1qLCgHkE8acjUCbUTZIej/sGBj5JAGF9i8056azwtvCScOoAuYdTsQUiQC5iN
         3kzMOqTzWXAsENLG95eJABbWbl3FRSuBGo3jmE+E3OzCEeXzQQD7uYu9zg3u8E7qXaQf
         fMvZpKGG/AOd3w7rpLKMPdmWntdUhPGLpwD+z0CH56tFeNf0yf+PYKl7pWtGYWE8K2ex
         vEBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=b2IX9x2hflnf5ocLHFLDK6rA2o/izs/STA3/EvujWMA=;
        b=ILCa3VKVFvAxE6plxQMZ0BRPHftpuASVQdnw0ucLeYgVU3A1qQMo54AfCz645Szz6f
         wbd5CyJNKr2xDwXpdIYbaAn2+yx1TwKflI//HOBH9bQv1W/Mse0SMHtdjnMnd6ZhzPlR
         ujU9rpqlCh6ZmpWtRloqCvKzO0sq6XWgRXOtACWki0M9ScfqfLc7Jp/Z4hsVXTkblByQ
         A1xnGGUYCTFhkbFiLb9vLKwQVgCjv3vFqc+4+2XSrhtaomnAagZk0lQcLbUvmv421Fdm
         s9BA5Ry5q6fCRZTLO1sNDg+6ELDEOFHZewGzcOAd3V8769agOydD0+Wy97ZEGw4yh3wt
         /k7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWEqluf245tFsYD4iEQmW0PUmlkM3laG+PfSnSekei9ahVjlsRv
	EC4gnnqUKDp+frBOrs1iJNo=
X-Google-Smtp-Source: APXvYqwjLY0wnmbuKdrr+/wGZ8D109a4x+8rCYndag/axMYjAv9lP+h0px6/CDWePTTc7U7HW/mniA==
X-Received: by 2002:ad4:46b2:: with SMTP id br18mr1143508qvb.167.1582667772658;
        Tue, 25 Feb 2020 13:56:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7583:: with SMTP id s3ls255826qtq.7.gmail; Tue, 25 Feb
 2020 13:56:12 -0800 (PST)
X-Received: by 2002:ac8:5486:: with SMTP id h6mr870490qtq.17.1582667772308;
        Tue, 25 Feb 2020 13:56:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582667772; cv=none;
        d=google.com; s=arc-20160816;
        b=TVaDyASeQR5HmhJ4FunL67AH+NsGcHIdHPyu1DLsCiZn+8kyYntPelcBuwM/JAC6Pt
         JNfAbJqnMjo5zjnJ4M1ClyCaMjI6kyaXWg1u5L6/7c0tpEiTmDZYMTdjZMTsiRg0Cptu
         6vbdXGTzzdwDRHv6PjGDN2K4mlL412lL5TGZM0tLMV3yfsDMGlgxXrkfZGFoVuu46Oz5
         rv9tU9tiwD9pjA+n/XWHtKeCVS0msR0LnWAcF2W4ts1B+G/kcm1UeVvYR6g3QfDT1Wy6
         mjNoeqgWIqKCN39dtU98BTn5Laoci8Aeyxvbv8DWdK9z/3JiVFaLjsf8Ig4grJ1WeCeg
         CVKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=P0m56hgWfY+fSgLqZHYe9e+4kClDl7jR0dEcmYtm2LE=;
        b=mcEw7L6pDd9zXJ60g+QlBG/U8/4pLcQVqhxcSQJoz2c4DBrys1qQ/jfw+aT5wTXmuW
         Ywkp6T5rfpxM6bCmBIb3Sb3xdQtHA4XuA+Z7xd5CNp2H7f9NAWQhp9nBKfzm1DLJXYJE
         W9FXOZ9hjUNu4C1yorIUPUvkBkk6tYfeAVs+U8GmeLH2Jrc1nuvpa4JJCg8MPLs5mwbu
         gwgqWnOFKlzAbZBaYS2TxWIoRvdTTqVtvj6QNJryI5XtMpmtWYoatHsEjLAISXzMlmRT
         pAzjZD6dXZWZGdHazSqaeYmLjLbmcwEm8cYLzfSxFhwS2jDMVnbnA6KzzRPS3I3NmwJ2
         7+cQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fcql3YFv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id m48si39988qtk.5.2020.02.25.13.56.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 13:56:12 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 4so273572pfz.9
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 13:56:12 -0800 (PST)
X-Received: by 2002:a62:f251:: with SMTP id y17mr853017pfl.204.1582667771408;
        Tue, 25 Feb 2020 13:56:11 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b12sm60452pfr.26.2020.02.25.13.56.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2020 13:56:10 -0800 (PST)
Date: Tue, 25 Feb 2020 13:56:09 -0800
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] Documentation/llvm: add documentation on building w/
 Clang/LLVM
Message-ID: <202002251353.25A016CD@keescook>
References: <20200224174129.2664-1-ndesaulniers@google.com>
 <202002242003.870E5F80@keescook>
 <20200225041643.GA17425@ubuntu-m2-xlarge-x86>
 <CAKwvOdn0_EETGtBVhbRKMPqv2K04Z1N4PuOZDZ6++Ejbi9-B-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdn0_EETGtBVhbRKMPqv2K04Z1N4PuOZDZ6++Ejbi9-B-w@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=fcql3YFv;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
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

On Tue, Feb 25, 2020 at 12:59:25PM -0800, Nick Desaulniers wrote:
> On Mon, Feb 24, 2020 at 8:16 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> > > Should this also include an update to Documentation/process/changes.rst
> > > with the minimum version required? (I would expect this to be "9" for Clang,
> > > and "11" for ld.lld.)
> >
> > I think the clang one should be added in a separate patch that
> > solidifies that in include/linux/compiler-clang.h with a CLANG_VERSION
> > macro and version check, like in include/linux/compiler-gcc.h.
> >
> > ld.lld's minimum version should also be 9, what is the blocking issue
> > that makes it 11?
> 
> I'm super hesitant to put a minimally required version of Clang, since
> it really depends on the configs you're using.  Sure, clang-9 will
> probably work better than clang-4 for some configs, but I would say

I think it's not unreasonable to say clang-9 due to x86 not building
prior to clang-9. (Yes, other archs can build with earlier clang, but
that's true for earlier gccs too.)

> ToT clang built from source would be even better, as unrealistic as
> that is for most people.  The question of "what's our support model"
> hasn't realistically come up yet, so I don't really want to make a
> decision on that right now and potentially pigeonhole us into some
> support scheme that's theoretical or hypothetical.  We need to expand
> out the CI more, and get more people to even care about Clang, before
> we start to concern ourselves with providing an answer to the question
> "what versions of clang are supported?"  But it's just a strong
> opinion of mine, held loosely.

"Supported" is hand-wavey anyway. I would say, "this version is
_expected_ to build the kernel", etc.

> Either way, it can be done (or not) in a follow up patch.  I would
> like to land some Documentation/ even if it's not perfect, we can go
> from there.

Sounds fine, but I think we should take a specific version stand as the
"minimum" version. Being able to build x86 defconfig is a good minimum
IMO.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002251353.25A016CD%40keescook.
