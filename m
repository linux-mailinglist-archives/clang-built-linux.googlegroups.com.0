Return-Path: <clang-built-linux+bncBCS7XUWOUULBB6GI4WAQMGQEUXKA4NA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C35A326930
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 22:13:30 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id l18sf4445078oic.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 13:13:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614374009; cv=pass;
        d=google.com; s=arc-20160816;
        b=A8FNR0MJkYFQb+LQKktpZuYx+Rh3BIj5EhGtnm+66BHvlmnqsf51uJigXJBHM7zOzZ
         L73O6RXAtqC7hWV2d43hyGabUflR4M28ZBFGStDl3ue3VBnC1laToMzOMhUKUjFUoQ7P
         T219mUclM/V97gxk5Q6/6NmbklMMrYmrhPbEswP2pPQjC8OSGBDupntfdvkZy+Y4BAnE
         90bgtroDpPWmZe7wTbjmK0Ah9TMx5NcmU/f1+A2spmoDg5baUrDAolNLF7rEZDBprVdj
         m6g51EY3zzVltQRuM2OGiT6+oLMxMIN9k9aPO6rC2FvHyKWauduEivXYwXikoJTmDulR
         ekVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=+VJpu3ZNa642uZ6vlndIIjJJBDkkuXcyi5ASbx1j+8Y=;
        b=XiTbL45k2eAGsDzc4fbYGmcsg707FHcVJ7g+FME1Y4LecJf3wf/6X+HsVcTETfw+B0
         yhBq/f32npQ+/r1qb1nZsIVzeVH/HNu8jPRwDx9nEEf3PGUaI0S3CyUZwdBcu0F5Ct8H
         07hjGimO3WDmKfhuaVqq0J/8V7YfNn9ifS3FNdFUNxZAzLj6UVQ8eqqAXQ4d0m8gaGNz
         iw0viKgt5MzY0T0ENbvXrZQbsbKhweneRE3SORi2CEaT6vdmqnPlFJn8Dax/Vwjo00di
         GAAJrPZRnryqmno/RxlUne+C9qHYgBOn6JD4jAALo2zvNTXuIzRyMH8LSTpRzH5bOeqg
         U8Pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XcOK4eUE;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+VJpu3ZNa642uZ6vlndIIjJJBDkkuXcyi5ASbx1j+8Y=;
        b=dqlmr1zKqNWWu/h4xrz3nVO5Lls9LRP87iyBBtqFtC13tg+DkEiVf+yoSxj4mDYdQK
         gJWaJzKjzgbw3XsdM1b2m3KspOTIyYXXqemYOpxpF2FrMMRpQWkTDECiBHicOfx2Td6z
         lWdJpoKUuetazCbr7K07awzaoQiv6GRw/0qC8Yr8acbpSH3Da7a5VLGQA85P9llqbCri
         fKcDom48gKhwfs+mUmMCl97QI/BudAxblBG5BL0Udv8/qvwYlRcagIIvgi3vXwceF+sw
         vDIDvbRQrVd7Yb2eo2Ra3jbglIwXXOay0wzv7Ed5eIAxchNiWikSXejGqO3DB3qfhVfa
         Mjvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+VJpu3ZNa642uZ6vlndIIjJJBDkkuXcyi5ASbx1j+8Y=;
        b=VqVUWnCwT7nVKp9+nBJ9Ko3R0Xp9efQ9x+ibkqMaJRYfyBe0GZNE5im04HeTnBiKlc
         C5m/mD1KuDXH8aeJls94F6ZAtYx1xe6Zqpzd3wWVmDJEwIzR9r/dRCHE5VhxSShfo4Ew
         N1uHg2uQxTv8U8803OPLLd8TuPRcqwwbVp84No3gzCPpGgPESZlGJix6r36AGG5ld+Mp
         u5zDhDeQSgiI2uUcJLSREdCdwZ1zD6+0gcWHNy8Qcu0Pc2mcS+Av/moGdmqPnzSIXtql
         83+5aTMuzr/aUnV4GOFXhJd3fgbVf+8Du6aasEP3hryc3AnT8n4pRvzuUC0fawptH8GK
         CzqA==
X-Gm-Message-State: AOAM533o5YBlf/EHdY40HwoVzTVSpe46Fb6/AsVhtWMPiFwPVZbms/yd
	yL4XFJHsR4Phx4lRsniqZVY=
X-Google-Smtp-Source: ABdhPJxYLzQiYMb81btDg5hNFpslgsj37dggrfYMddMaaAwjndTQe6bl4fBY8Rns7HqEhc6/KHA+RQ==
X-Received: by 2002:a9d:a46:: with SMTP id 64mr3840890otg.320.1614374008861;
        Fri, 26 Feb 2021 13:13:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf52:: with SMTP id f79ls2671072oig.1.gmail; Fri, 26 Feb
 2021 13:13:28 -0800 (PST)
X-Received: by 2002:aca:d946:: with SMTP id q67mr3566577oig.142.1614374008511;
        Fri, 26 Feb 2021 13:13:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614374008; cv=none;
        d=google.com; s=arc-20160816;
        b=GCKLk41/DrEEzKTPZuGmizXsbyjV6NU9eSAsQksUT0qM9T9Uoki/0rr2z6WM8qyZ7N
         O0kzftdnpyhtzKDZ6uenNwVLxew0KRJ4Gi51IU3OZwZSnDoXim9LrMWlNVox+n3FkeSG
         UaWoX8Cku3kJxTOF5QyiSA665HDfBxUp/VG0ScpHeODuwDjOsD/nzOKMObdcf7eZ3G3q
         UVlzjpZy/iVrq7OBGTX0JfOo89qPeyoR2C3/UthkcercbF69w4s4cKWLAUfosdhxCz7a
         VUqf2awrdNUFWYp2Grdq6Z6TUI4PeX5PSPxWtUzXixOag8BM5cM0TBQ03qaxHCql2aOy
         ZkkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qtfEoqhvDCcQyVPF7DeFpyDmdnF0fDJbf85f4uUlLxM=;
        b=qhV9FloxFu9rZTz5fxrA6+w1Oe153WPV3M2WktP6++EoNmsIUnuOI9N5Y91VOSJfji
         EcVTWvlIcbBGv3RkewBURfDn0No5IhNGwNalJvHPiPRjOy1Oj+4ssU2TeUf4xMz41hAT
         8gS/sBnVHlTx78zB0cSLBouHmZZqO8O187YiQ87gtCXX+1ocVhiwrmWmdRXroHt5Cr4r
         MaMVyYH+tgtWJYP9Qlb19F6DivA8KpCDT9BYS54XkEwFb8btqH0aOsn2d0E8dODjRzJ5
         yQfP+5/NTyGj3v6gSIhEvjUjnbL3ZvhZOT1D0fOilzGkVerfKcoV8krhZccHMU8a9Sgs
         7Rag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XcOK4eUE;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id f20si436426oiw.1.2021.02.26.13.13.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 13:13:28 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Received: by mail-pg1-x534.google.com with SMTP id a4so6933535pgc.11
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 13:13:28 -0800 (PST)
X-Received: by 2002:a63:4d52:: with SMTP id n18mr4411963pgl.237.1614374007943;
        Fri, 26 Feb 2021 13:13:27 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:48ad:d4d0:f627:c01f])
        by smtp.gmail.com with ESMTPSA id u11sm3638376pjx.28.2021.02.26.13.13.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Feb 2021 13:13:27 -0800 (PST)
Date: Fri, 26 Feb 2021 13:13:23 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
	Mark Brown <broonie@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Kristina Martsenko <kristina.martsenko@arm.com>,
	Ionela Voinescu <ionela.voinescu@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Andrew Scull <ascull@google.com>,
	David Brazdil <dbrazdil@google.com>, Marc Zyngier <maz@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
Message-ID: <20210226211323.arkvjnr4hifxapqu@google.com>
References: <20210225112122.2198845-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210225112122.2198845-1-arnd@kernel.org>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XcOK4eUE;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::534
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-02-25, Arnd Bergmann wrote:
>From: Arnd Bergmann <arnd@arndb.de>
>
>When looking at kernel size optimizations, I found that arm64
>does not currently support HAVE_LD_DEAD_CODE_DATA_ELIMINATION,
>which enables the --gc-sections flag to the linker.
>
>I see that for a defconfig build with llvm, there are some
>notable improvements from enabling this, in particular when
>combined with the recently added CONFIG_LTO_CLANG_THIN
>and CONFIG_TRIM_UNUSED_KSYMS:
>
>   text    data     bss     dec     hex filename
>16570322 10998617 506468 28075407 1ac658f defconfig/vmlinux
>16318793 10569913 506468 27395174 1a20466 trim_defconfig/vmlinux
>16281234 10984848 504291 27770373 1a7be05 gc_defconfig/vmlinux
>16029705 10556880 504355 27090940 19d5ffc gc+trim_defconfig/vmlinux
>17040142 11102945 504196 28647283 1b51f73 thinlto_defconfig/vmlinux
>16788613 10663201 504196 27956010 1aa932a thinlto+trim_defconfig/vmlinux
>16347062 11043384 502499 27892945 1a99cd1 gc+thinlto_defconfig/vmlinux
>15759453 10532792 502395 26794640 198da90 gc+thinlto+trim_defconfig/vmlinux
>
>I needed a small change to the linker script to get clean randconfig
>builds, but I have not done any meaningful boot testing on it to
>see if it works. If there are no regressions, I wonder whether this
>should be autmatically done for LTO builds, given that it improves
>both kernel size and compile speed.
>
>Link: https://lore.kernel.org/lkml/CAK8P3a05VZ9hSKRzVTxTn+1nf9E+gqebJWTj6N23nfm+ELHt9A@mail.gmail.com/
>Signed-off-by: Arnd Bergmann <arnd@arndb.de>

For folks who are interested in --gc-sections on metadata sections,
I want to bring you awareness of the implication of __start_/__stop_ symbols and C identifier name sections.
You can see https://github.com/ClangBuiltLinux/linux/issues/1307 for a summary.
(Its linked blog article has some examples.)

In the kernel linker scripts, most C identifier name sections begin with double-underscore __.
Some are surrounded by `KEEP(...)`, some are not.

* A `KEEP` keyword has GC root semantics and makes ld --gc-sections ineffectful.
* Without `KEEP`, __start_/__stop_ references from a live input section
   can unnecessarily retain all the associated C identifier name input
   sections. The new ld.lld option `-z start-stop-gc` can defeat this rule.

As an example, a __start___jump_table reference from a live section
causes all `__jump_table` input section to be retained, even if you
change `KEEP(__jump_table)` to `(__jump_table)`.
(If you change the symbol name from `__start_${section}` to something
else (e.g. `__start${section}`), the rule will not apply.)


There are a lot of KEEP usage. Perhaps some can be dropped to facilitate
ld --gc-sections.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210226211323.arkvjnr4hifxapqu%40google.com.
