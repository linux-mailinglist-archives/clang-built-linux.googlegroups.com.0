Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4G653WAKGQEGAXAOVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id E77B3CEE6F
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Oct 2019 23:34:41 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id z7sf11024905pgk.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Oct 2019 14:34:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570484080; cv=pass;
        d=google.com; s=arc-20160816;
        b=JVi0z+4Xt4IqjmKNu9Hs3oxq7Z5M4AkyofAIsn9A+nPDrpgJiW3yAzbQkuI88XJg79
         1xTk+eDZfNHNSoUIucJ2diDo/vhMaPpT+qJfisuP5jQr7PM67y1zNZknmp1bytsiQA6W
         knKvpiqYezWTZ8iUfIIpaYK0wd3bYH/+KgPJwKvvgnizOkiszECQUDOQBEinqzHYjUxB
         rpcL/4mPDRIwUQPH/fg1Zcc4+E+kdHxb8NdD3Clsw7Ne4eg6mNSrK073v4SC1XYWu0T8
         fhMxysXZGWaBHoDLS3FpwoDlKbFaKyHf1924XiDpJ4ZdvZHdM4bZC0XJqqrcjV+j4yin
         dblg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=RbqDjaJR/N3lq4SLIhZbZIWRvABt4H8RDGLT1YTnynE=;
        b=HJjFhsq7xkP4WnDeonWDSAeWEu5VWhxM9GAHZO/ieg3l0qMaxFIyDfpi/LhiIE7zM6
         VFziOILiPRSYOhxbXf4VEalmy3ZDJgJNmaU0H49QBtX/BgGPStgT4H9tZ19/u5RUPPMt
         hzXjc07b9lFo+2omkIj3oouTSwgierQDwJkB2R42dzwOe3VFDfJOpn1Aro1yRMHDupWL
         Vcy63HZBRXu6x8/Zv1RJPzS5+InF5GSB9tm9KJstsohoEc6vhcbCMngkSD9mPCnMC1OV
         X6vjcwb536dohtt+ch4hdTVZxHDR/C0klp6YGoPjdrTLZs1JjnrCVg7UKYQ+QgyzNJkN
         jUCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ab23GOHo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RbqDjaJR/N3lq4SLIhZbZIWRvABt4H8RDGLT1YTnynE=;
        b=sIxibX4vpDIkZqflEazZeWaaT8xcXlLjJFPVs4ED+8H8GXO8UGhD8yIpiGWjujZFMI
         idkAPMRqSKFUbjGkM90j+bCdJQQBi9naI3LsKfCh/SPNH9n05fechIr75lQUEIqwVlNw
         uUlZSqAfzKYw9CVVxjilsDHf63Oq7TrgLOcJyBMTsFJmCRHcgFyP8cFHm3w6/sjavIMv
         XglIA97VsTpaMK9e6wzvmX0ScrAJ5GiEtQ81Z3EeP5lJzYydvRLxE4ajOl4JvZr+fcKu
         mSGJIs13LdcGLhE8llpnzLsr2VTMbGP9NOUeOp6pLZAipoQ7qu3mrllNvZBFF+FGnr6g
         Ytuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RbqDjaJR/N3lq4SLIhZbZIWRvABt4H8RDGLT1YTnynE=;
        b=I3X9v/Vli0sngDW3iNDKTBmTU1nrOLffHKbvgj4F9YCI1YAY5rxtRouIdObDHyuVGq
         BPXbsqiL7ueMEFegv8RwiVAu3rjOTkdEqwu1Mmz7wBHRDUusBsfdTRiLldgqr2/rP2i9
         YF/VmuJ6IL2YOTlj0yXK4mgru4q2xWqM0pQf2g233JRILxnhDvhW0FASLNm8ebbbVWgK
         nB6+aFYEvNdsT43D2f+xAnc1AjyFxg0AzL7LkA/9oIj1mawQjJHxIKHD/YBnIbvIW494
         5acB4FxjflbW7Qz7Rso87nZFWwpQBu6Ea6L/krl6WiAjlIRJ/71F76Zl6pCxyKm0iWH5
         QRRg==
X-Gm-Message-State: APjAAAWqpb6wsOrVVCmixQ8A7/t3npr4nyTQTmCotqdxRgIG//+H4S40
	VXGbZQCAhEo8D049pM+auYQ=
X-Google-Smtp-Source: APXvYqybYvM7N1iyv25cAF0ErGHZvpHI6crRhfpr6ROTC+8eEFItBIjX6EkXboTQx9w5L2zeJ53QPg==
X-Received: by 2002:a63:613:: with SMTP id 19mr8034403pgg.435.1570484080229;
        Mon, 07 Oct 2019 14:34:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:454d:: with SMTP id x13ls183476pgr.12.gmail; Mon, 07 Oct
 2019 14:34:39 -0700 (PDT)
X-Received: by 2002:a65:6792:: with SMTP id e18mr1369762pgr.166.1570484079171;
        Mon, 07 Oct 2019 14:34:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570484079; cv=none;
        d=google.com; s=arc-20160816;
        b=UMmE2jsssuRnDT4uQeQWbowQ2mTuTTBw81LIuI9ovYVSyz1ikJkYAIAJPBBUcQsakM
         BmCVvlcFUR6tqcwKfg3ox/1n92r8PFnQpb+UY/sRrkx/ghBK3PfUGKE45QcpyEYS4C4/
         uFxcEsJ6wnTkF3Mijf6r9VAg59XP6Se6dJXkq13s3Y1a48be1phkYONnbSyoX0H+Noy7
         92JKbJI45sUqn0uRd/kCgbJQQZ8FkYKrXKd5/+c1QCyvzHPyiE7cQ1jrAYnKbgjTtawf
         9WYIfjaapsrKSwtFxl3UdyQkIuVM3Dx0DHnVYjQh/83tUs+IfhzZ4ZalkjNjOBW77hq+
         aKjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BSjkDRau+gNdox3X7pHNAbU0K+agxk4/tBMFb1iKCao=;
        b=KkYioweV6CDoc5j+MhOBNEmhSr8dZU+WourJFMHp142WiBWJcVjQHK5xOx4y7+ZWui
         VqoEJfjbR4hW0Upe0MC3kShxFNVbWK1cXa6fG1s5P+rdNC8J06ijruvRXHjtticv+Adc
         L3EVuoj/9A1HxyXHhYs0dUnqCLzjNmVS/nzsKrlXW+Izs0HDLJIxokRDu5xqB+fMMZ9w
         PBY/osV84W9ayk1KIBozkBP4XnlR87GmewZXqbAKLyk2P0MIXGoa6vQPQVMAX7QN9Ydf
         CMZT5qPr0I4+hhdIEXEj5REFrWaD83h/8iFhjpbmB9zrJjXSNSeQcFlUF2AYqn7dS/31
         IvIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ab23GOHo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id g12si82913pfi.5.2019.10.07.14.34.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 14:34:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id q10so9511032pfl.0
        for <clang-built-linux@googlegroups.com>; Mon, 07 Oct 2019 14:34:39 -0700 (PDT)
X-Received: by 2002:a63:2f45:: with SMTP id v66mr33356685pgv.263.1570484077649;
 Mon, 07 Oct 2019 14:34:37 -0700 (PDT)
MIME-Version: 1.0
References: <20191007211418.30321-1-samitolvanen@google.com>
In-Reply-To: <20191007211418.30321-1-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 7 Oct 2019 14:34:26 -0700
Message-ID: <CAKwvOdnX6O0Grth11R8JLoD9bp-BECheucZKHbiHt4=XpQferA@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix alternatives with LLVM's integrated assembler
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Marc Zyngier <maz@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ab23GOHo;       spf=pass
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

On Mon, Oct 7, 2019 at 2:14 PM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> LLVM's integrated assembler fails with the following error when
> building KVM:
>
>   <inline asm>:12:6: error: expected absolute expression
>    .if kvm_update_va_mask == 0
>        ^
>   <inline asm>:21:6: error: expected absolute expression
>    .if kvm_update_va_mask == 0
>        ^
>   <inline asm>:24:2: error: unrecognized instruction mnemonic
>           NOT_AN_INSTRUCTION
>           ^
>   LLVM ERROR: Error parsing inline asm
>
> These errors come from ALTERNATIVE_CB and __ALTERNATIVE_CFG,
> which test for the existence of the callback parameter in inline
> assembly using the following expression:
>
>   " .if " __stringify(cb) " == 0\n"
>
> This works with GNU as, but isn't supported by LLVM. This change
> splits __ALTERNATIVE_CFG and ALTINSTR_ENTRY into separate macros
> to fix the LLVM build.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/472
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/include/asm/alternative.h | 32 ++++++++++++++++++----------
>  1 file changed, 21 insertions(+), 11 deletions(-)
>
> diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
> index b9f8d787eea9..324e7d5ab37e 100644
> --- a/arch/arm64/include/asm/alternative.h
> +++ b/arch/arm64/include/asm/alternative.h
> @@ -35,13 +35,16 @@ void apply_alternatives_module(void *start, size_t length);
>  static inline void apply_alternatives_module(void *start, size_t length) { }
>  #endif
>
> -#define ALTINSTR_ENTRY(feature,cb)                                           \
> +#define ALTINSTR_ENTRY(feature)                                                      \
>         " .word 661b - .\n"                             /* label           */ \
> -       " .if " __stringify(cb) " == 0\n"                                     \
>         " .word 663f - .\n"                             /* new instruction */ \
> -       " .else\n"                                                            \
> +       " .hword " __stringify(feature) "\n"            /* feature bit     */ \
> +       " .byte 662b-661b\n"                            /* source len      */ \
> +       " .byte 664f-663f\n"                            /* replacement len */
> +
> +#define ALTINSTR_ENTRY_CB(feature, cb)                                       \
> +       " .word 661b - .\n"                             /* label           */ \
>         " .word " __stringify(cb) "- .\n"               /* callback */        \
> -       " .endif\n"                                                           \
>         " .hword " __stringify(feature) "\n"            /* feature bit     */ \
>         " .byte 662b-661b\n"                            /* source len      */ \
>         " .byte 664f-663f\n"                            /* replacement len */
> @@ -62,15 +65,14 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
>   *
>   * Alternatives with callbacks do not generate replacement instructions.
>   */
> -#define __ALTERNATIVE_CFG(oldinstr, newinstr, feature, cfg_enabled, cb)        \
> +#define __ALTERNATIVE_CFG(oldinstr, newinstr, feature, cfg_enabled)    \
>         ".if "__stringify(cfg_enabled)" == 1\n"                         \
>         "661:\n\t"                                                      \
>         oldinstr "\n"                                                   \
>         "662:\n"                                                        \
>         ".pushsection .altinstructions,\"a\"\n"                         \
> -       ALTINSTR_ENTRY(feature,cb)                                      \
> +       ALTINSTR_ENTRY(feature)                                         \
>         ".popsection\n"                                                 \
> -       " .if " __stringify(cb) " == 0\n"                               \
>         ".pushsection .altinstr_replacement, \"a\"\n"                   \
>         "663:\n\t"                                                      \
>         newinstr "\n"                                                   \
> @@ -78,17 +80,25 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
>         ".popsection\n\t"                                               \
>         ".org   . - (664b-663b) + (662b-661b)\n\t"                      \
>         ".org   . - (662b-661b) + (664b-663b)\n"                        \
> -       ".else\n\t"                                                     \
> +       ".endif\n"
> +
> +#define __ALTERNATIVE_CFG_CB(oldinstr, feature, cfg_enabled, cb)       \
> +       ".if "__stringify(cfg_enabled)" == 1\n"                         \
> +       "661:\n\t"                                                      \
> +       oldinstr "\n"                                                   \
> +       "662:\n"                                                        \
> +       ".pushsection .altinstructions,\"a\"\n"                         \
> +       ALTINSTR_ENTRY_CB(feature, cb)                                  \
> +       ".popsection\n"                                                 \
>         "663:\n\t"                                                      \
>         "664:\n\t"                                                      \
> -       ".endif\n"                                                      \
>         ".endif\n"
>
>  #define _ALTERNATIVE_CFG(oldinstr, newinstr, feature, cfg, ...)        \
> -       __ALTERNATIVE_CFG(oldinstr, newinstr, feature, IS_ENABLED(cfg), 0)
> +       __ALTERNATIVE_CFG(oldinstr, newinstr, feature, IS_ENABLED(cfg))
>
>  #define ALTERNATIVE_CB(oldinstr, cb) \
> -       __ALTERNATIVE_CFG(oldinstr, "NOT_AN_INSTRUCTION", ARM64_CB_PATCH, 1, cb)
> +       __ALTERNATIVE_CFG_CB(oldinstr, ARM64_CB_PATCH, 1, cb)
>  #else
>
>  #include <asm/assembler.h>


Should the definition of the ALTERNATIVE macro
(arch/arm64/include/asm/alternative.h#L295) also be updated in this
patch to not pass `1` as the final parameter? Otherwise with this
patch and your LSE one
(https://lore.kernel.org/lkml/20191007201452.208067-1-samitolvanen@google.com/T/#u)
I get one error on linux-next that looks related:
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang
-j71 arch/arm64/kvm/
...
arch/arm64/kvm/hyp/entry.S:109:87: error: too many positional arguments
 alternative_insn nop, .inst (0xd500401f | ((0) << 16 | (4) << 5) |
((!!1) << 8)), 4, 1

               ^

Since __ALTERNATIVE_CFG now takes one less arg, with your patch?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnX6O0Grth11R8JLoD9bp-BECheucZKHbiHt4%3DXpQferA%40mail.gmail.com.
