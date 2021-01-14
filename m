Return-Path: <clang-built-linux+bncBDYJPJO25UGBB65SQKAAMGQEITO76VI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 713E32F6AC6
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:20:28 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id e2sf4435564pgg.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:20:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610652027; cv=pass;
        d=google.com; s=arc-20160816;
        b=dHhNgdCS7PVqnTiRhm+4SWMEVjIWvqXQtdN4vlCj/VYFboFCkFsYzshkdkA+NevM06
         FfBjJ/LfPqv780rF5lfeu9JaVaJiwvd8vhzps7Pwcdg/n0ZvAcajpHhWtIMrqmG7ozE4
         W9lkTH6mFricpHnic8U9TDpJob88/RbMUErkAw+jLO3v/LJ/xRxP9lEOZmp266GWRL1r
         cS2fPpbb5ZZ4G+v6kssuk0s6zo2P/9SL0092h0aHhko47bD2yHyh02FnnVVLvzkvCUAF
         XOjUrn4/3n7X/OO0J8TTCkC9oWzcZi2GDyytmbq16VNUOkaVgYPPTW16hUod0Cg2eeDe
         ebyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=tgpTM3TrlxrHmm3hhk5xuiSMaggF7242zWwCmqXrhjI=;
        b=ULT83BTXpLNt0f1IP9ZKFlxSx/BsN/P2hkPjp6O/RHoYTC1oQC5bYnHxmbSNMZlm9c
         p6RLu0rQzkQsL1E+qI9OC/1Lht3zsZ4aZiIqZqb1g5UYtzdce4s9iwO4VaJJteaLO7au
         QGhxookPwE3hTIFK2QcBxNf4CtQ3/hQxgx1whCc89/3u4iEBlwlE+flK5piERLaBEbdZ
         7/sOlUkvKJljnSftZwln0NZG9DclLxgID1YlYMnDp6t90AchApFBBAqeBMOD3w/9YDh9
         0KR3szytIfxvlfwubMWMPAM/vxPJ0VxlDDVbTcODq4rBrsGtu9dLs7ZwhYVOlSRBZy4q
         O77A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Sa1eJWQJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tgpTM3TrlxrHmm3hhk5xuiSMaggF7242zWwCmqXrhjI=;
        b=YplN3Eakrr5NyU8wES1b3EjuoG/z1gTckFBOcHJdCjuIbyRh7MvOBhfMN4XWOsy3aZ
         Qwv2y1/TRIF2QdtAVfXiuwtWeTwu5d9RjmSgiva+w94zNJ0qpN8uSgBHb4u6IoSUfRCq
         dR3n2O/5/2yS/89G5sGjCHIjcx83BLI4xeBS2Su+WvUo65x6hCGcszKyHFpvnp7C80m1
         nso0lL0YzjM1nx3GXzOOIy28hI5mrDjxHkeu9Y5fJr/QXypprakJTmIcDzkFtOn9NnRb
         QbRSz3b+rhZfAqNPqXmI0WyjEz84jkV4VDpddNcqaI5KdlaXGFFlnivHg8fjKjl9T6Ak
         fsfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tgpTM3TrlxrHmm3hhk5xuiSMaggF7242zWwCmqXrhjI=;
        b=VOigF26k1vxYLJVJ8rP75UrzrhZTjccTukf7CPgpqfNpm3lSCygTL3BLNvhP4VQkfy
         EsVhHZeZdrH1utwTk5vTVqg9zKjy17r6Bt748X5YOQtv+AKekfzARo5iEjVL27jXKt5c
         B+VJulLWJXlexPGSWanvhb2+swnttYXleO9wVoCDjme6LXxU+YL5xJhSOVdXp9QWwT9R
         49wjuDg+K+NPMuuzv8Xph2sanDux8PRyrWNqJziopps6oCcjZKCWGAhlWw15BxAAAajo
         PZOCGVVBITi0D/2+B3ZZg19INKH5W7OZwSuBe7uKNRQ4dRUpop6eN/GQr8GPyJDmbJnU
         EBSg==
X-Gm-Message-State: AOAM533JYOIXsJI/mvPzEFICWsiy0ENK5c5jHxYMnpjY11VoKKwCha4o
	Xgt/f50ZRxM4XeG9/mpvp0o=
X-Google-Smtp-Source: ABdhPJyfGHeUL0N9NTf7k1UVriigocY9/etGTaazoS9Efjbr9qAS+6yxIyDsqNBmFJNoyGxTJNMa5A==
X-Received: by 2002:a63:4f64:: with SMTP id p36mr8826592pgl.374.1610652027143;
        Thu, 14 Jan 2021 11:20:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9550:: with SMTP id w16ls2501201pfq.0.gmail; Thu, 14 Jan
 2021 11:20:26 -0800 (PST)
X-Received: by 2002:a63:d917:: with SMTP id r23mr9092951pgg.126.1610652026444;
        Thu, 14 Jan 2021 11:20:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610652026; cv=none;
        d=google.com; s=arc-20160816;
        b=QZLKrCXisw2sbWmZoXZoop7MiBZAZMoo5MbR4BHacf0o4lalpAm5MHRweKZcjqToTj
         KpBLFmMiwKS9h2z6R/00GUInWHJPW36Tmp9Q3bGKSHYRagPlWx45BwZMjvoY/p82M1QZ
         t1r1GOfWPJ45tIctHc7uT1T4HldxHJHCskIiXXkXng9R+bd14UZp2U6t3gbdPMUi6U1D
         azMAu0v23qHwR80zaR6IODrOXrp2Aew/Uef9oavcwVsqeEYrbeH/ZDVqtkNQNtMuwL5w
         zkEcrb4bF/PkVZUmYa+1Dks6RrF5qmXpq2sLl4lCTcYtzmfrAgb7LQaHrYpujazGfXKc
         Ie4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Vfn3VJyLZfDBREd6pk2kWhaeYFaMULYrKp3kOErgYsc=;
        b=uKX7z6BJXrPLZXtMtq8ltZT47K5jvmn+Xhr3UWZ/pzFcvHTqFIMMOhbUlyucAmyKWl
         YcmC/32VHrwnPpWzDYkn5w440X59ZRXyNONjzjdHEECz89J1uDKiCPbe137K/cui7vqW
         0G8PNtyvd2046YygqWykcd4OqJ72ATefGp2Ul63pEsqDaHKQNycPzM1l9P3HAawE7TwU
         FhuSS0wGxlP2sHQhBL/x97Csy6xREpX6l/U8deI20gJmzRX5Vnd9PucymMf4VOVuYQx9
         nDEzox9gz4LDPStTQZYvoti8HBgmRhTt2HORybau5xDDToV2vTgtLzNYYM0eL706Gcx8
         mZVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Sa1eJWQJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id m63si312413pfb.3.2021.01.14.11.20.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:20:26 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id l23so3778849pjg.1
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 11:20:26 -0800 (PST)
X-Received: by 2002:a17:90a:9915:: with SMTP id b21mr6281896pjp.101.1610652025995;
 Thu, 14 Jan 2021 11:20:25 -0800 (PST)
MIME-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com>
 <20201204011129.2493105-3-ndesaulniers@google.com> <CA+icZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg=1GDYR8-w@mail.gmail.com>
 <CA+icZUW6h4EkOYtEtYy=kUGnyA4RxKKMuX-20p96r9RsFV4LdQ@mail.gmail.com>
 <CABtf2+RdH0dh3NyARWSOzig8euHK33h+0jL1zsey9V1HjjzB9w@mail.gmail.com>
 <CA+icZUUtAVBvpU8M0PONnNSiOATgeL9Ym24nYUcRPoWhsQj8Ug@mail.gmail.com>
 <CAKwvOd=+g88AEDO9JRrV-gwggsqx5p-Ckiqon3=XLcx8L-XaKg@mail.gmail.com>
 <CAKwvOdnSx+8snm+q=eNMT4A-VFFnwPYxM=uunRkXdzX-AG4s0A@mail.gmail.com> <5707cd3c-03f2-a806-c087-075d4f207bee@fb.com>
In-Reply-To: <5707cd3c-03f2-a806-c087-075d4f207bee@fb.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Jan 2021 11:20:15 -0800
Message-ID: <CAKwvOdnZW03GaEbSC0Hpg1wb-mniAbT2gBeCwB66+RYAdSr=7Q@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Kbuild: DWARF v5 support
To: Yonghong Song <yhs@fb.com>
Cc: Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Caroline Tice <cmtice@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Nick Clifton <nickc@redhat.com>, 
	bpf <bpf@vger.kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Sa1eJWQJ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036
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

On Thu, Jan 14, 2021 at 11:13 AM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 1/14/21 11:01 AM, Nick Desaulniers wrote:
> > On Thu, Jan 14, 2021 at 10:53 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> >>
> >> On Wed, Jan 13, 2021 at 10:18 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >>>
> >>> On Wed, Jan 13, 2021 at 11:25 PM Caroline Tice <cmtice@google.com> wrote:
> >>>>
> >>>> On Tue, Jan 12, 2021 at 3:17 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >>>>>
> >>>>> Unfortunately, I see with CONFIG_DEBUG_INFO_DWARF5=y and
> >>>>> CONFIG_DEBUG_INFO_BTF=y:
> >>>>>
> >>>>> die__process_inline_expansion: DW_TAG_INVALID (0x48) @ <0x3f0dd5a> not handled!
> >>>>> die__process_function: DW_TAG_INVALID (0x48) @ <0x3f0dd69> not handled!
> >>
> >> I can confirm that I see a stream of these warnings when building with
> >> this patch series applied, and those two configs enabled.
> >>
> >> rebuilding with `make ... V=1`, it looks like the call to:
> >>
> >> + pahole -J .tmp_vmlinux.btf
> >>
> >> is triggering these.
> >>
> >> Shall I send a v4 that adds a Kconfig dependency on !DEBUG_INFO_BTF?
> >> Does pahole have a bug tracker?
>
> pahole could have issues for dwarf5 since as far as I know, people just
> use dwarf2/dwarf4 with config functions in the kernel.
>
> Where is the link of the patch to add CONFIG_DEBUG_INFO_DWARF5 to linux?

Latest is v4: https://lore.kernel.org/lkml/20210113003235.716547-1-ndesaulniers@google.com/

> I think you can add CONFIG_DEBUG_INFO_DWARF5 to kernel with dependency
> of !CONFIG_DEBUG_INFO_BTF. At the same time, people can debug pahole
> issues. Once it is resolved, !CONFIG_DEBUG_INFO_BTF dependency can be
> removed with proper pahole version change in kernel.

SGTM, will send a v5 tomorrow in case there's more feedback.

>
> >
> > FWIW, my distro packages pahole v1.17; rebuilt with ToT v1.19 from
> > source and also observe the issue.
> >
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnZW03GaEbSC0Hpg1wb-mniAbT2gBeCwB66%2BRYAdSr%3D7Q%40mail.gmail.com.
