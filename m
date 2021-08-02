Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRHTUCEAMGQEOIA3CQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E88A3DDF2A
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 20:30:29 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id f11-20020a05651c160bb0290192ede80275sf3447072ljq.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 11:30:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627929029; cv=pass;
        d=google.com; s=arc-20160816;
        b=V91lkGRenGbWQ7qNAWZRcc48C8JEhx0+rsm/1Xdbv2Ymvyb3s73Omz/MO3dQeFA5KI
         Vl+XsYfzD5JD4KyFyGfXkNXB+HUZ/ODjSEr6xqgwxb5ueAsqmaCIkSy9bjRvZU9mqg4k
         D52W2yvD17bym/tFtTPb4+OVHhg3T08D4qjcMh+PrXWPh3s/s/FK7xeHHj4nf9W5N0Cb
         Kfp7AFomRz70et8Im1Brppc4sSoXn+BiWoF/sdGr6A9kWomPC4Tnr+E/NJ++bvA7yfAo
         NI8R7gLoYSfbPoKqinBWbELrJXiFwSWUTmIVRb7stp/Z9gHmppr7/bmWOANMqFz9ORFM
         nv7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zo4fau2Q1dzlUEA/DfrVAHaNd6qT7uvBnN9WXqF/+v0=;
        b=rw4i/spm3fM0UbW/E7XbxUebb1RNXW+Slk0YZDaFwV5D0Ze9VNaFWbc2SBUtRLKrhw
         afdGpJeWp91JTLA7eEwOpG+W7UHzD2sGmoXUw7ZiWcBx7CX7Qyd0qBas6fbGLsq1pkGL
         BVukNI+LC4KduDYtU1rv3/G2nxs0SlfVtdFjhRRWwrXt8pOKzLxAe7yqwu1+MZxEkL3Q
         M2MZ91RZ+jaaESn7YNj2y/MrupiamWKb2yyTZ1QRjZaOoLg6So3x3algHqreg+7A/vdI
         YSoQ1itqTuolMAzJF4bubspQTrTTgFmcEbGDxVie3wnNLe0Qg4II0LvheZ72RtCT/Trt
         IqqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v+2nSFB6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zo4fau2Q1dzlUEA/DfrVAHaNd6qT7uvBnN9WXqF/+v0=;
        b=nkaoMh43BwyPxWwkdX9yPzw1+YGZcb7yQuHQWIMsOSNkXX2RUah7mSDGGxuTDL0Y24
         9FxN46wiC7o2rJLJBqbW729eBYwqsoxhyy5jPqn5uZW2IiDFflnk6M9Ra57h5K55rxAS
         v04sEqqDiCeMkoGg/8dWLfJYVf99DmnQM2KX9v8pBXWpGNvIEoGv6HsXSYlL9O7c0Klk
         GmPpXkEC9HnkCNO+j9OwV+6mSxpKoo82FOR2ZU5rzmzDe24m8mHFzPOrgl8aGAuJ5Fv3
         +07ipqNKZ3KkzKocXGmXaD2hPC+4BtD+9MihOyA9Q22dLl7SUA+m6WmyTxfay2UNlmti
         wC2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zo4fau2Q1dzlUEA/DfrVAHaNd6qT7uvBnN9WXqF/+v0=;
        b=jqy3bTpU9I0QJXbaPf1sAcKSXBazzBpnNyaA2H/PQeVvespeKhjt1ff1+g6mVtN2h/
         smqy0RiP9BD+6ciEkIyCu/aBIbIW8vW8/9J7EbQ4Mvb0oMN/01e6CCCQoSbQH4AG95Yg
         GAoTGx8KPsBqP39ES+AryO/9MoGBb3aIdmgfupzmFEuQJRd+qBNAIYw/tkP5qe3pGSQI
         gsiTdh2+mAyORASPr/zzotO4Ak2hWszvxwBBd3w5I84q71eoECDTPlCJOT1KjhNpDcns
         mHLuJrCMYQ8IdEDuO8sn/6q2tic1Rn8+mF0RFKACaYDi3JNc4Kp83lJJwrynBrqn12eQ
         f8Ww==
X-Gm-Message-State: AOAM530d9x80sqZE1kE7dk1d8Jo+YW2hmzf7qiOj3mMQmehM8pMKH6WT
	b3mU2ZS7lsByZUUmGKZ6o1E=
X-Google-Smtp-Source: ABdhPJwg9gD0+ozuuVXhdNJC8IMzQSS8+4504yosGOfjsxbt7cM0Pc5lrj3r6lsxqW1zqWGU9sKU2Q==
X-Received: by 2002:a19:5f04:: with SMTP id t4mr13294964lfb.297.1627929029007;
        Mon, 02 Aug 2021 11:30:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5395:: with SMTP id g21ls1586870lfh.1.gmail; Mon, 02 Aug
 2021 11:30:28 -0700 (PDT)
X-Received: by 2002:a05:6512:1308:: with SMTP id x8mr6775975lfu.161.1627929028012;
        Mon, 02 Aug 2021 11:30:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627929028; cv=none;
        d=google.com; s=arc-20160816;
        b=RzXWPh8YMdE6mWNxqw4Sm4mCmPYtyuB5CqwLxMd8on79xzZFeZYy8UZdDgdgrwZv63
         TS1qbyi54DRUUvFixE9S1EU33druc1e6if/a+UptLC57yAA608YEj4ISkQIxOP39oTOY
         UfpjEqPqJx+9HneQf/BjKyMceEm/S5Wr2vpteD3SDygRJX21jW70e3JHGaswbCtpeQ/+
         iDrcNC1DNss9s9Dfb5w/O1eDpqnXNSaDMyZ5+9ftYiW0ysZ8chA0gGsXxaoUGE2DRnKE
         un1Vq06wkHUOEfcU9mS3quuV0BOiy3QSzmgvvSlQPoRvdp1ziuB2KlcF3cf9FUxOoAfu
         eoIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=c8TcBGmyR9gclpUTkI1EdTWgQL1bdhzCcbivOvr1tM4=;
        b=psug2dDvsdNFGG1js7BQQWm0Or2xQ+rbOGaF/vGGuke4sEKBxuxtHs7lnfP3352dBQ
         AoOUqS5cnorqhPTyY890DZB/Irg36MXCt7Hubt/2Mg3uiH9NDkgCS/4fg/2vr0Sto0VV
         /Kz/SWNoZKbPINbQmR2cdu5Ll4rcWqYpz8H8BxlTzqNH94lrFpwauY+PwSt4vnVCPCU5
         MMizqtTWYDQF9XFvuqr7bu91cMyTTYhm+LudErIZHK2B79H+PwcsisXZBqJzIvdAVxTM
         +p8KLPVZmGtktd4MQ8qElw1NGF/C6rMgQr4Ybu6kAohP0khb7sWlaU8QXSLickLEniWy
         AKxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v+2nSFB6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com. [2a00:1450:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id h20si536841lfv.7.2021.08.02.11.30.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 11:30:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) client-ip=2a00:1450:4864:20::22c;
Received: by mail-lj1-x22c.google.com with SMTP id m9so25053460ljp.7
        for <clang-built-linux@googlegroups.com>; Mon, 02 Aug 2021 11:30:27 -0700 (PDT)
X-Received: by 2002:a2e:98c8:: with SMTP id s8mr12114926ljj.495.1627929027452;
 Mon, 02 Aug 2021 11:30:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210730215708.276437-1-ndesaulniers@google.com>
 <20210730215708.276437-4-ndesaulniers@google.com> <20210730231252.r6fi6c3i6obbcgfi@google.com>
 <CAK7LNASSpc8JBivPGFSvxMdgh6+emwav9YPmnygrdPkX-Q1a+A@mail.gmail.com>
In-Reply-To: <CAK7LNASSpc8JBivPGFSvxMdgh6+emwav9YPmnygrdPkX-Q1a+A@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 2 Aug 2021 11:30:16 -0700
Message-ID: <CAKwvOdnUOAAkWBcwSB2+0swJdkxSja+6QBorqdqD++6q8DY7Kg@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] Documentation/llvm: update CROSS_COMPILE inferencing
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Fangrui Song <maskray@google.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=v+2nSFB6;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c
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

On Fri, Jul 30, 2021 at 5:05 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Sat, Jul 31, 2021 at 8:12 AM Fangrui Song <maskray@google.com> wrote:
> >
> > On 2021-07-30, Nick Desaulniers wrote:
> > >+For example, to cross-compile the arm64 kernel::
> > >+
> > >+      ARCH=arm64 make LLVM=1 LLVM_IAS=1
> >
> > Is  ARCH=arm64 make LLVM=1 LLVM_IAS=1
> >
> > preferred over
> >
> >    make ARCH=arm64 LLVM=1 LLVM_IAS=1
> >
> > ?
>
>
> I do not think so.
>
> For consistency,
>
>    make ARCH=arm64 LLVM=1 LLVM_IAS=1
>
> or
>
>    ARCH=arm64 LLVM=1 LLVM_IAS=1 make
>
> might be preferred.
>
>
>
> But, in the same doc, I see an example, which
> mixes up the env variables and a make variable.
>
>      ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang

Perhaps it's just muscle memory from when I started working on Nexus
phone kernels ~5 years ago; that's how our build scripts invoked make
(with ARCH and CROSS_COMPILE as env vars).

IIRC, GNU make has the notion of `origin` for variables.
https://www.gnu.org/software/make/manual/html_node/Origin-Function.html
So "before `make`" would be "environment" and "after `make`" would be
"command line."

I'm rereading the section on assignment to see if one of the
assignment operators was affected by origin.
https://www.gnu.org/software/make/manual/html_node/Setting.html
https://www.gnu.org/software/make/manual/html_node/Flavors.html#Flavors

I could have sworn that due to one of the assignment operators
(perhaps `?=`) that the orderings weren't commutative.
$ make ARCH=arm64 LLVM=1 LLVM_IAS=1 -j72
works
$ ARCH=arm64 LLVM=1 LLVM_IAS=1 make -j72
also works.  Hmm...maybe I misremembered the issue then.

Ok, I will reorder all instances to use the command line rather than
env vars in v6.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnUOAAkWBcwSB2%2B0swJdkxSja%2B6QBorqdqD%2B%2B6q8DY7Kg%40mail.gmail.com.
