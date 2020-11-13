Return-Path: <clang-built-linux+bncBC2ORX645YPRBY5OXT6QKGQEIXCFCTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA882B292D
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 00:31:49 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id g2sf7045389plg.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 15:31:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605310308; cv=pass;
        d=google.com; s=arc-20160816;
        b=H8sct5aLX4szpZ60rCRQjpDGH5V3GNdDgZc8cKmoIKVjjnIhnUUknyzOKP9tsR+jzF
         3w1leeqaKDvw5snj9ag6R2T9KbDE5es1+s6wX4RxoMz2NbfyP2eetSv33ECZHg0ZbjvS
         6xgCiARIGh/9ZnuRejYxvswOXvBCMj5Xbz2jdaNsrsozU5lU9XgcTjEv4xQ8mjHL7J4o
         UpkwYP0qOBXTs/7qTNyY2TUPo+vkNMR6MWQQfQ4dNXpdjWfNsXItRfeom0LU7X1+jqtu
         zebVe6ZqbYYCsgKO9vxUHv6NR7Gq+6BZen2mloiqEOwklDPikuGdf1Ky+E6A9LKnD0dC
         MM/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=DAg9oE9oLjZ6Rmubjl1sS2V3O06P+FZuJHbTpi9qcqA=;
        b=ZLy60qEOWUha6ZOSXlORpiZvTV+C5eMPME2xgq+IcSBuKBKpFEbWIf6Vtyhwjk9G9W
         PZBpjIvuu66jHwqR6rTXtX57TXq4sIU8jDjPKKiNbLfsCdKZUb7N+Ut1nSmHEn88Fynp
         KMMqYkBFr7H2k6f1ZxrmBKZIPX3wh5P5KgMap65hxGQW9yYY91E9WfMBRrp4wI3hpjHt
         11q1K/3F7EV3xzsIoObNfin+Uld1Whf2Juosltz9c7EUZ3bMMi5mQXMnUygS5ed10JC5
         sZ384YKfv66ekdfjy05FCIfEj5104y3q1rk61x1xUgbl8kgx7U8ScYDbf5ri83xjRuo1
         U8ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jSNVZO0K;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DAg9oE9oLjZ6Rmubjl1sS2V3O06P+FZuJHbTpi9qcqA=;
        b=Z/qqWDI43gb7wx/+qQIibj3hl1/M9icN9Gg4HXw7E2TYOKt5vVbH89jggvy7ZBlJ29
         Ea5y68mCa2lHBKgV8HsAuZHlO3x6gVZzIXwgMqaev9wXDG/VN4LgUbQFPubmGvFSz0UG
         VLb6OVZIDAhQDtgEc2WtzJsDUwgv4uDgA8jQwmL3wMX45cM3MhQ8J8ZIxtj6ZVHGttdE
         poeJ4KbHLFpJDizN0/7Mo82Za3gAiaUsi6PgskES5/Bx8HOasZjIw0jxKoN9NvKiEvrZ
         4tssvTlhGs2SZ7/tralYSfx/96Ta1SZ3+hauf1oi8YYmJDJ207SFcPu2IR3oeBxPfYhC
         AJAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DAg9oE9oLjZ6Rmubjl1sS2V3O06P+FZuJHbTpi9qcqA=;
        b=AoLGg109f072hujLxuF8Fmb7Oc0xs5KQL79fGW4HVZpu6oEF1nskgUUH/JeyDsmRKh
         X2M9y+wvejvKj+WBcExZRvOoGq67XT9TEEPzi0ZQ9rIogCInp1tPvLpNNspV2al06uwE
         9ikjL5Fi4ES5gImDmKbAczhmLzFkNdXA59gQQnMjbwpNDzTEA68o0n1YcAOjUPxZg/QH
         Lh1LgQ4tGhPY3gyzphkue0bHcUEt0s0Krv1+p/PVOr4EOTBDH01uCfrMwaf85M87QYha
         yS3OhwNdV2uMMuX+5bPi+BL1x8zyLC2s2k3BPLQBEhH0Ns5deD5jh17DczNub07vam6X
         p+Gw==
X-Gm-Message-State: AOAM532KwDlQ9RawpFh3i2FlTRFud56VSVkpF3JwCrU3lRFBuc2vJv29
	2zxrMn5raCuCYk4ffGd7aSw=
X-Google-Smtp-Source: ABdhPJzNNvdufsfjBQ54CtGTVgjtmCQ13+g23lCjeM+C80s7uthoIGJmvaR33kMwRzsxkDwA6Yaf1A==
X-Received: by 2002:a17:90a:1992:: with SMTP id 18mr5629717pji.67.1605310308011;
        Fri, 13 Nov 2020 15:31:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ea4d:: with SMTP id l13ls2609880pgk.0.gmail; Fri, 13 Nov
 2020 15:31:47 -0800 (PST)
X-Received: by 2002:aa7:8a01:0:b029:18c:a1fa:8599 with SMTP id m1-20020aa78a010000b029018ca1fa8599mr4201311pfa.12.1605310307328;
        Fri, 13 Nov 2020 15:31:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605310307; cv=none;
        d=google.com; s=arc-20160816;
        b=JZ0XqsbBH6A7nXeVnybKTIM0OtncAOxfOBzxUeq/nybeyb5WbhJVGU0MBtBr144Xjj
         NbGoe3MzJu1hTk/8z/sUMCuameAAQGv4eotI7CvjGYuZnumIZbzjYOae0UfboYqvy+z9
         dnFJoku9WzKZH4Rqq5ipmrTv2GLYM0ZXcZ1hmtllk2JY3zn/s4AN65w7NC9Lzi+ByV4F
         NGFAqrg4mKJ0bErUWPQJVEin9rwSBz+BNyXUlC5/K6rXkG7xxhUyKTcHcxm82xXhluCa
         T43THzgajcyVshiDFyD5hCv1+sHdAcLDy0mND8QRkV3srLMLNiVUdTfpedteeV6JT4L2
         WIzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AJStHOY5Qh2DGFTroegyQhWYQ1MmCmTEUHWIJvas+7M=;
        b=WsX0ufOM8hagkAwqDWkJnfOOpB17W9BuPpaltzfqWfTIfd7fnBrhYtjranlZi7SUvJ
         DfNEUJK1J0o99wzHvUB1RQJz5f68G0ktXnG4HmsoPjBn4Z8r0rJQ8NIFWiO8XMi7575c
         xvYVZwer0VeCsgBWu7HxYTRh/RDdLW3V5jKo/bvgoJIEKyemGYEQ9x+cAD5+iOiag4x4
         M6RhHVC9GlTaYlPzAT/JJmlBRvbzi+hNVnTHE8gA1BLoCITvLnSm6/lH4PGgWLB4UWsr
         7XQA+RPVmFkxZPLjVTCcEPxUED3lE49b8Ever8KMtREzIeep8Nx4V2LM9BaXqWcYMPZA
         GssQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jSNVZO0K;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com. [2607:f8b0:4864:20::e41])
        by gmr-mx.google.com with ESMTPS id u133si636727pfc.0.2020.11.13.15.31.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 15:31:47 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) client-ip=2607:f8b0:4864:20::e41;
Received: by mail-vs1-xe41.google.com with SMTP id b129so6110160vsb.1
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 15:31:47 -0800 (PST)
X-Received: by 2002:a67:ee93:: with SMTP id n19mr3267175vsp.36.1605310306224;
 Fri, 13 Nov 2020 15:31:46 -0800 (PST)
MIME-Version: 1.0
References: <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net> <CABCJKufL6=FiaeD8T0P+mK4JeR9J80hhjvJ6Z9S-m9UnCESxVA@mail.gmail.com>
 <20201023173617.GA3021099@google.com> <CABCJKuee7hUQSiksdRMYNNx05bW7pWaDm4fQ__znGQ99z9-dEw@mail.gmail.com>
 <20201110022924.tekltjo25wtrao7z@treble> <20201110174606.mp5m33lgqksks4mt@treble>
 <CABCJKuf+Ev=hpCUfDpCFR_wBACr-539opJsSFrDcpDA9Ctp7rg@mail.gmail.com>
 <20201113195408.atbpjizijnhuinzy@treble> <CABCJKufA-aOcsOqb1NiMQeBGm9Q-JxjoPjsuNpHh0kL4LzfO0w@mail.gmail.com>
 <20201113223412.inono2ekrs7ky7rm@treble>
In-Reply-To: <20201113223412.inono2ekrs7ky7rm@treble>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 13 Nov 2020 15:31:34 -0800
Message-ID: <CABCJKueeL+1ydcZsm2BS4qrX4Wxy7zY7FUQdoN_WLuUxFfqcmQ@mail.gmail.com>
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Jann Horn <jannh@google.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, kernel list <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jSNVZO0K;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Fri, Nov 13, 2020 at 2:34 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Fri, Nov 13, 2020 at 12:24:32PM -0800, Sami Tolvanen wrote:
> > > I still don't see this warning for some reason.
> >
> > Do you have CONFIG_XEN enabled? I can reproduce this on ToT master as follows:
> >
> > $ git rev-parse HEAD
> > 585e5b17b92dead8a3aca4e3c9876fbca5f7e0ba
> > $ make defconfig && \
> > ./scripts/config -e HYPERVISOR_GUEST -e PARAVIRT -e XEN && \
> > make olddefconfig && \
> > make -j110
> > ...
> > $ ./tools/objtool/objtool check -arfld vmlinux.o 2>&1 | grep secondary
> > vmlinux.o: warning: objtool: __startup_secondary_64()+0x2: return with
> > modified stack frame
> >
> > > Is it fixed by adding cpu_bringup_and_idle() to global_noreturns[] in
> > > tools/objtool/check.c?
> >
> > No, that didn't fix the warning. Here's what I tested:
>
> I think this fixes it:
>
> From: Josh Poimboeuf <jpoimboe@redhat.com>
> Subject: [PATCH] x86/xen: Fix objtool vmlinux.o validation of xen hypercalls
>
> Objtool vmlinux.o validation is showing warnings like the following:
>
>   # tools/objtool/objtool check -barfld vmlinux.o
>   vmlinux.o: warning: objtool: __startup_secondary_64()+0x2: return with modified stack frame
>   vmlinux.o: warning: objtool:   xen_hypercall_set_trap_table()+0x0: <=== (sym)
>
> Objtool falls through all the empty hypercall text and gets confused
> when it encounters the first real function afterwards.  The empty unwind
> hints in the hypercalls aren't working for some reason.  Replace them
> with a more straightforward use of STACK_FRAME_NON_STANDARD.
>
> Reported-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
> ---
>  arch/x86/xen/xen-head.S | 9 ++++-----
>  include/linux/objtool.h | 8 ++++++++
>  2 files changed, 12 insertions(+), 5 deletions(-)
>
> diff --git a/arch/x86/xen/xen-head.S b/arch/x86/xen/xen-head.S
> index 2d7c8f34f56c..3c538b1ff4a6 100644
> --- a/arch/x86/xen/xen-head.S
> +++ b/arch/x86/xen/xen-head.S
> @@ -6,6 +6,7 @@
>
>  #include <linux/elfnote.h>
>  #include <linux/init.h>
> +#include <linux/objtool.h>
>
>  #include <asm/boot.h>
>  #include <asm/asm.h>
> @@ -67,14 +68,12 @@ SYM_CODE_END(asm_cpu_bringup_and_idle)
>  .pushsection .text
>         .balign PAGE_SIZE
>  SYM_CODE_START(hypercall_page)
> -       .rept (PAGE_SIZE / 32)
> -               UNWIND_HINT_EMPTY
> -               .skip 32
> -       .endr
> +       .skip PAGE_SIZE
>
>  #define HYPERCALL(n) \
>         .equ xen_hypercall_##n, hypercall_page + __HYPERVISOR_##n * 32; \
> -       .type xen_hypercall_##n, @function; .size xen_hypercall_##n, 32
> +       .type xen_hypercall_##n, @function; .size xen_hypercall_##n, 32; \
> +       STACK_FRAME_NON_STANDARD xen_hypercall_##n
>  #include <asm/xen-hypercalls.h>
>  #undef HYPERCALL
>  SYM_CODE_END(hypercall_page)
> diff --git a/include/linux/objtool.h b/include/linux/objtool.h
> index 577f51436cf9..746617265236 100644
> --- a/include/linux/objtool.h
> +++ b/include/linux/objtool.h
> @@ -109,6 +109,12 @@ struct unwind_hint {
>         .popsection
>  .endm
>
> +.macro STACK_FRAME_NON_STANDARD func:req
> +       .pushsection .discard.func_stack_frame_non_standard
> +               .long \func - .
> +       .popsection
> +.endm
> +
>  #endif /* __ASSEMBLY__ */
>
>  #else /* !CONFIG_STACK_VALIDATION */
> @@ -123,6 +129,8 @@ struct unwind_hint {
>  .macro UNWIND_HINT sp_reg:req sp_offset=0 type:req end=0
>  .endm
>  #endif
> +.macro STACK_FRAME_NON_STANDARD func:req
> +.endm

This macro needs to be before the #endif, so it's defined only for
assembly code. This breaks my arm64 builds even though x86 curiously
worked just fine.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueeL%2B1ydcZsm2BS4qrX4Wxy7zY7FUQdoN_WLuUxFfqcmQ%40mail.gmail.com.
