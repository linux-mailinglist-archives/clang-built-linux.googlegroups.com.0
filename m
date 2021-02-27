Return-Path: <clang-built-linux+bncBAABBRFL5CAQMGQE7QSDWTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1C6326C8F
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 10:49:57 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id n10sf349839ybb.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 01:49:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614419396; cv=pass;
        d=google.com; s=arc-20160816;
        b=wbkPxsrtXwhgKjheAcEYd7Xucy0puCYGfODO9D3Q9y3ptrcDPxhvleZ/gPPaFOrtzr
         Yti4l8KLz2likxevZ+y0XodcEC+oKJnmGVh6Sifmj7/+Dgv0XxJgTXAH8c+85Ea9fjYJ
         29qno1gvRAsMH7n5sKpsAB3E4o+LDYUN8vBAstVfXXYBosmuHpd0hp9QxZbkJ2yuEEGy
         vw8J+AnEA6wqwN1Xw/0ajQSlYtzix4BEl4UgXLtl3Q9nCl+MLNstaJY+18IBX26CKGEq
         pfT4F1LmuPsjPQYfvEBo9pUTpgXRvoDgR2jl+LQ4TVyh7LWUhpwdxOsh/tN2dt2takL3
         4npw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=F5ICRfu27bkCSLa3aoGAlqBs4e6WtkdN+oK8gOqScvg=;
        b=uJre8vX1kEBdZ+uN0Rt2hy/MFjf9mEedhGv/i88qRf14dkR5lfj+xCTkpn5YTvQhsp
         Y37V2Q1vcjqylxYuuUw+wZCZERRNlc6To43db3UqEK8uLXodqDEoVQ5SqHjGPNHZxHUY
         C9on1EOrytW8qp3y+kxI2h+VEzLtduaF7rDYjkGMhI00Utb7+74RR++pJ0XaJDcAe26D
         W4fu2lmWdW3UvgNIPFqlB8GZgAl3Amt771yBKq24Sz9eiNAg41Jy82FK1laAg3RVM+Zd
         eQy5f6dOJGFY19McESN9rg4+06Y25jBjSM1vah+6t7axx88wnBiF6TvTP1CuQ6tgFnXz
         GlyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=A9aZzVI1;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F5ICRfu27bkCSLa3aoGAlqBs4e6WtkdN+oK8gOqScvg=;
        b=JGox98i4Gd7RD+U35Q+oMi9Nm4dgoWQX6QC2kEwrYS1GWzWDz+Znv0Hkx0epG04Aga
         pbD058Pqrjsnnoq4nWqYWL4YfxXsEC88UR8P6yi3ahadpSVFOQmG1CeyT1FnqSqkNpJm
         mFCqPbehoxA6y5/T2IPAAKFc1O5ZXi9YIYRocHfVsp1wUsSMK/W81rZIx62GCosvEqsO
         uf9PEQSh7bsO1lB6xY5L08ENULWFEanw2+8SHdT4FVWtdpDGfs9PbkpFScPGWP1nmP6C
         FnFqUHmkC8lt5WCCni1Y8aj3l5vbUmtt/BrA6pRuBDe1B2ivG/K32a11X39bw39au23X
         4SDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F5ICRfu27bkCSLa3aoGAlqBs4e6WtkdN+oK8gOqScvg=;
        b=ZpLL8/Zzsn/IicRwdvTgcS15RWZpmvHjCcoB5EhZ4/mbKlJpByRqX7NpccsyOlWDfB
         x3uXyDh+eHJnYdqlkO5kjsV8UsB4VsNzXmtNYvT/+vVMy9ilcvhYC5Fh8wgsUUii8BIW
         +9TwQSb/6VVm/mL1dYLntzaP0KXcSYFGn3GFVr00KXHoI3P89hwReuuypTqyqwjiXDww
         IiDB+3YPOCoM4bg6fJZ5+T/eOXcN4lQ1EDdyL7iS7vrIr4ZaFNHPRSem2EoJ5KCj+uhM
         vWQf1+NKOtEG4gzWQjOGKmM9xU4lEkJOOYhMaxm+/jdDImxijvuyr5ToUq+st2k976CV
         TMGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533w7ulxszXdDhKsMq4aGVz/XEV82sOL1111CrSdbU8IhDR6mzkD
	GIZkcXqeMu4cT4zLNJmsKXo=
X-Google-Smtp-Source: ABdhPJwHNSdNLAz2Qlfz+jKHDfQHWRazEtHnXJH1QSf8AQgAMwZp+RrbkdTH9kPEkk5CGV3YrMrP4Q==
X-Received: by 2002:a5b:751:: with SMTP id s17mr10283816ybq.111.1614419396168;
        Sat, 27 Feb 2021 01:49:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d907:: with SMTP id q7ls5539292ybg.3.gmail; Sat, 27 Feb
 2021 01:49:55 -0800 (PST)
X-Received: by 2002:a25:482:: with SMTP id 124mr10402534ybe.315.1614419395735;
        Sat, 27 Feb 2021 01:49:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614419395; cv=none;
        d=google.com; s=arc-20160816;
        b=FExaZDkBdcR3f+pAthKoZB/jK47Pwuct8lno42giT2mi7DmhU7rIBHqmoPN4gLyYei
         6jIqgiccLJ3oAgLe30OYQ0om11m0Nzzp/CXMvZqc4uslFhA8vFP1dlTMXVdAScBjWxyE
         HLIK0TCCzOHHgHXeminajybJTnfCUjM/He9+FoKzF22tiRPVno2AhjjfW5G1L5P+OZAu
         dZKz7qtmA3a+tT7hmg+1lvdNfETbDfGv0pDwA3Vr00262sM1mTpBAnZmq+qjEaL6KVbS
         obsFBGowaytZ6fqRiUcKaC8JkxkdROUvIx04KDweS0dSwR/hNbmN4wmlnlga58P32Ces
         hkyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RjC8sWt6UvSuJcH8veTYzBozlM/fxqkUrQD0YLsaVtg=;
        b=YH/1Fa+RjJttkHEensqtNkturQJv8d/RLqOSfE1+uXXnBIK6WUQQcX0rPyZ4APNCEa
         VNa5msYy1+qYNA2q4iRhfbcAMIfSUQeLFeRoyC73S/aqhJ+mTVq/q3q4AQfI+cmViisZ
         yewLq2Sxf1kAL5FGlfEG+UmqRuVVF7qkzVFadqVKxB4u21cmSBnzBND1gtWaI4MaTFLn
         R1qtCkaG8gk7WFSFWiGdcuIiZZ7znv2so6TvfHF8L/SXucSSA6fy5ERvlwSG5enShTlH
         FTzIh395iF3aFuYRN9Ak7pzNLNVSONSJf1+33TLMUW9cINPPPXDAwYm2muRzdgwVOlR8
         f8kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=A9aZzVI1;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t17si61284ybl.2.2021.02.27.01.49.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2021 01:49:55 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 971A464EE2
	for <clang-built-linux@googlegroups.com>; Sat, 27 Feb 2021 09:49:54 +0000 (UTC)
Received: by mail-oi1-f182.google.com with SMTP id w69so12591149oif.1
        for <clang-built-linux@googlegroups.com>; Sat, 27 Feb 2021 01:49:54 -0800 (PST)
X-Received: by 2002:aca:c381:: with SMTP id t123mr3973837oif.4.1614419393843;
 Sat, 27 Feb 2021 01:49:53 -0800 (PST)
MIME-Version: 1.0
References: <20210225112122.2198845-1-arnd@kernel.org> <20210226211323.arkvjnr4hifxapqu@google.com>
In-Reply-To: <20210226211323.arkvjnr4hifxapqu@google.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Sat, 27 Feb 2021 10:49:37 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2bLKe3js4SKeZoGp8B51+rpW6G3KvpbJ5=y83sxHSu6g@mail.gmail.com>
Message-ID: <CAK8P3a2bLKe3js4SKeZoGp8B51+rpW6G3KvpbJ5=y83sxHSu6g@mail.gmail.com>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
To: Fangrui Song <maskray@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Mark Brown <broonie@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Kristina Martsenko <kristina.martsenko@arm.com>, Ionela Voinescu <ionela.voinescu@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Andrew Scull <ascull@google.com>, 
	David Brazdil <dbrazdil@google.com>, Marc Zyngier <maz@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nicholas Piggin <npiggin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=A9aZzVI1;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Fri, Feb 26, 2021 at 10:13 PM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> For folks who are interested in --gc-sections on metadata sections,
> I want to bring you awareness of the implication of __start_/__stop_ symbols and C identifier name sections.
> You can see https://github.com/ClangBuiltLinux/linux/issues/1307 for a summary.
> (Its linked blog article has some examples.)
>
> In the kernel linker scripts, most C identifier name sections begin with double-underscore __.
> Some are surrounded by `KEEP(...)`, some are not.
>
> * A `KEEP` keyword has GC root semantics and makes ld --gc-sections ineffectful.
> * Without `KEEP`, __start_/__stop_ references from a live input section
>    can unnecessarily retain all the associated C identifier name input
>    sections. The new ld.lld option `-z start-stop-gc` can defeat this rule.
>
> As an example, a __start___jump_table reference from a live section
> causes all `__jump_table` input section to be retained, even if you
> change `KEEP(__jump_table)` to `(__jump_table)`.
> (If you change the symbol name from `__start_${section}` to something
> else (e.g. `__start${section}`), the rule will not apply.)

I suspect the __start_* symbols are cargo-culted by many developers
copying stuff around between kernel linker scripts, that's certainly how I
approach making changes to it normally without a deeper understanding
of how the linker actually works or what the different bits of syntax mean
there.

I see the original vmlinux.lds linker script showed up in linux-2.1.23, and
it contained

+  . = ALIGN(16);               /* Exception table */
+  __start___ex_table = .;
+  __ex_table : { *(__ex_table) }
+  __stop___ex_table = .;
+
+  __start___ksymtab = .;       /* Kernel symbol table */
+  __ksymtab : { *(__ksymtab) }
+  __stop___ksymtab = .;

originally for arch/sparc, and shortly afterwards for i386. The magic
__ex_table section was first used in linux-2.1.7 without a linker
script. It's probably a good idea to try cleaning these up by using
non-magic start/stop symbols for all sections, and relying on KEEP()
instead where needed.

> There are a lot of KEEP usage. Perhaps some can be dropped to facilitate
> ld --gc-sections.

I see a lot of these were added by Nick Piggin (added to Cc) in this commit:

commit 266ff2a8f51f02b429a987d87634697eb0d01d6a
Author: Nicholas Piggin <npiggin@gmail.com>
Date:   Wed May 9 22:59:58 2018 +1000

    kbuild: Fix asm-generic/vmlinux.lds.h for LD_DEAD_CODE_DATA_ELIMINATION

    KEEP more tables, and add the function/data section wildcard to more
    section selections.

    This is a little ad-hoc at the moment, but kernel code should be moved
    to consistently use .text..x (note: double dots) for explicit sections
    and all references to it in the linker script can be made with
    TEXT_MAIN, and similarly for other sections.

    For now, let's see if major architectures move to enabling this option
    then we can do some refactoring passes. Otherwise if it remains unused
    or superseded by LTO, this may not be required.

    Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
    Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

which apparently was intentionally cautious.

Unlike what Nick expected in his submission, I now think the annotations
will be needed for LTO just like they are for --gc-sections.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2bLKe3js4SKeZoGp8B51%2BrpW6G3KvpbJ5%3Dy83sxHSu6g%40mail.gmail.com.
