Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB6FB5D3QKGQEYPNEEWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3867520CFF5
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 18:04:09 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id u186sf12588670qka.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 09:04:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593446648; cv=pass;
        d=google.com; s=arc-20160816;
        b=XuSIxRfErWvkt/uCdzfp0hYObU9kV0q5YnnsR1dx95cR+G8ZuB7jYaYgrSrjHrsuNY
         +7VOKNw9PdsdbTQEpB/2s02Eai9KJ6k8troZaycCxgcMSb7wN0zn39QdDeUUv/RER8ln
         4FKkDJJ5ZHerD3ZIgbBdU7R1MPGFqpVSH8urRFm6gb9wt03crQKxRaaUS7ll4ig94Lx/
         Qd+59DCT0xNCnpTpopi8WBoZjIv4OmkhRmAaBThW0PrIdbwMXo9LqZWCaN80+crmwbRW
         EDOrZdkywNZbHlEYSWJrpBzWiOAn8MkryxYY/3585kL1DwLlPk72Wb6i9+iCdtnlKykH
         CZ0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hj1qhO92jevlAfj3AadnDVUbtn/aUGuxTodHHvYOT5w=;
        b=yrsNvURWovgo66dvedcAwVUUef5oqiOupmjPniLFHEzkDZwTOOWTLupmJytq1/qtB4
         yNAsSvr/9oBf8Wwd+Zroyn5yXFL044LPArdI+FIWI+DrEOEvlGcRWmQz1R6C5M6FN72/
         f9l+aLly6eBxykHv0Q+PnXy53/TtMdBZrkkMrwj8gK7TlaChfIhMpZSGWhc2LvYExyxT
         XIds66pIfAl8lO6Fch0lI0/KFQYssXfVV14EEf3pLBsGMIvt41CIGqJARjP/qCCgwD7N
         u9o0uFYEwqjqUZwGtOBOO07Xz7cyWhbXOgGGKB9EKMjeLpQ+w2iQixRUFP1YLcRhH9Sn
         vYuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YYrun5Zs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hj1qhO92jevlAfj3AadnDVUbtn/aUGuxTodHHvYOT5w=;
        b=VxK1s7FFPlXiGTZmn/fyflrGUcBWGw9gPMochVJs44wDzFRQDDXKkZrEykiIsN0DDX
         cS5vyF0c+Wu6O+SnTBZ1m828k9lZ4rjuJkh1w8BwOzVRR0rp+2xBccXLw1anP6RTJnbJ
         MHRINudP6GPuywWxNW50g4ceP4st2hltchY5yo8RXGbK+JSCDdl8MMrgeBG/ajTNTyaO
         fRq4dKiBVfcUna/+yMoR5GXUsyECoslHWgaRogONWp6uFW07UWovlAiXQUN+CRcqbFuQ
         Ztw1tg5Pi9GrVC+MKwRqAgojcJM3rDGYc/nrmKeJpZgzD3uQZsYZ9ejF3XAQQ9WqJMry
         EVEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hj1qhO92jevlAfj3AadnDVUbtn/aUGuxTodHHvYOT5w=;
        b=UYk3IPKfCxr+QCbs13Jrk70T+4ntdXeThSSOcBD98CPF9vJonv46fSaBNM13zXQdDK
         1aWvRdadtQL1w3+/FR8FLEi4RS4V5x94rYtbPHEoP847c/MvrwrSLTOxQl7dnyTpAOPm
         BeEJH66ZPqJhX7Ka2e/djh8Tv++mI0+YPdkSmNDPj9AyFRfFn0X9Ul3QL3n+RCw0ty3z
         Q49r8ER9H/RGNiKNZWU+Q0SUicvWH5WQj9H3nYHTOfp/f83Z3GlZgD3WOS1VlyQti4OL
         8+KHnt55WeubofjsrGwNeGBDhv44JDQ7Ng4TwZNBHRoeSGXfnMslroHJN7asCOU26vVt
         JQ9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530roIEdwty5PaTuTF4TfKYAjY2jmd80vau/NGecC9KZBt9WaU34
	00iiFw8q26Xdhnt/OeZT81w=
X-Google-Smtp-Source: ABdhPJwyXHGj6jWlOOuYMpvLzljbrr71+5pNKWDCifmHzsPWwTi+6blXnU9j3xDCGvvl+uh13u64YA==
X-Received: by 2002:a05:620a:1587:: with SMTP id d7mr6639138qkk.228.1593446648212;
        Mon, 29 Jun 2020 09:04:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e415:: with SMTP id q21ls4675088qkc.9.gmail; Mon, 29 Jun
 2020 09:04:07 -0700 (PDT)
X-Received: by 2002:a37:a20d:: with SMTP id l13mr16290171qke.296.1593446647708;
        Mon, 29 Jun 2020 09:04:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593446647; cv=none;
        d=google.com; s=arc-20160816;
        b=Ty7Kq33N/i1pzXQ+wZ7p0fqb8Q4Tg7Oc3l6hzoAONHHMd1OG10BFHgCXBF8m2PCNV0
         S9eKOvwUep/N6qcnbG90IKI4sLxOBRDApKL4+OHZYlSGfADSxwXWatDR76yt5JH57bUf
         lLEA5bPlOJVnOiwTUFrTZ59QuaabiqO8E1ZEgNaRjp9QtMcd9iwRXEMyVF/dNQ3yTJY7
         ubsW7BjP5jCY4rcLMjrdld9aw9M0675KEfbKRUnKHOME0jCNNJu83cH2J+st0VJLWol5
         Ol2b+CQoBZWX5rvQbenfYg+JBvM4s3Y673cYIC2VQd5ioBQDuEQgC9XibmuXy297S/9z
         Cttw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bCcUKUF5r6yaBuJR+zxqwfyemuV81g4EzykEAUFhIxY=;
        b=dUQLpTIOpwzJvf6RrYrKvBIO8ShuPbPWSU3nw/upB7UoQRziV7muV8heki8Kei1rFh
         1BbY9L4lfxY2tJ5cn6eylshtc/wou3gncwJsIzim1aY4OTfbIfuUVeqBCf3CCO7uHSoa
         B6bG/UKSFXSkhKe/yY+y25Q4kUvZ4R37d9KUL2OC09MEEtC7DRnnbICH8Rw+xERQHRNx
         gHcDRRQRJ+rZFmC0FwQnyiAY/9eWtJUz/5C6jYvnWFEWJ8yNm9q+3EVGCUJWGB+WX3/Z
         vhqPSpYr2sGuLZJrklE3ehiPIleJioFzxo3wAMKYDGfTVWG+YvjaF8Wspk5S6vbZW2in
         gNmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YYrun5Zs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id y21si7728qka.2.2020.06.29.09.04.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 09:04:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id e9so8489447pgo.9
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 09:04:07 -0700 (PDT)
X-Received: by 2002:a63:3005:: with SMTP id w5mr10723200pgw.441.1593446646832;
        Mon, 29 Jun 2020 09:04:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m7sm220299pgg.69.2020.06.29.09.04.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 09:04:05 -0700 (PDT)
Date: Mon, 29 Jun 2020 09:04:04 -0700
From: Kees Cook <keescook@chromium.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 5/7] x86/boot: Remove run-time relocations from
 .head.text code
Message-ID: <202006290859.14DD408A29@keescook>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-6-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200629140928.858507-6-nivedita@alum.mit.edu>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=YYrun5Zs;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Jun 29, 2020 at 10:09:26AM -0400, Arvind Sankar wrote:
> The assembly code in head_{32,64}.S, while meant to be
> position-independent, generates run-time relocations because it uses
> instructions such as
> 	leal	gdt(%edx), %eax
> which make the assembler and linker think that the code is using %edx as
> an index into gdt, and hence gdt needs to be relocated to its run-time
> address.
> 
> On 32-bit, with lld Dmitry Golovin reports that this results in a
> link-time error with default options (i.e. unless -z notext is
> explicitly passed):
>   LD      arch/x86/boot/compressed/vmlinux
> ld.lld: error: can't create dynamic relocation R_386_32 against local
> symbol in readonly segment; recompile object files with -fPIC or pass
> '-Wl,-z,notext' to allow text relocations in the output
> 
> With the BFD linker, this generates a warning during the build, if
> --warn-shared-textrel is enabled, which at least Gentoo enables by
> default:
>   LD      arch/x86/boot/compressed/vmlinux
> ld: arch/x86/boot/compressed/head_32.o: warning: relocation in read-only section `.head.text'
> ld: warning: creating a DT_TEXTREL in object
> 
> On 64-bit, it is not possible to link the kernel as -pie with lld, and
> it is only possible with a BFD linker that supports -z noreloc-overflow,
> i.e. versions >2.26. This is because these instructions cannot really be
> relocated: the displacement field is only 32-bits wide, and thus cannot
> be relocated for a 64-bit load address. The -z noreloc-overflow option
> simply overrides the linker error, and results in R_X86_64_RELATIVE
> relocations that apply a 64-bit relocation to a 32-bit field anyway.
> This happens to work because nothing will process these run-time
> relocations.

Are any of Thomas Garnier's PIE fixes useful here too? He had a lot of
fixes to make changes for PC-relative addressing in the various
assembly bits:
https://lore.kernel.org/lkml/20200228000105.165012-9-thgarnie@chromium.org/

> 
> Start fixing this by removing relocations from .head.text:
> - On 32-bit, use a base register that holds the address of the GOT and
>   reference symbol addresses using @GOTOFF, i.e.
> 	leal	gdt@GOTOFF(%edx), %eax
> - On 64-bit, most of the code can (and already does) use %rip-relative
>   addressing, however the .code32 bits can't, and the 64-bit code also
>   needs to reference symbol addresses as they will be after moving the
>   compressed kernel to the end of the decompression buffer.
>   For these cases, reference the symbols as an offset to startup_32 to
>   avoid creating relocations, i.e.
>   	leal	(gdt-startup_32)(%bp), %eax
>   This only works in .head.text as the subtraction cannot be represented
>   as a PC-relative relocation unless startup_32 is in the same section
>   as the code. Move efi32_pe_entry into .head.text so that it can use
>   the same method to avoid relocations.
> 
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> Reviewed-by: Fangrui Song <maskray@google.com>

Nice.

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006290859.14DD408A29%40keescook.
