Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBJ6CQ33QKGQEWAVV5LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC751F6057
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 05:12:41 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id f18sf3383820qvr.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 20:12:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591845160; cv=pass;
        d=google.com; s=arc-20160816;
        b=dzczyDWjQK2z5Egl4FANXxOthcvrTTSywn/gBkeAr0gorfWEZvGEzsthkV2xDcVWXk
         4rmZoD6TtCOpD6qmg/Lzb0Y8so3mj3tddI3mPyxUtYhVmUzgoQef0KRmgJIbclpobyM8
         IpKjN6eU94pSTcjOjp0fWF8/OuolTcYWL3NiP+TpUOD0gAEBZtI1vshu56fxB4kiucFz
         r3ZHCn3QRyQ6o+HG5he7WUd+KQ3wLm4tGP/fGxWWzB/AA+2FtGmSIj8z29x9AcwVwKBv
         IEA/C90WJQfLHaEfb7ipoXmQKPDJpU1xG3RXfmgf8RI4UCAeh7v9EyXGhTYKzVDC9eDC
         jG2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=OewiJUmktcezoatEYLu2z8qmz+NiPgjWAPnzkQowyiA=;
        b=b/FY+5caqMFj9BxYgcHGEyXBK1D07HY2MuRqHaTW2Ga8s8sqXR6jDz8uBbWqoQv2Q3
         wer3Gb2ejiqtxC8Bn7G52/LTy/wld/YkmiYfiXdqeBTvdWIOTOESoS8G5CfCg/9Oq1Bx
         qR0N3xBsxOM/8yPDmeeB0pcMUag/xfi8i0owi2/tn04Y0LLXvWseWeNPLWQzDMOR9OMK
         54vg5Ye/bhtyd6Mi9WFdBJtdb4edIsq4jxxReOPkTyJpdiE8uR2e5KnM4FSO0teZNX0D
         awYg16Wsp8VJ6bpCiF9ptShC94GWu+BpkTbSwpE5PGRv4DAC1HS55LNWSuh2Zgw62Wd2
         hUxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oEKLqBth;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OewiJUmktcezoatEYLu2z8qmz+NiPgjWAPnzkQowyiA=;
        b=dRxRSZfFNU6AU0vld7gvseA/UT/Lf+MY89iC6KSHcBR87MPDed5Ahf7TYhWCO4m830
         ByGvv7W6ZoZh3NYwv612lqwXapttt/mtPOU2SmItABUIVFYjpkXGpxJrWx+Nc4RQcPUb
         toBqY8DisPOXVrcn9189P0MMEOJdZjpg4SrT2CfH7A/StjscLeH33d2r7BXC4yn+9/mS
         d6kvFWi14mrlubz2D2T8evldCR2IzAMSRizbn4WdaCXip6qse1SVUqxK+6e+mLdoD7Fo
         vEeOapXHOMdWyvHlNzjBta39KOTIp4xTG9pFilAw2Jhh8dT8K5vpV3gyQraFRinEIK4z
         8jcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OewiJUmktcezoatEYLu2z8qmz+NiPgjWAPnzkQowyiA=;
        b=TUH+ejaPG3Lunlya9e3Tc42XyJd7gnxcQRcpMttWwJLMsCkzbKO6GPgsx3eMUD4qOo
         xq4AwhmIL0MmFYCazjI5+3mmdHHkewDDH9U2QlLWKFdLlQUGpaGRv/Xx6WZBjivT120W
         oT/puSq9ETlqJyyZI4qPd82zvLt7b4fP3AiXpMh5aNVQsuOWndTI5qOe4yew/qCik2K8
         U3lSp8T5AuPXXoluGJObXIdz1Vpcpov/Qcfkz7j2kYvIl/CZmJh9kDi0t3ffPi2Frxz9
         PqAb3SELyyoDwNnYhG/toVudJjqTODzexEp+0WlG1agkIFGdFP+C4ASTdSzLnaFlviQu
         KG2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530n3VmKI7/qbNMc3oFXusC1CS8mqsnPP5o9uTC8kMln3/vep+WZ
	dT3XW/TKIgUGD5JC2gyb93M=
X-Google-Smtp-Source: ABdhPJw57tCMI+DKgQ9zbd/q1nCy0mr7q5+bgXFPM78PIvkpc70Ap5P8/rIaBpJVjJxxmS6HVXEZqw==
X-Received: by 2002:ac8:3246:: with SMTP id y6mr6656113qta.146.1591845159997;
        Wed, 10 Jun 2020 20:12:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:524:: with SMTP id x4ls148368qvw.11.gmail; Wed, 10
 Jun 2020 20:12:39 -0700 (PDT)
X-Received: by 2002:a05:6214:1269:: with SMTP id r9mr6205710qvv.85.1591845159623;
        Wed, 10 Jun 2020 20:12:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591845159; cv=none;
        d=google.com; s=arc-20160816;
        b=icyhZDcJyZ47LlSREwUYE/Rrd/ChqOJrzqZwWmA6ath8u/b/XrX0703tpUQbJzcPL4
         9VG1uTMYFzWHIvOOvsewqW2U8SZGaL/u///LOOguw9QOlzw++CsTNus9uFd7sNBTWWc8
         IwA236NO+PYhBxhtsjWjzvLZ/cz4rBtKBLqI7M3UvKcMs2FOdzIoFMl1sJFSVfA2Ptan
         Ex7WFItnkLQl67EBuxRUImBiHnw0exXKmthqZBzf7j7cuFbvOZyf3bW8rRKLcbQUdHgC
         6CLOqv/zn8OJ2fkYMx7JrIl/dlS0ApToLM4pB4saT1wbJ0hgcSL4bbJKyAaHvr60TQP/
         /7kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=E/BV7QCKbs58GW28of5JsI/VaBszSvteviKF6A2dE0w=;
        b=o6sx45M7mEBVX0wnJiELYbHCxqVj+uU/mUptyWMEbVab33/Dy/eSN7vlGqS+CL1hB+
         59hTIAZCT90jzfi5ohwx7VrG9KHlNt8Ko4A3Ed4zeQTnfnShvbvH0EDjh6A5KvMFkpbB
         ueAzm8p+26AqguULJpfPNcdE2BM+vg3BDXjIzxp0w+ndapRhDsARU61ng+BINZjngKQ4
         R69awbKo3kMMqvI7BHzKi06MTg6WKyozhgYFmc0UdmqpuUL4OGVguc3HklZpWIvvtL2J
         g5lGPppr0F+jSQ5X1WRKaLvuvBamVrUfkIESWIkIgULnqHAwQvf2OE+FmuOag+psiIcL
         LTAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oEKLqBth;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id p45si90770qtk.2.2020.06.10.20.12.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2020 20:12:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id s88so1769477pjb.5
        for <clang-built-linux@googlegroups.com>; Wed, 10 Jun 2020 20:12:39 -0700 (PDT)
X-Received: by 2002:a17:90b:307:: with SMTP id ay7mr6091054pjb.48.1591845158693;
        Wed, 10 Jun 2020 20:12:38 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h5sm1336786pfb.120.2020.06.10.20.12.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2020 20:12:37 -0700 (PDT)
Date: Wed, 10 Jun 2020 20:12:36 -0700
From: Kees Cook <keescook@chromium.org>
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc: Federico Vaga <federico.vaga@vaga.pv.it>,
	Jonathan Corbet <corbet@lwn.net>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	David Sterba <dsterba@suse.com>,
	Randy Dunlap <rdunlap@infradead.org>, Theodore Ts'o <tytso@mit.edu>,
	"Darrick J. Wong" <darrick.wong@oracle.com>,
	Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
	Jacob Huisman <jacobhuisman@kernelthusiast.com>,
	Jonathan =?iso-8859-1?Q?Neusch=E4fer?= <j.neuschaefer@gmx.net>,
	Rob Herring <robh@kernel.org>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones:
 Documentation/translations/it_IT
Message-ID: <202006102009.CB14D7F@keescook>
References: <20200609201241.81518-1-grandmaster@al2klimov.de>
 <4235548.LvFx2qVVIh@harkonnen>
 <cd260d03-27a4-7794-f58f-21e8e0be9755@al2klimov.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <cd260d03-27a4-7794-f58f-21e8e0be9755@al2klimov.de>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=oEKLqBth;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
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

On Wed, Jun 10, 2020 at 08:11:39PM +0200, Alexander A. Klimov wrote:
> Am 10.06.20 um 10:57 schrieb Federico Vaga:
> > On Tuesday, June 9, 2020 10:12:41 PM CEST Alexander A. Klimov wrote:
> > > Rationale:
> > > Reduces attack surface on kernel devs opening the links for MITM
> > > as HTTPS traffic is much harder to manipulate.
> > >=20
> > > Deterministic algorithm:
> > > For each file:
> > >    For each line:
> > >      If doesn't contain `\bxmlns\b`:
> > >        For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
> > >          If both the HTTP and HTTPS versions
> > >          return 200 OK and serve the same content:
> > >            Replace HTTP with HTTPS.

Is this script somewhere we can read it? (It's easier usually to review
the code for bulk changes than the bulk changes themselves.)

> > >=20
> > > Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
> > > ---
> > >   .../translations/it_IT/admin-guide/README.rst      |  2 +-
> > >   .../translations/it_IT/doc-guide/parse-headers.rst |  2 +-
> > >   .../translations/it_IT/doc-guide/sphinx.rst        | 10 +++++-----
> > >   .../translations/it_IT/process/2.Process.rst       | 12 ++++++-----=
-
> > >   .../translations/it_IT/process/3.Early-stage.rst   |  2 +-
> > >   .../translations/it_IT/process/4.Coding.rst        |  4 ++--
> > >   .../it_IT/process/7.AdvancedTopics.rst             |  8 ++++----
> > >   .../translations/it_IT/process/8.Conclusion.rst    | 14 +++++++----=
---
> > >   .../translations/it_IT/process/adding-syscalls.rst |  4 ++--
> > >   .../translations/it_IT/process/changes.rst         |  6 +++---
> > >   .../translations/it_IT/process/clang-format.rst    |  2 +-
> > >   .../translations/it_IT/process/coding-style.rst    |  2 +-
> > >   Documentation/translations/it_IT/process/howto.rst |  2 +-
> > >   .../it_IT/process/maintainer-pgp-guide.rst         |  2 +-
> > >   .../it_IT/process/submitting-patches.rst           |  4 ++--
> > >   .../it_IT/process/volatile-considered-harmful.rst  |  4 ++--
> > >   16 files changed, 40 insertions(+), 40 deletions(-)
> > >=20
> >=20
> >=20
> > > diff --git a/Documentation/translations/it_IT/doc-guide/sphinx.rst
> > > b/Documentation/translations/it_IT/doc-guide/sphinx.rst index
> > > f1ad4504b734..0aaeb0297661 100644
> > > --- a/Documentation/translations/it_IT/doc-guide/sphinx.rst
> > > +++ b/Documentation/translations/it_IT/doc-guide/sphinx.rst
> > > @@ -14,7 +14,7 @@ Per generare la documentazione in HTML o PDF, usate
> > > comandi ``make htmldocs`` o ``make pdfdocs``. La documentazione cos=
=C3=AC
> > > generata sar=C3=A0 disponibile nella cartella ``Documentation/output`=
`.
> > >=20
> > > -.. _Sphinx: http://www.sphinx-doc.org/
> > > +.. _Sphinx: https://www.sphinx-doc.org/
> > >   .. _reStructuredText: http://docutils.sourceforge.net/rst.html
> >=20
> > It is not part of the deterministic algorithm but you may consider this=
 as
> > well

Why did it not match?

> >=20
> > -.. _reStructuredText: http://docutils.sourceforge.net/rst.html
> > +.. _reStructuredText: https://docutils.sourceforge.io/rst.html
> >=20
> I'll think about analyzing such almost-matches, extending the algo and
> supplying a second round of patches once all [1] of this round arrive in
> torvalds/master.
>=20
> [1]:
>=20
> =E2=9E=9C  linux git:(feature/https-links-3) =E2=9C=97 git diff --shortst=
at
>  1963 files changed, 2882 insertions(+), 2882 deletions(-)
> =E2=9E=9C  linux git:(feature/https-links-3) =E2=9C=97

Is there a reason to do this one language at a time instead of just
doing everything in one go?

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202006102009.CB14D7F%40keescook.
