Return-Path: <clang-built-linux+bncBCIO53XE7YHBBB6VWX3AKGQEZ4ZNO2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C921E2C53
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 21:14:17 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id i6sf17588455pfg.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 12:14:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590520456; cv=pass;
        d=google.com; s=arc-20160816;
        b=R8wpqWBfhctN2Cio09AdizkdFWNjxall8qzo30ME0d8f2vz2ygeqJHpU1YoGiyApf5
         U+dAJXTnJ1rW8iGpvtRu1LT2IEwQhi6bXmrBar5Cpp24tvxFpllu7hu0RPV93WCWpC9O
         As19mocrDGjhYtM/kyL5rEGhgaydzBtDmYNG2HNzXz0Y8lA9ba8uKt49gXEgGe5dMHcF
         W0CqDpfOa+78gIleQMAt9xAx2HU+Avqgalynu0sWYPaZ56D1TSovTqEqGFL8sVuse/+8
         qri5Z0u/ReNu17zTyniLoFEIiZAheCmoIaD9thAxbAVyT7C/A4gPEkllMahqbrgNr5P2
         cOyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=g3U05LjbEus37X7lKKCVaSAdsPXrrQmd2SjCk82L4us=;
        b=Atp1PawKE+TPIsgXMh/vYRSwzgVC97+4zw4otTTZcbskPzlMcDMzx2lr4G9bXrSKSt
         vuWb5aqybBTJHYawmy+DwG79QiFLJPdg3ANiJaFG2xuzP7b6VPiF8H//PhrFCNhDnNGn
         bpuBOnolwnvRX83l8g18Vh8IkI+olXKtmNKZlaxTwd1zmtGmeZfz4xavHWYT5Ef9eC2V
         JOCVgRUhT4su6ZvWdrN5x+eBVVWaEgI0W24hEZ7fC7081I4SJxp4qCLsV+l2BKi7+JeZ
         m2M0wJXqbu4oNzPTV32j9MZxopVtl7Tjd7fMNqji++HVV11DLd/285+zyFSQOPOGPMVS
         bmIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GXiRcXq7;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g3U05LjbEus37X7lKKCVaSAdsPXrrQmd2SjCk82L4us=;
        b=VJ8f+WAy7gd6fpUsm/Aol0v37VZJu4BWzLEWQz2Rk4VeSs9r1xZBZfC/A2Zt//y8cW
         e1IrLve0y9AxAFXrP8ijwNOYnFd5II0uK86GpkUKjHTAxUUN5C0jiB8nMobgG30xnbE9
         MhAj78nyzgpfEUEUu6QJW6ntZe32GirDvcGmc1yJtne9f0XBP7wU1DRtj5bTrAwRYHrG
         s/L0t3GnD3wa/BIDJAMP925ja5/3sjsRlh+K2QsEpMVSNbqeuuNnM+0AJEju6cem6yU1
         VooxYkdYm4N+mkPagTApdIj/u0Yt2YRfhAk7CAgI7NmilE7N8hADTULX0CdzSXpf/DkA
         ceFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=g3U05LjbEus37X7lKKCVaSAdsPXrrQmd2SjCk82L4us=;
        b=i3hbUooDGEir40O1CwEMVt5FE7bVtwPQmGNiC1HPlrB9LxvdOl+DAYb4+IF0xsvzLo
         9qRMIiRaxuwVkCaBuJBNb9G3cQndnMHFkzR5KJS6yPFpTxs++v7nxeYpxHN/AX7nQqG/
         VCp2aQUCbTetllUKuRQdf27p4N/uMD7j1Prw5eZCEj8bephkKhk+XzNW+2EVUUx/VnnS
         8mpc4KvTKIY40OqiBTGzhJhuVkWjbgehUm6wsZtWbwn8lVBQEu43tHnPksJGCFtjIcjO
         8BSLw345bGBZbWJfF2qHKH1JVtinFFUXDo5sEOMTaQLsXWilceFf9ZNsdLkY0VEYZQwC
         cWeg==
X-Gm-Message-State: AOAM531zXsxLXxjyZBbKjlZvgWCVUtPXx4InNLGU69dhr2g+Rdn7PAdp
	B4TiD9EIpUK5MluRyzMbNnE=
X-Google-Smtp-Source: ABdhPJy9KXj2vbdLpiUWvDMTAldW7KWHnGr/H2MP9OAiF+ibwfm+t59mVnTqAqhu64lGYBGMsiw76g==
X-Received: by 2002:a17:902:7c16:: with SMTP id x22mr2430979pll.244.1590520455894;
        Tue, 26 May 2020 12:14:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1acc:: with SMTP id a195ls4140492pfa.11.gmail; Tue, 26
 May 2020 12:14:15 -0700 (PDT)
X-Received: by 2002:a63:451c:: with SMTP id s28mr393173pga.340.1590520455183;
        Tue, 26 May 2020 12:14:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590520455; cv=none;
        d=google.com; s=arc-20160816;
        b=Jz4VJkpWOzEAc5bguHnm1gxZ0E+MpalnHmP+XJ8QkjLd5EG5YnrpKxvieH6iylg3g7
         qhhnIOu7BL+5jna25B5INXuW047g7P2qFYIxlIi6EyOwRyCzkqb6jyZ41nSVNBt4Nmq+
         d6IHa0Hy8QmSdEqBKFEau63S67V/nzP1kJOLn4kJMg0XFC3JHzzS6d4ftKfjV8rN4ElB
         pjBZmcNZNWROj4rlmkOZeqU3WzQzJ0pG0tquQakVtuf+/aMSw2Bp5D6JJUMqq8nKL4h/
         7f8mRVVPN0UONzHfHdmMEffFKB7YfRyWT1p0GmMFyQ8PujrwepE4s4hP7JbqUTF/cwfn
         YnXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=AGRR8LANYx1vusOdI6o+XaJhETZ0bUiJLjthC+zTia0=;
        b=b3lgdYMQ3MZNyuzLESs7WJqriZFyDzyI7v20FdaPjF39NX6Y5fnDfrjfnkQhQ2H/Lc
         eKGwEMDt604qZ0lenADikczShFdBRSeOYPtWRbJJ4ltWiRpIQvu5ttUkfJLqwd+jpuMS
         LZmrlA1Ofv4yhUlBuQnaeIaIUYCkJNZ5jtyrHcSsUALgY7yS4sDif+DtJzkoK+lQZwhl
         xxxI1B0uoyvUS/sp02aVZL5yw4KC5QcLMoqEmw5rr7pt8L9BofQ9MkAEAWqJRrclpnlp
         FVvXOIL8GnpT8GW5KxLWMJ8PI2HEjA+zysXIOx3ZZ0+tOpObRQLMhxYS3tFOqH3Qf+9s
         a67w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GXiRcXq7;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id a16si84059plm.4.2020.05.26.12.14.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 12:14:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id q8so5376859qkm.12
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 12:14:15 -0700 (PDT)
X-Received: by 2002:a05:620a:1261:: with SMTP id b1mr288614qkl.377.1590520454251;
        Tue, 26 May 2020 12:14:14 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c17sm454252qtw.48.2020.05.26.12.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2020 12:14:13 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 26 May 2020 15:14:11 -0400
To: Fangrui Song <maskray@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Ard Biesheuvel <ardb@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 4/4] x86/boot: Check that there are no runtime
 relocations
Message-ID: <20200526191411.GA2380966@rani.riverdale.lan>
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
 <20200525225918.1624470-5-nivedita@alum.mit.edu>
 <CAMj1kXHc4o91VkaChoyVzr4w-HOaashMPtkCKLaszMGCxhR_2A@mail.gmail.com>
 <20200526151623.GB2190602@rani.riverdale.lan>
 <20200526171340.pdbautbix5ygdvgp@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200526171340.pdbautbix5ygdvgp@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GXiRcXq7;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743
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

On Tue, May 26, 2020 at 10:13:40AM -0700, Fangrui Song wrote:
> 
> On 2020-05-26, Arvind Sankar wrote:
> >On Tue, May 26, 2020 at 08:11:56AM +0200, Ard Biesheuvel wrote:
> >> On Tue, 26 May 2020 at 00:59, Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >> >  # Compressed kernel should be built as PIE since it may be loaded at any
> >> >  # address by the bootloader.
> >> > -KBUILD_LDFLAGS += $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
> >> > +KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
> >>
> >> Do we still need -pie linking with these changes applied?
> >>
> >
> >I think it's currently not strictly necessary -- eg the 64bit kernel
> >doesn't get linked as pie right now with LLD or old binutils. However,
> >it is safer to do so to ensure that the result remains PIC with future
> >versions of the linker. There are linker optimizations that can convert
> >certain PIC instructions when PIE is disabled. While I think they
> >currently all focus on eliminating indirection through the GOT (and thus
> >wouldn't be applicable any more),
> 
> There are 3 forms described by x86-64 psABI B.2 Optimize GOTPCRELX Relocations
> 
> (1) movq foo@GOTPCREL(%rip), %reg -> leaq foo(%rip), %reg
> (2) call *foo@GOTPCREL(%rip) -> nop; call foo
> (3) jmp *foo@GOTPCREL(%rip) -> jmp foo; nop
> 
> ld.bfd and gold perform (1) even for R_X86_64_GOTPCREL. LLD requires R_X86_64_[REX_]GOTPCRELX

The psABI says (1) can be relaxed into mov $foo, %reg if PIC is disabled
and foo lives below 4Gb. Similarly for the "test and binop" cases. Such
a relaxation would produce code that's not PIC any more, and wouldn't
boot.

> 
> >it's easy to imagine that they could
> >get extended to, for eg, convert
> >	leaq	foo(%rip), %rax
> >to
> >	movl	$foo, %eax
> >with some nop padding, etc.
> 
> Not with NOP padding, but probably with instruction prefixes. It is
> unclear the rewriting will be beneficial. Rewriting instructions definitely requires a
> dedicated relocation type like R_X86_64_[REX_]GOTPCRELX.

It ought to be faster: according to Agner Fog's tables, upto 4x higher
throughput than the RIP-relative LEA, and movq $foo, %rax is actually
the same size.

To take a step back, there isn't any *point* in not specifying -pie
after these changes: it would be lying to the toolchain just for the
sake of lying. It is inherently fragile, and would work only because the
toolchain isn't sophisticated enough to do some optimizations.

Eg, consider that if you ask for the address of an external function,
the compiler will generate
	movq f@GOTPCREL(%rip), %reg
if f has default visibility, and
	leaq f(%rip), %reg
if f has hidden visibility.

If you then link without -pie, the former gets relaxed into the non-PIC
	movq $f, %reg
by the BFD linker, but the latter isn't relaxed. This is a missed
optimization, which happens because there's the GOTPCRELX to tell the
linker that the first form can be relaxed, and there's no special
relaxable relocation type for the second form.

The 64-bit kernel actually contains one of these relocations, prior to
Ard's patches to add hiddden visibility for everything. It currently
works with LLD (which can't use -pie) only because LLD doesn't appear to
perform the relaxation of
	movq f@GOTPCREL(%rip), %reg
all the way to
	movq $f, %reg
Binutils-2.34, which does do that relaxation, produces an unbootable
kernel if you leave out the -pie.

> 
> >Also, the relocation check that's being added here would only work with
> >PIE linking.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200526191411.GA2380966%40rani.riverdale.lan.
