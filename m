Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4U2W36QKGQEI3YFTZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFB62B0E14
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 20:30:59 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id g20sf4211573plj.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 11:30:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605209458; cv=pass;
        d=google.com; s=arc-20160816;
        b=V9B4TLezp8EXERQbQWY/qflXAu5WyzaEIfYmYxvM4Lds+wTzm2QyrSX82yss+orhb0
         w3Dc8GuPo3Ce9okWmC1axvAlZQrCOMv+vsS114BxZSncjVLZzYPquj+U5tz7vWvwiQWA
         +BGhPNZTTDQXJ5j86d9I/CbbD0BFjEzOXE8EzB3F8OtpZCgIHkQYKal8PVDisOhvFnIP
         wzQ9JSkSpeJybuhJKu9RnCBav69pXSawdszHrzNb9nU6bDWr1HMVok8Xsx8FWxpYiJd3
         iRlAwNTwG6GmzUVNtH63IfVHyFRdTn1bEJqrVFqqhvikqIHNmFRMlwthn3taghvIK+9E
         rstA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sQIgicWZ73NE+eNjE1zyLLI9/38RgfRA2wGs8409K7E=;
        b=k+Ohn5Xl/B4jaIojtUqB+qOZlx9dZHKzL8D2Og03RBM2VQ4UnysA+VxVDenZUVvAcG
         SNaed8BvjZJpt4YvEp6NWOcZsNZYlWgUgPmKpng3A3yAM7+/y+VODIOFkd60cufKyFgS
         vqF+BYH8HqwRk3O2QbU7aGhp+w5Tj2Q3KNyPa5PSdTUkdSP0smmAiMhEa6UWQuZTJmPC
         fLAqV7FWsGk+Bgdp8ceCavEQrrs+3zEuKqN0MPRAtQz4S0p47ri0HbZyDho8606j3079
         MDx9U4IkSpxCZdxD8Laup2oQyyoZtJ9/Qga+3a69+QP4D21YMhp1KsKaA3y6JQg5zaH4
         ooCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eio7XsSC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=sQIgicWZ73NE+eNjE1zyLLI9/38RgfRA2wGs8409K7E=;
        b=epCFXSVqcw/bGAYOq3By24YyDgiWoAkTtvrUGEgx/fz6HTabjilVcTHfVMD2LZHXH3
         67BN5smqOMAEDUkTq72HzTzhgvvDD1ofxyygESL56SZE60zgoqSLMW5BZpxnxIb6Ifu2
         +4jwEjhNniWmSfAWnSUwp3HtQal90PR4iUkpIcT5L1XsXApis2wHeRl5JohGESkFMG5u
         ugmCggikR3Kn9zPDFoJX/fqQwGXps3VcC0M/VNA8ymYb4icmHJmI/WTfloRBUKaSXUxj
         V4XVzJd7W9TLe9lKcW4OgL7L1xWvVV+WGAm2RPFbsrH307EoTW4O04T/LrKvcjBP+wea
         u88w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sQIgicWZ73NE+eNjE1zyLLI9/38RgfRA2wGs8409K7E=;
        b=Q6jEpjGEHSKM7dPC4RNU0B90tHkZ9uROdcMrkkIHri9Nd2yzE6E6jpn9Zwp5Qo6Uj6
         ztfIpwQXhyLu4UskPfKTtNY8zu+6eJBk3Hh6no6oEuy0iguKAfmW1xHuTeFXA7zjKZt4
         UZ9V5cFSp7agGvADK8rSOPL1ZX+f1IvU5SMUhaUfaveZQqWx1wBOTByEKkLU9RHpvBiq
         RCXwmscNsNsT6/aG33lrEiGhEBmOvcUro1msh/949Y/nbBoHDnENnkFTye+Z79IPVT/y
         XO31H2KFdgzMOlj6SCGHFkbXjaxrUhEjqE3Db4uMlZbfXSf0Y8y42GeqygWaxbct2aaf
         DlsA==
X-Gm-Message-State: AOAM530zsbbpPsEVVUBVSxyuePo16KBQAWdTHySAdPF4KmYXqcuoaTCX
	pdSdvxHreA+Bew5iPiEwVtE=
X-Google-Smtp-Source: ABdhPJx6cgP426fordVXLEmU38wSPMylcnFuqMr5YnSesgTHETGrm3K0Hg7Z6JQ+IYGYX+O25NZcPQ==
X-Received: by 2002:a17:90a:f402:: with SMTP id ch2mr813516pjb.190.1605209458428;
        Thu, 12 Nov 2020 11:30:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f68f:: with SMTP id cl15ls2191849pjb.0.canary-gmail;
 Thu, 12 Nov 2020 11:30:57 -0800 (PST)
X-Received: by 2002:a17:90a:4802:: with SMTP id a2mr833756pjh.22.1605209457827;
        Thu, 12 Nov 2020 11:30:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605209457; cv=none;
        d=google.com; s=arc-20160816;
        b=UDq6siCuXIDnRhSyeLuwhG34cPp0FQf6a7i1ijbFEw2AfzE5o9n731SeJYgFuMU7tW
         x97Ddm8K61lLWSJnOKbIuFZ3TDp5GOr3vWoXKAJg5wDHhmwk+SV/loL4kTPYeUUU/QE9
         zFdRkWCY5Za6zzJl1Te/D7gqJYhZ/Yj01j0U775gJ/UIrDYuz/VKY/8y/u/S3y+U06Yg
         MGtKG+LwsgkdoHH4G57+WLfgc+Fm/kNNbnd4Ix14HHL8dXPJmhSZg6Wd/p/1YaGrpBKc
         a590ZuP/7vD6wiPxVqKAS1WOk2+jpc4WTtnBAjY8bgFGlAi34n6ze/v0DqLlyKogBo12
         Vrww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bYqHpM6AIuFjCSL/QQBim4EdBYJZxV5g7YmL9Sjc9fA=;
        b=FIXNst0OTSXkrgBp1dFHg+K3ps53R45w5IBXRYSrUYOwdJ9xmg4HEmRtbtwu1xEFXM
         ki0MsFR/Y/RJ56yUP5R2jeTFc6aiX/U6ZgIK4Bq4tPC9R07A8Ke8rGVa237B1wKXdN4X
         xbDSYhtUP3FOTgVqPQE+SY/r1waZYyJ60Hs0rIfQcsT1FF6rfC8Nfh6/BJs7WsJPUX87
         riiW4v5MXq5RtOWl/7uZ+LQZcdzHvW0f87R50Tw3GthJuHhYRytMtZZ1UhDufUCvMo2+
         tDr+S+b8pEmBpEHvxK5JXDFzLz2+/0yAxUb5eVWeOX+QNg4Snh7AcBqgJNc34yzFsH9G
         4XMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eio7XsSC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id i5si946632pjz.1.2020.11.12.11.30.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 11:30:57 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id z3so5457615pfb.10
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 11:30:57 -0800 (PST)
X-Received: by 2002:a17:90b:110b:: with SMTP id gi11mr741001pjb.25.1605209457325;
 Thu, 12 Nov 2020 11:30:57 -0800 (PST)
MIME-Version: 1.0
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <BYAPR11MB3256E0C1DCB4F01D18DF709F87E80@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdk2U5+DcXYyMoBAhyaa67EukhB6QMEUbRPcOF7P3Sz21w@mail.gmail.com> <BYAPR11MB3256C9711620932685C368F887E70@BYAPR11MB3256.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3256C9711620932685C368F887E70@BYAPR11MB3256.namprd11.prod.outlook.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Nov 2020 11:30:45 -0800
Message-ID: <CAKwvOdnu07S8ZtGVe0eVFP=6hLSRa58EtDYOJUK_zGWFaqUboA@mail.gmail.com>
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
To: "Moore, Robert" <robert.moore@intel.com>
Cc: "Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, 
	"Gustavo A . R . Silva" <gustavoars@kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, Len Brown <lenb@kernel.org>, 
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eio7XsSC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Thu, Nov 12, 2020 at 7:13 AM Moore, Robert <robert.moore@intel.com> wrot=
e:
>
>
>
> -----Original Message-----
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: Wednesday, November 11, 2020 10:48 AM
> To: Moore, Robert <robert.moore@intel.com>
> Cc: Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wys=
ocki@intel.com>; Gustavo A . R . Silva <gustavoars@kernel.org>; clang-built=
-linux@googlegroups.com; Len Brown <lenb@kernel.org>; linux-acpi@vger.kerne=
l.org; devel@acpica.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
>
> On Wed, Nov 11, 2020 at 7:15 AM Moore, Robert <robert.moore@intel.com> wr=
ote:
> >
> > Yes, but: isn't the "fallthrough" keyword compiler-specific? That is th=
e problem for us.
>
> It's not a keyword.
>
> It's a preprocessor macro that expands to
> __attribute__((__fallthrough__)) for compilers that support it.  For comp=
ilers that do not, it expands to nothing.  Both GCC 7+ and Clang support th=
is attribute.  Which other compilers that support -Wimplicit-fallthrough do=
 you care to support?
>
> We need to support MSVC 2017 -- which apparently does not support this.

In which case, the macro is not expanded to a compiler attribute the
compiler doesn't support.  Please see also its definition in
include/linux/compiler_attributes.h.

From what I can tell, MSVC does not warn on implicit fallthrough, so
there's no corresponding attribute (or comment) to disable the warning
in MSVC.

That doesn't mean this code is not portable to MSVC; a macro that
expands to nothing should not be a problem.

Based on
https://docs.microsoft.com/en-us/cpp/code-quality/c26819?view=3Dmsvc-160
https://developercommunity.visualstudio.com/idea/423975/issue-compiler-warn=
ing-when-using-implicit-fallthr.html
it sounds like MSVC 2019 will be able to warn, for C++ mode, which
will rely on the C++ style attribute to annotate intentional
fallthrough.

Can you confirm how this does not work for MSVC 2017?

> > Bob
> >
> >
> > -----Original Message-----
> > From: ndesaulniers via sendgmr
> > <ndesaulniers@ndesaulniers1.mtv.corp.google.com> On Behalf Of Nick
> > Desaulniers
> > Sent: Tuesday, November 10, 2020 6:12 PM
> > To: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik
> > <erik.kaneda@intel.com>; Wysocki, Rafael J
> > <rafael.j.wysocki@intel.com>; Gustavo A . R . Silva
> > <gustavoars@kernel.org>
> > Cc: clang-built-linux@googlegroups.com; Nick Desaulniers
> > <ndesaulniers@google.com>; Len Brown <lenb@kernel.org>;
> > linux-acpi@vger.kernel.org; devel@acpica.org;
> > linux-kernel@vger.kernel.org
> > Subject: [PATCH] ACPICA: fix -Wfallthrough
> >
> > The "fallthrough" pseudo-keyword was added as a portable way to denote =
intentional fallthrough. This code seemed to be using a mix of fallthrough =
comments that GCC recognizes, and some kind of lint marker.
> > I'm guessing that linter hasn't been run in a while from the mixed use =
of the marker vs comments.
> >
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  drivers/acpi/acpica/dscontrol.c | 3 +--
> >  drivers/acpi/acpica/dswexec.c   | 4 +---
> >  drivers/acpi/acpica/dswload.c   | 3 +--
> >  drivers/acpi/acpica/dswload2.c  | 3 +--
> >  drivers/acpi/acpica/exfldio.c   | 3 +--
> >  drivers/acpi/acpica/exresop.c   | 5 ++---
> >  drivers/acpi/acpica/exstore.c   | 6 ++----
> >  drivers/acpi/acpica/hwgpe.c     | 3 +--
> >  drivers/acpi/acpica/utdelete.c  | 3 +--
> >  drivers/acpi/acpica/utprint.c   | 2 +-
> >  10 files changed, 12 insertions(+), 23 deletions(-)
> >
> > diff --git a/drivers/acpi/acpica/dscontrol.c
> > b/drivers/acpi/acpica/dscontrol.c index 4b5b6e859f62..1e75e5fbfd19
> > 100644
> > --- a/drivers/acpi/acpica/dscontrol.c
> > +++ b/drivers/acpi/acpica/dscontrol.c
> > @@ -61,8 +61,7 @@ acpi_ds_exec_begin_control_op(struct acpi_walk_state =
*walk_state,
> >                                 break;
> >                         }
> >                 }
> > -
> > -               /*lint -fallthrough */
> > +               fallthrough;
> >
> >         case AML_IF_OP:
> >                 /*
> > diff --git a/drivers/acpi/acpica/dswexec.c
> > b/drivers/acpi/acpica/dswexec.c index 1d4f8c81028c..e8c32d4fe55f
> > 100644
> > --- a/drivers/acpi/acpica/dswexec.c
> > +++ b/drivers/acpi/acpica/dswexec.c
> > @@ -597,9 +597,7 @@ acpi_status acpi_ds_exec_end_op(struct acpi_walk_st=
ate *walk_state)
> >                                 if (ACPI_FAILURE(status)) {
> >                                         break;
> >                                 }
> > -
> > -                               /* Fall through */
> > -                               /*lint -fallthrough */
> > +                               fallthrough;
> >
> >                         case AML_INT_EVAL_SUBTREE_OP:
> >
> > diff --git a/drivers/acpi/acpica/dswload.c
> > b/drivers/acpi/acpica/dswload.c index 27069325b6de..afc663c3742d
> > 100644
> > --- a/drivers/acpi/acpica/dswload.c
> > +++ b/drivers/acpi/acpica/dswload.c
> > @@ -223,8 +223,7 @@ acpi_ds_load1_begin_op(struct acpi_walk_state *walk=
_state,
> >                              parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
> >                                 break;
> >                         }
> > -
> > -                       /*lint -fallthrough */
> > +                       fallthrough;
> >
> >                 default:
> >
> > diff --git a/drivers/acpi/acpica/dswload2.c
> > b/drivers/acpi/acpica/dswload2.c index edadbe146506..1b794b6ba072
> > 100644
> > --- a/drivers/acpi/acpica/dswload2.c
> > +++ b/drivers/acpi/acpica/dswload2.c
> > @@ -213,8 +213,7 @@ acpi_ds_load2_begin_op(struct acpi_walk_state *walk=
_state,
> >                              parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
> >                                 break;
> >                         }
> > -
> > -                       /*lint -fallthrough */
> > +                       fallthrough;
> >
> >                 default:
> >
> > diff --git a/drivers/acpi/acpica/exfldio.c
> > b/drivers/acpi/acpica/exfldio.c index ade35ff1c7ba..9d1cabe0fed9
> > 100644
> > --- a/drivers/acpi/acpica/exfldio.c
> > +++ b/drivers/acpi/acpica/exfldio.c
> > @@ -433,8 +433,7 @@ acpi_ex_field_datum_io(union acpi_operand_object *o=
bj_desc,
> >                  * Now that the Bank has been selected, fall through to=
 the
> >                  * region_field case and write the datum to the Operati=
on Region
> >                  */
> > -
> > -               /*lint -fallthrough */
> > +               fallthrough;
> >
> >         case ACPI_TYPE_LOCAL_REGION_FIELD:
> >                 /*
> > diff --git a/drivers/acpi/acpica/exresop.c
> > b/drivers/acpi/acpica/exresop.c index 4d1b22971d58..df48faa9a551
> > 100644
> > --- a/drivers/acpi/acpica/exresop.c
> > +++ b/drivers/acpi/acpica/exresop.c
> > @@ -197,8 +197,7 @@ acpi_ex_resolve_operands(u16 opcode,
> >                                 case ACPI_REFCLASS_DEBUG:
> >
> >                                         target_op =3D AML_DEBUG_OP;
> > -
> > -                                       /*lint -fallthrough */
> > +                                       fallthrough;
> >
> >                                 case ACPI_REFCLASS_ARG:
> >                                 case ACPI_REFCLASS_LOCAL:
> > @@ -264,7 +263,7 @@ acpi_ex_resolve_operands(u16 opcode,
> >                          * Else not a string - fall through to the norm=
al Reference
> >                          * case below
> >                          */
> > -                       /*lint -fallthrough */
> > +                       fallthrough;
> >
> >                 case ARGI_REFERENCE:    /* References: */
> >                 case ARGI_INTEGER_REF:
> > diff --git a/drivers/acpi/acpica/exstore.c
> > b/drivers/acpi/acpica/exstore.c index 3adc0a29d890..2067baa7c120
> > 100644
> > --- a/drivers/acpi/acpica/exstore.c
> > +++ b/drivers/acpi/acpica/exstore.c
> > @@ -95,8 +95,7 @@ acpi_ex_store(union acpi_operand_object *source_desc,
> >                 if (dest_desc->common.flags & AOPOBJ_AML_CONSTANT) {
> >                         return_ACPI_STATUS(AE_OK);
> >                 }
> > -
> > -               /*lint -fallthrough */
> > +               fallthrough;
> >
> >         default:
> >
> > @@ -421,8 +420,7 @@ acpi_ex_store_object_to_node(union acpi_operand_obj=
ect *source_desc,
> >                                 }
> >                                 break;
> >                         }
> > -
> > -                       /* Fallthrough */
> > +                       fallthrough;
> >
> >                 case ACPI_TYPE_DEVICE:
> >                 case ACPI_TYPE_EVENT:
> > diff --git a/drivers/acpi/acpica/hwgpe.c b/drivers/acpi/acpica/hwgpe.c
> > index b13a4ed5bc63..fbfad80c8a53 100644
> > --- a/drivers/acpi/acpica/hwgpe.c
> > +++ b/drivers/acpi/acpica/hwgpe.c
> > @@ -166,8 +166,7 @@ acpi_hw_low_set_gpe(struct acpi_gpe_event_info *gpe=
_event_info, u32 action)
> >                 if (!(register_bit & gpe_register_info->enable_mask)) {
> >                         return (AE_BAD_PARAMETER);
> >                 }
> > -
> > -               /*lint -fallthrough */
> > +               fallthrough;
> >
> >         case ACPI_GPE_ENABLE:
> >
> > diff --git a/drivers/acpi/acpica/utdelete.c
> > b/drivers/acpi/acpica/utdelete.c index 4c0d4e434196..8076e7947585
> > 100644
> > --- a/drivers/acpi/acpica/utdelete.c
> > +++ b/drivers/acpi/acpica/utdelete.c
> > @@ -111,8 +111,7 @@ static void acpi_ut_delete_internal_obj(union acpi_=
operand_object *object)
> >                         (void)acpi_ev_delete_gpe_block(object->device.
> >                                                        gpe_block);
> >                 }
> > -
> > -               /*lint -fallthrough */
> > +               fallthrough;
> >
> >         case ACPI_TYPE_PROCESSOR:
> >         case ACPI_TYPE_THERMAL:
> > diff --git a/drivers/acpi/acpica/utprint.c
> > b/drivers/acpi/acpica/utprint.c index 681c11f4af4e..f7e43baf5ff2
> > 100644
> > --- a/drivers/acpi/acpica/utprint.c
> > +++ b/drivers/acpi/acpica/utprint.c
> > @@ -475,7 +475,7 @@ int vsnprintf(char *string, acpi_size size, const c=
har *format, va_list args)
> >                 case 'X':
> >
> >                         type |=3D ACPI_FORMAT_UPPER;
> > -                       /* FALLTHROUGH */
> > +                       fallthrough;
> >
> >                 case 'x':
> >
> > --
> > 2.29.2.222.g5d2a92d10f8-goog
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnu07S8ZtGVe0eVFP%3D6hLSRa58EtDYOJUK_zGWFaqUboA%40m=
ail.gmail.com.
