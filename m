Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOM25D3QKGQE3GX3AJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 5266D20CFCD
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 17:48:10 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id l8sf2773711vkm.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:48:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593445689; cv=pass;
        d=google.com; s=arc-20160816;
        b=GPhzVJxX0dME2V+Q6IS9pzpt8I7oo9rDeZl4kaNI1Kg3EhuKlMXy99Y78fspdDHuhA
         CUE/BCjayMFKU6SJY9ymeKn8fl9UaA7kXr4eDM1xFaxUCoKFEHemWMT+MqWdBgpwT12B
         7yp1KR731eiuf3/TkKrN/H0cviC7PJqHWE0/916yR3o3nk6kWYFCCZ0T8jLs/p4HS6FD
         aiqihFPa7Itq8rRu4raKJHaN3VqzQ0gPiwaDDXbiuw6g0M+PTZ22VdUXHhaywBWvZuiF
         +kiGPYh/K0TJsYoMVVf4fxCESkfQAsIEzvwe0D575f2bN/kDVmvI0FXgA/ygtCGMpzaI
         oTjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Y9Z4VyBxQQqo5iKmSpCob+/CIBnheerfu+PtaccTNLQ=;
        b=mOxMIxxIkiQb0ntK+GjOs2v0i1VirOxVe99ihKfMpSl/C+8i59a5bjQc/zcoa2tBfk
         oF41Tci9Jv6CnXCxLdNOBs6uDsZVliN60D3IdMGv4XEF3JQJQs+/IV5kueCRchaGrmCD
         uZe0osPNwC9YOn2CEjMy8GkTcUbN1/MnqOmyMRmzJNg/LUeAzOFpOWTV2rkMyQXYUoZG
         Xb2peBnhc6HyMsrKZ1dNjGn3evsEAxa2UICzdUtDR+j3KwLqD1V7FeBBEHuwEOp7SZ2V
         G2sXlyvDI80WxHjTU/DjdALoqFf7kQIdooXSLQBTjEybHECjPpM+2t6oqyfq9gx2eKXf
         rm0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="lVmQl/9v";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y9Z4VyBxQQqo5iKmSpCob+/CIBnheerfu+PtaccTNLQ=;
        b=Gjizv92c54haT88QWAP1xpfneLH7oB8jxgi5+CPY8kBMZ9zIBKzXnczcV28uharSOY
         b2cFLOVbkk/raax04gFFOqAkh9ahR9ZuU6jY3+4w2K3B7G36eQJLMipci+1A3U0ic8Wl
         lH7/G9VyvTxgtSIFGcM41ZI2SvzX8vIVgiWVxWRk/UirEKUdMZO3l5Cp4U56+od0n41D
         VDXrnZk3IITSLI+GzXbgz9eVWITNcc7oO7zSInuCRhCVlREzDZg8sbCWdX7WnBaAQvMB
         J0OcjpcHPo3fLFX8E/bY3UIz/eRV8K08thpioAqRLy2XnBQXzjgkrOIUugUhf/SgOiJA
         bnDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y9Z4VyBxQQqo5iKmSpCob+/CIBnheerfu+PtaccTNLQ=;
        b=kNW0Kk261PCMMXvspI/lwaJPeY2SZqwAHdcf3hHcXbttXx/BFMOK8bY4DshQdpIE2W
         E6bbEWBtJAN2BGsomBTvgktrBKUf0adDWcLJkJkgmt7/oq+iocYKcbX8+C2/vxyxV35r
         KfU4BYlFRH09vhLnba4HA3NKX/2nQZAoMrTZcfmfySCcyzcEmhL+ClnCfuPqnGKvlOgI
         e9U0ZWkHOf1QzVDLCF7nXnHq/6+xpYrKlNwPKvZ8LIS+op5nzzcm+AKqloG/WFHwaigs
         ZuR5jlAjUSJWk7mKWAmKR5lHil/lxEfuyZ3mHjRpLdAAdtTbi1ukM48Uj2ICm1GD4uW5
         X2zA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531snWFWyxvpA0/hrCNFucaMMCU6RsClRf61YmqoW667hIPBTO3V
	NqoVkQ7A/daIzvXoFY1ZBog=
X-Google-Smtp-Source: ABdhPJz9ITwGmmFxc1ZttpsFJj9gHSPo998j0XzZ6IaU3T+toUEJ8DVQf0TmXkxpvuTcdM0LafmsQw==
X-Received: by 2002:ab0:486d:: with SMTP id c42mr6887075uad.64.1593445689323;
        Mon, 29 Jun 2020 08:48:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:c0b:: with SMTP id a11ls389173uak.6.gmail; Mon, 29 Jun
 2020 08:48:08 -0700 (PDT)
X-Received: by 2002:ab0:45ea:: with SMTP id u97mr10963328uau.54.1593445688885;
        Mon, 29 Jun 2020 08:48:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593445688; cv=none;
        d=google.com; s=arc-20160816;
        b=Fx9VTXzl6evLANNlooM6JxdGYP0Y8NHFr4HUxTEmpqP8S1TMMY3O+mY4Qq35M7zGbb
         wIPPn1c9nAVAK5sM9yJwavAICGl4N+RQyPPDtPw2tUQJpUbssXfXBTotblWaax/TY/jX
         L9fS+V9P0UxDL1QmjtnSjSUcX2rN4RrmCTmkgfUutQzOmnSIpzpLUs/Ee1nC7uikMWfq
         1fsoUmMn0o+BeOgE5lFZ4OpKAvGd4H4vX9XqTOzQinbYSJWBLkECejCtQZC3dFL4hLAn
         TuoZ1DkA/4/wDiESIofmnYAgQWeV8mQ67guAKbxPrfAhdCdc9UcWslwPeYjKuH2LjGJw
         dlpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YbRtal9fK3rQyK3//XqhJ7uvEkqJtbhUntiaS048PqQ=;
        b=Guz+Tequ+8CoVxWj91ztLJFIGlciu7ziIPBUO00Rn9928/PM0Fyh/Po1y9ePNwqqCr
         XLQ+LHO/hz7eepzf7kAhMVZkkcvlLeIYoLiM46N8ESyFOSczwa4T5edps9TrB8CmWgH4
         2sYELPP3uZEvyNSX2D5TOONnCncwRhKsIQyWtYxB0PXioiXkEVbTlweGnJu3I8S273md
         tdyWFUn1TXJU4/WR+wPCnyszKeTx4wByoh6/1Or3px5TBKe0451TpA/idp6nuIpJOZ3R
         Oy/8qIRBrU/r38UZ5jGacHV3YOiVYcViEP5cqmm6/tQwEmc8Bmo2/SsLxzE9gaLmfbho
         g2gQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="lVmQl/9v";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id q20si20864uas.1.2020.06.29.08.48.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 08:48:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id h22so8196667pjf.1
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 08:48:08 -0700 (PDT)
X-Received: by 2002:a17:90a:c003:: with SMTP id p3mr18791317pjt.178.1593445687987;
        Mon, 29 Jun 2020 08:48:07 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x7sm151435pfp.96.2020.06.29.08.48.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 08:48:07 -0700 (PDT)
Date: Mon, 29 Jun 2020 08:48:05 -0700
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
Subject: Re: [PATCH v3 1/7] x86/boot/compressed: Move .got.plt entries out of
 the .got section
Message-ID: <202006290846.5A5C76A4D7@keescook>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-2-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200629140928.858507-2-nivedita@alum.mit.edu>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="lVmQl/9v";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
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

On Mon, Jun 29, 2020 at 10:09:22AM -0400, Arvind Sankar wrote:
> From: Ard Biesheuvel <ardb@kernel.org>
> 
> The .got.plt section contains the part of the GOT which is used by PLT
> entries, and which gets updated lazily by the dynamic loader when
> function calls are dispatched through those PLT entries.
> 
> On fully linked binaries such as the kernel proper or the decompressor,
> this never happens, and so in practice, the .got.plt section consists
> only of the first 3 magic entries that are meant to point at the _DYNAMIC
> section and at the fixup routine in the loader. However, since we don't
> use a dynamic loader, those entries are never populated or used.
> 
> This means that treating those entries like ordinary GOT entries, and
> updating their values based on the actual placement of the executable in
> memory is completely pointless, and we can just ignore the .got.plt
> section entirely, provided that it has no additional entries beyond
> the first 3 ones.
> 
> So add an assertion in the linker script to ensure that this assumption
> holds, and move the contents out of the [_got, _egot) memory range that
> is modified by the GOT fixup routines.
> 
> While at it, drop the KEEP(), since it has no effect on the contents
> of output sections that are created by the linker itself.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> Acked-by: Arvind Sankar <nivedita@alum.mit.edu>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> From: Ard Biesheuvel <ardb@kernel.org>
> Link: https://lore.kernel.org/r/20200523120021.34996-2-ardb@kernel.org
> ---
>  arch/x86/boot/compressed/vmlinux.lds.S | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> index 8f1025d1f681..b17d218ccdf9 100644
> --- a/arch/x86/boot/compressed/vmlinux.lds.S
> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> @@ -44,10 +44,13 @@ SECTIONS
>  	}
>  	.got : {
>  		_got = .;
> -		KEEP(*(.got.plt))
>  		KEEP(*(.got))
>  		_egot = .;
>  	}
> +	.got.plt : {
> +		*(.got.plt)
> +	}

This is also being done on arm64, and the section was specified slightly
differently (with INFO) which maybe should be done here too?

       .got.plt (INFO) : { *(.got.plt) }
       ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, ".got.plt not empty")

Otherwise, yes, looks good.

Reviewed-by: Kees Cook <keescook@chromium.org>

> +
>  	.data :	{
>  		_data = . ;
>  		*(.data)
> @@ -77,3 +80,9 @@ SECTIONS
>  
>  	DISCARDS
>  }
> +
> +#ifdef CONFIG_X86_64
> +ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
> +#else
> +ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
> +#endif
> -- 
> 2.26.2
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006290846.5A5C76A4D7%40keescook.
