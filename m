Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLE5W76QKGQEKX7RZBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B7A2B130A
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 01:09:18 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id t71sf8325898ybi.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 16:09:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605226157; cv=pass;
        d=google.com; s=arc-20160816;
        b=fr6tB86cVQY21cno1R96uWAM4Qsc6Cy+Q+aBDXDafwS3KngebXwTvlG96HTIVMDVdj
         Vx1ZS5c69vSgb96GrdSlhrffR6v+/+BWE88zxS4/tyPDHmkC55bscduMQtJ9ZjQhAt6E
         wgzCd5BI1s+pYfvmO3ucsi+wegJ2+jWk/HDs/63VZCW7974Zu/G53mNHbbqCBJE+Cok7
         hv+cZSxQak9MtqoyHK8e7hiNhOb1SsPhD9xSG5cq297Avswi5AqZCpdNyUNNDY96Sqzu
         OP0RQ/dztYfObv7sONUBe94SlHNIVps2RyEaihIqyN85dsV1Uk/eV7XoumO8wIG7wJWj
         SKPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LgdHf0h1sbIQLDIn3TYBxqNk+q+anvFnZFdAB8O7Fyg=;
        b=p5OTgrBEiBqyCgDMBmyrN4H7p5sQZ6WKSrr7x6Owi6YZ7ztgWncGu3aDi6fKNbnq1B
         RoNFPzC0MCJe0Vt9rlUj4n+fIXnkymOqxFELawZFZFUtz+t0srKNyAC+CF3HYjRii6Je
         Vex8djItVj2VyxRUzB830LKT7luIbyxAPblewIymDPnnBGM/QE60KTf2AZQDjy+7QaTE
         Qb4DZhpRINVQjNweII0IW8aJg1oLh9hK/WTyWkZnzfLf1pEkYmmU6SGPICKuojuv0rEI
         hwA1Zj/JZ6L5sLYR4w+8rTsWyWkDwg9s8CxIOKMGz2zuV84VJ03o1qExvqTTwk/j6SRU
         wu2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CzElBqwW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=LgdHf0h1sbIQLDIn3TYBxqNk+q+anvFnZFdAB8O7Fyg=;
        b=Q5e/yp61P8fSaLqBEdnCAcuXJZhBCp1ds9IJ2hl9bXfkF4tBVkHNO9WfnYRc/litXs
         YX6DiHD943wLSJf8K7Uy7yupo5cvyBREGOTBudetvgD4wulE5K3i9je6Dn1JdjrVsQeY
         Oxhfi8yOtt4RBsLUrTUlq0SPG6DqnCpsmmPjkF19f0Ux+5Pw5KRROzkwfpjkXVxKYJbr
         SWsRnNoofKUfkEyoVmvrvGxJXQC+iNKkojzPuUcjbXPmi5EWktYqVzYS1PVXvjOH575B
         6sMKFfosEk5uUbt8XID5WlAE0O4rKM2HgSP7DozF/V8YFdz3qABECLhTkNZijHgHvuD6
         XFTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LgdHf0h1sbIQLDIn3TYBxqNk+q+anvFnZFdAB8O7Fyg=;
        b=l7toSQ8ptNMIfRCMd9wlCB05RKIpZL84fKwHvTDkU58w00QmaXFR9BFKGN1PYK5ZoM
         TUOqlm+6tVdUiVN4588/xmdL5iTZjbh/SOnl2qSKBya+nAuvxWAX+IYqwEpRLjeCNvqw
         QPCfIBeDGXY1lNq0drXDYAI6ci4tpCXPftwhh4SRu0vrPk1tRPdvJJ0LIc1YtYevAoze
         z9RdeC+HUMrLKPmfnfDCm4BhAhBGDAOGBzlDmdgcCK/TduIvk25aLYXQw6OLex/p2uxp
         1UmbpxhHbAd+RsRY1fqCkx1uqT8Q2xE4WGSkIzJyT4IPKJ2gr4LApDjyLA6fhKzNsSVa
         5gnA==
X-Gm-Message-State: AOAM531fTLwlErQBpXf0ETJEUMW+dN+dQEsb8rA1YqBgFt9ni2/CTa7d
	9sCtIZs05MaLJRU7LEKtN9Q=
X-Google-Smtp-Source: ABdhPJyZFIqQwOiwndJ3GFR7DU2iZcVe8Wcb5be/AAb0TDDgAXO2SybQnl3b37gM/1uGeFmthABNFw==
X-Received: by 2002:a25:5884:: with SMTP id m126mr3548068ybb.342.1605226156954;
        Thu, 12 Nov 2020 16:09:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5f42:: with SMTP id h2ls2469516ybm.11.gmail; Thu, 12 Nov
 2020 16:09:16 -0800 (PST)
X-Received: by 2002:a25:a221:: with SMTP id b30mr2149767ybi.130.1605226156398;
        Thu, 12 Nov 2020 16:09:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605226156; cv=none;
        d=google.com; s=arc-20160816;
        b=tf4CY091O7tcayMvXNDNkoldMc5jdfZCWN9QBtPsXkmiw2GRt9SFjloAnk6melxowJ
         hUauNt5BqeCVn72EiNDszxcw6/U0mpof1UrzfS9qgk2LiIrQabzuruZ/AUZpm3oTTiM5
         iIZ76ALliG1P45S2Z9STeXvoLCAe67OIZIERUTgBF4mPW0K7uLhz0Csyb6hVSCVMcUY/
         KIppgvkMh+jokfcv3AgfVG9h7+2GdeCXImLNZRiX7PMtYktgDFcEgIJgPFKi6OjxMAFc
         kPThTTK3PSat2zld4+2zLY7gNyMju8dzPojDXCjeXfKT4/U1bndZ291tSBp6+OBilbxH
         ///g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2DHsDoriK54ucih8d4V/3kj6D7gH+qZ0YXsshl+T4v0=;
        b=LE05t2EyPGzagYqnZ6gLXUGz+vyXCLLyw8cl7C7fPh2uZ9b3imeUCwe5upj/EUA8Zp
         3d39PS4IlA6pGLgZPEfH9/yeDGG2haHuSilpuzIgwWYTqQfz48YuYAULpfc0Da10REcR
         6FCwsYTvUzr4dqpAEquKhUalmvVOMFxZfWq99ALW+5faIhr1p2IaYc1fTNYWqvqGbO3L
         UEdOPxKF/+naImxFPWCiWlaC4zvzjJbaqoEgT9n4+y5oAKc+LKI66rQGhe96sWFFyg2Q
         gXDF48IyZC6dI+6aKjS83nTJpk48bNxFC1dxow4ZOpE30O/0/0cOaUMb0lmzRVjTOYLu
         oUIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CzElBqwW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id l5si403961ybb.1.2020.11.12.16.09.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 16:09:16 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id d3so3654835plo.4
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 16:09:16 -0800 (PST)
X-Received: by 2002:a17:902:760c:b029:d6:efa5:4cdd with SMTP id
 k12-20020a170902760cb02900d6efa54cddmr1571407pll.56.1605226154891; Thu, 12
 Nov 2020 16:09:14 -0800 (PST)
MIME-Version: 1.0
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <BYAPR11MB3256E0C1DCB4F01D18DF709F87E80@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdk2U5+DcXYyMoBAhyaa67EukhB6QMEUbRPcOF7P3Sz21w@mail.gmail.com>
 <BYAPR11MB3256C9711620932685C368F887E70@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdnu07S8ZtGVe0eVFP=6hLSRa58EtDYOJUK_zGWFaqUboA@mail.gmail.com> <BYAPR11MB3256BEF30840D4AB440A359C87E70@BYAPR11MB3256.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3256BEF30840D4AB440A359C87E70@BYAPR11MB3256.namprd11.prod.outlook.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Nov 2020 16:09:03 -0800
Message-ID: <CAKwvOdnYpmf=ydFVWSqVkWeUpn+M2v9PfdQd71T3oqQ9_1WQaQ@mail.gmail.com>
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
To: "Moore, Robert" <robert.moore@intel.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: "Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, 
	"Gustavo A . R . Silva" <gustavoars@kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, Len Brown <lenb@kernel.org>, 
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CzElBqwW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Thu, Nov 12, 2020 at 1:48 PM Moore, Robert <robert.moore@intel.com> wrot=
e:
>
>
>
> -----Original Message-----
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: Thursday, November 12, 2020 11:31 AM
> To: Moore, Robert <robert.moore@intel.com>
> Cc: Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wys=
ocki@intel.com>; Gustavo A . R . Silva <gustavoars@kernel.org>; clang-built=
-linux@googlegroups.com; Len Brown <lenb@kernel.org>; linux-acpi@vger.kerne=
l.org; devel@acpica.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
>
> On Thu, Nov 12, 2020 at 7:13 AM Moore, Robert <robert.moore@intel.com> wr=
ote:
> >
> >
> >
> > -----Original Message-----
> > From: Nick Desaulniers <ndesaulniers@google.com>
> > Sent: Wednesday, November 11, 2020 10:48 AM
> > To: Moore, Robert <robert.moore@intel.com>
> > Cc: Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J
> > <rafael.j.wysocki@intel.com>; Gustavo A . R . Silva
> > <gustavoars@kernel.org>; clang-built-linux@googlegroups.com; Len Brown
> > <lenb@kernel.org>; linux-acpi@vger.kernel.org; devel@acpica.org;
> > linux-kernel@vger.kernel.org
> > Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
> >
> > On Wed, Nov 11, 2020 at 7:15 AM Moore, Robert <robert.moore@intel.com> =
wrote:
> > >
> > > Yes, but: isn't the "fallthrough" keyword compiler-specific? That is =
the problem for us.
> >
> > It's not a keyword.
> >
> > It's a preprocessor macro that expands to
> > __attribute__((__fallthrough__)) for compilers that support it.  For co=
mpilers that do not, it expands to nothing.  Both GCC 7+ and Clang support =
this attribute.  Which other compilers that support -Wimplicit-fallthrough =
do you care to support?
> >
> > We need to support MSVC 2017 -- which apparently does not support this.
>
> In which case, the macro is not expanded to a compiler attribute the comp=
iler doesn't support.  Please see also its definition in include/linux/comp=
iler_attributes.h.
>
> From what I can tell, MSVC does not warn on implicit fallthrough, so ther=
e's no corresponding attribute (or comment) to disable the warning in MSVC.
>
> That doesn't mean this code is not portable to MSVC; a macro that expands=
 to nothing should not be a problem.
>
> Based on
> https://docs.microsoft.com/en-us/cpp/code-quality/c26819?view=3Dmsvc-160
> https://developercommunity.visualstudio.com/idea/423975/issue-compiler-wa=
rning-when-using-implicit-fallthr.html
> it sounds like MSVC 2019 will be able to warn, for C++ mode, which will r=
ely on the C++ style attribute to annotate intentional fallthrough.
>
> Can you confirm how this does not work for MSVC 2017?
>
> 1>c:\acpica\source\components\utilities\utdelete.c(270): warning C4013: '=
__attribute__' undefined; assuming extern returning int
> 1>c:\acpica\source\components\utilities\utdelete.c(270): error C2065: '__=
fallthrough__': undeclared identifier
> 1>c:\acpica\source\components\utilities\utdelete.c(272): error C2143: syn=
tax error: missing ';' before 'case'

Thank you for the explicit diagnostics observed.  Something fishy is
going on though, https://godbolt.org/z/Gbxbxa is how I expect MSVC to
handle include/linux/compiler_attributes.h.

The C preprocessor should make it such that MSVC never sees
`__attribute__` or `__fallthrough__`; that it does begs the question.
That would seem to imply that `#if __has_attribute(__fallthrough__)`
somehow evaluates to true on MSVC, but my godbolt link shows it does
not.

Could the upstream ACPICA project be #define'ing something that could
be altering this? (Or not #define'ing something?)

Worst case, we could do as Joe Perches suggested and disable
-Wfallthrough for drivers/acpi/acpica/.

>
> > > Bob
> > >
> > >
> > > -----Original Message-----
> > > From: ndesaulniers via sendgmr
> > > <ndesaulniers@ndesaulniers1.mtv.corp.google.com> On Behalf Of Nick
> > > Desaulniers
> > > Sent: Tuesday, November 10, 2020 6:12 PM
> > > To: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik
> > > <erik.kaneda@intel.com>; Wysocki, Rafael J
> > > <rafael.j.wysocki@intel.com>; Gustavo A . R . Silva
> > > <gustavoars@kernel.org>
> > > Cc: clang-built-linux@googlegroups.com; Nick Desaulniers
> > > <ndesaulniers@google.com>; Len Brown <lenb@kernel.org>;
> > > linux-acpi@vger.kernel.org; devel@acpica.org;
> > > linux-kernel@vger.kernel.org
> > > Subject: [PATCH] ACPICA: fix -Wfallthrough
> > >
> > > The "fallthrough" pseudo-keyword was added as a portable way to denot=
e intentional fallthrough. This code seemed to be using a mix of fallthroug=
h comments that GCC recognizes, and some kind of lint marker.
> > > I'm guessing that linter hasn't been run in a while from the mixed us=
e of the marker vs comments.
> > >
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > ---
> > >  drivers/acpi/acpica/dscontrol.c | 3 +--
> > >  drivers/acpi/acpica/dswexec.c   | 4 +---
> > >  drivers/acpi/acpica/dswload.c   | 3 +--
> > >  drivers/acpi/acpica/dswload2.c  | 3 +--
> > >  drivers/acpi/acpica/exfldio.c   | 3 +--
> > >  drivers/acpi/acpica/exresop.c   | 5 ++---
> > >  drivers/acpi/acpica/exstore.c   | 6 ++----
> > >  drivers/acpi/acpica/hwgpe.c     | 3 +--
> > >  drivers/acpi/acpica/utdelete.c  | 3 +--
> > >  drivers/acpi/acpica/utprint.c   | 2 +-
> > >  10 files changed, 12 insertions(+), 23 deletions(-)
> > >
> > > diff --git a/drivers/acpi/acpica/dscontrol.c
> > > b/drivers/acpi/acpica/dscontrol.c index 4b5b6e859f62..1e75e5fbfd19
> > > 100644
> > > --- a/drivers/acpi/acpica/dscontrol.c
> > > +++ b/drivers/acpi/acpica/dscontrol.c
> > > @@ -61,8 +61,7 @@ acpi_ds_exec_begin_control_op(struct acpi_walk_stat=
e *walk_state,
> > >                                 break;
> > >                         }
> > >                 }
> > > -
> > > -               /*lint -fallthrough */
> > > +               fallthrough;
> > >
> > >         case AML_IF_OP:
> > >                 /*
> > > diff --git a/drivers/acpi/acpica/dswexec.c
> > > b/drivers/acpi/acpica/dswexec.c index 1d4f8c81028c..e8c32d4fe55f
> > > 100644
> > > --- a/drivers/acpi/acpica/dswexec.c
> > > +++ b/drivers/acpi/acpica/dswexec.c
> > > @@ -597,9 +597,7 @@ acpi_status acpi_ds_exec_end_op(struct acpi_walk_=
state *walk_state)
> > >                                 if (ACPI_FAILURE(status)) {
> > >                                         break;
> > >                                 }
> > > -
> > > -                               /* Fall through */
> > > -                               /*lint -fallthrough */
> > > +                               fallthrough;
> > >
> > >                         case AML_INT_EVAL_SUBTREE_OP:
> > >
> > > diff --git a/drivers/acpi/acpica/dswload.c
> > > b/drivers/acpi/acpica/dswload.c index 27069325b6de..afc663c3742d
> > > 100644
> > > --- a/drivers/acpi/acpica/dswload.c
> > > +++ b/drivers/acpi/acpica/dswload.c
> > > @@ -223,8 +223,7 @@ acpi_ds_load1_begin_op(struct acpi_walk_state *wa=
lk_state,
> > >                              parse_flags & ACPI_PARSE_MODULE_LEVEL)) =
{
> > >                                 break;
> > >                         }
> > > -
> > > -                       /*lint -fallthrough */
> > > +                       fallthrough;
> > >
> > >                 default:
> > >
> > > diff --git a/drivers/acpi/acpica/dswload2.c
> > > b/drivers/acpi/acpica/dswload2.c index edadbe146506..1b794b6ba072
> > > 100644
> > > --- a/drivers/acpi/acpica/dswload2.c
> > > +++ b/drivers/acpi/acpica/dswload2.c
> > > @@ -213,8 +213,7 @@ acpi_ds_load2_begin_op(struct acpi_walk_state *wa=
lk_state,
> > >                              parse_flags & ACPI_PARSE_MODULE_LEVEL)) =
{
> > >                                 break;
> > >                         }
> > > -
> > > -                       /*lint -fallthrough */
> > > +                       fallthrough;
> > >
> > >                 default:
> > >
> > > diff --git a/drivers/acpi/acpica/exfldio.c
> > > b/drivers/acpi/acpica/exfldio.c index ade35ff1c7ba..9d1cabe0fed9
> > > 100644
> > > --- a/drivers/acpi/acpica/exfldio.c
> > > +++ b/drivers/acpi/acpica/exfldio.c
> > > @@ -433,8 +433,7 @@ acpi_ex_field_datum_io(union acpi_operand_object =
*obj_desc,
> > >                  * Now that the Bank has been selected, fall through =
to the
> > >                  * region_field case and write the datum to the Opera=
tion Region
> > >                  */
> > > -
> > > -               /*lint -fallthrough */
> > > +               fallthrough;
> > >
> > >         case ACPI_TYPE_LOCAL_REGION_FIELD:
> > >                 /*
> > > diff --git a/drivers/acpi/acpica/exresop.c
> > > b/drivers/acpi/acpica/exresop.c index 4d1b22971d58..df48faa9a551
> > > 100644
> > > --- a/drivers/acpi/acpica/exresop.c
> > > +++ b/drivers/acpi/acpica/exresop.c
> > > @@ -197,8 +197,7 @@ acpi_ex_resolve_operands(u16 opcode,
> > >                                 case ACPI_REFCLASS_DEBUG:
> > >
> > >                                         target_op =3D AML_DEBUG_OP;
> > > -
> > > -                                       /*lint -fallthrough */
> > > +                                       fallthrough;
> > >
> > >                                 case ACPI_REFCLASS_ARG:
> > >                                 case ACPI_REFCLASS_LOCAL:
> > > @@ -264,7 +263,7 @@ acpi_ex_resolve_operands(u16 opcode,
> > >                          * Else not a string - fall through to the no=
rmal Reference
> > >                          * case below
> > >                          */
> > > -                       /*lint -fallthrough */
> > > +                       fallthrough;
> > >
> > >                 case ARGI_REFERENCE:    /* References: */
> > >                 case ARGI_INTEGER_REF:
> > > diff --git a/drivers/acpi/acpica/exstore.c
> > > b/drivers/acpi/acpica/exstore.c index 3adc0a29d890..2067baa7c120
> > > 100644
> > > --- a/drivers/acpi/acpica/exstore.c
> > > +++ b/drivers/acpi/acpica/exstore.c
> > > @@ -95,8 +95,7 @@ acpi_ex_store(union acpi_operand_object *source_des=
c,
> > >                 if (dest_desc->common.flags & AOPOBJ_AML_CONSTANT) {
> > >                         return_ACPI_STATUS(AE_OK);
> > >                 }
> > > -
> > > -               /*lint -fallthrough */
> > > +               fallthrough;
> > >
> > >         default:
> > >
> > > @@ -421,8 +420,7 @@ acpi_ex_store_object_to_node(union acpi_operand_o=
bject *source_desc,
> > >                                 }
> > >                                 break;
> > >                         }
> > > -
> > > -                       /* Fallthrough */
> > > +                       fallthrough;
> > >
> > >                 case ACPI_TYPE_DEVICE:
> > >                 case ACPI_TYPE_EVENT:
> > > diff --git a/drivers/acpi/acpica/hwgpe.c
> > > b/drivers/acpi/acpica/hwgpe.c index b13a4ed5bc63..fbfad80c8a53
> > > 100644
> > > --- a/drivers/acpi/acpica/hwgpe.c
> > > +++ b/drivers/acpi/acpica/hwgpe.c
> > > @@ -166,8 +166,7 @@ acpi_hw_low_set_gpe(struct acpi_gpe_event_info *g=
pe_event_info, u32 action)
> > >                 if (!(register_bit & gpe_register_info->enable_mask))=
 {
> > >                         return (AE_BAD_PARAMETER);
> > >                 }
> > > -
> > > -               /*lint -fallthrough */
> > > +               fallthrough;
> > >
> > >         case ACPI_GPE_ENABLE:
> > >
> > > diff --git a/drivers/acpi/acpica/utdelete.c
> > > b/drivers/acpi/acpica/utdelete.c index 4c0d4e434196..8076e7947585
> > > 100644
> > > --- a/drivers/acpi/acpica/utdelete.c
> > > +++ b/drivers/acpi/acpica/utdelete.c
> > > @@ -111,8 +111,7 @@ static void acpi_ut_delete_internal_obj(union acp=
i_operand_object *object)
> > >                         (void)acpi_ev_delete_gpe_block(object->device=
.
> > >                                                        gpe_block);
> > >                 }
> > > -
> > > -               /*lint -fallthrough */
> > > +               fallthrough;
> > >
> > >         case ACPI_TYPE_PROCESSOR:
> > >         case ACPI_TYPE_THERMAL:
> > > diff --git a/drivers/acpi/acpica/utprint.c
> > > b/drivers/acpi/acpica/utprint.c index 681c11f4af4e..f7e43baf5ff2
> > > 100644
> > > --- a/drivers/acpi/acpica/utprint.c
> > > +++ b/drivers/acpi/acpica/utprint.c
> > > @@ -475,7 +475,7 @@ int vsnprintf(char *string, acpi_size size, const=
 char *format, va_list args)
> > >                 case 'X':
> > >
> > >                         type |=3D ACPI_FORMAT_UPPER;
> > > -                       /* FALLTHROUGH */
> > > +                       fallthrough;
> > >
> > >                 case 'x':
> > >
> > > --
> > > 2.29.2.222.g5d2a92d10f8-goog
> > >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
>
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
clang-built-linux/CAKwvOdnYpmf%3DydFVWSqVkWeUpn%2BM2v9PfdQd71T3oqQ9_1WQaQ%4=
0mail.gmail.com.
