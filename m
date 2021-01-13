Return-Path: <clang-built-linux+bncBDBYDM54RYPRBUMD7X7QKGQE7ACWM3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x640.google.com (mail-ej1-x640.google.com [IPv6:2a00:1450:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2DD2F52BB
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 19:54:09 +0100 (CET)
Received: by mail-ej1-x640.google.com with SMTP id m11sf1242556ejr.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 10:54:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610564049; cv=pass;
        d=google.com; s=arc-20160816;
        b=OjHvgBZ0teP0P2ifsgAsrcgURnebuoQ4xVBaePOtSvKgf3RowzvtQvvG7yp02TLep9
         zyOEICi98jqWif2UXIj2EoWWBHyVfMvA8cqstXKluTrzOboazX4RG1okWOgSiXdsWlrw
         x/eUEZR8eL0UuN5ueRh0oCV1G+tmnlTOL3lVxfRwc5kQ9W8khOS1pNoN1uQxBcNzmMk/
         4eCSWZnDVifk/H5i8Ma0K5cH3wbLuDUhyuXwxnX0STavjKQ79Pw4X2ykTZ5gWh8qTSNC
         JgPfVNI4hvyzZFQ5RnAYHMqLkMt3DKDrPEfssDOzKauQShDTUG2jUvLZAECQou8NLLgN
         BCmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=L8hWIAU5da4vAgn+fXlMYBocJiGl4FeWihS2y71i8Wk=;
        b=Zy4rmsBnSUtRZaEhZ7ZuLArhyNPNx0/34rgcO4dqAdRyjBw1qzge9/i4widGVuSi+6
         h4lUB6H5phX7FTpRNGNbQ6u/QyUgDv3eDaoqN6gHw8f4otGjmJIQglIdkWSm3hkqem8b
         6WNzFDhyScuS883M+qz+PiikQbJPnxdxpS65tjBkUsKzCOrbcp4zcGahhV07iX6wjjRm
         +lfe22crrJsOi33s9uZAJQ+3Zya3b7RK3M0SV5tYiSFhWmxN7EvJb1+PJ+IkoR22vGWP
         JZ9Ny6o7gDRqmEVqFCoJ32UGvYLvsonuiSJAMFIJGIHDD4vMgGH7rqT39RU0ZK8lbg3X
         LmxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=drzqhua1;
       spf=pass (google.com: domain of vishal.bhoj@linaro.org designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=vishal.bhoj@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L8hWIAU5da4vAgn+fXlMYBocJiGl4FeWihS2y71i8Wk=;
        b=ODgSJOolIeqv6LpYVfXqW3k2hSR+TclNEvaFUYwPRUata7VfWrm/lJ5Vl826rZ43ce
         3lPKacGcOey0YOGzyT9sLwM8TW8Xnd+3J6nP3ktl1UNt5lziahZAsWpgKVwILaaH6p70
         vuRBEfGqhtZrLH9i4TFnSaIZ1mWikbfArnsEHmcwrHkteZAgICJMtzo4TJM7NSYahmc4
         vpn3g662KhSwFntXvBLHA49KMtKKqGYBh1UlGm6QKRGJS1OpEATJb2lYXwQq/Ij6+sjv
         MgzGpqjbfA2O95naFetsPvOiAyo1FUg++XphRlzzMfPxo6fyOVEdwo4eOaCLDKpkHbCk
         WHMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L8hWIAU5da4vAgn+fXlMYBocJiGl4FeWihS2y71i8Wk=;
        b=TSiqYA5i9rQvRCvkpwGJhnum7hN/YTIg+/dIfn06nOP+TPZVWlN2XQ/2+Jn9wgjuqX
         CyScKcBrKu8tNaqNdhl4jm8JJItFbJlT+gZxT90Nx0Bg4ssV/U3pqDUSqrnvswvMllzw
         jizlTC0vbkM5+uAkq1dR7mbJXuynlfpguPFuN9bcCvS89Wlji8nVunMWy1YPWUB6fq3q
         LV9aakAZ9yqzPIe1w8xcM+ZIyKEsklBI9aOxUvh/t6qJhVurdbUxDogN0v68HKSfKcgV
         yENM3Budn1NhlkA79WGhIxLzTKZQzRYZeb5DP5wnPGWc8WRBjeyiMv7GvV77GYTt0Xbf
         9cCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533f8dWSCPajh6uJonBrDT/c3dUtQm0cKgHM4cSdP+pRrKGo87oU
	fnSN2UivBfjUISYruSG6Noo=
X-Google-Smtp-Source: ABdhPJwUmm/Q0jfh1/THkyln34Ya4k0HESWOva+m9Pb0ezoK93THWj1vqftu4jLIJp5uWXmG91JN5Q==
X-Received: by 2002:aa7:c84c:: with SMTP id g12mr2885957edt.193.1610564049325;
        Wed, 13 Jan 2021 10:54:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1432:: with SMTP id c18ls355428edx.0.gmail; Wed, 13
 Jan 2021 10:54:08 -0800 (PST)
X-Received: by 2002:a05:6402:46:: with SMTP id f6mr2964754edu.163.1610564048385;
        Wed, 13 Jan 2021 10:54:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610564048; cv=none;
        d=google.com; s=arc-20160816;
        b=x1OrH8UHeYFDRd5K/GzH44Lwh8y69i2hc4vqSB+IEtRDXt6KqIZvOVbZw1GmDMTNLn
         zEMP9ZAi2Lh2n4pjwXcVGaNXM3vbP8E5InU0x/NajkH7K3jPMq7VtBspzqLhyrBdizgB
         yDvYhffdQP0c66mulDaRSiSHzVGnqojp7VwryvKKFPrlaLrwnC47XiX3WAZ0Fk70A5wr
         txDmLdy+G9rfmosFAspy4H+rcNlaJVeEaA4VNmyhq7GZmBygfsPQEXJLOzCzKDBj+m6S
         qPAb8S548EO5vXBhUeTMnIEnZF4rVh2mhYZx2EklxxNs41NBTx/b8zc/g7D2+908mpKZ
         n/Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=A2V5I8vK8xrAEph0xRJAaMlzEeIN3PGN2R59mDOfnDw=;
        b=m3IJK4k4OI//zwI5o21PkRxraUwDK+AN64lVdhbjGGFbrfQUsf8SlmXswKIn+zdWBH
         BOQYVkbnq2JWuHRzMgLGyHp3WzG9FP9lKRUJnd4i2Iqzj8/TnhyiibmDVcVISyGY6mMP
         Fsus+DZ8nu+3qZOKlLBgQbjtI9rCrG1FRWmdDJ32sxeooqONZhp1zlkmPNbSrA0iDgCb
         kwW2CYfJivQrWGuKQqaDsxFOxubITxX7/jtG6DyLLcz3oIE0LhKTGHrRXmrg9UbHk5b2
         YDNmvSalOlW31IDIBRALUIhKA/nImOH6n2G5g3HGPy666ED280CM3LRiaQcZsbN1dXgH
         v/hA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=drzqhua1;
       spf=pass (google.com: domain of vishal.bhoj@linaro.org designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=vishal.bhoj@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com. [2a00:1450:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id cc25si92092edb.2.2021.01.13.10.54.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 10:54:08 -0800 (PST)
Received-SPF: pass (google.com: domain of vishal.bhoj@linaro.org designates 2a00:1450:4864:20::32f as permitted sender) client-ip=2a00:1450:4864:20::32f;
Received: by mail-wm1-x32f.google.com with SMTP id i63so2547891wma.4
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 10:54:08 -0800 (PST)
X-Received: by 2002:a7b:c773:: with SMTP id x19mr543862wmk.127.1610564047998;
 Wed, 13 Jan 2021 10:54:07 -0800 (PST)
MIME-Version: 1.0
References: <CAGm4vTOdh3j7_9BPvDVLpMikktyEYY9T7P+zZP89F+eewiOeFQ@mail.gmail.com>
 <CAKwvOd=73XPTSQQ6YJG8_yCSXF49b3ZmFz-HsHDsVcGvO3canA@mail.gmail.com>
In-Reply-To: <CAKwvOd=73XPTSQQ6YJG8_yCSXF49b3ZmFz-HsHDsVcGvO3canA@mail.gmail.com>
From: Vishal Bhoj <vishal.bhoj@linaro.org>
Date: Thu, 14 Jan 2021 00:23:55 +0530
Message-ID: <CAKdWgSyrB4Psfnd+Ft9Q7jnEBGw=CtZ=16c=UqguNxNcJs-fXQ@mail.gmail.com>
Subject: Re: TuxBuild/TuxMake priorities?
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Dan Rue <dan.rue@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Antonio Terceiro <antonio.terceiro@linaro.org>
Content-Type: multipart/alternative; boundary="000000000000f82a0905b8cca9ad"
X-Original-Sender: vishal.bhoj@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=drzqhua1;       spf=pass
 (google.com: domain of vishal.bhoj@linaro.org designates 2a00:1450:4864:20::32f
 as permitted sender) smtp.mailfrom=vishal.bhoj@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

--000000000000f82a0905b8cca9ad
Content-Type: text/plain; charset="UTF-8"

Hi Nick,

On Tue, 12 Jan, 2021, 11:11 pm Nick Desaulniers, <ndesaulniers@google.com>
wrote:

> On Tue, Jan 12, 2021 at 9:30 AM Dan Rue <dan.rue@linaro.org> wrote:
> >
> > Hello,
> >
> > I won't be able to make it to the meeting tomorrow. I've seen a lot of
> > activity on https://github.com/ClangBuiltLinux/continuous-integration2
> > and a lot of issues that are blocked on tuxmake or tuxbuild issues,
> > but it's hard to know which ones are blockers vs nice to have vs
> > something in between.
> >
> > Can you help us prioritize these issues? Here's what I've found:
> >
> > - Allow llvm-related make variables
> > https://gitlab.com/Linaro/tuxbuild/-/issues/91 (blocks
> > https://github.com/ClangBuiltLinux/continuous-integration2/issues/18)
>
> ^ #2
>


We have added support to set these variables and updated the documentation:
https://gitlab.com/Linaro/tuxbuild#make-variables


> > - ability to specify --git-repo and --git-ref in --tux-config file
> > https://gitlab.com/Linaro/tuxbuild/-/issues/79 (blocks
> > https://github.com/ClangBuiltLinux/continuous-integration2/issues/3)
>

You can now specify them in buildset:
https://gitlab.com/Linaro/tuxbuild/-/blob/master/README.md#passing-git_repo-in-build-set


> ^ #1
>
> (the rest are lower priority)  Thanks Dan and team!
>
> > - big endian ppc builds are broken
> > https://gitlab.com/Linaro/tuxmake/-/issues/108 (blocks
> > https://github.com/ClangBuiltLinux/continuous-integration2/issues/2)
> > - Produce epapr images for PPC64le
> > https://gitlab.com/Linaro/tuxmake/-/issues/109 (blocks
> > https://github.com/ClangBuiltLinux/continuous-integration2/issues/2)
> > - uImage.gz is not a target for malta_kvm_guest_defconfig
> > https://gitlab.com/Linaro/tuxmake/-/issues/110 (blocks
> > https://github.com/ClangBuiltLinux/continuous-integration2/issues/1)
> >
> > Thanks,
> > Dan
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKdWgSyrB4Psfnd%2BFt9Q7jnEBGw%3DCtZ%3D16c%3DUqguNxNcJs-fXQ%40mail.gmail.com.

--000000000000f82a0905b8cca9ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi Nick,<br><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, 12 Jan, 2021, 11:11 pm Nick Desaulnie=
rs, &lt;<a href=3D"mailto:ndesaulniers@google.com">ndesaulniers@google.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Tue, Jan 12, 2021=
 at 9:30 AM Dan Rue &lt;<a href=3D"mailto:dan.rue@linaro.org" target=3D"_bl=
ank" rel=3D"noreferrer">dan.rue@linaro.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; I won&#39;t be able to make it to the meeting tomorrow. I&#39;ve seen =
a lot of<br>
&gt; activity on <a href=3D"https://github.com/ClangBuiltLinux/continuous-i=
ntegration2" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github=
.com/ClangBuiltLinux/continuous-integration2</a><br>
&gt; and a lot of issues that are blocked on tuxmake or tuxbuild issues,<br=
>
&gt; but it&#39;s hard to know which ones are blockers vs nice to have vs<b=
r>
&gt; something in between.<br>
&gt;<br>
&gt; Can you help us prioritize these issues? Here&#39;s what I&#39;ve foun=
d:<br>
&gt;<br>
&gt; - Allow llvm-related make variables<br>
&gt; <a href=3D"https://gitlab.com/Linaro/tuxbuild/-/issues/91" rel=3D"nore=
ferrer noreferrer" target=3D"_blank">https://gitlab.com/Linaro/tuxbuild/-/i=
ssues/91</a> (blocks<br>
&gt; <a href=3D"https://github.com/ClangBuiltLinux/continuous-integration2/=
issues/18" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github.c=
om/ClangBuiltLinux/continuous-integration2/issues/18</a>)<br>
<br>
^ #2<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"au=
to"><br></div><div dir=3D"auto">We have added support to set these variable=
s and updated the documentation:</div><div dir=3D"auto"><a href=3D"https://=
gitlab.com/Linaro/tuxbuild#make-variables">https://gitlab.com/Linaro/tuxbui=
ld#make-variables</a><br></div><div dir=3D"auto"><br></div><div dir=3D"auto=
"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
&gt; - ability to specify --git-repo and --git-ref in --tux-config file<br>
&gt; <a href=3D"https://gitlab.com/Linaro/tuxbuild/-/issues/79" rel=3D"nore=
ferrer noreferrer" target=3D"_blank">https://gitlab.com/Linaro/tuxbuild/-/i=
ssues/79</a> (blocks<br>
&gt; <a href=3D"https://github.com/ClangBuiltLinux/continuous-integration2/=
issues/3" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github.co=
m/ClangBuiltLinux/continuous-integration2/issues/3</a>)<br></blockquote></d=
iv></div><div dir=3D"auto"><br></div><div dir=3D"auto">You can now specify =
them in buildset:</div><div dir=3D"auto"><a href=3D"https://gitlab.com/Lina=
ro/tuxbuild/-/blob/master/README.md#passing-git_repo-in-build-set">https://=
gitlab.com/Linaro/tuxbuild/-/blob/master/README.md#passing-git_repo-in-buil=
d-set</a><br></div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
^ #1<br>
<br>
(the rest are lower priority)=C2=A0 Thanks Dan and team!<br>
<br>
&gt; - big endian ppc builds are broken<br>
&gt; <a href=3D"https://gitlab.com/Linaro/tuxmake/-/issues/108" rel=3D"nore=
ferrer noreferrer" target=3D"_blank">https://gitlab.com/Linaro/tuxmake/-/is=
sues/108</a> (blocks<br>
&gt; <a href=3D"https://github.com/ClangBuiltLinux/continuous-integration2/=
issues/2" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github.co=
m/ClangBuiltLinux/continuous-integration2/issues/2</a>)<br>
&gt; - Produce epapr images for PPC64le<br>
&gt; <a href=3D"https://gitlab.com/Linaro/tuxmake/-/issues/109" rel=3D"nore=
ferrer noreferrer" target=3D"_blank">https://gitlab.com/Linaro/tuxmake/-/is=
sues/109</a> (blocks<br>
&gt; <a href=3D"https://github.com/ClangBuiltLinux/continuous-integration2/=
issues/2" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github.co=
m/ClangBuiltLinux/continuous-integration2/issues/2</a>)<br>
&gt; - uImage.gz is not a target for malta_kvm_guest_defconfig<br>
&gt; <a href=3D"https://gitlab.com/Linaro/tuxmake/-/issues/110" rel=3D"nore=
ferrer noreferrer" target=3D"_blank">https://gitlab.com/Linaro/tuxmake/-/is=
sues/110</a> (blocks<br>
&gt; <a href=3D"https://github.com/ClangBuiltLinux/continuous-integration2/=
issues/1" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github.co=
m/ClangBuiltLinux/continuous-integration2/issues/1</a>)<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Dan<br>
<br>
<br>
<br>
-- <br>
Thanks,<br>
~Nick Desaulniers</blockquote></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKdWgSyrB4Psfnd%2BFt9Q7jnEBGw%3DCtZ%3D16c%3DU=
qguNxNcJs-fXQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">http=
s://groups.google.com/d/msgid/clang-built-linux/CAKdWgSyrB4Psfnd%2BFt9Q7jnE=
BGw%3DCtZ%3D16c%3DUqguNxNcJs-fXQ%40mail.gmail.com</a>.<br />

--000000000000f82a0905b8cca9ad--
