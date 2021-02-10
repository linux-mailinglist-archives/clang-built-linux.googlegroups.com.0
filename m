Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB5GJSCAQMGQEQRO6PVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E63316E76
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 19:24:54 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id g3sf3346625ild.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 10:24:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612981493; cv=pass;
        d=google.com; s=arc-20160816;
        b=FH37rG8Gunfo58K0OKLy1e4bH8jI9IQ5QjQpQ84naehwAaz7BsyPqil9hymEkAxWK8
         6QvVZSdPRN4QcrurWyG5/d34Zxz6TQOmHlYPxekJmhVKjr2Pn84A3tZyJBbxdT5I+nFb
         T1E3XAiNRLrgat6Wkq3zhAi2uYulOWIXhZB49tfAN7IDXnQs0cWBcNHMY0FA2TIXGuyi
         A5rye5nzjKX3NZPau0ZOb2XIMpJ37l16sjtLgJp5lVRM2dVtZybdzKgnMLLALQorn0xx
         oa3UhNNRhxTI/uRpEDZrBeajLyi4YOw//uReyoYSdGWBULWf2emW3WJwG12OyKuw8PMr
         arGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=vWtvf87xpLTTTMZkRiK7wjeMqkUrioKZmvYjmYdvan8=;
        b=Qv52AxrIe1zDjBYZpN/H1ZEGV/x8DuBjCHURGTTsnKJkTiCu7QAa//sJA86ytXlLnQ
         EX/889xfQgds4KppukBs/KSrorJjVSLUKa+UIBO4FRhvOZvL5TbAneK4DuUzYMCWqvYz
         /Ob7EuFeX2ug8E9D+yIVof3NZ+KFDmQ/HRDEkzBRWAmDCgEDlA1XnR2OU7uUxfW+Xseu
         AadbBDRNCukXMffDNvD+zl9lCBYgtly47r3OMozv6uDORoJDUSqi3Nvl71+lcd4iu9QW
         cCaWbhARusBjrrjJPd29CdwkSAmT/c9cHPiPolRYi+6Bn6dye3GMiEKZyu8yooQwAMhd
         RKZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=axrnrRsM;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vWtvf87xpLTTTMZkRiK7wjeMqkUrioKZmvYjmYdvan8=;
        b=mNrnElvh8hdDP69TjHSLBRLcm0uv1qkZbeHBs0+VThXbOSSzBUC+P4O9YVRgJNWsD/
         s4tR2xam/QZKr6bC4zoKhlOPdaCruBkIPQLlq9eLAkpTRdSIy0UgS2DwWYmg0DTD+FSC
         FBM7gsLnMi9c7GC8rd0/6zU/NIGtLJ7QpZ0J6gsq5V4XY3mdmGVqYo53wNsxVD9wJaCX
         e6Q7raoM/o44Z8hSZRFtaUksTkj9LKxvrMZwfvRNjNIL2ELXVXl0YZaRQJNp9iXniqP8
         fIyu/s9themUQ+AyUJlwyyQfvxJ0h+kjtLTBsyUCofJnadUrClP1JjWE2NPfVxQ2Z/yM
         N3WA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vWtvf87xpLTTTMZkRiK7wjeMqkUrioKZmvYjmYdvan8=;
        b=L7en+DMZ6w5RtaJ+pOvRqA3WEkfR0DwZRi9TBGKePHdLWEOBQGeeVZz4+SHsYG2ORs
         tlfnYkPJd/GiF2SwwN050GP3e+r5MCXXNs4AxPevvPudLg3zxnS1nfiRykTjf64KMu8D
         6XG88jaX/vfuUdUHyzDRllZlW7IhgQEVzRvVNSmi8WGmuB2BFHYtG+Q7L23OkKJ6H3FE
         x+neoxQNc4gD2inqPNUA0vVhzYHXii15RFBmy9LkB3SrfmSwQb8pEKhK6CNVeHKJZJCB
         pLOfbmWXhSxrwBgwybXAJaI3UnuewniU2ya+mctLvd+ERJeaM4TLPyyxfuDtaGjTWPWm
         rgdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vWtvf87xpLTTTMZkRiK7wjeMqkUrioKZmvYjmYdvan8=;
        b=GgA4pmboj1pOxcOKnIZCDkq0aqoBiaBHKowHbzcNZDE3mvEVVG84gVB9cZrGGsFy1t
         UfP3iPIMR/Y4p7mrXZUTOCyikNA8M0Rv1/ofiOxfGsMG58pFe4E9ymHGANz3iGfIQhp9
         wCdzbnU1TiYwa5ME3tPvLU2EYAmxAuHLNw/6msxsdqFtDOTD1VvLXYTFr+rPhKIdeFLf
         8RXjG9IWqN3pYF+ezFSPgyx72xBYpY23ISWKW+zpQajcE6VtSzkiy85r9mWZu1HA5MTW
         pwuNjwGGyFkmpPdHOvljfwkVN1OM8CTbExFslSox3YZpyARwkYzbSejhPpeZwIEoNp/U
         41Yw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kz3Hc3pKnSgK5NMHlHS/OULU3ID1XVHSi7IavS5PIJ3QVV67I
	19T9pXLeE2InR5T+S21osgA=
X-Google-Smtp-Source: ABdhPJyFbQgtXABgAEW9OdjRekjodOWOQGKZisWWu1q3WdPibElfgIagt2DEtuxuqX7QYaDdcJRZ1Q==
X-Received: by 2002:a05:6e02:d42:: with SMTP id h2mr2345048ilj.204.1612981492995;
        Wed, 10 Feb 2021 10:24:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:5ac:: with SMTP id k12ls827717ils.7.gmail; Wed, 10
 Feb 2021 10:24:52 -0800 (PST)
X-Received: by 2002:a92:c60d:: with SMTP id p13mr2290709ilm.118.1612981492541;
        Wed, 10 Feb 2021 10:24:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612981492; cv=none;
        d=google.com; s=arc-20160816;
        b=CCF/2B5FQnStoxal3CGchAsFIUIE7mJRJKk4MXaq6CUJV76Xgf2QO3vZ8rdUnmP6On
         pqpUD44wO097ErPzMARV/bep1uKCCaoe2fsbDNdyT+8xWbJCFoAlYNq1QXaaOkQEq1oT
         Qmzg/1BLmtAMmIqQMCxeSeRXZh1Z7ivtizK7o5aVdNew8C6JoeuP7lFFJRT22CkewWDC
         RPMsD/G0lE/kw1CMztx0cmkDUIGBUr/911wtMjBd6f1jc7NN6022qeS2RZJbkY523XYU
         NlxZ6D3/r4nfXUomeycebf8tJNRxDZgtzJa0AVYn2HVBBnuVxSmy20PMgEumT1vx/QXU
         3Trw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oDJTdkdJJ7mBLZJmwXA5rlxyJMiuDx1sqSvJMOpL9yI=;
        b=h8Z816CgAhA4BEB//hKDulF4zbb1V+Fa3ICpB29DVQVmmTpWXmJdGZQ61khQaU3z1D
         d1S/ktplWxHxZC8KAse2kWxtthdAwfqaIXp2+pbPBCy4ky+Qy4FnWONjUsRlVwnlnG+d
         a1dekgU6BQVmii0w+oERgTUzekXkXnsI7MYpEe/4kzzVQYngc05uDDiIDvHF5RytIUrQ
         lft5/8CWR/vCgygaq6vFLYN2TsIt/nY4Z5aO7l9Up4ji15rP3kgZEQn1XC98GxD5Qg1d
         aBNrey4ub7t8jr/yrfBaEpzgi2IulhE4AKnURDDzlodogwq1x86tePXchQeYNHYKI8P4
         /iZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=axrnrRsM;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com. [2607:f8b0:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id v81si136310iod.4.2021.02.10.10.24.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 10:24:52 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12d as permitted sender) client-ip=2607:f8b0:4864:20::12d;
Received: by mail-il1-x12d.google.com with SMTP id p15so2747873ilq.8
        for <clang-built-linux@googlegroups.com>; Wed, 10 Feb 2021 10:24:52 -0800 (PST)
X-Received: by 2002:a05:6e02:4c9:: with SMTP id f9mr2221507ils.186.1612981492049;
 Wed, 10 Feb 2021 10:24:52 -0800 (PST)
MIME-Version: 1.0
References: <20210209052311.GA125918@ubuntu-m3-large-x86> <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86> <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava> <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
 <YCMEucGZVPPQuxWw@krava> <CAEf4BzacQrkSMnmeO3sunOs7sfhX1ZoD_Hnk4-cFUK-TpLNqUA@mail.gmail.com>
 <YCPfEzp3ogCBTBaS@krava> <CAEf4BzbzquqsA5=_UqDukScuoGLfDhZiiXs_sgYBuNUvTBuV6w@mail.gmail.com>
In-Reply-To: <CAEf4BzbzquqsA5=_UqDukScuoGLfDhZiiXs_sgYBuNUvTBuV6w@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 10 Feb 2021 19:24:47 +0100
Message-ID: <CA+icZUVPQxPkhGetNzZgbfkq+XNPpws8W_TD8A_V5ounJqdDqA@mail.gmail.com>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Jiri Olsa <jolsa@redhat.com>, Nathan Chancellor <nathan@kernel.org>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Veronika Kabatova <vkabatov@redhat.com>, Jiri Olsa <jolsa@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=axrnrRsM;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12d
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

On Wed, Feb 10, 2021 at 7:20 PM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
> On Wed, Feb 10, 2021 at 5:26 AM Jiri Olsa <jolsa@redhat.com> wrote:
> >
> > On Tue, Feb 09, 2021 at 02:00:29PM -0800, Andrii Nakryiko wrote:
> >
> > SNIP
> >
> > > > > > I'm still trying to build the kernel.. however ;-)
> > > > > >
> > > > > > patch below adds the ftrace check only for static functions
> > > > > > and lets the externa go through.. but as you said, in this
> > > > > > case we'll need to figure out the 'notrace' and other checks
> > > > > > ftrace is doing
> > > > > >
> > > > > > jirka
> > > > > >
> > > > > >
> > > > > > ---
> > > > > > diff --git a/btf_encoder.c b/btf_encoder.c
> > > > > > index b124ec20a689..4d147406cfa5 100644
> > > > > > --- a/btf_encoder.c
> > > > > > +++ b/btf_encoder.c
> > > > > > @@ -734,7 +734,7 @@ int cu__encode_btf(struct cu *cu, int verbose, bool force,
> > > > > >                         continue;
> > > > > >                 if (!has_arg_names(cu, &fn->proto))
> > > > > >                         continue;
> > > > > > -               if (functions_cnt) {
> > > > > > +               if (!fn->external && functions_cnt) {
> > > > >
> > > > > I wouldn't trust DWARF, honestly. Wouldn't checking GLOBAL vs LOCAL
> > > > > FUNC ELF symbol be more reliable?
> > > >
> > > > that'd mean extra bsearch on each processed function,
> > > > on the ther hand, we'are already slow ;-) I'll check
> > > > how big the slowdown would be
> > > >
> > >
> > > We currently record addresses and do binary search. Now we need to
> > > record address + size and still do binary search with a slightly
> > > different semantics (find closest entry >= addr). Then just check that
> > > it overlaps, taking into account the length of the function code. It
> > > shouldn't result in a noticeable slowdown. Might be actually faster,
> > > because we might avoid callback function call costs.
> >
> > I'm still not sure how to handle the external check for function via elf,
>
> I might be missing something, but don't all functions have
> corresponding ELF symbols? And then symbol can have LOCAL or GLOBAL
> type. LOCALs are supposed to be not visible outside respective CUs (so
> correspond to static functions), while GLOBALs are extern-able funcs.
> So if func's symbol is GLOBAL, it should be ok to assume it's
> attachable (not inlined, at least).
>
> > but below is change for checking that ftrace addrs are within elf functions
> >
> > seems to work in my tests, I'll run some more tests and send full patch
>
> It seems unnecessarily convoluted. I was thinking about something like
> this (the diff will totally be screwed up by gmail, and I haven't even
> compiled it):
>

Now, I know why vfs_truncate is so problematic.
Let's split it: "vfs + trunc + ate".
Eaten by Gmail :-).

- Sedat -


> diff --git a/btf_encoder.c b/btf_encoder.c
> index b124ec20a689..8162b238bd43 100644
> --- a/btf_encoder.c
> +++ b/btf_encoder.c
> @@ -236,6 +236,23 @@ get_kmod_addrs(struct btf_elf *btfe, __u64
> **paddrs, __u64 *pcount)
>         return 0;
>  }
>
> +struct func_seg { __u64 start; __u64 end; };
> +
> +static int func_exists(struct func_seg *segs, size_t len, __u64 addr)
> +{
> +       size_t l = 0, r = len - 1, m;
> +
> +       while (l < r) {
> +               m = l + (r - l + 1) / 2;
> +               if (segs[m].start <= addr)
> +                       l = m;
> +               else
> +                       r = m - 1;
> +       }
> +
> +       return segs[l].start <= addr && addr < segs[l].end;
> +}
> +
>  static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
>  {
>         __u64 *addrs, count, i;
> @@ -286,7 +303,7 @@ static int setup_functions(struct btf_elf *btfe,
> struct funcs_layout *fl)
>                 __u64 addr = kmod ? func->addr + func->sh_addr : func->addr;
>
>                 /* Make sure function is within ftrace addresses. */
> -               if (bsearch(&addr, addrs, count, sizeof(addrs[0]), addrs_cmp)) {
> +               if (func_exists(addrs, count, addr))
>                         /*
>                          * We iterate over sorted array, so we can easily skip
>                          * not valid item and move following valid field into
>
>
> So the idea is to use address segments and check whether there is a
> segment that overlaps with a given address by first binary searching
> for a segment with the largest starting address that is <= addr. And
> then just confirming that segment does overlap with the requested
> address.
>
> WDYT?
>
> >
> > jirka
> >
> >
> > ---
> > diff --git a/btf_encoder.c b/btf_encoder.c
> > index b124ec20a689..548a12847f99 100644
> > --- a/btf_encoder.c
> > +++ b/btf_encoder.c
> > @@ -36,6 +36,7 @@ struct funcs_layout {
> >  struct elf_function {
> >         const char      *name;
> >         unsigned long    addr;
> > +       unsigned long    end;
> >         unsigned long    sh_addr;
> >         bool             generated;
> >  };
> > @@ -44,7 +45,7 @@ static struct elf_function *functions;
> >  static int functions_alloc;
> >  static int functions_cnt;
> >
> > -static int functions_cmp(const void *_a, const void *_b)
> > +static int functions_cmp_name(const void *_a, const void *_b)
> >  {
> >         const struct elf_function *a = _a;
> >         const struct elf_function *b = _b;
> > @@ -52,6 +53,16 @@ static int functions_cmp(const void *_a, const void *_b)
> >         return strcmp(a->name, b->name);
> >  }
> >
> > +static int functions_cmp_addr(const void *_a, const void *_b)
> > +{
> > +       const struct elf_function *a = _a;
> > +       const struct elf_function *b = _b;
> > +
> > +       if (a->addr == b->addr)
> > +               return 0;
> > +       return a->addr < b->addr ? -1 : 1;
> > +}
> > +
> >  static void delete_functions(void)
> >  {
> >         free(functions);
> > @@ -98,6 +109,7 @@ static int collect_function(struct btf_elf *btfe, GElf_Sym *sym,
> >
> >         functions[functions_cnt].name = name;
> >         functions[functions_cnt].addr = elf_sym__value(sym);
> > +       functions[functions_cnt].end = (__u64) -1;
> >         functions[functions_cnt].sh_addr = sh.sh_addr;
> >         functions[functions_cnt].generated = false;
> >         functions_cnt++;
> > @@ -236,9 +248,25 @@ get_kmod_addrs(struct btf_elf *btfe, __u64 **paddrs, __u64 *pcount)
> >         return 0;
> >  }
> >
> > +static bool is_addr_in_func(__u64 addr, struct elf_function *func, bool kmod)
> > +{
> > +       /*
> > +        * For vmlinux image both addrs[x] and functions[x]::addr
> > +        * values are final address and are comparable.
> > +        *
> > +        * For kernel module addrs[x] is final address, but
> > +        * functions[x]::addr is relative address within section
> > +        * and needs to be relocated by adding sh_addr.
> > +        */
> > +       __u64 start = kmod ? func->addr + func->sh_addr : func->addr;
> > +       __u64 end = kmod ? func->end+ func->sh_addr : func->end;
> > +
> > +       return start <= addr && addr < end;
> > +}
> > +
> >  static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
> >  {
> > -       __u64 *addrs, count, i;
> > +       __u64 *addrs, count, i_func, i_addr;
> >         int functions_valid = 0;
> >         bool kmod = false;
> >
> > @@ -266,43 +294,62 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
> >                 return 0;
> >         }
> >
> > -       qsort(addrs, count, sizeof(addrs[0]), addrs_cmp);
> > -       qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp);
> > -
> >         /*
> > -        * Let's got through all collected functions and filter
> > -        * out those that are not in ftrace.
> > +        * Sort both functions and addrs so we can iterate
> > +        * both of them simultaneously and found matching
> > +        * func/addr pairs.
> >          */
> > -       for (i = 0; i < functions_cnt; i++) {
> > -               struct elf_function *func = &functions[i];
> > -               /*
> > -                * For vmlinux image both addrs[x] and functions[x]::addr
> > -                * values are final address and are comparable.
> > -                *
> > -                * For kernel module addrs[x] is final address, but
> > -                * functions[x]::addr is relative address within section
> > -                * and needs to be relocated by adding sh_addr.
> > -                */
> > -               __u64 addr = kmod ? func->addr + func->sh_addr : func->addr;
> > +       qsort(addrs, count, sizeof(addrs[0]), addrs_cmp);
> > +       qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_addr);
> > +
> > +       for (i_func = 0, i_addr = 0; i_func < functions_cnt; i_func++) {
> > +               struct elf_function *func = &functions[i_func];
> > +
> > +               if (i_func + 1 < functions_cnt)
> > +                       func->end = functions[i_func + 1].addr;
> > +
> > +               for (; i_addr < count; i_addr++) {
> > +                       __u64 addr = addrs[i_addr];
> > +
> > +                       /* Functions are  ahead, catch up with addrs. */
> > +                       if (addr < func->addr)
> > +                               continue;
> > +
> > +                       /* Addr is within function - mark function as valid. */
> > +                       if (is_addr_in_func(addr, func, kmod)) {
> > +                               /*
> > +                                * We iterate over sorted array, so we can easily skip
> > +                                * not valid item and move following valid field into
> > +                                * its place, and still keep the 'new' array sorted.
> > +                                */
> > +                               if (i_func != functions_valid)
> > +                                       functions[functions_valid] = functions[i_func];
> > +                               functions_valid++;
> > +                               i_addr++;
> > +                       }
> >
> > -               /* Make sure function is within ftrace addresses. */
> > -               if (bsearch(&addr, addrs, count, sizeof(addrs[0]), addrs_cmp)) {
> >                         /*
> > -                        * We iterate over sorted array, so we can easily skip
> > -                        * not valid item and move following valid field into
> > -                        * its place, and still keep the 'new' array sorted.
> > +                        * Addrs are ahead, catch up with functions, or we just
> > +                        * found valid function and want to move to another.
> >                          */
> > -                       if (i != functions_valid)
> > -                               functions[functions_valid] = functions[i];
> > -                       functions_valid++;
> > +                       break;
> >                 }
> >         }
> >
> > +       if (btf_elf__verbose) {
> > +               printf("Found %d functions out of %d symbols and %llu ftrace addresses.\n",
> > +                       functions_valid, functions_cnt, count);
> > +       }
> > +
> >         functions_cnt = functions_valid;
> >         free(addrs);
> >
> > -       if (btf_elf__verbose)
> > -               printf("Found %d functions!\n", functions_cnt);
> > +       /*
> > +        * And finaly sort 'valid' functions by name,
> > +        * so find_function can be used.
> > +        */
> > +       qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_name);
> > +
> >         return 0;
> >  }
> >
> > @@ -312,7 +359,7 @@ static struct elf_function *find_function(const struct btf_elf *btfe,
> >         struct elf_function key = { .name = name };
> >
> >         return bsearch(&key, functions, functions_cnt, sizeof(functions[0]),
> > -                      functions_cmp);
> > +                      functions_cmp_name);
> >  }
> >
> >  static bool btf_name_char_ok(char c, bool first)
> >
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzbzquqsA5%3D_UqDukScuoGLfDhZiiXs_sgYBuNUvTBuV6w%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVPQxPkhGetNzZgbfkq%2BXNPpws8W_TD8A_V5ounJqdDqA%40mail.gmail.com.
