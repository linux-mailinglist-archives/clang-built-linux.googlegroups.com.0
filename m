Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBNVFTL5AKGQECWKJFJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A52253568
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 18:49:59 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id w9sf1660961ior.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 09:49:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598460598; cv=pass;
        d=google.com; s=arc-20160816;
        b=0GNS99vi7+daBQNYyPnXFhXicMNgeo/PgZGWc4jeucwRo6qbxs/ugmkLWvI8WYWknO
         HTG829HOjduZ8q1ruTYjOJ+OYcPPzoIBmMUnFARA9cwUSWZ9KZ8p2Jt0K3Rtu/OaPm6k
         m13QGRjJRN5aFfOTkU5yHQBVEBNbISrnUbzJiDdkZ8QJ/HWKiBv849Y3i2Y7qOliBhyC
         jBHYT8htEEhf+uDpsCPrWb906/WApjGhAGIXhDE4J4uwMZ3zb4wi1cipXr37afvsOaRP
         9pXQdbu/kGKh7G69Zj6cxlmdLqs6TdkoXY7PsEXKU2lxUVYYlO2CRv5IC3OWlB1t4U+s
         9C8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=RvwqrsTsBOkBC2HllubUaCKM6+GO/vpViA7bAegD7xQ=;
        b=bHijVwSF9xQorb8s9I2f6V9e9B8q0lGNmEDXH4QgWlCBtsyX9dDshsH8lJ5IcTxGZE
         QQf8jQ/l/OVPHBX1/vIZ8HZjDwm0tmriwq1iDKNmyI1Olj+3tuYccVZFgrExlj2146mN
         Uzmo2uEOSUzC2BhcXU3OKUFJXYeckFQA08a6tEmI8ReJQrToK+WMnMCUSXYM2UN9u7O9
         sq8veSQH7kEIrKobzAyc8KP+iVKRhpIsJKCTrbiiczLMDZ/7as4AWQkrbr9uxaSCeo+4
         Wl2dqf5F++pWapadMOjiCP1dphYkauNX1IAXLaajCCcxRwSksC+hj9ffdlfzjaBPF2lK
         bw6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=hAaAFdF3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RvwqrsTsBOkBC2HllubUaCKM6+GO/vpViA7bAegD7xQ=;
        b=PmwAY09Ft/WPSBNjmLqwe28zgnQs6L5XGgNNcjLULoCOr5PA5iFhqPiga8cuiVVHV0
         en7nhQ5y+7Tq5ROMZ/6Q7BGOAGSouI/ars79H6zvgZ6bqTDS5vdVrCsA6hyQs8UVPqmq
         0zNGIZB4tBfkG8tfs5+AbY9Hf9tZAvICaN802TtDiFC7cn88T07fRmkHRh9emH4xQLQg
         fG3NjAv+pMKDOrQWsT2SRR8oigmrlHTZ/XCpkGZuY25Eu63CLvhZJepVJgGEjwiG2Mpu
         xt3W7x6uP18gCA44z7qTIMaZUqfs01klsv/zdsFRC1syBkWhZ5+2icep+ju1M/vgTX1L
         uZRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RvwqrsTsBOkBC2HllubUaCKM6+GO/vpViA7bAegD7xQ=;
        b=WCFKJjm8evrx/S9TIjNCibT0+sgAuOYzdqyElAJQR+Wgz7BTPD4eMEu5DxBGLuZucp
         tW15PyOqDtCbUa+ONA6UANu+YcuHeLSXFXtO+MPkHchyaWP2dJ0Syfr14oPMz2Vl9ahy
         7Vtfeui5fYcRFtAohU4UepXu2wUmmeAui0AtNGOyerHTh9tupQ1RJkKUtZjXKFXAmyKm
         EQgkqPHKlX/mDdr8v+4fOd+WPnEZMX8ntgOuOSAHthYq7s1D50/lueLHlom4Y65fqH7R
         YkiS1IMT/QfEfaYsKulZbQ7lDhQg+cFJJjamguV3/rdpERMQg4oIgRBu/r8sy4aS/fIZ
         If+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530VGwV26YMoIHXxypigzBS4f9aRi5Yq+goy5rXBnxOQfQeL1CGh
	ivG5SVEtc0GLXhjtzZSVRG0=
X-Google-Smtp-Source: ABdhPJyXK9LkTQCF4dJ6rQl6pRiqM85kQ7d78MY0wPGYQgCWGS9m1BUJAAz/eF/QH9NJKAmibn1ULw==
X-Received: by 2002:a05:6e02:ef3:: with SMTP id j19mr14647813ilk.227.1598460598446;
        Wed, 26 Aug 2020 09:49:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:d708:: with SMTP id v8ls479921iom.3.gmail; Wed, 26 Aug
 2020 09:49:58 -0700 (PDT)
X-Received: by 2002:a05:6602:26c1:: with SMTP id g1mr13922918ioo.10.1598460598067;
        Wed, 26 Aug 2020 09:49:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598460598; cv=none;
        d=google.com; s=arc-20160816;
        b=esvIGyMvrYCZ9f38pRq6A//YqOG+2ELSfMTwXKxW5gCU5lEndkzqDmhN59etE1DyDa
         2tAxUMRTOIw0yzJ0MgVI8w9v83MEGWgKR+41c1MmJ4YkJcmLRUG6/+gHMXE/mkQJWi19
         hXMyj78fZ2WcorWS3uRmMQLluTXocM3G5Cm3Jg/adFF33jn6F5N2114S4emkrbXPTuEJ
         3hlzy7PeaqxvCPGhCNH9oDXWDXIsJaU8bTihOCwqTYogaeURu0JJFxSqaFKQeFp+4J8I
         kX5FY2RjsdE8oifaLEHrdzW82vBsa530nyQ1uWqHPdLh4/RYIbn6w4CGd6wdRCss8pEH
         IPsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=qUxLw8h62gV6lNU8hR9gKg9F4mIeUNwWOgjmbG+A2no=;
        b=ck1o4xx52rRwdIRMW/3mP5e54rMr4geegcs+ejJZWHRlKbpaq+jnG0uoPxEpS5hnnt
         W4987nWqbfGH0JE/jCkF0qfPc4F8b3x/lxOvNNOiXkNME5ZMFFPVIkpWyqsCIpUDxsel
         Lwa9kaaWLt/XhDTjn0ox5wTnAQSIlID243iFTIVUT0xMKxWjmmSFYWbQ8GyXfJiH8ZV1
         RMrLsmn9mw/dfrnWPFHxh9477fUySmB+m85Tb+0LGSo8pNahF7b7h2tY3gVdB/kqChg1
         gUnlY0I/H7nNrnVJMHB+8MEPqy9dWmnX2A4JDKvPDtxa2QqXBtptr2KOLPP4E1c57nmC
         4KcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=hAaAFdF3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id h11si114726ilh.1.2020.08.26.09.49.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Aug 2020 09:49:57 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 07QGneGA014599
	for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 01:49:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 07QGneGA014599
X-Nifty-SrcIP: [209.85.214.180]
Received: by mail-pl1-f180.google.com with SMTP id b11so1158871pld.7
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 09:49:40 -0700 (PDT)
X-Received: by 2002:a17:90a:fb53:: with SMTP id iq19mr6982654pjb.153.1598460579840;
 Wed, 26 Aug 2020 09:49:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200825135838.2938771-1-ndesaulniers@google.com>
In-Reply-To: <20200825135838.2938771-1-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 27 Aug 2020 01:49:03 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com>
Message-ID: <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com>
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
        stable <stable@vger.kernel.org>, Andy Lavr <andy.lavr@gmail.com>,
        Arvind Sankar <nivedita@alum.mit.edu>, Joe Perches <joe@perches.com>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        Sami Tolvanen <samitolvanen@google.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Alexandru Ardelean <alexandru.ardelean@analog.com>,
        Yury Norov <yury.norov@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=hAaAFdF3;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Aug 25, 2020 at 10:58 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> LLVM implemented a recent "libcall optimization" that lowers calls to
> `sprintf(dest, "%s", str)` where the return value is used to
> `stpcpy(dest, str) - dest`. This generally avoids the machinery involved
> in parsing format strings.  `stpcpy` is just like `strcpy` except it
> returns the pointer to the new tail of `dest`.  This optimization was
> introduced into clang-12.
>
> Implement this so that we don't observe linkage failures due to missing
> symbol definitions for `stpcpy`.
>
> Similar to last year's fire drill with:
> commit 5f074f3e192f ("lib/string.c: implement a basic bcmp")
>
> The kernel is somewhere between a "freestanding" environment (no full libc)
> and "hosted" environment (many symbols from libc exist with the same
> type, function signature, and semantics).
>
> As H. Peter Anvin notes, there's not really a great way to inform the
> compiler that you're targeting a freestanding environment but would like
> to opt-in to some libcall optimizations (see pr/47280 below), rather than
> opt-out.
>
> Arvind notes, -fno-builtin-* behaves slightly differently between GCC
> and Clang, and Clang is missing many __builtin_* definitions, which I
> consider a bug in Clang and am working on fixing.
>
> Masahiro summarizes the subtle distinction between compilers justly:
>   To prevent transformation from foo() into bar(), there are two ways in
>   Clang to do that; -fno-builtin-foo, and -fno-builtin-bar.  There is
>   only one in GCC; -fno-buitin-foo.
>
> (Any difference in that behavior in Clang is likely a bug from a missing
> __builtin_* definition.)
>
> Masahiro also notes:
>   We want to disable optimization from foo() to bar(),
>   but we may still benefit from the optimization from
>   foo() into something else. If GCC implements the same transform, we
>   would run into a problem because it is not -fno-builtin-bar, but
>   -fno-builtin-foo that disables that optimization.
>
>   In this regard, -fno-builtin-foo would be more future-proof than
>   -fno-built-bar, but -fno-builtin-foo is still potentially overkill. We
>   may want to prevent calls from foo() being optimized into calls to
>   bar(), but we still may want other optimization on calls to foo().
>
> It seems that compilers today don't quite provide the fine grain control
> over which libcall optimizations pseudo-freestanding environments would
> prefer.
>
> Finally, Kees notes that this interface is unsafe, so we should not
> encourage its use.  As such, I've removed the declaration from any
> header, but it still needs to be exported to avoid linkage errors in
> modules.
>
> Cc: stable@vger.kernel.org
> Link: https://bugs.llvm.org/show_bug.cgi?id=47162
> Link: https://bugs.llvm.org/show_bug.cgi?id=47280
> Link: https://github.com/ClangBuiltLinux/linux/issues/1126
> Link: https://man7.org/linux/man-pages/man3/stpcpy.3.html
> Link: https://pubs.opengroup.org/onlinepubs/9699919799/functions/stpcpy.html
> Link: https://reviews.llvm.org/D85963
> Suggested-by: Andy Lavr <andy.lavr@gmail.com>
> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> Suggested-by: Joe Perches <joe@perches.com>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Reported-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V3:
> * Drop Sami's Tested by tag; newer patch.
> * Add EXPORT_SYMBOL as per Andy.
> * Rewrite commit message, rewrote part of what Masahiro said to be
>   generic in terms of foo() and bar().
> * Prefer %NUL-terminated to NULL terminated. NUL is the ASCII character
>   '\0', as per Arvind and Rasmus.
>
> Changes V2:
> * Added Sami's Tested by; though the patch changed implementation, the
>   missing symbol at link time was the problem Sami was observing.
> * Fix __restrict -> __restrict__ typo as per Joe.
> * Drop note about restrict from commit message as per Arvind.
> * Fix NULL -> NUL as per Arvind; NUL is ASCII '\0'. TIL
> * Fix off by one error as per Arvind; I had another off by one error in
>   my test program that was masking this.
>
>  lib/string.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/lib/string.c b/lib/string.c
> index 6012c385fb31..6bd0cf0fb009 100644
> --- a/lib/string.c
> +++ b/lib/string.c
> @@ -272,6 +272,30 @@ ssize_t strscpy_pad(char *dest, const char *src, size_t count)
>  }
>  EXPORT_SYMBOL(strscpy_pad);
>
> +/**
> + * stpcpy - copy a string from src to dest returning a pointer to the new end
> + *          of dest, including src's %NUL-terminator. May overrun dest.
> + * @dest: pointer to end of string being copied into. Must be large enough
> + *        to receive copy.
> + * @src: pointer to the beginning of string being copied from. Must not overlap
> + *       dest.
> + *
> + * stpcpy differs from strcpy in a key way: the return value is the new
> + * %NUL-terminated character. (for strcpy, the return value is a pointer to
> + * src. This interface is considered unsafe as it doesn't perform bounds
> + * checking of the inputs. As such it's not recommended for usage. Instead,
> + * its definition is provided in case the compiler lowers other libcalls to
> + * stpcpy.


I do not have time to keep track of the discussion fully,
but could you give me a little more context why
the usage of stpcpy() is not recommended ?

The implementation of strcpy() is almost the same.
It is unclear to me what makes stpcpy() unsafe..



> + */
> +char *stpcpy(char *__restrict__ dest, const char *__restrict__ src);
> +char *stpcpy(char *__restrict__ dest, const char *__restrict__ src)
> +{
> +       while ((*dest++ = *src++) != '\0')
> +               /* nothing */;
> +       return --dest;
> +}
> +EXPORT_SYMBOL(stpcpy);
> +
>  #ifndef __HAVE_ARCH_STRCAT
>  /**
>   * strcat - Append one %NUL-terminated string to another
> --
> 2.28.0.297.g1956fa8f8d-goog
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ%40mail.gmail.com.
