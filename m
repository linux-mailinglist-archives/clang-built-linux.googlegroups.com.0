Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBKXESCAQMGQEP5FHPGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 21134316FF9
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 20:21:15 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id l197sf3571675ybf.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 11:21:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612984874; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jt7rj6SmZ5EnxhacxwzH2fZlnuCY3/hERvEDawKFlQv/IlcmnSMfEhFjFmWTmvjSNU
         /6x1mCWG/7er+y5MkdgkTdU8BRTwvEm1bprwwYidjFjjprIiXdygxKJ6VTEkU+JX2Xxc
         Vx05cDv85xlaTHAJyR+F62VtNuBqzSmT836qvhmlarIRscMo0TAXhwuSAr2Lm3CiyuYY
         yyGO99K46GlRAztYpvht6P4Csxxz0IpTHRci+PhC6pDGsAziGOMJhPnq4ZoQBVGwrQWe
         bz2IRzyZk3FPNhHCJX6K7SqAMMPTcHqlzBq33ATig7mT6eIoEIotg/QTlIWUNJJlBMhI
         jE6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=hIJK3oizxVYnx/cA8VY27azJ8HOGm83NJjU9rOeRGHo=;
        b=faeO60N2ChkaJxFrwDk4UX/70B6/43ZHqxqGRiePK7mswSDac6li5AYWB61t9Jcl8y
         AC4ynO1fJdn/4JoYWOiFaookr4TFGdmWG7VA8e50s9m2dLiIPFYPLkEj1rTv/t/SpxHq
         lkjSk+yp1+Pmd5QcpWl3kXbldllWrMmyuKeEr9Drscoi+UQv8Onl1H+jwDHv5od1CY5c
         z69Zke2zBO156HcFNB0oMpmUULhfRvcTdyRdhpzAgBsSxnW+OOA0EQNjskgJrdFcOPJc
         OK2fzyPLGvn2ctXbUX1wEybG2gsIdUmiqwR0ePVEmLQvcvWcBC8+PiZzFb4FsAxzgQ41
         HPaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YG1Myj5b;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hIJK3oizxVYnx/cA8VY27azJ8HOGm83NJjU9rOeRGHo=;
        b=qKaXrVMm96KP5Ci+0DYJRJbIdrbguGktBIdyjlyA1AP0HfDXheurrTap/LK5vHTkU4
         4uUzvbd+eOPPJYBQlAkfBP0c7AhWqeyCc/T33U6Z7b1GdLFB1gQIkGAd+y318asl5sLB
         cX2HMG+bMcQB2sG0ktzurBRcSGCGBTWxTXwhe+46UKFBWFYMKHv86fCXAkB4ASn9roth
         EZKblbAKmnjFfYs7aflvrVUHt7XBLKrPp0p0bBziFUmwDiGMsawumWWexbVsmtfbfdqA
         Tg36zJ+pJ83X4zFPQ6O7sdDNLFdotzci5NKjC77+ureTNd1BhE0kEJ3xqmBWrNvBW6ZR
         46bg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hIJK3oizxVYnx/cA8VY27azJ8HOGm83NJjU9rOeRGHo=;
        b=I9hafmY9bZpUBi3j+oWzPMQIo92xZN6FRUON1SkFpjLYjN2W9BIo1WUzSKaCS9qqc3
         C3n57Mu15quy8LZRHtv3dvXZs4EZrOFoVW1oE3HMml//VC0HIz463sW0mkaKRnBi8RsL
         lQnj7Ozee4aYiXtqct71kcdDKj+bPSfwuWF5kFeNhL9TF9hD2qiFBR0ULn28cSzapuNF
         Ioi1Jk7sF9ATMCu5HuOcpoktnPGQYuVqiok3qabTscZr1IIvrKpBbIjqdjfRDgFZsMjs
         M+IGfbIVYMXYrexGRLZJ+zX+oShtDyzCwmWmSFF/HU8Qt8Uj3OTT3Up8FubUVdpickGL
         /zqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hIJK3oizxVYnx/cA8VY27azJ8HOGm83NJjU9rOeRGHo=;
        b=Lza1ZZNjdOwvOCRp8EysCk+WsGTvZVmwaYQIE54ZOFMLiaVpsniDb+XH9Ft3bD862k
         QAfTybKCHrep6lOujd+gUQX+06tkUUEJEa4H6L+75lrqS79BX3/2KWllkVQqf8uCp1B8
         mgAIBLJus+XQa0vJE8mAYYQ5Q0dd//cvrJu7f24bMSaiytsBO7Pv5nhbJQZN0JPWI2d/
         +XUyXH6x0rLHbv9gx/9EqD0jvrvR1QMU8cqfemwYYQz/Dx9kMWuAZTIfo/S9nVFTSa6a
         7aHX+nNV4DI/Mwazw7gNL6nJ1RdjfgdzfaJZLrkVPdXB3xKTYw8a28e4zjLaUBJ2KGTh
         sweQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307kL2s0mWCJ48zfsfzuBkXL578ogPhsrWbOgsvAGSRiI2Fahvi
	5GnbhO1J0ChRANYduwWaoAY=
X-Google-Smtp-Source: ABdhPJyE05VOopG+Vbxot22Dimwh9h3UqY9Uf4p1ZWbo76NmupCguCnxh5+QYbFUvLbqT6DkVOPHeg==
X-Received: by 2002:a25:6994:: with SMTP id e142mr7332695ybc.388.1612984874203;
        Wed, 10 Feb 2021 11:21:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3006:: with SMTP id w6ls1446518ybw.4.gmail; Wed, 10 Feb
 2021 11:21:13 -0800 (PST)
X-Received: by 2002:a25:ca42:: with SMTP id a63mr6312936ybg.318.1612984873797;
        Wed, 10 Feb 2021 11:21:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612984873; cv=none;
        d=google.com; s=arc-20160816;
        b=KFW0Z0t+Xeca8B6FQfueWzedmq19rPTzKIVM6k1syUBB1hAv8jYZM2GYgjFm8MbnNr
         YxVCWx+vxS4TlMUsMBeVPvTnJGSkd8LLl83wnqq6zLtR0ktVLXv8hDgf82rqE55sR1g+
         Ds800uxSR2TwIS5EX82MuSeyRLjaGoYmX47BhNnUvi5vBqGecFhIxdkkRMc/RGL/PRXs
         /NmXQV0vfGY0QBGnclAyeSXujf0trll0aQeHFpnekrOHf0GC9lc1iOXtxSKTj/HtkFCK
         0HpaFh48+aNdjuPGHs3dY9PdxbwmWWkbgoZabQ3EcMgBCEV6FPbbLUkzWiXpgQQ4RHfa
         764g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wo8F814c8Q1U970iuYblzGo07tu6wvImEWEKpDE13NA=;
        b=K8qm2ot8qFfG1Gnm/99JvBeIT77o9SHSgMN1WZwP0qMPUfWSqoQEemC4YZgMiVe/Fg
         fcnxx85v+CUkzMpjUQBggh8zCsmENrHO1bfWG0GBkfQK59khabCHRe+CQZAnePVG6uj+
         HjkRVjv7Oy2flDqBkpchzRIqpgIg7vDQvUQiVVNNfiv/hVe95LkwKKfhYiP7TW9/mX7I
         bnBRq1y3vz7/cJ0oHR59FrzC1ioVwlfE8BZ0DZAg8XqpGju1b4R4/EX9b63ZOeiOyQ2x
         kL0y7NHSdjUmwFKkDb7e5xyQpgDAl4P+vCpMvw2bTmrTN38NzXxTYMKpBUZbm1j+FGOO
         L0zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YG1Myj5b;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com. [2607:f8b0:4864:20::136])
        by gmr-mx.google.com with ESMTPS id b16si224281ybq.0.2021.02.10.11.21.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 11:21:13 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) client-ip=2607:f8b0:4864:20::136;
Received: by mail-il1-x136.google.com with SMTP id y15so2895620ilj.11
        for <clang-built-linux@googlegroups.com>; Wed, 10 Feb 2021 11:21:13 -0800 (PST)
X-Received: by 2002:a92:c269:: with SMTP id h9mr2341665ild.239.1612984873509;
 Wed, 10 Feb 2021 11:21:13 -0800 (PST)
MIME-Version: 1.0
References: <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86> <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava> <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
 <YCMEucGZVPPQuxWw@krava> <CAEf4BzacQrkSMnmeO3sunOs7sfhX1ZoD_Hnk4-cFUK-TpLNqUA@mail.gmail.com>
 <YCPfEzp3ogCBTBaS@krava> <CAEf4BzbzquqsA5=_UqDukScuoGLfDhZiiXs_sgYBuNUvTBuV6w@mail.gmail.com>
 <YCQvuy7m1TJigtaa@krava>
In-Reply-To: <YCQvuy7m1TJigtaa@krava>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 10 Feb 2021 11:21:02 -0800
Message-ID: <CAEf4BzZPw_0GTvJzW4yWBijqcd9dNcye3XuG01ZRKQEb4mVSHQ@mail.gmail.com>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
To: Jiri Olsa <jolsa@redhat.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Veronika Kabatova <vkabatov@redhat.com>, Jiri Olsa <jolsa@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YG1Myj5b;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Feb 10, 2021 at 11:11 AM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Wed, Feb 10, 2021 at 10:20:20AM -0800, Andrii Nakryiko wrote:
> > On Wed, Feb 10, 2021 at 5:26 AM Jiri Olsa <jolsa@redhat.com> wrote:
> > >
> > > On Tue, Feb 09, 2021 at 02:00:29PM -0800, Andrii Nakryiko wrote:
> > >
> > > SNIP
> > >
> > > > > > > I'm still trying to build the kernel.. however ;-)
> > > > > > >
> > > > > > > patch below adds the ftrace check only for static functions
> > > > > > > and lets the externa go through.. but as you said, in this
> > > > > > > case we'll need to figure out the 'notrace' and other checks
> > > > > > > ftrace is doing
> > > > > > >
> > > > > > > jirka
> > > > > > >
> > > > > > >
> > > > > > > ---
> > > > > > > diff --git a/btf_encoder.c b/btf_encoder.c
> > > > > > > index b124ec20a689..4d147406cfa5 100644
> > > > > > > --- a/btf_encoder.c
> > > > > > > +++ b/btf_encoder.c
> > > > > > > @@ -734,7 +734,7 @@ int cu__encode_btf(struct cu *cu, int verbose, bool force,
> > > > > > >                         continue;
> > > > > > >                 if (!has_arg_names(cu, &fn->proto))
> > > > > > >                         continue;
> > > > > > > -               if (functions_cnt) {
> > > > > > > +               if (!fn->external && functions_cnt) {
> > > > > >
> > > > > > I wouldn't trust DWARF, honestly. Wouldn't checking GLOBAL vs LOCAL
> > > > > > FUNC ELF symbol be more reliable?
> > > > >
> > > > > that'd mean extra bsearch on each processed function,
> > > > > on the ther hand, we'are already slow ;-) I'll check
> > > > > how big the slowdown would be
> > > > >
> > > >
> > > > We currently record addresses and do binary search. Now we need to
> > > > record address + size and still do binary search with a slightly
> > > > different semantics (find closest entry >= addr). Then just check that
> > > > it overlaps, taking into account the length of the function code. It
> > > > shouldn't result in a noticeable slowdown. Might be actually faster,
> > > > because we might avoid callback function call costs.
> > >
> > > I'm still not sure how to handle the external check for function via elf,
> >
> > I might be missing something, but don't all functions have
> > corresponding ELF symbols? And then symbol can have LOCAL or GLOBAL
> > type. LOCALs are supposed to be not visible outside respective CUs (so
> > correspond to static functions), while GLOBALs are extern-able funcs.
> > So if func's symbol is GLOBAL, it should be ok to assume it's
> > attachable (not inlined, at least).
>
> sure I know where the info is, I was just hesitating to add another bsearch
>
> anyway, I checked the BTF data before and after this change (the dwarf check above)
> and it looks like there are many global functions that are not attachable
>
> attaching diff of BTF functions below - before (.old) and after (.new) adding
> all external functions.. all added (+) functions are external and do not have
> ftrace address - I verified some of them in disassembly and they are not attachable
>
> I think we should check ftrace addresses also for global functions
>
> I'm of course assuming BTF should have only attachable functions


Oh, ok, I didn't realize so many functions are not attachable. Yeah,
let's not do anything special for GLOBALs, given we are fixing the
ftrace addr search anyway.

>
> jirka
>
>
> ---
> --- /tmp/pahole.test.PbD/funcs-vmlinux-x86-gcc-1.old    2021-02-10 19:51:44.727865204 +0100
> +++ /tmp/pahole.test.PbD/funcs-vmlinux-x86-gcc-1.new    2021-02-10 19:51:44.836865827 +0100
> @@ -1662,6 +1662,7 @@

[...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzZPw_0GTvJzW4yWBijqcd9dNcye3XuG01ZRKQEb4mVSHQ%40mail.gmail.com.
