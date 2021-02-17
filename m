Return-Path: <clang-built-linux+bncBCKIT2MIT4IBBG6IW2AQMGQERO74VEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0367931E2F8
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Feb 2021 00:17:48 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id u14sf89801qke.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 15:17:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613603868; cv=pass;
        d=google.com; s=arc-20160816;
        b=aWXpr7qYZ7O4PjLekMaGHH1VwpLuLekNGQzGPsL4dOjW1GX55B7MPIqYUgdK+HKqQG
         2AFKBvH0PJLUnbGUfsFvbJCPMpltV3X4b/yQ5PhUS0h2YKg2KiuwwVguaLZd6F8GTVbF
         K19VhbSsDSmRDVcl7A5cSin6Cez0SdpCJFaokgMqhst4vM9NdtfX1xTxHVkedyvl1nyf
         fy+gZIxBWfD87XOo+df2733o0hDT1OHBW+kvHdCVeX3bU+47/F0X3Rwd6C8PSfU0DXTi
         VJ6yehXW58t91neZPFFNKTZUm+X5z6RW+Cxg8fSZgCbriN9/Pv8n0HLVMBRuuLrxr+Jr
         +67Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=gKG4KsM/y00QmSTmFw/VaFq6hZNbeVawS9RLj7SYSo0=;
        b=rf7FwRiqnL+5cHzXbfoVCO1W9e8H6HDTm77Li2mErrvy4dMlDMYgCzUrIc0s5eCsTW
         fN4V75Tv1yeABDXWejuKwzZTEqBv2Bh12GVxXoSiSxZ+vvAgCO2pfv4VPsRkbKBz7/Zy
         L2NzBqeGPPVOfJT6ZJVzum7MfxJoxXTmrAAJrYx4pclcdgnGgz2ZJ0j7hPJZQnSXlvqB
         UeCwnTRV6kJgqm2LH80bPXcnZpE3j/Jrzsuvx04gxzXX7XSLpXnf/ZoX5zh9GoxYZ+0e
         tjCyovd51ksC4pt7+n5nxThkbZoeKJK4yDheJTOYwvxAbFWJqvQ+/3H2XxKdFOpkXDvK
         mooQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=jwalCJEG;
       spf=pass (google.com: domain of dan.rue@linaro.org designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=dan.rue@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gKG4KsM/y00QmSTmFw/VaFq6hZNbeVawS9RLj7SYSo0=;
        b=hmUGQJmYUtQwAJzD1tmuKaIxEPnXsVQMyjIVURhJybQy+xHwcbqhSc9ll1LcYNmO2p
         pm+kYdz82+cBP66exg4rmlGYUBNU04RYqRk3Rq+nctyvXaMNbeQTCRihfqaIhchdmec8
         ukCTEM1RbM9AiEUAAyTUXn7ORGb76loc5jivFW5rbLI/mObxu6Jw224szpLb8MpHz8y4
         fxBAEelquhhCSaITjLkjdduowusIfjCKncyDXz3HtegG+QhmMrzhZ8DeCB9EcS7P1Ys1
         SDWEpa7TNEqTRsfS3Osn++m8O7IESmMRyYKAHWW1r2DD0NhFT9b8+MdInLryiaqDcTso
         jH3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gKG4KsM/y00QmSTmFw/VaFq6hZNbeVawS9RLj7SYSo0=;
        b=PnDuBKL8vZs8AcofSClqdqlMLWBkYqiFf+rrpEtcuP7lnY0wPdSbV1ibAaUe6qtKnS
         7SDwVQP9aBC2y8xVHIybFUZ0NAxrG2r/IdgswY3qHeK/EMnn6uQDFlVTDAfEVuourYYh
         KekpTe1ea2yD1ndQrdnKAe2Dl2e7hTfklioyPQYa1JlaKYCRZcw+D/WXe+3manOMIBDD
         uaXo0cuFcPbAlPI2ZbUoPTw1nKY+TotRqRd6ZwFm/G6dIh7qIlEAv8TwkcnUSTywqOKi
         JHAAhV01y/uRELBYVQCjTaK8apSa+u6Fj6/V0h05sa0E/QdIRUjqgoJiYx5OW8dJulK3
         dxoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HDsdGILTCSx4SqqVR/XfbGpSghVwfrax5PEbk2LStKC3S4mM+
	vGBZ6hKGcU0WqEZnzfWAg9g=
X-Google-Smtp-Source: ABdhPJwJYSn4JV/r9ZOxDEeh6cftDD6eMOOulsTOqbpkcrNXJpU1qEmgFkgP5+PJwNP0GWoHDzE27Q==
X-Received: by 2002:a37:a68a:: with SMTP id p132mr1712025qke.26.1613603867898;
        Wed, 17 Feb 2021 15:17:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a608:: with SMTP id p8ls1815141qke.4.gmail; Wed, 17 Feb
 2021 15:17:47 -0800 (PST)
X-Received: by 2002:a37:59c1:: with SMTP id n184mr1704097qkb.67.1613603867547;
        Wed, 17 Feb 2021 15:17:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613603867; cv=none;
        d=google.com; s=arc-20160816;
        b=uNwQYz5ACr2HsgBuixucx/9vPpNZ+3iO0BC07zBBFSWo0fMEN+lB2bhTzVrtfrHkte
         mOuxvByIjISWe16r+lw2X+2L00jUu2Kc7Gj1v2j/fe3wKHJmJlwa2aHIfKJVsThNPg+H
         t/2wI1GfDDHoITtekfgfOOdpFQPHZhNhGUdAa4eIGtTKRzJmCYbpy0IaRa6RSLM5LxLU
         6KLZuS8pv4qM4A++xpyusj9ggfwSzhoRHPBCpQofxYlOVZXUOMxyv5fR53FJQ3D6rf2t
         0tsaarEZynjL6yS1eiQIywPQmkY6uYGb6Vfx9fJVzqJlfHZ8lnrxMaChk6AQHxR4Y4Fz
         HpTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KEq+r/iKmLvfxS4BW5PKvmskywVSKaKhTW15OdHSoN0=;
        b=laneXp/gXgiRA4AleeotBZNabsD/tcrA7OgDlN7L1VoyXntG+nyzs0BvJp9MK/i3OV
         yYLdXnE7SalloRFoPsed8gCR9lOPaS6zKVCgPtfDrGQ/hJLWC0hzFlevkPBQYetwYDL8
         0gRKSDUzuR4YDfO4l7j8u59YA6TKW2ySSKq0V1fwVun++FdWc+v2tHTdrJhcxeHsaSoN
         13+kbB44/4Yv4mmO3rYxaYwBQdUfVKHklizc22zBx7qCRL5iSdodv4E5w3upia+Ic5Bc
         9dQ/R3xJuxKmKo0g6u6SesH6o8INhfm7uWcBy8Ssska6wPZEhvnKZo7GkKgygAbbWZT0
         +B3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=jwalCJEG;
       spf=pass (google.com: domain of dan.rue@linaro.org designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=dan.rue@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com. [2607:f8b0:4864:20::136])
        by gmr-mx.google.com with ESMTPS id z14si123459qtv.0.2021.02.17.15.17.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Feb 2021 15:17:47 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.rue@linaro.org designates 2607:f8b0:4864:20::136 as permitted sender) client-ip=2607:f8b0:4864:20::136;
Received: by mail-il1-x136.google.com with SMTP id y15so12882775ilj.11
        for <clang-built-linux@googlegroups.com>; Wed, 17 Feb 2021 15:17:47 -0800 (PST)
X-Received: by 2002:a05:6e02:1a25:: with SMTP id g5mr1298804ile.2.1613603867052;
 Wed, 17 Feb 2021 15:17:47 -0800 (PST)
MIME-Version: 1.0
References: <CAGm4vTNaq05cFMZEC6zN0WEeq2-+_DgK73XM3xsNdbXX7D_Krg@mail.gmail.com>
 <CAKwvOdnjyunWptu=2DzsZ6oxvar32RN00QGbAzD_-843+RnFzQ@mail.gmail.com>
In-Reply-To: <CAKwvOdnjyunWptu=2DzsZ6oxvar32RN00QGbAzD_-843+RnFzQ@mail.gmail.com>
From: Dan Rue <dan.rue@linaro.org>
Date: Wed, 17 Feb 2021 17:17:36 -0600
Message-ID: <CAGm4vTNNc1i-EmQzAhhe1xnjKO0ZFdCN9+B9znW4zK3QJkJP2g@mail.gmail.com>
Subject: Re: Do you want to share your builds with KernelCI?
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: tuxsuite <tuxsuite@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000004df7f605bb906d98"
X-Original-Sender: dan.rue@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=jwalCJEG;       spf=pass
 (google.com: domain of dan.rue@linaro.org designates 2607:f8b0:4864:20::136
 as permitted sender) smtp.mailfrom=dan.rue@linaro.org;       dmarc=pass
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

--0000000000004df7f605bb906d98
Content-Type: text/plain; charset="UTF-8"

On Wed, Feb 17, 2021 at 4:43 PM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> On Wed, Feb 17, 2021 at 1:37 PM Dan Rue <dan.rue@linaro.org> wrote:
> >
> > Hello, and welcome to the latest updates from TuxSuite!
> >
> > # Integration with KernelCI
> >
> > TuxBuild is rolling out integration with the KernelCI Common Reporting
> > database project ("KCIDB"). This is opt-in - if you would like your
> > build data publicly shared with KernelCI, we will turn on the
> > integration for your builds in the back end.
> >
> > For more details about the project, see the blog post
> >
> https://foundation.kernelci.org/blog/2020/08/21/introducing-common-reporting/
> .
> >
> > If you would like your builds to be included, please reply. By default,
> > builds will remain private.
>
> Please include results from clang built linux builds via our token for
> KCIDB.
>

Done! It should be in production KCIDB by end of week.

Dan


>
> >
> > # Moving to a Mailing List
> >
> > I've been sending these emails to you directly, and this is the last one
> > I'll send direct.
> >
> > We have a mailing list which anyone can subscribe to at
> > https://tuxsuite.com. Future emails will go exclusively to that email
> > list.
> >
> > I'm going to go ahead and enroll all of the TuxSuite users into that
> > list. Going forward, anyone may subscribe/unsubscribe at will. If you're
> > not a TuxSuite user and receiving this email, you will probably not be
> > auto-subscribed by me, and you should go to https://tuxsuite.com and
> > enroll if you'd like to continue hearing from us.
> >
> > # Moving to TuxSuite Authentication
> >
> > We are migrating all TuxBuild users to TuxSuite accounts. You do not
> > have to do anything - your existing tokens will continue to work.
> >
> > You will be receiving an email from Vishal with your new account
> > details. If you would like to create new tokens or remove existing
> > tokens, you may do that by signing into your account. You may also
> > change your password. And that's it, for now!
> >
> > The reason for this change is to allow you to use your same tokens for
> > TuxTest, once it's available.
> >
> > # IRC & Discord
> >
> > We are trying out Discord, which is a modern chat application. If you'd
> > like to join, follow the link https://discord.gg/4hhTzUrj5M
> >
> > We also set up IRC channels on freenode at #tuxsuite and #tuxmake.
> >
> > Please feel free to join and collaborate with us as well as other
> > TuxSuite users.
> >
> > # Kselftest & Clang-12
> >
> > TuxMake now has support to build kselftest. Usage details can be found
> > at https://docs.tuxmake.org/targets/#kselftest. Support is not yet in
> > TuxBuild but will be coming soon.
> >
> > Both TuxMake and TuxBuild now support clang-12.
> >
> >
> > That's all for today. Stay well!
> >
> > Dan
>
>
>
> --
> Thanks,
> ~Nick Desaulniers
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGm4vTNNc1i-EmQzAhhe1xnjKO0ZFdCN9%2BB9znW4zK3QJkJP2g%40mail.gmail.com.

--0000000000004df7f605bb906d98
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Feb 17, 2021 at 4:43 PM Nick Desa=
ulniers &lt;<a href=3D"mailto:ndesaulniers@google.com">ndesaulniers@google.=
com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">On Wed, Feb 17, 2021 at 1:37 PM Dan Rue &lt;<=
a href=3D"mailto:dan.rue@linaro.org" target=3D"_blank">dan.rue@linaro.org</=
a>&gt; wrote:<br>
&gt;<br>
&gt; Hello, and welcome to the latest updates from TuxSuite!<br>
&gt;<br>
&gt; # Integration with KernelCI<br>
&gt;<br>
&gt; TuxBuild is rolling out integration with the KernelCI Common Reporting=
<br>
&gt; database project (&quot;KCIDB&quot;). This is opt-in - if you would li=
ke your<br>
&gt; build data publicly shared with KernelCI, we will turn on the<br>
&gt; integration for your builds in the back end.<br>
&gt;<br>
&gt; For more details about the project, see the blog post<br>
&gt; <a href=3D"https://foundation.kernelci.org/blog/2020/08/21/introducing=
-common-reporting/" rel=3D"noreferrer" target=3D"_blank">https://foundation=
.kernelci.org/blog/2020/08/21/introducing-common-reporting/</a>.<br>
&gt;<br>
&gt; If you would like your builds to be included, please reply. By default=
,<br>
&gt; builds will remain private.<br>
<br>
Please include results from clang built linux builds via our token for KCID=
B.<br></blockquote><div><br></div><div><div dir=3D"ltr">Done! It should be =
in production KCIDB=C2=A0by end of week.<div><br></div><div>Dan</div></div>=
</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
&gt;<br>
&gt; # Moving to a Mailing List<br>
&gt;<br>
&gt; I&#39;ve been sending these emails to you directly, and this is the la=
st one<br>
&gt; I&#39;ll send direct.<br>
&gt;<br>
&gt; We have a mailing list which anyone can subscribe to at<br>
&gt; <a href=3D"https://tuxsuite.com" rel=3D"noreferrer" target=3D"_blank">=
https://tuxsuite.com</a>. Future emails will go exclusively to that email<b=
r>
&gt; list.<br>
&gt;<br>
&gt; I&#39;m going to go ahead and enroll all of the TuxSuite users into th=
at<br>
&gt; list. Going forward, anyone may subscribe/unsubscribe at will. If you&=
#39;re<br>
&gt; not a TuxSuite user and receiving this email, you will probably not be=
<br>
&gt; auto-subscribed by me, and you should go to <a href=3D"https://tuxsuit=
e.com" rel=3D"noreferrer" target=3D"_blank">https://tuxsuite.com</a> and<br=
>
&gt; enroll if you&#39;d like to continue hearing from us.<br>
&gt;<br>
&gt; # Moving to TuxSuite Authentication<br>
&gt;<br>
&gt; We are migrating all TuxBuild users to TuxSuite accounts. You do not<b=
r>
&gt; have to do anything - your existing tokens will continue to work.<br>
&gt;<br>
&gt; You will be receiving an email from Vishal with your new account<br>
&gt; details. If you would like to create new tokens or remove existing<br>
&gt; tokens, you may do that by signing into your account. You may also<br>
&gt; change your password. And that&#39;s it, for now!<br>
&gt;<br>
&gt; The reason for this change is to allow you to use your same tokens for=
<br>
&gt; TuxTest, once it&#39;s available.<br>
&gt;<br>
&gt; # IRC &amp; Discord<br>
&gt;<br>
&gt; We are trying out Discord, which is a modern chat application. If you&=
#39;d<br>
&gt; like to join, follow the link <a href=3D"https://discord.gg/4hhTzUrj5M=
" rel=3D"noreferrer" target=3D"_blank">https://discord.gg/4hhTzUrj5M</a><br=
>
&gt;<br>
&gt; We also set up IRC channels on freenode at #tuxsuite and #tuxmake.<br>
&gt;<br>
&gt; Please feel free to join and collaborate with us as well as other<br>
&gt; TuxSuite users.<br>
&gt;<br>
&gt; # Kselftest &amp; Clang-12<br>
&gt;<br>
&gt; TuxMake now has support to build kselftest. Usage details can be found=
<br>
&gt; at <a href=3D"https://docs.tuxmake.org/targets/#kselftest" rel=3D"nore=
ferrer" target=3D"_blank">https://docs.tuxmake.org/targets/#kselftest</a>. =
Support is not yet in<br>
&gt; TuxBuild but will be coming soon.<br>
&gt;<br>
&gt; Both TuxMake and TuxBuild now support clang-12.<br>
&gt;<br>
&gt;<br>
&gt; That&#39;s all for today. Stay well!<br>
&gt;<br>
&gt; Dan<br>
<br>
<br>
<br>
-- <br>
Thanks,<br>
~Nick Desaulniers<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAGm4vTNNc1i-EmQzAhhe1xnjKO0ZFdCN9%2BB9znW4zK3=
QJkJP2g%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAGm4vTNNc1i-EmQzAhhe1xnjKO0ZFdCN=
9%2BB9znW4zK3QJkJP2g%40mail.gmail.com</a>.<br />

--0000000000004df7f605bb906d98--
