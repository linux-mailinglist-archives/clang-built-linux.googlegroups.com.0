Return-Path: <clang-built-linux+bncBD63HSEZTUIBBUEBTW2QMGQE3ZSKQ6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4450293EE24
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2024 09:12:18 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id 3f1490d57ef6-e03623b24ddsf3743835276.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2024 00:12:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722237137; cv=pass;
        d=google.com; s=arc-20160816;
        b=UN7nGt5G/5y1NufmfFCwkykcq7Rp03jKmEivWhYyxoA1yRs3qd4UdknsMkcC1ynAM3
         T9QYrky6cR9rgkbVK/X74WZXwx2DrTBTv1G7wXBEvwFG7gEFlmxvammSigWEb1F36MKt
         cb/Ome7243O2oR/5HyAltfA6E3lVwdAD6T+TCDs3gxOTtAspMSy8cPE8BVkci4szQmw3
         sUisxou0ZDYJYfu42SYM1WsiFUIoxlblmyauW9GV/5pjXRBpgFaRz2KIy8ebgj/Uk2jQ
         homaXBH/x+eyTlc2qWDnixW238GfFUuEJ8BMzqrIxUYleH9k26/Qd3ZGXmsew7swGdl9
         ehRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=duQ1mXsojM53qCozjSuKwO5AYDXL/jRt3K8NHfps69o=;
        fh=SzdRxI/khRCLzogi5NwMFXYSxAqopJyzzikbGhfGBfQ=;
        b=BkQu+aP0yZY0XQLFWFYo36fg21uZCOEgy+lzqD+92PnNWxfOS1FQATiHiT8OFS0TWN
         urIuBRiB2oKyMDbcUzwOHz9rFI2UySf7IAEnqMo6pegsRIYY+SiYx7gqGQ+gi+RaHB2c
         Cy9fHAiYjM2Qd4+OfXQMKTpA6sBEXhQcCQq5Mv8tEIO/t6zzE02iJJNzofDFR/eH6sfP
         poFhQ3S5PDH0SkO1LvI9OdniNHIrjPw8qy0eaW22LpYZ/5lxrUtyM94wQ6xQ54ubgOlP
         C+hgoTZvZrQsF5XvZrg6heplwId1hb5BOuj1nrIwJXf+TFenzWfzqedE/J+8C+Z/AIAS
         pq0A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=IWnlpVDZ;
       spf=pass (google.com: domain of ardb@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1722237137; x=1722841937; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=duQ1mXsojM53qCozjSuKwO5AYDXL/jRt3K8NHfps69o=;
        b=PCR1UTThJvwPUZBUWBtFf45rGfE1gSCi2c+50NUAEj0DByYh7sIQDVsG4hZKicX/eC
         yj4a2vReKjqMEMufKRzh5rjBWwiY451ft94tQi8fKdI8bUGDbFkfVBve6BfG5q+yaAaS
         fkSDt3F768Z0OWHdXwqJy8k54axiOPIwn4pFK0wA7nchEDIZa4zJdrva0DRjAYQaawdN
         YckU3Lh4Ua0iXOCc/exHjzpZPI0f0zvGmiYya/xSEFQm5RJFx4+gfaCxGa0lLxhwxf97
         7cqsnDvFjfqMvKB+NT/O4rPwIE9GUTQtXHCMnKWLdIqwSocO4ncP9p11dL9K1CCqMnVx
         8ZHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722237137; x=1722841937;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=duQ1mXsojM53qCozjSuKwO5AYDXL/jRt3K8NHfps69o=;
        b=HYm3VMVONZAfRatKfG6+bgG7JEwBYadG+5IENlfG1PkICa4mvqLHF5qCykMA0yn8h1
         iJ+8dJ+5nUwMSu9EPxOgDL20J/PZbm6phkpmUNzFy80n6kApp5m5aRJiWCUevoDTtFXq
         OF/ornGWp7PWHrYnPiKLQyHA8Dvnx88MC1v0y/eTQXjgEafmC/eAiSJLcuX1iJUkuWjw
         APZmw/kHFKjbt4RsVTFRbBUCuqcBbKN/dwq55bOavK0V8KIoAYSDSwI4Llgsu5gBXbiP
         D8Jw00j1bsdpQs8onnanGaHkelpbOgk0vp/hlCCWOPXbRbZqjgrrOlzn57GBpBLvOEnc
         +cmg==
Sender: clang-built-linux@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCXcJcSjUzq4LFTfU7kLEOlwNXEWAxWS9kn7EbbcxSAknUCfxUP2R6qc+ipWYOg83IAZEf/X2dfMISkZAyLqVWD4OTWkR/uruabeUY8qNtag
X-Gm-Message-State: AOJu0YycUFodA1uCCbLs3F5YhsiXCt/mhn0crIUm/kCbaxIUAni4cmkH
	SYnh4XgRUUrrG33g9w9qdRVJ7n/Q3CGWMV6T/eUCozJ7Uo0pfyg9
X-Google-Smtp-Source: AGHT+IF0z1fow+JCpqsJGE4BU/PXhjYnzzMkiKxw+Fr+NUoJ+E8HkGOVHwefoym4/hO2WFqdL/tD8A==
X-Received: by 2002:a05:6902:1881:b0:e03:530d:3a1a with SMTP id 3f1490d57ef6-e0b545427c6mr9949186276.25.1722237136699;
        Mon, 29 Jul 2024 00:12:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:1005:b0:e0b:6951:c769 with SMTP id
 3f1490d57ef6-e0b6951e0d5ls2515777276.2.-pod-prod-08-us; Mon, 29 Jul 2024
 00:12:15 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXTyNNJcn3zSPM1QhZP3GQ4Aycy/PtMHn55QTjxqcZ2uePMF9Jc4453iR6sZsSpWdhXHw7W6K6Q7631VL8zjMmZLTUTBocnr6jb8M0w+vTbpGzM
X-Received: by 2002:a0d:e387:0:b0:66a:b6d2:c184 with SMTP id 00721157ae682-67b7bf994e9mr81377407b3.16.1722237135569;
        Mon, 29 Jul 2024 00:12:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722237135; cv=none;
        d=google.com; s=arc-20160816;
        b=YdAMm7zTDTX/3ggmgZqOg81QNMf1pWX6NnG4cb+P9qHea/4nEvp9/QDWyxQE6qbR/E
         GFPVrq7fmbuhZxcmkHuWqITIINkQuusvVB3OhuefQ4pmRQ0wqi8WOYgxWnS48pzq8WKr
         07Ks1kyw2ND7PAZeZvi1zyWhVD4c784NuFh+hbACrc0uUQ34kSe5qi1nFv5JeG6XZECe
         W00Wjs7EWuTrzD1IW7Bm/aE0yEqAVSsu5bNvaRuopoF4hwyW75qmgf87YPO6gyj4uqNX
         NnIDGLfjys+wxZIHN5FBFKkvpBdtwMHGhoKOpsUCtkN+It44W04829Tyqso37f+iORQ6
         IPWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zopiJEifWGmdf/TnyayGgP3VxoCLoURpmlGu49SjNU8=;
        fh=VLlEFh7xyj0nwvE2zr72AXQPgwRFluDwRZPWaGGpYmY=;
        b=xwY3Ch/9rxvl960ncvECvmfqEVcyXtAlzooYDmQgNXg3NlS/sTPjgjFXk7ieVJ2879
         R2BEScTMxhoXhf45AmzfUO71P8eioP2kxjVJ0FgqvtgDyxfVDR32DGoAIBkO+ekuUFsg
         W4ZlcGf8gGX088wl6ztH0QKVIfa372tBFLCU/YyySClSxwoT5WQo6+PNwtGrxbmNS+3g
         Frc2TMR4kNpPlpkb/jtUUxGMpaY3pI3v6UCTb5kBY3wLqWvGs4bdCTRFR0Qy+xECyOcC
         39k5PyhEZeqzf3eSebefswnrgpvR7bcmmvVfQAEsFuW0K1L7mEcGoFPAOvjzR3URsMbA
         ZPpQ==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=IWnlpVDZ;
       spf=pass (google.com: domain of ardb@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id 00721157ae682-6756c073931si5468837b3.2.2024.07.29.00.12.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 00:12:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 38AC061368
	for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2024 07:12:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0FB7C4AF0C
	for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2024 07:12:14 +0000 (UTC)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52f04150796so5147334e87.3
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2024 00:12:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWTKXHgdt2B5q9rnInzdALeBMVuwuwIFq/akhdBf1sDAdxiDomlUpIC5Ly/G7KF0XWpUs4euakgpgcFshuweaF196+zUoDE2/b089RGF8E1/qVL
X-Received: by 2002:a05:6512:360b:b0:52c:c032:538d with SMTP id
 2adb3069b0e04-5309b27b28emr3413033e87.27.1722237133228; Mon, 29 Jul 2024
 00:12:13 -0700 (PDT)
MIME-Version: 1.0
References: <92a00580828a1bdf96e7e36545f6d229809af04f.1722154575.git.calvin@wbinvd.org>
 <CAMj1kXFT3RFW7oPg5pc=bXCqBrzx9amAyR1dZpiqaLKu-5GXpQ@mail.gmail.com> <Zqa4SAyPKPuaXdgg@mozart.vkv.me>
In-Reply-To: <Zqa4SAyPKPuaXdgg@mozart.vkv.me>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 29 Jul 2024 09:12:01 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGLXGqA4JvuWNLk_-cu5_soKpbyDaZxwjOo5LVTdZt71w@mail.gmail.com>
Message-ID: <CAMj1kXGLXGqA4JvuWNLk_-cu5_soKpbyDaZxwjOo5LVTdZt71w@mail.gmail.com>
Subject: Re: [PATCH] ARM: vfp: Use asm volatile in fmrx/fmxr macros
To: Calvin Owens <calvin@wbinvd.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <nathan@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, zhuqiuer <zhuqiuer1@huawei.com>, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Russell King <linux@armlinux.org.uk>, Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=IWnlpVDZ;       spf=pass
 (google.com: domain of ardb@kernel.org designates 2604:1380:4641:c500::1 as
 permitted sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Sun, 28 Jul 2024 at 23:29, Calvin Owens <calvin@wbinvd.org> wrote:
>
> On Sunday 07/28 at 19:09 +0200, Ard Biesheuvel wrote:
> > (cc Arnd, Nathan, zhuqiuer)
> >
> > On Sun, 28 Jul 2024 at 10:21, Calvin Owens <calvin@wbinvd.org> wrote:
> > > <snip>
> > >
> > > Crudely grepping for vmsr/vmrs instructions in the otherwise nearly
> > > idential text for vfp_support_entry() makes the problem obvious:
> > >
> > >     vmlinux.llvm.good [0xc0101cb8] <+48>:  vmrs   r7, fpexc
> > >     vmlinux.llvm.good [0xc0101cd8] <+80>:  vmsr   fpexc, r0
> > >     vmlinux.llvm.good [0xc0101d20] <+152>: vmsr   fpexc, r7
> > >     vmlinux.llvm.good [0xc0101d38] <+176>: vmrs   r4, fpexc
> > >     vmlinux.llvm.good [0xc0101d6c] <+228>: vmrs   r0, fpscr
> > >     vmlinux.llvm.good [0xc0101dc4] <+316>: vmsr   fpexc, r0
> > >     vmlinux.llvm.good [0xc0101dc8] <+320>: vmrs   r0, fpsid
> > >     vmlinux.llvm.good [0xc0101dcc] <+324>: vmrs   r6, fpscr
> > >     vmlinux.llvm.good [0xc0101e10] <+392>: vmrs   r10, fpinst
> > >     vmlinux.llvm.good [0xc0101eb8] <+560>: vmrs   r10, fpinst2
> > >
> > >     vmlinux.llvm.bad  [0xc0101cb8] <+48>:  vmrs   r7, fpexc
> > >     vmlinux.llvm.bad  [0xc0101cd8] <+80>:  vmsr   fpexc, r0
> > >     vmlinux.llvm.bad  [0xc0101d20] <+152>: vmsr   fpexc, r7
> > >     vmlinux.llvm.bad  [0xc0101d30] <+168>: vmrs   r0, fpscr
> > >     vmlinux.llvm.bad  [0xc0101d50] <+200>: vmrs   r6, fpscr  <== BOOM!
> > >     vmlinux.llvm.bad  [0xc0101d6c] <+228>: vmsr   fpexc, r0
> > >     vmlinux.llvm.bad  [0xc0101d70] <+232>: vmrs   r0, fpsid
> > >     vmlinux.llvm.bad  [0xc0101da4] <+284>: vmrs   r10, fpinst
> > >     vmlinux.llvm.bad  [0xc0101df8] <+368>: vmrs   r4, fpexc
> > >     vmlinux.llvm.bad  [0xc0101e5c] <+468>: vmrs   r10, fpinst2
> > >
> > > I think LLVM's reordering is valid as the code is currently written: the
> > > compiler doesn't know the instructions have side effects in hardware.
> > >
> > > Fix by using "asm volatile" in fmxr() and fmrx(), so they cannot be
> > > reordered with respect to each other. The original compiler now produces
> > > working kernels on my hardware with DYNAMIC_DEBUG=n.
> > >
> > > This is the relevant piece of the diff of the vfp_support_entry() text,
> > > from the original oopsing kernel to a working kernel with this patch:
> > >
> > >          vmrs r0, fpscr
> > >          tst r0, #4096
> > >          bne 0xc0101d48
> > >          tst r0, #458752
> > >          beq 0xc0101ecc
> > >          orr r7, r7, #536870912
> > >          ldr r0, [r4, #0x3c]
> > >          mov r9, #16
> > >         -vmrs r6, fpscr
> > >          orr r9, r9, #251658240
> > >          add r0, r0, #4
> > >          str r0, [r4, #0x3c]
> > >          mvn r0, #159
> > >          sub r0, r0, #-1207959552
> > >          and r0, r7, r0
> > >          vmsr fpexc, r0
> > >          vmrs r0, fpsid
> > >         +vmrs r6, fpscr
> > >          and r0, r0, #983040
> > >          cmp r0, #65536
> > >          bne 0xc0101d88
> > >
> > > Fixes: 4708fb041346 ("ARM: vfp: Reimplement VFP exception entry in C code")
> > > Signed-off-by: Calvin Owens <calvin@wbinvd.org>
> > > ---
> > >  arch/arm/vfp/vfpinstr.h | 48 ++++++++++++++++++++++-------------------
> > >  1 file changed, 26 insertions(+), 22 deletions(-)
> > >
> >
> > Thanks for the patch, and for the excellent analysis.
> >
> > Note that this fix has been proposed in the past, as well as another
> > one addressing the same issue, but we've been incredibly sloppy
> > getting it merged.
> >
> > https://lore.kernel.org/linux-arm-kernel/20240410024126.21589-2-zhuqiuer1@huawei.com/
> > https://lore.kernel.org/linux-arm-kernel/20240318093004.117153-2-ardb+git@google.com/
>
> Ah sorry for missing that, I searched for the symptom not the cure.
>
> > What both of us appear to have missed is that there are two versions
> > of these routines, which should either be dropped (as they are
> > obsolete now that the minimum binutils version is 2.25) or fixed up as
> > well, as you do below.
> >
> > Anyone have any thoughts on using a memory clobber as opposed to
> > volatile? I think volatile means that the access cannot be elided, but
> > it is unclear to me whether that implies any ordering. A 'memory'
> > clobber implies that globally visible state is updated, which seems
> > like a stronger guarantee to me.
>
> My thinking was that if 'asm volatile' is sufficient, it will suppress
> less optimization than the clobber, since the clobber might force the
> compiler to assume unrelated memory could have been modified when it
> really never is. But I'm not sure about that.
>
> Out of curiousity, I tried it both ways with the same compiler just now,
> the only tiny difference in the emitted vfp_support_entry() is here:
>
>         --- /volatile   2024-07-28 13:28:59.890505404 -0700
>         +++ /memclobber 2024-07-28 13:28:59.890505404 -0700
>          str r0, [r5, #0x4]
>          vmrs r7, fpexc
>          tst r7, #1073741824
>          bne 0xc0101d28
>          orr r7, r7, #1073741824
>          bic r0, r7, #-2147483648
>          vmsr fpexc, r0
>         +ldr r8, [pc, #0x26c]
>          ldr r0, [r5, #0x8]
>         -ldr r8, [pc, #0x268]
>          add r6, r5, #224
>          ldr r0, [r8, r0, lsl #2]
>          cmp r0, r6
>          beq 0xc0101d18
>

Right. So it doesn't matter in practice - good to know.

So in the 'volatile' case, I guess we are relying on the compiler not
reordering those with respect to each other, which should be
sufficient to ensure that we do not access VFP status register before
enabling the VFP unit via the control register, as all are accessed
using inline asm.

In any case, this should go into the patch system.
https://www.armlinux.org.uk/developer/patches/section.php?section=0

Note to self and other: follow-up with a patch that removes
CONFIG_AS_VFP_VMRS_FPINST, which is no longer needed.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGLXGqA4JvuWNLk_-cu5_soKpbyDaZxwjOo5LVTdZt71w%40mail.gmail.com.
