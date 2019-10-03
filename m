Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB76G3DWAKGQEXS2FPDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id DA801CA58F
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Oct 2019 18:36:16 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id 19sf1641603oii.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Oct 2019 09:36:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570120575; cv=pass;
        d=google.com; s=arc-20160816;
        b=ej7rp93wJK4npB6e6Fz1m8tDjqikcu23xr8ut9UrFysoQHTLvAknPC43qZnRMqyYKp
         pW1BWG0S1kM8Wb8lh+ILm+zrZ0NpTbcuPhcv2NSTysTIAlOqsBH7roNFLhdceQvvNa56
         hArj0OU8uuwEMku2sT9TMmoE5dJ/M+ASc5pW5F3g8t3RjSEzDmcoYzMNCN4PvJOiWXO/
         4PDoIq89sA/2gnriiAEpbGQW9UewVgeeMNMdRtlt04q5BG+v+dGs1hz5qfyPJ5gkbolw
         3xXgUEUphUjbxUbGvyFuVEgpB6PtehMKobZe5YIbeRtrvtoWtrSHAUTwDTM7aXMr2dmJ
         No4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/kJWJoQagGRVpu1zZARpqru03iEtXY/Ngo46J7yH2Xw=;
        b=bKGzst3RzUAJYDmWf94CBY+3HlxyinxMDb9URYkQ/iggB2rNsnO2jXMZmNe+XoWSGV
         q5EvWs4ryFcWbxc1UfOg67EBsrd0xvgLH8xtpyDi0U59V9+2GPr4SaPqFwhLNZJIjQJp
         aow20p9Dl1QbV1wLqGiW38P4jFglEs1kTZiazKxEEsGBn/U+VzG3UzNnpxe1cHegYzcY
         4W3jLRT0vNbuxt7ctNKEeEHZskTemJs0yt8gUDyiUCFgGK9P0ex6XpTvDZbZPk6I2n0t
         uQcUslt9FrwcNzCXMzk0e0weYjPDdZh4cySV4nIc0bCUslf2BXU4bruUZUk5Me/zZt2J
         /vqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=w8bZ+hMV;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/kJWJoQagGRVpu1zZARpqru03iEtXY/Ngo46J7yH2Xw=;
        b=HaSpfKq+vDCQ2o9I5S1KBnMxTsB+5h/Q7zM5S5fhqTOLRL4ewNHit7YCullSJMVAoM
         TzbIlnBRpVuTnqzQUFsltzFKMUBiK5XY7PAYZMRKmPv7lnQj0MYNQ19dSVlmQh7eaLXw
         c57sJDW2bwRiAzxQPmVEdFQrUbRgwDUfZpqTDMm2pU/iB4EJQHk4sf+7nRljlMGUzuej
         LhzRg7ErUiZ80V/LpsZ2IqiKKJkDj/Z8DuAXM7VjEYiuIzZ42+G3dVLDaZ2rEWAxmcNX
         OmwxXhShxI61VDbYODF/GzfEmPGhfhI5KuQSTrARD/ib6gbG0SrwcJ/8HA4IVlqjZgzJ
         fUqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/kJWJoQagGRVpu1zZARpqru03iEtXY/Ngo46J7yH2Xw=;
        b=cZNqD3+9WHcuoinSH5hX4I1Spl29o/FMQ8MeDsIsJS/pJXI/s4iIPbx/a5GXD+HYi/
         y49hXbZypb2r8p06+2ipp2lSQkZ2x0XT1VpzqxgXPNz+59e4lgzV0ny4FhBvbPRqwPH1
         EF3nZxqGQSYRdIHVwH/aIahH/rXLPsP+yXW3ECUnbmtAj5eKA6mWbvsvkaDGmgiZoQEe
         7wH7xdLmoTJtMEkJ9orMzXQEFZKKWaqU6iJByytWsjiWxqxTO1ZVQuQiNi5mOZHJriqU
         3fxBt46UjmSPQbLLoiKz8Qbueu+6NFfpNyEwWo692yosRDZgcvQ3bQdWntJQvVYUZl7a
         Xfkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUc0Iz0km9IAuPLYvAQG4TrteU5U6Ve2InI+4fjMTcdp/IiozTF
	Ir5totKiA9XHPdF+PpKEmeg=
X-Google-Smtp-Source: APXvYqwjyzgFXdLWr/hP3sOzyqw39QFwasr8V5S0msTYxsBw3aA6JLjPQdbv8aNfrdkwGz0Qk/KvnQ==
X-Received: by 2002:a9d:6d82:: with SMTP id x2mr6886901otp.42.1570120575084;
        Thu, 03 Oct 2019 09:36:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:688:: with SMTP id 8ls601470otx.9.gmail; Thu, 03 Oct
 2019 09:36:14 -0700 (PDT)
X-Received: by 2002:a9d:730d:: with SMTP id e13mr7295398otk.145.1570120574841;
        Thu, 03 Oct 2019 09:36:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570120574; cv=none;
        d=google.com; s=arc-20160816;
        b=mNiXQp2DN36c8BQtWwAVW+7NAYXckhkwBRq1UzWwiEnl6rRxCCflv3I7BPVAs+yPLW
         Qsv8sVwl7qtpUTLL1xisZcMjGBRFzJEFF2+6FGSk1kuytPchLqI0M89MhVNxRB8Ra5Vi
         ZaKwcUMMfPiO+cwtsKM5G9be6Gdv+2bMnTChkhWo+qutL73BNWi8Qhka/6RFiAiWnPH5
         8NCxB3thZ1CJfjUA0Ew2ZFrKEMZJE2kKFftLGw5Ma7MHw6aCjKR5m2f6g10qHoxZTJam
         puoh1pAmZUuOvBwf/c94F6/bXH1k7DoLPGryi8KCuqnGTNx5Qx6+VcPOoC2ImxpYc8/t
         s/1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Gqd652/dDPnOVpBjfjl/1byuIl8xF9urEvvAf1F0A24=;
        b=ba7gm45FYj8er3OUCLJVKHL8R9L2ca41T+Iv/tOwshL8YeaYNISgp55TjOd6Ey9djn
         nYTj+q6VzjA7skvbk6RkNm4I0yVSeFZ9WeB5XcvcBO+B7Exvak+FNLIWqBI6fXdVpVrk
         mL0YzlJwa7wxs3xxaLIboMwvEhFjIMF9RVHzoHOb78ZeXFZciKoInTI8M77zbEhQoBLl
         Ktxvdu9g07CvjCOUwwVLRbYeMi+hvu3Ya4Vm8vM+h9q14T+Fq1J6acoubrkXDp+hIFW2
         UHzfgoU/xLvVRwCRV70NPjA4ffuqIBb0qJx2Otgt8HNpW4UQe/5kSDjiLJkUM1hXgLRS
         hx0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=w8bZ+hMV;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c6si202560oto.5.2019.10.03.09.36.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Oct 2019 09:36:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3C33F2070B;
	Thu,  3 Oct 2019 16:36:11 +0000 (UTC)
Date: Thu, 3 Oct 2019 17:36:08 +0100
From: Will Deacon <will@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Russell King - ARM Linux admin <linux@armlinux.org.uk>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
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
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
Message-ID: <20191003163606.iqzcxvghaw7hdqb5@willie-the-truck>
References: <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck>
 <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck>
 <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk>
 <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk>
 <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
 <CAMuHMdWPhE1nNkmL1nj3vpQhB7fP3uDs2i_ZVi0Gf9qij4W2CA@mail.gmail.com>
 <CAHk-=wgFODvdFBHzgVf3JjoBz0z6LZhOm8xvMntsvOr66ASmZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wgFODvdFBHzgVf3JjoBz0z6LZhOm8xvMntsvOr66ASmZQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=w8bZ+hMV;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Oct 02, 2019 at 01:39:40PM -0700, Linus Torvalds wrote:
> On Wed, Oct 2, 2019 at 5:56 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> >
> > >
> > > Then use the C preprocessor to force the inlining.  I'm sorry it's not
> > > as pretty as static inline functions.
> >
> > Which makes us lose the baby^H^H^H^Htype checking performed
> > on function parameters, requiring to add more ugly checks.
> 
> I'm 100% agreed on this.
> 
> If the inline change is being pushed by people who say "you should
> have used macros instead if you wanted inlining", then I will just
> revert that stupid commit that is causing problems.
> 
> No, the preprocessor is not the answer.
> 
> That said, code that relies on inlining for _correctness_ should use
> "__always_inline" and possibly even have a comment about why.
> 
> But I am considering just undoing commit 9012d011660e ("compiler:
> allow all arches to enable CONFIG_OPTIMIZE_INLINING") entirely. The
> advantages are questionable, and when the advantages are balanced
> against actual regressions and the arguments are "use macros", that
> just shows how badly thought out this was.

It's clear that opinions are divided on this issue, but you can add
an enthusiastic:

Acked-by: Will Deacon <will@kernel.org>

if you go ahead with the revert. I'm all for allowing the compiler to
make its own inlining decisions, but not when the potential for
miscompilation isn't fully understood and the proposed alternatives turn
the source into an unreadable mess. Perhaps we can do something different
for 5.5 (arch opt-in? clang only? invert the logic? work to move functions
over to __always_inline /before/ flipping the CONFIG option? ...?)

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191003163606.iqzcxvghaw7hdqb5%40willie-the-truck.
