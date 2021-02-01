Return-Path: <clang-built-linux+bncBCTZ5O62V4ORBI7W4GAAMGQEYPLKT5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC1C30B284
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 23:05:24 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id c1sf6484393ljj.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 14:05:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612217123; cv=pass;
        d=google.com; s=arc-20160816;
        b=CFn02GfifKmPgRkQSDLlbsyJgqFknK/nt+QnApYtUw/S/Qnz9cuEfT99t0bzf+fdgd
         f+xiyziJ8OwflMV+NRfwNPzs70aaAlLZSrKFzwVlvfxCI1QdFN3JHrMcu0zsEDBXNdaq
         7kC+3RuX8Ngy7E83WzZ5aCjrL0TMQylzyzHW03x47stSoHxbQNwgKwZby7mSG6jSCz9f
         eFnozaW0qJIEAk51NgSNMuqEz+oz4ZSzRwvE841Ov4wLSqmEuiyrbura3bO+9NgSFMDW
         D9nZw+dLh6AN2SzofoB8DUvvuqFN+s1giutDdWuv3MOAJfRM8mlWTBOZhlAcjLqOO2JN
         UldA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=kuU1OJ9c2rp6cKOPymTmhqu7oCOXoFAPaaIWxfoYbxg=;
        b=eCovhHL7ocLHNcLMHPbk/eNmbsoGS2TQo9w3jNfVwqOl/yaNzhYKRPLvy8N1SM4PoP
         2b4ZaelrHknthUSb/4zfjigchya4WZSv9bhmh9pJdJ2t0YnjFeVis/phcaGzZJU7zIzN
         7Xle38enR1TEgcaKwSq1+UI0hQE7tIR8Uf8pT34wEbwLuQ0/+tOpptTwzSNqsCdR/MTv
         hh9sQHTQHNSqV0NiLXZX1WDZPOo8kFfdJRWboaAFturUuW7+LAo9ugZTlLERzKo8yacc
         cSnqSURndOE+gWpvJ2WH1l+IFpooJI0L37LlXQsoipXDnysp9n6zSRuhJF+t3PkoKPXF
         70mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SgwYSbrv;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kuU1OJ9c2rp6cKOPymTmhqu7oCOXoFAPaaIWxfoYbxg=;
        b=pnm94+zoUdZTIP3lctofrKKLI1M+k60MtFzYD2Z4befYxvuUngEzwrXuu1RjS7lcuD
         k0MiQbFjvn8b0X+Dtp1GmvZRdQIDUM23R2vYuyp7/B8W6O/EbrUj4DSaj1USC2XBRC0L
         5qCwMchSiB/190jtP6Kk0rzQzmsnlPjsDVTeZ7x6nvisHTSOGRvJkT+LLzxgW3+1aAl3
         VxZnGqcGuXwV55RPbB4gMXepoos29uw8L0Ncql/GyiPua1hTfleIb21MhjeAbTu3vXKT
         QlSxS136TSGBv09ym8gHSbyCnWqe4iU1bEzWshqI66/C6cDdiToOEFG+foqrDSjSz0al
         E8Yg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kuU1OJ9c2rp6cKOPymTmhqu7oCOXoFAPaaIWxfoYbxg=;
        b=OQEoDdvDh4h0fDPy2Z69XPv+xfPFysgLyI3gvTno7SCKKCHWc0yMLccfjmrBVVTp6J
         iLuGwP+qQqA9wEL3Wg2qwm+lp3Tx+J3dmFgEEDU9R4bxsobnRUhSsw6wVoJvkdaDChsx
         JmYg27q7d0Y0cQrw29tXGuYMwtxb/I/GEnoFaZqn3uez22g6nRm91a9RMNYOpeVqraxq
         MVCT/x6kbdl+8VeE9zgvfYDYDBoHsjfNuQcx66b/KowhzB3QqDgxxSPvBjxwP1P20izs
         AdFbjot/mByyXbR02FQf4HX33eYx+mT89pvQDzUrOe+uAAv8fyJw44Bcy5YdD2pmXBY2
         X++Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kuU1OJ9c2rp6cKOPymTmhqu7oCOXoFAPaaIWxfoYbxg=;
        b=lbEkxEwjnYLNrOlEHQLTEy4PlvKchr2xM1RFS0Vq9v7cyqlimZ/0JCLeh1cb1uhEoc
         s9RzsekYe+n13PjSTCI2LoDcuFIMLMBk+S85WO2aVJ543gZC9goFdOjiO/Zm1xZU2gnQ
         eou1aLj3HlbNOFgaDR+1tQFaKTL6kMJLhjVV5vnO4NoWXD9UN18IJYhTnsPzdGgdLlIV
         pAwV01d3DDtRRI1Pby9rFv+pPDupqKfx7CqM8SLtu8rPMyfSw/oWysSPJWdovZ0iRJP7
         F1gWG91TMsgkgbAFAnqezs3pnp8W1mZBVRKx385C3IaV1Z1BrqLxsyfGILU32RPC4WSG
         4Klg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532RUZhI185c5frqS1hHn6mRjp1Ebr/KdId6xzfPM2A67TzscNTH
	aqc1e759EF3ADtyi0VGW+jY=
X-Google-Smtp-Source: ABdhPJzHqZ1nGnTW693egGJ5+yPtmwfUKQXAgAAgvW+/xc+LkRYI7VTjj7JbFdL67agFIlkJRwIsBQ==
X-Received: by 2002:a05:651c:2125:: with SMTP id a37mr11598124ljq.19.1612217123676;
        Mon, 01 Feb 2021 14:05:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4adc:: with SMTP id m28ls1698280lfp.0.gmail; Mon, 01 Feb
 2021 14:05:22 -0800 (PST)
X-Received: by 2002:a19:ee08:: with SMTP id g8mr9504873lfb.195.1612217122763;
        Mon, 01 Feb 2021 14:05:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612217122; cv=none;
        d=google.com; s=arc-20160816;
        b=sITaS/vorIBABgRQBsyQ7g3zcuCQZvdFDtoCuNUl1zdws1Tas4ubwv+MBZK+R8NyPa
         /gjpYzjHMaWSB1YwcifJwTMsgdoZZ7JJRRpz4rKCSVqe4nIbiVDVAwj8CQ/N5n4Gr2Ny
         33Bn+/MaZ79PlXkeJDOdXvAGpbtPzTgpK9fQp0bzlU69CLiQ03NJFknuifBNTjpTTO+f
         U9sG4r46N688XWyLV3ZljLaTq3bWsc1ArvDQFdbZ8XBWQoHE8g+FS/QvIuy9h0LwSBQj
         swxpco79OtNUI+egiEM0obrd88PwCmCUVZyQIwk5HHUH+KgIN6ISCJincTblBxtsO1qu
         aqaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lXrTNqZ1a2NxntCInW2qtCvN4u7gpYCSwOi9amzGB3k=;
        b=x+atbfNlY4Sfh/cIjj8kOlSmSEw1R/Ya1tgUy5A31fvRiBvb1cseQjn7QmRyucjerw
         nlkveYrRKf3facsdEq6zm+qr3EGFjscFK8JgwjCKwv1zW9Jq9wW2nrNwZuMONfevhsIG
         bfzD62oAyqQ/u7GTbwQawm3cmqA8lN7S8ohq1HVr0fEuSC5JPbFY1Q3GBMGB5/7+JxAV
         ECFxB7NImJDogImTnrN86rCOCeVRXa6LkUnwV52CZe/Z4kihLAOTSJGZiUMq/U3v1iAo
         T/ubcY0hTBzpVSMD9202RYK5p/6HkVhw4EKDxeIossDIKA4rSa3mqd9XsllSwiBLM4qZ
         QKyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SgwYSbrv;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com. [2a00:1450:4864:20::435])
        by gmr-mx.google.com with ESMTPS id 15si729868lfk.13.2021.02.01.14.05.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 14:05:22 -0800 (PST)
Received-SPF: pass (google.com: domain of viniciustinti@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) client-ip=2a00:1450:4864:20::435;
Received: by mail-wr1-x435.google.com with SMTP id g10so18301947wrx.1
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 14:05:22 -0800 (PST)
X-Received: by 2002:adf:f303:: with SMTP id i3mr20222409wro.60.1612217122143;
 Mon, 01 Feb 2021 14:05:22 -0800 (PST)
MIME-Version: 1.0
References: <AAB32610-D238-4137-96DE-33655AAAB545@dilger.ca>
 <20210201003125.90257-1-viniciustinti@gmail.com> <20210201124924.GA3284018@infradead.org>
 <CALD9WKxc0kMPCHSoikko+qYk2+ZLUy73+ryKGW9qMSpyzAobLA@mail.gmail.com>
 <YBg20AuSC3/9w2zz@mit.edu> <CALD9WKzO53AXQW-qQ82VZ41H5=cGdLTUiEoz3X6BmPkb6XaTag@mail.gmail.com>
 <YBhuHJgZ3QPqHheV@mit.edu> <CAKwvOd=ny2TeYV8SGZMD+aj8Yb6OSYGKAzSb-45r-HKk6WTUCQ@mail.gmail.com>
 <YBh0ywVzkUIR3fXg@mit.edu> <CAKwvOdkZRdBzzW19sVAs+pX-7wWwN6AWrxUkkZwP8L4OT7SLfQ@mail.gmail.com>
In-Reply-To: <CAKwvOdkZRdBzzW19sVAs+pX-7wWwN6AWrxUkkZwP8L4OT7SLfQ@mail.gmail.com>
From: Vinicius Tinti <viniciustinti@gmail.com>
Date: Mon, 1 Feb 2021 19:05:11 -0300
Message-ID: <CALD9WKx6HREQeTRXuv81v-=DTVuznXG_56YFm2dM1GOG3s4BRQ@mail.gmail.com>
Subject: Re: [PATCH v2] ext4: Enable code path when DX_DEBUG is set
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Theodore Ts'o" <tytso@mit.edu>, Christoph Hellwig <hch@infradead.org>, 
	Andreas Dilger <adilger.kernel@dilger.ca>, Nathan Chancellor <natechancellor@gmail.com>, 
	Ext4 Developers List <linux-ext4@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: viniciustinti@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SgwYSbrv;       spf=pass
 (google.com: domain of viniciustinti@gmail.com designates 2a00:1450:4864:20::435
 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;       dmarc=pass
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

On Mon, Feb 1, 2021 at 6:41 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Mon, Feb 1, 2021 at 1:38 PM Theodore Ts'o <tytso@mit.edu> wrote:
> >
> > On Mon, Feb 01, 2021 at 01:16:19PM -0800, Nick Desaulniers wrote:
> > > I agree; Vinicius, my recommendation for -Wunreachable-* with Clang
> > > was to see whether dead code identified by this more aggressive
> > > diagnostic (than -Wunused-function) was to ask maintainers whether
> > > code identified by it was intentionally dead and if they would
> > > consider removing it.  If they say "no," that's fine, and doesn't need
> > > to be pushed.  It's not clear to maintainers that:
> > > 1. this warning is not on by default
> > > 2. we're not looking to pursue turning this on by default

Ok. I will make it clear in next commit messages.

> > >
> > > If maintainers want to keep the dead code, that's fine, let them and
> > > move on to the next instance to see if that's interesting (or not).
> >
> > It should be noted that in Documenting/process/coding-style.rst, there
> > is an expicit recommendation to code in a way that will result in dead
> > code warnings:
> >
> >    Within code, where possible, use the IS_ENABLED macro to convert a Kconfig
> >    symbol into a C boolean expression, and use it in a normal C conditional:
> >
> >    .. code-block:: c
> >
> >         if (IS_ENABLED(CONFIG_SOMETHING)) {
> >                 ...
> >         }
> >
> >    The compiler will constant-fold the conditional away, and include or exclude
> >    the block of code just as with an #ifdef, so this will not add any runtime
> >    overhead.  However, this approach still allows the C compiler to see the code
> >    inside the block, and check it for correctness (syntax, types, symbol
> >    references, etc).  Thus, you still have to use an #ifdef if the code inside the
> >    block references symbols that will not exist if the condition is not met.
> >
> > So our process documentation *explicitly* recommends against using
> > #ifdef CONFIG_XXX ... #endif, and instead use something that will
> > -Wunreachable-code-aggressive to cause the compiler to complain.
>
> I agree.

I agree too.

> >
> > Hence, this is not a warning that we will *ever* be able to enable
> > unconditionally ---
>
> I agree.
>
> > so why work hard to remove such warnings from the
> > code?  If the goal is to see if we can detect real bugs using this
>
> Because not every instance of -Wunreachable-code-aggressive may be that pattern.

The goal is to try to detect real bugs. In this instance specifically I
suggested to remove the "if (0) {...}" because it sounded like an
unused code.

If it is useful it is fine to keep.

For now I am only looking for dead code that cannot be enabled
by a configuration file or architecture. In fact, there are several
warnings that I am ignoring because they are a dead code in my
build but may not be in another.

> > technique, well and good.  If the data shows that this warning
> > actually is useful in finding bugs, then manybe we can figure out a
> > way that we can explicitly hint to the compiler that in *this* case,
> > the maintainer actually knew what they were doing.
> >
> > But if an examination of the warnings shows that
> > -Wunreachable-code-aggressive isn't actually finding any real bugs,
> > then perhaps it's not worth it.
>
> I agree. Hence the examination of instances found by Vinicius.

I liked the idea to create htree_rep_invariant_check. I will be doing
that.

Thanks for the help and suggestions.

> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALD9WKx6HREQeTRXuv81v-%3DDTVuznXG_56YFm2dM1GOG3s4BRQ%40mail.gmail.com.
