Return-Path: <clang-built-linux+bncBD4LX4523YGBBM7UUOEQMGQE7H5UZTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AD83F9B0C
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 16:44:14 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id h135-20020a379e8d000000b003f64b0f4865sf685914qke.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 07:44:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630075443; cv=pass;
        d=google.com; s=arc-20160816;
        b=kNKj4Ta6mL6mkUODnWLZJnj93I2JoqMXTkRLhehu6gj6BafR7V1zqVaDkQYYlLQmjp
         e5I3RjGsuQzElfttuaMpPxdBhshOm/7cSbfJLJGJiOZwQkGOGLW/6dc43GzNNHevDIU1
         aJxLDkyO7WF7OJCs23BoK9wxq3Kn+69h03fIQibO+Mm9LPXcJFuYGtakRzQd8lkFcOC6
         n305w0XtWCeiaeiNcvfaJuGizQfh//26qKMD8AaK7OPe5Miq0aXqhMaaaKEmPw/vquhu
         pqaV/LR8aH8UdJSE2y9iK9svCDbzf379rUqSHXJ4Ei9WoWC8b9WTGDYy4kpbdxv4K679
         29gA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=jjtdo3RiWmU63Cnsto1hmqcv7HBrkeXcGsflrE3metg=;
        b=L0RMVF0mvv7K06vb9BdkQRRNOdSuUCz+xvD6nD5/vGG2btjkymCCRgUiRJpN46QgIA
         8jterYpcXAo8A1VksVymcJIJ0WYwvb70mdwjvIIOe15r4eD15Yl0smxRf1XY6WbMRTLj
         c+RP8e6Ahh2CBg1HyQ5ch0jmdOr5JWIJl91C8J6CPBWNxKSJ5G3/qudwIIiJ2zFqM+My
         Kw4EOnDCxBbnXp0KHo+zag6f6zO5hbAcYO1UM3NmI4zd9Di9hPxpp3CMaJFSOf0vAqVo
         oYw9LGc4VoAGOgeA2EkqTiAju2/+iCP9l0GJOF7R0wThfEvW7KrRqrlzkAlk7wX0RKLA
         jQsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jjtdo3RiWmU63Cnsto1hmqcv7HBrkeXcGsflrE3metg=;
        b=GqPra/TANTiUaCC3JFDl0ZAs9npDFhnn0sEMvkAD1nUxdJ5w2MJEOSuCoW3msyqOxm
         kwg0E/1q48GQ2ynnxIgh7VqCyMC5cCD/oDtK2sc95UOgUbULc7MEIQqNeWkV+y+WQjDX
         mpw9aQke4iQiWtZ+w2Zyg3RfefEKVxCdjE2c6LyIse98R4TpRkvPkALnUmZBnt67lamj
         6sOJvCLXBNivMRrNlecd2XJYxmxg6+2/mZgb9Ild5EBcwOLHIMlSY9+eoxOX7PuauooR
         G6YbRwmd8R9oclIK++3a8yjO8PZBvjFNnaZMIV3xNHI/rbflKpHWcY1M9/MwRTnrZB/i
         SMBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jjtdo3RiWmU63Cnsto1hmqcv7HBrkeXcGsflrE3metg=;
        b=ifiXeX5o1SUNNo/98mf7linhMB/0n2ppOsfIWDgZD7NmeoxEWqgm4KNiTAJd5blX/j
         0eDHBxJo+tlMs79nUSyt9/3sBywnsLAh4+OlkebZ5iVXrESOm7wTCuK+k9+EF4l+/Y9N
         Na+pW8YUApcM3NMYctCDJobfQiqlJoESudy4kOaPCQkGqCPZczVBn8wd5LaKGfgpoAJR
         IQax0t43sfBEyKZFfI07CC8UeuAIZzAluH5po0jDkBZcA+j092UcdXvQyvTKjNGZWNTw
         W+o00mOUMgTcoVF+N98BefGcz0DPnKzQngd4zvVVTlq9dnGcFfHF7mjx1bjtHHwFWjIE
         XzBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pIrutjrH3YAdnZbWpLHdpN6IChdxLV+eUSZ47fCciQfaXBnXB
	Z+OLIdfA+mxkBDGVlp1bobg=
X-Google-Smtp-Source: ABdhPJyYjWfyXm3Byp65KExDmt+VVLwH4Hv7I8nNnR/IhlcNn5uer1XBDxh4U/SjUQPSSYHAR+/MQQ==
X-Received: by 2002:ae9:f005:: with SMTP id l5mr9751282qkg.355.1630075443506;
        Fri, 27 Aug 2021 07:44:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:e69:: with SMTP id jz9ls2891895qvb.6.gmail; Fri, 27
 Aug 2021 07:44:02 -0700 (PDT)
X-Received: by 2002:ad4:5a06:: with SMTP id ei6mr10010417qvb.21.1630075442915;
        Fri, 27 Aug 2021 07:44:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630075442; cv=none;
        d=google.com; s=arc-20160816;
        b=gKQMww4qSAToPU0VnZC0RPaoppiA1+CJGTmyifpaCpCgKOjQVJp7dzR2v4A4Tr+GG/
         Nn2KLWXT4odhpHM52OeMCMuH7g600Oa0CFUiNTrHh4ri7j6ztKPQWPPYQ6yvOPY4QLOm
         fGf2sVcI3uRbfbXNOQDTGGSoHktCcKAt32Cjo6cORLqAcHOVZq4WmuNmFIad7sBdP1e0
         AcbdzwvXnw9+6L0OWfYO+CjQzYfD5wS9wav0C/6M3/pJKXwqa+8Rz5bO9hZTp26R2qrG
         YJpdwknwNfRkw/YLD8mY9TWrjAOI5sjDARSoDDe9FrXoxXlYTTvYQgPSimTNe9Ie3cfM
         jP0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=G7LfMZmcJP20ZcML1C3FoJMIxVGRvpjeNeUhnlPc9/4=;
        b=NUrEBY3AuE9/jBnXjZ4hFU9Qb1Us0EbIPPRfQZi1OZhvtDojKEUky2Mnm+fTfIMBVy
         JeyE9FjA3FREFC2daZUtQCw9wNEYzqh9wICWjAB4Me2AoXlTJdoPRvYraabiVeWvUv03
         RDCJGsNMNwMBI91NnZs2KkLWg9lhyulgG1eVa6Yv1Unf0B/O57MzBh0mc3ucWn98gJ9f
         OYX3TrxBBjA0a/2N2h2fgnBwzQHjvfCaJLCWKwvzVH3pRdx4ONUDpQBw2XC4brs0ufI9
         H1W+sSHT3AKYUIRFLPHE8fBWwqXj503GrqRfIw7A+Oir740up+J+JRD10VQKc0J1YuCG
         UqMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id 6si495484qkh.3.2021.08.27.07.44.02
        for <clang-built-linux@googlegroups.com>;
        Fri, 27 Aug 2021 07:44:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 17REemKD003680;
	Fri, 27 Aug 2021 09:40:48 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 17REel3N003679;
	Fri, 27 Aug 2021 09:40:47 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 27 Aug 2021 09:40:47 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Daniel Axtens <dja@axtens.net>, Nick Desaulniers <ndesaulniers@google.com>,
        linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
        clang-built-linux@googlegroups.com, Paul Mackerras <paulus@samba.org>,
        Bill Wendling <morbo@google.com>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH] ppc: add "-z notext" flag to disable diagnostic
Message-ID: <20210827144047.GN1583@gate.crashing.org>
References: <20210812204951.1551782-1-morbo@google.com> <87sfzde8lk.fsf@linkitivity.dja.id.au> <20210813200508.7bqehxgd6ruerds5@google.com> <20210814125812.GC1583@gate.crashing.org> <CAFP8O3LZ3ZtpkF=RdyDyyXn40oYeDkqgY6NX7YRsBWeVnmPv1A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAFP8O3LZ3ZtpkF=RdyDyyXn40oYeDkqgY6NX7YRsBWeVnmPv1A@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

Hi!

On Sat, Aug 14, 2021 at 12:34:15PM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng wrot=
e:
> On Sat, Aug 14, 2021 at 5:59 AM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> >
> > On Fri, Aug 13, 2021 at 01:05:08PM -0700, Fangrui Song wrote:
> > > Text relocations are considered very awful by linker developers.
> >
> > By very few linker developers.

> https://groups.google.com/g/generic-abi/c/Ckq19PfLxyk/m/uW29sgkoAgAJ
> Ali Bahrami: "My opinion is that no one wants text relocations, but
> not labeling them if they do exist doesn't seem right. I find the
> presence of DF_TEXTREL very interesting when diagnosing various
> issues."

I don't know who that is, and that post has no context.

> https://gcc.gnu.org/legacy-ml/gcc/2016-04/msg00138.html
> ( "So why not simply create 'dynamic text relocations' then?  Is that
> possible with a pure linker change?" )
> Cary Coutant: "Ugh. Besides being a bad idea from a performance point
> of view, it's not even always possible to do. Depending on the
> architecture, a direct reference from an executable to a variable in a
> shared library may not have the necessary reach."

That is about a very specific kind of relocation.

> binutils-gdb commit "Add linker option: --warn-shared-textrel to
> produce warnings when adding a DT_TEXTREL to a shared object."
> Nick Clifton

That does not say text relocations are bad.  Of course you want to know
if they are there, for various reasons, like, if they are disallowed on
some systems.

> https://www.openwall.com/lists/musl/2020/09/26/3
> Szabolcs Nagy: "nice.  and gcc passes -z text for static pie code so
> that case should not end up with text rels."

That does not say text relocations are bad.

> Someone wrote "Overall, the overhead of processing text relocations
> can cause serious performance degradation." in Solaris' Linker and
> Libraries Guide.

In process startup, sure.  And it can make those processes run faster
as well.  That is the tradeoff with *all* relocations; you can make any
code without any relocations.  Relocations are a tradeoff, like most
things.

> > How would this be a benefit to security?
>=20
> https://flameeyes.blog/2016/01/16/textrels-text-relocations-and-their-imp=
act-on-hardening-techniques/

This means that those "hardening techniques" have some serious
weaknesses, that is all.  And hardening is not part of security
anyway; it is impact mitigation.

> FWIW I contributed a glibc patch allowing TEXTREL to co-exist with ifunc.
> It requires temporary mapping the text segment W^X.

What does W^X mean here?  It normally means no mapping is both writable
and executable at the same time.

> > > There are no text relocations, therefore no need for -z notext.
> >
> > This is a choice by the compiler, nothing more.  It saves some process
> > startup time, and allows slightly more maps to be shared by processes
> > that run the same images.  But it is a tradeoff, so it might change; an=
d
> > of course it is not an ABI requirement.

> Text relocations are generally awful.

Great arguments, thanks!  :-P

> GNU ld and gold's traditional "add DF_TEXTREL on-demand" behavior made
> such user errors easy to make.

That has no bearing on if text relocations are useful or not.

> I understand that kernels are special applications where we apply
> relocations once and many user-space objection can be less of a
> concern/ignored.
> However, the Linux kernel is already in a position where many linker
> options are controlled and thus should specify -z notext to make
> the intention explicit, or fix the problems (I think x86-64 is good;
> that said, powerpc
> has a higher cost using PC-relative instructions so pay the oneshot reloc=
ation
> time cost probably isn't a bad choice)

I have no idea what you mean.


Segher

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210827144047.GN1583%40gate.crashing.org.
