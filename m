Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBC66UT4AKGQEDDUI6IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A9621C1D7
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jul 2020 05:16:29 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id l1sf4775661ioh.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 20:16:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594437387; cv=pass;
        d=google.com; s=arc-20160816;
        b=WGjpCKj1PXX+NO2Xsv/CyRo2bJ6ODnm/91g9YjLBxdaSf9Ri/8ynZcf5tSqmgwYHLa
         CCgG+cSusJG5uYCjAHD1JiQAAndrf9qzSU6d9VRhpPUDOgRCJD4a/E1qHvYrWjs5OlR4
         cEtHlPcuUibj5roQd0CDqNodum3w3Ds16ziLtPc+r/oZTq39qSMMzrgWeUG6TVLW88oD
         6OUuqWoR9Zp8wsUAQLcXyem0M+x1K+uEyJpXUoN4IFEO/EYFTe3uoBXzStrXeOnKcgSo
         bxzddxrBcatswX7vCkbbxE+Nfx1FGbgc9aU3ydAw2u66D5bnyAZ3+W99WmqXz0lySwtE
         eiHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=73/i4ssGsL7n2idYhcoShy/y/2lfoZna8KrLHH9+V3A=;
        b=vFOFqVgj4ZGYA+igMxX1VYerdnx7+1HaF2uo6DENME8rrifNbOOipufpTF9cEu4XrN
         ZmfoJYVHwpBCATSdkojGX8hkVQ2E/uWwa8SISfNJ3eRpyEMzVw9GO6snKG+WVEidN1g+
         3Phguxa/805Nsnl8OJ5S2m/JkJXICRaK5DEMk73V0rkA2sD9cd/h6yM+pAo24HrBCJcq
         66TxJKErYdAUvn9d2NuYEyzZn6RZAhipmwZTvY8TQiGL2fQT6coqRKbf7R2h4PH4Fq8g
         T3NBesAZyRxInhe04+034izVPaFrs6IfW6NvtDliGI7Dqt0vxozic/tg8XKTleIMqSgk
         VSag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PfMMnvdN;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=73/i4ssGsL7n2idYhcoShy/y/2lfoZna8KrLHH9+V3A=;
        b=eSliYN3sSnpyJR77/JnLVL9LG8vNJx2Uw76NzWHxwNNC3ltoRlAdTzB3h7ac8uLu0O
         uaX2WVSp7H5F3Mvlm/WIM/HVL60lVhCL/w2+z89alqQIYqwl70ND+HeX2qX04mbb6SXw
         zpKyhixI+CwzbGiw27YBd0pmOkySW/PODPBzDnzR9PcGNgc8aj7Z2yAg/tnYEZQdBRL/
         85rq24oiAr0Ie+iO1jixSmmoJ/wA7ExMWwWmwRQxp99LPfy9ZCOBSKJBM3a//S3Pu/tR
         fJMlmPPjWfumsPggIFDKfdMEvIZQoqQ7+sFUNdrmVNMnvBav63CIUP1TPKNnWNjeoPFp
         Xmvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=73/i4ssGsL7n2idYhcoShy/y/2lfoZna8KrLHH9+V3A=;
        b=CGdsqRTum4mRJWdDerVXSsZ2A5GG4LSAHYBHCJiu/kihc1yJegNa8L+YSSD9n/wKpL
         aLcyD7nNL88GU2TdLmxCLd8ReI0eaUOHcguCLUchRPd9/0znfGCqUe4iDNQ6hOrI+X2r
         pJPuTWV0SEvgZ8h2ykodcy+uTnGnB6/X7q3gASct+S+bCT8049sPMZGTZuUtc7hYLp6L
         J+Q1DaaxgjH/LTnUNkhWTqaWzpKxb0j9pfE0CD1UqTYK4KC8bWV6fgHpJoGg1OS4Su7a
         AUm2RXHu8Z8n29ulDkGajFOdsdiMUgJZKuFk1fVGxAdeVp8KXHrCGOgiq/qnQ9XIR3ac
         bn5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=73/i4ssGsL7n2idYhcoShy/y/2lfoZna8KrLHH9+V3A=;
        b=QMLhhcshqr6mTdoK5N+60Lidvx7YkNLfHLkqP/NrmTFRsXUpfM03psHdP57YUGoaN0
         FfdKkaO+Q45swalaaultY79+Qf1lRc/FCIBzDv6c3VtYUj5v/j5aQxyxI6oKBw1gOL/v
         LIpj4Evnt8UmDtdeuwKzDw00zz8a9Zyi0ZJ1DMVDofwgwrsOnPQ8xNh9wwtc2Uxm8K7l
         HMHbvQKx12Off68DKZP5xfetf82Zr2WUqFmcTEEdBlMdlTVqOREJUszZ/APPsN7IvNFN
         Opk+VIH25kCIGvk0680KePA+urHo1MXkEIDPKvrsfZz9M9W32Ol8HlCorHUhDrj7mFc5
         Xa7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lCJhg1HfPGWbQyIfpyTly/nFOd5yoAFzg3hMlNwYmm0J/A5Tf
	K5KqmOst9PORim0XH5JlUOQ=
X-Google-Smtp-Source: ABdhPJwPgL/lcKLIVnbiZXhLu3fw9jssFVEoZEPddVAVXTgS4T2kJIhK4NidfY3JyYq30ltJaxP7yQ==
X-Received: by 2002:a05:6638:2172:: with SMTP id p18mr82857867jak.63.1594437387706;
        Fri, 10 Jul 2020 20:16:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:de07:: with SMTP id e7ls2011429iok.5.gmail; Fri, 10 Jul
 2020 20:16:27 -0700 (PDT)
X-Received: by 2002:a6b:9042:: with SMTP id s63mr51573842iod.195.1594437387283;
        Fri, 10 Jul 2020 20:16:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594437387; cv=none;
        d=google.com; s=arc-20160816;
        b=jiaEIbJPp69/ME51eW3ygnEWVFuykA8+mruCSiUvbtG0LmO7yCuFevL/hEOYavW65p
         Z67fBuNZ3vtpmpUEeqATzP75qS8Nip+5pRBro2mWY4lnG9uwQBhIhuSRXbau+tp9KFZF
         fCiSNYMCrC+8ZjkWTg4nTFj6Ofwm4nxx83oHSVg03XtbdXsu9MmXNufDmGsdSsEDn6/W
         JnAJwjfg3FQ5RRl7KMZ9ltL11fsCtYHYniVjQrrFoa2G/4oNvrhFffHqMV2eyn3pxUBX
         2NBGz9zFuT30Vml6l6toWhWPmaAAhQhrTLDL6RcvSFKvwXOAJKtqy0uU6a+wrTfL9E9M
         U2+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GkOHcVJOetcedNhG2Fp97wnRClOZ55pcnECegxpPc+c=;
        b=ZR1TMZcHPp1V+FvK0sxPcOYNoRmnkg7pmATuD8hXTIQCicxhiDSdJ0+ZZAFwEOvkwE
         cSUV7HEHXVXCe82Wf85eJVhAK5iC8XMxsFSArAvSJ1zoSl3il26yHXxfhqp5IXDedwil
         bqyx4FMPFaAsWzsnExQm0vOb76AJysEaYO8YuqyQKqN5L6mMp/W3VNjPEy7JL0lBVHil
         YgtF5G05M9Aj6dxWcU0mNHehQHHZEdgMphqVXawLGFsPf8mhlXXc4coaf/M9xi+84Ofh
         p9zqhcKAiHZcf264M6DH0yDENFxBDHZagS8hnNvRusHrZAHCTvTH9qrxww+aHdq1NFAv
         U9fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PfMMnvdN;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id p1si548289ioh.3.2020.07.10.20.16.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2020 20:16:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id y2so8109248ioy.3
        for <clang-built-linux@googlegroups.com>; Fri, 10 Jul 2020 20:16:27 -0700 (PDT)
X-Received: by 2002:a6b:f911:: with SMTP id j17mr48272074iog.96.1594437386880;
        Fri, 10 Jul 2020 20:16:26 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain ([107.152.99.41])
        by smtp.gmail.com with ESMTPSA id w10sm4308131ilo.10.2020.07.10.20.16.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2020 20:16:26 -0700 (PDT)
Date: Fri, 10 Jul 2020 20:16:23 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Cesar Eduardo Barros <cesarb@cesarb.eti.br>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] Restore gcc check in mips asm/unroll.h
Message-ID: <20200711031623.GA4441@Ryzen-9-3900X.localdomain>
References: <20200709221102.323356-1-cesarb@cesarb.eti.br>
 <CAHk-=wjUEmO4GiC9mCyzZ8_WS=ZWgfg6CnpxPSLq=uoF1F3Xyw@mail.gmail.com>
 <CAKwvOdnbtbetfN5zF51QOXVhrutE8ak4uPe82iY6g9f6gwk=Vg@mail.gmail.com>
 <CAHk-=whaqVGHSGstM4yHnJ+WkoHDBKWxMuZvgOYoxe9sYBOjEw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=whaqVGHSGstM4yHnJ+WkoHDBKWxMuZvgOYoxe9sYBOjEw@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PfMMnvdN;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Jul 10, 2020 at 03:31:00PM -0700, Linus Torvalds wrote:
> On Fri, Jul 10, 2020 at 11:43 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > What I'd really like to see as a policy in the kernel going forward in
> > that ANY new commit that adds some hack or workaround for a specific
> > compiler version add a comment about which toolchain version was
> > problematic, that way when we drop support for that version years
> > later, we can drop whatever hacks and technical debt we've accumulated
> > to support that older version.
> 
> The problem is that at the time we find and fix things, it's often
> _very_ unclear which compiler versions are affected.
> 
> We also have the situation that a lot of distro compilers aren't
> necessarily completely "clean" versions, particularly for the
> "enterprise" ones that get stuck on some old version and then fix up
> their breakage by backporting fixes.

Indeed. I would say this is less common for most distributions with
clang, where they tend to stick closer to tip of tree, but it can still
happen. I guess there is not a really good solution for this but we
could just have a policy that as soon as you move away from the upstream
version, you are on your own.

> When it's some particular version of a compiler that supports a
> particular feature, that tends to be much more straightforward. But
> we've had bugs where it was very unclear when exactly the bug was
> fixed (fi it was fixed at all by the time we do the workaround).

As for putting a seal of approval on a minimum supported version of
LLVM/clang, I have my reservations. 0day keeps uncovering various issues
with its builds and clang's release model is different than from GCC's
so if we ever come across a compiler bug in an older version of clang,
we have basically no hope for getting it fixed. GCC supports older
series through bug fix releases for quite some time (GCC 7 was supported
for two and a half years), whereas with clang, they only see one
servicing release before the next major release (for example, clang
9.0.1 before clang 10.0.0) so it makes getting compiler fixes into the
hands of users much more difficult. I am trying to rectify that with
clang 10 though, where I have been testing that release against a bunch
of different configs both in tree and out of tree:
https://github.com/nathanchance/llvm-kernel-testing

However, I think at this point, we can say clang itself is in a good
position as of clang 9, certainly clang 10. I am less confident in
placing a minimum version on the LLVM tools such as lld though. For arm,
arm64, and x86_64, we are in fairly good shape as of clang 10 but I
think there is probably some more work/polishing to be done there; for
other architectures, it is worse. I suppose we would have to consider
the support model: under what cases is it acceptable to bump the minimum
required version versus inserting a bad compiler hack? As someone who is
not super familiar with the relationship between GCC and the kernel, it
appears to me that the general attitude towards compiler bugs has been
workaround it in the kernel while hoping that it gets fixed at some
point in GCC. We have been pretty aggressive about fixing the compiler
instead of inserting a workaround, which I feel like is the better
solution, but it makes supporting multiple versions of the compiler more
difficult (versus just saying use the latest). It is something that
needs to be discussed and agreed upon sooner rather than later though,
especially as we grow more and more polished.

There were some other thoughts that I had on our issue tracker here, if
anyone cares for them:

https://github.com/ClangBuiltLinux/linux/issues/941

Sorry for the brain dump and cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200711031623.GA4441%40Ryzen-9-3900X.localdomain.
