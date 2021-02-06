Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB7UW7KAAMGQED6JPZUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id F322B311D17
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Feb 2021 13:28:47 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id t5sf5166715otm.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Feb 2021 04:28:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612614526; cv=pass;
        d=google.com; s=arc-20160816;
        b=icq1EwLwdzFv22X9Py7cFshLkpB2honieiAecZ0st401JU1Ow5IBmP9pNUJN/05BG6
         AJqs5TpPu54tvs4AgKn3X5dbsnMNBD/NXZEj0Tx8OoYKyEBmlGqvkuhgST3SZ4z5P/8v
         48qwR49NJs59x2Oh5McS9q5BMOJAs4Zt90DYSS/vfzMoreU0iI2jUFisMJ3kjEJrfRJF
         yUU/L+DiUjf+UHrPyvcfOn2lAyWkIccUDLr+EHlX319gLTVk76WQsI5sOGL1Kj9YATBN
         z/7KHNUvrUWxAJbP7Xq7+gkWAfKfXB9H25soPDiIv2if/2+dzeO5J71pq+bny8vSRlLk
         nesg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=zgeF2oIew8qVsx+zsNRmDisEASNrHY9+Nj1L0pX/WDg=;
        b=nngsTlmeKvM6x7iwv/hf1srwVNg1IsRDCTvAxucfqllE7jYBEWG2WxBXimiKlLyl+N
         szNAnvkZfKYMlETKWHY0d4y2HUey3ALRyvLWB7yxUbY2GUW+5s5m9ILDUmkLmToBrwjG
         Jj9u0Y/VWaV0iL01v/OFOF2oK8rPLd9ldXwTtDdXH3KpS2VFDPe3GpiT5tGgp3P/jf7j
         OGlb9BZuyCaUArHyw7MeHnifzWX/XSL/rsdSsWdnDGUdrEYzqkTkdSKaywdKfmCxw8bl
         gHadiebrr+uLTTMS481H4pmN/YuzOhOgj0grCNDZPg/3YnECJH9HOJm9HgssWtupvjMk
         RK4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T2sqHXGg;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zgeF2oIew8qVsx+zsNRmDisEASNrHY9+Nj1L0pX/WDg=;
        b=nCpC0O99JightiYLEte5GapwJhfhcs4yTkFrZXeVkmnL6rFxRmiLJYllJpvKLf/DaC
         2JUT1Y6etRp7tYE8w1GqAg2eKffE1E1up31ivq+Qq6tuTALhKfkXiH9JidMWDgyMhZjF
         QIqzCcezXSdg95vRV4IiddJcFOmgTG9XvAXFJYEaHr+7czvdpoH4WJvscpxF31muJ/3H
         NY9xTRy2F4MOke3MgGvo2nfx9TWPx5ewp2eaWA+IZa/CnpavgzJAI41OzxdXAXCySHqY
         XbJLfMN6xueE0UpJlO9LnrmbG6sh0gJ2FNkzCWo9OuN2unO8jsjYcdsNInpU+ZiM3hdh
         FDQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zgeF2oIew8qVsx+zsNRmDisEASNrHY9+Nj1L0pX/WDg=;
        b=gMej/QD6lDg8kbgsKoWeW39wwRWPHdmNsxG005pZ52JmIzI+r6hb2TMJziGVvIJH/X
         8gIcr3l4umz27XOB5j3Og5Np1p9bdt5yjHzh+VtQ6ZGJa7AbT6ZkUM/bMpJurQQHSZ08
         QQ6qi4d+ecGkRcX91jlF4Irkod139TfJ0HdMvmzrLwJqx5JWf8uyskF5lPgKFFHLym25
         vD2/1lOt+KmSGtRF29lS7rciMorRxCr8b4ktTbpCxEfU/npo036TYsvhXxQL5Ivz82JN
         dEDaJ/KRTUpYILaZr/uhjkw28b3l3/jpaMWHNnvwDWwX3FQfC5B6oo6gKKNPFSGw7qC7
         lTAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zgeF2oIew8qVsx+zsNRmDisEASNrHY9+Nj1L0pX/WDg=;
        b=UYWoPQey57ai5h/1ccRsCiDhRIoaClLTlZgywHgZrgLOjjsXcj0IydkNmWTNZWzRFu
         FJGxFamHjaiAKiixn3oXoUgPfNKLraxTEiyZwRJD9ynPmYdLbqqyXhdbTpc+vELYJgsH
         uRYLVVKLmlgzG+QfcusAYZ/e0uB5TOrQKd2e9CYyqgWsNOaFaGD2blUBoM+zeYTDLZHC
         fZ56YeSlUg2uKUcock+Fa9zB0zfSaswD3ZlYLgwPejfkmZGVryz5Q4iYg995RDHZtnIY
         WpMeoM7q7PMhE978DqUlMJ2iIriX2MxjmBER5j2GMCYjpQ9ggXwk44RhKMd1YX/waumD
         Wztw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533eZrwgmESARDxYtF/M1NKpCKHTmINaJj+bEMLbwGXhqxS2UX61
	wrblABTQmTLPQyN5cpHdn4g=
X-Google-Smtp-Source: ABdhPJxND51T8xu/8NIVBSGwheHrURfjCG897MToAuXkj24jV0MdskMGTsalFuEppisJ4JtI3uvffQ==
X-Received: by 2002:aca:4a4c:: with SMTP id x73mr5838007oia.97.1612614526570;
        Sat, 06 Feb 2021 04:28:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ad50:: with SMTP id w77ls2767152oie.11.gmail; Sat, 06
 Feb 2021 04:28:46 -0800 (PST)
X-Received: by 2002:aca:add7:: with SMTP id w206mr5944387oie.86.1612614526167;
        Sat, 06 Feb 2021 04:28:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612614526; cv=none;
        d=google.com; s=arc-20160816;
        b=xqmtC12/a00haMpQQ0znEubv1YEqEbSqtEd+x5Y1YwLOEzf4GOm8S98kabOnFH2XIE
         SrlTZG33y1fYZ5jRjyFhIudzUv/iNcyvdCI/gNdCoOF7xURygZejLORO4M9RJHyTE2vI
         43aXr4yGrz5N2k2wUeGTW1gZkGN3sUnNY5U78uCoSRkFwF4WWJt0RhN2pitDwj3IpakB
         amb9famw46yXvuybU/o0DCecklU0kuoeA4x5u6a/OqaBbeLN97EIcx54rtKLRnPIs1PF
         LRKffHrf3AWDPiCu5MkGa/IXa5t38vbsfpzUoxnhbPSgrb61VhKCcRex6v33vJOO1nUG
         g/hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JBajd064PpTu/1CDE1Jdo8Su+QtGYLF6dTi4RlKWEEA=;
        b=L2/YMAn5AJRdReLG4edbVEwK2TkxrWbQa3yJ8q1UAKLFhvwK2CKaPmqStHDfc0axiJ
         PNbrP8iDSW0Pr3z1csNzotlG1CYexyE8kmTu5u7wKDGwDvevVd7JSgC3/IiI2YFC2+Mm
         MKsVKHvAZN+b+A86o2Y+lsWRTT9SUlGwEuINLgDJjFKnUjXj2KBmOujSVH9A+es05Hqa
         A2QpW5QNgrpwGbmjApD5G6Qf43Y4qWFpaAQWnEx9r3/DgZwM8XaKxm0VuKD68dsqcuKc
         T079QiaLIOehOEmLA1q75A+uab+q5pWueg0k64PKC5PW2fn7wVqe953QTplerkwNEVfr
         qSlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T2sqHXGg;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com. [2607:f8b0:4864:20::129])
        by gmr-mx.google.com with ESMTPS id r13si763176otd.3.2021.02.06.04.28.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Feb 2021 04:28:46 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) client-ip=2607:f8b0:4864:20::129;
Received: by mail-il1-x129.google.com with SMTP id y5so8396605ilg.4
        for <clang-built-linux@googlegroups.com>; Sat, 06 Feb 2021 04:28:46 -0800 (PST)
X-Received: by 2002:a92:ce46:: with SMTP id a6mr8328535ilr.10.1612614525862;
 Sat, 06 Feb 2021 04:28:45 -0800 (PST)
MIME-Version: 1.0
References: <20210205202220.2748551-1-ndesaulniers@google.com>
 <CA+icZUW3sg_PkbmKSFMs6EqwQV7=hvKuAgZSsbg=Qr6gTs7RbQ@mail.gmail.com> <CAK7LNAT8rjo=MdLqpjRXR2fnJ8XSeoA=uD633Pj1ENs5JOciXQ@mail.gmail.com>
In-Reply-To: <CAK7LNAT8rjo=MdLqpjRXR2fnJ8XSeoA=uD633Pj1ENs5JOciXQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 6 Feb 2021 13:28:34 +0100
Message-ID: <CA+icZUXcAGhqLTmWsQLnvH=7meZ4N0k3zDcwv7vMGCSsp4TxDg@mail.gmail.com>
Subject: Re: [PATCH v9 0/3] Kbuild: DWARF v5 support
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Chris Murphy <bugzilla@colorremedies.com>, 
	Mark Wielaard <mark@klomp.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=T2sqHXGg;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129
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

On Sat, Feb 6, 2021 at 1:05 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Sat, Feb 6, 2021 at 6:00 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Fri, Feb 5, 2021 at 9:22 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > DWARF v5 is the latest standard of the DWARF debug info format.
> > >
> > > DWARF5 wins significantly in terms of size and especially so when mixed
> > > with compression (CONFIG_DEBUG_INFO_COMPRESSED).
> > >
> > > Link: http://www.dwarfstd.org/doc/DWARF5.pdf
> > >
> > > Patch 1 places the DWARF v5 sections explicitly in the kernel linker
> > > script.
> > > Patch 2 modifies Kconfig for DEBUG_INFO_DWARF4 to be used as a fallback.
> > > Patch 3 adds an explicit Kconfig for DWARF v5 for clang and older GCC
> > > where the implicit default DWARF version is not 5.
> > >
> > > Changes from v8:
> > > * Separate out the linker script changes (from v7 0002). Put those
> > >   first. Carry Reviewed by and tested by tags.  Least contentious part
> > >   of the series. Tagged for stable; otherwise users upgrading to GCC 11
> > >   may find orphan section warnings from the implicit default DWARF
> > >   version changing and generating the new debug info sections.
> > > * Add CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT in 0002, make it the
> > >   default rather than CONFIG_DEBUG_INFO_DWARF4, as per Mark, Jakub,
> > >   Arvind.
> > > * Drop reviewed by and tested by tags for 0002 and 0003; sorry
> > >   reviewers/testers, but I view that as a big change. I will buy you
> > >   beers if you're fatigued, AND for the help so far. I appreciate you.
> >
> > All 3 patches NACKed - I drink no beer.
>
> LoL.
> Other than beer, I am fine with v9.
>
> Personally, I thought v8 (no CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT)
> was good too, but I do not have a strong opinion about
> leaving the compiler's freedom to choose the dwarf version.
>
> Unless somebody has an objection, I will pick up v9 for the next MW.
>
>
> Meanwhile, if you want to give reviewed-by / tested-by
> please do so.
>

Fine with me.

I have no opinion towards distro-handling of toolchain-default(s).

Feel free to add my:
Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # LLVM/Clang v12.0.0-rc1 x86-64

Thanks to all involved people - I enjoyed the evolution of this patchset.

- Sedat -

P.S.: /me drinking right now an Earl Grey tea - drink whatever you prefer :-).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXcAGhqLTmWsQLnvH%3D7meZ4N0k3zDcwv7vMGCSsp4TxDg%40mail.gmail.com.
