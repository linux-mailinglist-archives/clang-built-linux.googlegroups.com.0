Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZ6O2D6QKGQE6ZMRDYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2A32B6EDE
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 20:41:29 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id z130sf14542100pgz.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 11:41:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605642088; cv=pass;
        d=google.com; s=arc-20160816;
        b=MRNfaYbXNaA7gXxxvnJtddzPL2dMkpqgWYq/VGRQSISmQUDyyWubaEjgaET5/r23B+
         7o5K7aB3HIZZ9qxOtr06gVs4XVwfAAKH7QRBYY6HkepNKu5ZgxGE5DOGCHXeAhvIgkqt
         5OoOxHwcVOPRyGVCcf56yQNdwk9ftrNwkbgcfV1shnhTHrkNrRnDaQlDq02ODcYqGcdb
         tFq/AybbncMDXN2Y6l3Cb5DOnMXtfA1bJRA9b/Q77jmgZNIAlB1ThNdMrSSCWfjf9H9k
         PS1KWYoXdM2SzqHeACtW4Atfh2X33Cx4WCQhFq/W0y7Hfi/r2oaONvBTibj+OXLcftVm
         iG5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=iDbqz9HORYC68qQ03CR73vg4UGUlL2HFjrMBxAWkjRM=;
        b=P7gga+hiDjqjYE0L5k+OESzXo9fSbZ94U73IZo2g9h04DU054/wMpx+T5do3hZW4YF
         AijtcoVm9Nef2eo+6I7mFDGftID2yxsLMoPFaqaF9wGS43KJdiMjcPAkKhxNbVantwMD
         855Ym2huKy0fJGRIGi8Zmg44n3gsQn+C15OxsfiYfqzTT7PBNmgtx9vBCHE6MRisN0+t
         1SIIHRE4qzzc03PIwVwC48RXoxRTw8Yu8GEBeS/WpfxpfvYNzJRaOAYW+jLmRLzm6lmT
         Y3002rbcCrJcblApK08IscHbE5Wz8BA6V4XwIj9zZRMB9yAcQI7+/LUIQAZXtVN62Uz0
         bl4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dRx9LRqt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iDbqz9HORYC68qQ03CR73vg4UGUlL2HFjrMBxAWkjRM=;
        b=rPQUhtMl4Cpgt94N9MDjDXZEdYbebr+elxYsm21POwIAM4lpUjSxvwMLR8vriDBLK0
         RjM4R0Tay2zeLwdqGa08bRSvdK9UDEBDeJYBwFw7b9vjktBt5xpAQd10oJVc5i8rIGIS
         VWbxAEWeFp6sm5dEJ3nHElL8dW/SY5V4LXWWSUpv5ESTjPH5lRbJ44mqa2RsuypYrlCF
         IsECITZp9FhnoZSvIBC5iKaxc61T7AJkSRjs2kFyXrNaJvpEp6yUM3nnVVDT9PFu55mE
         7xrN8wxosBVYRV0lGqDcoxEdPcbWSVgYPg99qKjqvUZ1zIB79Xs538IpM3ax+jnUf1Q1
         GyXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iDbqz9HORYC68qQ03CR73vg4UGUlL2HFjrMBxAWkjRM=;
        b=rELCMbzJqygI9H8DqiRFuHgwOhobWL7UL/c+mCEyH4yyqzoCeSZ4lDWRaNW/H/s9m4
         8KxWRmdQ72DG70P2d+rei+qZkSAANEVefc2E52+uBw4KrWH/Kvey0m4uqgBja0FSuym4
         Dgft1YQZywG6rADQ9Zb15A+7f2nDGXv4WKXDrZOU4ZOhleg6KNMFacgiNDdhVyNXXQbP
         PirC4P9rSaWuU0PkUmXRz3QstebXQ+XjOT+WW5uO0gfdgs+ygGYrUnhQDJJt0Tj/KUxa
         AaSxX90kQdExGSW+XCDxVHKJdBXkr42fBwCBHWk75yjtKDX2JDbNEY+0vI8V3Po2tmuy
         hNfA==
X-Gm-Message-State: AOAM532jZ7M89+1r5EkQdSpOpf1WVxQ0qQDhs6QbZwf7mQAqFYQZD2nN
	ZZz6wVgDT404ipE4gWFf3R0=
X-Google-Smtp-Source: ABdhPJz/xRHTJl5WvCQUxHc8DmfkXJwkBBFtBN+K+OC+9f6L/IdTucTkofUsuwUoLSARFRM+Q6IZag==
X-Received: by 2002:a65:4187:: with SMTP id a7mr4748951pgq.16.1605642087938;
        Tue, 17 Nov 2020 11:41:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7488:: with SMTP id h8ls8471570pll.11.gmail; Tue, 17
 Nov 2020 11:41:27 -0800 (PST)
X-Received: by 2002:a17:90a:c085:: with SMTP id o5mr677173pjs.18.1605642087333;
        Tue, 17 Nov 2020 11:41:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605642087; cv=none;
        d=google.com; s=arc-20160816;
        b=Av4nPujtyKXT4hB1nU/aIXMeewIdgO6YSPvU5g5vfVXLPDSxhEmmdnoWe+vgvbSKIE
         ax550VKf8iX/vrH1G8fgQ+0Ml8scpGRKfG7Q88erqddYSl74CiXSOSYC5BEhZXFkA7bU
         aUKjoy3hkYHCySiSQL2toqpflQcvk/RSRt+N+SrJrG4nogxNrWc83MCbQgJEMD+aYHAS
         VuC6OIHHFfF+WaV9Nz3BnHM9yzh8gYx54JydWhmpyi2/ZtGcMcDcTenVPTyFLvusDLCQ
         YP63i3Tf8cj67NChCJ2o8EppiroVyP8yf0xWdNZk2kVGNYfzkckYW/4Mu8BruTuKQH8e
         AUsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3Ha3Pf7m43xGsOqdVk/c2fh9M5AzkQhemcyhlHdZ12E=;
        b=0zSlhpMqwns/TfGhtx0Mfc+yG1driadn3ceKMw03XdTqqDQg11rNKbiG7HXihYkdZW
         STVaJg7Qs4fMKPFJZfyNA7iMHy9/6wCZLIN3M7db0wLGM3JGTfAUC2MA4Qer7JAhqrPA
         Gku8RoksTWK8ebGVlQmIY8ZFhHEAy+t8Qv7/RMJqdY00wa+TvynZNEBokblUOOlPsko7
         vtiTOAW4CqJY/s79Xfnscc45RoujneitXh6ve56eSWjX/eou8VJlJPHt03TK+w59VYp8
         2DY+J3ZzRCdmHnA5y3BpXUtyRlujAC2gTOsmUX3sz2j2QJ/3wtx55SZCME3MB27LME5k
         27dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dRx9LRqt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id bg19si276245pjb.2.2020.11.17.11.41.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 11:41:27 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id 35so6651829ple.12
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 11:41:27 -0800 (PST)
X-Received: by 2002:a17:902:221:b029:d8:f938:b112 with SMTP id
 30-20020a1709020221b02900d8f938b112mr1006063plc.10.1605642086810; Tue, 17 Nov
 2020 11:41:26 -0800 (PST)
MIME-Version: 1.0
References: <20201113195553.1487659-1-natechancellor@gmail.com> <20201113195553.1487659-2-natechancellor@gmail.com>
In-Reply-To: <20201113195553.1487659-2-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Nov 2020 11:41:15 -0800
Message-ID: <CAKwvOdni24b_70xm+xK_7r2N77WrsOk4_OgoLiwSzZ5f+6vqfA@mail.gmail.com>
Subject: Re: [PATCH 2/2] kbuild: Disable CONFIG_LD_ORPHAN_WARN for ld.lld 10.0.1
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Kees Cook <keescook@chromium.org>, Russell King <linux@armlinux.org.uk>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"kernelci . org bot" <bot@kernelci.org>, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dRx9LRqt;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Fri, Nov 13, 2020 at 11:56 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> ld.lld 10.0.1 spews a bunch of various warnings about .rela sections,
> along with a few others. Newer versions of ld.lld do not have these
> warnings. As a result, do not add '--orphan-handling=warn' to
> LDFLAGS_vmlinux if ld.lld's version is not new enough.
>
> Reported-by: Arvind Sankar <nivedita@alum.mit.edu>
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Reported-by: Mark Brown <broonie@kernel.org>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1187
> Link: https://github.com/ClangBuiltLinux/linux/issues/1193
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  MAINTAINERS            |  1 +
>  init/Kconfig           |  6 +++++-
>  scripts/lld-version.sh | 20 ++++++++++++++++++++
>  3 files changed, 26 insertions(+), 1 deletion(-)
>  create mode 100755 scripts/lld-version.sh
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 3da6d8c154e4..4b83d3591ec7 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4284,6 +4284,7 @@ B:        https://github.com/ClangBuiltLinux/linux/issues
>  C:     irc://chat.freenode.net/clangbuiltlinux
>  F:     Documentation/kbuild/llvm.rst
>  F:     scripts/clang-tools/
> +F:     scripts/lld-version.sh
>  K:     \b(?i:clang|llvm)\b
>
>  CLEANCACHE API
> diff --git a/init/Kconfig b/init/Kconfig
> index a270716562de..40c9ca60ac1d 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -47,6 +47,10 @@ config CLANG_VERSION
>         int
>         default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
>
> +config LLD_VERSION
> +       int
> +       default $(shell,$(srctree)/scripts/lld-version.sh $(LD))
> +
>  config CC_CAN_LINK
>         bool
>         default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag)) if 64BIT
> @@ -1349,7 +1353,7 @@ config LD_DEAD_CODE_DATA_ELIMINATION
>           own risk.
>
>  config LD_ORPHAN_WARN
> -       def_bool ARCH_WANT_LD_ORPHAN_WARN && $(ld-option,--orphan-handling=warn)
> +       def_bool ARCH_WANT_LD_ORPHAN_WARN && $(ld-option,--orphan-handling=warn) && (!LD_IS_LLD || LLD_VERSION >= 110000)
>
>  config SYSCTL
>         bool
> diff --git a/scripts/lld-version.sh b/scripts/lld-version.sh
> new file mode 100755
> index 000000000000..cc779f412e39
> --- /dev/null
> +++ b/scripts/lld-version.sh
> @@ -0,0 +1,20 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# ld.lld-version ld.lld-command

^ it looks like this format was copied from scripts/gcc-version, but
it's kind of curious/cryptic to me for a comment about usage.  Is it
necessary?  A comment in the form:

# Usage: ./scripts/lld-version.sh ld.lld

Would be clearer to me.

> +#
> +# Print the linker version of `ld.lld-command' in a 5 or 6-digit form
> +# such as `100001' for ld.lld 10.0.1 etc.
> +
> +linker="$*"
> +
> +if ! ( $linker --version | grep -q LLD ); then
> +       echo 0
> +       exit 1
> +fi
> +
> +VERSION=$($linker --version | cut -d ' ' -f 2)

This is going to invoke the linker potentially twice if it's LLD.
Would it be nicer to capture the output of `$linker --version`, check
which linker it is, then slice that up via `cut` to get the version?

This version is fine to me, but if you're going to send a v2, that
might be a nice slight cleanup.  Otherwise,

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

(Please drop those tags if you modify this for v2 and I'll rereview/retest).

> +MAJOR=$(echo $VERSION | cut -d . -f 1)
> +MINOR=$(echo $VERSION | cut -d . -f 2)
> +PATCHLEVEL=$(echo $VERSION | cut -d . -f 3)
> +printf "%d%02d%02d\\n" $MAJOR $MINOR $PATCHLEVEL
> --
> 2.29.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdni24b_70xm%2BxK_7r2N77WrsOk4_OgoLiwSzZ5f%2B6vqfA%40mail.gmail.com.
