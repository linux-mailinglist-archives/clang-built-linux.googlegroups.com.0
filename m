Return-Path: <clang-built-linux+bncBCS7XUWOUULBB27X6L7QKGQEJIK7SUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9732F2136
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 21:58:20 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id z21sf62805pjq.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 12:58:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610398699; cv=pass;
        d=google.com; s=arc-20160816;
        b=g4r9rcrpuqClOa8vzvMtNunZZ/rTVn7MCswdNXP4skLh0oiizVrxGuv4PjIvIF/fWM
         1xhesN4IrZ1qvuIEt6Ojdm/HmOl7QU0Gnn7tiVF3w9TF02ZaStbjJaA3ftNo6cl4jVV/
         Jrqs6HobXMmnBZjsB1FTx9LqVb24A4z7MbOub3c1eaOM4qywiNuGf7WlqJlDcmi5Q+VX
         +af1NI7KfWyRSlhzryK0bBPCVa9J0ys1ISGCalq6z+wohg5p6vz10b5IIAqk443UH+Iy
         azp7xUxD6nzB3mjr6KLCIrjIplFS6mi2DFEu9DH8hRLNLlsxZeXAmM1pv5S55N9itEV5
         qCAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=vK4tuLQnC6jSoge0lLJMPEkTlX6XZkNVF4t15M3/gaQ=;
        b=Rzri2q7kW/R2lBd8zw9Nta9+9lVJVamkLgvawHZeELyhcgPk3XZhmbHKBHknkXMwWh
         nHIBYY+eemZGaDwp3x8BRlHiQecGXB411QYHnbEmgAFpAFiaqwHmjgcC1PK+4hzoZ0Wg
         QQ+EIFYJk7QM+QzUqTIJUGJGGkNUPjKnRbnlm1Wo/Pf4OEq/kQH4XmjAPSNjUyeeHoSL
         InFpHIRNyBLrCRu0D18w1Sl+H5kzJEssFK2IGwnNbaxnibm7z7U2/CP7T/t5yXwyBehb
         i7pN4lCwjwA4rNf0PccljSestv+7f0u7Zlvu4K3GvN/VWJNPjsRgHbW9+BOGxNKB1rjK
         1w1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ftxFX/RU";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=vK4tuLQnC6jSoge0lLJMPEkTlX6XZkNVF4t15M3/gaQ=;
        b=blBmK4L8wcpdUgajSpw2h1agjy4P8sw5S0k3qkFQgx1l74uyq7LgPtTZLXDJXWiBIo
         SXSOrPfmE7u1DaeH+73AH3JZOJ4PDWvttyjie0x5JuxP6mWCX2y6neokQt9dFbELClte
         U1Ot9h/IZXNbC9SIqrVbZ391mpshI4R0rij2G4mZlz2QGjxMQtZIwd+tzpEjVGG1dU6p
         xpkdowWeAC2UygtFfhkfEsgmhdAeZ+8aRbHIaf7p6wd7Hl1iAcekBRI+kbXacBL3E9/t
         SlOMDqezqrlYw8C4C4Wj2NaH4doI41vmm3ccprXDoMFw9Njzxfn+JFOAsybrt/urYC/T
         juxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vK4tuLQnC6jSoge0lLJMPEkTlX6XZkNVF4t15M3/gaQ=;
        b=L9BhJ9413F4Hn/CJAcRisv/+BC3ete6knQRVx/YuIw4UiLfyRKLEI5A7NhVAf2sP+6
         QIkp2uyFs9+s2kWMyjoWXzVK7Tm4vP6n+OgXFngQjj7m7wjIHmQessE1IlK9kJZF3mGF
         EL6VObYQ7EkVINClQoAS8ZtFlHjIpmrKcaAfjdznz0aHO8N5u1Mp4P3p6ojxiAEmjj75
         Wzr0g8THaQW44NOV0nty750KTP9817fiJiJ1Wykd6MV8QA47IwuHoxY4OU6lT8guJ8Ig
         fRt13m1qxJeoB9U/djYzDU0lSSYQgKYXtX8GqkFYp+OPNv5csVGm1wMvyR451zIU9N5k
         Zz+Q==
X-Gm-Message-State: AOAM532a/nz+84wlrIXntlmQRWqEc4jilSH3t7954hVm1xLNuF0HeZDO
	YFJlz0gEUQytwWUpa4jC+GQ=
X-Google-Smtp-Source: ABdhPJxJ42r0iO5GQESsTnWlKiNrUNgaWk5lcLTBY1Cgo6RwoRSv7OMmKKBewo9hFEAglGNgKW2jIA==
X-Received: by 2002:a63:fb54:: with SMTP id w20mr1274127pgj.419.1610398699209;
        Mon, 11 Jan 2021 12:58:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d692:: with SMTP id v18ls303156ply.5.gmail; Mon, 11
 Jan 2021 12:58:18 -0800 (PST)
X-Received: by 2002:a17:90a:49c5:: with SMTP id l5mr754989pjm.116.1610398698635;
        Mon, 11 Jan 2021 12:58:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610398698; cv=none;
        d=google.com; s=arc-20160816;
        b=yeDtdVte5zx2LFFturNs8iMN50B1fZQroUGQA43AKXJ9wQySYATkcYS/uHCO6jPgud
         4b0B6lf1TO+FjhqHX+FUDk4v/LG0xnVssGrC75la6NJvfKcX2HhJzJQ1o5UJZjaT5huX
         3XHdFNPq+Uezvwxg+sfpE3AKpr6WYv+cl4ilgtthcv02W6AgET4tXWLO/k6AQPTZeYCD
         2iyjb9R4VNCFGjjsDRegh27gwdDJxR98J+Kzo0JI+YHrre74S7jROdpAuUKLTx3mcLEJ
         0npCDtCOzhCK1gHXAkE/DRZZoKexTNDFr1E6L3cxdZ6/3PWMxSc0s4L99t7DUihfway4
         Frpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4YnXT6/Dl7rfyU2s6Zv/oTTpfI/8RYAIA+FYqzJ/gss=;
        b=RyYo2z8QQaNDQO6XH6th/rzh3w6lcVW7sYY6CpHwwD91f9RqPc0AS5+bcmXQY+CoQc
         VxYrTMOep+ZvN75I2qzujd6BmW6+2icmEsDcIP7vwseEXRKPjmjvQFWMLxSshjXQr2Ty
         6B4j3uXZnliC59TC0uXVtg8vvb+nLGcJzoD86ST5U6wI/Wj8uTRRUVEI//Uw/RuMsjyn
         IdrThHie5lAMIkyJb165TyQC/LHUM3MXJ5x3yQgOYeK7mXx43pFWt1t+Vi10tXFuw+ba
         HxF59l6kBaE4n9UM4EmvLDy7qXJoAYElurSV0ON7WIz3zbEwUodWvQRsUUTAsYprauHk
         xI0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ftxFX/RU";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id i12si77490plt.3.2021.01.11.12.58.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 12:58:18 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Received: by mail-pl1-x630.google.com with SMTP id s15so146740plr.9
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 12:58:18 -0800 (PST)
X-Received: by 2002:a17:90a:c82:: with SMTP id v2mr706241pja.171.1610398698156;
        Mon, 11 Jan 2021 12:58:18 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id y5sm579046pfp.45.2021.01.11.12.58.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 12:58:17 -0800 (PST)
Date: Mon, 11 Jan 2021 12:58:14 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3] x86/entry: emit a symbol for register restoring thunk
Message-ID: <20210111205814.m6bbvekdhqs7pnhr@google.com>
References: <20210106015810.5p6crnh7jqtmjtv4@treble>
 <20210111203807.3547278-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210111203807.3547278-1-ndesaulniers@google.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="ftxFX/RU";       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::630
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


On 2021-01-11, Nick Desaulniers wrote:
>Arnd found a randconfig that produces the warning:
>
>arch/x86/entry/thunk_64.o: warning: objtool: missing symbol for insn at
>offset 0x3e
>
>when building with LLVM_IAS=1 (use Clang's integrated assembler). Josh
>notes:
>
>  With the LLVM assembler stripping the .text section symbol, objtool
>  has no way to reference this code when it generates ORC unwinder
>  entries, because this code is outside of any ELF function.
>
>Fangrui notes that this optimization is helpful for reducing images size
>when compiling with -ffunction-sections and -fdata-sections. I have
>observerd on the order of tens of thousands of symbols for the kernel
>images built with those flags. A patch has been authored against GNU
>binutils to match this behavior, with a new flag
>--generate-unused-section-symbols=[yes|no].

https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;h=d1bcae833b32f1408485ce69f844dcd7ded093a8
has been committed. The patch should be included in binutils 2.37.
The maintainers are welcome to the idea, but fixing all the arch-specific tests is tricky.

H.J. fixed the x86 tests and enabled this for x86. When binutils 2.37
come out, some other architectures may follow as well.

>We can omit the .L prefix on a label to emit an entry into the symbol
>table for the label, with STB_LOCAL binding.  This enables objtool to
>generate proper unwind info here with LLVM_IAS=1.

Josh, I think objtool orc generate needs to synthesize STT_SECTION
symbols even if they do not exist in object files.

rg 'SYM_CODE.*\.L' reveals a few other .S files which may have similar problems.

>Cc: Fangrui Song <maskray@google.com>
>Link: https://github.com/ClangBuiltLinux/linux/issues/1209
>Link: https://reviews.llvm.org/D93783
>Link: https://sourceware.org/binutils/docs/as/Symbol-Names.html
>Link: https://sourceware.org/pipermail/binutils/2020-December/114671.html
>Reported-by: Arnd Bergmann <arnd@arndb.de>
>Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
>Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>---
>Changes v2 -> v3:
>* rework to use STB_LOCAL rather than STB_GLOBAL by dropping .L prefix,
>  as per Josh.
>* rename oneline to drop STB_GLOBAL in commit message.
>* add link to GAS docs on .L prefix.
>* drop Josh's ack since patch changed.
>
>Changes v1 -> v2:
>* Pick up Josh's Ack.
>* Add commit message info about -ffunction-sections/-fdata-sections, and
>  link to binutils patch.
>
>
> arch/x86/entry/thunk_64.S | 8 ++++----
> 1 file changed, 4 insertions(+), 4 deletions(-)
>
>diff --git a/arch/x86/entry/thunk_64.S b/arch/x86/entry/thunk_64.S
>index ccd32877a3c4..c9a9fbf1655f 100644
>--- a/arch/x86/entry/thunk_64.S
>+++ b/arch/x86/entry/thunk_64.S
>@@ -31,7 +31,7 @@ SYM_FUNC_START_NOALIGN(\name)
> 	.endif
>
> 	call \func
>-	jmp  .L_restore
>+	jmp  __thunk_restore
> SYM_FUNC_END(\name)
> 	_ASM_NOKPROBE(\name)
> 	.endm
>@@ -44,7 +44,7 @@ SYM_FUNC_END(\name)
> #endif
>
> #ifdef CONFIG_PREEMPTION
>-SYM_CODE_START_LOCAL_NOALIGN(.L_restore)
>+SYM_CODE_START_LOCAL_NOALIGN(__thunk_restore)
> 	popq %r11
> 	popq %r10
> 	popq %r9
>@@ -56,6 +56,6 @@ SYM_CODE_START_LOCAL_NOALIGN(.L_restore)
> 	popq %rdi
> 	popq %rbp
> 	ret
>-	_ASM_NOKPROBE(.L_restore)
>-SYM_CODE_END(.L_restore)
>+	_ASM_NOKPROBE(__thunk_restore)
>+SYM_CODE_END(__thunk_restore)
> #endif
>-- 
>2.30.0.284.gd98b1dd5eaa7-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210111205814.m6bbvekdhqs7pnhr%40google.com.
