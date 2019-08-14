Return-Path: <clang-built-linux+bncBDYNJBOFRECBB77G2DVAKGQEC3RQ4JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4B98D7C6
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 18:14:56 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id q64sf1441683ljq.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 09:14:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565799295; cv=pass;
        d=google.com; s=arc-20160816;
        b=WgzRlvQq4jZ2yZfgp7lSInVhlYIi/eYWnO99QlRoBqVqP2Lrqqx/Ikl0/mW54hD6lM
         gxqr92heUSk0y8Qq18JLMwZjnQgJCRw7Hc5W6yto3GgKA/E/PkAQK15S9J6wn2keD2EV
         I2SVDdy0FDAV58ff+TrwvQj+LuYoJlFes6sKHj8q/KZViXiGdWHVme47z/lRlMnJaOkI
         6rIl9Ljk7lymv45Ue+1gl9K3Hw18bDktuqgLhW5gAK/ovCDTjpWxIKXOCkXJkD3DmIWQ
         8u5kckWjGlmM2TaNQJrtAPEo70aQg9oJWqpdbubZ1N140FGf68mRb4XaZtRBBs6GUJKj
         SygQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=8QGPRqSptHtbCwuKBeXrFtgcHemE6zE+A017i823Hro=;
        b=BL8s4OcjQVR4RD+1p6UOSkn79jLqHlQrokvNF+N4V8sU9gfJJe+YgL7RfN4BPuILBT
         1zK+78Js/nZUykhDernJ4oq9r24jFoshK9hScmMtvsPbKZmLvv0cZeitKQ0KB4tsAqD7
         p35k/q9Mj+s/apLf/+k7dnTza8tJDsvt2Gjq4XYoYlQ93S16MhZBi15HyHKLnWZ+yp3k
         9r0Fp6OXiRdYsrrQcRivtijzhEbRbh3uG9/7q3YEC4enu1gQ+upedlFjuSmR9AXktQ32
         u1HEgxa/o/zeH5MMLG7gB3hFT2OHeIx4kf92gS2ul1l4XJ3nXwAJAh8agXLwzC2y1auN
         udtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="hP6kX/FV";
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8QGPRqSptHtbCwuKBeXrFtgcHemE6zE+A017i823Hro=;
        b=mHPdxKaVKkbFaARIsn0b4Dtj+IDT68MP98l1+7ZpG40FCUjQ/Yr9+beL9uMBcTu+cX
         1hLoBog+0YVpTRbS0dfsLtHidpVp5Te0d59c7JRrWob4JTqdHHn1vQsCVyC9mgfgSrUz
         +Hu/YevTjCwtRUSkoRwgzfi9zw16j8naKJkjKEBG8fv4ynIeZajbHyoANcGHs+8i6XfK
         0PMZtlQCVX1n+2yJ3DSpkBOC0G2n0xR39nKgVgm+atVUo2RQHjXeH8NIYFnMokJnltW9
         yZ5hvD3iKdy4jZ4I2RF3aRqPN328ldatoPJkp0B5ao/f2eQuKeUJUeiGJs5po4aqH7HT
         DgEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8QGPRqSptHtbCwuKBeXrFtgcHemE6zE+A017i823Hro=;
        b=HhK7jw+2PeP1kqTiWzp4mX/Gtuak12y1FhDyWu4NwtNa8Ws93JqdqxlxbZbauf2Uua
         jxWttIHWB+ZadlRfjoeOzQuGcwW2lYanNWzXdqfN8bD8baBmJORq8XTvicpleRMQg3lE
         lxseRA+OdUHYRkBo0lrnYPEpNaf9PsqY8WGeb0oT6r6zNJB/E7NWM5MTyvVw4IM177Dl
         2GpcBOU7A6rIt3KSWNclZhYw22Ft1xsiqxDbKCzp178oADQ0fHMGhxyEU4Fv2CfzA/U8
         GaqV03VK7NwnmVarDG42p/pRqbeBLOk60vmlYNzUDPtrqD6IvU5RT8GjpGWs6Z7jCIDV
         ocLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV+mKUFCjr+GCccY3u4PvjonLw4MaSuvvIsX34ZlO6pM7zaj01M
	chtWAlFBQKffq9A9qfU0sPQ=
X-Google-Smtp-Source: APXvYqzaEOr4aN16fWeGmzl9b8PqfIH6KTZHCV0PywycPClhQIfAGIjZd0ZnK6TqkkMN8DnUBV8fcQ==
X-Received: by 2002:a2e:70a:: with SMTP id 10mr291834ljh.3.1565799295751;
        Wed, 14 Aug 2019 09:14:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:157:: with SMTP id c23ls325899ljd.8.gmail; Wed, 14
 Aug 2019 09:14:55 -0700 (PDT)
X-Received: by 2002:a2e:98c9:: with SMTP id s9mr314025ljj.176.1565799295264;
        Wed, 14 Aug 2019 09:14:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565799295; cv=none;
        d=google.com; s=arc-20160816;
        b=trRSjSnzBngBtAwr6JU0yQ2fLeuQBITVu4WrjZyps0cE2iLq6BZxIKEfUjH+xsLILW
         PWErQhAIlFrdsak/7S6L95qh5kYcUChyAioqFRR1nKHJ31Kl32sKUcRAF+v4cxV5eQ+R
         y5lnp4ZKrwAkQtffWv/veUGRcgDBqV9+9nyEBCU0pfXjS+71u7zoFI741PAybZTN/JCz
         iaQPAuu0PhkjMgSBF8CrCPBNVl71DairPcXzGOewS5kteEG+PPNmo0oG9ozNcPpjRKzJ
         n1kgt87PEOUdTGEy6cY3HumR5vIJ4ek2MQe0uop61B1KcQh/MvFYRFlU01Iyl+KEDcFJ
         et9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g2Vb9pRuewyB7X8dmpxJboh/540awqzNX/YAPeizCG8=;
        b=SGuKt3l7lGrInQDMvn15KF/uwy6/1+9Jn+dycGJLpnDOxJRRwdS7YX39GbuLgWPfOp
         eIBCgDkmkPvzzZ7Nan2SrXwAvD0qAmGgUrc9lfkNqv/AE1VBkJWyd4eGcATscij/RSlH
         BhdHX6EWHdW9o9Rnr2f39AmXnXnyhoekL47achFL64GK2N98UmvoB2YalULex6BWiCBf
         qeRPW1G3I3aUweaO0wjZ8jwTd0Z9Y7Hpsykpo2embRgRygFX9/flLwtr9VHacR0rwGnM
         j32qfRu3elQiZdtKrNAEBqYKxcSEVYxb8H9tA8DclVK7JOJ3WZQc0rUzRIWEnIjiW9jE
         kmAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="hP6kX/FV";
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q11si17942ljg.2.2019.08.14.09.14.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Aug 2019 09:14:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id q12so21364865wrj.12
        for <clang-built-linux@googlegroups.com>; Wed, 14 Aug 2019 09:14:55 -0700 (PDT)
X-Received: by 2002:adf:eb52:: with SMTP id u18mr519212wrn.174.1565799294784;
 Wed, 14 Aug 2019 09:14:54 -0700 (PDT)
MIME-Version: 1.0
References: <201908131602.6E858DEC@keescook>
In-Reply-To: <201908131602.6E858DEC@keescook>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 14 Aug 2019 19:14:42 +0300
Message-ID: <CAKv+Gu9fEAG3CqmORyO2X_Uqse09nnXEQiB1kTL-xBqLWsy8Xg@mail.gmail.com>
Subject: Re: [PATCH] arm64/efi: Move variable assignments after SECTIONS
To: Kees Cook <keescook@chromium.org>
Cc: Will Deacon <will@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Peter Smith <peter.smith@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="hP6kX/FV";       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, 14 Aug 2019 at 02:04, Kees Cook <keescook@chromium.org> wrote:
>
> It seems that LLVM's linker does not correctly handle variable assignments
> involving section positions that are updated during the SECTIONS
> parsing. Commit aa69fb62bea1 ("arm64/efi: Mark __efistub_stext_offset as
> an absolute symbol explicitly") ran into this too, but found a different
> workaround.
>
> However, this was not enough, as other variables were also miscalculated
> which manifested as boot failures under UEFI where __efistub__end was
> not taking the correct _end value (they should be the same):
>
> $ ld.lld -EL -maarch64elf --no-undefined -X -shared \
>         -Bsymbolic -z notext -z norelro --no-apply-dynamic-relocs \
>         -o vmlinux.lld -T poc.lds --whole-archive vmlinux.o && \
>   readelf -Ws vmlinux.lld | egrep '\b(__efistub_|)_end\b'
> 368272: ffff000002218000     0 NOTYPE  LOCAL  HIDDEN    38 __efistub__end
> 368322: ffff000012318000     0 NOTYPE  GLOBAL DEFAULT   38 _end
>
> $ aarch64-linux-gnu-ld.bfd -EL -maarch64elf --no-undefined -X -shared \
>         -Bsymbolic -z notext -z norelro --no-apply-dynamic-relocs \
>         -o vmlinux.bfd -T poc.lds --whole-archive vmlinux.o && \
>   readelf -Ws vmlinux.bfd | egrep '\b(__efistub_|)_end\b'
> 338124: ffff000012318000     0 NOTYPE  LOCAL  DEFAULT  ABS __efistub__end
> 383812: ffff000012318000     0 NOTYPE  GLOBAL DEFAULT 15325 _end
>
> To work around this, all of the __efistub_-prefixed variable assignments
> need to be moved after the linker script's SECTIONS entry. As it turns
> out, this also solves the problem fixed in commit aa69fb62bea1, so those
> changes are reverted here.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/634
> Link: https://bugs.llvm.org/show_bug.cgi?id=42990
> Signed-off-by: Kees Cook <keescook@chromium.org>

Although it is slightly disappointing that we need to work around this
kind of bugs when adding support for a new toolchain, I don't see
anything wrong with this patch, so

Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>


> ---
>  arch/arm64/kernel/image-vars.h  | 51 +++++++++++++++++++++++++++++++++
>  arch/arm64/kernel/image.h       | 42 ---------------------------
>  arch/arm64/kernel/vmlinux.lds.S |  2 ++
>  3 files changed, 53 insertions(+), 42 deletions(-)
>  create mode 100644 arch/arm64/kernel/image-vars.h
>
> diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
> new file mode 100644
> index 000000000000..25a2a9b479c2
> --- /dev/null
> +++ b/arch/arm64/kernel/image-vars.h
> @@ -0,0 +1,51 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Linker script variables to be set after section resolution, as
> + * ld.lld does not like variables assigned before SECTIONS is processed.
> + */
> +#ifndef __ARM64_KERNEL_IMAGE_VARS_H
> +#define __ARM64_KERNEL_IMAGE_VARS_H
> +
> +#ifndef LINKER_SCRIPT
> +#error This file should only be included in vmlinux.lds.S
> +#endif
> +
> +#ifdef CONFIG_EFI
> +
> +__efistub_stext_offset = stext - _text;
> +
> +/*
> + * The EFI stub has its own symbol namespace prefixed by __efistub_, to
> + * isolate it from the kernel proper. The following symbols are legally
> + * accessed by the stub, so provide some aliases to make them accessible.
> + * Only include data symbols here, or text symbols of functions that are
> + * guaranteed to be safe when executed at another offset than they were
> + * linked at. The routines below are all implemented in assembler in a
> + * position independent manner
> + */
> +__efistub_memcmp               = __pi_memcmp;
> +__efistub_memchr               = __pi_memchr;
> +__efistub_memcpy               = __pi_memcpy;
> +__efistub_memmove              = __pi_memmove;
> +__efistub_memset               = __pi_memset;
> +__efistub_strlen               = __pi_strlen;
> +__efistub_strnlen              = __pi_strnlen;
> +__efistub_strcmp               = __pi_strcmp;
> +__efistub_strncmp              = __pi_strncmp;
> +__efistub_strrchr              = __pi_strrchr;
> +__efistub___flush_dcache_area  = __pi___flush_dcache_area;
> +
> +#ifdef CONFIG_KASAN
> +__efistub___memcpy             = __pi_memcpy;
> +__efistub___memmove            = __pi_memmove;
> +__efistub___memset             = __pi_memset;
> +#endif
> +
> +__efistub__text                        = _text;
> +__efistub__end                 = _end;
> +__efistub__edata               = _edata;
> +__efistub_screen_info          = screen_info;
> +
> +#endif
> +
> +#endif /* __ARM64_KERNEL_IMAGE_VARS_H */
> diff --git a/arch/arm64/kernel/image.h b/arch/arm64/kernel/image.h
> index 2b85c0d6fa3d..c7d38c660372 100644
> --- a/arch/arm64/kernel/image.h
> +++ b/arch/arm64/kernel/image.h
> @@ -65,46 +65,4 @@
>         DEFINE_IMAGE_LE64(_kernel_offset_le, TEXT_OFFSET);      \
>         DEFINE_IMAGE_LE64(_kernel_flags_le, __HEAD_FLAGS);
>
> -#ifdef CONFIG_EFI
> -
> -/*
> - * Use ABSOLUTE() to avoid ld.lld treating this as a relative symbol:
> - * https://github.com/ClangBuiltLinux/linux/issues/561
> - */
> -__efistub_stext_offset = ABSOLUTE(stext - _text);
> -
> -/*
> - * The EFI stub has its own symbol namespace prefixed by __efistub_, to
> - * isolate it from the kernel proper. The following symbols are legally
> - * accessed by the stub, so provide some aliases to make them accessible.
> - * Only include data symbols here, or text symbols of functions that are
> - * guaranteed to be safe when executed at another offset than they were
> - * linked at. The routines below are all implemented in assembler in a
> - * position independent manner
> - */
> -__efistub_memcmp               = __pi_memcmp;
> -__efistub_memchr               = __pi_memchr;
> -__efistub_memcpy               = __pi_memcpy;
> -__efistub_memmove              = __pi_memmove;
> -__efistub_memset               = __pi_memset;
> -__efistub_strlen               = __pi_strlen;
> -__efistub_strnlen              = __pi_strnlen;
> -__efistub_strcmp               = __pi_strcmp;
> -__efistub_strncmp              = __pi_strncmp;
> -__efistub_strrchr              = __pi_strrchr;
> -__efistub___flush_dcache_area  = __pi___flush_dcache_area;
> -
> -#ifdef CONFIG_KASAN
> -__efistub___memcpy             = __pi_memcpy;
> -__efistub___memmove            = __pi_memmove;
> -__efistub___memset             = __pi_memset;
> -#endif
> -
> -__efistub__text                        = _text;
> -__efistub__end                 = _end;
> -__efistub__edata               = _edata;
> -__efistub_screen_info          = screen_info;
> -
> -#endif
> -
>  #endif /* __ARM64_KERNEL_IMAGE_H */
> diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> index 7fa008374907..803b24d2464a 100644
> --- a/arch/arm64/kernel/vmlinux.lds.S
> +++ b/arch/arm64/kernel/vmlinux.lds.S
> @@ -245,6 +245,8 @@ SECTIONS
>         HEAD_SYMBOLS
>  }
>
> +#include "image-vars.h"
> +
>  /*
>   * The HYP init code and ID map text can't be longer than a page each,
>   * and should not cross a page boundary.
> --
> 2.17.1
>
>
> --
> Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu9fEAG3CqmORyO2X_Uqse09nnXEQiB1kTL-xBqLWsy8Xg%40mail.gmail.com.
