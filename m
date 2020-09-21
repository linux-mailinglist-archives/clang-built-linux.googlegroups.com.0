Return-Path: <clang-built-linux+bncBDYJPJO25UGBBD4ZUP5QKGQEZIY6W4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9E0272AC4
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 17:53:52 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id t10sf2164556uap.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 08:53:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600703631; cv=pass;
        d=google.com; s=arc-20160816;
        b=nBCZMF/1h4/ceVxeEA9+Mw85ElEMsUK//uLIwR8iyciivSPZRr8ASdx1zVafhltcP0
         3228uWR/uGADtug1JNszfgL8ayMAsT87cAPyh2/U7ssUuoV/VW0nUZzcMxXLvFw0oOJr
         8TcyI1gQJ7RuHpREo4wFd+2swWQrZu0m6GQob22r98/txljm3gWaP/THxLL+A4dnywTQ
         6cEOgzFgMOi8QVscvDZG1MWLZSsxa3lKrkiZZODOJnq3DCNEnjmnJSh7sL5rKnU19xCa
         LdA3rSZoi7G1OwtxuMQ76c97hyx+9sG2c3nO1np4jYxFakR5QCt4F7nGcj9cEtIAlTbM
         kQcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=P2TFYfa8ztsXslULYj+hqHIRh5mRqx4IoK0zztsygX4=;
        b=L0aICXZffn2fn/fwWHjJ7BWIwzLNvkjKK/01tYZDhhTRBseimOWVBGhu/b8zMfT9eA
         7AE9m5BcS2RWUnqhwrCZhAVPOjPx/uPJq6V7Xzs1ujyrQcEtOhHT8BfnzWnuRzHnq5YI
         HCTnDmtsjiXoswt0054OBTvcnlN7TPtz7K9hJw+tN4EWY2/dd0i1ZrHCz3/iIfRO02hM
         4OkZFocrpyVId9nO8/d8KR4SQ8Wt3/byNIlJsPkRBfE4qMh0WZf1+1XLFhZCQ1NKNarh
         pxS+m8faQ3Dtfmb1owT5Us8NtdcReZ2ZBHvmawcDjaPbWRh1hUq8JCicBeZd2fIoTY8f
         G+pQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wS3DJbGh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P2TFYfa8ztsXslULYj+hqHIRh5mRqx4IoK0zztsygX4=;
        b=QqI2C8b0wKCRggCNYm9FjhRRvjpgLt51YTtN5w78jwF8UopW10rAzLj8ENRncP6WR1
         09I9WVx+qV0CyHfWVTN1Jq09WrvmMgcDqLIDW/VYSD9McbFOLuyqb5XjGQMgawMsM0DJ
         SK9eAdVEiQ+Eg2D7JIfMspriz90UX8QQ5ddyTtsFQozeCYK7yq4qhrt9q3ETfoaF+w11
         Me7CsknhiR/u4YsFjlUbDZo8ZEaWbVq18HubGieHTDX291u/I7YtHv9DtY5rbmGV5A/p
         5QBW5hZaUz/2b8jyVi03/jz8ySvhJgYCD4PjNJYOdAZ8WAQVoqvSTEC9d6l8cI8Wflek
         x29Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P2TFYfa8ztsXslULYj+hqHIRh5mRqx4IoK0zztsygX4=;
        b=bTdNnyTm0+9EuNKyU+yxstLGzKlE+vRb8zYwFHA53UNpq8NBeu5XEdybaaxyGJmmGM
         3kHTGBGX46Gm800MeamZttHlzHhosOu5zO3aGy/w4e0bPFB8Od74Ub3y1R4uxOYS+uT1
         pQ8+9Cs0yO2kEG15VEp0lJEbGTvkPVVMfW7nsjcXr3lhqL5CU11zTy0JjZ/uUEjRtubd
         64W/9pbfx81Wy8ZebuGw6IdSXV+AP7SyY/efYt/3pvrXntGoZ4z2WclbUwU4M+PTgPvu
         hLowDwkPrWHpoKcDe0ZkX0R9/KFK2Sr1/5Zl1eyKqNe491S9zI7zqlNBDbzu1qLafWsv
         tjsw==
X-Gm-Message-State: AOAM532zE6MRNHvEBjs+JIgx4XaLlnEREHluLP5YVjnIlJnLTVlfWpNw
	TK74oKynr4pLMPc7Ckzrcig=
X-Google-Smtp-Source: ABdhPJwzVsyDqW4U67NII5jiBg4l7Gn3PIDUZWmZKWsYaj86aRfnvzFnoMZvHlk4bQAG9Bfn1F7d3A==
X-Received: by 2002:a67:8710:: with SMTP id j16mr604832vsd.31.1600703631591;
        Mon, 21 Sep 2020 08:53:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:db19:: with SMTP id z25ls1548325vsj.0.gmail; Mon, 21 Sep
 2020 08:53:51 -0700 (PDT)
X-Received: by 2002:a67:1d86:: with SMTP id d128mr601485vsd.58.1600703630964;
        Mon, 21 Sep 2020 08:53:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600703630; cv=none;
        d=google.com; s=arc-20160816;
        b=R6uq68B1HJribYRjs38dMcV/meyxzm12gVa+7s3XrO349zVxuwGp+D3u3U6PkDrKIM
         25I+1rQzR6nRoy59KHiiMThMVkkxIy7KRCwbpvNx4yyB7ViuvRHAt++FlsDsNifxXWFf
         EnCBcAoVEmUgEevth54aHyZeYSiui5WpQfXbUQL8hYXd7amBPOY1mYQNu6p4ZwgoBMxC
         2HWMWDajBSFB6eCqp4DYs1BUrsMvxNxCXsecgPtQxU6sXhsBRM4gEZCPTqUJ/35bB5nz
         It1J4s46G0LM1sbavgrPDdwsH2huSBB3bzl3WAU/7hn1lBm5OS2yzbUITiYIMn2IlVgo
         VL5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Fn5z5p0KWkT8F7kdqXLtUSD00/eNhULjEnaQyt7HO3c=;
        b=zPlKvE1GG6kHbfmzsAP2qYe8NdVilgFJOOagpkffxZIq9Yn1q2Xla7wevVBG+or9gG
         iKHzrKk7zO3CKqQDR4s7/JiII9Oeaz7bI5MPEWibHaRbpSPKj3D8NLkgw+EIDYfO2aNW
         B0chPAxUn4oBJH1/Ui+Tg3dGKaeUw+C10O3Cxc10yh6aV32yyqZBMy92Jd1Skrf+mFhu
         osWNcO4jTtvCFAfXxZP83+OlLV5oz5SoYE3H0TAXeIqD3KZegrzpw+Z4Sh7mHTsDwCFm
         dinmg+VLbMbPjDZ3LDsWp9XFqZe5yFhAYwE6qK5z5mn5Hgc1f8aAI3KGN9d75w0x9N7I
         LqYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wS3DJbGh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id p129si704443vkg.3.2020.09.21.08.53.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 08:53:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id a9so15512pjg.1
        for <clang-built-linux@googlegroups.com>; Mon, 21 Sep 2020 08:53:50 -0700 (PDT)
X-Received: by 2002:a17:90b:889:: with SMTP id bj9mr28426pjb.101.1600703630255;
 Mon, 21 Sep 2020 08:53:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com> <20200918201436.2932360-4-samitolvanen@google.com>
In-Reply-To: <20200918201436.2932360-4-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Sep 2020 08:53:39 -0700
Message-ID: <CAKwvOdk7pR5dK0ynxPOWHVYVWLMF1CUn6c=_GvpF-80YHNhQEQ@mail.gmail.com>
Subject: Re: [PATCH v3 03/30] x86/boot/compressed: Disable relocation relaxation
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wS3DJbGh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

It looks like this just hit mainline over the weekend. FWIW. EOM.

On Fri, Sep 18, 2020 at 1:14 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> From: Arvind Sankar <nivedita@alum.mit.edu>
>
> The x86-64 psABI [0] specifies special relocation types
> (R_X86_64_[REX_]GOTPCRELX) for indirection through the Global Offset
> Table, semantically equivalent to R_X86_64_GOTPCREL, which the linker
> can take advantage of for optimization (relaxation) at link time. This
> is supported by LLD and binutils versions 2.26 onwards.
>
> The compressed kernel is position-independent code, however, when using
> LLD or binutils versions before 2.27, it must be linked without the -pie
> option. In this case, the linker may optimize certain instructions into
> a non-position-independent form, by converting foo@GOTPCREL(%rip) to $foo.
>
> This potential issue has been present with LLD and binutils-2.26 for a
> long time, but it has never manifested itself before now:
> - LLD and binutils-2.26 only relax
>         movq    foo@GOTPCREL(%rip), %reg
>   to
>         leaq    foo(%rip), %reg
>   which is still position-independent, rather than
>         mov     $foo, %reg
>   which is permitted by the psABI when -pie is not enabled.
> - gcc happens to only generate GOTPCREL relocations on mov instructions.
> - clang does generate GOTPCREL relocations on non-mov instructions, but
>   when building the compressed kernel, it uses its integrated assembler
>   (due to the redefinition of KBUILD_CFLAGS dropping -no-integrated-as),
>   which has so far defaulted to not generating the GOTPCRELX
>   relocations.
>
> Nick Desaulniers reports [1,2]:
>   A recent change [3] to a default value of configuration variable
>   (ENABLE_X86_RELAX_RELOCATIONS OFF -> ON) in LLVM now causes Clang's
>   integrated assembler to emit R_X86_64_GOTPCRELX/R_X86_64_REX_GOTPCRELX
>   relocations. LLD will relax instructions with these relocations based
>   on whether the image is being linked as position independent or not.
>   When not, then LLD will relax these instructions to use absolute
>   addressing mode (R_RELAX_GOT_PC_NOPIC). This causes kernels built with
>   Clang and linked with LLD to fail to boot.
>
> Patch series [4] is a solution to allow the compressed kernel to be
> linked with -pie unconditionally, but even if merged is unlikely to be
> backported. As a simple solution that can be applied to stable as well,
> prevent the assembler from generating the relaxed relocation types using
> the -mrelax-relocations=no option. For ease of backporting, do this
> unconditionally.
>
> [0] https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/linker-optimization.tex#L65
> [1] https://lore.kernel.org/lkml/20200807194100.3570838-1-ndesaulniers@google.com/
> [2] https://github.com/ClangBuiltLinux/linux/issues/1121
> [3] https://reviews.llvm.org/rGc41a18cf61790fc898dcda1055c3efbf442c14c0
> [4] https://lore.kernel.org/lkml/20200731202738.2577854-1-nivedita@alum.mit.edu/
>
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Cc: stable@vger.kernel.org
> ---
>  arch/x86/boot/compressed/Makefile | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> index 3962f592633d..ff7894f39e0e 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -43,6 +43,8 @@ KBUILD_CFLAGS += -Wno-pointer-sign
>  KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
>  KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
>  KBUILD_CFLAGS += -D__DISABLE_EXPORTS
> +# Disable relocation relaxation in case the link is not PIE.
> +KBUILD_CFLAGS += $(call as-option,-Wa$(comma)-mrelax-relocations=no)
>
>  KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
>  GCOV_PROFILE := n
> --
> 2.28.0.681.g6f77f65b4e-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk7pR5dK0ynxPOWHVYVWLMF1CUn6c%3D_GvpF-80YHNhQEQ%40mail.gmail.com.
