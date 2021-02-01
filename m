Return-Path: <clang-built-linux+bncBDS6DTHSSUKBBJU64KAAMGQEIJXDOHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D26830B394
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 00:30:47 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id p12sf3256361lfu.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 15:30:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612222246; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z+1We4sccYcJ/ULPsTPBCR8mDGkdbRG595JOQgAq6Pqt5MGorrmkmhbftPuUG4YXxe
         HBUcLpqZUpN+a8k3EiGzJaQ4VUiijrHtt4oGRK1/6hT4X9ONctStA2x7ucr+ymTngacg
         pJYNecWlPAsLLEAmdKLcP967MQItfkCEtHriU0AxK+f0EPHUOqc10vd6pAlJQQxFCg46
         xzEK37TZT0QagkCuMYlbQSb/YbzUBHJaTDEAAHSEuC+IKjuPyhMm3nbiysA91tOGWt6e
         sMDBpprDM9BqCPj1fUkvMjLpMzUXnmLd25nULNLL8SQAzLajSKyCoMqEiIEc8y/0f5Av
         6ftQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wcgMiTJdw9viY2YuncrpBSm1Wao/2zr5PHG7mgadHA0=;
        b=zjjscBB5vbIigaZ62JIrRsZZoj7csDPO+aqLaz3NXTEkOW8AESoo7svjGnx8xbssIX
         P2Ds3Yk6qo8/ocV6TjWfVyBw8irOjy2uvIefbAwaZrnycsz0Jaxzokev7Kojysxhi/48
         +/Gk3pdnRk7VhC+AqjZylvzgZLoRsSfWAypPYVqYcQtgQaFaZCqQJfjalM1tpEFXPirM
         HP9geBaryXqpoljcer9R7jdlGUsk8KDZZWrC2zIpv+97XVP0f4d4qWqtY1XnEh0L2twB
         NG0QdLAJwzjWSykWH+5YfRUix/qSHrozMTxyB/uAuAV17sZxg6rlDQmu3g7Pv1RTYN3I
         TLKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qkm3HVzN;
       spf=pass (google.com: domain of groeck@google.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=groeck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wcgMiTJdw9viY2YuncrpBSm1Wao/2zr5PHG7mgadHA0=;
        b=J6s6h45aTXJBDiFad67PkGrnTCfmMGDzRm5eUechlEK4ToP6KLb2ZwKbtiKH/Tx8dP
         1iItLc6oeiTcO2wGGjaPnw7ikLAlBUD5GcL/jmVqoeC235SWg4kf18uqZJZS8uXZwjxI
         ppKigkxQ0Pleu5in7vlekZ3F0Yiess1cl6t34kTqlRQWsYUSYUICK58MJ0hyG4WiFLXJ
         mcEs80zWwFE3w6rQV44WV5l9yMNR0kl0NEz2ZnhH3cZnXXFBsS9f3xLXXsW7+7K6XM4q
         osWmAWslYqwvX8wid8jMml6IOFwJ503dckRb4ly4+CYujWVXoeYTtrvcJckiL2hmyeMu
         txZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wcgMiTJdw9viY2YuncrpBSm1Wao/2zr5PHG7mgadHA0=;
        b=MnQ7GyVTW2+CBezLz3hmUL6D+K4Ad/OhV0KJA8tlmuCDfmExMuTatAJhQLxWZS4gqN
         GzPebW1/gnmsIWdYLa+js4Wzc9xBrSJouUOyp/uROjsJhBkS3P6RuuNh+BDWck7tADeU
         xp6Z58z0ZY+7c+n19szsyp1Q6uxMypNxj8Azixl3Mu+SYOOhHj/g7GWeGnKlUhGHakjs
         gyvVK66sBdgpQzpe+bwFUZUgaCagIv6uNW++kf8dazwwV8uo0t/DFq6vPrC7nNtT9Xfh
         VgbrZ6YQJN43PC1df3kSXQCFDf8HmpvhJ5MMDcPjI0xZH62e2xFfD/q3KB081Xw5ZXOt
         WFLg==
X-Gm-Message-State: AOAM533QDgRaN7UESEue7LlYvgmw70kOk9i6u2Z5NvGklviPaqmKnHyn
	XZijth2D1S92mj3N25iIpJw=
X-Google-Smtp-Source: ABdhPJxWWm3w77wK/cKdJcU3AxCzSjvU2KmmFPHMN3RHtK0I2pvDsDAJ3vqWlXrXUies5ValQGAiKA==
X-Received: by 2002:a2e:700e:: with SMTP id l14mr11339385ljc.182.1612222246723;
        Mon, 01 Feb 2021 15:30:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:5748:: with SMTP id r8ls3440882ljd.8.gmail; Mon, 01 Feb
 2021 15:30:45 -0800 (PST)
X-Received: by 2002:a2e:9bc7:: with SMTP id w7mr12326109ljj.310.1612222245568;
        Mon, 01 Feb 2021 15:30:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612222245; cv=none;
        d=google.com; s=arc-20160816;
        b=iqXHB4Zbw9/LURVI/2oFFPODFrlcvbzPhMefZuzNU+kv3OTj4fwqDc2VwtUS9RkOxn
         s1kWKLJVLpAZ1/FCSCgZckzN13c/tXxppgEM8o4hUm/t+/8jA0C5gRuE5PmJByXGPIXu
         K8m+3Ygm7UPrKr+IBW7R7pBuNaJQdyMlMR4sIIS+xXrMCWCCMNeE5n5PcmowfxxBSN3U
         n60CySkZyUmp/Nqp0m0/jz/FBjhemxP/OuW4MpBklMudE3EQS2cGftr6XGYZLijY9Jl/
         qR1EataPtAFFc2/tUAR17uN1u8g+asZULAC3wb3Sq/wdH4OICAA0CUk0jecRKqIzeMe7
         FkXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hO6VZtwj3c9rWG8IPq/IeDKRkPi+xd8PXiXNqgIcxsQ=;
        b=HnTEo66U+hy4RZh0Jc9HB9AQuej/rog82s4NZ5N6MvIeEbIK29/wEyxubRo1U6U/Fq
         ILMe2lUhwzkss/VpWe2iiAybuOj6u7DHidBeInW4wQ1dLB2LFtmDJRSJCD8x2bvw1Qyi
         W9S66GFurqlGVC6ymHY3DXrEnefxfb3Zz+KqMStwoH3wgxjS+E8Q3kCOtDOhfsl86T0p
         bDmzTMfJ+1u6r3KryaXIhwxv1PHSEv7X0VlsnmGDuMylgeMU1wQyDFtdJ8zKxXgLpZS4
         07NuFwQxYLnSPktR2LHPnD5iHKdA3yWeYp4yL6tOy6kTdWXWYo8xB0pYui3EWoptYLM4
         fpdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qkm3HVzN;
       spf=pass (google.com: domain of groeck@google.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=groeck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id f18si1006963ljj.1.2021.02.01.15.30.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 15:30:45 -0800 (PST)
Received-SPF: pass (google.com: domain of groeck@google.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Received: by mail-ej1-x62b.google.com with SMTP id kg20so27083725ejc.4
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 15:30:45 -0800 (PST)
X-Received: by 2002:a17:906:cc5d:: with SMTP id mm29mr3640125ejb.183.1612222245030;
 Mon, 01 Feb 2021 15:30:45 -0800 (PST)
MIME-Version: 1.0
References: <20210129212009.GA2659554@localhost> <CAK8P3a19=Zdni0G2LQE58rrdgJ18zNoefio6GwVg36m5B0Eqdg@mail.gmail.com>
 <CAKwvOdm3sFE=hpai0NLJ_UAYNG2RO2mZGY33uHqmFgZm7fy_KQ@mail.gmail.com>
In-Reply-To: <CAKwvOdm3sFE=hpai0NLJ_UAYNG2RO2mZGY33uHqmFgZm7fy_KQ@mail.gmail.com>
From: "'Guenter Roeck' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 1 Feb 2021 15:30:33 -0800
Message-ID: <CABXOdTeQQv1kVF9uvU2DPf8ddWd6tzunVmjoGz77eOgbiQgOvA@mail.gmail.com>
Subject: Re: Minimum supported version of LLVM
To: kernelci@groups.io, Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Ilie Halip <ilie.halip@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000373f1c05ba4ebef2"
X-Original-Sender: groeck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qkm3HVzN;       spf=pass
 (google.com: domain of groeck@google.com designates 2a00:1450:4864:20::62b as
 permitted sender) smtp.mailfrom=groeck@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Guenter Roeck <groeck@google.com>
Reply-To: Guenter Roeck <groeck@google.com>
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

--000000000000373f1c05ba4ebef2
Content-Type: text/plain; charset="UTF-8"

On Mon, Feb 1, 2021 at 1:19 PM Nick Desaulniers via groups.io <ndesaulniers=
google.com@groups.io> wrote:

> On Fri, Jan 29, 2021 at 3:36 PM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > I'm actually more worried about the reverse: as there is six year
> > long-term support for kernels, do we expect to be able to build
> > the oldest kernel with the latest version of llvm at the end of that?
> >
> > E.g. would a linux-5.4 that today can be built with clang-8 through
> > clang-12 allow being built with clang-8 through clang-21 at the
> > end of its life in 2025, or do we assume that LTS kernel users also
> > have to use old compilers?
>
> I would think so.  The newer compiler should always be better or an
> improvement.  Can you think of a case where an old compiler must be
> used for older versions of kernel sources?  Stable has said they will
> always accept patches for newer toolchain support.
>

v4.4.y, v4.9.y, and v4.14.y require old versions of gcc for some
architectures.
New versions of gcc don't work for all architectures either, even
in the latest kernel, thanks to a variety of gcc bugs. See
https://github.com/groeck/linux-build-test/blob/master/bin/stable-build-arch.sh
for details.

Maybe clang/llvm is going to be better, but I would not bet on it. Maybe we
should archive this exchange and, 10 years from now, dig it out and have
a good laugh (sorry, my sarcasm is strong today).

Guenter


> --
> Thanks,
> ~Nick Desaulniers
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Groups.io Links: You receive all messages sent to this group.
> View/Reply Online (#1072): https://groups.io/g/kernelci/message/1072
> Mute This Topic: https://groups.io/mt/80221965/955378
> Group Owner: kernelci+owner@groups.io
> Unsubscribe: https://groups.io/g/kernelci/unsub [groeck@google.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABXOdTeQQv1kVF9uvU2DPf8ddWd6tzunVmjoGz77eOgbiQgOvA%40mail.gmail.com.

--000000000000373f1c05ba4ebef2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Feb 1, 2021 at 1:19 PM Nick Desau=
lniers via <a href=3D"http://groups.io">groups.io</a> &lt;ndesaulniers=3D<a=
 href=3D"mailto:google.com@groups.io">google.com@groups.io</a>&gt; wrote:<b=
r></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On Fri, Jan 29, 2021 at 3:36 PM Arnd Bergmann &lt;<a href=3D"mai=
lto:arnd@kernel.org" target=3D"_blank">arnd@kernel.org</a>&gt; wrote:<br>
&gt;<br>
&gt; I&#39;m actually more worried about the reverse: as there is six year<=
br>
&gt; long-term support for kernels, do we expect to be able to build<br>
&gt; the oldest kernel with the latest version of llvm at the end of that?<=
br>
&gt;<br>
&gt; E.g. would a linux-5.4 that today can be built with clang-8 through<br=
>
&gt; clang-12 allow being built with clang-8 through clang-21 at the<br>
&gt; end of its life in 2025, or do we assume that LTS kernel users also<br=
>
&gt; have to use old compilers?<br>
<br>
I would think so.=C2=A0 The newer compiler should always be better or an<br=
>
improvement.=C2=A0 Can you think of a case where an old compiler must be<br=
>
used for older versions of kernel sources?=C2=A0 Stable has said they will<=
br>
always accept patches for newer toolchain support.<br></blockquote><div><br=
></div><div>v4.4.y, v4.9.y, and v4.14.y require old versions of gcc for som=
e architectures.</div><div>New versions=C2=A0of gcc don&#39;t work for all =
architectures either,=C2=A0even</div><div>in the latest kernel,=C2=A0thanks=
 to a variety of gcc bugs. See</div><div><a href=3D"https://github.com/groe=
ck/linux-build-test/blob/master/bin/stable-build-arch.sh">https://github.co=
m/groeck/linux-build-test/blob/master/bin/stable-build-arch.sh</a></div><di=
v>for details.</div><div><br></div><div>Maybe clang/llvm is going to be bet=
ter, but I would not bet on it. Maybe we</div><div>should archive this exch=
ange and, 10 years from now, dig it out and have</div><div>a good laugh (so=
rry, my sarcasm is strong today).</div><div><br></div><div>Guenter</div><di=
v>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
-- <br>
Thanks,<br>
~Nick Desaulniers<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Groups.io Links: You receive all messages sent to this group.<br>
View/Reply Online (#1072): <a href=3D"https://groups.io/g/kernelci/message/=
1072" rel=3D"noreferrer" target=3D"_blank">https://groups.io/g/kernelci/mes=
sage/1072</a><br>
Mute This Topic: <a href=3D"https://groups.io/mt/80221965/955378" rel=3D"no=
referrer" target=3D"_blank">https://groups.io/mt/80221965/955378</a><br>
Group Owner: <a href=3D"mailto:kernelci%2Bowner@groups.io" target=3D"_blank=
">kernelci+owner@groups.io</a><br>
Unsubscribe: <a href=3D"https://groups.io/g/kernelci/unsub" rel=3D"noreferr=
er" target=3D"_blank">https://groups.io/g/kernelci/unsub</a> [<a href=3D"ma=
ilto:groeck@google.com" target=3D"_blank">groeck@google.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CABXOdTeQQv1kVF9uvU2DPf8ddWd6tzunVmjoGz77eOgbi=
QgOvA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CABXOdTeQQv1kVF9uvU2DPf8ddWd6tzunVm=
joGz77eOgbiQgOvA%40mail.gmail.com</a>.<br />

--000000000000373f1c05ba4ebef2--
