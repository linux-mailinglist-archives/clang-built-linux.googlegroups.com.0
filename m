Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBP634HUQKGQET42FFQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id C55CA731DF
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 16:40:00 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id o16sf41587249qtj.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 07:40:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563979200; cv=pass;
        d=google.com; s=arc-20160816;
        b=UiYno3+SGzPUj1xeL1LEykKE2rufkkJ5njCr1W+okiL6x9RdkwtA+YR6H7e26C0ojr
         4i9OO5SXxJWsbhcHPRIl0PP3DN6Ws+mqDwiajfkKJxoX3XWaxcC7mIjW/iKq4Xsj6SNm
         i6ZpQPvaXWpdSK7h+5Jeij7fCvsEWMtSoCTItvDNpVx17O8HcECWMRMzQcHK66R0Purk
         St83joCamOBg0NxAeTmFlTUIOzRgLdGMyqsmPuoUlfiDSFKbB3xa7pAfMnKisomAJZRo
         qc8AuDFJBOOecA0DhyLfAJxfZcQSZqIrK1uUR4HEmQyt4E30pqhBTfp6NwoMkNAMjz8q
         ITew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:date:cc:to:from:subject
         :message-id:sender:dkim-signature;
        bh=yAYlgXaUOmlU57mpP0QGhRKMeZw85Lf2sZYSbtuxoI4=;
        b=J9Z8yfy8/tCZ77zaGoJowmSh9cfc3dId+0nKLoZoLejyKIHAyxebsBucYO+CSiU4eK
         ihWGl83X/HZQopAGlErrDzvSUZ9FS8Se5lp+AhfTFA5UGascx6eCFz5Ii7V4ruOasoBP
         JSgslu8TvtoUMPpd6qrzuzTAcC1BMeHU9MOxtowAicXeGlJcbUu8pbUlhOfapQE+sdYy
         nVgUYwgyAOMX+kB8mtvIy5yMJcYN2znNFpBncmL/jU9+40D+IK701DpxGUgnzpvtIP10
         530fIErqvn1Yi4ZawD7T9MhOmlN5bgz2yfBtIWkLwp19QOIXaHBqRWh1QcfNHRB5NRpl
         oUUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b="c/JyPMzw";
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yAYlgXaUOmlU57mpP0QGhRKMeZw85Lf2sZYSbtuxoI4=;
        b=FQmMkkHJaYWtjq2XUM9XPeaatxneXEkZjzJIMVn3Dd4JDGGNxiJ8P07ROSDWJuFzBj
         rDlCgn8LK21Mi/35rGTnp6IWeCyNM6BT9s/ZHznXJ4qrORc+Nz8mXptO/6ashkBMjTHV
         gyKBGGbP24ovYrE+dH4TtWWBH5wvNLocNFmDxTmLfuPHu7TpLCG1ttRC/LF6Bb6dew3y
         8tnYIK4im2O9snyW0Y0MOLXIVuGvruu0y7MjeyLx8ZT1sAbRQrbSWLacOFBMnoW60fdT
         ZQ70MQjhpq3zwcvdj1RrNadghouiVYVS5I98t/FwbdnGRNmgQjxAb7CfppeGB8unxxXO
         S76A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yAYlgXaUOmlU57mpP0QGhRKMeZw85Lf2sZYSbtuxoI4=;
        b=tl7HMoICi2XsZhM302eD0nLVbmUxwwUVL6EJe1optkqkGnEkUa1GLPRRCOILY3d1WN
         fRYotCIUn/agSPybxUKI0No9avRpYxXBwoQeCX/JWJgqGYtPD5m/UuXxhtTa9i+QhMYq
         0J55t5+AAVM6A0uR7Zs/QIOTSBWrpKTJqFee5VqPwE0uSN3OgTK4vX4YvISrF83eeqMz
         pRyt8xWbod8PQ7lvu3/e7516Fh4WAhcvAm6Eyr6y8OLPDWsSrt45Ittcz0jW6GUoOBnn
         3srzSma5AqqMJaO5YeA59zwKAK8+DzdPzgsqYExZRrpA0CFwUxxDiBaoPOZnJKULMQYX
         twTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU9J7ABUqqr1L2kObCFV43DF4QXDd2Y7aI34P5v0chVIUOnDvx5
	sF3qZwlubZ7/ARxRj8QsKbw=
X-Google-Smtp-Source: APXvYqxDwq8GuupmtkGJKsh/2JOuM+uuvdxDhbH5JTgo4CmmjGO5LQoD/b8SkVJ1xj2g5wyuU5rLpw==
X-Received: by 2002:a37:a854:: with SMTP id r81mr55222707qke.378.1563979199933;
        Wed, 24 Jul 2019 07:39:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:10b:: with SMTP id e11ls11713229qtg.2.gmail; Wed, 24 Jul
 2019 07:39:59 -0700 (PDT)
X-Received: by 2002:ac8:2409:: with SMTP id c9mr58067551qtc.145.1563979199659;
        Wed, 24 Jul 2019 07:39:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563979199; cv=none;
        d=google.com; s=arc-20160816;
        b=j61cv6vXP5gsfK0Ti/bRM6/gsEZVJTWeyFlPBsZ1tLgd7ujr0aLUQ/hczpz+UkiB6n
         GmphnyB4hZDS7BwYAYdri0CGZ+/T7ewrhNBiH/GKIJ9cVDX4wXGMbrW9RU3wVqNpYVJz
         LU3IeFjgHvvCwwkGt5QJww9YtzLYuDL8zdVINuo3l8tEHLSQXTqDe1UlqpqkuSxCbszP
         wPxCQnlZUosi4A5++mhwG/u3uRE0j9TbVUP0PGe/x8rj3rRKFcjVbZygRre4fC3XgRSN
         MSBQGoSYurOI1O1+lCheLuPdyxwcg3VoIHjsec6yqhAN5E4yWqCPzhd9UfhTGkOmmoOD
         069Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=U2Vjt/ngoWwRTHJ/HnXQ3A5kSE9G176ORXuJs7Iic5c=;
        b=k63PgP+/iegStAQCuYkgbyPG97Reu3xefN7J/1azkA3FAvKXlAe+XqvMZIvlhh+BmZ
         qbXTSQCM77DyzY5Zyhqb6DXC5gt1UaiHWp/M441XIMcyVSNjOxsYmYtAeOXqdYg4I5PD
         jitAS5h/eCsF/MFQkWlWOgGantB7EioUNEI9VOsin4SM2EehSl6I4nnZYyfS0wQWzeNo
         plZNBCafwdJtC/rU62ygK45DKRiIx5wE1e2SZyIvfFcpbAS9qT5PHKACbKzkfnXUU91R
         uE35eOdeNoVX1zUmKXEY9/6lBZE7KUHlz6VR0NStnpT5p5LFmXE8Apbt7hRIV8z3iYjW
         yzJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b="c/JyPMzw";
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id o6si2399013qtj.3.2019.07.24.07.39.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 07:39:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id r6so33950539qkc.0
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jul 2019 07:39:59 -0700 (PDT)
X-Received: by 2002:a37:dc1:: with SMTP id 184mr54711685qkn.10.1563979199355;
        Wed, 24 Jul 2019 07:39:59 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
        by smtp.gmail.com with ESMTPSA id l6sm19603999qkc.89.2019.07.24.07.39.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 07:39:58 -0700 (PDT)
Message-ID: <1563979197.11067.11.camel@lca.pw>
Subject: Re: [PATCH] acpica: fix -Wnull-pointer-arithmetic warnings
From: Qian Cai <cai@lca.pw>
To: "Moore, Robert" <robert.moore@intel.com>, Nick Desaulniers
	 <ndesaulniers@google.com>
Cc: "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, "Schmauss, Erik"
 <erik.schmauss@intel.com>, "jkim@freebsd.org" <jkim@freebsd.org>, Len Brown
 <lenb@kernel.org>, "linux-acpi@vger.kernel.org"
 <linux-acpi@vger.kernel.org>,  "devel@acpica.org" <devel@acpica.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,  LKML
 <linux-kernel@vger.kernel.org>
Date: Wed, 24 Jul 2019 10:39:57 -0400
In-Reply-To: <94F2FBAB4432B54E8AACC7DFDE6C92E3B96618DB@ORSMSX110.amr.corp.intel.com>
References: <20190717033807.1207-1-cai@lca.pw>
	 <CAKwvOdmPX2DsUawcA0SzaFacjz==ACcfD8yDsbaS4eP4Es=Wzw@mail.gmail.com>
	 <73A4565B-837B-4E13-8B72-63F69BF408E7@lca.pw>
	 <94F2FBAB4432B54E8AACC7DFDE6C92E3B9661869@ORSMSX110.amr.corp.intel.com>
	 <1563975605.11067.8.camel@lca.pw>
	 <94F2FBAB4432B54E8AACC7DFDE6C92E3B96618DB@ORSMSX110.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b="c/JyPMzw";       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::741 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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

On Wed, 2019-07-24 at 14:17 +0000, Moore, Robert wrote:
>=20
> -----Original Message-----
> From: Qian Cai [mailto:cai@lca.pw]=C2=A0
> Sent: Wednesday, July 24, 2019 6:40 AM
> To: Moore, Robert <robert.moore@intel.com>; Nick Desaulniers <ndesaulnier=
s@goo
> gle.com>
> Cc: Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Schmauss, Erik <erik.=
schma
> uss@intel.com>; jkim@freebsd.org; Len Brown <lenb@kernel.org>; linux-acpi=
@vger
> .kernel.org; devel@acpica.org; clang-built-linux <clang-built-linux@googl=
egrou
> ps.com>; LKML <linux-kernel@vger.kernel.org>
> Subject: Re: [PATCH] acpica: fix -Wnull-pointer-arithmetic warnings
>=20
> On Tue, 2019-07-23 at 20:49 +0000, Moore, Robert wrote:
> > > > Signed-off-by: Qian Cai <cai@lca.pw>
> > > > ---
> > > > include/acpi/actypes.h | 4 ++--
> > > > 1 file changed, 2 insertions(+), 2 deletions(-)
> > > >=20
> > > > diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h index
> > > > ad6892a24015..25b4a32da177 100644
> > > > --- a/include/acpi/actypes.h
> > > > +++ b/include/acpi/actypes.h
> > > > @@ -500,13 +500,13 @@ typedef u64 acpi_integer;
> > > >=20
> > > > #define ACPI_CAST_PTR(t, p)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0((t *) (acpi_uintptr_t)=C2=A0
> > > > (p)) #define ACPI_CAST_INDIRECT_PTR(t, p)=C2=A0=C2=A0=C2=A0=C2=A0((=
t **)=C2=A0
> > > > (acpi_uintptr_t) (p)) -#define ACPI_ADD_PTR(t, a, b)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
> > > > ACPI_CAST_PTR (t, (ACPI_CAST_PTR (u8, (a)) + (acpi_size)(b)))
> > > > +#define ACPI_ADD_PTR(t, a, b)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_CAST_PTR (t, (a) +
> > > > (acpi_size)(b))
> >=20
> > We have some questions concerning this change. If (a) is not cast to a=
=C2=A0
> > u8, the addition will be in whatever units are appropriate for (a)=C2=
=A0
> > i.e., the type of (a). However, we want ACPI_ADD_PTR (And=C2=A0
> > ACPI_SUB_PTR) to simply perform a byte addition or subtraction - thus=
=C2=A0
> > the cast to u8. I believe that is the original thinking behind the macr=
os.
>=20
> I posted a v2 a while ago, and should clear this concern.
>=20
> OK then this change only affects ACPI_TO_POINTER?
>=20
> +#define ACPI_TO_POINTER(i)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_CAST_PTR (void, i)

Yes.

>=20
>=20
> >=20
> > > > #define ACPI_SUB_PTR(t, a, b)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_CAST_PTR (t,=C2=A0
> > > > (ACPI_CAST_PTR (u8, (a)) - (acpi_size)(b))) #define=C2=A0
> > > > ACPI_PTR_DIFF(a, b)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0((acpi_size) (ACPI_CAST_PTR (u8,
> > > > (a)) - ACPI_CAST_PTR (u8, (b))))
> > > >=20
> > > > /* Pointer/Integer type conversions */
> > > >=20
> > > > -#define ACPI_TO_POINTER(i)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_ADD_PTR (void, (void=C2=
=A0
> > > > *) 0,
> > > > (acpi_size) (i))
> > > > +#define ACPI_TO_POINTER(i)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_ADD_PTR (void, 0,
> > > > (acpi_size) (i))
> > >=20
> > > IIUC, these are adding `i` to NULL (or (void*)0)? X + 0 =3D=3D X ?
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
> >=20
> >=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1563979197.11067.11.camel%40lca.pw.
