Return-Path: <clang-built-linux+bncBD63HSEZTUIBBX4YZL4AKGQEEU6DUTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id DF50122490D
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 07:45:04 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id o9sf8337786pfp.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 22:45:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595051103; cv=pass;
        d=google.com; s=arc-20160816;
        b=BtJTVbnVycmo0FzNAx1glCuO7iZbPr3TUQo0q9Npbkze2DOyU3OAoLqa20IM9IppX4
         Y9XjS0f2AdBKYtwN1mA9UJLk5gPaOx/TCDbTkuRWpDGVHUdv3ZusRIECLVd3psDd/6wv
         ym3iH0D19Kicj/oGNz6Wwy8E7Rftrcaril+OGCIG+iBSfYEC56cyNd7stqo0LkvOxW7l
         mRvrfAXZfnEMLqQce1UTM8q5aKwA84PmEN7YneikQiUskly7XghqVx4J+q/1O5YTMfvm
         NKxrbQsHmfl17K4nZXJ464b0jUlFhwXbMiKW5ed6K6+3MiFrCQyNN6tZP7pPfrm6v22X
         xGZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=RR7qghwpXn7Y0gXAFku2R73kNnG+eG1DhFTUUrL4XbI=;
        b=l1Gpn4EnQcmyJo0Vxsl7fwhT1j3Y3HuV6OvH5sMB5Srn3Q0U6SUhOj5gyI0nXxpWbW
         bx1n31fKAmkCZmf8GAsKiSqDM1xH1Ge5QikRgzov9pE6mh49xwk4Cu2zKLC49Zvw2CWC
         02qeHMrfB+B6wjotFA9Z73YmmKjRcK6vOq9DGf5S9waYDTK8XYTWYiKQ7RNmi8OjfaTN
         ayLdKo3YRgCfgEDJlHH6jjvZdC7o2iv2z/WGYo3AyUnqClWxCEP2Y1JOHn/bCMAJwwH9
         hrGpPId4ecun/L/xwZ5MpF6BoBQAJmrllNcNgDqdYULiteDZyKrD1SLn22br+mdSQMHr
         UXiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pHbUaibC;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RR7qghwpXn7Y0gXAFku2R73kNnG+eG1DhFTUUrL4XbI=;
        b=boJ9Mz0sO/jtes+4tPo5xM4TVvjftFvBt/PxEHhJEfln3N09z6pIDEmAwu1WdVLDds
         aJbiWp8fso3tLaAQkDRPjVTcb/FZfGJYwvsTWaA5swC4NkwIpbrKg8SiEmfmV++1lV78
         03I0Qq/AiaJP1aEy1cMwWyQQsIhg4Huv8Z9EINQS1cEJ9lJIXqmmdm9O/eZAV1yNzgi/
         jk/wyNeTKAQNDO0DXNhdKJIw9sbbDrHQPbGspP9LapRDkH5mMtNoLHKlZC5k/vj5eBgH
         hG9C/UqQw5nkcAoHekiAEP3CaHy+Pp3dgRNYXj8BsMqCUpcLEESX8faROFoh/G6l/7fs
         Au3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RR7qghwpXn7Y0gXAFku2R73kNnG+eG1DhFTUUrL4XbI=;
        b=Zkz7GNPsQhOLKlNZ51WwUXcaXG7gguPH0S1RBHRikxjXkjCObPBSBE+zNvcBdT1IVE
         4esCp/RCMMO+0b3nFkuPR5/BI7YfDARoJv8WV5dhx2VIBSQcss96zkWKl5qYed58q73f
         kWn4W7ZXdv6olooqHYfdibFrrcLSdSEPkCoq8steVOMjIwf83Ett5f2Ayxih7Ip7lwS9
         4UNmQnU9mHrSQaH+6aJnZLwSW71B1F8PPjFx/4jKB/oWRStv75sX6m4R6ccYopNESx2x
         pw5lIvItm26KGkqrchfe4h8VkJTf7LAvZVX+2cObb9hFFCpqxjFmngdHOKB6SOrfJtyr
         8oCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Wkg73xYiRhvtikK27485mYznhwDwha6AASq6QeO8OCmiC+APh
	xfCoya8mKMZdotbvRj+XWvU=
X-Google-Smtp-Source: ABdhPJzGk6GtmXNLDJINDWS0nSHbG3edxQkONJY3sp2qRBImP7UL97UBgYpZNap0drWAdGoJmgRVRA==
X-Received: by 2002:a17:90a:de0d:: with SMTP id m13mr13705424pjv.23.1595051103607;
        Fri, 17 Jul 2020 22:45:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:86c3:: with SMTP id y3ls5301904pjv.0.gmail; Fri, 17
 Jul 2020 22:45:03 -0700 (PDT)
X-Received: by 2002:a17:90a:3567:: with SMTP id q94mr13585848pjb.226.1595051103221;
        Fri, 17 Jul 2020 22:45:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595051103; cv=none;
        d=google.com; s=arc-20160816;
        b=DmAmTSNSv4youjFfgu3UTHArdD2jKpTRLYbYHYIZhUWzxmJiJtiLL/andvA286J6B9
         VFJoCn9iLtuOUMbmWPiLZ/+AwszJz1MAuIqdDHJ5tVibuiRLSKr6Jqn19SeJYeeGgCgx
         xHJZZT44wnhzBLJjBxMaucMnXeQU29q2XpMuV9QBL/OntZOy6soIEavJk8OrLqJli5aL
         Dt3MaRDUw6tt0CjIHCACNhTig0HERFphyvoenknyoIF/ykgbByBScUqOBIWjOjHi+cQJ
         aVqNucCI4k8ALL3mwpgt1vnjnGxI3n4Ydce76CPvxX4eOFP6nhnephZVxO/qi6TdCFrj
         oBAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KIOpgiba9LbLSa2jZb81VjU1n89FQPPzGyVATkYvMfo=;
        b=Ps2zywPCb7A1xVfAcES/dTt0TnIn8SgeEpRHOMPH1Sjp6pX7sp664kRRmaHgz3w4c8
         J6HULVgy94jIhxNsOvw0oouyvo3zVP72luZu2Ga0WXpfghprsVf2AS6GrOvxmC6vjrPk
         ALimbVpWU+/jYLng1z05koLa6+Eza2mwbwkukduYtsT9UP1wp2HK58fR79+m0TwTxo2O
         pC4fH9d+BXfk93mquWjOVzKHLjAHcy4MwVAXUzCMT/yimJKzxcduG01ekBfWSPSnnXox
         Ma8E2yI2xDbvtTlRCxPGZCGuqxuiTO0WT0kBR/tTr+R9XBT+VZzTJbr4OwvEIEnqMtvT
         Qz8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pHbUaibC;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b8si219196pju.2.2020.07.17.22.45.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jul 2020 22:45:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D4BCE2083B
	for <clang-built-linux@googlegroups.com>; Sat, 18 Jul 2020 05:45:02 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id 18so8439539otv.6
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jul 2020 22:45:02 -0700 (PDT)
X-Received: by 2002:a9d:7553:: with SMTP id b19mr12361891otl.77.1595051102201;
 Fri, 17 Jul 2020 22:45:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
 <20200715004133.1430068-1-nivedita@alum.mit.edu> <20200717134654.GA3187880@rani.riverdale.lan>
 <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
In-Reply-To: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sat, 18 Jul 2020 08:44:50 +0300
X-Gmail-Original-Message-ID: <CAMj1kXGeSFXnuO7Y94pyBU9qfSgtsLvMoCZSfDk476BBs2ejcw@mail.gmail.com>
Message-ID: <CAMj1kXGeSFXnuO7Y94pyBU9qfSgtsLvMoCZSfDk476BBs2ejcw@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] x86/boot: Remove run-time relocations from
 compressed kernel
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"H . J . Lu" <hjl@sourceware.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=pHbUaibC;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Fri, 17 Jul 2020 at 21:17, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Fri, Jul 17, 2020 at 6:46 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Tue, Jul 14, 2020 at 08:41:26PM -0400, Arvind Sankar wrote:
> > > The compressed kernel currently contains bogus run-time relocations in
> > > the startup code in head_{32,64}.S, which are generated by the linker,
> > > but must not actually be processed at run-time.
> > >
> > > This generates warnings when linking with the BFD linker, and errors
> > > with LLD, which defaults to erroring on run-time relocations in read-only
> > > sections. It also requires the -z noreloc-overflow hack for the 64-bit
> > > kernel, which prevents us from linking it as -pie on an older BFD linker
> > > (<= 2.26) or on LLD, because the locations that are to be apparently
> > > relocated are only 32-bits in size and so cannot really have
> > > R_X86_64_RELATIVE relocations.
> > >
> > > This series aims to get rid of these relocations. I've build- and
> > > boot-tested with combinations of clang/gcc-10 with lld/bfd-2.34, and
> > > gcc-4.9.0 with bfd-2.24, skipping clang on 32-bit because it currently
> > > has other issues [0].
> > >
> >
> > Hi Thomas, Ingo, Borislav, would you be able to take a look over this
> > series in time for 5.9?
>
> Hi Arvind, thanks for the series; I'm behind on testing.  When I try
> to apply this series on top of linux-next, I get a collision in
> drivers/firmware/efi/libstub/Makefile:27 when applying "0002
> x86/boot/compressed: Force hidden visibility for all symbol
> references". Would you mind refreshing the series to avoid that
> collision?

That is not the right way to deal with conflicts against -next.

This series targets the -tip tree, and applies fine against it. If you
want to apply it on some other tree and test it, that is fine, and
highly appreciated, but 'refreshing' the series against -next means it
no longer applies to -tip, and may be based on unidentified conflict
resolutions performed by Stephen that the maintainers will have to
deal with.

Boris, Ingo, Thomas,

Mind taking v5 of this series? (With Nick's Tested-by) I think these
patches have been simmering long enough. Do note there is a conflict
against the kbuild tree, but the resolution should be straightforward.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGeSFXnuO7Y94pyBU9qfSgtsLvMoCZSfDk476BBs2ejcw%40mail.gmail.com.
