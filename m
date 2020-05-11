Return-Path: <clang-built-linux+bncBDYJPJO25UGBBL4U432QKGQENS4V4GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 861A71CE1A1
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 19:24:01 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id bm3sf10359289qvb.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 10:24:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589217840; cv=pass;
        d=google.com; s=arc-20160816;
        b=nuZyqh2Ce33wixLqWAlMTvgfmbSE8SJLUQd4q97Mer8xWsa+hmr7JAT2Z7pYD4wFFo
         InWR40xnmy/pIf6sZbbw21XyXE0Gfqi7FVbVKufwYvACPc2jKjmsP6hl0FYE759JAq1n
         7tpxz77ZzBcOFXanxyJp63kvF27q/iBX/FuBCv1dWEOIOhbxZ4ZyQrYT6zDOrnpAzoCa
         olwD8dMdBEYcj7iaJ7TibdyJuYyUeXP0nI8Dupj/uEpdk6fWo51Lvu1LOaEREQ/DgJ1v
         Uiqi8f64j8bhiFb11um6coWX7QcKJ40vHC49ex/avMy5S7yVfon5+E7pzbpius2N/4ob
         tlEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ctN1U+yGi8fKxOTLVK/Z8FOT8+gN96DaYje2ljVJBe8=;
        b=k6udxjn+cPg+GiQbOEe43d/oFCgzdGhL8mFI40qyomXrFWvk5EiEET6yejmBW1ap+l
         8PELGMrM7hADdojK1DAwveEX2LRU5kSqFZrtwn11TLB13WLA+YUOdMVY7QLfWCyG9dvC
         I7g6VFeINCNpQ/5RWkrP//ZYoSP0LEEbbWOudd1S/HnL42wHbbS6Z1P90SI8VzKmYf0t
         Tx6+t2Ni2DNCsdUw3MIrZMUxvP84HcqItY0HOLyZYKqpkSoHY92NviN7CvPK14qxmiCo
         ZLA9hZd/qw7h1f8SlrH77OoaiD3Mk23NyOzHZ7pHCmM/bIgnx9t/4UUa97KtRxYa0B91
         aHpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sVHlcRMr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ctN1U+yGi8fKxOTLVK/Z8FOT8+gN96DaYje2ljVJBe8=;
        b=ceGPxR1AgLnIXDZeZeuMGa779AfTDktttj3QqqxljfjcPmWzamhbkTK8OnsY25Ekk9
         KZpQ5UnqeleyZz4e0KD/ls72EFa7JgU+Em+tUANl90ntWncjCWrCQmADpOv18hMQQ7H7
         uoCnpeD0xSCGmHEnID+Z0ISy0ThnLY95QBml3qdmDISwRj/zdNr6mKw3+T2jLdGtBCO/
         O7B6DLk2Lx77YHZJOuWkr+XHWQIQnNBQNzNMjU9eJpkUQ/JGT38YyqH4oQXI0dqruDaj
         EtEP0GlE/88dJZKhos+cJ4cxlacTROSETvJMTWxkNHP0traLeD2g3akGGkEVU2qGFDMd
         NrRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ctN1U+yGi8fKxOTLVK/Z8FOT8+gN96DaYje2ljVJBe8=;
        b=ATKJiFzRroLRSkVoCDd2uY9EJaANG+IJm0xg+Os/Ge14DVUXpXasgfRnH0fET77DyN
         UC6KilM3CFpgKF8aX7h85rTph2djURD9h1QmWVjMrqNWp2S5xjLN3H3Mrt3C026IvXkx
         s0wnuQ6NzZJPDgyWuNAV3Nm+92V7tNsQKeBKx+JXhu5S5CTuHa3YPGO+1kxkjoIzcCT6
         uoMLpyraBLaAvFxK/VVB3zvThJrDx/Bp+zJwev70Zkh6ZKkLWAhlSEBytTA9LcbIkDQo
         lNA2U9VV1TGWuFjTRYZWQuzBGWVpjenTW4DE9D2hZ0GDmGHZsOsDEtfG1x5bppu2jZQA
         QLbQ==
X-Gm-Message-State: AGi0PuZN64q1XO2SsKTpQPvdaTWu4douMEacNus+RURBvVeciEtoMsX2
	JXp8QpucMN35KNNRpU9wwn8=
X-Google-Smtp-Source: APiQypIzBh7AAjSHqH1f3GJpRpBLfKGW3mQxnG9RQPRs52gb60jciVDjGIB+mn2p4RfOF8i7of2AYg==
X-Received: by 2002:a37:4f45:: with SMTP id d66mr16417534qkb.318.1589217839952;
        Mon, 11 May 2020 10:23:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3b32:: with SMTP id p47ls4872953qte.4.gmail; Mon, 11 May
 2020 10:23:59 -0700 (PDT)
X-Received: by 2002:aed:3848:: with SMTP id j66mr18026069qte.227.1589217839597;
        Mon, 11 May 2020 10:23:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589217839; cv=none;
        d=google.com; s=arc-20160816;
        b=nmTFy9/hlKxmS7s4D/V6XMmTNCE8YGzQ0c1rlNB02+AhghXzxMa8ahFsVqvnaqzrpI
         bD5t8lIJL/F6ahYi0tV0d4/4ekr+O0S+jgwtWhYV+BfV28T8IV/0Lbsj+FxRnWdFOYH0
         P0kS4li7Rjmuk5ZlPg9NcP4Qs/lLUsMb/nQ/P8KUn2Ws4iRIzvdRQ8DNX2YELmnsx/HX
         ho7KL3zRwzgrJlbIfdAHVQywsUCYrJ64915HjRACjM5jBJXUCstsJ7x8P78o/93WO7Gv
         puB3SZXs/iGOs7KQWeFojcexxPAjnXQoMtl3qdUkBfW1H0EZ2hWRvIRRiailvKpHV9rd
         BDNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=phVBp6KmJy0376W2ZnCHXhM1EWX39fhx0tVslAEftv4=;
        b=elPEJXbNHDw3psUsSClo6lK1VKMqqxyyISi8/yMthUAJDFW0uuWh9YwUKpGoZ0pK+w
         JuF9sOAEJphJ8xtnsAllihvKLG+Af32pLZKUamu0mDuX7DMzAp7H/pssk2CR21tLvXXs
         Qwx9bmSKchzAcfCSqqXudgLWSDe+1qXfuXP15qzefNnTc74UT74vUASaH2H4gCvPYX0B
         7I1TEx1ePYQUSX6oZplIoiivib1L3WM2jH7/7D9Qzg6ymbSaT1mjODwGQi8F1xWvDXhu
         aKJkNGqym3Z2dYv/Sg/ZcVoYj8ZkHDL0HPBhUlMkxYe/PDamlIRLWXkb8Mjvr7+XPL7K
         WJTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sVHlcRMr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id h15si628007qtr.4.2020.05.11.10.23.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2020 10:23:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id x15so4449734pfa.1
        for <clang-built-linux@googlegroups.com>; Mon, 11 May 2020 10:23:59 -0700 (PDT)
X-Received: by 2002:a62:146:: with SMTP id 67mr17329716pfb.169.1589217838370;
 Mon, 11 May 2020 10:23:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200504230309.237398-1-ndesaulniers@google.com>
In-Reply-To: <20200504230309.237398-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 11 May 2020 10:23:45 -0700
Message-ID: <CAKwvOdmspKUknbzDn9kY2jMgkFw=Ktvst0ZtwambDOfybqJGWw@mail.gmail.com>
Subject: Re: [PATCH] x86: support i386 with Clang
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	David Woodhouse <dwmw2@infradead.org>, Arnd Bergmann <arnd@arndb.de>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Cc: Dmitry Golovin <dima@golovin.in>, Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, 
	Christoph Lameter <cl@linux.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sVHlcRMr;       spf=pass
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

Bumping for comment+review.

On Mon, May 4, 2020 at 4:03 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> GCC and Clang are architecturally different, which leads to subtle
> issues for code that's invalid but clearly dead. This can happen with
> code that emulates polymorphism with the preprocessor and sizeof.
>
> GCC will perform semantic analysis after early inlining and dead code
> elimination, so it will not warn on invalid code that's dead. Clang
> strictly performs optimizations after semantic analysis, so it will warn
> for dead code.
>
> Neither Clang nor GCC like this very much with -m32:
>
> long long ret;
> asm ("movb $5, %0" : "=q" (ret));
>
> However, GCC can tolerate this variant:
>
> long long ret;
> switch (sizeof(ret)) {
> case 1:
>         asm ("movb $5, %0" : "=q" (ret));
>         break;
> case 8:;
> }
>
> Clang, on the other hand, won't accept that because it validates the
> inline asm for the '1' case *before* the optimisation phase where it
> realises that it wouldn't have to emit it anyway.
>
> If LLVM (Clang's "back end") fails such as during instruction selection
> or register allocation, it cannot provide accurate diagnostics
> (warnings/errors) that contain line information, as the AST has been
> discarded from memory at that point.
>
> While there have been early discussions about having C/C++ specific
> language optimizations in Clang via the use of MLIR, which would enable
> such earlier optimizations, such work is not scoped and likely a
> multi-year endeavor.
>
> We also don't want to swap the use of "=q" with "=r". For 64b, it
> doesn't matter. For 32b, it's possible that a 32b register without a 8b
> lower alias (i.e. ESI, EDI, EBP) is selected which the assembler will
> then reject.
>
> With this, Clang can finally build an i386 defconfig.
>
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Reported-by: David Woodhouse <dwmw2@infradead.org>
> Reported-by: Dmitry Golovin <dima@golovin.in>
> Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
> Link: https://bugs.llvm.org/show_bug.cgi?id=33587
> Link: https://github.com/ClangBuiltLinux/linux/issues/3
> Link: https://github.com/ClangBuiltLinux/linux/issues/194
> Link: https://github.com/ClangBuiltLinux/linux/issues/781
> Link: https://lore.kernel.org/lkml/20180209161833.4605-1-dwmw2@infradead.org/
> Link: https://lore.kernel.org/lkml/CAK8P3a1EBaWdbAEzirFDSgHVJMtWjuNt2HGG8z+vpXeNHwETFQ@mail.gmail.com/
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Note: this is a resend of:
> https://lore.kernel.org/lkml/20180209161833.4605-1-dwmw2@infradead.org/
> rebased on today's Linux next, and with the additional change to
> uaccess.h.
>
> I'm happy to resend with authorship and reported by tags changed to
> suggested by's or whatever, just let me know.
>
> Part of the commit message is stolen from David, and part from Linus.
> Shall I resend with David's authorship and
> [Nick: reworded]
> ???
>
> I don't really care, I just don't really want to carry this out of tree
> for our CI, which is green for i386 otherwise.
>
>
>  arch/x86/include/asm/percpu.h  | 12 ++++++++----
>  arch/x86/include/asm/uaccess.h |  4 +++-
>  2 files changed, 11 insertions(+), 5 deletions(-)
>
> diff --git a/arch/x86/include/asm/percpu.h b/arch/x86/include/asm/percpu.h
> index 2278797c769d..826d086f71c9 100644
> --- a/arch/x86/include/asm/percpu.h
> +++ b/arch/x86/include/asm/percpu.h
> @@ -99,7 +99,7 @@ do {                                                  \
>         case 1:                                         \
>                 asm qual (op "b %1,"__percpu_arg(0)     \
>                     : "+m" (var)                        \
> -                   : "qi" ((pto_T__)(val)));           \
> +                   : "qi" ((unsigned char)(unsigned long)(val))); \
>                 break;                                  \
>         case 2:                                         \
>                 asm qual (op "w %1,"__percpu_arg(0)     \
> @@ -144,7 +144,7 @@ do {                                                                        \
>                 else                                                    \
>                         asm qual ("addb %1, "__percpu_arg(0)            \
>                             : "+m" (var)                                \
> -                           : "qi" ((pao_T__)(val)));                   \
> +                           : "qi" ((unsigned char)(unsigned long)(val))); \
>                 break;                                                  \
>         case 2:                                                         \
>                 if (pao_ID__ == 1)                                      \
> @@ -182,12 +182,14 @@ do {                                                                      \
>
>  #define percpu_from_op(qual, op, var)                  \
>  ({                                                     \
> +       unsigned char pfo_u8__;                         \
>         typeof(var) pfo_ret__;                          \
>         switch (sizeof(var)) {                          \
>         case 1:                                         \
>                 asm qual (op "b "__percpu_arg(1)",%0"   \
> -                   : "=q" (pfo_ret__)                  \
> +                   : "=q" (pfo_u8__)                   \
>                     : "m" (var));                       \
> +               pfo_ret__ = (typeof(var))(unsigned long)pfo_u8__;       \
>                 break;                                  \
>         case 2:                                         \
>                 asm qual (op "w "__percpu_arg(1)",%0"   \
> @@ -211,12 +213,14 @@ do {                                                                      \
>
>  #define percpu_stable_op(op, var)                      \
>  ({                                                     \
> +       unsigned char pfo_u8__;                         \
>         typeof(var) pfo_ret__;                          \
>         switch (sizeof(var)) {                          \
>         case 1:                                         \
>                 asm(op "b "__percpu_arg(P1)",%0"        \
> -                   : "=q" (pfo_ret__)                  \
> +                   : "=q" (pfo_u8__)                   \
>                     : "p" (&(var)));                    \
> +               pfo_ret__ = (typeof(var))(unsigned long)pfo_u8__;       \
>                 break;                                  \
>         case 2:                                         \
>                 asm(op "w "__percpu_arg(P1)",%0"        \
> diff --git a/arch/x86/include/asm/uaccess.h b/arch/x86/include/asm/uaccess.h
> index d8f283b9a569..cf8483cd80e1 100644
> --- a/arch/x86/include/asm/uaccess.h
> +++ b/arch/x86/include/asm/uaccess.h
> @@ -314,11 +314,13 @@ do {                                                                      \
>
>  #define __get_user_size(x, ptr, size, retval)                          \
>  do {                                                                   \
> +       unsigned char x_u8__;                                           \
>         retval = 0;                                                     \
>         __chk_user_ptr(ptr);                                            \
>         switch (size) {                                                 \
>         case 1:                                                         \
> -               __get_user_asm(x, ptr, retval, "b", "=q");              \
> +               __get_user_asm(x_u8__, ptr, retval, "b", "=q");         \
> +               (x) = x_u8__;                                           \
>                 break;                                                  \
>         case 2:                                                         \
>                 __get_user_asm(x, ptr, retval, "w", "=r");              \
> --
> 2.26.2.526.g744177e7f7-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmspKUknbzDn9kY2jMgkFw%3DKtvst0ZtwambDOfybqJGWw%40mail.gmail.com.
