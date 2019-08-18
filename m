Return-Path: <clang-built-linux+bncBDTI55WH24IRB2MA43VAKGQE72DDYPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id A810E917E5
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Aug 2019 18:44:26 +0200 (CEST)
Received: by mail-yw1-xc40.google.com with SMTP id o201sf1028236ywo.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Aug 2019 09:44:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566146665; cv=pass;
        d=google.com; s=arc-20160816;
        b=jDAbWRgyhSjI0m7nFoy6L7BMfRHOrO5XzlsPVoDEjAljyvzMi8hKl8HTzcnCm3lMC4
         DKPjZz5sVKzmztIOdYrhUR4ZsM2Q+ogevK92f41BzNuxru+ufmJUJ/qD/q56ZguqqMFU
         F0wuj3ub6DRMPF5Be7R+GZ3TZo3rBbRR4Wg8AUFx99OnoTwWej+F8eMcjX9+k7giGvhd
         6MEmktZqo+J2Yw0mVyEvBwRe3CML9hVNLiYwMwD6v/F8US0+YVtCMciQ37Fso9+u0DPW
         39AC0SacGA3lnGSus2OCqCtHYDZv3wJpjDzXLnu6C+SV5/L2bMUrOycNx9M0ZeYbibuk
         SZkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=G+5BCyDL1JmveRgAq1KzEIU4HRKVoWvhx+78O01iSt8=;
        b=HvnJajp6X+wwtP0VNyGxwAhCkreMgT2gTaWK7Ok4mvydzC21wbT00GMEXzGUxRGw6i
         tGkP06/V4hwWIVd/Go/Mp7ZhZKroXx7387/PbG4+rqwkKGej7XZIf8pJ3sRwpUM9CG3u
         YG3X19nAE8KnRtyTHGmS5iBVa+rRiOS+LsLlBBE9BIuQVGyWRP3UL+ZpDervOP1bj+PI
         QPU2Rmf3FawGog+XRoyTBZIszywq3hrkabxUCVMnU61YoqWgdGRuRf/Zqj1fJ7OOHVrr
         +0kx2XMhgl2AhpZBXokuGl/deDf0DI7aIdAIvexTTOo5elwEfYMI/K6XwM2Al3NpJKh3
         R85g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=isYPy7h5;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G+5BCyDL1JmveRgAq1KzEIU4HRKVoWvhx+78O01iSt8=;
        b=bZfK8rrTV19dMDqpFEq5dTlJhcMcAVUwAZZenymscnna0/gv6Ry6cVP516qpqDPzBE
         dnmuFQU+rNkVO3KlEhWqQ3QbhfqMGb+1eTiwqahYZ6HxnIv5338KeIsSLWM8OHeIPkO5
         48rS3rG+xWCUVKaI+UbWuznR4xmo7NjPXDllQTgp2HtoY1Lrk/D5NN7NejhZs28Z3I3G
         Yx3yOoq6O4rqouFl07UmxZezUOtMz3Kk98j2WWbfsXvd/Ew+I6VS+2+YZ/eaKPOPpSL+
         cLLdrhT4bth6e/wMsBYqXfr7BJzdKdP3KeqFSv5zEzC5VLZdLjBrDNGgLOQelornL1bp
         gpbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G+5BCyDL1JmveRgAq1KzEIU4HRKVoWvhx+78O01iSt8=;
        b=KGDpG+M8aQV6o1Y8m9apCUZtmeAPGb4se55ljuk46FmSLPSLijWRJYOp7G/e6tGAVD
         H4/L6aSAJEP3LFlpRKlJNHJoiXvrgeJaGHfoF1xiYUqR0wa7kvk4CPhaVKF0rqXHV83+
         89tlfPYiWnYmDzwfitGZwOjIzPMN7LmUaIFfMImjraUtRxYah5pJZtZ8yLMcBnAi4/6d
         gMNzaS4vuW2adEbOMQ085NUuI+YgtyRQXLgpeJvOknDAI0PovW1Z2tVUQ1n3ne07lpvO
         dvmHS+EiceOxSfT7F7L8QWGJFlOZzbl/NVK/e76DP0gEchIMM8Z6dVYS62heiubFGmxD
         I66g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUcbqNViLETMGKnQj48GJhUNG5dhCCTXFSRN0QxEfp12Bdk3hC6
	Te1hWyN3KnU3RbGY0xCYzUc=
X-Google-Smtp-Source: APXvYqz/pFKMulydOeLYuWD3/O3YrJS6SeyDMiLZO88401MM6boK/1LjyC/LoRUaSTInxc65y+gp5w==
X-Received: by 2002:a81:7908:: with SMTP id u8mr11350805ywc.359.1566146665693;
        Sun, 18 Aug 2019 09:44:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7105:: with SMTP id m5ls2110975ybc.8.gmail; Sun, 18 Aug
 2019 09:44:25 -0700 (PDT)
X-Received: by 2002:a25:b110:: with SMTP id g16mr14716883ybj.118.1566146665162;
        Sun, 18 Aug 2019 09:44:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566146665; cv=none;
        d=google.com; s=arc-20160816;
        b=YdhqExtvsVoVoYISRQ2QrDu7u/5i54Vxl94xt00UpZHIAosMG3ZhjlkTe/o1uPAN+D
         ixBLA8m+2c98fYhsjrBWwjoGFcV3ZbjBj62b7uqFGAShnY2fB0efoXj6z0xP5wzZmPLI
         xMA54+2G3DKuPiQrQA3xybJd5ItUfdNhGxQU2m5pStqMeGocUaW48TNmFpFJELxNbqAS
         yA4Z4XUX3Tj0zVsiemiPrYHjlmygg43GZZpETjTbpVj0YQtbsUhuoOS3VpEAuzKLe+bq
         NoRUPxtrHS4QDNUYnOaB25OEXrM4j2lajXW2i3uaQPhcvDpxNVYsHaPJYuT/+7nWOfva
         zZfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=H82x+pJ4cwL+9iVnpRB5WhemdiiFGuS6Cc01I6GkHDE=;
        b=jAPLQfib4JHxqPlpK2XW7B0JPW+kgdnF2rrr68iFfLTbgEbV6x0jMjWFbhUlssBaGw
         5Ab3nQsbk+jHaqhNBpoFQtRXiusvxMYNsmOOamMWrC2VweFALady1/VAoDfmpDvsNGYY
         msLaiUhovnR7VJ67SeQE3PhSSs0vZkjAJeOsqMC+eB6Y+yzCDElIkAzewDLKHnInFWzV
         pKDNn53EJdCTYpftcVbItI3KZqc7D0Opb/7f6IB4X3qayoq+XcqB/EiDqCxal1a0xEZc
         R6As+D/Mbt7ru9KhmwAfy6YFcVpkW2AbTlDfUDyEC9J6qc6nWDNmzwqfMBFWvyzL1i0X
         13bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=isYPy7h5;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id j72si58521ybg.0.2019.08.18.09.44.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Aug 2019 09:44:24 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id x7IGhjwY023402
	for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 01:43:45 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x7IGhjwY023402
X-Nifty-SrcIP: [209.85.222.46]
Received: by mail-ua1-f46.google.com with SMTP id 34so3754498uar.8
        for <clang-built-linux@googlegroups.com>; Sun, 18 Aug 2019 09:43:45 -0700 (PDT)
X-Received: by 2002:ab0:32d8:: with SMTP id f24mr5079883uao.121.1566146624431;
 Sun, 18 Aug 2019 09:43:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdk+NQCKZ4EXAukaKYK4R9CDaNWVY_aDxXaeQrLfo_Z=nw@mail.gmail.com>
 <20190815225844.145726-1-nhuck@google.com>
In-Reply-To: <20190815225844.145726-1-nhuck@google.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 19 Aug 2019 01:43:08 +0900
X-Gmail-Original-Message-ID: <CAK7LNATsA0foyeaE2W3xe=_Hkf9S=q0eD5WHqwPXkMw8udkDPg@mail.gmail.com>
Message-ID: <CAK7LNATsA0foyeaE2W3xe=_Hkf9S=q0eD5WHqwPXkMw8udkDPg@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: Require W=1 for -Wimplicit-fallthrough with clang
To: Nathan Huckleberry <nhuck@google.com>
Cc: Michal Marek <michal.lkml@markovi.net>, Joe Perches <joe@perches.com>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=isYPy7h5;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

Hi.

On Fri, Aug 16, 2019 at 7:59 AM Nathan Huckleberry <nhuck@google.com> wrote:
>
> Clang is updating to support -Wimplicit-fallthrough on C
> https://reviews.llvm.org/D64838. Since clang does not
> support the comment version of fallthrough annotations
> this update causes an additional 50k warnings. Most
> of these warnings (>49k) are duplicates from header files.
>
> This patch is intended to be reverted after the warnings
> have been cleaned up.
>
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
> Changes v1->v2
> * Move code to preexisting ifdef
>  scripts/Makefile.extrawarn | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> index a74ce2e3c33e..95973a1ee999 100644
> --- a/scripts/Makefile.extrawarn
> +++ b/scripts/Makefile.extrawarn
> @@ -70,5 +70,6 @@ KBUILD_CFLAGS += -Wno-initializer-overrides
>  KBUILD_CFLAGS += -Wno-format
>  KBUILD_CFLAGS += -Wno-sign-compare
>  KBUILD_CFLAGS += -Wno-format-zero-length
> +KBUILD_CFLAGS += $(call cc-option,-Wno-implicit-fallthrough)
>  endif
>  endif
> --
> 2.23.0.rc1.153.gdeed80330f-goog
>


Perhaps, is the following even cleaner?



diff --git a/Makefile b/Makefile
index 1b23f95db176..cebc6bf5372e 100644
--- a/Makefile
+++ b/Makefile
@@ -751,6 +751,9 @@ else
 # These warnings generated too much noise in a regular build.
 # Use make W=1 to enable them (see scripts/Makefile.extrawarn)
 KBUILD_CFLAGS += -Wno-unused-but-set-variable
+
+# Warn about unmarked fall-throughs in switch statement.
+KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
 endif

 KBUILD_CFLAGS += $(call cc-disable-warning, unused-const-variable)
@@ -845,9 +848,6 @@ NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC)
-print-file-name=include)
 # warn about C99 declaration after statement
 KBUILD_CFLAGS += -Wdeclaration-after-statement

-# Warn about unmarked fall-throughs in switch statement.
-KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
-
 # Variable Length Arrays (VLAs) should not be used anywhere in the kernel
 KBUILD_CFLAGS += -Wvla



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATsA0foyeaE2W3xe%3D_Hkf9S%3Dq0eD5WHqwPXkMw8udkDPg%40mail.gmail.com.
