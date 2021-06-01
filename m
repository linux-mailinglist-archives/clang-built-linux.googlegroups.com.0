Return-Path: <clang-built-linux+bncBC53FPW2UIOBBS6S3KCQMGQEO6CHBRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7354A397BD0
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 23:40:28 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id m3-20020a2ea5830000b0290109369442e2sf4818851ljp.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 14:40:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622583628; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cv1cG1IEJQHXgYHnApYCh6OCLAEy0Uq7tHA9lgbhRr9Aw+CrrojIv3oY7ZTqOUq1ZW
         zQjQO75n3Ckjms9WgORUI7AGgK1HGDdHePwpgB+E5zxU5H7HCjE1kmoV634erYCa1BIG
         Eg0Yvt4AbxwNb7VA916PnNtPAl3U92W3Cs5leqp+zTNCTFjR7kk7HUZNN00JcwiX4vXz
         V6PFxHjl0m+9iOmGFi0fRHMyprNB/LidqV2TzdVZdPeyP76QEj2wwrmhSMfe4ymAfEpU
         lozBojWjL7gFf7DK9S6Uvqt1P2WtZ1CWX3EB91r7qCf3HN5V/ih/Sw29b8GtowUTDA+K
         WmXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature:dkim-signature;
        bh=hDXCQ2kkEjLinjwJlcILB8+sYtGSb19ARkpwyjZPJIc=;
        b=BjHskDJ/tQSY5FCc4HeZbAA4aeF7Xu8zNHh5Bin9h+IZ0KGPYSVG6gIlL/WYy9Kfh+
         m7FOqiny31nK9CeL1RJkpIUG1p1OEZK8KHdmniOrrk4bGMJM6qQl88VsjaW1cCjXnP1Q
         uHb5eW3tulerY3ozBQz5b7lNCr1Q5akActkILdLqYa8718oB4E1t6iuECLyQpHC84pTN
         9ZHIpTADHSD04E8B2PI+hYm4fU+LZkFfIHuk1rCsg0Tzl8falwGLXo+zTmtCZQc2cxRo
         OY60L+7CSnvWVYS7W71AkL3FDTGVMAW/SY+omsKZikVOwpQtM7B3ptdmE2LqRzTZukS9
         K/Sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=og8bAN+l;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hDXCQ2kkEjLinjwJlcILB8+sYtGSb19ARkpwyjZPJIc=;
        b=Tz3pxGmHn1uEoiRk2vhC5hsHRlW5Y5C7N1Jaj8E262qHyBvtMac5wLpjTxEeGYQjsK
         FydNczKrBxFeGQWv8YQN8Ob1MoVX0cUECajrPSCkKnzXGOmpGbZWY29mJ/t1AQvOMj4U
         YZLaHJ1VWTq+/BpiwsrsKJzL6ZUS1ba9N+JXPJdXjXq98Bb+CqdtSLQ2GwVljw8dKHLP
         wHaqwnznwIo4xj+R66Y4KtC1+YFVAzHq3HqkO/mqVglQX98qdaebnPWgGesGQIUlLlN5
         8j71ZIZ+0Ba3zQQuSaH4+iwVXP3u6aNMfQvQIacZG5DE+m6O5T3QXEgGKdMisnQ3bV7K
         meyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hDXCQ2kkEjLinjwJlcILB8+sYtGSb19ARkpwyjZPJIc=;
        b=thppbzeG3oy7yuupvvD0oDBk3Zhx0hiHC8+Xwu67uPRNJy7pCtBnW6UEG79bvUoWZt
         H1j4oPiaYjXnpNhoBtnev0b+wB3ocLimUfXFSPulmpZGwTxISQ6jhmrcBYy/0y7GtyV2
         YAv1CS5qQ1RkHJvbaOR49sOpGafafkGWHMtFb8Z/1F/TS0ZopsDLqhtIjnZTYNSKPEU4
         0VXY94LYEZBPWwN7JmX5C0U0YeXVCD06U8aMFYH9myLe1pBrITII048yGbUyZCvUgD7v
         LWzdRx3srbaO3oaaK0dczn3wY+C8xA+rxKl3CEQo0R1YJAuVbw5xMS+PYcUGCvMhD/xk
         k17w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hDXCQ2kkEjLinjwJlcILB8+sYtGSb19ARkpwyjZPJIc=;
        b=f0A2IEZEU7rhnp9x3N+8JLiaZ3WaFRtwpfHmP3fNuYMbxVLJ3RDskfIDjvn9P+eslw
         0lMIKANMPxMOBJJSg+N7zdOYFEfZNv7nxZmWjO4UuQDoWb5F18pl7+k3+zvyHiE8XP1p
         B7qQdBCJvFAEBq8eZuLlLAL/lrpXJPKEptoSAaJ/mR3Isu6QhliGsf4X/5ezYqfEulfF
         pfnxPItQg1yoeQx2vp8Vm4Wj8KX+WrCHeLUmhGRB9voxkYkslWpZedqBoIbLob+IlAak
         FP8zZNLcuADl+y0jKjiL4l3w1QLDUc2PDYBnzzSQDJZMS5rJDMl/o/8JmUPcWYicymHt
         TPow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532dGSDRUEmQEUsWB751Yswgr/xIvQ1RdoNZQY9oK2+SRPpiOlR2
	r2BsS+HDsHXNABEfB1cZyS8=
X-Google-Smtp-Source: ABdhPJwXqKNV8mb6OobmKSUPMcruF/8wwQFg57A2G0bB5/Xs0xTkEIi2qpcFQad3r29KAc7uVcVWQQ==
X-Received: by 2002:a05:6512:3f9f:: with SMTP id x31mr19584644lfa.248.1622583628062;
        Tue, 01 Jun 2021 14:40:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9806:: with SMTP id a6ls3604618ljj.10.gmail; Tue, 01 Jun
 2021 14:40:27 -0700 (PDT)
X-Received: by 2002:a2e:3c08:: with SMTP id j8mr4187601lja.481.1622583627065;
        Tue, 01 Jun 2021 14:40:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622583627; cv=none;
        d=google.com; s=arc-20160816;
        b=KAvOkwZVzSqK1RD7zwBNlEIGJwyWaUA1Y6OyTHO/FSWCJrC7CbN34OtFA6HzZosH0W
         /L0iOji8PCAurLoNwtMlfjNJM1w5UoPimzGpDl2deu9woAyQQX3hubrFQGhaDFKuL84e
         mC7rM5MBzwLeOFNmjpKvddtsAXqBw4hzJF2eZIjDGPlbQKfPY3+6q192XhSjeOdzoc8E
         5TxZufh8LljATaxUvZXWiPXO3c5keir6279ZazDgynd6a7jy7Oz3WU6uebNsTfD/QblJ
         FrAGOLE1zmiXac9zukSG3er5fZ5Lei9PjWXOvECVdzD1HGzh6bopFJ6/yhn+qH1lvINJ
         L3CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3GJ4iW9ne/KKSp4HSYBLS3JGEPYqPP2i6X+oTP0z2Ns=;
        b=hk2PMTiB4c+6ARDeZIHFX1NMrldg9zQkN0YH2GLjysgHZfmddUUc2//ENswm9zwPZP
         sg6N8IUz34lqQO8RHVMPGuUVDLIHJuZP0HVxDiL/mjVr/dTmE0QxIHhxT7g1YlqdK8O6
         bVBEJO7oUcFXFT9N6mxtoF/PBC4Bl+QrKZcmk6D9y4cwtPLUoyJfGbewHg5SrWHwfpWD
         JSxjcyT1+gbf6QgzGob5M4f71IWUplSiOiyCedIpR4mRciULuJar2CBVydL8Bl11sFAM
         W4LUe1PM7g41ZTtt+qIEJq8C0Q112+1bCau7UrYx/VKTsu8iHYa1/nL2IGJNIz9rtcCO
         d6oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=og8bAN+l;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id z25si890498lfu.6.2021.06.01.14.40.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 14:40:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id x38so24078146lfa.10
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 14:40:27 -0700 (PDT)
X-Received: by 2002:a05:6512:46c:: with SMTP id x12mr6130853lfd.203.1622583626848;
        Tue, 01 Jun 2021 14:40:26 -0700 (PDT)
Received: from hyperiorarchmachine.localnet (dcx7x4yb9bh06yk5jm2qt-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:3d09:bda0:2327:559b])
        by smtp.gmail.com with ESMTPSA id p9sm626662lfo.276.2021.06.01.14.40.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 14:40:26 -0700 (PDT)
From: jarmo.tiitto@gmail.com
To: Bill Wendling <morbo@google.com>, Kees Cook <keescook@chromium.org>, LKML <linux-kernel@vger.kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, Andrew Morton <akpm@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Jarmo Tiitto <jarmo.tiitto@gmail.com>, Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH] pgo: rename the raw profile file to vmlinux.profraw
Date: Wed, 02 Jun 2021 00:40:25 +0300
Message-ID: <5615959.Mqr2uNrfH2@hyperiorarchmachine>
In-Reply-To: <202106011210.B5A8881214@keescook>
References: <20210531202044.426578-1-morbo@google.com> <CAGG=3QVdXxLf0T9+n9FidrRcfdWY36m-i=4kPRJjOojWhjiywg@mail.gmail.com> <202106011210.B5A8881214@keescook>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=og8bAN+l;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12d
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Kees Cook wrote tiistaina 1. kes=C3=A4kuuta 2021 22.13.21 EEST:
> On Tue, Jun 01, 2021 at 01:24:39AM -0700, 'Bill Wendling' via Clang Built=
=20
Linux wrote:
> > On Mon, May 31, 2021 at 1:29 PM Nathan Chancellor <nathan@kernel.org>=
=20
wrote:
> > > On 5/31/2021 1:20 PM, Bill Wendling wrote:
> > > > Future PGO features may create other files in /sys/kernel/debug/pgo=
.
> > > > So
> > > > rename the kernel's raw profile data file to "vmlinux.profraw" to m=
ake
> > > > which part of the kernel the file is for more explicit.
> > > >=20
> > > > Note that future files in /sys/kernel/debug/pgo should follow a
> > > > similar
> > > > naming convention.
> > > >=20
> > > > Signed-off-by: Bill Wendling <morbo@google.com>
> > >=20
> > > Guess this clears up my confusion around the module patches :)
> >=20
> > To clarify, Jarmo did those patches on his own. I just wanted to
> > clarify the naming convention. :-)
>=20
> Is the expectation that there would be 1 file per module in
> /sys/kernel/debug/pgo/ after the modules patch?
>=20
> > -bw
> >=20
> > > Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> > >=20
> > > > ---
> > > >=20
> > > >   Documentation/dev-tools/pgo.rst | 6 +++---
> > > >   kernel/pgo/Kconfig              | 7 ++++---
> > > >   kernel/pgo/fs.c                 | 2 +-
> > > >   3 files changed, 8 insertions(+), 7 deletions(-)
> > > >=20
> > > > diff --git a/Documentation/dev-tools/pgo.rst
> > > > b/Documentation/dev-tools/pgo.rst index b7f11d8405b7..0200449c4843
> > > > 100644
> > > > --- a/Documentation/dev-tools/pgo.rst
> > > > +++ b/Documentation/dev-tools/pgo.rst
> > > >=20
> > > > @@ -76,7 +76,7 @@ The PGO kernel support creates the following file=
s in=20
debugfs:
> > > >   ``/sys/kernel/debug/pgo/reset``
> > > >  =20
> > > >       Global reset file: resets all coverage data to zero when writ=
ten
> > > >       to.
> > > >=20
> > > > -``/sys/kernel/debug/profraw``
> > > > +``/sys/kernel/debug/pgo/vmlinux.profraw``
> > > >=20
> > > >       The raw PGO data that must be processed with ``llvm_profdata`=
`.
> > > >=20
> > > > @@ -108,7 +108,7 @@ using the result to optimize the kernel:
> > > >      .. code-block:: sh
> > > >=20
> > > > -      $ cp -a /sys/kernel/debug/pgo/profraw /tmp/vmlinux.profraw
> > > > +      $ cp -a /sys/kernel/debug/pgo/vmlinux.profraw
> > > > /tmp/vmlinux.profraw
>=20
> And if so, these instructions would change (in the future) to something
> like:
>=20
>      $ cp -a /sys/kernel/debug/pgo/*.profraw /tmp/prof/
>=20
> ?
>=20
> -Kees

Hi,

To be clear the mucked up patches I sent are more like of RFC to get in=20
contact with the development.
Back to the code:

Yes, my future intention is that there will be one *.profraw file per modul=
e.
And curiously I would also have renamed the current profile data file to=20
"vmlinux.profraw" to disambiguate it from what part of kernel generated it.

I already wrote an small fix up that I think should be part of the upstream=
=20
code so that profiling the vmlinux works better.
It filters out any module originated content from vmlinux.profraw.

Above will be probably a good exercise for me.

Next, my future v2 module profiling machinery
would probably follow on top of your work.

-Jarmo


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5615959.Mqr2uNrfH2%40hyperiorarchmachine.
