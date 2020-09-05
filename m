Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBFPFZ75AKGQELEQWJWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3288A25EA57
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Sep 2020 22:18:31 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id v77sf9465418ybi.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Sep 2020 13:18:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599337110; cv=pass;
        d=google.com; s=arc-20160816;
        b=f3xvoH+BGt5n1LJslpl/3ug1hMIGslQQxp7rrkfgInncmMGqFGMikc1Duz0GgbuA8d
         530OxOb+9Ut4gWUzm8GpSeSlHZXtSNOKWSfrkA0orjt4HpxlWX2NQ08wXb7R1A/Wc0IK
         Fd7h0C7JrDA22itkTv9hV1BvGyQ5jbK5XNU79XB6FhQUYTh4dc+dr1Zif4x1hhg5ojT5
         JQsP7/ZmbQnKkyrBsBQsZECEQizu5Vb6Yw+S1Dy00pngEV0HIG7ljpSjifDqawgGJw8P
         Lkw0EvBELAQEzLG7s3tmOYBBIcCmbK2r5zIquleP6H1diyH3xPBi1/ksb3Tlv+rqzsry
         QKxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=2424yDVrASqYiebIT/MimVicfvk9pHBvVXRue89L3u8=;
        b=G0IBHQXrmSldHqDBaFiA6Gnidmxlop8/sk1iyC53M8X7RNNiOawOSpn7RCQ7rQ7YWm
         cTt2aTuYVM5k5V7+mOAFYZwxCTzvZMh0QPNk26stUgbjdChuhW5iwKWnM0Dv9xIkFXWC
         e1Y6cZ8jiqR6l6Wm6jSt7bZ9/aOerrlpvKyKTBY4jbqihAU4xp0FM8Tpy1YSiDODJQmi
         nTSwlm5W9ERigwdvvh3x24z7LX/zRXbYtrBW/ZRrHVUPQ8sRWbYORBKPASLTGCjbeUzK
         yCwRT8rdOyqcqF9MHm8SwSdYff9DWytYQJ7TeCA6qlHdJuEuPu8vvZVl5scRCvitq8+e
         5KpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=2mT3GBG1;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2424yDVrASqYiebIT/MimVicfvk9pHBvVXRue89L3u8=;
        b=cxmn9OUiV30jgwdplDmKlHSsVODDSqEhCoLZssSDhXL9V2Q2YorY4zUJ80JQteDUrN
         /wtlr5R8QBFPnJhtzoitR/DvbObrp/hk/LEU/ib9Tznc3+COU3gafA1Bm4d2Z6OisqJ9
         6P2o5eRqt5kNMTyq2zcoQoHC776krEOMhBzXZgvhXIPKDPbOpkLNQdoBD4u5mPq7f840
         zuk4KIUAd+18mjLnrNjbqmM3jxVn53pL1t3Np2L+tDtTcx2ZcVx9fFCxehWvnNsBqbnb
         DlwGeL5J95+xmFj2JFUJxXHohlel18F+gUymjS+xruofpFjPjy1iR0eAWEP3/R2B89XB
         J7KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2424yDVrASqYiebIT/MimVicfvk9pHBvVXRue89L3u8=;
        b=Ns6gyI1I3hoJpVTiGa+wS6jIUlEcdxf5rDAtnWyHIoKjNNIbqKkVt2Dgy7S2uPnHpg
         IVuWLI8yRvWuulS/CUsXJmBydX12xkwETSs5pgQvkphYRpJiyMfAJ3LwjyWCuliVyRjI
         TS16JByqErxu3y0HC0/uzBx+/oK3e6vC3wxBFJz3g2YMAp7nK7ap7TM6n/MDi3aaNnGe
         mRHkE1nEWZUkP5cYMo3nPKwcvyGJO/BWe8D0ZM48zVKI+GgHS+DuMAfgodF8Dwsf55Rh
         2N0NH/htjzF7n0NGfIUzlOzgIWz+vhp0Bs+1woVsnnNyDPC6QekpYOOMJmS054m0nlWH
         lVlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mhLqB9OLAFc06+5Q1qv0rsMv90PGiMxnc+cwUnAQHMfYloOnO
	c9fy8y84pf2vzEniiO3JNM8=
X-Google-Smtp-Source: ABdhPJzfveGfbartm9MYpCbtfDx/9x3JwAQydUqyk28O1mksmRYabjeEvfc6u4OqUXL/XCGSZYelDA==
X-Received: by 2002:a5b:44d:: with SMTP id s13mr18716274ybp.403.1599337110047;
        Sat, 05 Sep 2020 13:18:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ef05:: with SMTP id g5ls1270440ybd.0.gmail; Sat, 05 Sep
 2020 13:18:29 -0700 (PDT)
X-Received: by 2002:a25:ba4f:: with SMTP id z15mr18704478ybj.171.1599337109601;
        Sat, 05 Sep 2020 13:18:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599337109; cv=none;
        d=google.com; s=arc-20160816;
        b=Q87VUl3+Q+cQD+udi4C6UMLDwd7ahv80cMDxpUr7avzEkjWcbEtkACf7oBe3e5x7//
         eU+tbcgyDvXrYf8gjzlVyDM5ONVTlo0jUWVBKpS5gMEwTeQ3u/DXzPBLaS1HiqtJ3PR/
         w51VCq5j75xO6gAK5PB7cGgZbIFC2Q4HOD8GP8XSU/7odI/izsajuKLbdNJZZiRggdsd
         YZ7rksyHg2L3FRZLsgOEh0d5aEqgRgT9IG9RP3iQ5a8N6Ix81ZzDHWVTlwD/WMeclXWH
         vbDu4ttCnOUWyAkos1XldsMf3VNLcPDCuKDQ+JNHmuye7f5W7ENCHPiw0WRVCDv1uRo2
         M7bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=AM99QzFxxKGBKlEOzZ//FGYuWqlVjObjhMrW0TXZ1vI=;
        b=hVAYF18ntTHiJ/EFsRnShSULHmk1hnTVSbYt/KQTgj7WMu0LMQ2MAGqh14JHK94nwL
         upfNY91fWQrWatdvpkajRgJZ3ygOJt+jDHeEg3F5Uj6881dpEyWPvaa7IEQaZp+jS9Zu
         zCR2ZmMUeCJpdkPXbNRZXATaOUavduWKxrPl0LectT5J1Moj6zgcX22Lugdv75jsEOuE
         UE0HC0Pa+O+Kb6C38VqczvmKAB4bAcBCmOz2GU2Z1wv2OI2XTQLbTeQldyAgiLP/QatS
         Hu0cJcEG6Irup12tKNR1aHAzLfYUWV8cCqnDfXS8oynrzCngjPdFCoocrwXKZiiBIylm
         rAFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=2mT3GBG1;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id p14si1150637ybl.4.2020.09.05.13.18.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Sep 2020 13:18:29 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 085KIAZ3025834
	for <clang-built-linux@googlegroups.com>; Sun, 6 Sep 2020 05:18:11 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 085KIAZ3025834
X-Nifty-SrcIP: [209.85.215.172]
Received: by mail-pg1-f172.google.com with SMTP id j34so694862pgi.7
        for <clang-built-linux@googlegroups.com>; Sat, 05 Sep 2020 13:18:10 -0700 (PDT)
X-Received: by 2002:a62:8007:0:b029:13c:1611:6533 with SMTP id
 j7-20020a6280070000b029013c16116533mr12182097pfd.5.1599337089871; Sat, 05 Sep
 2020 13:18:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com> <20200903203053.3411268-10-samitolvanen@google.com>
In-Reply-To: <20200903203053.3411268-10-samitolvanen@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 6 Sep 2020 05:17:32 +0900
X-Gmail-Original-Message-ID: <CAK7LNASTtxJ7OCMM_KxmaoSL3CDfTY-65Pu=-MYkMo7iz-_NOQ@mail.gmail.com>
Message-ID: <CAK7LNASTtxJ7OCMM_KxmaoSL3CDfTY-65Pu=-MYkMo7iz-_NOQ@mail.gmail.com>
Subject: Re: [PATCH v2 09/28] kbuild: add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
        Steven Rostedt <rostedt@goodmis.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Kernel Hardening <kernel-hardening@lists.openwall.com>,
        linux-arch <linux-arch@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=2mT3GBG1;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Sep 4, 2020 at 5:31 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> This change adds build system support for Clang's Link Time
> Optimization (LTO). With -flto, instead of ELF object files, Clang
> produces LLVM bitcode, which is compiled into native code at link
> time, allowing the final binary to be optimized globally. For more
> details, see:
>
>   https://llvm.org/docs/LinkTimeOptimization.html
>
> The Kconfig option CONFIG_LTO_CLANG is implemented as a choice,
> which defaults to LTO being disabled. To use LTO, the architecture
> must select ARCH_SUPPORTS_LTO_CLANG and support:
>
>   - compiling with Clang,
>   - compiling inline assembly with Clang's integrated assembler,
>   - and linking with LLD.
>
> While using full LTO results in the best runtime performance, the
> compilation is not scalable in time or memory. CONFIG_THINLTO
> enables ThinLTO, which allows parallel optimization and faster
> incremental builds. ThinLTO is used by default if the architecture
> also selects ARCH_SUPPORTS_THINLTO:
>
>   https://clang.llvm.org/docs/ThinLTO.html
>
> To enable LTO, LLVM tools must be used to handle bitcode files. The
> easiest way is to pass the LLVM=1 option to make:
>
>   $ make LLVM=1 defconfig
>   $ scripts/config -e LTO_CLANG
>   $ make LLVM=1
>
> Alternatively, at least the following LLVM tools must be used:
>
>   CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm
>
> To prepare for LTO support with other compilers, common parts are
> gated behind the CONFIG_LTO option, and LTO can be disabled for
> specific files by filtering out CC_FLAGS_LTO.
>
> Note that support for DYNAMIC_FTRACE and MODVERSIONS are added in
> follow-up patches.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  Makefile                          | 18 +++++++-
>  arch/Kconfig                      | 68 +++++++++++++++++++++++++++++++
>  include/asm-generic/vmlinux.lds.h | 11 +++--
>  scripts/Makefile.build            |  9 +++-
>  scripts/Makefile.modfinal         |  9 +++-
>  scripts/Makefile.modpost          | 24 ++++++++++-
>  scripts/link-vmlinux.sh           | 32 +++++++++++----
>  7 files changed, 154 insertions(+), 17 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index a9dae26c93b5..dd49eaea7c25 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -909,6 +909,22 @@ KBUILD_CFLAGS      += $(CC_FLAGS_SCS)
>  export CC_FLAGS_SCS
>  endif
>
> +ifdef CONFIG_LTO_CLANG
> +ifdef CONFIG_THINLTO
> +CC_FLAGS_LTO_CLANG := -flto=thin -fsplit-lto-unit
> +KBUILD_LDFLAGS += --thinlto-cache-dir=.thinlto-cache
> +else
> +CC_FLAGS_LTO_CLANG := -flto
> +endif
> +CC_FLAGS_LTO_CLANG += -fvisibility=default
> +endif
> +
> +ifdef CONFIG_LTO
> +CC_FLAGS_LTO   := $(CC_FLAGS_LTO_CLANG)


$(CC_FLAGS_LTO_CLANG) is not used elsewhere.

Why didn't you add the flags to CC_FLAGS_LTO
directly?

Will it be useful if LTO_GCC is supported ?



> +KBUILD_CFLAGS  += $(CC_FLAGS_LTO)
> +export CC_FLAGS_LTO
> +endif




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASTtxJ7OCMM_KxmaoSL3CDfTY-65Pu%3D-MYkMo7iz-_NOQ%40mail.gmail.com.
