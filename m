Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBUM62KAAMGQE2U26VNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B55309033
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 23:42:26 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id c16sf8819730ile.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 14:42:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611960145; cv=pass;
        d=google.com; s=arc-20160816;
        b=KF+LQaGcN9aqTQ2Xt3EGv9YxuYr81nd+MMBoCEVKC5VC2egly8DuOHoJt6ovK44k0u
         kad50T+8+EA2SwQxWTpck2JT2jVMBBHjuVFTeq8nxpN2kYNaqDjgOxRGU+FNo7IdN94s
         LaPY5/IHlrINbE4xFYrVoHo9Ymdi/TyfF2cRwejWpFJ61DPDCEZhX+X6LB4Sh2jDg2HZ
         nt2Q+7vpbQNKKVEbSxE4INi5O5uBtnkRY8PobY344Twy2bz7aR074BXRj6QlhIjbk3Oc
         0mW3qFvMrlvV6/qCq78++pyVUul4iGvIqKlZ4FjCworgQDZzEla9hAezzGIXTkMNUY9E
         pSLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=xiZV81B8RJyZhL/FdOjagTChpjaxh27+c6B8H6jjoD4=;
        b=tIk8hezAwOChq6J8QP3pp2L9vptlzydmOkCnK1fbBRW54cLZPr1wWoQKWpTTZSIHY5
         ZIcQz4ZOsf61JJDii1P/oSIkIt6ozEF1VTwlaurUGbGwzcYJ76Vdr0zymy1KDURHMKYd
         mjGZBLxAxmRvRqC+ydw2scniRuzDobcnSpGsMb6Ey1upNAIhHsn1Xxt1Q2Mbk6n2t1gD
         jsAYqoryVC+f1mr/qXEZLu/n04UP/tMnuuXuRa/aASjMyTHUzCFZNZBt2pCax6lUaxsX
         6+E7hlT+XRQAXYaMIuypgEpTTnwPE9c3i+OJMTKTFbVBUJGPwQDvdAP27hVAY+ijX93y
         nVXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZWdBUn0L;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xiZV81B8RJyZhL/FdOjagTChpjaxh27+c6B8H6jjoD4=;
        b=oXz8rnIFd7s5szjOEaF+fz+fQYP5WCUhzIm/xB2/1bLjxO2Splv2BIeKZwF4g150WI
         wwhV2S1zSRb0iiE0SDQ2ekEsWsh/tCgm4iq2Da4BlMeBSN9LFp/4PFMuMAJ2XCHZ+kCl
         cqUFmIgxiLAo18Opp72HfoXqSLWrSUfN/gSBxPrB1brX4FLD021QDLhoe/rrkiGN9eUG
         700v3H2CzW2w617JYAYo8mhNqwK3sekfCbYr/i1iByCTjOd8l17rIIyfoVcVfnlaHTD2
         pKE9wQekOPhdViau3KrEYshQQTGBY3NNt8L5dgAJzYMau8r7Tc5OR3w9tbaS3UxD76KU
         bQ5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xiZV81B8RJyZhL/FdOjagTChpjaxh27+c6B8H6jjoD4=;
        b=A+KFK3rkMeu3IMjbSnRyqAV9Zw9lgnIMpkNg9quf6hTEcK+v4EnbA5cNS+x2KkDlh9
         G7mx631t2dFDl/2L+FS0Tbr0EfqLJf3WhpoXZxK1uhw+VyyklfHHebNxsy7FdFnXU9wU
         f/TopVtmGgOppmCJJwySTgaJAHJMEyGkm9iDsbLGkEfxPY1wZkvipUOVIXqhYYsjO08U
         j1uayyXaOb7TQbl69FGM4Cm4ACFOYlJVGYYqVuGG4/pP+e1i+OQWHMYM7OdTyybjIb6C
         pc4WOuiASDrXhoKxZFDsm9Jw+/0KobaoPSzvMXEeQGDvxUWLV0tGqmn1P7pWS6Q7BYEX
         somQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xiZV81B8RJyZhL/FdOjagTChpjaxh27+c6B8H6jjoD4=;
        b=bFCQvAksQ67+hckKEVaFQHiw02K+5Kc7mLFTdL6sC719MEXcVce843smdNTm/qY7al
         d/g9RtXge1CkpzNgImlEwXZjY4QjegH+gVgTkuTUM2d+EXYvIBfGI3LtzTpsY+NhFZvR
         kigKTvUCvFaSiYpP6sm85XQbGvGcYATqhsk0sFHFxRm+5IzIcVafq6loXExZmqFB8agD
         0BScWyrmFcjryRzLSw0sojgKmBSDx//5gq2O61KHjkyOjf/Q5Zbm+nfepcyKKpzb7Ajd
         fXOAvWN520EDWFOqYAKtdTRkM3OswnP6IrLrY2XxgGQLLNHblvq9c/l7i3X7f3VJOP38
         LqJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GHCK3N+DYyP3M6WJTubqfkDvrLIDF+Td3QHBYu//Rk4sPhSzk
	T/FLh2KBsIBPifHKbMNGjuM=
X-Google-Smtp-Source: ABdhPJzggY0u5eA0NNkEgq73u3YGCfp3xMMvbJB80s9TExkNXecN1dZOg4IR9S1WYDSY1W+UEiY5wA==
X-Received: by 2002:a05:6e02:1b8b:: with SMTP id h11mr5934973ili.32.1611960145636;
        Fri, 29 Jan 2021 14:42:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:5ac:: with SMTP id k12ls825759ils.7.gmail; Fri, 29
 Jan 2021 14:42:25 -0800 (PST)
X-Received: by 2002:a92:6510:: with SMTP id z16mr5544599ilb.208.1611960145176;
        Fri, 29 Jan 2021 14:42:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611960145; cv=none;
        d=google.com; s=arc-20160816;
        b=c3xEbwBfCd/ia4lJZ/ydG+616DwEYhUocB1qrCXiQD/aAbQdMnBUWhBnA32F6medrU
         Rix4hCoj7xo/CDuxi4qjnGB65HUDeFP/Ykr7dVkm1Dd6HZrOLJAVgoOL+i7GrkMIaT7/
         7mbsrpJHyYKoVOPw3y5tGHwwg2BTcUSKc3AUhA+orwjtD4Vd/xYwtJczwH6k739Q6nep
         V+YsWgDBW0I43srnZdmacoytOZe4xKTOrH/bvxJsTRJeBZBuaPAz2fnBRA+nttJfeg3F
         49KYRYxfgM7ZCDjJELUBgtTq7pCz/nLy8vP4exHFtDAwDvU4eyLq2xubDdZ7mTI4U33U
         Nplw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dfELtoaA8bJe8gY3p6rcM2hsQagvy8a4lKjq9ZDDe0Y=;
        b=emKv8R6Y4u0GSmLOZ+LECElW9qgVhhp/aLp7L23osxyHRCys3yEFFL6NR3mTrp8YJP
         wvKJbjTwlKadNupjb2+I7kMVNrbCBL8FirPZSDxgmeipHhmsVx2mKs0mE/ugEGxZPIsF
         0XbCZsJlRb6ZJNs+4iBlK9zaFr08/J6XxCqX4hl8+byI1vlc9wuphDQ4072RUDMZCEfd
         dgbpxDGbjTW/hPfCpJKRH0+q/Fth3sUWMFmLtf5jAnWSDjCc8ltO3pikeKT0mZ5D9/MA
         BFQ6jbr6tjlq1itlzI0p0GsPRf9oBA8QhhS+zhuGsUAGOv6rmVAXzIVmYAbkJfjlpFzg
         RRWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZWdBUn0L;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com. [2607:f8b0:4864:20::135])
        by gmr-mx.google.com with ESMTPS id k6si534847ioq.1.2021.01.29.14.42.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 14:42:25 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) client-ip=2607:f8b0:4864:20::135;
Received: by mail-il1-x135.google.com with SMTP id y17so9970733ili.12
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 14:42:25 -0800 (PST)
X-Received: by 2002:a92:c80b:: with SMTP id v11mr4673883iln.215.1611960144907;
 Fri, 29 Jan 2021 14:42:24 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com> <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
 <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com>
 <CA+icZUWsyjDY58ZZ0MAVfWqBJ8FUSpM6=_5aqPcRTfX2W8Y-+Q@mail.gmail.com>
 <CAKwvOd=mHvEtto37rzFMfsFYe2e-Cp2MAiyRYxHWPdc-HbT8EA@mail.gmail.com>
 <CA+icZUWxK9fdV8PNGqbQrOFmSZ2Ts4nNqfVMMNUh5u79Ld7hjA@mail.gmail.com>
 <CA+icZUUo6URpxHh6_Tppv9_Z1dyhGDB2OqSCY3yRw72aA0EbMQ@mail.gmail.com>
 <CAKwvOdmWx0reabY-S3nXfTZuhs-_SP7pbb0uHyGeaNSQnm8eRQ@mail.gmail.com>
 <CA+icZUWsncyKvxPZ5g=a3ssWy=cYahsU6hprM3n=jFUmnjPC6w@mail.gmail.com>
 <CAKwvOdk4kG-_c3inNj9ry_xUU9SQE-2AqQp40YL_V=6SHU6E=Q@mail.gmail.com>
 <CA+icZUX576Rt7HJ4hvrwRTCC2pTmoH-Yu-haU+MDb8B6yADAYA@mail.gmail.com> <CAKwvOdmq=L_ob-WpNBE-fSc3oYXT10ZvttfiXiZw3+SxaWWy-A@mail.gmail.com>
In-Reply-To: <CAKwvOdmq=L_ob-WpNBE-fSc3oYXT10ZvttfiXiZw3+SxaWWy-A@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 29 Jan 2021 23:42:13 +0100
Message-ID: <CA+icZUXMxM4CuNa0P+JFJO7LSj6QvJneArYXpqLRJrzqJMYj6g@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZWdBUn0L;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Fri, Jan 29, 2021 at 11:31 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Jan 29, 2021 at 2:23 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Fri, Jan 29, 2021 at 11:21 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Fri, Jan 29, 2021 at 2:11 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > >
> > > > On Fri, Jan 29, 2021 at 11:09 PM Nick Desaulniers
> > > > <ndesaulniers@google.com> wrote:
> > > > >
> > > > > On Fri, Jan 29, 2021 at 1:20 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > >
> > > > > > On Fri, Jan 29, 2021 at 10:13 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > > >
> > > > > > > On Fri, Jan 29, 2021 at 10:09 PM Nick Desaulniers
> > > > > > > <ndesaulniers@google.com> wrote:
> > > > > > > >
> > > > > > > > Can you tell me please what is the precise command line invocation of
> > > > > > > > make and which source file you observed this on so that I can
> > > > > > > > reproduce?
> > > > >
> > > > > If you don't send me your invocation of `make`, I cannot help you.
> > > > >
> > > >
> > > > /usr/bin/perf_5.10 stat make V=1 -j4 LLVM=1 LLVM_IAS=1
> > > > PAHOLE=/opt/pahole/bin/pahole LOCALVERSION=-10-amd64-clang12
> > > > -lto-pgo KBUILD_VERBOSE=1 KBUILD_BUILD_HOST=iniza
> > > > KBUILD_BUILD_USER=sedat.dilek@gmail.com
> > > > KBUILD_BUILD_TIMESTAMP=2021-01-29 bindeb-pkg
> > > > KDEB_PKGVERSION=5.11.0~rc5-10~bullseye+dileks1
> > >
> > > $ make LLVM=1 LLVM_IAS=1 -j72 defconfig
> > > $ make LLVM=1 LLVM_IAS=1 -j72 menuconfig
> > > <enable CONFIG_DEBUG_INFO and CONFIG_DEBUG_INFO_DWARF5>
> > > $ make LLVM=1 LLVM_IAS=1 -j72 V=1 &> log.txt
> > > $ grep '\-g -gdwarf-5 -g -gdwarf-5' log.txt | wc -l
> > > 0
> > > $ grep '\-g -gdwarf-5' log.txt | wc -l
> > > 2517
> > >
> > > Do have the patch applied twice, perhaps?
> > >
> >
> > Switched to my v6 local Git branch and invoked above make line I gave you.
> > I still see that double.
> > Looks like I need some "undrunken" switch.
>
> Can you follow my steps precisely to see whether it's your .config?
> Perhaps there is a config that duplicates DEBUG_CFLAGS that is not set
> in the defconfig?  If so, it's still harmless to specify the same
> commands twice, and likely isn't introduced by this patch set if so;
> so I'm not sure how much more effort is worth pursuing.
>

If I follow your steps of make I do not see it "double" (in my local
v6 Git branch).

Looks like this is coming from my build-script.

I checked if I have some double dwarf(-5) patches double - Nope.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXMxM4CuNa0P%2BJFJO7LSj6QvJneArYXpqLRJrzqJMYj6g%40mail.gmail.com.
