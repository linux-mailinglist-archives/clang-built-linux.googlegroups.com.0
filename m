Return-Path: <clang-built-linux+bncBCS7XUWOUULBBQ5V4CEAMGQEIWWQQGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id BB68D3EC4BF
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 21:34:28 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id j6-20020a17090ac486b0290178ffdbd20dsf5506678pjt.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 12:34:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628969667; cv=pass;
        d=google.com; s=arc-20160816;
        b=WvQgkel1P84eHBYcPb1Ze42HfuQtxgmEuiIZFjLivvogwu/fth4SoNLqUjbGAcDjUi
         W7mesRi9m2hzO1sCGEIScO/WVZJsPmle0LimHK/cx0bz4koaVuDY6ZLh6T+uUzf5yJpd
         JmFj2010QFSv6ooBZ2JuEoyX0Wcy9RoFLfKPZ4mpft4e+GyVjLOVT+A5LtG5xNZeQwdI
         IIbZPitNDkEbcwd3B+WURZISexqXPbKkkx3+BGTu4qGiKEZonAa8dbiLNaMreonRIe5N
         we5b23i+NLY2p7S8Dn+Edy4Hv8m4IRuA4vnpClGeNB40PDPhaWj0s2ehIcyv+udzy0eq
         /RGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MnsGLlYtT+aqouVsNb6o2JvND9xnO1xTqw5q+eAtJjI=;
        b=zvUVg2LBEGqr0bmnC0ssh8QbbZG7Tsc7x0jiiA2gLj5V1r6r6qQzOV2rDi3AwWaxjd
         ghGDLMiXOFDj0RHZ7WZHZmGgmoALfhUp9H+2VvDDGD69Ar4aR3Xj3z3/4OXKUtHKGsBs
         xDNGNdq/Dl+Em+3nlxSRmPF0iXDU6jpvclb/ADanEoVMu0nvi8BEapoNpoQsYX125wnk
         exP8J8PnL6LYFe+UKQNcWjF+WzoAUNXF5q6RHaRCFi0/D5eB/gWOyuYkG9gNfb96CLR3
         ZkPe7P775OfVkv6BJeIuDG7VuJoyglAuiKRHgkrZJB6HrLN4PpHTqA/ZBWidu/G8Jcad
         Q0sA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cofh1lT8;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=MnsGLlYtT+aqouVsNb6o2JvND9xnO1xTqw5q+eAtJjI=;
        b=nsDXIzQh5t3ACu2bMLw8LBrmzjQxtgVnAr392XvnSMhBNKLCzPkjImuhMECpT1/Hn9
         FpuqX/Wf3WlHfabLCZ98wtTHisjnUoPDWaf5coduheyTsBx+UQd+TBizDcPA3h8xgV4h
         pZcjTq1SmqKV3BEuA5hFPh54A0hD3F9hNZYOMvrDjodDQ7L2hLxOKKYKUOmksJeYDIUJ
         MUozr4DXfvqYeiqQ9/fdJDg+L9AU9BsY042FAJd3/eC9q/NaDS3Od6x69ttcCRLOnjTr
         6TadewVsPSHReI6b7m40XRW32k+r9M70zacjkLc0h0NWy/o5voxFU2q34L1PR0jGog2t
         y0UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MnsGLlYtT+aqouVsNb6o2JvND9xnO1xTqw5q+eAtJjI=;
        b=IuvQugAXUEtex9OgAHVTJFrQwhUG5MtmrMl0WuVEbNWB8dN8BoiOjE9gNY001FixIX
         XVAPmy06EIYf+3PdXEgzuoq34hMxC0rpFeMI9hD4lzpQyY8Kok/k9h43IckbK8laRjra
         Lads+9cOMK4f0NmJ1mmX/S10N2jS170ldpg4gC5lJMSrKjReyThxBspnvjQcCSDuMB7q
         fUnfjjbVg1kOlLcG1ZJWf0fE+UPTV8sKLtbF0fv8hhf6McGMDpaMCp36gTzOhxVVuTdx
         8rm1MbZAONCYUEu+q1z3AAzoOY+0Tzg/O2He7ZR+e9PkdZD3imtGEonSbq70R6RpM+nK
         /EzQ==
X-Gm-Message-State: AOAM532mS05FK55UzDToz3e3lKVi1qBuAz1NYnHcvZn5M6PIW8nPYMe9
	W9M0pPZqVlWEvmdj/OW/FV8=
X-Google-Smtp-Source: ABdhPJybeowSMhPSaH2gnhQGs/2P9ckfqtMF+9k9vVVS9vVA/rz/8Gtf3MuF0OMeet4tVPu8bXt8UA==
X-Received: by 2002:a65:620d:: with SMTP id d13mr8029768pgv.36.1628969667452;
        Sat, 14 Aug 2021 12:34:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:218:: with SMTP id fy24ls2116250pjb.3.canary-gmail;
 Sat, 14 Aug 2021 12:34:26 -0700 (PDT)
X-Received: by 2002:a17:90a:8405:: with SMTP id j5mr3733886pjn.160.1628969666849;
        Sat, 14 Aug 2021 12:34:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628969666; cv=none;
        d=google.com; s=arc-20160816;
        b=RUK5bV50V4N+Om5F/oLHoS9BH4ImaLgXq+Sgk8tHXLqA3h8bRoN/SEB0ufWPSyv4n/
         0/8fBK0Y0fR5VPoObg4h+twGZDDwvXXc9hsOme1idAS3YKo91klJX5nu2T3j00tIURPI
         npQNqd+f71qYjLJOkTgIVKBJED/vOftrFsrTynFzGdoclkLNqGz/fcbs3E8QGsuD/wZz
         xK6ZMAg88mnnifz5z572Jtj8bKSvxtlhu7SrZlI4Wk3sLcF1WTbWHvaIGcZUX8wZcORz
         ZlKKa248YKWHgH94HFhEj/zKPT5Hx/8VJRZNz/pNVuo5z0F3lMS92SWC9yBZWPIlkySk
         aL9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=R54d46ZCTxUfXPnbh/qJAxq3cKd/Q236Yg57kUVGbCs=;
        b=jnpm76jOaY84NsLCt8ksyetYZGHry58sb/sfZ81qz6OOtWehbULGtAMYwCik8hfaWH
         a8h2RqKzRr0hPNg6UJ7Kulo5HOmWNyxgNk7Pr0Cc5QRWym3DXhayrWDn51knXDkU8NS3
         zw7UiuFiFa5llKGMtJQALfaqmyFBwN/Gt2jFjMzJDJjX41dYeqCumqkDcUvFGFj0lZYx
         qEi/SEf1R1STq6XhgbsZbJTFXfubm8MiqvR+atfNNx+CxRVE/fd4hzY3XaThoA/hcmwG
         /BuXIxpfQ3BNfZQJcvFgWW3I/5PKQ1CUXhed/55TcQyloAM14KCSllf7ImpUoKC1WzG9
         ZSGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cofh1lT8;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com. [2607:f8b0:4864:20::b2f])
        by gmr-mx.google.com with ESMTPS id o20si372960pgv.1.2021.08.14.12.34.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Aug 2021 12:34:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2f as permitted sender) client-ip=2607:f8b0:4864:20::b2f;
Received: by mail-yb1-xb2f.google.com with SMTP id m193so25191323ybf.9
        for <clang-built-linux@googlegroups.com>; Sat, 14 Aug 2021 12:34:26 -0700 (PDT)
X-Received: by 2002:a25:5d6:: with SMTP id 205mr9830990ybf.382.1628969666230;
 Sat, 14 Aug 2021 12:34:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210812204951.1551782-1-morbo@google.com> <87sfzde8lk.fsf@linkitivity.dja.id.au>
 <20210813200508.7bqehxgd6ruerds5@google.com> <20210814125812.GC1583@gate.crashing.org>
In-Reply-To: <20210814125812.GC1583@gate.crashing.org>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Sat, 14 Aug 2021 12:34:15 -0700
Message-ID: <CAFP8O3LZ3ZtpkF=RdyDyyXn40oYeDkqgY6NX7YRsBWeVnmPv1A@mail.gmail.com>
Subject: Re: [PATCH] ppc: add "-z notext" flag to disable diagnostic
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Daniel Axtens <dja@axtens.net>, Nick Desaulniers <ndesaulniers@google.com>, 
	linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>, 
	clang-built-linux@googlegroups.com, Paul Mackerras <paulus@samba.org>, 
	Bill Wendling <morbo@google.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Cofh1lT8;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2f
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Sat, Aug 14, 2021 at 5:59 AM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Fri, Aug 13, 2021 at 01:05:08PM -0700, Fangrui Song wrote:
> > Text relocations are considered very awful by linker developers.
>
> By very few linker developers.

https://groups.google.com/g/generic-abi/c/Ckq19PfLxyk/m/uW29sgkoAgAJ
Ali Bahrami: "My opinion is that no one wants text relocations, but
not labeling them if they do exist doesn't seem right. I find the
presence of DF_TEXTREL very interesting when diagnosing various
issues."

https://gcc.gnu.org/legacy-ml/gcc/2016-04/msg00138.html
( "So why not simply create 'dynamic text relocations' then?  Is that
possible with a pure linker change?" )
Cary Coutant: "Ugh. Besides being a bad idea from a performance point
of view, it's not even always possible to do. Depending on the
architecture, a direct reference from an executable to a variable in a
shared library may not have the necessary reach."

binutils-gdb commit "Add linker option: --warn-shared-textrel to
produce warnings when adding a DT_TEXTREL to a shared object."
Nick Clifton

https://www.openwall.com/lists/musl/2020/09/26/3
Szabolcs Nagy: "nice.  and gcc passes -z text for static pie code so
that case should not end up with text rels."

Someone wrote "Overall, the overhead of processing text relocations
can cause serious performance degradation." in Solaris' Linker and
Libraries Guide.

Me :)
(I wrote lld/ELF 9.0.0~13.0.0 release notes and filed dozen of GNU
ld/gold bugs/feature requests)

> > binutils 2.35 added --enable-textrel-check=3D{no,warn,error}
> > https://sourceware.org/bugzilla/show_bug.cgi?id=3D20824
>
> Yes, some people wanted the default to be configurable.  So now we have
> a default default that is sane, so most people get to reap the benefits
> of having defaults at all, but we also allow other people to shoot
> themselves (and people who have to deal with them) in the foot.
> "Progress".  Changing the defaults should be a one-time event, only done
> when the benefits strongly outweigh the costs.  Defaults should never be
> configurable (by the user).

ld.lld has such a non-configurable model and thus caught the issue
(which the patch intends to address).

Future --enable-textrel-check=3D{yes,error} configured GNU ld will be simil=
ar.

> > I can imagine that in the future some Linux distributions (especially t=
hose
> > focusing on security) will default their binutils to use
> > --enable-textrel-check=3D{no,warn,error}.
>
> How would this be a benefit to security?

https://flameeyes.blog/2016/01/16/textrels-text-relocations-and-their-impac=
t-on-hardening-techniques/

https://github.com/golang/go/issues/9210
Android: "libexample.so has text relocations. This is wasting memory
and prevents security hardening. Please fix."

FWIW I contributed a glibc patch allowing TEXTREL to co-exist with ifunc.
It requires temporary mapping the text segment W^X.

> > In -no-pie links, R_PPC64_ADDR64 relocations are link-time constants.
>
> Where "link" includes dynamic links as well.  There are no constants.

"Link-time" usually refers to the processing of the static linker.

Dynamic links can use load-time or run-time.

> > There are no text relocations, therefore no need for -z notext.
>
> This is a choice by the compiler, nothing more.  It saves some process
> startup time, and allows slightly more maps to be shared by processes
> that run the same images.  But it is a tradeoff, so it might change; and
> of course it is not an ABI requirement.
>
>
> Segher

Text relocations are generally awful.
GNU ld and gold's traditional "add DF_TEXTREL on-demand" behavior made
such user errors easy to make.
I understand that kernels are special applications where we apply
relocations once and many user-space objection can be less of a
concern/ignored.
However, the Linux kernel is already in a position where many linker
options are controlled and thus should specify -z notext to make
the intention explicit, or fix the problems (I think x86-64 is good;
that said, powerpc
has a higher cost using PC-relative instructions so pay the oneshot relocat=
ion
time cost probably isn't a bad choice)



--
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3LZ3ZtpkF%3DRdyDyyXn40oYeDkqgY6NX7YRsBWeVnmPv1A%40m=
ail.gmail.com.
