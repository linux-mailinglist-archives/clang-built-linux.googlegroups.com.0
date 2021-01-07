Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFHF3H7QKGQEKG5ASQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3922EC816
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 03:31:49 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id f15sf3482367oig.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 18:31:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609986708; cv=pass;
        d=google.com; s=arc-20160816;
        b=mOPw9dycjHIjJ0VhP+KRJbD7YFYW20N1TotRtcv428jaUkz2sCmV1SASsSy8u/WpkW
         Gy4TGUBpNrPgnDBNZzjYnEOxaCFuUOq4RG9xKO/x1xuB42ku5p1ilFiOBCjY0mqQ+u/c
         E7Gq15KcNnjulHA58KaTElPw7kBTS65JvLt/13XOfzOqv+jROAth1NueJDzPml/n6GEO
         5hrBA9tUJ0laKHqDCAdV0NXhDrROV5qYA5NwJZAy4+PzNvsvDRGFwRNYcYuc7JzkXdCz
         7bRkINZPMSkiZ6SzQyMNREU3zxlJjgdgFzus73ePPwtEnzYBEn/wDyWwX59B9Xj749NA
         vK2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=7WTEaLH09D+cq2N45ye7YgS47F3LUBBxxGyMIKPcExg=;
        b=GirwJujoa9zhiVf/mvx2CcQBcSsydaG17W7LT0qjhwg8+1Ghz4vMMEBioPCCkuCXZe
         k1SevnpZAeUZxIWu8VO+wCOMvM7mWDWej6WvQBusNqZOlN70paSjFeAGhTB5eeF+rT1i
         AT3ZkNLh+eXf8nWeIQbm7b6feCW57C1oZj38Py9TyBPIEPfNwZPU421/NXccPUeASu1k
         WhNXDMmndWCKQYvCXkd7Ci0QYm7enx11jTJ0cGMr/5WBN3mQNf6r2hn31bRNGQGxVCV9
         J+hRGNJmjC2scg9zJVWaZy6GNgFH7IhvnZ8EMi8MMbVu+Mn+B4qSoC0XZoT4McUDbc88
         npOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GN2YYSrG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7WTEaLH09D+cq2N45ye7YgS47F3LUBBxxGyMIKPcExg=;
        b=jPK9fyszQwqGGo0Oo+lOJn1sxMrPIlVSOvyFlOfDhfEpdFFkk6sWSJgjhBf8iSQ6Et
         FNJ0KUKqnqtInrrfKt5EWBFdNpXnkU2QmneWQeGwfu8L+2GHfgiASII1Le5m64jNxDlY
         b2ttXIP2e6o/0aTzm9t5JRMqdSSRp9R3HouSQDmFWo0G/9NUEEBQ3Sk7C5hHp5NryiO1
         RlXnrD8AbwHD5JXc3sJDQ/WFyWiXtl5ScRSHIH5uI7rHo/djKXvAYGFVxWUVsODs2Bn3
         FKQ5MXvvBJwQAfLQJCjjlTmtzWh6kq/eykAHE92VNwzIQqV31RACcSEIyO8puAicZ8/A
         jKxg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7WTEaLH09D+cq2N45ye7YgS47F3LUBBxxGyMIKPcExg=;
        b=FTdjun7osk8hvuCu2jJtovR/nqZ2xBcUe38nFzYREuYj6MsSODspKBkDnnhlHThZRS
         qzEL8h0Gb6A6J0fdSZcV9irwRLS+WgJIspHB3uGFyujK+AUFxAk1fn4+CvusMzcfzz2Z
         6Pfr0vM/qhngpzV0k7Fl8kG1HKqyQzZtl4h1toRPnqGEK1DxYsQ/wOnTmVzufc8Jg3Li
         glem7RW37nYToHH125WEQsRkF3UPfvmFxgkOzrfFqMPl4oZKUDMC0G3HXDuB4kQSzGdK
         +OX+Ba8EJTf2g4fXdTaj4R7vgok3jDFhfP9aqFA11SDVdKyETxQu2i+TGHJWchVpo0z1
         +H+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7WTEaLH09D+cq2N45ye7YgS47F3LUBBxxGyMIKPcExg=;
        b=muXcQthtPhaTSPGAtUaP83Rhtp/gr25JSyRxMQ63s3pscT/Pb8iyyemiB17RYrpy7X
         kAFMaozauG+QIbUcoFFcI+rm+irFH+nMLe7gcSmK2NCbMz4b7/sOp17jecKUOJLOH5SP
         iVNElX2+QHcGn3TSXTlHGT5i4CSOY6kIh4HeMjjXmnrdwJf1pXLcIHllO3k0wX+soi9D
         k+Er8ZLKD2hHEa1mXl0ZEiJPrKIzSUzOPw6haIswAyG/s1/ZaJZ3pVkqQgvLsJLW/w3y
         wYGF+pe8bq0cMlJkAETz7CGnnfHfquxHjoAr6lPvc4ddGAk1yYSy5tqlAipbWRHYPbMa
         NHqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TRDbtUbu4gdsEHyBasXC+9nMfqMDu+7AzFpDgqehbwFHoMqHA
	s3CKYPmcvVKHLMznLKDybMA=
X-Google-Smtp-Source: ABdhPJy/Q5ed6UnyLiExNQE6lamvm3gNBMFM23joS5hu50TLRCkacl/2VfPdDO4t0E7/lHh7LIq0dg==
X-Received: by 2002:aca:ac4f:: with SMTP id v76mr5110384oie.95.1609986708560;
        Wed, 06 Jan 2021 18:31:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:a843:: with SMTP id r64ls1366369oie.2.gmail; Wed, 06 Jan
 2021 18:31:48 -0800 (PST)
X-Received: by 2002:aca:58d6:: with SMTP id m205mr31802oib.121.1609986708157;
        Wed, 06 Jan 2021 18:31:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609986708; cv=none;
        d=google.com; s=arc-20160816;
        b=KkyDDhK0tUcP5YeDd7JLlzdnsqDtjLTRWxR91/uvjZ74L5R5tMMlLl9MkbcMIuRU+d
         oOkPTdIN8LzHCV0uKLOYLH7qoE0IV4T9luz19vF8xlz206Oe+8EtB72qY0FA/+0d1j2n
         xfvW56v6bHx90yERE4qFrkY12vt2a3S+D1Tcm11zhjRAgMaYZ6uUkTabz4pCypogHhSd
         iTFGwEd15CPiZZG6CwsQa4QX5b7e7pzIxlul3WifknBul8nFJgoZzUqhBSOw5WEJhd+k
         nI6EuB9O6I6jSjhC8Wpi8IM8eJTggV86oBrhrgvdggJUE4ADC5D3o3MzPy93eZyysKw4
         7AVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ocfz6BYodnE1ca0pECVz4l5nljcLR4HxYXqfYA1DSZo=;
        b=W4YKxOF03HB8O2v19og708veV4cuxAgcxU7eVXwQsDaB0BQFzY96N7Wqrvo+E9wSeQ
         OBh9PUkqUETkug/EOt/k1+nGw/eTGHTX7adxmYnIbUA0brCVkdtB9f7Fa86s8OODyrPB
         sNPOqMfEcxlaj0UkMNFpBp7OphOznnKn24EkTyeReQTkYsH2DuH59TA4R8QjpbHJ7jZC
         6K0e32h28DQ2rHULfAFWrnc2u3U+Ne7HlgWCpMtDEQPVAO96WbQLPYMl2ACk7K45n1CR
         0jmLjEWBCULtZl0ubF/wM8rNfR3Vfyaf5SFYJBz7v8M+wmhi9GCeTfQzNfgyKJS2tUcI
         AD2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GN2YYSrG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com. [2607:f8b0:4864:20::d2d])
        by gmr-mx.google.com with ESMTPS id f20si415635oig.2.2021.01.06.18.31.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 18:31:48 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) client-ip=2607:f8b0:4864:20::d2d;
Received: by mail-io1-xd2d.google.com with SMTP id z5so4739367iob.11
        for <clang-built-linux@googlegroups.com>; Wed, 06 Jan 2021 18:31:48 -0800 (PST)
X-Received: by 2002:a02:1007:: with SMTP id 7mr6199161jay.73.1609986707707;
        Wed, 06 Jan 2021 18:31:47 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id h18sm2421732ioh.30.2021.01.06.18.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jan 2021 18:31:46 -0800 (PST)
Date: Wed, 6 Jan 2021 19:31:45 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Fangrui Song <maskray@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, x86@kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] x86: Treat R_386_PLT32 as R_386_PC32
Message-ID: <20210107023145.GA3778412@ubuntu-m3-large-x86>
References: <20210107001739.1321725-1-maskray@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210107001739.1321725-1-maskray@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GN2YYSrG;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jan 06, 2021 at 04:17:39PM -0800, Fangrui Song wrote:
> This is similar to commit b21ebf2fb4cde1618915a97cc773e287ff49173e "x86:
> Treat R_X86_64_PLT32 as R_X86_64_PC32", but for i386.  As far as Linux
> kernel is concerned, R_386_PLT32 can be treated the same as R_386_PC32.
> 
> R_386_PC32/R_X86_64_PC32 are PC-relative relocation types with the
> requirement that the symbol address is significant.
> R_386_PLT32/R_X86_64_PLT32 are PC-relative relocation types without the
> address significance requirement.
> 
> On x86-64, there is no PIC vs non-PIC PLT distinction and an
> R_X86_64_PLT32 relocation is produced for both `call/jmp foo` and
> `call/jmp foo@PLT` with newer (2018) GNU as/LLVM integrated assembler.
> 
> On i386, there are 2 types of PLTs, PIC and non-PIC. Currently the
> convention is to use R_386_PC32 for non-PIC PLT and R_386_PLT32 for PIC
> PLT, but R_386_PLT32 is arguably preferable for -fno-pic code as well:
> this can avoid a "canonical PLT entry" (st_shndx=0, st_value!=0) if the
> symbol turns out to be defined externally. Latest Clang (since
> 961f31d8ad14c66829991522d73e14b5a96ff6d4) can use R_386_PLT32 for
> compiler produced symbols (if we drop -ffreestanding for CONFIG_X86_32,
> library call optimization can produce newer declarations) and future GCC
> may use R_386_PLT32 as well if the maintainers agree to adopt an option
> like -fdirect-access-external-data to avoid "canonical PLT entry"/copy
> relocations https://gcc.gnu.org/bugzilla/show_bug.cgi?id=98112
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1210
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Fangrui Song <maskray@google.com>

I agree with Nick's comments about the commit message. With those
addressed:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/x86/kernel/module.c | 1 +
>  arch/x86/tools/relocs.c  | 2 ++
>  2 files changed, 3 insertions(+)
> 
> diff --git a/arch/x86/kernel/module.c b/arch/x86/kernel/module.c
> index 34b153cbd4ac..5e9a34b5bd74 100644
> --- a/arch/x86/kernel/module.c
> +++ b/arch/x86/kernel/module.c
> @@ -114,6 +114,7 @@ int apply_relocate(Elf32_Shdr *sechdrs,
>  			*location += sym->st_value;
>  			break;
>  		case R_386_PC32:
> +		case R_386_PLT32:
>  			/* Add the value, subtract its position */
>  			*location += sym->st_value - (uint32_t)location;
>  			break;
> diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
> index ce7188cbdae5..717e48ca28b6 100644
> --- a/arch/x86/tools/relocs.c
> +++ b/arch/x86/tools/relocs.c
> @@ -867,6 +867,7 @@ static int do_reloc32(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
>  	case R_386_PC32:
>  	case R_386_PC16:
>  	case R_386_PC8:
> +	case R_386_PLT32:
>  		/*
>  		 * NONE can be ignored and PC relative relocations don't
>  		 * need to be adjusted.
> @@ -910,6 +911,7 @@ static int do_reloc_real(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
>  	case R_386_PC32:
>  	case R_386_PC16:
>  	case R_386_PC8:
> +	case R_386_PLT32:
>  		/*
>  		 * NONE can be ignored and PC relative relocations don't
>  		 * need to be adjusted.
> -- 
> 2.29.2.729.g45daf8777d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107023145.GA3778412%40ubuntu-m3-large-x86.
