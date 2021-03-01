Return-Path: <clang-built-linux+bncBDN7FYMXXEORBQP66CAQMGQEVROIY7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 7385D3275B6
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Mar 2021 02:11:30 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id t6sf8566972qkt.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Feb 2021 17:11:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614561089; cv=pass;
        d=google.com; s=arc-20160816;
        b=edPOghB2BzIlPeX+GxnLHz/twc8/R6owZhgnELTHp6wf9eB63qRFWu6aR5rXkVg2YF
         X1k8fvwFDWy/MV4d0+cnh39BoT0LJjHCmKCOxRBPaKjnGGNmpuKMESfku9I+/Nv0hLrr
         U+EiE2AhBipnmNDWwE4hYA4IVcUv91u99IceV9NQMq87Q9Z9RM1Fltw0M/khGo+ClTZ7
         5LdSiI886yWZJ5Zpw2+4cT00HpSIFrwGFNVrrjGCeaIJB9v1+ihY1Kuc4z4Hcjc1xaDn
         0PaWDH8uORqg/76aRJ/P/pHSPLXeLxfhN+llreKMzIUCFlMKFcFCKuxl1nPIsg2xgzmZ
         A42A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:mime-version:in-reply-to
         :references:cc:to:subject:from:date:sender:dkim-signature
         :dkim-signature;
        bh=rZ2UhQGcNsjqzmO+cOEP5X4TJx6njJ5QUtpqmR5F6B8=;
        b=xyoXrjftPrtRzgyPkaijkBWFU1eIajqjQ14svwPvuKraJ6bWedSYqxBbqsKLQ+TnS0
         DNdg8pyc0eL4mDflRgPGa7rilZPoIcgJUdbgazIAVrfoxt/fh6RYc/jAgkdt/8SsJxw0
         oH2JXdW2VEggjrjpsmhuxZEqt3rpMe0zDxUpdUYj6sef8XCw4W9/om4WTQBLSVPb2JPu
         oUeT4AboS1vmDjQAfhVElCO5tnIU+eL7NeXSXXTnmcEnY7FdfrhO+F0k38qBBJaGOIiL
         oxhAqNYfhGF6Lc4PMouIyj0qKruGKV0cTmm9rkm1/Pkl5qxejDQkHYMGjE7qUQ3O+lbD
         GXCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m0FkE2kr;
       spf=pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=npiggin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:subject:to:cc:references:in-reply-to:mime-version
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rZ2UhQGcNsjqzmO+cOEP5X4TJx6njJ5QUtpqmR5F6B8=;
        b=Ymt4OHuiXioEYTQm+WpRdk2R/D2QAceSiUw4UQMwx93d0iMJv9JnVtmm5naSH1DYhG
         juZQiHZBbvqTZmpAvIo939bl+RZQFsB6mOC6YyFPzBGU0xlzh8YReu5Q9Ym6O+X6/V+g
         ZcS2WVKqtJYbPbGT55XynqiCQsFiUhFbrxArinksPIEcrvaCHQPcGxlf4izBVLgkA9FN
         hbJ3mlflODLRLR4gQoa7oWKLxBTsf4tQmLzqVjnugA9/aSiPXcaoWVqgL1ZECMSCZu0g
         hh44tDECIfT2K0xOHXaDoqALKFa9sLHIKu8b9KSZjvzYRkMVkwX0/YOiiYeFULoZD9w7
         Z8Xg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:subject:to:cc:references:in-reply-to:mime-version
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rZ2UhQGcNsjqzmO+cOEP5X4TJx6njJ5QUtpqmR5F6B8=;
        b=SLJUcYlw6z4FEH+jvHtHpe8ZdZfc8iWSclwi83jk9Gi7II5oCV2J71V1qg8pXNeT1+
         lCABqS/IqPRB15aCNy6MXPYj/Ecx/lDXaWLhTVjhhQFf5yqq1JGOUcTKiSiJM5KQueBw
         l51hLdovtleHz7/SPknsgqoIFwyhXqqiTglhoAYUykV5vwusLpeBFRkZR/36jXpR8Bd7
         y0wRQlz4oEvriwSZNWn5HJHNj8C6O56oEwT/x6b2smUdh3UHnTycmb28CfSiAcqfizLw
         zJ3Vg5KjxUznVhRQ/sDT1oAzO/7URyvx0o3Z8Xs6XSdLtXBvY3t6WsvDnLpRinmy+tll
         ikXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:subject:to:cc:references
         :in-reply-to:mime-version:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rZ2UhQGcNsjqzmO+cOEP5X4TJx6njJ5QUtpqmR5F6B8=;
        b=PzmKfkEeqz11i2X/h0tsgEuX4yaVu+GG/qmFgBhc9kAjJ+pQ2lsoqvBvLdTKXLK8sU
         GFNm1xfN3s1jr/Col9NHxYOB6ienHcWUyWWHWY224Ke0pGN1XJiCdQFo4cFKIlYr8I4L
         W7vS9YqtyKEb6oOILoqjqknzPXeDq4PjUAMGozL6a+UTrzN6a76dKhnb9r7g0EnKBqfI
         mkXwbHCMv1ohMsTBTtpjpaDBtWif8S4EIXx8HLPdOZfeJvwMaQb/E0g3gX28TWxpS2ex
         wPmYe5sifxDPH9oeypTEAAdtT8dMcGBiBJ5NaIGRlpfM23ZX8RHi/KjK7AMohBJz7XDR
         ZAKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530eFv5TjSxMcWqdfFGcyOA13Xr7u3cn5pKXxbr09OOfaLQdRXrA
	a71J2tWmJj3qlXRySiJSnTQ=
X-Google-Smtp-Source: ABdhPJwlT18Lk101LDSttGO9FUBsax18jcj0JwjIPG+rjmOMpw3nmkc67AuWWsY+bAxEs6WWQd7jZA==
X-Received: by 2002:a37:a2c8:: with SMTP id l191mr12805401qke.413.1614561089552;
        Sun, 28 Feb 2021 17:11:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:c207:: with SMTP id i7ls5655390qkm.9.gmail; Sun, 28 Feb
 2021 17:11:29 -0800 (PST)
X-Received: by 2002:a05:620a:a12:: with SMTP id i18mr6229747qka.119.1614561089137;
        Sun, 28 Feb 2021 17:11:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614561089; cv=none;
        d=google.com; s=arc-20160816;
        b=WeDLZ7QAbmmAkjfNnRDqDlPxTdN/BFDqC942yO140y6bCiBqxZijGpS5JhmMcI5c7n
         j072gMQmmK7iv5b9rYQtyjglMW7aM6itY2RegWoWoNWDbi5/+aTc18rs1G/xClBRw4gr
         46L2JhMEE9SOdUqmYcE4F7yrbqCAd0EnlR94WyRUNxyJXuuqfcGFJ0BOJKkzZRw/byzA
         plUvxmpPAHgHKfQ91s0Me4Hu+pfVj7P+ugWJ9VG6UZ6y8NnQv+tpRUYp02WOGP4hXXep
         +p+LDEuS4VG8waI3/CovZTF/yeoXmgeSUoEh3AbgOMx9eSXui6tZDPq6U7udW/WPKg3A
         MKpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:mime-version:in-reply-to
         :references:cc:to:subject:from:date:dkim-signature;
        bh=lt0oVa4TTqOxC4dz7vJKEQu8Xc7A+35tptwF7QqK3/k=;
        b=uHzRwBQJU5D2GIcXZ5vq68lWGX/HT8IaHv6fqblT39zKh7g/sqpF7idGzepviQZxhV
         ujKWbF1sMEj+YBonNlGBt/Ho0xpd4V/rbyHtUFQ0T/kLH7dZMBTOBSMYKquw5QqchlRU
         Qcw8XCvYZ8VNUJ8O4HsubnU7eOD5tyJsPC+3TX/A//cW7xair5V2aR0kZEf3Ww0fI9ra
         Kd7Ul7z6YRWyjXe+vOc7hhHu663RNo+7NfbRprsS5WyqCSjPh+p3DESS9aqwZ8/fy6/V
         27CxUDZM8lSH6xF7Ko1DhHOzwLRi0BRsANsIsWoVYVNLYi693r2bjyvKgDejjleMENtp
         go7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m0FkE2kr;
       spf=pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=npiggin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id f10si677985qko.5.2021.02.28.17.11.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Feb 2021 17:11:29 -0800 (PST)
Received-SPF: pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id s23so10613726pji.1
        for <clang-built-linux@googlegroups.com>; Sun, 28 Feb 2021 17:11:29 -0800 (PST)
X-Received: by 2002:a17:90a:16d7:: with SMTP id y23mr15152020pje.227.1614561088230;
        Sun, 28 Feb 2021 17:11:28 -0800 (PST)
Received: from localhost (58-6-239-121.tpgi.com.au. [58.6.239.121])
        by smtp.gmail.com with ESMTPSA id c15sm14911942pfj.170.2021.02.28.17.11.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Feb 2021 17:11:27 -0800 (PST)
Date: Mon, 01 Mar 2021 11:11:22 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
To: Arnd Bergmann <arnd@kernel.org>, Fangrui Song <maskray@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Andrew Scull <ascull@google.com>, Mark Brown <broonie@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>, clang-built-linux
	<clang-built-linux@googlegroups.com>, David Brazdil <dbrazdil@google.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>, Ionela Voinescu
	<ionela.voinescu@arm.com>, Kees Cook <keescook@chromium.org>,
	Kristina Martsenko <kristina.martsenko@arm.com>, Linux ARM
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	Marc Zyngier <maz@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>, Vincenzo Frascino
	<vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>, Nicolas Pitre
	<nico@fluxnic.net>
References: <20210225112122.2198845-1-arnd@kernel.org>
	<20210226211323.arkvjnr4hifxapqu@google.com>
	<CAK8P3a2bLKe3js4SKeZoGp8B51+rpW6G3KvpbJ5=y83sxHSu6g@mail.gmail.com>
In-Reply-To: <CAK8P3a2bLKe3js4SKeZoGp8B51+rpW6G3KvpbJ5=y83sxHSu6g@mail.gmail.com>
MIME-Version: 1.0
Message-Id: <1614559739.p25z5x88wl.astroid@bobo.none>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: npiggin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=m0FkE2kr;       spf=pass
 (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::102b
 as permitted sender) smtp.mailfrom=npiggin@gmail.com;       dmarc=pass
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

Excerpts from Arnd Bergmann's message of February 27, 2021 7:49 pm:
> On Fri, Feb 26, 2021 at 10:13 PM 'Fangrui Song' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
>>
>> For folks who are interested in --gc-sections on metadata sections,
>> I want to bring you awareness of the implication of __start_/__stop_ symbols and C identifier name sections.
>> You can see https://github.com/ClangBuiltLinux/linux/issues/1307 for a summary.
>> (Its linked blog article has some examples.)
>>
>> In the kernel linker scripts, most C identifier name sections begin with double-underscore __.
>> Some are surrounded by `KEEP(...)`, some are not.
>>
>> * A `KEEP` keyword has GC root semantics and makes ld --gc-sections ineffectful.
>> * Without `KEEP`, __start_/__stop_ references from a live input section
>>    can unnecessarily retain all the associated C identifier name input
>>    sections. The new ld.lld option `-z start-stop-gc` can defeat this rule.
>>
>> As an example, a __start___jump_table reference from a live section
>> causes all `__jump_table` input section to be retained, even if you
>> change `KEEP(__jump_table)` to `(__jump_table)`.
>> (If you change the symbol name from `__start_${section}` to something
>> else (e.g. `__start${section}`), the rule will not apply.)
> 
> I suspect the __start_* symbols are cargo-culted by many developers
> copying stuff around between kernel linker scripts, that's certainly how I
> approach making changes to it normally without a deeper understanding
> of how the linker actually works or what the different bits of syntax mean
> there.
> 
> I see the original vmlinux.lds linker script showed up in linux-2.1.23, and
> it contained
> 
> +  . = ALIGN(16);               /* Exception table */
> +  __start___ex_table = .;
> +  __ex_table : { *(__ex_table) }
> +  __stop___ex_table = .;
> +
> +  __start___ksymtab = .;       /* Kernel symbol table */
> +  __ksymtab : { *(__ksymtab) }
> +  __stop___ksymtab = .;
> 
> originally for arch/sparc, and shortly afterwards for i386. The magic
> __ex_table section was first used in linux-2.1.7 without a linker
> script. It's probably a good idea to try cleaning these up by using
> non-magic start/stop symbols for all sections, and relying on KEEP()
> instead where needed.
> 
>> There are a lot of KEEP usage. Perhaps some can be dropped to facilitate
>> ld --gc-sections.
> 
> I see a lot of these were added by Nick Piggin (added to Cc) in this commit:
> 
> commit 266ff2a8f51f02b429a987d87634697eb0d01d6a
> Author: Nicholas Piggin <npiggin@gmail.com>
> Date:   Wed May 9 22:59:58 2018 +1000
> 
>     kbuild: Fix asm-generic/vmlinux.lds.h for LD_DEAD_CODE_DATA_ELIMINATION
> 
>     KEEP more tables, and add the function/data section wildcard to more
>     section selections.
> 
>     This is a little ad-hoc at the moment, but kernel code should be moved
>     to consistently use .text..x (note: double dots) for explicit sections
>     and all references to it in the linker script can be made with
>     TEXT_MAIN, and similarly for other sections.
> 
>     For now, let's see if major architectures move to enabling this option
>     then we can do some refactoring passes. Otherwise if it remains unused
>     or superseded by LTO, this may not be required.
> 
>     Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
>     Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> 
> which apparently was intentionally cautious.
> 
> Unlike what Nick expected in his submission, I now think the annotations
> will be needed for LTO just like they are for --gc-sections.

Yeah I wasn't sure exactly what LTO looks like or how it would work.
I thought perhaps LTO might be able to find dead code with circular / 
back references, we could put references from the code back to these 
tables or something so they would be kept without KEEP. I don't know, I 
was handwaving!

I managed to get powerpc (and IIRC x86?) working with gc sections with
those KEEP annotations, but effectiveness of course is far worse than 
what Nicolas was able to achieve with all his techniques and tricks.

But yes unless there is some other mechanism to handle these tables, 
then KEEP probably has to stay. I suggest this wants a very explicit and 
systematic way to handle it (maybe with some toolchain support) rather 
than trying to just remove things case by case and see what breaks.

I don't know if Nicolas is still been working on his shrinking patches
recenty but he probably knows more than anyone about this stuff.

Thanks,
Nick

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1614559739.p25z5x88wl.astroid%40bobo.none.
