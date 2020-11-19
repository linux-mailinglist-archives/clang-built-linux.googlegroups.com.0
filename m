Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBGA3P6QKGQELJSLWBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id C85922B9CC5
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 22:13:41 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id c19sf4963363pgj.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 13:13:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605820420; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vxs43EQEPZGm/U6TVxEc4ckzv4cqocs/pG1t90kgDYHA/ehzpoAhZiPckv2Ep+01uz
         zqpDt1jg1XZ0Ie9yKGYwBTKJgbYICEwVLbCBPXKmC0fzJ1WTlqqFESL6Lk84XtHrvKKR
         2fZtM8JJM8qFzg0xtWuRGwPbRzEH5B8eiUQNzG7sO0+mtfw5liTmylrNYWlpEIVsf9w0
         EGL4V4yEUIpggmG7A3dxyfO/YVjMtx8rAt65PwFp9U7DM5FvBF3xFSFquIvOu5a3Cuzv
         7VLvnKS/eGwE6tFNCdLlCDACxyDA3Fqs6RAO2eOQYJukdDImdKDPQBegOfCvENwS2BVo
         2pwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hriAaTJWxft1DHuFlkms+nN8mvTyAUN1TeSzq2HlfGs=;
        b=TZ5uD+mfPOJjVoZ/MqEbrqlKbgpBigrGR/6lCP94TL0iRtE0fuV13+ftywHwVHjLts
         3NjY6jlD0lTRxAW4jdGRZuc9qRpEGn2bi8NW51IRsCSRy5ULFqoOjtFY+04Em9zxE3Q4
         TObD+k3N1bOaB+u/6h4XEDr6QZvDrKZfoPctfshH6tnKGlaP2gvKB+vc+rPKG5EI3D2k
         S2J8BHNOsBnpNrcnSiMeCED6VR3anrzimiMHQPluBJQHkMAZkr72mGNBJSSjwDuC9gqb
         TWr85sEhyvO/E1Z7+7jFH830zNIUDOqmFxSAMSQKzVFmOzjlCuCEKqQU+WgILWqcm4HY
         GNfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VX9vMNKu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hriAaTJWxft1DHuFlkms+nN8mvTyAUN1TeSzq2HlfGs=;
        b=jXyvPDP9av7Vm4afeTEMXLAKfXBqkz7/fophaHRA19HUHSbTg2WWnz7VMR2C9TPb9i
         AvYwhYL08c6RM+M7Nn27Ok7RxDbIZDVUx61pN6J0Os/WfrACJbDmaJgnB27RCMrsf+FO
         M2ch81BNone/FQVBbwUoBFWz6I8orTAPqCKZEkZXev/pJAcocTvbsbDQqlxzcPcNl2X0
         yW8RTLd79GvWoG9DDCedxGtB63EFBiL7kq6JhqY7eV4so2HtEHZIhjpYW2v9FatL25UP
         sfDeao/lw2w5r/tvdLLkDtERKIqDM+mc4QYCAfGBq4Ld/8ntLS7HWOdX4m3bYvPsk8X0
         XTYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hriAaTJWxft1DHuFlkms+nN8mvTyAUN1TeSzq2HlfGs=;
        b=YMtM+ZfZNRY0geRb+KQgKmR6OA875H4RSeiVFss0mZCCJSpQ3sRMpWNv3XO1gX1Z1O
         z0FQVeubsTGj++O75xtqHphRRHKNPg2fKYIVeSx7LM7rqvQZFHwmxaj12vKK4Tazdr/J
         fUaTehf9w08Pi2OMfezQ0PVtJPXdIiWW4hlzgjbxqAiJI5GWX3BR9SD+jHul6wqX+w2y
         IVgCwQ/77UOMKz81qcilPEvtJvMJCjBXt7miLTiUS7v0WLP8wKz4hZBgYjowSpMh1ch7
         5s5AVNq8z5zABf/poARbS6z7FMWl9UAkY0EDW0tlarCUFASybC3hJBCu8FkC+gIE0acc
         MY+Q==
X-Gm-Message-State: AOAM531nfcjgl5We6ApakQrlKXYWXb9mWpIcklrMA+fqhTUvpooU97W/
	FrVFRNmrASacYBFWd3E78TM=
X-Google-Smtp-Source: ABdhPJzx84ioFygcVMZpVWAxiI6F5SEtReqgpryxg+di2ncbVb6TwM3hef3xgYPKLgSWUzxpVXi0MQ==
X-Received: by 2002:aa7:972b:0:b029:18b:89f:df0 with SMTP id k11-20020aa7972b0000b029018b089f0df0mr10824305pfg.39.1605820420523;
        Thu, 19 Nov 2020 13:13:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:be18:: with SMTP id a24ls2195834pjs.3.canary-gmail;
 Thu, 19 Nov 2020 13:13:39 -0800 (PST)
X-Received: by 2002:a17:90b:208:: with SMTP id fy8mr6475828pjb.204.1605820419898;
        Thu, 19 Nov 2020 13:13:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605820419; cv=none;
        d=google.com; s=arc-20160816;
        b=0Rk/jXkZLLsLuDOOUcgO8Jm8rJf/OkRVVRDW1tsTTc1oZ0BLjXXiu+qaO2Bz/Uvhov
         yEDSj1bat45GzMpdgNbsp3NbKCoa9KjvwkksmCraDYHwlKwnjhGMFHtai5UMKOhQZNuc
         5DjRDM3twu/q0ctRJWeO0r5EQke3Gn5epTn80yVfk/qFot/P86HeLS2dUyXgqxCCFNBY
         kP/yXVkeVX7ISOSLKcZ5D3+QNOCm+Hd8KPC2W2cZBgvBmd/eGR5F7avkozOrZ9VNmIKd
         WZgnjftC5HUYgijOipOxKSWGYB995qJa3JfoUUT0Z2ddlWcRC6okwybB8S8ue6tf6RT0
         vssQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=v4GZ/jYkXszE1mls+kEMDdrPEPVfJzO/2ICpEIaBNDQ=;
        b=SYSFTRbAEwWJGzVhQGaRPEu6o64maYyf1ZPX/wMdnnEp2TBMEyHpy3K8jsobhzHruw
         +2hK2YyvYuqSWwdmJgEkjg0na9QqqxSFSlA4+rMPJgbxnjxJlq42blQOacv18+h7N7d6
         Yrw4pzuEq1JGEglfFgkugCm63uPMS6HpnDASecEsQ1KTfadBzrvdzAsZNaPyckkH36sz
         Ekb/KovkGU9sorXrkLfLZKkRzIkpxDOMYOUIjZeG1GhnNVNKC8n51P953JzoEUk2BSpT
         06FXRoAkVNHJm+QhxFhR0qMcARXrHJl8CSCE22HoLJs+47+3lTi1YInxoULL51tveqpL
         4/1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VX9vMNKu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id h11si74157plr.1.2020.11.19.13.13.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Nov 2020 13:13:39 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id 131so5691007pfb.9
        for <clang-built-linux@googlegroups.com>; Thu, 19 Nov 2020 13:13:39 -0800 (PST)
X-Received: by 2002:a65:4485:: with SMTP id l5mr14014104pgq.10.1605820419400;
 Thu, 19 Nov 2020 13:13:39 -0800 (PST)
MIME-Version: 1.0
References: <20201113195553.1487659-1-natechancellor@gmail.com> <20201119204656.3261686-2-natechancellor@gmail.com>
In-Reply-To: <20201119204656.3261686-2-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 19 Nov 2020 13:13:27 -0800
Message-ID: <CAKwvOdkPgwL8H4EGF6=-VuxTdmxA8JHhGbLHVYcLJj9MmAvW=g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] kbuild: Disable CONFIG_LD_ORPHAN_WARN for ld.lld 10.0.1
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
 header.i=@google.com header.s=20161025 header.b=VX9vMNKu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Thu, Nov 19, 2020 at 12:57 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> ld.lld 10.0.1 spews a bunch of various warnings about .rela sections,
> along with a few others. Newer versions of ld.lld do not have these
> warnings. As a result, do not add '--orphan-handling=warn' to
> LDFLAGS_vmlinux if ld.lld's version is not new enough.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1187
> Link: https://github.com/ClangBuiltLinux/linux/issues/1193
> Reported-by: Arvind Sankar <nivedita@alum.mit.edu>
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Reported-by: Mark Brown <broonie@kernel.org>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the additions in v2.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> v1 -> v2:
>
> * Add condition as a depends on line (Kees Cook)
>
> * Capture output of "$* --version" to avoid invoking linker twice (Nick
>   Desaulniers)
>
> * Improve documentation of script in comments (Nick Desaulniers)
>
> * Pick up review tag from Kees
>
>  MAINTAINERS            |  1 +
>  init/Kconfig           |  5 +++++
>  scripts/lld-version.sh | 20 ++++++++++++++++++++
>  3 files changed, 26 insertions(+)
>  create mode 100755 scripts/lld-version.sh
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index e451dcce054f..e6f74f130ae1 100644
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
> index 92c58b45abb8..b9037d6c5ab3 100644
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
> @@ -1351,6 +1355,7 @@ config LD_DEAD_CODE_DATA_ELIMINATION
>  config LD_ORPHAN_WARN
>         def_bool y
>         depends on ARCH_WANT_LD_ORPHAN_WARN
> +       depends on !LD_IS_LLD || LLD_VERSION >= 110000
>         depends on $(ld-option,--orphan-handling=warn)
>
>  config SYSCTL
> diff --git a/scripts/lld-version.sh b/scripts/lld-version.sh
> new file mode 100755
> index 000000000000..d70edb4d8a4f
> --- /dev/null
> +++ b/scripts/lld-version.sh
> @@ -0,0 +1,20 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# Usage: $ ./scripts/lld-version.sh ld.lld
> +#
> +# Print the linker version of `ld.lld' in a 5 or 6-digit form
> +# such as `100001' for ld.lld 10.0.1 etc.
> +
> +linker_string="$($* --version)"
> +
> +if ! ( echo $linker_string | grep -q LLD ); then
> +       echo 0
> +       exit 1
> +fi
> +
> +VERSION=$(echo $linker_string | cut -d ' ' -f 2)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkPgwL8H4EGF6%3D-VuxTdmxA8JHhGbLHVYcLJj9MmAvW%3Dg%40mail.gmail.com.
