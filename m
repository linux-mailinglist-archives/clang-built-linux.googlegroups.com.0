Return-Path: <clang-built-linux+bncBCS7XUWOUULBBLEDVT3AKGQEBNDOBSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B7E1E03DE
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 01:22:21 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id c191sf4116370vke.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 16:22:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590362540; cv=pass;
        d=google.com; s=arc-20160816;
        b=NkjKBY2CWtlpZu/k2yREaupt8v1p2a8d4LydFE9EDBN6Tf6gzA9VSXb6KMCX2c9tkR
         IxDpYdBsudoX39pAeexieZBt+Z6HitGYMsMMeDxlhr+j7eq+LZ1+sB3GmjHInYjgRXDb
         6D0meKejxwncSQLuBm2yVM197FfOyGStRFWfDCqpE5LJbOGx8Ctb9J7S/nv9DQWPiqVQ
         pAsAmY0EA5tK2sogpxLVB1ebhdZUHk8Kp4uQ5WKgV0qsdZrKDhj5sYJwCAy5rjbGdIzN
         xBuNQbtinPEmCKLFuCsWhq2m31S5yE9He5XzZL8w+NxUEjz5TzV/rNI3JZpFFNM7j43H
         JE0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=TEM/UKeQ4a9pHF1GG29pV12Kx1luQYMQxVH+WCEsM4M=;
        b=Sd9lrxtHbLPpD5iYlfFL5hVzAm2nyrpvEb6QI3/9YyCYBQ4sSuhA5oURD3yS3MRo2N
         ywGRjoU6/hrvO1/1RpIM+fkO578Wy7caVlNsSj6MBf+h/wo3viPaB5Hps6i8ziFrowYC
         BnoNv+XoYoDIyYVg96a+PoEACLGWNWyXgp6PJwfsih+/gOJxJhZKoG4vrSmSff34hdI1
         rWT28EZq9JRsuKYgKu158Ohpke144I5COURb/9/XI0wGQ2tybhQid2SYlhK6sLs/iZJS
         mjmeHostLcEFeCXdIH2hqgL08sDo6j5NZ6cykc8ZViFlhuBQG3FLUAgwNyVGCPR/KWc6
         PJ7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qdA3XEiN;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=TEM/UKeQ4a9pHF1GG29pV12Kx1luQYMQxVH+WCEsM4M=;
        b=b9tNk+tK9RcD0nm57tYrliAcHHvmQXyHz7D4MVkfqIdzx1c/zYv+unGJwdeTtqvn2R
         IW3R8rOiNuoN4YpyvKM8RYCA9y4sB6emAl3XxIkg7R5HgwEIJR0n1fcqzHZp9zgkrKlK
         3LMWvBwvzGRL2J5OPmDIB0iDII3t+ABIER5q0tRKldtEbzrJQg0/rmKTUqb/rErl/4Se
         yW3Dt8FklifQXf5Af8IotIre5IrqUD0wlKv2k9qF2ytGtNk8j9JRMd64bqNflrRPB4Jv
         Xjzs80Kzsu5reMugX850gDo/ERQbb7f/BvZVYer1IRhRtQ8LSNsavN0ze7n+L7JcSIPN
         sUow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TEM/UKeQ4a9pHF1GG29pV12Kx1luQYMQxVH+WCEsM4M=;
        b=P6BbIIUcHhiAF7yIMY36dyj/fCklV7i/Tr8uCJET22GGinBpwebUeU/xb1sA3wG2LL
         Ibd8nyl+C1pYeGPuZuROmYWeBAIJGgo2oMJkxvd8Xx7S4usqlk17Hre01EPhPc6V8YtC
         zCZ2S/snXY+vM1cEy19AbC6MoESw8C0nJTxeaiIVM+tM3JgFGyR2YomL1prTtsfdOGCs
         0QRvEx4uH0JsI9E+EEeUO706Y634DgWOn+FW1sdTix6RleLx8nPJPVAtQPVSttjYt7uc
         TbTW1WOeFEeRMWRBBqN1HwqK+bBPhmoKgPPSxCxJLwE8i8mFfasyBPBL2aBhS9hc+cbV
         En3Q==
X-Gm-Message-State: AOAM532WOJEUPntbpelNs8TcnVHSwzcEW4tkkyjVgM0h2daBVcbNyZXp
	18GS7zoifQq9K+afTakDCOI=
X-Google-Smtp-Source: ABdhPJzPY5WyE8Na6odPrjeMl6EEWSKCQx4ec71V6WckA4dW9t9jKJg6oT1G84/AACsJnkq8QgyH7g==
X-Received: by 2002:ab0:348c:: with SMTP id c12mr11510357uar.79.1590362540482;
        Sun, 24 May 2020 16:22:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:4504:: with SMTP id s4ls267267vka.3.gmail; Sun, 24 May
 2020 16:22:20 -0700 (PDT)
X-Received: by 2002:a1f:910e:: with SMTP id t14mr17456569vkd.58.1590362540018;
        Sun, 24 May 2020 16:22:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590362540; cv=none;
        d=google.com; s=arc-20160816;
        b=0boN87ddRgJjvgfXA+enBb4/E5SumTIjmR0KOcs1psMFPZPXGHGn0bw6PIza9XWm9o
         6Ov33N5EMCdeFJsq3JhoaMfNVPaquqmtK7uI9KnICWl7JnpzbX1R8jZLFGFWDOseIS07
         PIWMUZJtWm44TpuFAVJEjt1xE+w8UQpGrS/36xWJxMYYQiroftE7v5GWWtfzXKDFEyMU
         r/97+IABBljykQSR6W0Hm6uwW9Fi8XSRSvSLkqUMu7AnqjnCyJ1v1eXZuQvnUg25Z1dz
         HchvSj4kYhNqcfP5ygkZyr7EM/X/WRfktGLCoIo2HZc/W75EDbLm8ixTInz2aXh8sE+s
         WT1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1v9i69sL4QICbaidphEj2SUMbixrvb6wzpMA1fDBRz4=;
        b=hKmtqwDgGGOxFv2huhwKrWzpWl3Y7qVqdOR6ZZZCFpHQxyaoI/KtyEGn+RYIX/Wfav
         POuUZTqpPqYwv2OxsijdQaz3JxU0kHqi6D5sK7mOkeXiik0GWT7mh6oadWnoVfGvzGNS
         ykffYyMTiW7N+nzjmprt3+5mfV/1eL0shm9e/N0mU2p477MTAjcXlFSRcHbr81MTxq2C
         dI/lxmbNWeN46Ut4RFwnauhILjO8dh4TtrtxjWE5dTUTGdIV8lF7oZp02k6wUnNf5TNK
         aoFiJAFYYcVQpgUqkXlIytQcJgCFf1ResuG7f8mSB4ctKFkccb2cbUh46TlC+zf2gEiS
         Ssgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qdA3XEiN;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id d84si650456vsc.0.2020.05.24.16.22.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2020 16:22:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id k22so6810918pls.10
        for <clang-built-linux@googlegroups.com>; Sun, 24 May 2020 16:22:19 -0700 (PDT)
X-Received: by 2002:a17:902:b18b:: with SMTP id s11mr24655796plr.160.1590362538802;
        Sun, 24 May 2020 16:22:18 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id t20sm11471717pjo.13.2020.05.24.16.22.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 May 2020 16:22:17 -0700 (PDT)
Date: Sun, 24 May 2020 16:22:14 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] x86/boot: Remove runtime relocations from
 head_{32,64}.S
Message-ID: <20200524232214.i7rfpdzoam6tpt6n@google.com>
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
 <20200524212816.243139-4-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200524212816.243139-4-nivedita@alum.mit.edu>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qdA3XEiN;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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


On 2020-05-24, Arvind Sankar wrote:
>The BFD linker generates runtime relocations for z_input_len and
>z_output_len, even though they are absolute symbols.
>
>Work around this by defining two variables input_len and output_len in
>addition to the symbols, and use them via position-independent
>references.
>
>This eliminates the last two runtime relocations in the head code and
>allows us to drop the -z noreloc-overflow flag to the linker.
>
>Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
>---
> arch/x86/boot/compressed/Makefile  |  8 --------
> arch/x86/boot/compressed/head_32.S | 17 ++++++++---------
> arch/x86/boot/compressed/head_64.S |  4 ++--
> arch/x86/boot/compressed/mkpiggy.c |  6 ++++++
> 4 files changed, 16 insertions(+), 19 deletions(-)
>
>diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
>index aa9ed814e5fa..d3e882e855ee 100644
>--- a/arch/x86/boot/compressed/Makefile
>+++ b/arch/x86/boot/compressed/Makefile
>@@ -49,15 +49,7 @@ UBSAN_SANITIZE :=n
> KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
> # Compressed kernel should be built as PIE since it may be loaded at any
> # address by the bootloader.
>-ifeq ($(CONFIG_X86_32),y)
> KBUILD_LDFLAGS += $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
>-else
>-# To build 64-bit compressed kernel as PIE, we disable relocation
>-# overflow check to avoid relocation overflow error with a new linker
>-# command-line option, -z noreloc-overflow.
>-KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z noreloc-overflow" \
>-	&& echo "-z noreloc-overflow -pie --no-dynamic-linker")
>-endif
> LDFLAGS_vmlinux := -T
>
> hostprogs	:= mkpiggy
>diff --git a/arch/x86/boot/compressed/head_32.S b/arch/x86/boot/compressed/head_32.S
>index 66657bb99aae..064e895bad92 100644
>--- a/arch/x86/boot/compressed/head_32.S
>+++ b/arch/x86/boot/compressed/head_32.S
>@@ -193,18 +193,17 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
> /*
>  * Do the extraction, and jump to the new kernel..
>  */
>-				/* push arguments for extract_kernel: */
>-	pushl	$z_output_len	/* decompressed length, end of relocs */
>+	/* push arguments for extract_kernel: */
>
>-	pushl	%ebp		/* output address */
>-
>-	pushl	$z_input_len	/* input_len */
>+	pushl	output_len@GOTOFF(%ebx)	/* decompressed length, end of relocs */
>+	pushl	%ebp			/* output address */
>+	pushl	input_len@GOTOFF(%ebx)	/* input_len */
> 	leal	input_data@GOTOFF(%ebx), %eax
>-	pushl	%eax		/* input_data */
>+	pushl	%eax			/* input_data */
> 	leal	boot_heap@GOTOFF(%ebx), %eax
>-	pushl	%eax		/* heap area */
>-	pushl	%esi		/* real mode pointer */
>-	call	extract_kernel	/* returns kernel location in %eax */
>+	pushl	%eax			/* heap area */
>+	pushl	%esi			/* real mode pointer */
>+	call	extract_kernel		/* returns kernel location in %eax */
> 	addl	$24, %esp
>
> /*
>diff --git a/arch/x86/boot/compressed/head_64.S b/arch/x86/boot/compressed/head_64.S
>index f6ba32cd5702..6e4704b6a94e 100644
>--- a/arch/x86/boot/compressed/head_64.S
>+++ b/arch/x86/boot/compressed/head_64.S
>@@ -508,9 +508,9 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
> 	movq	%rsi, %rdi		/* real mode address */
> 	leaq	boot_heap(%rip), %rsi	/* malloc area for uncompression */
> 	leaq	input_data(%rip), %rdx  /* input_data */
>-	movl	$z_input_len, %ecx	/* input_len */
>+	movl	input_len(%rip), %ecx	/* input_len */
> 	movq	%rbp, %r8		/* output target address */
>-	movl	$z_output_len, %r9d	/* decompressed length, end of relocs */
>+	movl	output_len(%rip), %r9d	/* decompressed length, end of relocs */
> 	call	extract_kernel		/* returns kernel location in %rax */
> 	popq	%rsi
>
>diff --git a/arch/x86/boot/compressed/mkpiggy.c b/arch/x86/boot/compressed/mkpiggy.c
>index 7e01248765b2..52aa56cdbacc 100644
>--- a/arch/x86/boot/compressed/mkpiggy.c
>+++ b/arch/x86/boot/compressed/mkpiggy.c
>@@ -60,6 +60,12 @@ int main(int argc, char *argv[])
> 	printf(".incbin \"%s\"\n", argv[1]);
> 	printf("input_data_end:\n");
>
>+	printf(".section \".rodata\",\"a\",@progbits\n");
>+	printf(".globl input_len\n");
>+	printf("input_len:\n\t.long %lu\n", ilen);
>+	printf(".globl output_len\n");
>+	printf("output_len:\n\t.long %lu\n", (unsigned long)olen);
>+
> 	retval = 0;
> bail:
> 	if (f)
>-- 
>2.26.2
>

Probably worth mentioning that this works around GNU ld<2.35


This commit fixing https://sourceware.org/bugzilla/show_bug.cgi?id=25754
also fixed the bug. (Just verified that both 2.24 and 2.34 have the bug. binutils-gdb HEAD (future 2.35) is good.)

% cat a.s
pushl $z_input_len
% cat b.s
.globl z_input_len
z_input_len = 0xb612
% gcc -m32 -c a.s b.s
% ld.bfd -m elf_i386 -pie a.o b.o  # has an incorrect R_386_RELATIVE before binutils 2.35


Reviewed-by: Fangrui Song <maskray@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200524232214.i7rfpdzoam6tpt6n%40google.com.
