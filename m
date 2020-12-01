Return-Path: <clang-built-linux+bncBC2ORX645YPRBVPPTL7AKGQEAMWDLXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA212CAEA5
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 22:38:30 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id e202sf1448190vke.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 13:38:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606858709; cv=pass;
        d=google.com; s=arc-20160816;
        b=k5fwYmYW80mZPR2XGrDzaXOTgUd9tsjYmqajWbxAiyDdv+g+zWryTmwAPmtj8/ARkI
         m1efSumxwE/BOKwWtZlD1jC/jtX07br9SzWk9C9nsRfhldu5ASY03iqPbFCs8bADeF/V
         0ZsQ7LIN2HAjcPXSBKA5bnAVdVOSVT4jYPjfKdjU4FDjocmXlh+dfCFe1/o0/koN/0Hq
         8ar5OQvs1/tyTXaeQ+EAaACIiPB8VPMiuNmsSKCh7eqXp1DwFo7pJOY28o9g7rj3+KUC
         IAY+jxfCN2u1Zh8+Us98uqUZ0XfhVOHyTZzVBC3f0ZdGZ4lb2NjBXxFabcoSBQx6/mKX
         U5Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TJJMJ/DFCmOtdI4P3ki7Zt5y+8XeXcqhsVZ14s5LKuo=;
        b=acBWmPdgxOiBvOODFpQT/OSq2gkci2PNzwDNXlfT4o5TFOsooQxjCFb1mmbaqHRRvR
         ObtsZ5WKn4Uv+oI6NkzdNKpeQJw80ppt2cavnYFZxjorRWa20NAdByUK/0NafWnPVtJb
         xogtx2LrIxOYea23bP30Y8a35smDZvOTiw7wisXpeb+2M9LoD2eK+TeVeLEOlUh9Zd6A
         IS/2gdQcB7evhQLs/XZQNODIXgddCahwkB+G5zBAEYN5NnRgYeDXNIfO+Edc3Vu+LtNm
         SS94ABZnprs3U6XMqD0ZCB6aPjgTSQk59GczMX5ONE1X/S54kRiWW8c3I1dAZDZEN8+/
         I8AQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LlVOL6rc;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TJJMJ/DFCmOtdI4P3ki7Zt5y+8XeXcqhsVZ14s5LKuo=;
        b=q9+hYiF7SrqaoVq7nVw3wltn/mTbOhUnrHUw6M8om/6KGowsVH3LR867eEFDzRxMJ4
         8ElbDzLWu6jE6xUAYOcMH34NTvKaGnvAlNXFe47Xd7+5s0GSTVfM40vacHTY8t0drFL5
         Ljot2u2KWQDwlk2OBv6gnnJLfwJ5bxWweSknTAC6nkA3Pl+Uo7i+9msC4Qc4B4npTn+l
         NTwiPxr2oWuC44JSS4jcCn8YoA9V/iJeyoO9lSZIMgmeqa2aIBO5DPpP8V6KB8mv3euA
         42my8zTQN3E+OLcZHxCIsNI9M/q2slIUuFnAwAclCrJFEhNaIOShaxRuwnevsVMi0oFD
         eLeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TJJMJ/DFCmOtdI4P3ki7Zt5y+8XeXcqhsVZ14s5LKuo=;
        b=GbwkzyUf2CcnBEwS/PnZQ+Yfvy3zAkR9MBPQoKDeAvVgGa0WAyIuOh7oaNAYEghOkx
         BF5EdkiwEG+AAq5bmMrMgsv2fRkhqgTMDLP2/ccRjozNlpGiZT7BNu2RhIVKHNm0tytC
         YKVHkyQC/zuE2+cxUoPJBMkP8hhA3acoNhHZYYUoSfS/vVMyvmluog1/GcYbY0AyvCu4
         GM9EbsaKpZTyvzu2xYWxDLZSlnkJ9d6SuUeAO8/HtxF8d4W6RkJITP2qZcHE6EqFPFSw
         YTr51hA997UzfBlz7NLlzzcJvpW25KxmXeke7CKYB7Xms7+1aodVy7eJu8qyICHAImhZ
         joYA==
X-Gm-Message-State: AOAM533wYcK9QOXhKpq6ZEqcBHFK61QUAqVIZ1Ca0+tiyhbAlAB+H7z9
	lBMo7Pqp9RBy8+nUWbW96X4=
X-Google-Smtp-Source: ABdhPJzESgzO3MLcWA66XD58BW6RUKWGtV3qHog8kANhXOs4nSij9oURcHZ4o+GBVm8BaBSXF4rBGg==
X-Received: by 2002:a05:6102:3222:: with SMTP id x2mr4172721vsf.2.1606858709812;
        Tue, 01 Dec 2020 13:38:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:36ce:: with SMTP id v14ls336843uau.7.gmail; Tue, 01 Dec
 2020 13:38:29 -0800 (PST)
X-Received: by 2002:ab0:2302:: with SMTP id a2mr4777401uao.138.1606858709400;
        Tue, 01 Dec 2020 13:38:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606858709; cv=none;
        d=google.com; s=arc-20160816;
        b=yokO43fbxwuQvm1+9CR4uBWDZqkBOXsC2xFb5W1795ywHhfbXq45f9tXkY1RkWUgZ6
         wyRDLrfSGCtkf1qyGg0LuaJ8E3uDps/Hsz8dWufhBxtEdSjAlw2BC+DRwSoac9gS8drC
         zgUCbNVZjhDgX1WESr1w3FpLqf3MdaQ7SnViROrZZhIQ+yqqXSr9HMGg2+aTo/x23o6g
         YYxCM0/M+6o2jFp0UD7DDQTtXgzx4R6EYwt6ZqEad7GfuqivUxpWwMWDzoQAhnVUBVhh
         52Wg4VvGoNVqkFrMwXgciOYyawoh8pt2yANl985dT1626Ftcb8KAHiYVclgzK05xITAL
         T7qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pUrtE9bCHLR1tahsqjwEvkYE/b4ecWVyJ0MZJXEWDmk=;
        b=rUWLLBNGbziSc9Sr8Um1EVRFI7TT+ISDmhetLempY7wmbpOSTNdSaxhf8wWDKkH/+g
         a/JOpmyfr2jWXtCP3IvxUuUHqjyPsh3EPw8FhNVaImQxtLXGBcUkYC1RoQRlqN2Vot3f
         6ygBtmoFYVWQNGvxGmtqb637z3pNk2kKnYas4RiuDHBeR2OqkZtwMRvDcVvDQrAtGHws
         df8spu1o3fDm+SzG+u6c6Dbq9NzIiNxIoBmQIoTTPJF8B/QTkpQ22xBZYkIJwwbo9MVA
         lK6gxoCUlG2I73nMTp0zTjNxNd26jzLNWYKGHcZbCWEarQniEsqx/B204EEJUILmiMQ3
         M4Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LlVOL6rc;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id k67si114529vkg.1.2020.12.01.13.38.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 13:38:29 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Received: by mail-vs1-xe43.google.com with SMTP id m62so1770450vsd.3
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 13:38:29 -0800 (PST)
X-Received: by 2002:a67:f74f:: with SMTP id w15mr4961669vso.54.1606858708924;
 Tue, 01 Dec 2020 13:38:28 -0800 (PST)
MIME-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201130120130.GF24563@willie-the-truck> <202012010929.3788AF5@keescook> <CAKwvOdkcfg9ae_NyctS+3E8Ka5XqHXXAMJ4aUYHiC=BSph9E2A@mail.gmail.com>
In-Reply-To: <CAKwvOdkcfg9ae_NyctS+3E8Ka5XqHXXAMJ4aUYHiC=BSph9E2A@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Dec 2020 13:38:17 -0800
Message-ID: <CABCJKudBfoE-Ya6_ZuS4d+DqOWObhFFU1bNe_NpfHroLvfOiyQ@mail.gmail.com>
Subject: Re: [PATCH v7 00/17] Add support for Clang LTO
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, Will Deacon <will@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	PCI <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LlVOL6rc;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Tue, Dec 1, 2020 at 11:51 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Tue, Dec 1, 2020 at 9:31 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Mon, Nov 30, 2020 at 12:01:31PM +0000, Will Deacon wrote:
> > > Hi Sami,
> > >
> > > On Wed, Nov 18, 2020 at 02:07:14PM -0800, Sami Tolvanen wrote:
> > > > This patch series adds support for building the kernel with Clang's
> > > > Link Time Optimization (LTO). In addition to performance, the primary
> > > > motivation for LTO is to allow Clang's Control-Flow Integrity (CFI) to
> > > > be used in the kernel. Google has shipped millions of Pixel devices
> > > > running three major kernel versions with LTO+CFI since 2018.
> > > >
> > > > Most of the patches are build system changes for handling LLVM bitcode,
> > > > which Clang produces with LTO instead of ELF object files, postponing
> > > > ELF processing until a later stage, and ensuring initcall ordering.
> > > >
> > > > Note that v7 brings back arm64 support as Will has now staged the
> > > > prerequisite memory ordering patches [1], and drops x86_64 while we work
> > > > on fixing the remaining objtool warnings [2].
> > >
> > > Sounds like you're going to post a v8, but that's the plan for merging
> > > that? The arm64 parts look pretty good to me now.
> >
> > I haven't seen Masahiro comment on this in a while, so given the review
> > history and its use (for years now) in Android, I will carry v8 (assuming
> > all is fine with it) it in -next unless there are objections.
>
> I had some minor stylistic feedback on the Kconfig changes; I'm happy
> for you to land the bulk of the changes and then I follow up with
> patches to the Kconfig after.

These are included in v8, which I just sent out.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudBfoE-Ya6_ZuS4d%2BDqOWObhFFU1bNe_NpfHroLvfOiyQ%40mail.gmail.com.
