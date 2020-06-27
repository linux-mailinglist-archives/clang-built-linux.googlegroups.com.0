Return-Path: <clang-built-linux+bncBD63HSEZTUIBBJPP3P3QKGQEQFKKB4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A01020BFD1
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jun 2020 09:39:18 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id 40sf7475716otc.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jun 2020 00:39:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593243557; cv=pass;
        d=google.com; s=arc-20160816;
        b=H2GXWCHK9wuMVSEXUVRuH+KIQhDARy7PmrL5Q7e+tFRDcXEsPbhwEl6pZTtmeYDxgW
         goXJ9PYuPNiG6IMrspitjn/8OmJUBgjE8nxhcCHQ6qhYfM+QBzd4lokASfQjCGLegEwJ
         blrkxVtUJAUD20n3EOy0NmHIz8zUAspZY/R6BeGu1NkxrGx09Aux2P0hDNwk7+Bsl3oy
         yFHkmVV/a0gFIRGS1k/plyTpsnyr1V0TqH2m14RSKVaTpObhLlRhBYeB+9YGzdcFVteO
         uYldbeyez8Zbc0NcYnBH/P5vFLz45GwrJqSMEKdrj30CH/kOyfObQwENroZemxxeMcUq
         97pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=RxVNSmBLBlHPbrSWpXvhvwGNYcxOspYT1Uyn68hwYkY=;
        b=IvIEGzCiQaXLuyYmow+DkLVe3OuOlF/tLirTML2QWN0vP87/l+u58vtVfmMYqKMQi6
         Pkdn19QO4V9wN8R2CocEPpDzfCCyHwNPMYjPET41Zl7z+vYNV4yXVFUvsxUJB/yLCUKY
         dcju1yEt5Kfmz9Cre6VIQOEW7aVELK5WKzylns38tOXvfCsnKcYdKcKRj3O44b03N8eL
         S4C4gLn3/Jv4659k9tjGll4pNT7bcpBBdsT7gNaJKrvheI6SFK3ogiha5H0Cd5evAlOF
         yKiV7aUlcDmxbtwP60U47K8KRyU+4ufeQYH8pA6SZFWe8dmKMpy6xALK/QyL9D7x3FFu
         Defg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WG3304fC;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RxVNSmBLBlHPbrSWpXvhvwGNYcxOspYT1Uyn68hwYkY=;
        b=rCYRnXuWGzANgehqdya9sJ66iUmwJxGGQgNbxSCs8ih/4GQEldZyi0TOXq9GUBZe9o
         1E6TMBCYT4B8STQesXRt/Ga7+eIa2vMj/12tCaCFnxMsi8IHLEV+mR4OH5jI5fn2vFyW
         Txo6tHmAoknGe9Sa63Ia9INrnhHwVrxzhfWGi/gxqHd0v+5F0BcsLn+wz4i9AiMxgj7L
         hbxq6dtREFjbEjYyAn/EnPkbCMKK6P0IOGrx9tMnsxAr35NRXN/YC0H7OHm8QOWPIJ0v
         M8GxG5KCch4r6o5s7hQN+nQDNACoxK/RNwOXuPKvvMo2uySrj3zNJ22Z6JvEqK14xoeG
         UXAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RxVNSmBLBlHPbrSWpXvhvwGNYcxOspYT1Uyn68hwYkY=;
        b=Bupci0p+UGbqmqE1TPdjK41llgBOrVM1C2FmQdKcWSgBVcMlavyZ/m0ObbNf9EfD5D
         BlN0Dks+yQcLPKc3YlYpGHg69efCAttD9+5t38x8KKhSNrLBV7JfiFfUozdrxPWdXpGh
         FG/vXpGH7YCNBYQrMAPor5t5kWhPIefm/0m8CchErqHTtiyJ14Z9FSob6FxrrNnS69xF
         dIJsmN4MBYlNQi8jb1tNxe7nNBQPWcArJxRk/Y5ErkxJ14i2rw1k9QyqKv8cvRekPwU+
         h7fB6NWz6oC4lXKlAEwjK16hk5afFSVomIsThbHt5bFECrYEDPk6VVUBUKvB7KW+Wx5e
         vfCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NRg7xlCn7Cx5HI7c+GIcpcjdTLItTBEQlpk7ROB0FJgXwSUBI
	b1RSDQbjqY7c2adsFA84wTA=
X-Google-Smtp-Source: ABdhPJwOwhZfckGXfhZkuLpUZZLi/xLjNsBlMNIOO0kG7IhxrOpcAbFCVDcppLlkTxh7337jR4dWXg==
X-Received: by 2002:a05:6830:1001:: with SMTP id a1mr5643533otp.94.1593243557216;
        Sat, 27 Jun 2020 00:39:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:610:: with SMTP id y16ls1298187oih.0.gmail; Sat, 27
 Jun 2020 00:39:16 -0700 (PDT)
X-Received: by 2002:aca:d0d:: with SMTP id 13mr5413759oin.174.1593243556901;
        Sat, 27 Jun 2020 00:39:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593243556; cv=none;
        d=google.com; s=arc-20160816;
        b=00xoEgoaqxHuEoY7fD7n29WtjPTYQp+Sg5NqMwS0gbxn826Fd/tuG/31KW9xh3k/zS
         RXjpRckKFW3z4IAQT1TFkyMwHLbBWmVC06cR3oyu7uCALbJJ1/IL1HZCg32fPoVRhbBR
         JGLY0YCMKQDqXYAzpcrz+qvrSoJyDnPXC4ArFGnThf7WsuT57rK1XxzmBizpzupT6COn
         H+SvB2YsSEJSQ4/mM07cCDXtIex9M98ALvuaf0mTuCijZtCsA97uYj5ANK4gxp87+gQk
         pNoEQ/k1zFSuN1ErnUAfqFNbNDjqCeypLgLygyyFyctbs2oncNROLsJCIYtFgX6JMVmU
         oQhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MVWSqFP0YjB7yjhE/oxhWvu37Tcs+a330UtpYE/43jI=;
        b=nONRvlhTvGGde4MavVdmvYkdDp+A7xJGjMN8yAtRRGoakcL+HHCdbs6aMiMq3tJClA
         ET3R9qoDc3Y6zXrHwQiOK9LQQFn4RVFxgTgdpK3cv/sBT+ZhbjOn70CPOBNi3qY3Ikmk
         t80UuYRi0mGPu6hqsN1V+EUDhn8lgws4oPl9Ap2wwWTz9omk/eZVNe/4rmM+4s0iyREY
         3C/mr3mbC+6lxDjtyylUE9ZoHS8M6cw2sThwr3pM6IvvSGENJznyExRY7plTW4DdmCLr
         j+gBqSmVCS6ScN+szz+rlpT6pJbn2EsU4ykhZ5SL/4MGnhzyBSpVFZBye/W+MS7IxioI
         2weQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WG3304fC;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a65si81215oib.1.2020.06.27.00.39.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Jun 2020 00:39:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C5D3620B80
	for <clang-built-linux@googlegroups.com>; Sat, 27 Jun 2020 07:39:15 +0000 (UTC)
Received: by mail-ot1-f50.google.com with SMTP id w17so2894753otl.4
        for <clang-built-linux@googlegroups.com>; Sat, 27 Jun 2020 00:39:15 -0700 (PDT)
X-Received: by 2002:a9d:4a8f:: with SMTP id i15mr5881966otf.77.1593243555117;
 Sat, 27 Jun 2020 00:39:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200626185913.92890-1-masahiroy@kernel.org> <20200626185913.92890-2-masahiroy@kernel.org>
In-Reply-To: <20200626185913.92890-2-masahiroy@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sat, 27 Jun 2020 09:39:03 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGsJsU-zbsuWi4O46XqE71DRdKOX1MeC5ndnE+j9Nw7Cw@mail.gmail.com>
Message-ID: <CAMj1kXGsJsU-zbsuWi4O46XqE71DRdKOX1MeC5ndnE+j9Nw7Cw@mail.gmail.com>
Subject: Re: [PATCH 2/2] kbuild: remove cc-option test of -ffreestanding
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, X86 ML <x86@kernel.org>, 
	linux-efi <linux-efi@vger.kernel.org>, Kees Cook <keescook@chromium.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=WG3304fC;       spf=pass
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

On Fri, 26 Jun 2020 at 21:00, Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Some Makefiles already pass -ffreestanding unconditionally.
> For example, arch/arm64/lib/Makefile, arch/x86/purgatory/Makefile.
> No problem report so far about hard-coding this option. So, we can
> assume all supported compilers know -ffreestanding.
>
> I confirmed GCC 4.8 and Clang manuals document this option.
>
> Get rid of cc-option from -ffreestanding.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Acked-by: Ard Biesheuvel <ardb@kernel.org>

> ---
>
>  arch/s390/Makefile                    | 2 +-
>  arch/x86/Makefile                     | 2 +-
>  arch/x86/boot/compressed/Makefile     | 2 +-
>  drivers/firmware/efi/libstub/Makefile | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/s390/Makefile b/arch/s390/Makefile
> index 8dfa2cf1f05c..ba94b03c8b2f 100644
> --- a/arch/s390/Makefile
> +++ b/arch/s390/Makefile
> @@ -27,7 +27,7 @@ KBUILD_CFLAGS_DECOMPRESSOR := $(CLANG_FLAGS) -m64 -O2
>  KBUILD_CFLAGS_DECOMPRESSOR += -DDISABLE_BRANCH_PROFILING -D__NO_FORTIFY
>  KBUILD_CFLAGS_DECOMPRESSOR += -fno-delete-null-pointer-checks -msoft-float
>  KBUILD_CFLAGS_DECOMPRESSOR += -fno-asynchronous-unwind-tables
> -KBUILD_CFLAGS_DECOMPRESSOR += $(call cc-option,-ffreestanding)
> +KBUILD_CFLAGS_DECOMPRESSOR += -ffreestanding
>  KBUILD_CFLAGS_DECOMPRESSOR += $(call cc-disable-warning, address-of-packed-member)
>  KBUILD_CFLAGS_DECOMPRESSOR += $(if $(CONFIG_DEBUG_INFO),-g)
>  KBUILD_CFLAGS_DECOMPRESSOR += $(if $(CONFIG_DEBUG_INFO_DWARF4), $(call cc-option, -gdwarf-4,))
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 89c3cdfba753..edc68538a04e 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -36,7 +36,7 @@ REALMODE_CFLAGS       := $(M16_CFLAGS) -g -Os -DDISABLE_BRANCH_PROFILING \
>                    -fno-strict-aliasing -fomit-frame-pointer -fno-pic \
>                    -mno-mmx -mno-sse
>
> -REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -ffreestanding)
> +REALMODE_CFLAGS += -ffreestanding
>  REALMODE_CFLAGS += -fno-stack-protector
>  REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -Wno-address-of-packed-member)
>  REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), $(cc_stack_align4))
> diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> index c88a31569a5e..b7beabecef8a 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -35,7 +35,7 @@ cflags-$(CONFIG_X86_32) := -march=i386
>  cflags-$(CONFIG_X86_64) := -mcmodel=small
>  KBUILD_CFLAGS += $(cflags-y)
>  KBUILD_CFLAGS += -mno-mmx -mno-sse
> -KBUILD_CFLAGS += $(call cc-option,-ffreestanding)
> +KBUILD_CFLAGS += -ffreestanding
>  KBUILD_CFLAGS += -fno-stack-protector
>  KBUILD_CFLAGS += $(call cc-disable-warning, address-of-packed-member)
>  KBUILD_CFLAGS += $(call cc-disable-warning, gnu)
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index f8418763cd79..296b18fbd7a2 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -28,7 +28,7 @@ cflags-$(CONFIG_EFI_GENERIC_STUB) += -I$(srctree)/scripts/dtc/libfdt
>  KBUILD_CFLAGS                  := $(cflags-y) -Os -DDISABLE_BRANCH_PROFILING \
>                                    -include $(srctree)/drivers/firmware/efi/libstub/hidden.h \
>                                    -D__NO_FORTIFY \
> -                                  $(call cc-option,-ffreestanding) \
> +                                  -ffreestanding \
>                                    -fno-stack-protector \
>                                    $(call cc-option,-fno-addrsig) \
>                                    -D__DISABLE_EXPORTS
> --
> 2.25.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGsJsU-zbsuWi4O46XqE71DRdKOX1MeC5ndnE%2Bj9Nw7Cw%40mail.gmail.com.
