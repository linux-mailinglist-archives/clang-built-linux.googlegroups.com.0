Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSPOUGCAMGQEYE7USVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id A044736CC73
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 22:42:50 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id x5-20020a0565121305b029019cde1790dfsf16376321lfu.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 13:42:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619556170; cv=pass;
        d=google.com; s=arc-20160816;
        b=dwmSvzfOfqtBvPEEzGV1IxgvAvGBnVcKRCtvMN6SHVl6FsNjrAVPr9LWNlgXvK4KaM
         pFIgEc7UCo/omcNR0gVXeOdAF6Bwx0c21AA6YW3x/6gaApo+E4FtP7hN0yu9dJMmxqu1
         +4ma/7YyTWaHS6yPLm+zeh7lzGkUwewXHyZDid6SgrZB1r6YNzXYSVVQoQHUUXWE1Ak1
         UaetBXEdr0UKnUuIyr/3qcNO9m5AtemoFHuToHUdxbwauDsqy1K7isy09G57K8jqYtl2
         IA2MTEzNCUD8E13bkGTP2h6n5Fm4Fi+0uhruQBgGmDrmJNgXPkeO+wZXJhOl4zfOkWE7
         hjPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LOeBIEOtFdxnpEko6jaur814q5qTISxPS3O86PEGPzk=;
        b=GI5uOK+vrid/+RoKBtao/su/Ziar7iNKfuJIeAA/5D16zXKb59uuch1icYEAhTz0pl
         phjZXV7MHEverXXZbkTRv8drycT3JIyvdhzfGRjfbuvvOfIKV58Ai6uu1S06KM4qPY6O
         NSBpjZzai9HvJnTsHXmwg02Qy+llRVs3Mti6yCMJbt8yzp8VgyueSNR9F6OFFN2SwIqC
         7S/YdWu7jwHy1PtDNJ37c59Y1H7w0MYFok293eoD91o9tE19BWGVQtILAsp7wwoh/y7T
         TXCiPphebZaShXsqyz49ca5g6Xp9Awk7RxdycMad8hKlqQEVs5zi6cGgJviAkq2Br9PI
         c3GQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cPoj7vyx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=LOeBIEOtFdxnpEko6jaur814q5qTISxPS3O86PEGPzk=;
        b=b8MNgeWGAng4+shAYCnhypcVELOA5TVv/B9NtB5DmHSkx6ZJ7THyBzyIpKchV4ZDSO
         odoPJTMZU1/SiFrp7AvqgncYUwKys3qnUa4LrJieonLdMI8DEvuDYbF8McOfvDV5suSD
         hdr6Fp9TKqGGNFz16x7FMcFo/Y5I4Z7pKwpuSmR7OH4DiDtA1wV2kQiPp0csjzTPcfRD
         5/SILW7JQBQPun78WZN6HVYyogq59a6W4I0du/TG5iF4iCAc9kSKEMcAvc9YSCGcB4xQ
         LHUUEt7I3NLYBXaDV92IEgcFozTpI2doOoqhutIMST3WWGDR76s5cEvmRJCqKtj7Isxr
         rTeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LOeBIEOtFdxnpEko6jaur814q5qTISxPS3O86PEGPzk=;
        b=CAzsHExF/LWtB0JVJLb7kB2n40TMTz0m2HUUk70km6/6CwyC1FryXuAv4exe0m5h9d
         XkK3bB4nObeF3zBDjvFWq8UwZH8DdNyj1LGtezUZ/QOj3kGf4tXiFsOUcMrlwkqvIrm/
         KBzK2X9+y+x+bdYL8mZvgEZMUcN5UFE5uHvROyCAWbsfZG5u47zFjOxWhLW0x//ai4T0
         VXPf5lwZHdqOo5tYi3ILXfF1CTuDtutOXdNC11kl5bd9dHqxrnO8l8xY6MJOpWxVt7tW
         ovX32O4t8PeYSgz9cqmnG8JYYX3SOJ3pKLqiG4z1hqSIwB+k7E7rlyEG5px3KmBYJROQ
         Jvmg==
X-Gm-Message-State: AOAM532GsyxpUz6IdnpRFohm1zLdO4WAGc2w3Ex0lptNbnRbNAijsVFG
	IFC8W9kVPgFBt06Ztgr+r3M=
X-Google-Smtp-Source: ABdhPJwBi9K1pF1woAjah+kXhYwCob1yBs5xR/QEYHtVd3hriRmV4GdNi9/MioWAnZz4jVcz6v9Uhg==
X-Received: by 2002:a2e:97c5:: with SMTP id m5mr17884035ljj.321.1619556170139;
        Tue, 27 Apr 2021 13:42:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5624:: with SMTP id b4ls4849201lff.0.gmail; Tue, 27 Apr
 2021 13:42:49 -0700 (PDT)
X-Received: by 2002:a05:6512:3b25:: with SMTP id f37mr18370353lfv.127.1619556169100;
        Tue, 27 Apr 2021 13:42:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619556169; cv=none;
        d=google.com; s=arc-20160816;
        b=muUUjUVttPsSSJqCDMCPRtVQMTNL4PakgmUiF2e/nu2AeKv+YzdjleKM2A4HEiOOrS
         PQ6rP/LseTkqogkUG4D6xQMHlCT4ptYcMsvxWkuNYkQJCxlGz/0hFVKDwCT9zSzTdOBq
         oG3++uSJcOXQ+Y3Knvi/cqASU0LvtXW4eJ3mL/gn6JgIUnUKNJZSznKV9NjLhGWWhgJb
         NPITMoLTo/Uz7fipJBV5Li9aQaRi4JiHPO2osI+k7W1jkddCZPA4XOo/++UFQj++5a0k
         VQWNnZXAn7INdseHyvVzL2tCIWRiH1RO7KClA9TXs6xAxYUxSV9zOufVIFSczU6NYrIx
         loNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=VuRmkFXiA1v6q9YqeqOSwr2jhpD+5Gg836AGzkZvAKo=;
        b=HzajJjcmrZql7mf0TcHGKB3Dt70H4zbYEjbSNxBf02vDSD1yfHZO5pFZtgYof2KfS5
         x5OjQ9vHfkEatmOHy2kRv/5xc/vgX6Ajdat1Wisb0RHBaOWq8+qpfRF2VUExhVX6Wcso
         +GgTk52KffJFtP103GKIVruNTjYZyDGS1kVn/CjxZT3x50WYp47/6LaHspCE08kdPoIJ
         XY3MoEM2RMIhS5q2JJXJDAbrPC3jJcNzuEfR913rbZ02ZsMdzgQVifIOeQgbTQRKJ0CC
         ta2sBwmD2Ngy/18q7q4P3xYgzvCZaYN0yDQ4XmhykDiKWJ7FzjSDYTOr0jSiGSAVG+oN
         A5mQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cPoj7vyx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com. [2a00:1450:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id l11si1197763lfg.13.2021.04.27.13.42.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 13:42:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) client-ip=2a00:1450:4864:20::12c;
Received: by mail-lf1-x12c.google.com with SMTP id x20so65401715lfu.6
        for <clang-built-linux@googlegroups.com>; Tue, 27 Apr 2021 13:42:49 -0700 (PDT)
X-Received: by 2002:a05:6512:2190:: with SMTP id b16mr912912lft.122.1619556168586;
 Tue, 27 Apr 2021 13:42:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210320122227.345427-1-mpe@ellerman.id.au> <YIcLcujmoK6Yet9d@archlinux-ax161>
 <de6fc09f-97f5-c934-6393-998ec766b48a@csgroup.eu>
In-Reply-To: <de6fc09f-97f5-c934-6393-998ec766b48a@csgroup.eu>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Apr 2021 13:42:36 -0700
Message-ID: <CAKwvOd=SkPtOij0tCx=AzUsLD3RrJZBFs0WZKuQJ3c4JM3Nn6Q@mail.gmail.com>
Subject: Re: [PATCH v7] powerpc/irq: Inline call_do_irq() and call_do_softirq()
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Nathan Chancellor <nathan@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cPoj7vyx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c
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

On Mon, Apr 26, 2021 at 11:39 PM Christophe Leroy
<christophe.leroy@csgroup.eu> wrote:
>
>
>
> Le 26/04/2021 =C3=A0 20:50, Nathan Chancellor a =C3=A9crit :
> > On Sat, Mar 20, 2021 at 11:22:27PM +1100, Michael Ellerman wrote:
> >> From: Christophe Leroy <christophe.leroy@csgroup.eu>
> >>
> >> call_do_irq() and call_do_softirq() are simple enough to be
> >> worth inlining.
> >>
> >> Inlining them avoids an mflr/mtlr pair plus a save/reload on stack. It
> >> also allows GCC to keep the saved ksp_limit in an nonvolatile reg.
> >>
> >> This is inspired from S390 arch. Several other arches do more or
> >> less the same. The way sparc arch does seems odd thought.
> >>
> >> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> >> Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
> >>
> >
> > This change caused our ppc44x_defconfig builds to hang when powering
> > down in QEMU:
> >
> > https://github.com/ClangBuiltLinux/continuous-integration2/runs/2304364=
629?check_suite_focus=3Dtrue#logs
> >
> > This is probably something with clang given that GCC 10.3.0 works fine
> > but due to the nature of the change, I have no idea how to tell what is
> > going wrong. I tried to do some rudimentary debugging with gdb but that
> > did not really get me anywhere.
> >
> > The kernel was built with just 'CC=3Dclang' and it is reproducible with
> > all versions of clang that the kernel supports.
> >
> > The QEMU invocation is visible at the link above, it is done with our
> > boot-qemu.sh in this repo, which also houses the rootfs:
> >
> > https://github.com/ClangBuiltLinux/boot-utils
> >
> > Happy to provide any other information or debug/test as directed!
> >
>
> With GCC:
>
> 000003f0 <do_softirq_own_stack>:
>   3f0:  94 21 ff f0     stwu    r1,-16(r1)
>   3f4:  7c 08 02 a6     mflr    r0
>   3f8:  3d 20 00 00     lis     r9,0
>                         3fa: R_PPC_ADDR16_HA    .data..read_mostly+0x4
>   3fc:  93 e1 00 0c     stw     r31,12(r1)
>   400:  90 01 00 14     stw     r0,20(r1)
>   404:  83 e9 00 00     lwz     r31,0(r9)
>                         406: R_PPC_ADDR16_LO    .data..read_mostly+0x4
>   408:  94 3f 1f f0     stwu    r1,8176(r31)
>   40c:  7f e1 fb 78     mr      r1,r31
>   410:  48 00 00 01     bl      410 <do_softirq_own_stack+0x20>
>                         410: R_PPC_REL24        __do_softirq
>   414:  80 21 00 00     lwz     r1,0(r1)
>   418:  80 01 00 14     lwz     r0,20(r1)
>   41c:  83 e1 00 0c     lwz     r31,12(r1)
>   420:  38 21 00 10     addi    r1,r1,16
>   424:  7c 08 03 a6     mtlr    r0
>   428:  4e 80 00 20     blr
>
>
> With CLANG:
>
> 000003e8 <do_softirq_own_stack>:
>   3e8:  94 21 ff f0     stwu    r1,-16(r1)
>   3ec:  93 c1 00 08     stw     r30,8(r1)
>   3f0:  3c 60 00 00     lis     r3,0
>                         3f2: R_PPC_ADDR16_HA    softirq_ctx
>   3f4:  83 c3 00 00     lwz     r30,0(r3)
>                         3f6: R_PPC_ADDR16_LO    softirq_ctx
>   3f8:  94 3e 1f f0     stwu    r1,8176(r30)
>   3fc:  7f c1 f3 78     mr      r1,r30
>   400:  48 00 00 01     bl      400 <do_softirq_own_stack+0x18>
>                         400: R_PPC_REL24        __do_softirq
>   404:  80 21 00 00     lwz     r1,0(r1)
>   408:  83 c1 00 08     lwz     r30,8(r1)
>   40c:  38 21 00 10     addi    r1,r1,16
>   410:  4e 80 00 20     blr
>
>
> As you can see, CLANG doesn't save/restore 'lr' allthought 'lr' is explic=
itely listed in the
> registers clobbered by the inline assembly:

Ah, thanks for debugging this. Will follow up in
https://bugs.llvm.org/show_bug.cgi?id=3D50147.

>
>  >> +static __always_inline void call_do_softirq(const void *sp)
>  >> +{
>  >> +   /* Temporarily switch r1 to sp, call __do_softirq() then restore =
r1. */
>  >> +   asm volatile (
>  >> +            PPC_STLU "     %%r1, %[offset](%[sp])  ;"
>  >> +           "mr             %%r1, %[sp]             ;"
>  >> +           "bl             %[callee]               ;"
>  >> +            PPC_LL "       %%r1, 0(%%r1)           ;"
>  >> +            : // Outputs
>  >> +            : // Inputs
>  >> +              [sp] "b" (sp), [offset] "i" (THREAD_SIZE - STACK_FRAME=
_OVERHEAD),
>  >> +              [callee] "i" (__do_softirq)
>  >> +            : // Clobbers
>  >> +              "lr", "xer", "ctr", "memory", "cr0", "cr1", "cr5", "cr=
6",
>  >> +              "cr7", "r0", "r3", "r4", "r5", "r6", "r7", "r8", "r9",=
 "r10",
>  >> +              "r11", "r12"
>  >> +   );
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/de6fc09f-97f5-c934-6393-998ec766b48a%40csgroup.eu.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DSkPtOij0tCx%3DAzUsLD3RrJZBFs0WZKuQJ3c4JM3Nn6Q%4=
0mail.gmail.com.
