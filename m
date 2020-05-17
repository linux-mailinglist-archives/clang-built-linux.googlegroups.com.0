Return-Path: <clang-built-linux+bncBCIO53XE7YHBBOV3Q33AKGQE7PFDXFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id A20D31D6CDD
	for <lists+clang-built-linux@lfdr.de>; Sun, 17 May 2020 22:25:32 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id e28sf1323395pgm.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 17 May 2020 13:25:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589747131; cv=pass;
        d=google.com; s=arc-20160816;
        b=zxOxdMa4xGDonwqOoqHIhpplPZAmvkmhuaWjVxsmRmXwqicouB85P9U3Ldb/KS9Jhu
         h+FS9+6hPX9j+eJrLPtS9VwhoPuEbN1JeG9NS8iwfKsxMneBHXx0G8i5jIaM1cvlUWgS
         +aeNNkMOXR8FwZLN/Ljf+qz7KWAJC2hd/EEwaKhTdY304kY+J/7dDlIBAqngSeladKQK
         HNtO50WTJReW4gyoJDRIX5lUlvVc0HYqrnCwPtwsSyLqyCr0yOupAbJukVrxuLT+IK90
         S1fX1K0GE8hLPsjYI5okUi8VFBaEyzlejyMZr2Ekjl8WK7L2MiMcSZfdTLNNOQdjUYMR
         bXvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=THa7K43S5kXzgOuCMzS3HfW8+2sdE7RjZmDOF95PcFE=;
        b=uGh+Gdzx7SW4qLJpIeVs+opHO6BSOEFddH/zOQBsTLF2Kd43lqLJ7KA3Ymj9Umbeph
         ER6mJYMVHYWyTIFg+x664sYUVJd2xBMOm6RQblubJ1iLg8JKP/GNw26QC8R639x/e59Y
         jDDZWQqVgb3JPkV8bAjMeMtjK/aqm5W3t5hQjiu2zl7C0ct6BVQmpe0eu2la82cqU4M+
         4JQwrmfNBz+RJyGYXcaydH3Yua6siMhMZ6qle1Ifd6EpA3MLY/V/NXVcyJuKxuGAp9iM
         A10UqRnYAml3OhogG4wDU56gjl6kSfHga0DcnHpLXKxQhdEuSlP2AVEVxLbSM+SN/V5e
         Q/HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RJRl6ID2;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=THa7K43S5kXzgOuCMzS3HfW8+2sdE7RjZmDOF95PcFE=;
        b=m74CBPayCvV1/r2KsM51mUjYnqr6VfWwCUxkV8i61eiU9WEAP74N/ZXcvIsFvWyehg
         wGHJnhjvQ5rXNt+/UbJLzNSFEMJundsvPLWwnJdj/gtLVvoCErRhPBZ1nnMhtSAEm/Lh
         Q00bpMMpTdrq9JUU2a5BNU3pDbSkFCizoQjjVlDBYdLTA3XbAIb468FLhQyFY5lvETGa
         F6XgKAQbM4Z3SemltTuJt8SVkc6ZVQOxzQNOZh3sAocFamp9LKVe/oHH3et5gxPbAMnB
         eixccKNCgWCzNvaucmgTTjkfY2p5RfkbjxFPCTpXG9hvfSnF8vHdhNj5pANtZJhRMuHg
         PHzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=THa7K43S5kXzgOuCMzS3HfW8+2sdE7RjZmDOF95PcFE=;
        b=YRzPBrO4QXDiO/R1aqg1aUNsS4i/n/+s0SvalFynXxHxwc4ZTfsxImZAy1PIS1WZyx
         sUsYniEu0LhFKsn2neN/8EEEQJjdhtte9ElH9l4Ly7tGxoW64mxKqVCveHL7eUybw68Q
         rid7cFZD2wvWhR8arUJ2P2Pln4ijjIIrK6qxNwd3rOmUWi8IfvvxBbxL6eM44+xr8WWK
         AiZgnKvH8kmVMuvJYEXmb4luNtswa1We2AzsqwG3c0sJZR+uK80daIseNK+LHCMhqc7S
         q2vF0aKQGTmSFYhAETz5+GrI/AoNoTOI/9TfLItBxp9j1gdSLDRzY/swPUA7KOm5/dTY
         Nieg==
X-Gm-Message-State: AOAM533P1+Mlr1u8yjM22/EYtFnTWGCrkos3uoMc/7pox0sS+jBdj2P1
	chfw98wAJ958rN1lre51Lq4=
X-Google-Smtp-Source: ABdhPJw3z6SJ5ATlG9dWGK4xYp4y9hEBGDThfZo/nqMuHWyuAmG6Cyoa80kJD0k2FxorsLlV1V4Qfw==
X-Received: by 2002:aa7:9690:: with SMTP id f16mr14536961pfk.20.1589747130794;
        Sun, 17 May 2020 13:25:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7604:: with SMTP id s4ls2332740pjk.1.gmail; Sun, 17
 May 2020 13:25:30 -0700 (PDT)
X-Received: by 2002:a17:90a:6581:: with SMTP id k1mr14631226pjj.118.1589747130356;
        Sun, 17 May 2020 13:25:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589747130; cv=none;
        d=google.com; s=arc-20160816;
        b=nhlx2jAjru4hjq7Cz6XxWpTK4W9i+kFmpvBSSS0FRNO1+4tkkdsRKLTSFnmadfVehb
         +dkemwOV5JfxkfShPEQ/EPPH/r6kIlBIQf/GSUqneeRQx8vYSr0XknAZkvWPEGrNxQfS
         NK4XcNOGB2fD96V54qd1GKOZE5a6ChCrWtZW5Dkb7cGqMx51LUCFzeKgEX18MAbTCpSJ
         m11x0vcicAoLECphE8RXdLdL6hnnqNS9bdI1Q2+kObV0b4LbyFY5Rnw8yTOVSXXs3rmz
         Cow0fBIbiD33Od8p13DSYWmJSlcd764qAn/fOzNOc/O2poSxWMroeo/PI38hBxAqJk2M
         6Ngw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=pdFkZ3z8hbCWgEtAKY5gJCVXhkdUK7J2l2u0edhAVKY=;
        b=MlwGosKWLFr5rsFHZe/1biAt9GlzDdq+L/pUhEJK7vGHiKT6vC31oghnPJxAHun4ou
         yIA4XmlS1ajAoKyfRAotqnHslxlGXfQhRn/4l6oTJWT//9pLtaLWWGj8I7LVqelDJ1/z
         MPnFjPRCO/qraG1DIOLvzJoEgqXXEptEliSsfeaxMR6tmjbjT5jofZYbzVyGTQC+vIfW
         AFGrQjVu4XFUgVdmSuOy+WsA/86OqW0dG+ugUVFSYUgqp+scNTOGK9kegZjMyaFutMbI
         lKpeHI/HNJZOjTSW0EfejWnTs9+/1IZeYqLs5EePk0SZh5+lQ9fbMdZH236MB9MRBIeV
         7xFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RJRl6ID2;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id a1si543049plp.2.2020.05.17.13.25.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 May 2020 13:25:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id 4so6512626qtb.4
        for <clang-built-linux@googlegroups.com>; Sun, 17 May 2020 13:25:30 -0700 (PDT)
X-Received: by 2002:ac8:5517:: with SMTP id j23mr3008528qtq.215.1589747129446;
        Sun, 17 May 2020 13:25:29 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id y185sm6662678qkd.29.2020.05.17.13.25.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 May 2020 13:25:29 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sun, 17 May 2020 16:25:27 -0400
To: Fangrui Song <maskray@google.com>
Cc: Dmitry Golovin <dima@golovin.in>, Borislav Petkov <bp@alien8.de>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "x86@kernel.org" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] x86/boot: allow a relocatable kernel to be linked with
 lld
Message-ID: <20200517202527.GA2563549@rani.riverdale.lan>
References: <20200501084215.242-1-dima@golovin.in>
 <20200515185051.GC19017@zn.tnic>
 <602331589572661@mail.yandex.ru>
 <20200517194429.scwhfr4l4bv4h3ux@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200517194429.scwhfr4l4bv4h3ux@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RJRl6ID2;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Sun, May 17, 2020 at 12:44:29PM -0700, Fangrui Song wrote:
> On 2020-05-16, Dmitry Golovin wrote:
> >15.05.2020, 21:50, "Borislav Petkov" <bp@alien8.de>:
> >>
> >> I need more info here about which segment is read-only?
> >>
> >> Is this something LLD does by default or what's happening?
> >>
> >
> >Probably should have quoted the original error message:
> >
> >    ld.lld: error: can't create dynamic relocation R_386_32 against
> >    symbol: _bss in readonly segment; recompile object files with -fPIC
> >    or pass '-Wl,-z,notext' to allow text relocations in the output
> 
> Do we know where do these R_386_32 come from?
> 
> When linking in -shared mode, the linker assumes the image is a shared
> object and has undetermined image base at runtime. An absolute
> relocation needs a text relocation (a relocation against a readonly
> segment).
> 
> When neither -z notext nor -z text is specified, GNU ld is in an
> indefinite state where it will enable text relocations (DT_TEXTREL
> DF_TEXTREL) on demand. It is not considered a good practice for
> userspace applications to do this.
> 
> Of course the kernel is different....... I know little about the kernel,
> but if there is a way to make the sections containing R_386_32
> relocations writable (SHF_WRITE), that will be a better solution to me.
> In LLD, -z notext is like making every section SHF_WRITE.

The assembly files head_32.S and head_64.S in arch/x86/boot/compressed
create bogus relocations in .head.text and .text.

This is the source of the common warning when using the bfd linker, for
eg on 64-bit:
  LD      arch/x86/boot/compressed/vmlinux
  ld: arch/x86/boot/compressed/head_64.o: warning: relocation in read-only section `.head.text'
  ld: warning: creating a DT_TEXTREL in object

These relocations are "bogus", i.e. they're unwanted and the kernel
won't actually boot if anything were to perform those relocations before
running it. They're also the cause of the 64-bit kernel requiring linker
support for the -z noreloc-overflow option to link it as PIE.

From arch/x86/boot/compressed/Makefile:

# To build 64-bit compressed kernel as PIE, we disable relocation
# overflow check to avoid relocation overflow error with a new linker
# command-line option, -z noreloc-overflow.
KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z
noreloc-overflow" \
        && echo "-z noreloc-overflow -pie --no-dynamic-linker")

The relocations come from code like
	leal    gdt(%ebp), %eax
which should really be
	leal	(gdt-startup_32)(%ebp), %eax
to be technically correct.

I've played around with fixing the head code to avoid creating the
relocations in the first place, but never got around to submitting
anything: if there is interest in this, I can polish it up and send it
around.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200517202527.GA2563549%40rani.riverdale.lan.
