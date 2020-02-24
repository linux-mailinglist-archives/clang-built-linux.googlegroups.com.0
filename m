Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGEO2HZAKGQEAYWDKUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 248AA16B36D
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 22:58:49 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id t126sf5033232vkg.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 13:58:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582581528; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y5LrwD+PR/NKoSkYzaH0K8kz4MZ+ExQ2pmdODnKD0NoH7Ezgia/5eJ3vs3DrTA7ITD
         TnCTfonYXPFOnHJjTC+SqZq4VkdIimFgxVXxjbX25q5grKkkVjCdAUb+xB76FdPuSJUK
         MSSOoJDuJovk87lE74HVi55sMWZqVrLB/s0A2Ma8s0u9zfxab9isbFL5URbNF7BpFVIl
         UFUp8sgVD1gbNIFAdaZmhl6T7o4eVq/x38CwbHUKxk4ydlgcXhc6hgw8AOvW6dM8Gi/o
         PJeCNXw681ULhr8U3iFijpskm+6AkJHkPbnk1/DHeL+ihL9Ph+eyNlePHroO1phLtQLC
         M7Gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4nlh8tasF+xbcbAr1Id6WPptP2pi6/7e2Sui4IB0I54=;
        b=I5P2qrXttH+BHfu3dc5P9SNWlIM4MWYk8eW1kxSpwOFRnR/bxxAGqhBzvlIa1cUfeD
         Na7cIkoex7lxnULDNaRifgES+q4z3wAl4tQU2640aFqslOPmmybsJaakTBt2abXeax8+
         RWiYRZi+KmZP9XRZN5SEx3i2HF4em5SnZDZsl6E02b9VyimnCICtbDUxeo33KgdLCGvT
         zCmt1exEkq7UnBxwwHhkS9q1BlK624hz/GATLD254rWN68xeICTEGUfF0+Vw5UW4kPUX
         JxEgIOLCvqeSyT3s8AjYIS0JcMLFvO9jlvOsmDGpTNfRiC+eKuykanuhgfyfGLmCsm9P
         2Miw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DpUIx8IN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4nlh8tasF+xbcbAr1Id6WPptP2pi6/7e2Sui4IB0I54=;
        b=HKKFc7hPIzNXcxMFxkTxPZHw9h1iiCEDx7rzPjg+2JS94zK8zm9wRMgXx2UawkJzQ3
         ygl3kf4Cl1AVgGfVXlab4Aqo0l5TWnvGWs4jHlS8ckTUbj4Gn2DvfRJ7BmyXBSZH51cw
         17Z0Yw3yJzFELzILCOLJ0aO18bW4fNxkyT+O7sKuPGpHge3UH/Hegnh1qvQ30QKOjTXg
         VVOFPG1VomRBEB/PGfiLhCg0O6hCzMf4mW21qpl00CgHCwYqQ6pCR11Mq9Cznq55GMph
         roA6EMjr6Ycwh/VqyXOC4DmtCijRpUWt5xd1hqPj5YzSMPyOxpOkfEN1pkAu8oh9nQdb
         15cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4nlh8tasF+xbcbAr1Id6WPptP2pi6/7e2Sui4IB0I54=;
        b=IUGM+XnBnQs9muUc6tgEnr2hmVk0OfuMPcsJBMF9MwURPJ9gKoIEQBhJQnSAplwBJk
         KphGKBM2nsh0vbgN0D9Wtbs1IFberZwXTUr3dO8TXXOdumP9Wm10nKxxa0qpEmvsknAw
         K3jtoewlAf6maNP0k60COU6/BKYXOBMoND13/JMeRCuYOLDh9gea6KVyIedJM6br1VV0
         r8pXdc0p3DwOjhz1eGn9TPJQ7hzjopF5Pzf+I2RRKsReXGHjzmHcqfhlBRuW9x69PzLQ
         XPfzHpIZBwmEROXHn8ce/NIgzbdrusHD9sVCjQ3OkwkFb2DG4PhpUcVRBAgy5HsV7YW8
         eUNA==
X-Gm-Message-State: APjAAAX342wyima5CMeusR/XoadBRdXKHyl5nJxhtu7gDAFblHaWpj3N
	z0KtWgHwiUrP5hSiVAoxWG4=
X-Google-Smtp-Source: APXvYqweNW2HeeovqvH2G0RxGSIzhn2Rw73nhk4auM4v9uvSf6gw4WiSakusWQiYWxeZ16zJFENIuQ==
X-Received: by 2002:ab0:724c:: with SMTP id d12mr26726129uap.0.1582581528206;
        Mon, 24 Feb 2020 13:58:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2885:: with SMTP id s5ls719197uap.10.gmail; Mon, 24 Feb
 2020 13:58:47 -0800 (PST)
X-Received: by 2002:ab0:4753:: with SMTP id i19mr26117265uac.70.1582581527848;
        Mon, 24 Feb 2020 13:58:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582581527; cv=none;
        d=google.com; s=arc-20160816;
        b=BXRm3v6cvVdM5BCaNmQQGLC1Y9w9Qljzk87AV4BYfzafP8RyN70EGiuq0o0KG9uzSs
         K2gx1UlDP6OkqlFT3Rw3Q/ZyefKcJymB+8nhyF1ImQyBcX5skSHOKDHM9gUKy7MZ8+Yv
         Pdk5D8SdRYq63dTOPSznYyMOmWhMThBoCNTVqtmjhz5DGsbOxFmUSskr74RKVqqHls3/
         tQIKLdGZKHHTD5TdKXUQLybACog9K0JgooZdKWAK5UwYlC53WVUbZojJiAnoj84e0WXR
         ypdh7lz1xH3+HIp5C7KxNBbp0mIb2ipi4u97jcLcBEK/4MLpH3Y9hzLRu/JuSjit+j3a
         K0SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AlniHU7g9k96/uUW/5ypNnFyMnufPLmI9nvXsoiLe/g=;
        b=wGokiiOz1o68UneABVa4efhlGL8Nh8hkOdV1lW0aKZ5RRYQQrmsc6/b12WivYIqdbA
         38sFBPDo/ANuJuJy/W2eP4lLYzxaU9FR9++rrsy455wkjzQyoKoudvyYj5rYmFVfZmQk
         2SjsTMw6BS1gqBGc6UsQIogqLsCoWm/nJL6rk6nNiR+87UO2Zd0Dlgmh8hVvdq430B2S
         sG8020Lt0aTTmCu/CcRozLJF3T/z+tvAo+blVaH8oqKav5cDWptK4G+mfMuYMRCxZSfY
         qfI1hywV6IaKXS5g8d7/fUrW6mU4nw1uSL7a00btVA01DKD94ss9sE0/0qI4LbF2Nz64
         Uqvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DpUIx8IN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id s5si777263vka.2.2020.02.24.13.58.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 13:58:47 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id n7so6058399pfn.0
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 13:58:47 -0800 (PST)
X-Received: by 2002:aa7:8618:: with SMTP id p24mr54461821pfn.3.1582581526452;
 Mon, 24 Feb 2020 13:58:46 -0800 (PST)
MIME-Version: 1.0
References: <20200222235709.GA3786197@rani.riverdale.lan> <20200223193715.83729-3-nivedita@alum.mit.edu>
 <CAKwvOdmqM5aHnDCyL62gmWV5wFrKwAEdkHq+HPnvp3ZYA=dtbg@mail.gmail.com> <20200224213319.GB409112@rani.riverdale.lan>
In-Reply-To: <20200224213319.GB409112@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 24 Feb 2020 13:58:35 -0800
Message-ID: <CAKwvOdn6cxm9EpB7A9kLasttPwLY2csnhqgNAdkJ6_s2DP1-HA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arch/x86: Drop unneeded linker script discard of .eh_frame
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Borislav Petkov <bp@alien8.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michael Matz <matz@suse.de>, 
	Fangrui Song <maskray@google.com>, Kees Cook <keescook@chromium.org>, 
	Andy Lutomirski <luto@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DpUIx8IN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Mon, Feb 24, 2020 at 1:33 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Mon, Feb 24, 2020 at 12:45:51PM -0800, Nick Desaulniers wrote:
> >
> > grepping for eh_frame in arch/x86/ there's a comment in
> > arch/x86/include/asm/dwarf2.h:
> >  40 #ifndef BUILD_VDSO
> >  41   /*
> >  42    * Emit CFI data in .debug_frame sections, not .eh_frame
> > sections.
> >  43    * The latter we currently just discard since we don't do DWARF
> >  44    * unwinding at runtime.  So only the offline DWARF information is
> >  45    * useful to anyone.  Note we should not use this directive if
> >  46    * vmlinux.lds.S gets changed so it doesn't discard .eh_frame.
> >  47    */
> >  48   .cfi_sections .debug_frame
> >
> > add via:
> > commit 7b956f035a9ef ("x86/asm: Re-add parts of the manual CFI infrastructure")
> >
> > https://sourceware.org/binutils/docs/as/CFI-directives.html#g_t_002ecfi_005fsections-section_005flist
> > is the manual's section on .cfi_sections directives, and states `The
> > default if this directive is not used is .cfi_sections .eh_frame.`.
> > So the comment is slightly stale since we're no longer explicitly
> > discarding .eh_frame in arch/x86/kernel/vmlinux.lds.S, rather
> > preventing the generation via -fno-asynchronous-unwind-tables in
> > KBUILD_CFLAGS (across a few different Makefiles).  Would you mind also
> > updating the comment in arch/x86/include/asm/dwarf2.h in a V2? The
> > rest of this patch LGTM.
> >
>
> i.e. just replace that last sentence with "Note ... if we decide to use
> runtime DWARF unwinding again"?

Yeah that should be good.  Maybe these cleanups could be a separate
patch, if you prefer?

>
> The whole ifdef-ery machinery there is obsolete, all the directives its
> checking support for have been there since binutils-2.18, so should
> probably also clean it up to just unconditionally define them.

arch/x86/Makefile:
184 # do binutils support CFI?
185 cfi := $(call as-instr,.cfi_startproc\n.cfi_rel_offset
$(sp-y)$(comma)0\n.cfi_endproc,-DCONFIG_AS_CFI=1)
186 # is .cfi_signal_frame supported too?
187 cfi-sigframe := $(call
as-instr,.cfi_startproc\n.cfi_signal_frame\n.cfi_endproc,-DCONFIG_AS_CFI_SIGNAL_FRAME=1)
188 cfi-sections := $(call as-instr,.cfi_sections
.debug_frame,-DCONFIG_AS_CFI_SECTIONS=1)

2.18? Oh, yeah, we can clean that up to.
Documentation/process/changes.rst list binutils 2.21 as the minimum
supported version.  Then I assume that code that uses those -D flags
can go, too.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn6cxm9EpB7A9kLasttPwLY2csnhqgNAdkJ6_s2DP1-HA%40mail.gmail.com.
