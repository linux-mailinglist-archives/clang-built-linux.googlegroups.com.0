Return-Path: <clang-built-linux+bncBCIO53XE7YHBBT4TSP4QKGQEVZ4VOYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 580D0234F51
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 03:48:00 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id a12sf17011330oia.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 18:48:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596246479; cv=pass;
        d=google.com; s=arc-20160816;
        b=q2fTo1aDTcsocyzq7WkRrARpu0fpGFgmFpxnJu/Vxm4W3d0Fvwo0MZMaWcUT1Xc4wP
         RQMH8gSUhazgW1GGCmVjuYk+JB+S9kzlNnDi/hcD8g0S6khr4QKP+y+tn3r4r57W22i+
         b/NUnQo3nowar6TlrqjmuJM+g8nQq3QMSlfY8bLZnGExaKBbyna/0elcF2Qxc6BmrMAe
         857qBBzO3jmtTE0sKRBr/NB68H0l7hoDqjGo1J6U4xSBBJVBVvXIogoI3B2X7tlu7Wk/
         c094noiJD4tXkqaScaJohvB3YotDEzpbM5riutwLNBpEqp99M7YOEhXeedPGR+j3FVVn
         rYbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=cOFgXTP6rgw7prJifVkEjzNguY44uLcZbgud0pzl084=;
        b=jc0FgZ1Hs9SeXr1Adb5egodxHF7l03y97ScEDTHu01wOY4F1y2pX9J4U3Mzdqk1caZ
         sSYnTBf5HAabp8QXlrmBDFcT+YdTyXS4epYeBFt+qBBXP6+xm5MiSH0rffzhdRhbiID0
         0ErJtfC2/DGqCMo98PrseGw9tdM88u5Ih7wE3wh4/kNuujwT6koJ2b2eHLSe3+AObSH0
         FfU6oNvAAWxb7TTzubY+XyTqzCAqv5O+crJu2zDTYMGIdv9g/IEI9DzHOSIlE6LKrj/D
         PGKXizoEPhq9sU9yPxxXqy3ayETeVt8N4W4Aw0nXQt8dbjTQF/+BxGOs+6HLZUh+9h/t
         wauA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rweOnJ01;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cOFgXTP6rgw7prJifVkEjzNguY44uLcZbgud0pzl084=;
        b=H5MLN4OwhFYsO+xl/mgXPTt9N/+GsIXSfw0rmwZxB9FZ9Vl/3Fz5KIRHJSKtoBlnrF
         9tV6d4dzbz0TQsVi4MnL0yF24CKsaapJPfx9olMnGOU6kVS9LlM+LiHb2KUXL30BsxbE
         l8p80feMaojipRx74Ind3xS7VWnG28hPGS7l3X7HfcG07+F/7kC2XlJxHDZZli4OCVw2
         s6rc+yOayMJLrLzIgu8zbMkmCzCrQyUarIfRYIpDqIaPRuEcOBiBhgLd1nDZ3YlV6gcm
         JCdSm7Ou4Rd12Qjj/eKVMkk399WmC11IylKsDTLiaFyv4VneIABHEEUZSmQKcG8LNKlA
         W0kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cOFgXTP6rgw7prJifVkEjzNguY44uLcZbgud0pzl084=;
        b=sdvQAmdw7hWswLhKcWGn3heTMO3L0/JA0rG+P0cYheXLPmi8CcJDhmz5jq6556nA7I
         lE12eFK7MSSICFEKF8xBiX4dSdvanDlABVUMdrPi6gKgl+MeUZM+6I0vBgBj2CTXU7YM
         AZhwWxeXV7FT/x5lK+2BM6pBTJwI0Rn2G063/D1ZgKWRKF53VciQS++Q3MRN7i8k9jft
         GFN5cMc0pBThfAmR/EY0rzRIk6kBdeOp+YTlSbTxH7WPsrYOuFsqEXulpz3fz6eG+OYg
         kl0z/whcrcDHtHUgtmZzscUm2BGxh07ZySvFc2iZOsQnQemqpffwa/Eu4bPdOej3FGil
         aTHA==
X-Gm-Message-State: AOAM531WrM8kU2xbvWMYAv4ch1n3l7r39SxgfgGZazszxXf8AFCzJNyY
	S6gYt8yq7B8y97r0N1XQRyc=
X-Google-Smtp-Source: ABdhPJyBhWdhkRSNC3+6HXnhYNAp1ptLw3tX6oO5o8bXO9MDGX3csPiWhRBs6yC/owkv4fDyTgl99A==
X-Received: by 2002:a9d:7c9a:: with SMTP id q26mr5134302otn.76.1596246479274;
        Fri, 31 Jul 2020 18:47:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7ad9:: with SMTP id m25ls1538830otn.11.gmail; Fri, 31
 Jul 2020 18:47:58 -0700 (PDT)
X-Received: by 2002:a9d:3f66:: with SMTP id m93mr5570439otc.49.1596246478851;
        Fri, 31 Jul 2020 18:47:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596246478; cv=none;
        d=google.com; s=arc-20160816;
        b=fkX2ryi0xBchb4prX2QaGNvQP24kPHwofhxcmhYCxFsbrlu84cZWMw96DYAQgYiU/3
         +LgNc3MFG6XdMik0jpDaLKRdsJkSl8sbhfybxLF7VKjduZRv29pDLIzHS9igTQtGse2Z
         zf6xajJTFFe2T0QUEo5X2g3Mk/Ek5JH7LLA8dspP+dBKeeBJqi/DYx8aFumD6j9fVgVK
         WGa4O7wsMDkECUfHfGXxLXpOHsxrA8Za9/5+0WDODPsfGuw5dl4B6R1yw/h8mZR7z8yo
         tpCqluvxqjpcfHUaI4w0nDhiL7gcAJVVNB0CVb7sf7CS/n1JXH+RQcTpRoRO++Aa7QJ/
         qOtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=DfgKTVMFpic0lvlFw/heJsrWIE3jTqCxvCbC4XpQbAk=;
        b=Y90WuMvTaF40+7DGSK6RHHIPT/L25T7XiYH0ByygjGjqPEHnsabX83MAcPtnPzHAlz
         hmEwdFWETv11xjI5IFpPkUP1ZQVMeKvwYZeF3AscGZrEXP+tO5Q4X0f4z+DmI9vJHvqk
         4rPF7i/gBKkPv8dpEGtVMR1tNcuYY/Hj2cPe4GYubf389d7hvxDD/7JR0NpcV5Z4om0G
         4utI/dOFGJ2oyg6pK+XmWNcJc7haB6FFF7jGW2mXkw8cZTMFZS84pPJkOMXjH6CKBErD
         UsoB0IDii5dvwhTxuxWRk1xFk5E9c6BlfuNme96WGhYV8/C2O14QHgll9qiXUVLE+YOw
         BcDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rweOnJ01;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id x2si369850oto.3.2020.07.31.18.47.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 18:47:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id e13so30612090qkg.5
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 18:47:58 -0700 (PDT)
X-Received: by 2002:a37:62d4:: with SMTP id w203mr6547799qkb.463.1596246478260;
        Fri, 31 Jul 2020 18:47:58 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id o37sm12377089qte.9.2020.07.31.18.47.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 18:47:57 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 31 Jul 2020 21:47:55 -0400
To: Kees Cook <keescook@chromium.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 32/36] x86/boot/compressed: Reorganize zero-size
 section asserts
Message-ID: <20200801014755.GA2700342@rani.riverdale.lan>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-33-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200731230820.1742553-33-keescook@chromium.org>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rweOnJ01;       spf=pass
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

On Fri, Jul 31, 2020 at 04:08:16PM -0700, Kees Cook wrote:
> For readability, move the zero-sized sections to the end after DISCARDS
> and mark them NOLOAD for good measure.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/x86/boot/compressed/vmlinux.lds.S | 42 +++++++++++++++-----------
>  1 file changed, 25 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> index 3c2ee9a5bf43..42dea70a5091 100644
> --- a/arch/x86/boot/compressed/vmlinux.lds.S
> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> @@ -42,18 +42,16 @@ SECTIONS
>  		*(.rodata.*)
>  		_erodata = . ;
>  	}
> -	.rel.dyn : {
> -		*(.rel.*)
> -	}
> -	.rela.dyn : {
> -		*(.rela.*)
> -	}
> -	.got : {
> -		*(.got)
> -	}
>  	.got.plt : {
>  		*(.got.plt)
>  	}
> +	ASSERT(SIZEOF(.got.plt) == 0 ||
> +#ifdef CONFIG_X86_64
> +	       SIZEOF(.got.plt) == 0x18,
> +#else
> +	       SIZEOF(.got.plt) == 0xc,
> +#endif
> +	       "Unexpected GOT/PLT entries detected!")
>  
>  	.data :	{
>  		_data = . ;
> @@ -85,13 +83,23 @@ SECTIONS
>  	ELF_DETAILS
>  
>  	DISCARDS
> -}
>  
> -ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
> -#ifdef CONFIG_X86_64
> -ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
> -#else
> -ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
> -#endif
> +	/*
> +	 * Sections that should stay zero sized, which is safer to
> +	 * explicitly check instead of blindly discarding.
> +	 */
> +	.got (NOLOAD) : {
> +		*(.got)
> +	}
> +	ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
>  
> -ASSERT(SIZEOF(.rel.dyn) == 0 && SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations detected!")
> +	/* ld.lld does not like .rel* sections being made "NOLOAD". */
> +	.rel.dyn : {
> +		*(.rel.*)
> +	}
> +	ASSERT(SIZEOF(.rel.dyn) == 0, "Unexpected run-time relocations (.rel) detected!")
> +	.rela.dyn : {
> +		*(.rela.*)
> +	}
> +	ASSERT(SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations (.rela) detected!")
> +}
> -- 
> 2.25.1
> 

There's no point in marking zero-size sections NOLOAD -- if the ASSERT's
passed, they won't be present in the file at all anyway.

The only section for which there might be a point is .got.plt, which is
non-empty on 32-bit, and only if it is first moved to the end. That
saves a few bytes.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200801014755.GA2700342%40rani.riverdale.lan.
