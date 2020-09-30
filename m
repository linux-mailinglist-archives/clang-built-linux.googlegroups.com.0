Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5H62P5QKGQEOA2LRBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 988D027F498
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 23:58:14 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id s2sf1715797pgm.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 14:58:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601503093; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZKdTOb06P80CyhqHTzO8k9ImSt5pul4NRqDDXBtrFatPyxJj1Tw6Wn2n/YnoDULYwi
         +p3e1kqiz+T7Z7ETFj08+kLziDTr6oPo4rLi2almOaBbuD/JrLC/7NiRUay0JgecYjyy
         83uDHsAyXuuLAI0k66H359SoDgGWmegWBtg5mUkssbOUh9EAoZHeCL8KJmnnpuG43tdI
         h38pnn5vY2viuviyFxTU0uHC31k3GrykvADo8kCd4A5a/GBd1uzXfw76GzLCHOK9fI/I
         G1iTcfJFARe5AE9gtQVq/m58S8kwuPjrp8lA+9fkWpF+zEMPZG7u8XaLhGH6qUmvD5He
         Uz4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QXzSykJvBIOYbQcfrR/CbnaBGgHVjmCzqO5aHqJJ2g8=;
        b=eNTmbmCTniqWptOKSoJbyyJrTx/a2L+P2M2BJ+HwRCoRRXgTCPBxx0U7P325rzNZe7
         RQ4C7MWUiGXpcVZOORbRQTg9LpfsXMeCuDyIZLvd5WybdNE2w05ljkm2GxARO37epdhQ
         OXt5hw3LI9TB37ifdnZVGmyd2GG0JkROVuCc6d0/LTrGadtnZKUttlqrgIxDZ65kYLBM
         cLcCL1tuuxcQAxFxRZ2E+dCUWiRLwWLyrfHiai1Z5oE0lJ8PPaKo0HlS8UWqFAX6iYhj
         TjNKb28+E2mYak737Qe8deudtE+DaSZal5++F1H6GGdfmWhK4O5VY+HOZptVmDV8fUnY
         nkPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LHz9Zcam;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QXzSykJvBIOYbQcfrR/CbnaBGgHVjmCzqO5aHqJJ2g8=;
        b=k2HGRvp07LBmF+Z6xEWsEdScfGdiqPzatWc8tKPv82Xsc1buPwTiDnvC9pLzeXsAqG
         Y9nsAlbic8NgqXMWNFHO/hnkWV4xGS1rnlF7l86snvBrA7ne12wv2vNOei5Pz6ohTBSN
         Hs/CyddETsmQgdycCzUOmMnoyDj0X93msEnOiTTI9tQA3rCq1mr+lJgXTGsS33qoi52g
         doNfatW/cVyhJ2i2/ULKCdiCAht1UyeRpFu2GyRcjhNZD1VVMwXSiqQ5FT3XAI75Bcpg
         aWkUXPk7Syjd+BX7ghIjqYQoiL2vVCMLzDExFGY06d5/byFJtybE+VzvBp+4hCUGDIkC
         l2wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QXzSykJvBIOYbQcfrR/CbnaBGgHVjmCzqO5aHqJJ2g8=;
        b=n1hjlHxWzPmkqWSa7aednitHG5vrZuwdtjTT/Rle9SUCarGnlF/kB65OvGlhz1zRWU
         dVCW4S2F78XSfdqWAZDy1VwuUras8xmD6+Hr9cVhCqxMjxnfxDFm2tMKm/ZvtWwwss0B
         4QJ3WVAm6sojzf0cMOXIQfY3kGvUhQ3joCHJMl5c+NbpC6j+ataIrnbuEFTGXdANQjlJ
         iBAtNLx2g68TjXjyi33FE6ivSxMLclbLTKEDvF7ImnR7pKmdjwZRe/ZK7a8xkVbzjnow
         1q/LSwACRHM8qtWykskRy76oY/8g3pWSDzylXSCCF+HVz857MEWztlH554uDU8PhDnWC
         BLQQ==
X-Gm-Message-State: AOAM533MziP8TJt8hPdcyt6KiqhxN+e5jm4w9vk5qrwYbWu1UGGH6Oh1
	vVqDeTxmK3/5DqHieruUL38=
X-Google-Smtp-Source: ABdhPJwXAzE3MLY8I2h9KqBwmTyM4Fk0KpNysRmfVYbp4O2DlCaJWNMFb6lc+XXbh+s11tY845Q7yw==
X-Received: by 2002:a17:90a:248:: with SMTP id t8mr4663294pje.64.1601503093088;
        Wed, 30 Sep 2020 14:58:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c7d3:: with SMTP id gf19ls1366644pjb.0.canary-gmail;
 Wed, 30 Sep 2020 14:58:12 -0700 (PDT)
X-Received: by 2002:a17:90b:1256:: with SMTP id gx22mr4429805pjb.47.1601503092537;
        Wed, 30 Sep 2020 14:58:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601503092; cv=none;
        d=google.com; s=arc-20160816;
        b=QGR71f0hUX95u+lyxiL+r5chNz9Y7IfE90lXYrPcTJxpsDbtW/x/3itvXKBil1ahbR
         wjfCqkp1e/pB1veIx7dYoYyNN8MCjNEcF8dCgEQuPgTYee2Qgbx4syT15UUmFnQ4DtjF
         i78uiC3pkcEkss6VqIeXkqFt0nMFXPN7Ua5UWt2VAFKYESjEUuPvjugyTz+RNiY3VGEM
         FoVFx0pdECOUtHdf6mZFwkyYqgUow8qOBwmNsJy19opi9KfK4ndjZUSQajxFWj5FwZZO
         2TKjTh//2jBNtHUNo3PWhAJv/VH1nNHA0gEbSom0of5TJMOKbW/1fhnD/ApmOETHnxN/
         BreA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=t4yHwQDoeC7Qpj3w+ohiUiQzIr7R18uaPZSHZDC/wBA=;
        b=eDlDF8cZI1axwOp2kN4F6cEO7p4OkC1ZLKcMw7NTGOFA46rpjaz6sFEyk3nZuyv9YJ
         pi9te9xfSt9otA9zMmDd10T9v9iO7SJ6+2bzbuhD2Qr0ZUWNGcsQiU3QLR4trPb5zsma
         yauCdG0/KCw5FqJRDMLGLXFzpVu345CAEBTYAo1QzOR54ENj/iuZhqKjLvflfhWgsiZs
         5Jbi7M8JwTGyMVeyspFbgghS07Qrzzo42fg2SR2gVYFB5ATwekafLD72l7XJhW4r76P2
         gIUYboT1Y2xDLOa3bWuJG6nB6DKplt2Nib8+bxkQr9E9/whh+NjRPc0M+GN41JcbZ22W
         DvWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LHz9Zcam;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id lx5si43061pjb.2.2020.09.30.14.58.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 14:58:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id y14so2047604pgf.12
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 14:58:12 -0700 (PDT)
X-Received: by 2002:a17:902:c40d:b029:d2:93e8:1f4b with SMTP id
 k13-20020a170902c40db02900d293e81f4bmr4327278plk.29.1601503091998; Wed, 30
 Sep 2020 14:58:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 30 Sep 2020 14:58:00 -0700
Message-ID: <CAKwvOdnYBkUx9YpY9XLONbNYFD7JrOfGbRFQ8ZTf-sa2GTgQdQ@mail.gmail.com>
Subject: Re: [PATCH v4 00/29] Add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LHz9Zcam;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Tue, Sep 29, 2020 at 2:46 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> This patch series adds support for building x86_64 and arm64 kernels
> with Clang's Link Time Optimization (LTO).
>
> In addition to performance, the primary motivation for LTO is
> to allow Clang's Control-Flow Integrity (CFI) to be used in the
> kernel. Google has shipped millions of Pixel devices running three
> major kernel versions with LTO+CFI since 2018.
>
> Most of the patches are build system changes for handling LLVM
> bitcode, which Clang produces with LTO instead of ELF object files,
> postponing ELF processing until a later stage, and ensuring initcall
> ordering.

Sami, thanks for continuing to drive the series. I encourage you to
keep resending with fixes accumulated or dropped on a weekly cadence.

The series worked well for me on arm64, but for x86_64 on mainline I
saw a stream of new objtool warnings:

testing your LTO series; x86_64 defconfig + CONFIG_THINLTO:
``` LTO vmlinux.o OBJTOOL vmlinux.o vmlinux.o: warning: objtool:
wakeup_long64()+0x61: indirect jump found in RETPOLINE build
vmlinux.o: warning: objtool: .text+0x308a: indirect jump found in
RETPOLINE build vmlinux.o: warning: objtool: .text+0x30c5: indirect
jump found in RETPOLINE build vmlinux.o: warning: objtool:
copy_user_enhanced_fast_string() falls through to next function
copy_user_generic_unrolled() vmlinux.o: warning: objtool:
__memcpy_mcsafe() falls through to next function mcsafe_handle_tail()
vmlinux.o: warning: objtool: memset() falls through to next function
memset_erms() vmlinux.o: warning: objtool: __memcpy() falls through to
next function memcpy_erms() vmlinux.o: warning: objtool:
__x86_indirect_thunk_rax() falls through to next function
__x86_retpoline_rax() vmlinux.o: warning: objtool:
__x86_indirect_thunk_rbx() falls through to next function
__x86_retpoline_rbx() vmlinux.o: warning: objtool:
__x86_indirect_thunk_rcx() falls through to next function
__x86_retpoline_rcx() vmlinux.o: warning: objtool:
__x86_indirect_thunk_rdx() falls through to next function
__x86_retpoline_rdx() vmlinux.o: warning: objtool:
__x86_indirect_thunk_rsi() falls through to next function
__x86_retpoline_rsi() vmlinux.o: warning: objtool:
__x86_indirect_thunk_rdi() falls through to next function
__x86_retpoline_rdi() vmlinux.o: warning: objtool:
__x86_indirect_thunk_rbp() falls through to next function
__x86_retpoline_rbp() vmlinux.o: warning: objtool:
__x86_indirect_thunk_r8() falls through to next function
__x86_retpoline_r8() vmlinux.o: warning: objtool:
__x86_indirect_thunk_r9() falls through to next function
__x86_retpoline_r9() vmlinux.o: warning: objtool:
__x86_indirect_thunk_r10() falls through to next function
__x86_retpoline_r10() vmlinux.o: warning: objtool:
__x86_indirect_thunk_r11() falls through to next function
__x86_retpoline_r11() vmlinux.o: warning: objtool:
__x86_indirect_thunk_r12() falls through to next function
__x86_retpoline_r12() vmlinux.o: warning: objtool:
__x86_indirect_thunk_r13() falls through to next function
__x86_retpoline_r13() vmlinux.o: warning: objtool:
__x86_indirect_thunk_r14() falls through to next function
__x86_retpoline_r14() vmlinux.o: warning: objtool:
__x86_indirect_thunk_r15() falls through to next function
__x86_retpoline_r15() ```

I think those should be resolved before I provide any kind of tested
by tag.  My other piece of feedback was that I like the default
ThinLTO, but I think the help text in the Kconfig which is visible
during menuconfig could be improved by informing the user the
tradeoffs.  For example, if CONFIG_THINLTO is disabled, it should be
noted that full LTO will be used instead.  Also, that full LTO may
produce slightly better optimized binaries than ThinLTO, at the cost
of not utilizing multiple cores when linking and thus significantly
slower to link.

Maybe explaining that setting it to "n" implies a full LTO build,
which will be much slower to link but possibly slightly faster would
be good?  It's not visible unless LTO_CLANG and ARCH_SUPPORTS_THINLTO
is enabled, so I don't think you need to explain that THINLTO without
those is *not* full LTO.  I'll leave the precise wording to you. WDYT?

Also, when I look at your treewide DISABLE_LTO patch, I think "does
that need to be a part of this series, or is it a cleanup that can
stand on its own?"  I think it may be the latter?  Maybe it would help
shed one more patch than to have to carry it to just send it?  Or did
I miss something as to why it should remain a part of this series?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnYBkUx9YpY9XLONbNYFD7JrOfGbRFQ8ZTf-sa2GTgQdQ%40mail.gmail.com.
