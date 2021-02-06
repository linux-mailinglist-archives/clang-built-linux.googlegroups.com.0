Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQFZ66AAMGQEHFOYBYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6181031178F
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Feb 2021 01:03:13 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id z9sf6419244wro.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 16:03:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612569793; cv=pass;
        d=google.com; s=arc-20160816;
        b=K+JaDcO4IOzUUGNeHQbanNSNhSPKkB8j3Xw4D6Wvs2418nmxWEys5RLhnd1M6Lg0MP
         bl49v6uLBySykf8Jw9qYE3OLYTI/E/2acxv+y7Ech0tJOwA2fUG8ePX497raj4t+uxm+
         EUZ7p149owfMQ9Ww93IHq2n/Gh19LWr3uTitHgzqhX1eIpiL1Ms/b2NEVC5AdXRr8ow2
         +NdPtXhK/buFllHBMhO/AH6W59PWgPOaU+dfpyV+GA0DN0T01vcu6COz9UEGSa4Zw63t
         PkmtHqQoHXNhmTdHh2sieqsn7AisAkAQk3sJxYB5x3CBTHPTI0kryssplXRg4Ze7WI79
         lS5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bxT2iGXxqi99rkmmQHrnbX0QFMT2D4Io7ojVVzukHx0=;
        b=GMzGqRLYxC1sERrWiAQPTlAJSgNItsWKSUOSeTBNY3CTTTsZZnRMIYY4DmBY6tFAIU
         iAg1MX9r+f2MCl86MQ5bF20hyP2qr+3mYVZResj0NdpvBXx79oSkzKxaVTHhz2lWspOg
         IKYACneWrGQq73Z8lyBKnNzREBwguV/hvzUr4KH9ACiT5/yiv6uecc8OxWB0qyVjXnDK
         pWP2BBBKKAtU8JLkiSmCXxfkPsF2OIGTF1c0Vd+Yry0hxdX23oNPGu9jairK3UWIrmcJ
         6PtZOudQziTjrhzHGT4SMvTl6DoNL5hQyIJx7fYVpG0OsaEIWrNK4TcAbpmRx3O45S5k
         fnGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q9wbjEde;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bxT2iGXxqi99rkmmQHrnbX0QFMT2D4Io7ojVVzukHx0=;
        b=TJusx8WEqG9mTDMwWMQgSRH3hBQIGWPtW4zv3qpPf1Fh6mi6FlxRKyJx2Kgxg7JwVC
         W5zOIM3QCeZLr74m4NE/OXN7xjyZznuZnufnr9p9ZSHW2Zq1SLx9t7eiLhUEjk4HB9y3
         jo7q4Pdtew2F3qWH8q9f2xv9i3oi569hv+yNf8FI4F+vReI6JxgROYsUxGblDhoITVkf
         zvybHTN3k8Ib+DBJP0mCGknMZT/zPFmdxBx9u8gZAiqVXAdRHeBuTKKF86uG2QFdSymb
         bpItQ5w/XYtTykFPQEStAZv8mXcVWKef92/OXddNl7fyeCNR6QlG/D4DfZHzUc6uCs7h
         +qjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bxT2iGXxqi99rkmmQHrnbX0QFMT2D4Io7ojVVzukHx0=;
        b=lTN8qEX1lzk9sw+2lWlUzsuM3+oj/5wRr7BHGdSr0JonE9UWgWRkGydVX5D5KtaRll
         8NS+AFx36YmJBVI3t2d3VvGoMvuHxV+osKF5pFoGMQJBFpI799T7y6Oo2HUEnRncoErV
         R6FMoBVOzVcdH7WtklKnH4PC1Fun0HVIU55xXSEWaNVLXjFvHW/640ADnKOhzKDDe5zG
         eBXhKWAhsTC7Q07V4hdsOEXqWYVb52lUn9P+hfO6n8rmSNwwcFeLcJyjabQyi8m7jEKf
         30qkBfetMAAakFdPcXbg1v0UGPYKI02Ri2Tb2b4ibeAN5Pi35WvsITvj1Gqb8kSmOVs/
         loxA==
X-Gm-Message-State: AOAM533F0xStIN1INI2ToGRuOLeG676fTO7Z/KPWAekPtxhw1skYQtTu
	G6JyQ9J0X2zWYgk29crzQEU=
X-Google-Smtp-Source: ABdhPJyIGleGd9A/z1pDkAqq7Bwz8KnL13is+8gpDiD5otDJ7tRULxRA/Or9vFV4HHebvfS1baDgbg==
X-Received: by 2002:a5d:6944:: with SMTP id r4mr7491046wrw.399.1612569793094;
        Fri, 05 Feb 2021 16:03:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fd09:: with SMTP id e9ls2181362wrr.0.gmail; Fri, 05 Feb
 2021 16:03:12 -0800 (PST)
X-Received: by 2002:adf:ffcd:: with SMTP id x13mr7700154wrs.149.1612569792383;
        Fri, 05 Feb 2021 16:03:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612569792; cv=none;
        d=google.com; s=arc-20160816;
        b=eWvAEKrCDUXDp5/s5LdtOeUm90ACOl8xDnZEG3gdgYDhpi9OuKLX3gsJwVq+4CLtky
         X0EQPn5wr5l+ULdLNiQUN+/aZzeJgDzBXRao+m37qwWGfQNMP2sIy9YCnjREz13LHRYs
         rwMEK/ybMPEaz/tMu59ciQB6LmEnT4B1YLfE2hAGO9vN4gwHC9h9LWD4yVeyT/HdCEdc
         nYZxvIlRdsfuGjA11xb73HIE79wAUu3vo3azDxtVhSGnJY9U4HC0TPwfvI5F7HwdLyI5
         +1vWyWXOrgPC97OwSsNqZjhgOATHYhIWNJT39wpzpb+N6MTI8KmyK/hpUmAisDxfJtYI
         XYRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NWPbrqSGD6rR+HAkD4dteJHXvU5H2qHvAqzNOoE/AX4=;
        b=yo+kdtM2Ap2n/8anmQvEx48+aFzDxqw+aIOr4xPpDQj2Nrpq/oHjGkUf66ZxQls1ju
         4z1h/RASKSjS+mC3/hx9zgyii+BAyKpzFlBx7L58IaaT8IfdefTT2A2Qj6hHnx0iCW43
         g5mXAQ0MbASwrwUYts0hQYgcARZhywnppjrWFOUJc0isrYRHI/Xns95qzmOYXutvnV3f
         5SFUPH8TmTI8RP32Bm7yDdNpq4pDKd82ZbrdS/6MDNhA62Sb0mXp19h2bGPfddF+OMkK
         HHf/wq2/HYHMCOySQ76dLYHL5iwNU4oDJnR57eWaRunJW7fSYDoKkrXpqM8gxVGggBcm
         FypQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q9wbjEde;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id f196si458011wme.2.2021.02.05.16.03.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 16:03:12 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id v24so12489000lfr.7
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 16:03:12 -0800 (PST)
X-Received: by 2002:a2e:7d11:: with SMTP id y17mr4129417ljc.116.1612569791666;
 Fri, 05 Feb 2021 16:03:11 -0800 (PST)
MIME-Version: 1.0
References: <20210205202220.2748551-1-ndesaulniers@google.com>
 <20210205202220.2748551-2-ndesaulniers@google.com> <20210205160034.a0e0ba06752bef03e60f91f8@linux-foundation.org>
In-Reply-To: <20210205160034.a0e0ba06752bef03e60f91f8@linux-foundation.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Feb 2021 16:02:58 -0800
Message-ID: <CAKwvOdmkx=+MGkc5uCB=0TssnHNQXb0E+x=CqbGs6gGZc5GH7Q@mail.gmail.com>
Subject: Re: [PATCH v9 1/3] vmlinux.lds.h: add DWARF v5 sections
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Chris Murphy <bugzilla@colorremedies.com>, 
	Mark Wielaard <mark@klomp.org>, "# 3.4.x" <stable@vger.kernel.org>, 
	Chris Murphy <lists@colorremedies.com>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Q9wbjEde;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132
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

On Fri, Feb 5, 2021 at 4:00 PM Andrew Morton <akpm@linux-foundation.org> wrote:
>
> On Fri,  5 Feb 2021 12:22:18 -0800 Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> > We expect toolchains to produce these new debug info sections as part of
> > DWARF v5. Add explicit placements to prevent the linker warnings from
> > --orphan-section=warn.
> >
> > Compilers may produce such sections with explicit -gdwarf-5, or based on
> > the implicit default version of DWARF when -g is used via DEBUG_INFO.
> > This implicit default changes over time, and has changed to DWARF v5
> > with GCC 11.
> >
> > .debug_sup was mentioned in review, but without compilers producing it
> > today, let's wait to add it until it becomes necessary.
> >
>
> There isn't anything in this changelog which explains why a -stable
> backport was requested?  Or is there?  Irritating linker warnings?
> More than that?

Users adopting GCC 11 will start to see warnings from the linker due
to --orphan-section=warn when building the branches of the stable
tree.  Stable has IME accepted patches for permitting newer toolchains
to continue to compile warning free.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmkx%3D%2BMGkc5uCB%3D0TssnHNQXb0E%2Bx%3DCqbGs6gGZc5GH7Q%40mail.gmail.com.
