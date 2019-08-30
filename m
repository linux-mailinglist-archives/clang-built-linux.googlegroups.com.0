Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBTURUPVQKGQEXBFGPYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id C0509A304A
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 08:57:18 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id k15sf3785794wrw.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 23:57:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567148238; cv=pass;
        d=google.com; s=arc-20160816;
        b=z5mCsr6kzATb3Fs6uMDhjPFf3v89/7Xurmt9lqHEX402Xgfqmt6sBJ2b5gKt9R2KEM
         KYGYTBf03TvnfVfbFmxJsePczTVdX2z+jbAp2Y4D2q8HSg8HXdDpTSrW3Yu/hH0pa//7
         XmYM3u1EdZKFb6q4V2kycwBv+MCm+0KX/wREyRqaLLu1j1VYhixMB2r98j8vwDERQNuE
         VUhcw+Uhw3FzVLiSN2n2MR3QJ38FGVmLtCb2wvSiN7Pq6Um0nYjuqHslO465cXCWL69D
         kEtc7KTpqN68wZ0+ZkVK7TnYHJexjV6OuNu2LYztkp3cG1NwAWggQn0poDEmLEIw3UMw
         sBYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=AmxYwipOVyxhTZpobi5tWKWW4GN492EvfEUKLsOJrls=;
        b=kpHXQzHeK2unah+7oWg14XD8x6XQ1bTZh99O8hsu549DSpiZhy1LU7OheL/mEUXQcb
         6J8iOANfaOLVoq41mQZSF7yuf4PMgwQQ4ML4K9TTtObH5QHysmFaKWoUpjo/PiX2jhcW
         oewkM5xIelSY/ph5ZKozeY2O+KsZMdQwr+/YumubgG6Tiy8RTRFsuCmN9cbwcXyV8yfN
         JhGGELYRiBhffcFMYgqWqEbrr3eh8KskeHeCjF7AJB/jICwHeYVnJWV2dbZqVWR1nU3B
         pQ5EJe/8P88/XBhMBI7WrgwrgZbToFiUaHYrylza88DHMo3S6nZNJ3sfznejXk9OEvBC
         Idsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=owt3QyqG;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AmxYwipOVyxhTZpobi5tWKWW4GN492EvfEUKLsOJrls=;
        b=R9DpNHn6qgNkQ8vIQox6l+J8kV2fGoMBTT3RutENE1HI/JeUBBPtkvHPjS4cQGoX2K
         3px6xmkEMEHeJOHZe27qN2bHrTnPGM6oV7aXLxueCx941gX1de/mSapZn2TOdd5dd8xK
         2csobquK9yEEsm6uPrEbwYM5DbfatNsk829OWnwQtyFE2C2Yz/FV9Z4FXa1UEYZMT1aJ
         n0paVNThLdU+C15dVv6VA7Dv0aGbCwsBjDppu3A/AVKq6oYnZePhYZ5g6aC8KB3u+CJQ
         7NUXCXNWDnF12Gh3aZCiC7mOxeeZpOD4X/7Ui5BRrdom6uMASGlyBYQ3NPC2ZOHKd9x8
         3kPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AmxYwipOVyxhTZpobi5tWKWW4GN492EvfEUKLsOJrls=;
        b=qK0i+oGMc/vXSck4hTmmzwCUm/g1pDQAoCS/LjTMYSLtvzzwH12TZGfFTLz7Q2oD9y
         J4XphpXVgZzK/pjxgNCtF/GqswviZSyidgdzGdnUQQ+DxEpgrntP44WSP9EZp6pDfmax
         h+P6EPCBBi5Tzi4d4QH4Qw8Kh/G6i3UUyaBP/NTJcQTECwTyDwOiWWXD5M40lnLKUi7S
         dUMM4nFOAEfSCussS44hsictDxmATXzaeQvA125k6FzTC1ygtrc6xbTu06zNiMjGixqs
         JUtdwuLZ5Z/2bYH06hyDhIc/2rWP426TfKC/EiAOoTxnKlwjtMrRD7dHcwpoUEkZilT4
         f0jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AmxYwipOVyxhTZpobi5tWKWW4GN492EvfEUKLsOJrls=;
        b=re9OBORb3rO+ZVq+/7asjyuqcrs9liw2EjByzoEbse47ibrtPPwdUbo1zE6p/HCiCu
         W2yIv49tFxZTx0/StFWINsuTM7ZbsR9HECYEh98xQiunwZni+GPNqO0Qbzffbv/CVpgK
         IyKnfDKHaQV3z/MjJTJqYmt8qlebp06opJkdSQVrSljv9+K2YxMldu+D534uty6x/mqn
         rXCPBqe45w9GehrXTEBtK8KeoYrf7RBXeFmMkyDpwiojk/p8rWfftmK3f44ymYFx0nFJ
         LvA4FDkPu6Yg72RlnI+zLFaQR0eezrtHkqE6TGbhj4dQ5i0nmXwVn7bWJnDu2ilkpNU1
         ElyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW9bx2t6ylEj9F88zEEvSCLcJyoR5qYldQHeTs24V23eU22APeW
	mH7n6hPRvjgFgtD18fCaf+Q=
X-Google-Smtp-Source: APXvYqxjofREgsocQwrGjHjCacRZ/S2nWGgHPnvRbp8pNtLkJTi4v0WmbvXNu/WTlikjDrezhHw4Qg==
X-Received: by 2002:a5d:4206:: with SMTP id n6mr16539552wrq.110.1567148238422;
        Thu, 29 Aug 2019 23:57:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a745:: with SMTP id e5ls1653659wrd.5.gmail; Thu, 29 Aug
 2019 23:57:17 -0700 (PDT)
X-Received: by 2002:adf:f204:: with SMTP id p4mr13774835wro.317.1567148237892;
        Thu, 29 Aug 2019 23:57:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567148237; cv=none;
        d=google.com; s=arc-20160816;
        b=F/a05rAAqa9iGjNWvD6UyD8Fcnv6WHhi7akaOFfP6dijpn7wt/x+O+xECUJdJ22r6c
         7lYmie7Xw2cspcEwEL7bkMFvBEooHmI+bIhE3rJVJPpSJOou3ITZnVq0R5v9vCGTzvyz
         Tau18mTcQHW9PG8WOKsehX4JKj6hipJy4n5DZFjlSScSZJ9bghw7xyVYR8G/m8k+23bl
         NhPxXbUtRtpSL4AmMdKORx+n2bbNX5/cONkAUBJ4wWLWLSab39PxQUdKe34/Ytqi+8Tl
         Q1kArgLKb2bYVI32Bx09TQBkSq9nbESfWYU4zoaqfSEXAoSrIbHrzDZYYbSHJnPDjMTs
         d2Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VLKh3E1PuY48ekGjWT58246X23cZqlaRWAMCgGrMkxk=;
        b=M8jc+6w86PCLFL1RbbhhdtyDmuBDPACouHlfSoEzJBo8iFu3o6j8HxGOMi9ncbPk9A
         HAq1dMJzsYtAUA14zAGt1ZsIhDSlukSEtWjGG4/dK/FE/pq/lvP1inMC0/uyTAfzcvz/
         j3Apf+s87A2xaT6VAHoeqtgFApiBrJbc5uqHZ36JWXxVJ+m/xX9qaxgWa8q632pgAlKR
         6Qa9Ws9wtKf0014/vMibCSYimKiAmbs9Q8H3iAxRyjdjIsaJIKrulPh+XJk0/FeHCVQy
         FNqKPSduebH8SDTVthxxPWXKFbJ13MhEk7cqqP9ASrGTNZzs49LnSdwDVQiem9PPhscU
         Vwqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=owt3QyqG;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id l9si275543wmc.0.2019.08.29.23.57.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 23:57:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id q12so5756363wrj.12
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 23:57:17 -0700 (PDT)
X-Received: by 2002:adf:8444:: with SMTP id 62mr13972444wrf.202.1567148237465;
 Thu, 29 Aug 2019 23:57:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190829181231.5920-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190829181231.5920-1-yamada.masahiro@socionext.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 30 Aug 2019 08:57:05 +0200
Message-ID: <CA+icZUVZ53vT=_K-MUTZvF+qx5bRRLrsw5_swiJYfKWiZ-4ERQ@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: refactor scripts/Makefile.extrawarn
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: linux-kbuild@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=owt3QyqG;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Thu, Aug 29, 2019 at 8:13 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Instead of the warning-[123] magic, let's accumulate compiler options
> to KBUILD_CFLAGS directly as the top Makefile does. I think this makes
> easier to understand what is going on in this file.
>
> This commit slightly changes the behavior, I think all of which are OK.
>
> [1] Currently, cc-option calls are needlessly evaluated. For example,
>       warning-3 += $(call cc-option, -Wpacked-bitfield-compat)
>     needs evaluating only when W=3, but it is actually evaluated for
>     W=1, W=2 as well. With this commit, only relevant cc-option calls
>     will be evaluated. This is a slight optimization.
>
> [2] Currently, unsupported level like W=4 is checked by:
>       $(error W=$(KBUILD_ENABLE_EXTRA_GCC_CHECKS) is unknown)
>     This will no longer be checked, but I do not think it is a big
>     deal.
>
> [3] Currently, 4 Clang warnings (Winitializer-overrides, Wformat,
>     Wsign-compare, Wformat-zero-length) are shown by any of W=1, W=2,
>     and W=3. With this commit, they will be warned only by W=1. I
>     think this is a more correct behavior since each warning belongs
>     to only one group.
>
> For understanding this commit correctly:
>
> We have 3 warning groups, W=1, W=2, and W=3. You may think W=3 has a
> higher level than W=1, but they are actually independent. If you like,
> you can combine them like W=13. To enable all the warnings, you can
> pass W=123. This is shown by 'make help', but it is often missed
> unfortunately. Since we support W= combination, there should not exist
> intersection among the three groups. If we enable Winitializer-overrides
> for W=1, we do not need to for W=2 or W=3. This is why I believe the
> change [3] makes sense.
>
> The documentation says -Winitializer-overrides is enabled by default.
> (https://clang.llvm.org/docs/DiagnosticsReference.html#winitializer-overrides)
> We negate it by passing -Wno-initializer-overrides for the normal
> build, but we do not do that for W=1. This means, W=1 effectively
> enables -Winitializer-overrides by the clang's default. The same for
> the other three. I wonder if this logic needs detailed commenting,
> but I do not want to be bothered any more. I added comments.
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Tested-by: Sedat Dilek <sedat.dilek@gmail.com> (on top of kbuild-next
as of 2019-08-30).

- Sedat -

> ---
>
> Changes in v2:
>   - Added comments and more commit log
>
>  scripts/Makefile.extrawarn | 105 +++++++++++++++++++------------------
>  1 file changed, 54 insertions(+), 51 deletions(-)
>
> diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> index a74ce2e3c33e..3680445823b7 100644
> --- a/scripts/Makefile.extrawarn
> +++ b/scripts/Makefile.extrawarn
> @@ -1,14 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  # ==========================================================================
> -#
>  # make W=... settings
> -#
> -# W=1 - warnings that may be relevant and does not occur too often
> -# W=2 - warnings that occur quite often but may still be relevant
> -# W=3 - the more obscure warnings, can most likely be ignored
> -#
> -# $(call cc-option, -W...) handles gcc -W.. options which
> -# are not supported by all versions of the compiler
>  # ==========================================================================
>
>  KBUILD_CFLAGS += $(call cc-disable-warning, packed-not-aligned)
> @@ -17,58 +9,69 @@ ifeq ("$(origin W)", "command line")
>    export KBUILD_ENABLE_EXTRA_GCC_CHECKS := $(W)
>  endif
>
> -ifdef KBUILD_ENABLE_EXTRA_GCC_CHECKS
> -warning-  := $(empty)
> +#
> +# W=1 - warnings that may be relevant and does not occur too often
> +#
> +ifneq ($(findstring 1, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
>
> -warning-1 := -Wextra -Wunused -Wno-unused-parameter
> -warning-1 += -Wmissing-declarations
> -warning-1 += -Wmissing-format-attribute
> -warning-1 += -Wmissing-prototypes
> -warning-1 += -Wold-style-definition
> -warning-1 += -Wmissing-include-dirs
> -warning-1 += $(call cc-option, -Wunused-but-set-variable)
> -warning-1 += $(call cc-option, -Wunused-const-variable)
> -warning-1 += $(call cc-option, -Wpacked-not-aligned)
> -warning-1 += $(call cc-option, -Wstringop-truncation)
> +KBUILD_CFLAGS += -Wextra -Wunused -Wno-unused-parameter
> +KBUILD_CFLAGS += -Wmissing-declarations
> +KBUILD_CFLAGS += -Wmissing-format-attribute
> +KBUILD_CFLAGS += -Wmissing-prototypes
> +KBUILD_CFLAGS += -Wold-style-definition
> +KBUILD_CFLAGS += -Wmissing-include-dirs
> +KBUILD_CFLAGS += $(call cc-option, -Wunused-but-set-variable)
> +KBUILD_CFLAGS += $(call cc-option, -Wunused-const-variable)
> +KBUILD_CFLAGS += $(call cc-option, -Wpacked-not-aligned)
> +KBUILD_CFLAGS += $(call cc-option, -Wstringop-truncation)
>  # The following turn off the warnings enabled by -Wextra
> -warning-1 += -Wno-missing-field-initializers
> -warning-1 += -Wno-sign-compare
> -
> -warning-2 += -Wcast-align
> -warning-2 += -Wdisabled-optimization
> -warning-2 += -Wnested-externs
> -warning-2 += -Wshadow
> -warning-2 += $(call cc-option, -Wlogical-op)
> -warning-2 += -Wmissing-field-initializers
> -warning-2 += -Wsign-compare
> -warning-2 += $(call cc-option, -Wmaybe-uninitialized)
> -warning-2 += $(call cc-option, -Wunused-macros)
> -
> -warning-3 := -Wbad-function-cast
> -warning-3 += -Wcast-qual
> -warning-3 += -Wconversion
> -warning-3 += -Wpacked
> -warning-3 += -Wpadded
> -warning-3 += -Wpointer-arith
> -warning-3 += -Wredundant-decls
> -warning-3 += -Wswitch-default
> -warning-3 += $(call cc-option, -Wpacked-bitfield-compat)
> -
> -warning := $(warning-$(findstring 1, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)))
> -warning += $(warning-$(findstring 2, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)))
> -warning += $(warning-$(findstring 3, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)))
> -
> -ifeq ("$(strip $(warning))","")
> -        $(error W=$(KBUILD_ENABLE_EXTRA_GCC_CHECKS) is unknown)
> -endif
> +KBUILD_CFLAGS += -Wno-missing-field-initializers
> +KBUILD_CFLAGS += -Wno-sign-compare
>
> -KBUILD_CFLAGS += $(warning)
>  else
>
> +# Some diagnostics such as -Winitializer-overrides are enabled by default.
> +# We suppress them by using -Wno... except for W=1.
> +
>  ifdef CONFIG_CC_IS_CLANG
>  KBUILD_CFLAGS += -Wno-initializer-overrides
>  KBUILD_CFLAGS += -Wno-format
>  KBUILD_CFLAGS += -Wno-sign-compare
>  KBUILD_CFLAGS += -Wno-format-zero-length
>  endif
> +
> +endif
> +
> +#
> +# W=2 - warnings that occur quite often but may still be relevant
> +#
> +ifneq ($(findstring 2, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> +
> +KBUILD_CFLAGS += -Wcast-align
> +KBUILD_CFLAGS += -Wdisabled-optimization
> +KBUILD_CFLAGS += -Wnested-externs
> +KBUILD_CFLAGS += -Wshadow
> +KBUILD_CFLAGS += $(call cc-option, -Wlogical-op)
> +KBUILD_CFLAGS += -Wmissing-field-initializers
> +KBUILD_CFLAGS += -Wsign-compare
> +KBUILD_CFLAGS += $(call cc-option, -Wmaybe-uninitialized)
> +KBUILD_CFLAGS += $(call cc-option, -Wunused-macros)
> +
> +endif
> +
> +#
> +# W=3 - the more obscure warnings, can most likely be ignored
> +#
> +ifneq ($(findstring 3, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> +
> +KBUILD_CFLAGS += -Wbad-function-cast
> +KBUILD_CFLAGS += -Wcast-qual
> +KBUILD_CFLAGS += -Wconversion
> +KBUILD_CFLAGS += -Wpacked
> +KBUILD_CFLAGS += -Wpadded
> +KBUILD_CFLAGS += -Wpointer-arith
> +KBUILD_CFLAGS += -Wredundant-decls
> +KBUILD_CFLAGS += -Wswitch-default
> +KBUILD_CFLAGS += $(call cc-option, -Wpacked-bitfield-compat)
> +
>  endif
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVZ53vT%3D_K-MUTZvF%2Bqx5bRRLrsw5_swiJYfKWiZ-4ERQ%40mail.gmail.com.
