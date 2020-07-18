Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBXV4ZL4AKGQEYYII63I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3445422498B
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 09:01:52 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id c2sf7908991plr.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 00:01:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595055710; cv=pass;
        d=google.com; s=arc-20160816;
        b=Le3dCS4zocaSVOR4lVgaVCMV7tunodCYuspXDYPWqdYq45HVl1JS7TybA/DUvxblR4
         0YTOR+lbhU2MzRKlIvqdHQ0nJRS5Oq4rRo/s8TL/nY35VTb8XMGggeRiVX4OunFTCtx6
         vfimwqc/UTSQy/cxElTLd5Pgx0qvB3a49MeA705fnTMlbSuGHQL34m6uLxzJfXOrMxl6
         az/eOyy8lpjz796r5YcuIm+4gT8RUbwW9ORlDR9506L2l/APv9uarRXrSTCiytwjgSZH
         8xssFH5Fkre2Dixjm7tdny9/nMGVprgOmtFz+WZGkQZoNBOMCK7hhMRb9r6NJr000dzn
         BLcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=wKYn+fbtR8Sg3LHV5AfUUCSXtmBuSS8V5Eo2nJGUZQE=;
        b=tTI227eDFTFY/063A8/kwgX+8IRue14REpGY1DrRoPHE87bZ6231XS1zSOzIbmZMuf
         gXN7FTBPalwCWIRMR4PkUx0A8E1kHLPcXcwiaKWpt8SQ2JytGx80zv3SE+dcbeewXXkg
         huC149KDOIi0FoAI/Q0lJxWeIQ0u1PKsaeyTamF1dT1bXb3UoNZ4FR9NUsfsqwpXNMaS
         pc9/TZIg68LZuTIW3K33+RPUVhwEtcno+woWU5A1ZEepJngzs3sGnxFh0ZvQMwYpYaen
         iCSDhU2XbTI3ncrFD/MI2uz474WtCnBRNL4esVukI11TGplljyRcCG2JOvGft1SGwElP
         /trg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MGJgRmWL;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wKYn+fbtR8Sg3LHV5AfUUCSXtmBuSS8V5Eo2nJGUZQE=;
        b=DolgEigc2RyO+x73WZyrqNibCuGS8gwWoQBWhm9uy5xcx4Q6FX1RY8tEZ+F7DUEAKm
         hqUdVGmaFQcBfbLHuyInWCEih2uon12AVgvh+IfKSZxe4wQY/AlfRtmI7PEeapTc5+rV
         xXs7gXfoKSeKN0ZTjxURG+s5DMe7G5P/2XAFMQYq+6BhzuID0MrD4//p9ndMFUotBd0I
         9jN1a9mWj7y6NfTXpotbSI6wEjF/RyJJ5at/3+lQpv0AAXPGuNAfMNYsmlEj3U/oFJuH
         yJCbx8W/EtSFpBCWJcjWDQLJUdrVSxM95h6YM91n1d7DedlJ0MGeKuC65cOcVd8AGted
         gIiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wKYn+fbtR8Sg3LHV5AfUUCSXtmBuSS8V5Eo2nJGUZQE=;
        b=LBd2zaOG1KmyOfel7X1/wt9hUmIHvh/czmeQo0YEKobpSqDYg+CNdpGIMLktg7H6M9
         sJtNL+YA8dJVpxJUosR5ncHEyTNJdHFNtbOEM8ZzmEcJLO0nA6rLr4SjQuCbd4UwAiJf
         ikLNqaoQO8IY1rcsmp2vucJvxlA1qHzfUUwnMYOUZHRGyQpGrjizYV0nhQ733QZ/MVTc
         Yev8nQgnHmjJ/q57W2EiGBm17ACxhjTVHUzjOINafgclPQuMNTExm5y5oz9KYdT8HIUI
         QL7UeewZFpn2fBcyDH0glsXbcztOQDkHC681i8R6ByLG+wxp7Y/W6goug9CJ2wDfLvk2
         hIsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wKYn+fbtR8Sg3LHV5AfUUCSXtmBuSS8V5Eo2nJGUZQE=;
        b=BXwcHO3HnbqYUz0Xp8dAXJ6AxqnPbvwNxWiHDvNrMWBScTxshajuegXVxrSZB13oi1
         S7ko3SJDOEIXIqzq6qCfD9upvTDR/xcWFtThAK5rkKp8CjuB3EqNGbdfjz/oKbEHbrPW
         wxDuWU07JDSWZbewCiKG8s/sHfnFkWcL/e5ZOtPVuxgCoEHtktZG30+wXfk/HwqEoWQl
         aVsYI0onumcxFz4D3P9/s1asiOU1HY8ItBFIEm+4fgie7uKlFN8YdZQrOfTB0JSlNs7v
         2Sk0JUeL1Dj0gRNCPaX3B/CQYiyDHuk1u/TPtRag4Mb0UIWB09wGtP9JAMD9dmWO5ffj
         54pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AhVpFSi1lrbQhYUz88ClO7c7r/tV/3lbDYn4qI8e5CEi475Xa
	Y7A+4g8GPWpPqj/Eucn4Na0=
X-Google-Smtp-Source: ABdhPJxxotr30cEsV9oz6I465ye0lmUOHWaEi5Lj63kXGHne98kOQA2blEIi4O7gAsjeXclLZvM3cw==
X-Received: by 2002:a17:902:c24a:: with SMTP id 10mr10935434plg.82.1595055710695;
        Sat, 18 Jul 2020 00:01:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls741412pls.5.gmail; Sat, 18
 Jul 2020 00:01:50 -0700 (PDT)
X-Received: by 2002:a17:90a:39c8:: with SMTP id k8mr13755698pjf.118.1595055710241;
        Sat, 18 Jul 2020 00:01:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595055710; cv=none;
        d=google.com; s=arc-20160816;
        b=PB+0tdkeznllgdAvtJafMyb/LPYIlxws4ucTn5FuLR/2fb8h1ypxrEXQrPrlWtMYwj
         JfxPsiWLsrR/9JgfW3mRUkG2Y7fAxfHRo2OCnjE0GGsgYL6Pdjw1VdFV7Dy52JwnpPQN
         nVrEhhP5jBHlM2GxtpIp9zWdQp/fJSpgMa6wwLA2w+P8reTsNNn4q2tmmwEyWmgAkdsx
         qZDVkzjjWoTIkdBmbnC0Gmog9MtCKdbbsTFH+/xy83Jjk/ibinjPrY3y2P2hp+PSAHJN
         /45x0Pe68bgodmD/BzwKYLbf3XV5kYb6DXkgN9VMwDb/OR5DzMgfR+eMkj6yMWhBIlKN
         Cg7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=G3+2PMnjGfEPvKZwINap3pBMr0humQvV1EidfwRspkE=;
        b=d0/zk8BD7ib+qel1GkLA50pZDrIaBEs3OizlqMU4Oa1rWMmnaLf/dS/KC+9DlNzVhd
         IHZFmZGlGfMIFuiFTBUq3DNJMtNId37lw3JJCqX5RonGF4nefCOcWMPE8tB0/N/3b6Wl
         u12/URM+/qerdC1oOdVaKQVRKGtV2T4MGTZF2b2i9qlnuc0fuGEHjpt+xpEjOXWACk97
         g581GQOxF5o/2yF7s2k6qbcuWiHGp5bTXyy9g9Qrli+z8jfDpFWo3MvTJprAcUiqiRhM
         bE1iOCXA6FMA3o/ye6gftEvGVtCnXuA0bpuVXFvGVV5A04H2muC5jiCsHEhNECLQ6mAY
         yO4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MGJgRmWL;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id s7si201790pjq.2.2020.07.18.00.01.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Jul 2020 00:01:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id s21so9172680ilk.5
        for <clang-built-linux@googlegroups.com>; Sat, 18 Jul 2020 00:01:50 -0700 (PDT)
X-Received: by 2002:a92:8b11:: with SMTP id i17mr13130616ild.212.1595055709714;
 Sat, 18 Jul 2020 00:01:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
 <20200715004133.1430068-1-nivedita@alum.mit.edu> <20200717134654.GA3187880@rani.riverdale.lan>
 <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com> <CAMj1kXGeSFXnuO7Y94pyBU9qfSgtsLvMoCZSfDk476BBs2ejcw@mail.gmail.com>
In-Reply-To: <CAMj1kXGeSFXnuO7Y94pyBU9qfSgtsLvMoCZSfDk476BBs2ejcw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 18 Jul 2020 09:01:40 +0200
Message-ID: <CA+icZUUmMLGm+EhaMak6TmusJVufd_wEKzwSOMF4MVdxYKr1xQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] x86/boot: Remove run-time relocations from
 compressed kernel
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MGJgRmWL;       spf=pass
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

On Sat, Jul 18, 2020 at 7:45 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Fri, 17 Jul 2020 at 21:17, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Fri, Jul 17, 2020 at 6:46 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > On Tue, Jul 14, 2020 at 08:41:26PM -0400, Arvind Sankar wrote:
> > > > The compressed kernel currently contains bogus run-time relocations in
> > > > the startup code in head_{32,64}.S, which are generated by the linker,
> > > > but must not actually be processed at run-time.
> > > >
> > > > This generates warnings when linking with the BFD linker, and errors
> > > > with LLD, which defaults to erroring on run-time relocations in read-only
> > > > sections. It also requires the -z noreloc-overflow hack for the 64-bit
> > > > kernel, which prevents us from linking it as -pie on an older BFD linker
> > > > (<= 2.26) or on LLD, because the locations that are to be apparently
> > > > relocated are only 32-bits in size and so cannot really have
> > > > R_X86_64_RELATIVE relocations.
> > > >
> > > > This series aims to get rid of these relocations. I've build- and
> > > > boot-tested with combinations of clang/gcc-10 with lld/bfd-2.34, and
> > > > gcc-4.9.0 with bfd-2.24, skipping clang on 32-bit because it currently
> > > > has other issues [0].
> > > >
> > >
> > > Hi Thomas, Ingo, Borislav, would you be able to take a look over this
> > > series in time for 5.9?
> >
> > Hi Arvind, thanks for the series; I'm behind on testing.  When I try
> > to apply this series on top of linux-next, I get a collision in
> > drivers/firmware/efi/libstub/Makefile:27 when applying "0002
> > x86/boot/compressed: Force hidden visibility for all symbol
> > references". Would you mind refreshing the series to avoid that
> > collision?
>
> That is not the right way to deal with conflicts against -next.
>
> This series targets the -tip tree, and applies fine against it. If you
> want to apply it on some other tree and test it, that is fine, and
> highly appreciated, but 'refreshing' the series against -next means it
> no longer applies to -tip, and may be based on unidentified conflict
> resolutions performed by Stephen that the maintainers will have to
> deal with.
>
> Boris, Ingo, Thomas,
>
> Mind taking v5 of this series? (With Nick's Tested-by) I think these
> patches have been simmering long enough. Do note there is a conflict
> against the kbuild tree, but the resolution should be straightforward.

Agreed with that approach.

v5 misses also my credits - Tested-by for the whole series is sufficient.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUmMLGm%2BEhaMak6TmusJVufd_wEKzwSOMF4MVdxYKr1xQ%40mail.gmail.com.
