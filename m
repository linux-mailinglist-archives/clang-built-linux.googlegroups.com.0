Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBLGORCAQMGQEOQVQJDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C49D314877
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 07:09:49 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id u66sf14948504qkd.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 22:09:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612850988; cv=pass;
        d=google.com; s=arc-20160816;
        b=NL93rWgv8fSzlBs2hV/gCB+gdyWNUmox4KQcQOQJbE/eUVV/Aq9AFY+2uABBqwLuMn
         yBDJglLtazzn9/p7eFj0CUHJ1yunsC8XPdO1wgfTlJPz7gylhwOkOay6mMDnPlwkVayC
         bdl6Z12zO9KiSEWXiESp4omF9SoYse4R6Z38TdcnMVFsoaxdpHOgV4xlTLwtBQf8uRn7
         YY3vhu4DJo7Ir+i4ujnUWb8Qx9iZBeELnjvTsbKR/WE3sO/S4sWbIB9s2BB0r1xZXlL4
         vrcBawbE+4pybAeLU2Mup0uWg42vqCAEDECcHEVYpWO+tVy5tA+EVAhBE6w8zFwsgpfj
         XQcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Gf7naNdERlR8FgfCIsbZ6HiP+jT/il/e4f4svwruZRw=;
        b=L0SkihgXBRR0M0pl92dHNTuSYNBB4KWyiw2v2O3MrF0GrKYcjH1w+fg8CR5LzxXVTA
         6hkrwrorup6ua81908SMYBNNH7RumHig3Z7x7QBk11XATmDGY02d1qk7j7/iY1rhMPK1
         kZXalQjQ6qawwcrDDOfEHWa5qUXnutl1wZyBZ8125Y8Ljst+DMPLAtfJmut/cozK0l3/
         120Ans2WPfR0VYWpRlUrmOTtMp/L0eQAd5k1dtcyB40oXDeSuMdxoL78DmE/7sOHc20w
         9teORMwrFZzme1CvN7ZkdUG2a0uDCevZer9RX3wn9g0/0kOWo0W510QsqK0W9I1LKMyG
         KKqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EQWHBrZl;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gf7naNdERlR8FgfCIsbZ6HiP+jT/il/e4f4svwruZRw=;
        b=VuRxcQ2hkQg+GiE7tUAfDpYoxSnYD452SW0zmxpAHhES4o69ZS7wIaaUDEt09lRnQK
         BkTw2/uwyUsjOv8ZU63OuYFf3kvJc4TNJ8C01kYA8G/TNcXZMXB2Md2oJCMia82bxFcJ
         tg2BDme8RS9Q8Qzbk1EovwAgThijr8RKxLKTWPOnv1ruKRZafWA1tBZ0sYjOc8hiEi/8
         TkjDfd5vTgZdM9qy24uYLBVgYjPGCcfiuq66soctcdgx1YyatqToSlD9uRiunx8bij7H
         4GDCknfnQ0k+ySTEQwjwR8JxkkhF+lQxrSBfOW2QVwDa5029NUCzml+nCP7xKoCugIbz
         Q/aA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gf7naNdERlR8FgfCIsbZ6HiP+jT/il/e4f4svwruZRw=;
        b=lC9gPboPVJQWypOdNemahTRZzlbawyUyovpxhxJNPq6ZOaK89/+LUp3c3jnBqhVVK2
         c+hxPY4A6rGEjyam7aCs9zkdHMfFknhoWi+lQ/oTcnpbe6gLaNQzhE44ANe99kyTC1v8
         eAG/kFeJlLaS+hO+H4Er3kFFMMN0GU2xUnq2kmp+nom9Ld5whUCMBcc8oyCCoNaXhgTh
         zTRIr6ZKYwBoWYf6e8VQieF3gxAVE3ck9pgPMYp2TuFytZCxqlpYzT1Hvp4tsLzJ4V5j
         NuDvIDEk0fOMQNM9+I+14L6N0jjxqugv2wQ73oNM9oD3meZKysZMl+brltP7dGumfjFC
         LA2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gf7naNdERlR8FgfCIsbZ6HiP+jT/il/e4f4svwruZRw=;
        b=uPZrNZ3NR3ZErK75IMZNQDLIcv8xOr+t1sFyY36qT2SqwIMEjHGmjdQbqMinrU8nqu
         hw2h4UOJpvAC1fsJC3HBoIQJLTDh3lGp6nhXRugf36L6hQwCZaE8QMILG1anQcgZ/9J3
         v/3kl1GfwjNNg6N3cJIHSX354eEGbzoUkJogP+pxbXEBsoPP9s3eUNekgbQ3+6ePNdxX
         u/UQYbaY0qbvm+P1blCYKRB4SYBEAAjYB/ud0H5UEQnZGp40vz+SzxEnABQ1x46aYoH4
         nmi9G/TTJF4kUb3brkRJEjKua3W0ZhR6y0FSKvDQH6g73uU7EC9isfeAhIUeq8+cXXvn
         xYvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qWPtJtrtsjIR38v78Dd3GaaSID4UTVqNeZW+qJemOXbSPm2zH
	PCgA3tfskcEqNoN5r5CaSww=
X-Google-Smtp-Source: ABdhPJypA6yHDUZfr/siY1H2CeAaqDR9Bm8dOKAvG1eyJ0OX2KtBzzH9Cz09ThKTLIs1ROdPxdilzA==
X-Received: by 2002:a05:622a:183:: with SMTP id s3mr18838656qtw.223.1612850988184;
        Mon, 08 Feb 2021 22:09:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9d01:: with SMTP id g1ls3711174qke.6.gmail; Mon, 08 Feb
 2021 22:09:47 -0800 (PST)
X-Received: by 2002:a05:620a:1507:: with SMTP id i7mr4628416qkk.55.1612850987844;
        Mon, 08 Feb 2021 22:09:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612850987; cv=none;
        d=google.com; s=arc-20160816;
        b=hgv5UZO3zetTvntMK2jXpSZnR48SbU569adT69HUvn79PTDyVO2XGYP54gZkNP5y7k
         qujBvHckbCTJPmrglSvvKdXSKN1E8ulZPI5MnbXqrmqbCxlC3CVUF+qeaQmQ87yRfdmb
         wg91Omvui3XNzjTegZh5q8Zo5VsQOFX1VVAbsmmL3UkrFEyNDaL/a2o4IUiFteMWGFS3
         6dOk0DypZZw0fgxiRQawdyhLqpgeoPhythLepVMHDYAKRf5ZCrRoQvhy86kSOt+R1NaY
         KbovK3eO9FFaG3HEmJnVkr2JUbEBZ7+aMCMU9zRfTpd9qVeLurA5zdXzf5ILp3nSnzZA
         ZIWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MTPoQ0Q6XAkl3H6eGQ5w2fvWx5OkrV+GZHc8bRprjjs=;
        b=MUp0LFfqp0/YpbZvNp6HZecWJ1spDoLMNQFxE03pnTSYlOlFc/1wEC5NrHwGskIzIG
         Ad4ckfrr4TzvoglZFaBg6PixYjUy8dXrMys272NQQKUDBlu34vvZSszA0mvSCkUR9/By
         AMU/S9OqIEYfEXbe5wSfYsG5k+LH7Ge7xe2YX+sp6txbp7a6TGQJZcC4B+qVwEqhpGOS
         DRl0Atfqd7hPKJPYYxo6qx0WqtB2bBTjHEU45u7DzHdDmksviKubZJmcYKerUyPvPCgW
         czybRTyqTFq29SnyWQ/ASBRRFp3HPvePBZuc7iyd5Upn13DNh/Jh3kZqomlGyOWfDenk
         344A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EQWHBrZl;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com. [2607:f8b0:4864:20::b2c])
        by gmr-mx.google.com with ESMTPS id l139si55727qke.1.2021.02.08.22.09.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Feb 2021 22:09:47 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2c as permitted sender) client-ip=2607:f8b0:4864:20::b2c;
Received: by mail-yb1-xb2c.google.com with SMTP id w204so17104346ybg.2
        for <clang-built-linux@googlegroups.com>; Mon, 08 Feb 2021 22:09:47 -0800 (PST)
X-Received: by 2002:a25:f40e:: with SMTP id q14mr30484178ybd.230.1612850987521;
 Mon, 08 Feb 2021 22:09:47 -0800 (PST)
MIME-Version: 1.0
References: <20210209034416.GA1669105@ubuntu-m3-large-x86> <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
 <20210209052311.GA125918@ubuntu-m3-large-x86>
In-Reply-To: <20210209052311.GA125918@ubuntu-m3-large-x86>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 8 Feb 2021 22:09:36 -0800
Message-ID: <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
To: Nathan Chancellor <nathan@kernel.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Veronika Kabatova <vkabatov@redhat.com>, Jiri Olsa <jolsa@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EQWHBrZl;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Feb 8, 2021 at 9:23 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Mon, Feb 08, 2021 at 08:45:43PM -0800, Andrii Nakryiko wrote:
> > On Mon, Feb 8, 2021 at 7:44 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > >
> > > Hi all,
> > >
> > > Recently, an issue with CONFIG_DEBUG_INFO_BTF was reported for arm64:
> > > https://groups.google.com/g/clang-built-linux/c/de_mNh23FOc/m/E7cu5BwbBAAJ
> > >
> > > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > >                       LLVM=1 O=build/aarch64 defconfig
> > >
> > > $ scripts/config \
> > >     --file build/aarch64/.config \
> > >     -e BPF_SYSCALL \
> > >     -e DEBUG_INFO_BTF \
> > >     -e FTRACE \
> > >     -e FUNCTION_TRACER
> > >
> > > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > >                       LLVM=1 O=build/aarch64 olddefconfig all
> > > ...
> > > FAILED unresolved symbol vfs_truncate
> > > ...
> > >
> > > My bisect landed on commit 6e22ab9da793 ("bpf: Add d_path helper")
> > > although that seems obvious given that is what introduced
> > > BTF_ID(func, vfs_truncate).
> > >
> > > I am using the latest pahole v1.20 and LLVM is at
> > > https://github.com/llvm/llvm-project/commit/14da287e18846ea86e45b421dc47f78ecc5aa7cb
> > > although I can reproduce back to LLVM 10.0.1, which is the earliest
> > > version that the kernel supports. I am very unfamiliar with BPF so I
> > > have no idea what is going wrong here. Is this a known issue?
> > >
> >
> > I'll skip the reproduction games this time and will just request the
> > vmlinux image. Please upload somewhere so that we can look at DWARF
> > and see what's going on. Thanks.
> >
>
> Sure thing, let me know if this works. I uploaded in two places to make
> it easier to grab:
>
> zstd compressed:
> https://github.com/nathanchance/bug-files/blob/3b2873751e29311e084ae2c71604a1963f5e1a48/btf-aarch64/vmlinux.zst
>

Thanks. I clearly see at least one instance of seemingly well-formed
vfs_truncate DWARF declaration. Also there is a proper ELF symbol for
it. Which means it should have been generated in BTF, but it doesn't
appear to be, so it does seem like a pahole bug. I (or someone else
before me) will continue tomorrow.

$ llvm-dwarfdump vmlinux
...

0x00052e6f:   DW_TAG_subprogram
                DW_AT_name      ("vfs_truncate")
                DW_AT_decl_file
("/home/nathan/cbl/src/linux/include/linux/fs.h")
                DW_AT_decl_line (2520)
                DW_AT_prototyped        (true)
                DW_AT_type      (0x000452cb "long int")
                DW_AT_declaration       (true)
                DW_AT_external  (true)

0x00052e7b:     DW_TAG_formal_parameter
                  DW_AT_type    (0x00045fc6 "const path*")

0x00052e80:     DW_TAG_formal_parameter
                  DW_AT_type    (0x00045213 "long long int")

...

$ llvm-readelf -s vmlinux | rg vfs_truncate
 15013: ffff800011c22418     4 OBJECT  LOCAL  DEFAULT    24
__BTF_ID__func__vfs_truncate__609
 22531: ffff80001189fe0d     0 NOTYPE  LOCAL  DEFAULT    17
__kstrtab_vfs_truncate
 22532: ffff8000118a985b     0 NOTYPE  LOCAL  DEFAULT    17
__kstrtabns_vfs_truncate
 22534: ffff800011873b7c     0 NOTYPE  LOCAL  DEFAULT     8
__ksymtab_vfs_truncate
176099: ffff80001031f430   360 FUNC    GLOBAL DEFAULT     2 vfs_truncate

$ bpftool btf dump file vmlinux | rg vfs_truncate
<nothing>

> uncompressed:
> https://1drv.ms/u/s!AsQNYeB-IEbqjQiUOspbEdXx49o7?e=ipA9Hv
>
> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzZV0-zx6YKUUKmecs%3DicnQNXJjTokdkSAoexm36za%2BwdA%40mail.gmail.com.
