Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBKMQ76EAMGQELDUT4RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id EC26B3F2EB8
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 17:20:09 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id m10-20020a2e97ca000000b001bb5da17f7dsf1608334ljj.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 08:20:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629472809; cv=pass;
        d=google.com; s=arc-20160816;
        b=nIUBx8ekNUAb6mQ90T1Ty3Rkk3gripuq7YJxUU75/9QZSNEI/nT8wsxMOGS4f2DsSh
         FPd0Jmu6vZ9/H+XmhDDrPK0r+rrqLAmCzPCQpgNKod0MVxcxDtbEkYn8RE89sT+xuZvU
         b0p+ShxSzATabNx44IuUBOJzFT9YNFC6AxVE6+laHzUG73/vU1gBjn+RmjMrqSj1XHqV
         kFISqXZLuoEiocv4ookUz6OwQ/63KbKUQx4jqM3DGaG0rI1MPbakwOqvky648+64WmIG
         lw8wiJWKa53pGb0M4ycMhoco8XvUa3Y2I3Dx3ro5Sp+mTAdi4OTdMORby/5ijfHbP59S
         0Jrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=VrRPDq59BRMRc/6oF9xsxkc6hjIPxherbNn6hVeSulU=;
        b=gZLE2Y6vyou/Zzw8I4+VVulMDM3BOWS9s1oFQraS2yOihVY6UgG2RgnP62414idGkE
         k9YfqPaNLmZfdmQJWX0iPYh8NZRqCrBXpi6O0BcSYjIKpcPorR3ly5LUC+luAPLJfqbJ
         cyJmg0bqjur4Bnljqi7vF2dGAFcYGbCII0nz288I/eRbPS90yzLumkO1C+qG8NuUxxVG
         uGKVKDwNMzht19bUikEgqAmkzTP8gQY6y1j5Lu+vuDMyJup23B1vtuvwyESQjC/M8IKJ
         FXWizzbt5RTY80V5jiSd70ckkiL2JRNA/cfZ8a7ekAusSUaDHWfZgoJZ9n3cYyJk9aNm
         Bikg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=b2X4xbCi;
       spf=pass (google.com: domain of keescook@chromium.org designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VrRPDq59BRMRc/6oF9xsxkc6hjIPxherbNn6hVeSulU=;
        b=o1VZAd1CYPutGfBhfthzJipF/BSAF3Qlsci8Gz3k+c4PYFbxc7mG8XbS02YGLZkp86
         AQQAO8eMXZ40dY3vKZFMJc1+I1dgRTWH7fcx3XiX+449/tetm8F8G5mYSm8ZKiLDoFcH
         h0qzJNERpjLfttksvg3ne3uuUzsZe693rdXFciiuo1rgoDEECAwYaftAdZLYk0rdlo8s
         bac2qv4X3IGRsx1ixtwxuwPvGtK5r+tX19tnvvOMcCDtKS9QPQCQyag28M4o7N1AbfXk
         NYie5xkRcNUymF/G4Y6XOZaoqA227zAfyqWl4qxtIncBvsOT0wLeu+xsGUw4AHDha1WM
         IOhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VrRPDq59BRMRc/6oF9xsxkc6hjIPxherbNn6hVeSulU=;
        b=PujMTu6wBdbpODdbIm9Rmg7W9Q3JC6dZdLPu7VXEHYc6+eh2YNKttFGfPlYYU8Egqo
         NCmvGKNrni6a2lrAgXWtTjYOY1zZiVkmAutR2K+HcjYGJY/D2H6/RhUL7JKUvYyUUpfr
         av1+KQFpjEaXGscRNru2laYiEz/HdRvYyyfCW44Y44/QzkiqKcS9RI7nT8zuK7N9wuBz
         kfpGVYIjcYXO1L5vVzAo66V5PpQQb3l5SV8YWvPDMCo+fw08O911bcUGqFhHym+iBD61
         UXf5Fgtb6yEvJocWy06kDqfkv+gxeDmGqpRkDiTAvIpFG6QjaENew9+Q1AeujkchCYbZ
         X4Pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Z4VIEiFZ2VNJuqqrl2Ic2+RrYed4gybI3aHPR8OYXIQLli8Um
	34pBlI/NM2lfqwtjQYhAb1M=
X-Google-Smtp-Source: ABdhPJxohl2ipPEuGETV8etgK+6AdtXZ07heS01dYOHUQrjSFMi5MM8fcH/qcDaidxBfhL84y6dUxw==
X-Received: by 2002:a05:6512:36d9:: with SMTP id e25mr15334762lfs.553.1629472809456;
        Fri, 20 Aug 2021 08:20:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:c13:: with SMTP id z19ls553373lfu.0.gmail; Fri, 20
 Aug 2021 08:20:08 -0700 (PDT)
X-Received: by 2002:a19:4f1a:: with SMTP id d26mr14746274lfb.377.1629472808386;
        Fri, 20 Aug 2021 08:20:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629472808; cv=none;
        d=google.com; s=arc-20160816;
        b=gUQCsvZEuT8AdW1z26QeRl7nJRatAhHNIgA3ESgkUcx31kqjNYWqBiZRBrhSoaFHXp
         5S64HnlmDq699N5lRbyEDGe4qHhFgifxhOJ76prcYrXS9MevyQGTAz7wFimsHGr2CcmZ
         F2sxkKoc4174uNN8kN4B4U9xFM7aM8HeFaX8xr2uwkSH5Ny8/aKQBuCQo2iIiMoX8gh4
         8u67PsjL8rCPcsWeCr0j1aylargBITV2VWfbE5I+/Nz2mZEvV9ZjhawXX1FGB4wTKNyT
         Q66jcv/LrkTUIDff/GuOOtch39oet0gR0RpDYZreuft74iICCuA/XqGJV5ih42ME993x
         2TuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jArOH9DWJtEL7rGhDNvTMieQo+4wLtaclY4qBgWzUME=;
        b=TDKO1YnRZgvs1PemfmjYm7UTQdsqCZ1p5utYunUXL21BOuNo2nAPoDItpNwP/qXaYl
         6MJitEhPr9I8AID1VNuwR2RzI+NOrxSh/z5/1E28r1j5KJjBp2yKUd53KFd/XR5CNwr5
         q5Ab0MoUk9LWMutcZ3bUWHDCeZkcGokqyDzu1IdPxSsCk804eima5/zucIFinB1+pR37
         CDf6mGV2r5b5KcTDPNGJkGPFzjk+bzXIzQ3NEMHUKj5ietmKrRQ8CMTZGsc9a6Eo8iJC
         Ojqx8mQYK/BeEsEi0oMUKaWSyFIQQWlT5G6BL76w7mPoAWk1TMM5Nubw0OOi48Po28LN
         h+Vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=b2X4xbCi;
       spf=pass (google.com: domain of keescook@chromium.org designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id p17si462710lfs.8.2021.08.20.08.20.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Aug 2021 08:20:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id u22so21246750lfq.13
        for <clang-built-linux@googlegroups.com>; Fri, 20 Aug 2021 08:20:08 -0700 (PDT)
X-Received: by 2002:ac2:5d4a:: with SMTP id w10mr15468565lfd.529.1629472808224;
 Fri, 20 Aug 2021 08:20:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-23-keescook@chromium.org> <nycvar.YFH.7.76.2108201501340.15313@cbobk.fhfr.pm>
In-Reply-To: <nycvar.YFH.7.76.2108201501340.15313@cbobk.fhfr.pm>
From: Kees Cook <keescook@chromium.org>
Date: Fri, 20 Aug 2021 08:19:55 -0700
Message-ID: <CAJr-aD=QOc=78Dn0kQwDfuv=uW7WuWReLVr=vFBXRhHDkth0BQ@mail.gmail.com>
Subject: Re: [PATCH v2 22/63] HID: cp2112: Use struct_group() for memcpy() region
To: Jiri Kosina <jikos@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Benjamin Tissoires <benjamin.tissoires@redhat.com>, linux-input <linux-input@vger.kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Andrew Morton <akpm@linux-foundation.org>, linux-wireless <linux-wireless@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, linux-staging@lists.linux.dev, 
	linux-block <linux-block@vger.kernel.org>, linux-kbuild <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-hardening@vger.kernel.org
Content-Type: multipart/alternative; boundary="000000000000e7de6205c9ff337d"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=b2X4xbCi;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2a00:1450:4864:20::12f
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

--000000000000e7de6205c9ff337d
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 20, 2021, 6:01 AM Jiri Kosina <jikos@kernel.org> wrote:

> On Tue, 17 Aug 2021, Kees Cook wrote:
>
> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > field bounds checking for memcpy(), memmove(), and memset(), avoid
> > intentionally writing across neighboring fields.
> >
> > Use struct_group() in struct cp2112_string_report around members report,
> > length, type, and string, so they can be referenced together. This will
> > allow memcpy() and sizeof() to more easily reason about sizes, improve
> > readability, and avoid future warnings about writing beyond the end of
> > report.
> >
> > "pahole" shows no size nor member offset changes to struct
> > cp2112_string_report.  "objdump -d" shows no meaningful object
> > code changes (i.e. only source line number induced differences.)
> >
> > Cc: Jiri Kosina <jikos@kernel.org>
> > Cc: Benjamin Tissoires <benjamin.tissoires@redhat.com>
> > Cc: linux-input@vger.kernel.org
> > Signed-off-by: Kees Cook <keescook@chromium.org>
>
> Applied, thanks.
>

Same for this one: it's part of the larger series.

-Kees

>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJr-aD%3DQOc%3D78Dn0kQwDfuv%3DuW7WuWReLVr%3DvFBXRhHDkth0BQ%40mail.gmail.com.

--000000000000e7de6205c9ff337d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, Aug 20, 2021, 6:01 AM Jiri Kosina &lt;<a href=
=3D"mailto:jikos@kernel.org">jikos@kernel.org</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">On Tue, 17 Aug 2021, Kees Cook wrote:<br>
<br>
&gt; In preparation for FORTIFY_SOURCE performing compile-time and run-time=
<br>
&gt; field bounds checking for memcpy(), memmove(), and memset(), avoid<br>
&gt; intentionally writing across neighboring fields.<br>
&gt; <br>
&gt; Use struct_group() in struct cp2112_string_report around members repor=
t,<br>
&gt; length, type, and string, so they can be referenced together. This wil=
l<br>
&gt; allow memcpy() and sizeof() to more easily reason about sizes, improve=
<br>
&gt; readability, and avoid future warnings about writing beyond the end of=
<br>
&gt; report.<br>
&gt; <br>
&gt; &quot;pahole&quot; shows no size nor member offset changes to struct<b=
r>
&gt; cp2112_string_report.=C2=A0 &quot;objdump -d&quot; shows no meaningful=
 object<br>
&gt; code changes (i.e. only source line number induced differences.)<br>
&gt; <br>
&gt; Cc: Jiri Kosina &lt;<a href=3D"mailto:jikos@kernel.org" target=3D"_bla=
nk" rel=3D"noreferrer">jikos@kernel.org</a>&gt;<br>
&gt; Cc: Benjamin Tissoires &lt;<a href=3D"mailto:benjamin.tissoires@redhat=
.com" target=3D"_blank" rel=3D"noreferrer">benjamin.tissoires@redhat.com</a=
>&gt;<br>
&gt; Cc: <a href=3D"mailto:linux-input@vger.kernel.org" target=3D"_blank" r=
el=3D"noreferrer">linux-input@vger.kernel.org</a><br>
&gt; Signed-off-by: Kees Cook &lt;<a href=3D"mailto:keescook@chromium.org" =
target=3D"_blank" rel=3D"noreferrer">keescook@chromium.org</a>&gt;<br>
<br>
Applied, thanks.<br></blockquote></div></div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">Same for this one: it&#39;s part of the larger series.</div=
><div dir=3D"auto"><br></div><div dir=3D"auto">-Kees</div><div dir=3D"auto"=
><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
</blockquote></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAJr-aD%3DQOc%3D78Dn0kQwDfuv%3DuW7WuWReLVr%3Dv=
FBXRhHDkth0BQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">http=
s://groups.google.com/d/msgid/clang-built-linux/CAJr-aD%3DQOc%3D78Dn0kQwDfu=
v%3DuW7WuWReLVr%3DvFBXRhHDkth0BQ%40mail.gmail.com</a>.<br />

--000000000000e7de6205c9ff337d--
