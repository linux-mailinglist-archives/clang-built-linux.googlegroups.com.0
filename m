Return-Path: <clang-built-linux+bncBDTI55WH24IRBUG53DWAKGQEPC6UI3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDFFCA9EF
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Oct 2019 19:24:34 +0200 (CEST)
Received: by mail-yw1-xc39.google.com with SMTP id y21sf2812778ywg.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Oct 2019 10:24:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570123473; cv=pass;
        d=google.com; s=arc-20160816;
        b=s2FzGI4rmbGpc2+8D5gnskgF9HzJidiqGnhuloN6jFLMKYq0EnUWpJRtRFctfjI2oN
         F/7OdVcIoomGq1FJz0kV0bQ5mDHQjO5L+OiYfVgvNb+oSYRGisKHNr9RigblIqBeoScU
         QqCi4ocYepct/kyo0qgdqbrQ3VLK+0LvDysZodHu7pPMsDQjREpdFjDtF7aiPkeTc44s
         Nl37CRXphxljqiKUhEJtqKryfN/NRVrAz5ZiwRLYhPj1AeRc7JYy2xLJ7hizX7PoGyJu
         BcijdPL856figXMgM+XEtxTMBsGXctpv47wWY8N7UNCnMJ6qMhgWBPA6G6tB6vro15VY
         s+/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=guSNcrk4xVMcA0627Xm/tfX1DzrO87THhXTfJuUTT+k=;
        b=t3CdziswktDxBa/Z2mef+aRQ/t8Hu/MjCnaWOpFGG2hnOpj5DoFB2miw22vXBCtYY4
         twP/VZxZCmEKyBRlyigMy1iYQHnx7w/Axyyn/rViw/qeIHH/Guqn21FlpxTZwZnR6MGI
         ZC8H2oIYDCRpa0AUgboI5BOtXLOOqHeAHjr6Iribrv5bssSsoX3bytxVh8RBNU9w3V5G
         i4j/WBQOE5CQJWcs9uUhn0x7hn3mzItTt/F/iVQyxI7C2zBXHAKa1Y3uAzbm2SI+aW0m
         gr5yVjjx/q6rtQdEZSR8+e8cuFfJ+JnVz3J8roIbAQtQqyeWCWP0BjUQ+6QLa7WTvVST
         XBbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=YJoEtvR8;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=guSNcrk4xVMcA0627Xm/tfX1DzrO87THhXTfJuUTT+k=;
        b=gqPd6E0hQNk7UHzUgkD3S03nTOZyf5ifFa9XSTa19j543BctrzfEpiCCAO+UwmK/Y8
         clsb4Ywr0xBHvZSQwlT+PCEuUEbUhWYHasroAdM9I24SAdAyWNAZ8VprFDivtQNA9G/6
         TOjSBXHi75ZeOT8u5BZjKPGHZAX5ytruEPzwdjVgOGvv+1bHq5FaEtIEsxOPv4I94qbQ
         qE4Je+Ne3jDA63msrjUxBWZ3VVxgBJLaFGu6PTNB5Hg5MxaK0YCu5aZErs2RmBzJYG3g
         TT2uk96Qvcq8Z5uuG4I59psJmlvsvD0zKTS7yQsG6je+QYF1pb8g3Lum5uPDonvEBAHd
         /9+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=guSNcrk4xVMcA0627Xm/tfX1DzrO87THhXTfJuUTT+k=;
        b=d2k6HTN01XBAjK8+A1lyENDOVoy5XS3JGjoWrlW4i7b8phBqNEJfszOrLLM4U4dfVc
         k/W0708zyZmcLoOG5kHOZbhOYEwdOjoboz/z64Q/dP4yaTmf78qil46QD4OiCLdnMWDz
         pcMMjxdkTCyygnQkBP3lq62rtqgbr5WXpSZIoxdQTdh+P1lCeJyQhOkqp3/kFNzwOk/U
         4sgGktBvN6d6kvIgVSMQCphhmWCa9aCutUr5YBlBXEb7hQVvjt/JgvxyP48mLcVg8tG3
         tFwXQosWNfHmssCCfUhL+sBf3dXMUHy0FMLYnynvtdvDBH9Cgi3t9LERYDudcoBikz6a
         3fzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV59Edfo+/lX9PnhTI7dbD0HmtoaZhzeUeKNe0OwKXXmWg3DrlP
	6Hv9v7wwEDTUgLkwjTiEac8=
X-Google-Smtp-Source: APXvYqz2Q7SV+unrnjp0fqI1YvkdN9ysxWJ0enOknS5h139g9t62EmCKZ96b00kTlGXHtAUI/PMRcg==
X-Received: by 2002:a25:7393:: with SMTP id o141mr7170310ybc.18.1570123473018;
        Thu, 03 Oct 2019 10:24:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:34c5:: with SMTP id b188ls576887ywa.2.gmail; Thu, 03 Oct
 2019 10:24:32 -0700 (PDT)
X-Received: by 2002:a81:7882:: with SMTP id t124mr7548883ywc.224.1570123472230;
        Thu, 03 Oct 2019 10:24:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570123472; cv=none;
        d=google.com; s=arc-20160816;
        b=mcc/lSAJWRbl/Nh1g0zGUKbewCYGfdJfPiN6RnuyWOuHUzhtdGv6raD6VhO9H4wg/f
         ixsCh9DcHdbOHXG0xmFaD+h5KQldnXBM61uMdO9WtNPW0R9n7EJYxQIhPntqtRChYa6H
         Qh9oWFxMbMkc0yzW1nJ1uOtr+GyZtry8MVMJ3tYsICsxSvJhhwRV6hC5Xhspfft1tXsd
         A0BJd38YQdX9xyFF1dydYtGb8aocfnUysNP74IgUcZ0CWLnAV1REG4qo47f+M91D6PDW
         V21d2otZApKZNZ+0p8zqiCW1PJn53nr+dpyvuQNdyb5gXQEhQhAoLeDQ3OoZQjo5xEnl
         Sxyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=LJ8ChLvuFkxOnRaAfzcwPHpVO6iA3brJ5hpU1BX1eNM=;
        b=JlG+RI2kTiS93mQBcpMgxdSbZlxCaj/wwSjOgNrI5AXCQMRmYC7c74koq7bNuczhcw
         F6CMwCGSSKRBV9kw6IdJlgHlQbHTmgC4AxiNDwGAsP8vMiWot5yUhYFUtHxThEanFwlH
         fujuT4KOgJ5YhiwK2dUkCuonpHKEMVs8thbDdIgFRlBi0/4TPX+owRSHplBCjuTF6HLn
         SR25PkYkXz98BlLOtpq0ZUnveAk8fKEZz2IIuAHr+p3b0UCjhUDFBImlc6VU6exll8IA
         8HY68vSxiWMqNOIzQ4Awn0qYfhY0zSvPG4oTAEPidILyW1GvdTPaXikW6Rq5hv7LcMhy
         MJrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=YJoEtvR8;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id t73si249030ybi.4.2019.10.03.10.24.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Oct 2019 10:24:32 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id x93HODCX006026
	for <clang-built-linux@googlegroups.com>; Fri, 4 Oct 2019 02:24:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x93HODCX006026
X-Nifty-SrcIP: [209.85.222.45]
Received: by mail-ua1-f45.google.com with SMTP id w7so1175506uag.4
        for <clang-built-linux@googlegroups.com>; Thu, 03 Oct 2019 10:24:13 -0700 (PDT)
X-Received: by 2002:a9f:21f6:: with SMTP id 109mr3156310uac.109.1570123452512;
 Thu, 03 Oct 2019 10:24:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190930112636.vx2qxo4hdysvxibl@willie-the-truck>
 <CAK7LNASQZ82KSOrQW7+Wq1vFDCg2__maBEAPMLqUDqZMLuj1rA@mail.gmail.com>
 <20190930121803.n34i63scet2ec7ll@willie-the-truck> <CAKwvOdnqn=0LndrX+mUrtSAQqoT1JWRMOJCA5t3e=S=T7zkcCQ@mail.gmail.com>
 <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck> <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck> <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk> <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk> <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
 <CAMuHMdWPhE1nNkmL1nj3vpQhB7fP3uDs2i_ZVi0Gf9qij4W2CA@mail.gmail.com>
 <CAHk-=wgFODvdFBHzgVf3JjoBz0z6LZhOm8xvMntsvOr66ASmZQ@mail.gmail.com>
 <CAK7LNARM2jVSdgCDJWDbvVxYLiUR_CFgTPg0nxzbCszSKcx+pg@mail.gmail.com> <CAHk-=wiMm3rN15WmiAqMHjC-pakL_b8qgWsPPri0+YLFORT-ZA@mail.gmail.com>
In-Reply-To: <CAHk-=wiMm3rN15WmiAqMHjC-pakL_b8qgWsPPri0+YLFORT-ZA@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 4 Oct 2019 02:23:36 +0900
X-Gmail-Original-Message-ID: <CAK7LNATSoOD0g=Aarui6Y26E_YB035NsaPpHxqtBNyw0K0UXVw@mail.gmail.com>
Message-ID: <CAK7LNATSoOD0g=Aarui6Y26E_YB035NsaPpHxqtBNyw0K0UXVw@mail.gmail.com>
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Russell King - ARM Linux admin <linux@armlinux.org.uk>,
        Will Deacon <will@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Andrew Morton <akpm@linux-foundation.org>,
        Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        linux-arch <linux-arch@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Stefan Wahren <wahrenst@gmx.net>, Kees Cook <keescook@google.com>,
        Arnd Bergmann <arnd@arndb.de>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=YJoEtvR8;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Fri, Oct 4, 2019 at 2:02 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Wed, Oct 2, 2019 at 7:11 PM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
> >
> > Macrofying the 'inline' is a horrid mistake that makes incorrect code work.
> > It would eternally prevent people from writing portable, correct code.
> > Please do not encourage to hide problems.
>
> Honestly, if the alternative to hiding problems is "use a macro", then
> I'd rather hide the problems and just make "inline" means "inline".
>
> If "inline" means "it's just a hint, use macros", then inline is useless.

For clarification,
I am not saying "use macros" at all.


I just want to annotate __always_inline for the case
"2. code that if not inlined is somehow not correct."



> If "inline" means "using this means that there are known compiler
> bugs, but we don't know where they trigger", then inline is _worse_
> than useless.
>
> I do not see the big advantage of letting the compiler say "yeah, I'm
> not going to do that, Dave".
>
> And I see a *huge* disadvantage when people are ignoring compiler
> bugs, and are saying "use a macro". Seriously.


Again, not saying "use a macro".



>
> Right now we see the obvious compiler bugs that cause build breakages.
> How many non-obvious compiler bugs do we have? And how sure are you
> that our code is "correct" after fixing a couple of obvious cases?
>
> As to "portable", nobody cares. We're a kernel. We aren't portable,
> and never were.
>
> If this is purely about the fact that x86 is different from other
> architectures, then let's remove the "compiler can do stupid things"
> option on x86 too. It was never clear that it was a huge advantage.
>
>                Linus



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATSoOD0g%3DAarui6Y26E_YB035NsaPpHxqtBNyw0K0UXVw%40mail.gmail.com.
