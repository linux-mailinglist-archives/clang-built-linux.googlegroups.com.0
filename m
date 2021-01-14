Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBZV6QCAAMGQEMZ6VKCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id C24DC2F5EEE
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:39:34 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id v5sf2426049wrr.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 02:39:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610620774; cv=pass;
        d=google.com; s=arc-20160816;
        b=V1Al18JXdMANyCMiu6a8JzWK5XE3ru2Uxl6+b9KnH3qC2pua3MgayKzMG7LBTd952x
         4Q5w7brkUELZXCBuRyy7OI/kOy0f/QEVEstA65YJyYMn5J8WRo4WE0fVO8USEpnso1Bq
         DZWNLG7xNGdNYx9C443VnAK86skwg9SNkPdNHHdDF4lm5ejep+xcdeE1KQyHBT4tLIlt
         rI/8qiwSC+j8Spt22Xe8iaPrAaMPy+J1l6Ei04wILEh+s+bkmySEmKgS1/GlG+f40ObA
         01Zlkw7XAKS4r7NzngumCoft6usjM3WppfkB7MRDSmcCl/8rFlz3bJ36VtuDAcmW2/Xc
         lH4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mG0/99of8jAtgDXQPTBKrQw8j90HCwHB65/ODN6SpL0=;
        b=UsvelSogEFVfNEwMtvwDJnWARdGEcAXjSTKcztPjybpajSsU7ab1bUufDC2lT3SxYk
         JwX9eeE569MOKop4FXbeVS9JaTbYzPbrlBMa3r8LU0Ix0icWiJP71uRTGKC2U0SW9fHk
         JbYf6oXRRaBH+fcp0AGtxAaY1X5NiBq6ztLxSWWoxhAETtLTNeo+Y+i4LdiR3aVA1WNe
         McCtffoHUJEpjYcXhiVPan8CV0Fs73ciLwXX71t79LY1TnEy4MD9x3Q913d4aeoRvkE/
         qzVs2Rilg5bXEIrZs2xhTMxSXfbALMBqXr5Pzi4szC0U6Z+IIeGmnaCnK59cpYM1aIPq
         pyag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=YqglV8SW;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mG0/99of8jAtgDXQPTBKrQw8j90HCwHB65/ODN6SpL0=;
        b=Lx4UoQ/WKbQKUZeE/lqcow/S2uMP/x1aZK5kmP4s2pD58d0aNjzGXsm1mf88Y0R6Gq
         NAibPYyMEpxIGLUmBbguQtje9zR32+I0gkUQVBdZYQ72WlZ4SNnnXFOuUK/BLo2v+FXE
         xgaV/MhsCQ8rc9gFdeK634hUfXEpENE/U2DU6P4nT8iKiKDv8CTfr5mYoWkBTuynAzAm
         k1+tLvw66dmz/4SWrlbE5CyM6JPa7lpIJO4KtpNrSTWqnOHkd/+UC4LavBphr/FKtCb+
         st5pBDihyL+ELmYEiWVP/Nl2BfXk5r13uIYBQGTr0NPJ3h7gz0boa2tDbv152BJQl/tB
         ekOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mG0/99of8jAtgDXQPTBKrQw8j90HCwHB65/ODN6SpL0=;
        b=jZDM6raOULopnb7g5j693sPxm/+L17APN+kX5HWeccdvN8YlokxumV/vp2Txzdh92r
         tjVvjOTJOrP2QIuyd4hrqbgrpcUrXwf3ginzYeKBvXMC05Tv3Y2sZ5gI+KFOufP8jkaF
         m1NBvwQq/DDgxE+M1/Xklp4WEhbsTAMXsznkBM5jIfc9ibR//p1HpeJjUfsh6X9rcXVK
         7v6pV7IEEyUE41qGJnZ7If6q3ctmWKxxsfrnMILF8jUjISvMwW31SXZY11CQ4uZn9Pyx
         5GN0lbbi7DHNf22fyvQyTEVXIChdoz1kP5Ur4tvC07di31GoG6/Is+Aph8mmy0u6vUL+
         /xtw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533K7bSEW1mJDDDn56f6irGo0VvynIryq87usNttb09ZDIaoH4Yt
	7cIjeoUgBDsiQZvPf0Wp8Dg=
X-Google-Smtp-Source: ABdhPJy1rEliR4xR6vi0bqdDb5MXygWC/dGKUHpRrbjaufyMeWhFuNvDPD/HWdtlJ1/rVwbgJ1o/Pg==
X-Received: by 2002:a1c:4c0a:: with SMTP id z10mr3234107wmf.95.1610620774420;
        Thu, 14 Jan 2021 02:39:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:b688:: with SMTP id g130ls2437062wmf.3.canary-gmail;
 Thu, 14 Jan 2021 02:39:33 -0800 (PST)
X-Received: by 2002:a05:600c:22d7:: with SMTP id 23mr3328781wmg.7.1610620773626;
        Thu, 14 Jan 2021 02:39:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610620773; cv=none;
        d=google.com; s=arc-20160816;
        b=VmBcaUuBwL8/ZYJFG4eylhl/MPI48dZ4Dg6w0affQNzCXW1fmxbZGDAaZKyEV+W564
         43UkTbTx8kJHLPhbqj2dQ8HTYpbD8Wl0lb4m2JJvuUq08uld2C7eAPXe3zWYQAasMBlL
         zAGcYqNt7oGG48Es7UK+ttNb5JW7g4ZQ6l21Oy+nUKDiyUxTzGdK9Ww6ysFXcxSqgYE9
         Wg5FBoJgdOMaIl1H4wlQ8R3ITXvrQs7oQuFuaPAOgMfwXwggiKXXFM4Y1Y0NcqxoarRL
         3g34Rwgte3dySiOr3y2pKAIxhNpuD0fcNpFF/Q8Ko/S7sjYyf2rkN75zoNlPtI/ESswJ
         Dh5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Uz5M8jM6ROkPD6VOKuFFM9kmh68b0rkKCdwLPFJrhGI=;
        b=xpzccSPqCBlR9Q4Bngn5keJi5F3QxmgR6AF1URIBj9t4IVGH/SG/j1XBWbmrYWJPFu
         EK3mbLvTNdqNaEggadOou2bsCJ8YVMr9JM5+lXC88myVPNHKDqS4jS3PHXuUJ4AAzBiG
         U9FjYoB9xO4dhLDXpacz2VIzS822oc/uy0aDIYitJYT/0MgBA5mHraz0R3DyxHpaoQTG
         /atUrpNPfUleAq6i/gOOK/aa28Ieh/DjxvcPBbPnkTTW1JLcfK+ZmGUdUQpFPYqTAc9q
         JpS30kyNcH29Ye7AhHdZJL3ZwlA158g09ysUSj1eq4uW6FQ7QomrGjb0JFPVQHiNWC/n
         bKqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=YqglV8SW;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id 18si411048wmg.2.2021.01.14.02.39.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 02:39:33 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f1aa900dc6a18505a7e3253.dip0.t-ipconnect.de [IPv6:2003:ec:2f1a:a900:dc6a:1850:5a7e:3253])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 824741EC04DF;
	Thu, 14 Jan 2021 11:39:32 +0100 (CET)
Date: Thu, 14 Jan 2021 11:39:28 +0100
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Mark Brown <broonie@kernel.org>,
	Andy Lutomirski <luto@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Fangrui Song <maskray@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Jonathan Corbet <corbet@lwn.net>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
	Joe Perches <joe@perches.com>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v4] x86/entry: emit a symbol for register restoring thunk
Message-ID: <20210114103928.GB12284@zn.tnic>
References: <20210112115421.GB13086@zn.tnic>
 <20210112194625.4181814-1-ndesaulniers@google.com>
 <20210112210154.GI4646@sirena.org.uk>
 <20210113165923.acvycpcu5tzksbbi@treble>
 <CAKwvOdnAMsYF-v1LAqttBV3e3rHhSFZmPcRRV0+v=+9AyMFgNA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnAMsYF-v1LAqttBV3e3rHhSFZmPcRRV0+v=+9AyMFgNA@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=YqglV8SW;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Wed, Jan 13, 2021 at 09:56:04AM -0800, Nick Desaulniers wrote:
> Apologies, that was not my intention.  I've sent a follow up in
> https://lore.kernel.org/lkml/20210113174620.958429-1-ndesaulniers@google.com/T/#u
> since BP picked up v3 in tip x86/entry:
> https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?h=x86/entry&id=bde718b7e154afc99e1956b18a848401ce8e1f8e

It is the topmost patch so I can rebase...

Also, I replicated that text into linkage.h and removed the change over
SYM_CODE_START and I've got the below.

Further complaints?

---
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 12 Jan 2021 11:46:24 -0800
Subject: [PATCH] x86/entry: Emit a symbol for register restoring thunk

Arnd found a randconfig that produces the warning:

  arch/x86/entry/thunk_64.o: warning: objtool: missing symbol for insn at
  offset 0x3e

when building with LLVM_IAS=1 (Clang's integrated assembler). Josh
notes:

  With the LLVM assembler not generating section symbols, objtool has no
  way to reference this code when it generates ORC unwinder entries,
  because this code is outside of any ELF function.

  The limitation now being imposed by objtool is that all code must be
  contained in an ELF symbol.  And .L symbols don't create such symbols.

  So basically, you can use an .L symbol *inside* a function or a code
  segment, you just can't use the .L symbol to contain the code using a
  SYM_*_START/END annotation pair.

Fangrui notes that this optimization is helpful for reducing image size
when compiling with -ffunction-sections and -fdata-sections. I have
observed on the order of tens of thousands of symbols for the kernel
images built with those flags.

A patch has been authored against GNU binutils to match this behavior
of not generating unused section symbols ([1]), so this will
also become a problem for users of GNU binutils once they upgrade to 2.36.

Omit the .L prefix on a label so that the assembler will emit an entry
into the symbol table for the label, with STB_LOCAL binding. This
enables objtool to generate proper unwind info here with LLVM_IAS=1 or
GNU binutils 2.36+.

 [ bp: Massage commit message. ]

Reported-by: Arnd Bergmann <arnd@arndb.de>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Suggested-by: Borislav Petkov <bp@alien8.de>
Suggested-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Borislav Petkov <bp@suse.de>
Link: https://lkml.kernel.org/r/20210112194625.4181814-1-ndesaulniers@google.com
Link: https://github.com/ClangBuiltLinux/linux/issues/1209
Link: https://reviews.llvm.org/D93783
Link: https://sourceware.org/binutils/docs/as/Symbol-Names.html
Link: https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=d1bcae833b32f1408485ce69f844dcd7ded093a8 [1]
---
 Documentation/asm-annotations.rst | 5 +++++
 arch/x86/entry/thunk_64.S         | 8 ++++----
 include/linux/linkage.h           | 5 +++++
 3 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/Documentation/asm-annotations.rst b/Documentation/asm-annotations.rst
index 32ea57483378..76424e0431f4 100644
--- a/Documentation/asm-annotations.rst
+++ b/Documentation/asm-annotations.rst
@@ -100,6 +100,11 @@ Instruction Macros
 ~~~~~~~~~~~~~~~~~~
 This section covers ``SYM_FUNC_*`` and ``SYM_CODE_*`` enumerated above.
 
+``objtool`` requires that all code must be contained in an ELF symbol. Symbol
+names that have a ``.L`` prefix do not emit symbol table entries. ``.L``
+prefixed symbols can be used within a code region, but should be avoided for
+denoting a range of code via ``SYM_*_START/END`` annotations.
+
 * ``SYM_FUNC_START`` and ``SYM_FUNC_START_LOCAL`` are supposed to be **the
   most frequent markings**. They are used for functions with standard calling
   conventions -- global and local. Like in C, they both align the functions to
diff --git a/arch/x86/entry/thunk_64.S b/arch/x86/entry/thunk_64.S
index ccd32877a3c4..c9a9fbf1655f 100644
--- a/arch/x86/entry/thunk_64.S
+++ b/arch/x86/entry/thunk_64.S
@@ -31,7 +31,7 @@ SYM_FUNC_START_NOALIGN(\name)
 	.endif
 
 	call \func
-	jmp  .L_restore
+	jmp  __thunk_restore
 SYM_FUNC_END(\name)
 	_ASM_NOKPROBE(\name)
 	.endm
@@ -44,7 +44,7 @@ SYM_FUNC_END(\name)
 #endif
 
 #ifdef CONFIG_PREEMPTION
-SYM_CODE_START_LOCAL_NOALIGN(.L_restore)
+SYM_CODE_START_LOCAL_NOALIGN(__thunk_restore)
 	popq %r11
 	popq %r10
 	popq %r9
@@ -56,6 +56,6 @@ SYM_CODE_START_LOCAL_NOALIGN(.L_restore)
 	popq %rdi
 	popq %rbp
 	ret
-	_ASM_NOKPROBE(.L_restore)
-SYM_CODE_END(.L_restore)
+	_ASM_NOKPROBE(__thunk_restore)
+SYM_CODE_END(__thunk_restore)
 #endif
diff --git a/include/linux/linkage.h b/include/linux/linkage.h
index 5bcfbd972e97..dbf8506decca 100644
--- a/include/linux/linkage.h
+++ b/include/linux/linkage.h
@@ -178,6 +178,11 @@
  * Objtool generates debug info for both FUNC & CODE, but needs special
  * annotations for each CODE's start (to describe the actual stack frame).
  *
+ * Objtool requires that all code must be contained in an ELF symbol. Symbol
+ * names that have a  .L prefix do not emit symbol table entries. .L
+ * prefixed symbols can be used within a code region, but should be avoided for
+ * denoting a range of code via ``SYM_*_START/END`` annotations.
+ *
  * ALIAS -- does not generate debug info -- the aliased function will
  */
 
-- 
2.29.2

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114103928.GB12284%40zn.tnic.
