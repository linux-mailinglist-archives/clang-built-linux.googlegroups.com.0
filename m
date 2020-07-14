Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB5X4WX4AKGQEJQDOAHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDC521ED1A
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 11:44:23 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id 64sf7933456uaz.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 02:44:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594719862; cv=pass;
        d=google.com; s=arc-20160816;
        b=mFjlhRhkajTiaMPbkXiVP+s1wHbKAq/GRjm4jKD09gpxAopXMOLVZPGq+Bk/aiUrDY
         dKV9sGivxl7nwtA+Vfh6BZY8ILa/tkzyk+Anr1bqT5FNSKCw4BZB+tZNRYx2rXtTuMOc
         LC+o5cM6j0xJlNsbXX18eUfgaD06tpfLm4wbJxm9WmLQYaryl59Q3iJpMYjHOmeoWnd5
         thgAClSNbyuatdcuv24ZLHZWnvbL5wyoEdmh2f7ak12iVkjJLR8AkQX7LE7MSQwIUA7p
         IZQfivaGcy5R21JWKcCb56SbMDjw3G06m/CSNrQAw3PRw3hU9FTf0lPPd0j8wnWj+N5+
         soZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=bD/PqN1QFOa3DDrvgVf0LDQcIoBRknSUr1oR6eA/0jE=;
        b=q9LO5oY1lwcCn+mcawDV1e1d0bQFEIfrqPdDJmy2cUv0Sp8fv1T8sXi1WRthtI+wNu
         nrV5A661mUTxmWetLkPc98oBiAt40wL1Twq2S/r1axUzPlLocgbLnMM8DyUwUEYO5RNy
         m4iMbclYYpveJb18clgu0I1CM5TEDK3FFRg5ElqFL6XnkAJjJsEeEo03p9FJTsfKJPNn
         mClOsnWWJN1ZF4sQxfY3DOZmCeH67x2+zyUl3jSxtIdOBq6brYwjOuPtFZsGjX229pWz
         n0DGbnBCZWUBX0fi8Wx1/8/lLkpIcZT7sqhQzw0ysm6lp3lZJ4/Lk1wT+feMd5IJWw1I
         96KA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jM+qX4Ti;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bD/PqN1QFOa3DDrvgVf0LDQcIoBRknSUr1oR6eA/0jE=;
        b=suBHXFn4NlmyH2cTG6D+zGtYHfhQs/6StLPvuky2medQuLX9qYnksqbJmiqcHCmn4q
         ljvprccgSlcsa2XZtZg/13MQj+3NKHGMR1rQtk4mwT+bHL+pZ/BWpiiuUycMEOtAhohV
         bMYNbs3ghoVHlScXn0OuigKaEG7UpsZlPjVIrPTjpAuawoxHAqcx8b+/hwVMZxCsGbkC
         rZQ1jowC9jTroz9A0NvpQPlI3RwwKMwVQ5Lcs09j4XkFspLPrF1XIHqyyOvqAMbBTZpN
         n4LFVx55iCIu1HtyxALpM+66E3Do8PEuOZqA8XThMFP2lwjHB+riQ5HFDnig0Bh1aUD0
         03MA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bD/PqN1QFOa3DDrvgVf0LDQcIoBRknSUr1oR6eA/0jE=;
        b=H7nPa4g7Bt8AcH2pwxltFxaxgsbpuvUgwL5+SgWgx36GRycx1l4O6s7HI8A+JAuVbt
         lYR2H5yM/dNqI1Ow3CDUU1WG7n7aDA8pVjHjXjxSbhs34Z50ggehBVqS3km8rag/yQAu
         /W8HwK4Xfp08nI0xxo+AL+/qXNCFSF2KYeBUGe1r9P93H6PrxEZdvc/60pZD9AJDKFNW
         Vl9XAGw4pDZqcbvsQZD0vaSD4jCcFsci48vWpW0LCZHW5F65OaIcF9VD8+H6jXwtcvmp
         jp0x8mcKwbb/TDC/MiDpMaywLquunKS2MB7ZSbR1O0BNHCkCv2oWFs/oplTjphf7taFR
         f1Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bD/PqN1QFOa3DDrvgVf0LDQcIoBRknSUr1oR6eA/0jE=;
        b=CKHx2tMtp5aiKzYMFYwBgTWPhvEcqIsta9f2VuEi9Oczf5sc0H0Zeuq/z3swq0kswe
         L4pe4IY6C1g7T17ZxEToyKfUSPYoWwLd351oKgFt+33T7DCR5AubckaXW0MpSMHBIKNV
         a3Irz6TarOc6AZ3OHuV2kwcRztKCKv02VHkRzjFV5mLxmHYgcN0IcZaB/J36sKIDOHRe
         8F/6BthGxo0D3M8U9y40Bs/6bUQzLjMdPwxYUjlPkJXiVKmR8wdmsxBVgnkjxN4K2rHf
         5k7PQUcj5mfK9wokaD/FNDJ4N2EDKxICXFN+QwHA2IitcO59ZPoTh0LAoJdIGwYsYksf
         PEug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kKSIi8zsYlVjzRlzoUnTu0G1IzWDZoY/lzP4psCPll2vucRHS
	o3GjQgiuJwHDAjGV6biS/oE=
X-Google-Smtp-Source: ABdhPJx8eBmJ9ueBiDuQfoZh/tE7+87DTKFyFQ+NRfDTcGKGnMXmGAgwxFoD3R5vxz4p8dSfGyF9Iw==
X-Received: by 2002:a1f:185:: with SMTP id 127mr3076272vkb.102.1594719862655;
        Tue, 14 Jul 2020 02:44:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2549:: with SMTP id l9ls447938uan.7.gmail; Tue, 14 Jul
 2020 02:44:22 -0700 (PDT)
X-Received: by 2002:ab0:6449:: with SMTP id j9mr2653966uap.116.1594719862271;
        Tue, 14 Jul 2020 02:44:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594719862; cv=none;
        d=google.com; s=arc-20160816;
        b=ALMQS6ibJZ/QIB/+JdVgmftcGmYkzxgo6s3aRfOykBrUX5iF8nS3u0qXlEgF48/4UG
         XGb5fsWrdURVZhsZG7LU4xLXQMLw2HJMNJTmMybLTG9FWzVc0eM5q8r19QILurO9VDZR
         Rp51p9iDCrNMRVzB2zEv7B8muyrYQ3kzC/TGj3s5nifxeTZmhaGQwpiWwSpkpuXrckfn
         LL2hiATZHuM1ut2bT7ywJ3vVgpWjRf98Y1QNRoLDqzswXIymVYSYr0EyHZBi7g5wQyJe
         KXFjAQWnvhZFgCCdYRcHSrJ/UuXCBrvWKIDuCVYb6fmGdps1zdQuCP5TO7N1xgE4xfj1
         gLNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=Tgm0OYoDMREUwKgBzALPWRuGGwcOUHZ7yNd5VzH1jD8=;
        b=gTMYZ5GONoh2JIQ9ixPsEyOD5sEqCVCORa1Xy5PKbzQOEpmJVxTytgcni5oc0p30Ew
         rjFZI7R5ZFsJtz8cZSjLmVRLsh5dWFhIhRQZXhrgkDFrDZLLUSs+FdHYWMw/g+RSBvBw
         9dUqiHmc0D913R9o5BxO98d+lD1NGeKwU8mF5/poarPF/jeDK0/S+QdehGVhIbNZ5Y7b
         lks2xkcX5E/U++IZ2m9IagzF5UvA2kVPw9a23zKTQcNQUUElEsM17ZuXdztcQ+QG0q6e
         BYiCbhY8cCOHCOnCK+vd7FUWTFdbfbRXfPmoIbfxAAlDB++WQTmUaCGZJ26E3V+J/wDm
         eLAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jM+qX4Ti;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id y7si766170vko.5.2020.07.14.02.44.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 02:44:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id t4so13696399iln.1
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 02:44:22 -0700 (PDT)
X-Received: by 2002:a92:290a:: with SMTP id l10mr4174366ilg.204.1594719861754;
 Tue, 14 Jul 2020 02:44:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <671d8923-ed43-4600-2628-33ae7cb82ccb@molgen.mpg.de> <CA+icZUXPB_C1bjA13zi3OLFCpiZh+GsgHT0y6kumzVRavs4LkQ@mail.gmail.com>
 <20200712184041.GA1838@Ryzen-9-3900X.localdomain>
In-Reply-To: <20200712184041.GA1838@Ryzen-9-3900X.localdomain>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 11:44:10 +0200
Message-ID: <CA+icZUWyqb8jdzTAophvBKuX3e2NvG7vQPnMW+SRW5v0PmU7TA@mail.gmail.com>
Subject: Re: [PATCH 00/22] add support for Clang LTO
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, Sami Tolvanen <samitolvanen@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jM+qX4Ti;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144
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

On Sun, Jul 12, 2020 at 8:40 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Sun, Jul 12, 2020 at 10:59:17AM +0200, Sedat Dilek wrote:
> > On Sat, Jul 11, 2020 at 6:32 PM Paul Menzel <pmenzel@molgen.mpg.de> wro=
te:
> > >
> > > Dear Sami,
> > >
> > >
> > > Am 24.06.20 um 22:31 schrieb Sami Tolvanen:
> > > > This patch series adds support for building x86_64 and arm64 kernel=
s
> > > > with Clang's Link Time Optimization (LTO).
> > > >
> > > > In addition to performance, the primary motivation for LTO is to al=
low
> > > > Clang's Control-Flow Integrity (CFI) to be used in the kernel. Goog=
le's
> > > > Pixel devices have shipped with LTO+CFI kernels since 2018.
> > > >
> > > > Most of the patches are build system changes for handling LLVM bitc=
ode,
> > > > which Clang produces with LTO instead of ELF object files, postponi=
ng
> > > > ELF processing until a later stage, and ensuring initcall ordering.
> > > >
> > > > Note that first objtool patch in the series is already in linux-nex=
t,
> > > > but as it's needed with LTO, I'm including it also here to make tes=
ting
> > > > easier.
> > >
> > > [=E2=80=A6]
> > >
> > > Thank you very much for sending these changes.
> > >
> > > Do you have a branch, where your current work can be pulled from? You=
r
> > > branch on GitHub [1] seems 15 months old.
> > >
> >
> > Agreed it's easier to git-pull.
> > I have seen [1] - not sure if this is the latest version.
> > Alternatively, you can check patchwork LKML by searching for $submitter=
.
> > ( You can open patch 01/22 and download the whole patch-series by
> > following the link "series", see [3]. )
> >
> > - Sedat -
> >
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbu=
ild.git/log/?h=3Dlto
> > [2] https://lore.kernel.org/patchwork/project/lkml/list/?series=3D&subm=
itter=3D19676
> > [3] https://lore.kernel.org/patchwork/series/450026/mbox/
> >
>
> Sami tagged this series on his GitHub:
>
> https://github.com/samitolvanen/linux/releases/tag/lto-v1
>
> git pull https://github.com/samitolvanen/linux lto-v1
>
> Otherwise, he is updating the clang-cfi branch that includes both the
> LTO and CFI patchsets. You can pull that and just turn on
> CONFIG_LTO_CLANG.
>
> Lastly, for the future, I would recommend grabbing b4 to easily apply
> patches (specifically full series) from lore.kernel.org.
>
> https://git.kernel.org/pub/scm/utils/b4/b4.git/
> https://git.kernel.org/pub/scm/utils/b4/b4.git/tree/README.rst
>
> You could grab this series and apply it easily by either downloading the
> mbox file and following the instructions it gives for applying the mbox
> file:
>
> $ b4 am 20200624203200.78870-1-samitolvanen@google.com
>
> or I prefer piping so that I don't have to clean up later:
>
> $ b4 am -o - 20200624203200.78870-1-samitolvanen@google.com | git am
>

It is always a pleasure to read your replies and enrich my know-how
beyond Linux-kernel hacking :-).

Thanks for the tip with "b4" tool.
Might add this to our ClangBuiltLinux wiki "Command line tips and tricks"?

- Sedat -

[1] https://github.com/ClangBuiltLinux/linux/wiki/Command-line-tips-and-tri=
cks

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUWyqb8jdzTAophvBKuX3e2NvG7vQPnMW%2BSRW5v0PmU7TA%4=
0mail.gmail.com.
