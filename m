Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOU65OEAMGQEETLHSCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id A82983EDEC0
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 22:48:58 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id l12-20020a2ea80c0000b02900f5b2b52da7sf6437114ljq.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 13:48:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629146938; cv=pass;
        d=google.com; s=arc-20160816;
        b=yjPjLLM+uzBxmzNfWhWf2s35bu/OuRoAOTHn7PDZH8/05Fyg9E+PKfknDfV48l3pLj
         h3pA0BnuhqC+Lkg8F84OONhX14X9eHMlZC1nmY03pSCw2JfNdDTAMkzZ54F9tHOZ9H14
         ab05LdwNCvKj4+y5WbOF+MKrELbyHZNP5EprWVZRnYamEA+mNfr2xyqf3mZ+wNUV3hh/
         Qimi4aivSL4DbHff5CD6E4OtqE/xuvS6OCytdqu+YbNztRwYgquJyomNtsy2DsHqBuCh
         q6Gbhk0I89lmnLYYwMMc9cn7a926xGTSAbGTSJbAuPpSQI5wytcT6ax8zv50Q/NaL1wL
         pUnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=21Hrm61a07tb34s79qAoAtGA09apstq7gZZnIBuKUnY=;
        b=qL4BSMe5v+7VHQQm2tm2JvB+VBeXXgDMU9bkdNIkUGmHmlLgh9PrJSI5dPrhQsHFTP
         cIGbkkIsKmqGwMeTjPir1fMnjTkruy4eBILG+X2glSXzS5NIOjHAGWirTbQGWDUut+Bn
         PHLqcVLBQR+QwA9GkasJZuyLX6gR5CPIXXl6RKY1gJsVsd57z46D29/4l9ojhg5KcPRZ
         zWQEYrte4SoSSofKxRgpm5Kc1nssXpUSEHqjZZpMS2uYAt5nG5sYwGCJ3gqv+nXC5ltu
         JZxznJ06u8FCH4b3MsqOdWspEjhz3oMspeT1zCspGFpBSRapiBoZI5hEdtYGnUaXI9rk
         I05A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m3xilTAz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=21Hrm61a07tb34s79qAoAtGA09apstq7gZZnIBuKUnY=;
        b=dxBHeqcStv+gSlHL6yIQqkso5MweEdC79R1LeAbXP0d2F67YRCB5PoFvSMeOJrU1yW
         itGm45A/XGq898PIbMu7Ky7ylSI6nKgLZZJp6bApbZgKzjkSqiGgPagGMfw59cY1ACLX
         WELbQ+kC0RZ5MJhrHNcBW0HaGbTJE1chGXGWHA1oLP+DZqYfSSLlQmUlNs28Vbc7d9PQ
         DiFt5ezS651Z529IN/le2zSbwkdhRJixUPaoqgzyefBnQqlY05NMdGkegyNv0GZKkcG1
         1mJP8F0ytLMPWioFVIjLjnGlIjhE7/XnYHCywiqoYZ+p9XX3YdjtgHWg25c5j2HZzTxJ
         KfmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=21Hrm61a07tb34s79qAoAtGA09apstq7gZZnIBuKUnY=;
        b=Gcu+j8V0utsOzjgFtjXxM6W5NRADsAKj79ZYX7oUxpwn6rOcJrcyDdb/MxYh4SN2Ke
         SM70hcv5zd8AY94tomXFN+6GjkTbSLf0iJAVv+k+IwD0Mw5d4OcmecwRKsb+eUPoIw/m
         /sBYyTWsVlwNCgVW+jiIdrwzJFKLrhC2MP2/fxjBiqZ7q5zkpZKe5iSZ4KUVaumCZgE2
         Cg27nakVeQNeY9ljPK8pS4e0UkhKtbwFSDgIP4a8dK43lkSYasPk7WImYDdbWfecSvqM
         2Xb3bjgOnL0h73F44Xvwvhcr5a+eZbGGd9oSrDklLtOEk8Pxc2oY3VrTMGQMRkhs2Yr0
         CBwQ==
X-Gm-Message-State: AOAM530UPY3fokBSua5Rosb15S5Uw+lMIzQezZOtkn9Rb4tyUDWorxBV
	K5uXkALssaLikAHMfS06n1Y=
X-Google-Smtp-Source: ABdhPJwQ+L2gVc08nR6x4Zc9oCtww/fm+e5JR2IM61eD4r2uVylttcD6/CIQnZ3ixESK6T/iBA+F7Q==
X-Received: by 2002:a05:651c:981:: with SMTP id b1mr77583ljq.281.1629146938237;
        Mon, 16 Aug 2021 13:48:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls17898lfi.2.gmail; Mon, 16 Aug
 2021 13:48:57 -0700 (PDT)
X-Received: by 2002:ac2:5c09:: with SMTP id r9mr181136lfp.422.1629146937196;
        Mon, 16 Aug 2021 13:48:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629146937; cv=none;
        d=google.com; s=arc-20160816;
        b=DMR9ewca5B37hG/zt/0R0nHlcsO+3HttBF4sd//j84EFBoEB7lHnZIGhFN3zMt4gNw
         uDYQHtUMYrtcu9p4K01VyUm2GC6CszCr9K3rqv05q5Vz0P51P8N8FXvOZ/T/ak/HmOji
         Gi+u4lm6kyseeWHBbfh7UUOB/vIz7bgsHhpardSDEdmylG0Q6PHMCa5KkpumBM6/XCCH
         edIPLc4Ut8ztQ5jshRGz3SlOL45RR2MkesMPhCm2Cf/rOkMRXRD3b90PXLEkcbilvO3k
         V1kJnPVNkzKht3pvIS7st1EFPYQLuv4XiyqYsZgemH/qhuzcB1Vz/E01qr16tevthCyk
         j1QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RkFK9buKoxTffeATRlVHoBzA8iEtr+XNkO5dgCSB86k=;
        b=v5tAKAjdYTRfz4ThUbDu3l/3A+iCgbwm8XCkTP/hpZ6kBcm3Emcmvze8qu/LFeUEV5
         zulxrY+HVLTTqQ35f7CZcepHivB889OHQliA2yMXAgZTQ0pvzWyWVL6QQ2o0ShUN9H+a
         rKZDHxVOUdOZvw6U6ypwzFAtCdOjMMtb5GiiXFkq8qfYlRMpipo2yZjnkqSBD5oPChsz
         OEfBWSD6iEumQgeLAoL2dIiNr3OzbZ1ecxYizBzi/pTeSOglaG92zKaL5qJnx1oQIoCM
         D2xsoIEVnfxv4doFPeRUvfVoidUpDhNHOKBG5FgGX3HunRqv4FhBfodxvGYqsjUiiw3r
         oLwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m3xilTAz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id f16si2840ljj.3.2021.08.16.13.48.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 13:48:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id u22so5858046lfq.13
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 13:48:57 -0700 (PDT)
X-Received: by 2002:ac2:4e8c:: with SMTP id o12mr188297lfr.374.1629146936679;
 Mon, 16 Aug 2021 13:48:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210816203635.53864-1-nathan@kernel.org>
In-Reply-To: <20210816203635.53864-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Aug 2021 13:48:45 -0700
Message-ID: <CAKwvOd=+rn-xyHrX=P=B19EJ8MSmDvQt8oU+QD=59KUHOC7R=A@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Switch to 'f' variants of integrated assembler flag
To: Nathan Chancellor <nathan@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=m3xilTAz;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131
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

On Mon, Aug 16, 2021 at 1:37 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> It has been brought up a few times in various code reviews that clang
> 3.5 introduced -f{,no-}integrated-as as the preferred way to enable and
> disable the integrated assembler, mentioning that -{no-,}integrated-as
> are now considered legacy flags.
>
> Switch the kernel over to using those variants in case there is ever a
> time where clang decides to remove the non-'f' variants of the flag.
>
> Link: https://releases.llvm.org/3.5.0/tools/clang/docs/ReleaseNotes.html#new-compiler-flags
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks for the patch! Want to fix
tools/testing/selftests/rseq/Makefile and
tools/testing/selftests/sched/Makefile, too? Either way...
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  scripts/Makefile.clang | 4 ++--
>  scripts/as-version.sh  | 6 +++---
>  2 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
> index 3ae63bd35582..4cce8fd0779c 100644
> --- a/scripts/Makefile.clang
> +++ b/scripts/Makefile.clang
> @@ -23,11 +23,11 @@ CLANG_FLAGS += --target=$(notdir $(CROSS_COMPILE:%-=%))
>  endif # CROSS_COMPILE
>
>  ifeq ($(LLVM_IAS),0)
> -CLANG_FLAGS    += -no-integrated-as
> +CLANG_FLAGS    += -fno-integrated-as
>  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
>  CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
>  else
> -CLANG_FLAGS    += -integrated-as
> +CLANG_FLAGS    += -fintegrated-as
>  endif
>  CLANG_FLAGS    += -Werror=unknown-warning-option
>  KBUILD_CFLAGS  += $(CLANG_FLAGS)
> diff --git a/scripts/as-version.sh b/scripts/as-version.sh
> index 8b9410e329df..a0fc366728f1 100755
> --- a/scripts/as-version.sh
> +++ b/scripts/as-version.sh
> @@ -21,13 +21,13 @@ get_canonical_version()
>         echo $((10000 * $1 + 100 * ${2:-0} + ${3:-0}))
>  }
>
> -# Clang fails to handle -Wa,--version unless -no-integrated-as is given.
> -# We check -(f)integrated-as, expecting it is explicitly passed in for the
> +# Clang fails to handle -Wa,--version unless -fno-integrated-as is given.
> +# We check -fintegrated-as, expecting it is explicitly passed in for the
>  # integrated assembler case.
>  check_integrated_as()
>  {
>         while [ $# -gt 0 ]; do
> -               if [ "$1" = -integrated-as -o "$1" = -fintegrated-as ]; then
> +               if [ "$1" = -fintegrated-as ]; then
>                         # For the intergrated assembler, we do not check the

^ want to fix this typo, too? s/intergrated/integrated/

>                         # version here. It is the same as the clang version, and
>                         # it has been already checked by scripts/cc-version.sh.
>
> base-commit: f12b034afeb3a977bbb1c6584dedc0f3dc666f14
> --
> 2.33.0.rc2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D%2Brn-xyHrX%3DP%3DB19EJ8MSmDvQt8oU%2BQD%3D59KUHOC7R%3DA%40mail.gmail.com.
