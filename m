Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAF4775AKGQEWX2KJ2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BE9269792
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 23:17:53 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id e4sf845192pjd.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 14:17:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600118272; cv=pass;
        d=google.com; s=arc-20160816;
        b=aLubZ56J+lsYF2Phg+Poqimj8qEwFEbxFY7F1VydVyTq085a2NfIbvFRHNAvoVnFvR
         0BmZXWNjp/uQDunRpXOWV7E2Y0NJKl+KWOYsFNrc9GEyO5v6dvBS2WVL1a0932+AgVBG
         B0xjyF9qGa7XB0bejk6ApQNrVldUOAuWf0TczMFLh8dysHPqBagpBofHoRFhRNvgOAKE
         6pdpwyt8I8a4ewzeod2kRWFZUMImKbWmxOqYf2dXptl6JngGTPS0o1aumXualrF6RU09
         YZfhl87cBxMyHQDM/bNgmKuF80kQpl1T7IRbHR27DOKQnjpiJqcLdxntD14iNTxz4JOh
         6urw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=HGdpxFkxoEqZrDWBdKDVsq5jAg2RokkSkXuGedB4rVc=;
        b=NRnt7/sy69AagUVc71HHLUeXXTQ7VkpIGkGah/0b4ZRGvqKrz+qtTc5jmh2W9n87ak
         8a7HKYYqH0c1uMGG7DH/Wyu6Fpl32DWwlaf/oZ9V0zww6TgCTxqbh+N6pWogKDJAN6LM
         wKIEypYK5/5C2jWJndz/JV2rzHi8dn6olmCQ/HOzrkB0rX60ui1IT4B3GipPoe8CKxe3
         cW3Fs2ekY1tPP/FPLU4J6z5P6r+jIoVdgt+uZ1QfpGEWvNvDBOB4weo4RCR5cj4ykFWk
         c8jugQH60TevDwOKOlX2d2JE07r0e4Bv7AUc95eeCKHn5LCLnZ0Vplf8Yzz65ovVUB4j
         FSdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gnDqleJF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HGdpxFkxoEqZrDWBdKDVsq5jAg2RokkSkXuGedB4rVc=;
        b=hl0SX5xpFegY8Ek/63Ej0uo1PkzdbOiC8Se16/f69QUl4QC7agctGu9Zk96OlxYrOX
         j8TtY4sacrGDb+ypkuuFib8I0LEvoFwPR2idP1u/fQTs44r46c8eukO7KX0+DKnkOPHm
         JYeioIjA+V5+p9oMftwimjOr18urwrnQe1HAcKWKE+uZQoXFoXghOjvP+DHGX5Be80ye
         QAbjWOYTFiHYVOEmXDNRiDilzA/j6G4mKBI2tK9J/RxFeMitW72DefTfj2rkjAoGYcdl
         h9P+wr9c7iHO2vwYdQKwJMivqxLplTnjLCOSGXIyyaRcMQcv6BFtf2cc7H3+uM1AzoW1
         dw8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HGdpxFkxoEqZrDWBdKDVsq5jAg2RokkSkXuGedB4rVc=;
        b=kvXbTiHLiDIIQvKj0W7iLkELhmnZgSnuwegwUIYOlMBIvigus4pjI5Dy53h0APiY0+
         a7kdENMhTojz0Z7RY77wi1PKeeWmrMjZQtSV6CwcKsI6AWLAV2DFK9I5Q6YG8o2uu6ut
         J93sTcCZhTiwcyag32E/Jnz7FkA2AdCfTX0muutA5h9VmBGd7JF89xUC9F5gvQYKu+wO
         nCEaIwG0XOu/1u4a9gmaJciub9HNfPiyTej1cxkymCfSaGfo7l2Ms20GdmuxthXXdgUp
         H+rt+I6bsrRxdgeIA7O7aavhz4OeMbDChGfy6uN4fSf52PeoFV2kxoGx80wN6zZa9ZUA
         +YRw==
X-Gm-Message-State: AOAM530EP2mFxa9XdgP+ZGfJ96v6xlCJDZ+f9pp3KMD1+fMmqYv9w+Td
	cABQp62YaxXFN/cdHhIbxZI=
X-Google-Smtp-Source: ABdhPJzm0mcfsDBdIwhAL8jFK7cUYenBZyFJO13pN5EkoPg8LsumEO0oyobj5HtcPmZvC8jqjP3Xyg==
X-Received: by 2002:a17:90a:6a0d:: with SMTP id t13mr1243846pjj.208.1600118272294;
        Mon, 14 Sep 2020 14:17:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96cd:: with SMTP id h13ls4191690pfq.0.gmail; Mon, 14 Sep
 2020 14:17:51 -0700 (PDT)
X-Received: by 2002:a63:6647:: with SMTP id a68mr12552098pgc.450.1600118271779;
        Mon, 14 Sep 2020 14:17:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600118271; cv=none;
        d=google.com; s=arc-20160816;
        b=j5w4x73Z8y2PPGK4ueS8ucThMc/o3Ow7jjHWZJWnd2juFWR/eDltvON1eU1/0cvyFt
         HWSjmQauZeIhe2PMgIQZi+/v7Rc9pJNGCJ0/+nR55OiTryUT+PZohxcwG1+qUbtYTcQJ
         sqQ2ashfHPnjZD1mSUrulNMLExhSkLXhviWWyFIPbLIyUId8Q+I7xBuBtLW32mH6JBjh
         dtd24cXEm1Cd9nW9p9Zohrhlv4BhNgDwBPJlzbwcU5tHIgaWoFS0u0DAG2SCgj+meYfY
         sXsTsKa6iCv6orh0QrF5VuwPebiz7n762WQcBQFP9uLPgcdf0tCF/ZENEJ7sWa+f3F6q
         PA7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=C7sgFtQoGvHj7+x9+CzUrIZAY69PKOdgVMUAIaHzDvk=;
        b=mz51KpqOcw2UexdeABotedFmCHkPVLc7DenBVzwHsEtla2DDd+usQGxYEjeD9/xZg/
         wLzmcFEzwoGlHy3N7hGYIsNvdE3pdvsj6iIfRsibcshvFFxzpslxf9CsvPGBoW62GdIi
         15FJTBB/GMQXUG7jqXwrlk3EOi3GRG31Bu126qWkTLnK8Ckf6+VScNsPPs4hVS3gHmUj
         Uc2IX87yi5dGNBPZEw7dz4i2Ej1IBqY9tWFxpXR4zqPRzpAPhIhHevTCLoYLQ+9Pr3a5
         +QtLkU32jhQOBxsrIXXdke+bf37Wii6XrnRKkcnyPMzC3R4M21AFnG+AFTI2QTIdnppK
         8Sdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gnDqleJF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id b9si589823pge.4.2020.09.14.14.17.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 14:17:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id l126so632387pfd.5
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 14:17:51 -0700 (PDT)
X-Received: by 2002:a63:7882:: with SMTP id t124mr2686911pgc.381.1600118271305;
 Mon, 14 Sep 2020 14:17:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200914172750.852684-1-georgepope@google.com> <20200914172750.852684-7-georgepope@google.com>
In-Reply-To: <20200914172750.852684-7-georgepope@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Sep 2020 14:17:39 -0700
Message-ID: <CAKwvOdmMAc5zhLQMr-6WvrJJ4vbzwMpav36Y6V_DBBVjf4i72g@mail.gmail.com>
Subject: Re: [PATCH 06/14] Fix CFLAGS for UBSAN_BOUNDS on Clang
To: George-Aurelian Popescu <georgepope@google.com>
Cc: Marc Zyngier <maz@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	kvmarm@lists.cs.columbia.edu, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, James Morse <james.morse@arm.com>, 
	Julien Thierry <julien.thierry.kdev@gmail.com>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, David Brazdil <dbrazdil@google.com>, 
	Mark Brown <broonie@kernel.org>, Fangrui Song <maskray@google.com>, ascull@google.com, 
	Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Dmitry Vyukov <dvyukov@google.com>, Marco Elver <elver@google.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Arnd Bergmann <arnd@arndb.de>, 
	kernel-dynamic-tools <kernel-dynamic-tools@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gnDqleJF;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

+ kernel-dynamic-tools to help review.

On Mon, Sep 14, 2020 at 10:28 AM George-Aurelian Popescu
<georgepope@google.com> wrote:
>
> From: George Popescu <georgepope@google.com>
>
> When the kernel is compiled with Clang, UBSAN_BOUNDS inserts a brk after
> the handler call, preventing it from printing any information processed
> inside the buffer.
> For Clang -fsanitize=bounds expands to -fsanitize=array-bounds and
> -fsanitize=local-bounds, and the latter adds a brk after the handler
> call
>
> Signed-off-by: George Popescu <georgepope@google.com>
> ---
>  scripts/Makefile.ubsan | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/scripts/Makefile.ubsan b/scripts/Makefile.ubsan
> index 27348029b2b8..3d15ac346c97 100644
> --- a/scripts/Makefile.ubsan
> +++ b/scripts/Makefile.ubsan
> @@ -4,7 +4,14 @@ ifdef CONFIG_UBSAN_ALIGNMENT
>  endif
>
>  ifdef CONFIG_UBSAN_BOUNDS
> -      CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
> +      # For Clang -fsanitize=bounds translates to -fsanitize=array-bounds and
> +      # -fsanitize=local-bounds; the latter adds a brk right after the
> +      # handler is called.
> +      ifdef CONFIG_CC_IS_CLANG
> +            CFLAGS_UBSAN += $(call cc-option, -fsanitize=array-bounds)

You can remove the cc-option check above; Clang has supported this
option for many releases.  (One less compiler invocation at build
time, FWIW).

You cannot remove the below cc-option; GCC only implemented that
sanitizer in the 5.0+ releases; the kernel still support GCC 4.9.

> +      else
> +            CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
> +      endif
>  endif
>
>  ifdef CONFIG_UBSAN_MISC
> --
> 2.28.0.618.gf4bc123cb7-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmMAc5zhLQMr-6WvrJJ4vbzwMpav36Y6V_DBBVjf4i72g%40mail.gmail.com.
