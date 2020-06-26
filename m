Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3VG3H3QKGQECE2QR6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 7936520B986
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 21:58:39 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id i139sf2934973oib.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 12:58:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593201518; cv=pass;
        d=google.com; s=arc-20160816;
        b=fyhLy3SIZuqqBRzcnLJU5p7Ks18Bi+8BKHzKP2K47a+7ZxXubMvMs3fw+c3MpVm98R
         +xXCkx5ovzb4Gm5P2jmCvsW4JlIRXWAeT8dUwkbrNGc0G6aLCywYYiI/LlEBgD4vG3Wn
         /bD/yO9Ehq100/tXKwc7IURzA/4v+nuMKiON0dRJvtuFpV/rRg6J6qldrAV4AIvLyU0q
         sBZtbOwtkPYK4ZlXQ/HOM3R7vAC+NRNfNLn/hWLmkxeXxAjIAtOitJFbg4fywI2nUUnA
         pUz6RJVBowM6K7LpjPI7/fz4+6x/qCRm8wavZPwvwdGbDf4wk+ed7f6fZGPCvcMvTrzP
         TB+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1yNm/19W0DYzvP4TLcyIFruY21J5K2YLNhT+rbO5OWA=;
        b=NS8KohwqsDbtVszWjMdo5qm867zbaXbVgEnL8z1ceBDVcJZhjdzGHAihyPbxe3EzEc
         0RcpWCTdOLUZfkgAc0lH7E9Ra3Jqf5NPFf7Y8qOHIfhYmzIw27URLYLRnTmjC4KbYKMC
         b13oBIYKHafmkky1gCdOeQ7VcklqyiVck/EBXw3iq7s+TQx1IV8qM+uktrkzI7dCctGu
         hy7wBuWTNBhktfVknbHb3GE+e/6oHNEdR3lXrU/Qm1XIN2+AzoCMOuis5mkNPR5c7MoK
         qVp+ehjVkJoy+ExMg7DlGQYpzUo2TbXXZVZ950g4eVgayMGK2PgKbW2l1/FFltEm0iik
         7EBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=asziHWfJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1yNm/19W0DYzvP4TLcyIFruY21J5K2YLNhT+rbO5OWA=;
        b=pfo9gJBKSJZPmyi0z/I61AEN5lFJwrEtU9U1NGaeEhZtnuWBP0HZWEaBZZucZX2goT
         x4YCxA53zoPqTLfLNH0OONoA1DmTbhBHCIYKeULc/P0xPtuArvGMSoEtKiF8pqYp5sA/
         3l9i9Py/St5bUFuxvS/x8ecLF65ZNwhAkOHi4+vhZOAjV6ePoqhC8VuyMweiIyGw8E9c
         v3urGGgCV/5S3d8ASqVyFEdyM8ingTOWfJCuQ5ytxJEEW8jhbsvd0g4234ZkxBFDVP2n
         TkIxr1K0vyGuaQFcaRph5wZU/dD+0WDbwcjun5jS2s9o4OyMbgFu/XqBVLUjXRwPJlNC
         9mxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1yNm/19W0DYzvP4TLcyIFruY21J5K2YLNhT+rbO5OWA=;
        b=PyL2HelPXdogv8yqTMLrGH8jGAsxx//D4z/J5yWms4Ovuv7nirYiBGgQjZNV+DdOpO
         CuK0n4iRGmi/5yoYMDUJyGBsv+GSp1x+8fVSUqAMJjeNpFxfbYI3zUgNmW6gQ8gzcO3q
         Rre3QcThOPatQzLUi0wGW8WOtDnc0azqVP05pIVsP9D1FhH3gjahBtEyFK8cXaEozIh6
         Krxo6QWX2vvIdGRo5X9wgHYqfj6Cad2qjnN+bRVGUqJFaADv9SG6dmukgAANuye+AfjY
         +OF+rweCx6iCkdD8DR2GVumfw0Xb0UGYuXTejWsQWViVKsnqhqo1vGUPyyKejRJs2PtK
         eRhQ==
X-Gm-Message-State: AOAM53020fB8X7QBAlvCPrjPi0kh599Fsj91rS1XLuiassAcMkzMUvCC
	UgqMk5Ecr5gwoB+wv9LdAp0=
X-Google-Smtp-Source: ABdhPJwRJ/FlJ8IrUi32RIOJja4zP+f2chuG6iCFrbGsjUUljaR8ArD1qd7MRAwCAaQf/tt6MUKcMg==
X-Received: by 2002:aca:804:: with SMTP id 4mr3933676oii.105.1593201518449;
        Fri, 26 Jun 2020 12:58:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f30a:: with SMTP id r10ls1175440oih.2.gmail; Fri, 26 Jun
 2020 12:58:37 -0700 (PDT)
X-Received: by 2002:aca:5c54:: with SMTP id q81mr3734546oib.53.1593201517716;
        Fri, 26 Jun 2020 12:58:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593201517; cv=none;
        d=google.com; s=arc-20160816;
        b=leuh2WoLj5U+3drPjjVbF/civ1SBhFlGvdwK2pGHI94HknhyXKH1NQi8PMOv9LZ3j+
         ePArT4aXSk9yhGfqM2pvDpqIYVfZC0r3QVqS8tPe7yHwPH+1ZBcIqwb7SFxGsbJ2QqZu
         6Zn+3zUSgD730K5IAqTiMFumxakS+WiKHpw98SHlLe2a/w11qolQIdHo+HBytwt+DzgC
         1sT5uen1vygGFjWdWQhUAl7w01aJJ/D995oQZoRU7E33zOPbCq9Hj53OCH3gADESe/F4
         UCKp9Ou7bqHreogebTh9poirWhK4Eh18O8oxG6BIsPJriewb2LLQu+GKSsDTLHV/hLrY
         sqOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=taJpkHjbit6GSnXY6CgYGxPxu2VnJV0zi6VGm2eT+v0=;
        b=R702RJk3Plt4onvtiZ9G8JwDmDOI9maOf0egNbDtmQaOLsw9tYkKwjfYTYr2NJvtv8
         Ow/F2UKXntW4tWgmVKSsBk4JFj3mXTFebBORwL9VDfxCiJAMvrbTf2rqmKPK8G5YleII
         a2JIwPCA5xCmdAzgyIql8xaad/ccfx8YtpNYu16vKjK2Amo+Q/BLe0cMsvj3kHYOKn6R
         v0jB2VyDIeL6x7rvarWbe6YgiE7zjpLc9osdRsJZSJWiMctRW7B/fdHa1Q+Y4vO9bDhB
         Z85eb0tIu0v12qDLxIEAx/xL3loqRSavKStPxJQjMcAql0jodJyOAIn1BuBfu31y6pAp
         kq5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=asziHWfJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id j145si458916oib.5.2020.06.26.12.58.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2020 12:58:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id b92so5361739pjc.4
        for <clang-built-linux@googlegroups.com>; Fri, 26 Jun 2020 12:58:37 -0700 (PDT)
X-Received: by 2002:a17:902:7208:: with SMTP id ba8mr3909663plb.179.1593201516722;
 Fri, 26 Jun 2020 12:58:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200626185913.92890-1-masahiroy@kernel.org> <20200626185913.92890-2-masahiroy@kernel.org>
In-Reply-To: <20200626185913.92890-2-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 26 Jun 2020 12:58:24 -0700
Message-ID: <CAKwvOdnPN0=32R=35oJ-WmJwwCtJ-NqAFsp57KXW6Cb2NgUDFg@mail.gmail.com>
Subject: Re: [PATCH 2/2] kbuild: remove cc-option test of -ffreestanding
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Kees Cook <keescook@chromium.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=asziHWfJ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Fri, Jun 26, 2020 at 11:59 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
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

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

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

See also
commit 032a2c4f65a2 ("x86/build: Use __cc-option for boot code
compiler options")
for additional context (to fellow reviewers).

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

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnPN0%3D32R%3D35oJ-WmJwwCtJ-NqAFsp57KXW6Cb2NgUDFg%40mail.gmail.com.
