Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNMRVHWAKGQETQ3SRBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7DDBCD95
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 18:47:50 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id 133sf1335601ybn.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 09:47:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569343669; cv=pass;
        d=google.com; s=arc-20160816;
        b=rVGtuOZeQLVBviKNCzlN2cLAiKBBt4s8q8wjdwUJQCSwA1eoTRFnfQGdbOtVEZjeLn
         EI/tueYx5i+Ry8j5glfDODS4UxdjLyVKn+z4osCHMo/Q0pesDmd3GWEqQJSOoAKRupQb
         QJoquyfxTWpzm49Su3NU7gWAzzt4GOUs8Gu2G+6nC9YRODBNKURiOgyE94JrScS4kgG7
         BH54waqBtuT8dgQe/3XcUYpcX0eC58dMtWemxwvGmN8cvo1+DPAdwy9ux1fenx9t6/kM
         Efagn3rDE7693LQN9NvCFvPJgBpR1I5JeyRykqJ2AxOyQWrjl77Lwb62qNR1lm+veYt+
         Stww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4M//3fC0hjAChLADN3s+cx5ZoxeUmVjo9cxVmZnN40k=;
        b=FF1bliTgvykNXafEncJr14dj/qWZ3gVOXdiW6HFsUlrNOlSJrX19PcDIKoCNUY2Uuw
         4Pdl8dUJgj1XnYMgVSqrTJN+ktqwF4e76K03Wrfp7w5skBRt6i7s1Rr4TBd667Z9xPDL
         ipUwXl26aBZeu8csxFnFktp6sKEtDweLVliMUJ+11jctIx2+HSdRU85aZTH0a+G6abJU
         t1xShKL7Eo6GIgOTwfM0/fuMvOXq73vOJAOjzvG4fiSnzhVO8bET59rW08TMih3t7KEi
         W+mtQ8FFHXvhwJePR/HELFvynVhRKy5jJTuKCN7VWSnAt4wDqH0oxlztZC328klN1x83
         FCHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vOP5zBgV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4M//3fC0hjAChLADN3s+cx5ZoxeUmVjo9cxVmZnN40k=;
        b=Md4axdbwAVrXYr8XenZoT9u2pNhoiOydSEr1fDZYMOQOvdv6G2TY3HAptx0dSpHFxX
         TT8wzGN+2TIi5gameKRgS1yckt4yH/B/Mtczkgl1KdG41U08jLwyCbApcJ/Lr5LMDY1z
         39kjAW7ukX8NaXQtj29Jnda5jhnatSpbLoAcCgd4pti+oQV8lJG/P6z8+hxWG0EMOEy7
         Z9dGZRUvAZjWLEsaoVrR3eOFVhFG4JwTYxcGE3gQdE0aNHzV7xv74l/dl7Wk3bHzvKYX
         iDZtVOK6vBY8nHJwgMBV6OZSljRfETzj2vDVefHMWx8nsnLTfjzFm62M0MpJoOXqwFRc
         FcBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4M//3fC0hjAChLADN3s+cx5ZoxeUmVjo9cxVmZnN40k=;
        b=E7cQwFYfwY8ilJCQe5oIcqLK3rK+snB+EiBa0pVc8f8B10UWCajCYGMsjPTYGNhXDy
         zks7EWj8uClhqPI+cuajKyC2wnfFRVZz6Ouw4a3yNEfty2C/bOjxZvl1KUr0n9W8IRIl
         l1DYxGrrqJ4GFRCJrYivIksxJS1rnzegPZE4zTI/XwZ5lHnBdYcTrkG44NMA+7Yu4QTP
         NehZRDoUxx+cFtcgPIHO3tX3DXUyhJ5EYPI0GUD5X2CB0rHc8Qw0vc29b4FEqCCllnuA
         6a5haBF92VDf2jDs2AAPCBG1I49K1gYh2l1p2y2af94H5xF3RJ+G8RMYegVaEV+35RUi
         C+Vw==
X-Gm-Message-State: APjAAAWAAFQXz6Npaud9/lgvHY9y8EWlSrBDfN36EBcNz3IRaLs/tPm/
	DTioGBlK52d2K42Ez0gft2E=
X-Google-Smtp-Source: APXvYqz+aj5FojMBh4NoShkYpTUn5UaiQmwo9aPZrwHdapjr0jQoqYa3ihYjMWG8uCe1tofWIYAr6Q==
X-Received: by 2002:a81:7846:: with SMTP id t67mr2862731ywc.28.1569343669117;
        Tue, 24 Sep 2019 09:47:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:af60:: with SMTP id x32ls394233ywj.3.gmail; Tue, 24 Sep
 2019 09:47:48 -0700 (PDT)
X-Received: by 2002:a81:3a02:: with SMTP id h2mr2805850ywa.448.1569343668879;
        Tue, 24 Sep 2019 09:47:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569343668; cv=none;
        d=google.com; s=arc-20160816;
        b=OoruAMZCJB//POqtxYYHvs79a9mHwTLc3JwvMVhjfFmVqT1rOQHQtNHQAnX503OMPq
         ZPcGG6gA62aaiHvbq5PHNz6YqQ0QOUxr+/W/cOk+h38wKs9DXCzPY+dDIzFiRE/x3pON
         zexf49o00tbtViTEPJvBoQdfIl4QQxKpQVmNVVcwKvo+h85S8xBUzMMAKJ/gSzYcwiWO
         3bM//NCjk6FFTRq5SLiaKAtIawRHidUGHTndVNmzUjhqPIDS+yw0E9IkUsEFAFuOOKqu
         VJrVbXw3tlvV3TRAeRIhUOIVtgya87tTStzXiwOZqpFkJs7sEVqAmWJMd8JIy/J4I797
         JzCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eg3k9f7VurRwzf46jcAwPnzOmV7EyviW3zf+/O2RKTw=;
        b=dqJAiAarP3gFCsjVZSGGZZ7t5puvfE/70uufOXyzplKFGUUgVK7P/3FY0DfnLj2imv
         AMhZ+zHkn3mXpxEZl54bQLN/cuQhPFtT07vFOOTB6qSBQ81ErXccWdgFiU//vKWRwKMD
         jIRpUahbDndegx5uO3besiZiV2VDAbEL2T1/Oyg8eCZohS+Ugij1+O03GNG5kvW//ZmF
         n8IAAitigqyYJmwegKjBwERGGycy9uqnpRcVNTms5FwS486EgckRRJZZi25RxxT/LiT2
         Q9mjzWWioiFFYnNhYDtAXG72jDNN0bPQc+IXDvcDCnEHVLpvaZ4WJoWxrckwfV8eWN02
         cIgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vOP5zBgV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id a1si138036ywh.3.2019.09.24.09.47.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2019 09:47:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id w10so1625194pgj.7
        for <clang-built-linux@googlegroups.com>; Tue, 24 Sep 2019 09:47:48 -0700 (PDT)
X-Received: by 2002:a63:d908:: with SMTP id r8mr4073008pgg.263.1569343667548;
 Tue, 24 Sep 2019 09:47:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190921064954.11196-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190921064954.11196-1-yamada.masahiro@socionext.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Sep 2019 09:47:36 -0700
Message-ID: <CAKwvOdnmYCbZiFKrvzwjJWmhzn5X+rKSs2GQZC4Dy-7VmKyntw@mail.gmail.com>
Subject: Re: [PATCH] kbuild: remove ar-option and KBUILD_ARFLAGS
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Jonathan Corbet <corbet@lwn.net>, 
	Michael Ellerman <mpe@ellerman.id.au>, Michal Marek <michal.lkml@markovi.net>, 
	Paul Mackerras <paulus@samba.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-doc@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vOP5zBgV;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Tue, Sep 24, 2019 at 9:38 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Commit 40df759e2b9e ("kbuild: Fix build with binutils <= 2.19")
> introduced ar-option and KBUILD_ARFLAGS to cope with old binutils.
>
> According to Documentation/process/changes.rst, the current minimal
> supported version of binutils is 2.21 so you can assume the 'D' option
> is always supported. Not only GNU ar but also llvm-ar supports it.

Yep, a nice cleanup. Thanks for the patch and I appreciate checking llvm-ar.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

>
> With the 'D' option hard-coded, there is no more user of ar-option
> or KBUILD_ARFLAGS.
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
>
>  Documentation/kbuild/makefiles.rst | 5 -----
>  Makefile                           | 4 ----
>  arch/powerpc/boot/Makefile         | 2 +-
>  scripts/Kbuild.include             | 5 -----
>  scripts/Makefile.build             | 2 +-
>  scripts/Makefile.lib               | 2 +-
>  6 files changed, 3 insertions(+), 17 deletions(-)
>
> diff --git a/Documentation/kbuild/makefiles.rst b/Documentation/kbuild/makefiles.rst
> index 6ba9d5365ff3..b89c88168d6a 100644
> --- a/Documentation/kbuild/makefiles.rst
> +++ b/Documentation/kbuild/makefiles.rst
> @@ -954,11 +954,6 @@ When kbuild executes, the following steps are followed (roughly):
>
>         From commandline LDFLAGS_MODULE shall be used (see kbuild.txt).
>
> -    KBUILD_ARFLAGS   Options for $(AR) when creating archives
> -
> -       $(KBUILD_ARFLAGS) set by the top level Makefile to "D" (deterministic
> -       mode) if this option is supported by $(AR).
> -
>      KBUILD_LDS
>
>         The linker script with full path. Assigned by the top-level Makefile.
> diff --git a/Makefile b/Makefile
> index 656a8c95789d..88b180b2cb64 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -498,7 +498,6 @@ export CFLAGS_KASAN CFLAGS_KASAN_NOSANITIZE CFLAGS_UBSAN
>  export KBUILD_AFLAGS AFLAGS_KERNEL AFLAGS_MODULE
>  export KBUILD_AFLAGS_MODULE KBUILD_CFLAGS_MODULE KBUILD_LDFLAGS_MODULE
>  export KBUILD_AFLAGS_KERNEL KBUILD_CFLAGS_KERNEL
> -export KBUILD_ARFLAGS
>
>  # Files to ignore in find ... statements
>
> @@ -914,9 +913,6 @@ ifdef CONFIG_RETPOLINE
>  KBUILD_CFLAGS += $(call cc-option,-fcf-protection=none)
>  endif
>
> -# use the deterministic mode of AR if available
> -KBUILD_ARFLAGS := $(call ar-option,D)
> -
>  include scripts/Makefile.kasan
>  include scripts/Makefile.extrawarn
>  include scripts/Makefile.ubsan
> diff --git a/arch/powerpc/boot/Makefile b/arch/powerpc/boot/Makefile
> index 6841bd52738b..dfbd7f22eef5 100644
> --- a/arch/powerpc/boot/Makefile
> +++ b/arch/powerpc/boot/Makefile
> @@ -50,7 +50,7 @@ endif
>
>  BOOTAFLAGS     := -D__ASSEMBLY__ $(BOOTCFLAGS) -nostdinc
>
> -BOOTARFLAGS    := -cr$(KBUILD_ARFLAGS)
> +BOOTARFLAGS    := -crD
>
>  ifdef CONFIG_CC_IS_CLANG
>  BOOTCFLAGS += $(CLANG_FLAGS)
> diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
> index e31fd6a8b2a3..956668239ef5 100644
> --- a/scripts/Kbuild.include
> +++ b/scripts/Kbuild.include
> @@ -143,11 +143,6 @@ cc-ifversion = $(shell [ $(CONFIG_GCC_VERSION)0 $(1) $(2)000 ] && echo $(3) || e
>  # Usage: KBUILD_LDFLAGS += $(call ld-option, -X, -Y)
>  ld-option = $(call try-run, $(LD) $(KBUILD_LDFLAGS) $(1) -v,$(1),$(2),$(3))
>
> -# ar-option
> -# Usage: KBUILD_ARFLAGS := $(call ar-option,D)
> -# Important: no spaces around options
> -ar-option = $(call try-run, $(AR) rc$(1) "$$TMP",$(1),$(2))
> -
>  # ld-version
>  # Note this is mainly for HJ Lu's 3 number binutil versions
>  ld-version = $(shell $(LD) --version | $(srctree)/scripts/ld-version.sh)
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 611bda95ac5e..f199341f04eb 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -395,7 +395,7 @@ $(sort $(subdir-obj-y)): $(subdir-ym) ;
>  ifdef builtin-target
>
>  quiet_cmd_ar_builtin = AR      $@
> -      cmd_ar_builtin = rm -f $@; $(AR) rcSTP$(KBUILD_ARFLAGS) $@ $(real-prereqs)
> +      cmd_ar_builtin = rm -f $@; $(AR) cDPrST $@ $(real-prereqs)
>
>  $(builtin-target): $(real-obj-y) FORCE
>         $(call if_changed,ar_builtin)
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 23e524027740..15895fd4ef9f 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -238,7 +238,7 @@ quiet_cmd_ld = LD      $@
>  # ---------------------------------------------------------------------------
>
>  quiet_cmd_ar = AR      $@
> -      cmd_ar = rm -f $@; $(AR) rcsTP$(KBUILD_ARFLAGS) $@ $(real-prereqs)
> +      cmd_ar = rm -f $@; $(AR) cDPrsT $@ $(real-prereqs)
>
>  # Objcopy
>  # ---------------------------------------------------------------------------
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190921064954.11196-1-yamada.masahiro%40socionext.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnmYCbZiFKrvzwjJWmhzn5X%2BrKSs2GQZC4Dy-7VmKyntw%40mail.gmail.com.
