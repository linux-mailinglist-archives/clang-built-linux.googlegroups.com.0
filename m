Return-Path: <clang-built-linux+bncBDTI55WH24IRBBVEW3UQKGQEFQXO76Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 153356A467
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 10:59:51 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id y9sf2381429ybq.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 01:59:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563267590; cv=pass;
        d=google.com; s=arc-20160816;
        b=q8Wei485H1QKB2CU3VY1kJcK2wGHYpISLF6jYZJIQJasaxqig7NLxv5Qv37/NsB6dn
         DeTdlfubNEjyQCiYDZLuljf7Ta0oWX1vwe+Wg23ssFNyhE5claYms2i0RVYZzCzQB7+z
         dt1iGBXTu70VLwbhTqrHLn8arGjDmeXCkw6zrnKpULWSKYdYzpWgYUiKia1EShMQtPLT
         97MJNhO3vOekW7QvRREsGhVtmU14LmMcy8sqRZC/gqCnQlSjKxgQXpe4t9Mi358Q4Fls
         LDdu3gMabqqC4baAwgXt7CJUQfM1sxLLCaMJycGzHZx3mPFbMiHRfFFDKBetj7IG0YH+
         CEHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=m49xLtMBpvCu73W2tZ5inXVeDHDIm57vNMchuXftV90=;
        b=BWxQKgyGfCU64V3UUZvWqQK4+wNhVTq0HlhZtQVHWXN5MeUtPVLNF2zPbAhUgVMmDX
         GOOXXbDUBwLEyEVUdbfikVx+nxUtGctiNn0hFKngUg0iflfCTZzp9ApnKyPPg7NKrRdX
         laHYS46Vl/hxElX0X+OjX6gIenDO6vs5ZX/Ncbut5hy8rCmOBSUDzW/Uqme6d/I97Elk
         Pc0ApmegWXMGcAGb0niJ6Lika7CdOhJMXcI9pnY0gpNsBidts2e2o8v8pGv/vjzTN8CL
         6nOxvaCkdNubv5FN+FLvWDPqS88Q2aUl5r1v0rEujrdPw0AfVVhvV9xwAq+SllCnjYf8
         /vvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xjl0EfoU;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m49xLtMBpvCu73W2tZ5inXVeDHDIm57vNMchuXftV90=;
        b=mnMZzSp0DqINnAsjJU0MDtKPMLtkn1QcyDFEbacRtM9o4EQM+wuNe1jBlu+UkMCNaI
         znFedFOC/WVBexLBfv3hZPO7e7aWJ4ZVxWRmWLsXIkz2DNHfPqSaN0gCgfloaFgEdWiv
         7bs6kay6ycQejok5FUrhbWi/NS5sPOa+4RtkNa56gHoVyGwJLcfSnj3SFaJRKD1WCYRl
         xBym2V8d1UwqY3U/bwPJ0QU0A6fm/XLtyYEKLZWzSa7xtIfONMarXIaSJySZoCZ82Unf
         BR3wfA7zUAfv8LFjvpI0tAFBR+LAwI6JtzvboVJUaCuAksTmzP6CdFzjyTIiF4hAXboR
         P1hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m49xLtMBpvCu73W2tZ5inXVeDHDIm57vNMchuXftV90=;
        b=eme87Cm0UUy/o8en7frQ3gR7n0f/GVhgHu/BjV1tL46KhQZFOwsNVaXiS/wnVlcwqb
         bw0QzmeM5pzlkzbmS5jhLZRflDjEdlIM75JuYCd468ivFOv5bAma2cOmyTeqB1nlDBcB
         OLgpeBkq1Xc4Vjm0wwOAH6s/YNuoVWR8TMfYzdzx9ZJSOeooix75f9XD1DU4NIVmbQRd
         UqZ2ePrMi/MmB7rQSzx0AzzQqX7JnuN0NalEXjrWZn9drKwyCUgDGqSxJdxlC0rpSRNa
         CG5swLZMIKU/tz4OuMQJAYZBfYeN09kNAEeIgu7qc/QhFno6dV8jXWo0vsk2sVuR369E
         MPgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVQa8GCEufMqQXRP5uI79Kwb5eFEmZDJGjNZlG7i1lPH6hRaUFl
	PK7fP76uXmTIPSn8IkrL80A=
X-Google-Smtp-Source: APXvYqxBo9X8I1Gc1t5+pvdkWMxgW5j4BAt+i2nwx1ZELVS1qxMs6d5W4AQGHxGCVI/SXvY40SI6aQ==
X-Received: by 2002:a81:980d:: with SMTP id p13mr18684501ywg.51.1563267590139;
        Tue, 16 Jul 2019 01:59:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:e684:: with SMTP id p126ls2607879ywe.12.gmail; Tue, 16
 Jul 2019 01:59:49 -0700 (PDT)
X-Received: by 2002:a81:bd54:: with SMTP id n20mr19712018ywk.507.1563267589867;
        Tue, 16 Jul 2019 01:59:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563267589; cv=none;
        d=google.com; s=arc-20160816;
        b=yvZw8DD5db5tX3n+2KZtUOdH/SGA967yMx3shT+Dk3pew6t21WExqHREoqB3xsbvJp
         dswF43DePXQ3acudZwtvDMs/Z8EdRrn1Ct5LGRwkbApGInm+Iqyqcw5RRbnSaW0pJ3ao
         TukEUuzyefHc3HyYlgTKzJoy6q3ipOKKVnUSXwsg20wTHkQkpn+WReRyv+cSr+k0qIa7
         GLtCOfeRcPCCCg9bw7RvwUyHiCkDVbzO8B2pADOGA4cTPKHGZoT8nwfNe2WtwR0gq9Lw
         blzGhAeBxR3SLGvKop8WnKzXQVSKLUrpmOyBV1pMOchazwTouNYIOZ93SM46Q9QgJbSc
         He7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:dkim-filter;
        bh=Z7uszMuyFiQN/JEv5Khco5zhTZDWKsMGjjbxCAL2vn0=;
        b=pYbNPFLWcVH55qzDadyyJ27p/btF3ECcs/hEsXSfIhIVe8XIsxasEc1YBYUJd/UGT3
         luYoQpWBuNz8TlL3LCqCk2jph2wUdj4pza3dSTC4biZdgFrLRg/JpO/s0AC5rpqhDHj5
         RxqPNp+qwU6pvT+AxnlWRcwRALDwWcsNSa1CCQaUsaksoh/rQSPDiNWZdfp7RFuImAIq
         aopyL4E25lmvbd+j8d44WCPFG1ln8i3agUfBVyC6PxmWyk38PDOdouwUsRoy2qY+dKYU
         2up0N2+EAUVpEFvB0cA/Nhic03kyx0F7bm+MpYIZ98TLoYpy2HIpUeSZPRIzU7WYnHdk
         c7qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xjl0EfoU;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id t132si997300ywc.0.2019.07.16.01.59.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jul 2019 01:59:49 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id x6G8xPQf027101
	for <clang-built-linux@googlegroups.com>; Tue, 16 Jul 2019 17:59:26 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x6G8xPQf027101
X-Nifty-SrcIP: [209.85.217.45]
Received: by mail-vs1-f45.google.com with SMTP id u124so13386066vsu.2
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jul 2019 01:59:26 -0700 (PDT)
X-Received: by 2002:a67:cd1a:: with SMTP id u26mr18872370vsl.155.1563267565192;
 Tue, 16 Jul 2019 01:59:25 -0700 (PDT)
MIME-Version: 1.0
References: <1562664759-16009-1-git-send-email-info@metux.net>
 <1562664759-16009-4-git-send-email-info@metux.net> <CAK7LNAR1N-bwVWm0LXky2-d2GfvRuRrEWeo5CGm3Z2Lp_s0WEw@mail.gmail.com>
 <5af9db32-2cf5-10ba-261c-e08852d0814f@metux.net> <20190715191245.GD3068@mit.edu>
In-Reply-To: <20190715191245.GD3068@mit.edu>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 16 Jul 2019 17:58:49 +0900
X-Gmail-Original-Message-ID: <CAK7LNASps6JBAvtJshjMbqMk8QaSrMaH8pm-wHsEySTRJzu0Kw@mail.gmail.com>
Message-ID: <CAK7LNASps6JBAvtJshjMbqMk8QaSrMaH8pm-wHsEySTRJzu0Kw@mail.gmail.com>
Subject: Re: [PATCH 4/4] debian: add generic rule file
To: "Theodore Y. Ts'o" <tytso@mit.edu>,
        "Enrico Weigelt, metux IT consult" <lkml@metux.net>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Michal Marek <michal.lkml@markovi.net>, Robo Bot <apw@canonical.com>,
        Joe Perches <joe@perches.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-riscv@lists.infradead.org,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=xjl0EfoU;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Tue, Jul 16, 2019 at 4:13 AM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>
> On Mon, Jul 15, 2019 at 08:56:25PM +0200, Enrico Weigelt, metux IT consult wrote:
> > On 15.07.19 14:28, Masahiro Yamada wrote:
> >
> > >> The rule file contains a rule for creating debian/control and
> > >> other metadata - this is done similar to the 'deb-pkg' make rule,
> > >> scripts/packaging/mkdebian.
> > >
> > > I saw a similar patch submission before, and negative feedback about it.
> >
> > Do you recall what negative feedback exactly ?

Sorry, my memory was broken.

I did not like this patch set from the beginning,
but missed to express my opinion strongly.

I want debian/ to be kept as a drop-in directory
for packagers, without replacing the upstream debian/rules.

If a check-in source file is modified in anyway,
scripts/setlocalversion would set -dirty flag,
which I want to avoid.



> It's possible I'm not remembering some of the feedback, but the only
> thing I recall was the comment I made that I'd really like this use
> case:
>
> make O=/build/linux-build bindeb-pkg
>
> to not break.  And as far as I can tell from the proposed patch series
> (I haven't had a chance to experimentally verify it yet), I don't
> think it should break anything --- I'm assuming that we will still
> have a way of creating the debian/rules file in
> /build/linux-build/debian/rules when doing a O= build, and that the
> intdeb-pkg rule remains the same.  At least, it appears to be the case
> from my doing a quick look at the patches.
>
> > > Debian maintains its own debian/rules, and it is fine.
> >
> > Not for me, I don't use it - given up trying to make anything useful
> > out of it. It's extremly complex, practically undebuggable and doesn't
> > even work w/o lots of external preparations.
>
> Yeah, the official Debian debian/rules is optimized for doing a
> distribution release, and in addition to the issues Enrico has raised,
> last time I tried it, it was S-L-O-W since it was building a fully
> generic kernel.  It's not at all useable for general developer use.

It is OK if the package is targeting normal users instead of
kernel developers.


> It sounds like what Enrico is trying to do is to enable running
> "dpkg-buildpackage -us -uc -b" from the the top-level kernel package
> as being easier than running "make bindeb-pkg".  I suspect this might
> be because his goal is to integrate individual kernel builds from
> using Debian's hermetic build / chroot systems (e.g., sbuild, pbuilder)?

I am OK with generating debian/rules with 'make bindeb-pkg', a shell scripts
or whatever, but I dislike to commit it in upstream git tree.

debian/rules is a hook for packagers to do their jobs in downstream.
"We kindly committed a generic one for you" sounds weird to me.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASps6JBAvtJshjMbqMk8QaSrMaH8pm-wHsEySTRJzu0Kw%40mail.gmail.com.
