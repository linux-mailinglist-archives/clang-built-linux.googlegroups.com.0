Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXFYZP4QKGQEKOQMVAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 588D4241F78
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Aug 2020 19:58:54 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id h6sf9601705plt.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Aug 2020 10:58:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597168732; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y9GklOHJCXLb+GhDCgMcYBP1+dV/wmhsqxd3w1c6x7AKDmy51qo1IAgwPI5tXO3D43
         2oBRZYi8Vh1Yst/3N9WygX/cJm5QtQyY+swC9i8zK3ZJ6TZ0a+PX0GkG1RqYnosGp5Cd
         AK0+VQt+bTWyg36enf5HO7UFdIJZTyS4yEwFjefCTyc3q/G7l1bUBwsNdlIJ4GveT7jf
         D23jLOaZqE132sBXeU5s5iY3r90u5R8qY6bVS9PHyk7CNa5Jx2iF4Dat49S2nufba/R7
         2z+96SVKDrX1Lzspy5BY/iJdPcafb99pksxPchRRSICHXT5OMm+aGXdPzSFcY1v5rQYn
         EPJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jRQpGRXWDfDbPclfA70s6JLMcMPhJ4SptomOiWchBWk=;
        b=saMmoRzK8Z0x/v4CbbUJKhoGm64jrsOX/Q4g5BP0iTyTq/Wt1HwsOBMYVv3HRhrmsv
         wYv0u6nAjEn0exPWDZeH6qy/zDdsXNYWfiRStQb5ARI5CgFG4cKzVWyiDpIARhtAxmnY
         mBme07MpgIz7fHYs0QZIk9JiPXA0eZa/9/st9r5ZvJsTlNPUkV/2AkYWkzgoIE5Tz/jT
         Vyb8yriBw7tP5iB55l8GZoEoA2vqdXJz/0XBj0CYco6WItdXG4NBljtk25lLDUr+dmle
         5XCYWd9HLLAHAt3CufgyeZ6XKOwjVnpdNjG0wvdOGgj0RFLzCKDtj65jZotBhpPU0CLy
         XCug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hppMyx4Q;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jRQpGRXWDfDbPclfA70s6JLMcMPhJ4SptomOiWchBWk=;
        b=TrSWC0NxfKWK3BDL6yuLK7wLD1j7nWdJxUrBfCpnHTQ/4Ft1XlnrFebC8LTTd4cuZN
         Z5YfLlNUHqiiDmo4pDZYGTE1ZnoVSs01/5+D9v2iVNr/WAwl8+SKZr59mbRGxl7Z3nud
         GwSr7bQo955CGepitFuZzJFvvuFXqHaCmxSbwZaltbMhfCLYnIr19tlubRUC+76JdvBf
         flVCVXnZnPhtZecv1l2GVWPEpNFY+5Pm2yiNyXulqk4hUzltiOcq3fwiJhS/xLujGicT
         SP7h7jpTduQIIaD0QujGwglL1Npyoj4gKT7Qxj1Bx35zYlHardoTUDj/Nmfg/S9zRNDi
         5mFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jRQpGRXWDfDbPclfA70s6JLMcMPhJ4SptomOiWchBWk=;
        b=Y/U3+4+aojB9iScTyPZVn6qczt7G+GqpFWkWV9OeLGQmRat2f+0u9nYcuB7nUIGAZJ
         dx/0J7FQdSNWDyK1TA67t/5XVtpVNLBMxnVnK1+lubEmE1tPBZ2fkmNlkPpOJTgB1jeC
         oT/7SpMHNsQykg9CiEauPFiOWzQNwMZTePVPw96XuZppx7MiVdn9eZqX3gCqiln6rowN
         lR0+kpvkDE0EZpmscZfgm5lAhkdsvndYHp4O6oouDe0pFzHwc6azFOLZHYxfR9WGnx22
         LtVL1d2g8pnNbsY3FIQudNFlGJwdKoAG+kzo662a7BeuNC4IxlKhQKoyZqile7i2yt95
         Cgew==
X-Gm-Message-State: AOAM530Vwa8ucNuB08FEuOMzZP43M0LIi+6472zkV41193f4Jen8ofOy
	i598S1Ql8RnY/phSfuE9fx0=
X-Google-Smtp-Source: ABdhPJzj9j5LOsXcSksBgfO9m8DH1cLseP1XvQaswyrEsBgzF3IsSZz8ZYRuoH9/g2eD5hTXPQUFHA==
X-Received: by 2002:a62:6142:: with SMTP id v63mr7468064pfb.179.1597168732528;
        Tue, 11 Aug 2020 10:58:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:358b:: with SMTP id mm11ls1632245pjb.2.gmail; Tue,
 11 Aug 2020 10:58:52 -0700 (PDT)
X-Received: by 2002:a17:902:c410:: with SMTP id k16mr1864877plk.340.1597168731894;
        Tue, 11 Aug 2020 10:58:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597168731; cv=none;
        d=google.com; s=arc-20160816;
        b=pu8DbyJeFy7NsqNS2kM0DLRg+9ZJdYFLit/MERbIxOqymRaYo7Hx+xp7DwMvLa3Qag
         GV/mIHTHM6LCQoE6wuOszuTi/K8RweuuQGdP/74mdb8x8IIs5Rg2dIJUNIlQZKfLz20d
         jB6yYsa0egIEu/Cy7XJKpvO9lipUh7wy8XBnR7CPXitj5d69LHPqI2qboVDMriFZURQc
         syoLKIwjmv0H0wH01PewsYfXkg0nH2w/W9gy8Kc70olMaM76dLSYQBpZ+34sRTz3dZwV
         w7DW9nPkDSn6yZgp0GRrDKpE9UXCSXLBZ/Q4xRB4q/t7BFDiNykU9RTBOfX260TIsvTG
         pPgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PwLucdZe8Zl1sdg+rBs5gzd1/sOQ/Nnh9Dc69W2ZlPY=;
        b=sB+xYZk05CavejQKHUcGdGLrmaJCHLxVfFbl8dzN/1lQb/YigGVlbaYLQ99Bessisl
         sAafN78OA0dKE2PuF/dUpSoEKHVILbWgUNH0QSotcVqlHdBLnwqyp84+/SezGgTx7WJa
         C1Z+PM67pDemqAHi5cm5qmjnaFK8IEg6dWGd5/RY07rnfO9Eitew6+yfEgl1gnbVjpGB
         Js4XVVfNSe+JZEI2zfwBHL74uCV2wBL98ZnBha+OJbTmskgG+XwLK/JdGD1mq6cBmo8i
         pVUtL5FYASQk5fv3l7RMqVSY1+MFUrZXpZZwqydbgRNRYMY9WYakVGS4mC6R/IsAXdgW
         r9+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hppMyx4Q;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id v127si356076pfc.0.2020.08.11.10.58.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2020 10:58:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id t10so7164736plz.10
        for <clang-built-linux@googlegroups.com>; Tue, 11 Aug 2020 10:58:51 -0700 (PDT)
X-Received: by 2002:a17:90a:a10c:: with SMTP id s12mr2287166pjp.32.1597168731165;
 Tue, 11 Aug 2020 10:58:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=ypa8xE-kaDa7XtzPsBH8=Xu_pZj2rnWaeawNs=3dDkw@mail.gmail.com>
 <20200811173655.1162093-1-nivedita@alum.mit.edu>
In-Reply-To: <20200811173655.1162093-1-nivedita@alum.mit.edu>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 11 Aug 2020 10:58:40 -0700
Message-ID: <CAKwvOdnjLfQ0fWsrFYDJ2O+qFAfEFnTEEnW-aHrPha8G3_WTrg@mail.gmail.com>
Subject: Re: [PATCH] x86/boot/compressed: Disable relocation relaxation for
 non-pie link
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Fangrui Song <maskray@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	e5ten.arch@gmail.com, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>, 
	LKML <linux-kernel@vger.kernel.org>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hppMyx4Q;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Tue, Aug 11, 2020 at 10:36 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
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
> the -mrelax-relocations=no option.
>
> [0] https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/linker-optimization.tex#L65
> [1] https://lore.kernel.org/lkml/20200807194100.3570838-1-ndesaulniers@google.com/
> [2] https://github.com/ClangBuiltLinux/linux/issues/1121
> [3] https://reviews.llvm.org/rGc41a18cf61790fc898dcda1055c3efbf442c14c0
> [4] https://lore.kernel.org/lkml/20200731202738.2577854-1-nivedita@alum.mit.edu/
>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Cc: stable@vger.kernel.org # 4.19.x

Thanks Arvind, good write up.  Just curious about this stable tag, how
come you picked 4.19?  I can see boot failures in our CI for x86+LLD
back to 4.9.  Can we amend that tag to use `# 4.9`? I'd be happy to
help submit backports should they fail to apply cleanly.
https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/builds/179237488

> ---
>  arch/x86/boot/compressed/Makefile | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> index 3962f592633d..c5449bea58ec 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -62,6 +62,12 @@ KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z noreloc-overflow" \
>  endif
>  LDFLAGS_vmlinux := -T
>
> +# Disable relocation relaxation if not linking as PIE
> +ifeq ($(filter -pie,$(KBUILD_LDFLAGS)),)
> +KBUILD_CFLAGS += $(call as-option, -Wa$(comma)-mrelax-relocations=no)
> +KBUILD_AFLAGS += $(call as-option, -Wa$(comma)-mrelax-relocations=no)
> +endif
> +
>  hostprogs      := mkpiggy
>  HOST_EXTRACFLAGS += -I$(srctree)/tools/include
>
> --
> 2.26.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnjLfQ0fWsrFYDJ2O%2BqFAfEFnTEEnW-aHrPha8G3_WTrg%40mail.gmail.com.
