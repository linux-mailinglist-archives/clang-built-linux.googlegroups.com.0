Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNPGQ6AAMGQEN27I4MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9432F85CB
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 20:55:34 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id r23sf1086920oth.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 11:55:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610740533; cv=pass;
        d=google.com; s=arc-20160816;
        b=uu56WWB+wybotcnSiQSfyVg8aYZl4OR/l41m7l3B+tIMpbSad0/o7nVy9OE+YaK6Tu
         RDhZxPiHPKZZlGvXnyjTahx1mcntuVE7DSV1FbdJPcwmWD90SwN6wAyWX70NIOpwr3uY
         CnwMAblcX4ExkcQgjkQ90tCTjj016DJ5ILulkAS/EhhPmts9pBjkwegvUPsPyz3eH9D0
         VoVWQcJNgk10TAv7AeSdnPhYymuq0kmRL8Q+8lyr43jGpC3LMHDZ1707WFsy2kc35g7K
         KlA7y55HQhEhftNMAikVZuqcxzMC6igvEYFniNXvSHf0OVxsr7Us3eB9ozCtPsbLnjmn
         vNCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=/phKvNkFOnlcTYtZb0/4LfdaTn0FZT9C/qHMLBcxpm8=;
        b=TBfoMckYgaHkQIUZEPr7vQ1a9FzD46PbQ5u+23bQlMNctghtsuaABYe+FyEjylXRi+
         WoWlVgBVAxiuigxNnoKvLCDMPBy96FffJLCEs9cqWC9ogwZaTlyMrOMyjyBwGCXpYWqk
         Ba+t3/E7h6Z6YQVy7cAOzS3HiqiWrTVqk5JOdffcV8pz1n7sagOUbCgOSJrATbWbjRQM
         iLkpHE3C7Hf31itmlw+MZalaBuMOPka+knRdS6wbmIj4l8Dm33oEdIaxdUJxhKAoj7FU
         dYFu0/G4fiE7ZtRB+NFir07SmZbmQHWejpd5leTU0fSdu68H2XixtqFnKkNPE0QFW+QV
         YQAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NVa21p5g;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/phKvNkFOnlcTYtZb0/4LfdaTn0FZT9C/qHMLBcxpm8=;
        b=YIA4sqcVBbM3321laeU9q6xfcraniOg72SQdReCeNWlTKm+ayW98AdZA5RczQrxFLh
         56+GQki9RxhM37M3G5Kfnd3/keLgq/u/Q+9sbpWLucDtbRc9F6uKr9cGfl2ybimM/ERv
         7wjORqWFNnu4lHdtH+9HJgYiydJ1+CwQx4P6qc764GaIQOht2Ut4TA4mEKP/UtCRhRfU
         C4UFkWMN4lP2zm4SMjT3kFs/l3iavm3LgrHlQG+qgE9r8y6CGBK4su9zJPNVnEEY75Pr
         N0VPeyp0iRz8h2LixfiSJPoX8mq7LdX+AmaNU4c2GoCQXBvAvFKb+KUQ7rYzFHSPu34Y
         CRQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/phKvNkFOnlcTYtZb0/4LfdaTn0FZT9C/qHMLBcxpm8=;
        b=RlL4NCccCO8msVsF/d/5fbgYAMXc5BQRnTmPY3B2rTtfA8WPg+sXsTZ/2U+NrvUJJl
         Q4h+VewfqBmzWUuxTRlBZWbwiAoLdtuw0SpRqt7VMcPxhvWGUBnKRr2Lps+p6STErPvT
         EWWUz9ysx3qzqha8OZNHzqgSjz1JkXNXLOD/CkP6YMzXGBI8dCqqbDju15UbBjd9oh22
         m4MCa/yHQJSlEQoKI/djoj0ok0v1G54aSbJRZmFU0UUagLDPaQ+XrYMvEEiaDXyCPf/U
         g4GdYAtAmz38QU7aCftH/i5X2US78Wnu7GQf/sMR3iiJ9O9j9aEno1+Jzshhm6qzQEuc
         vqoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/phKvNkFOnlcTYtZb0/4LfdaTn0FZT9C/qHMLBcxpm8=;
        b=t+LSXKd6imML5Q5y/Q/MlDmH5VHpqlhCYlcJhHBlAXcfL4L23exlX6jFayECXW+LWO
         dmXSECOx+1k8/LquMHt/tnZFfiDvaScTMgSyZhoJi0yDevlLJNmBAzc1+I2DMPYsVtDi
         ATz2KuPI4Dvkk0uMX0LDLzzEZTkRGgVzldgc5TFRaowG+kQY/HTkxME4GP/mZoQz9CFU
         /8XdXdy6Sx95Na0zuMXRMtfMwFrRWBI/85JC9PYCuEqad8aAM4uwJ4i2bbPAFJu6Xqap
         YPz5gcRUU6kcfXgz5YoIJT1AoKZY0WYUw6dYONYiTjJ6zba7zrvx0dz0yde2jQEuFGHc
         xtsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/SHo6oqP2WU1a21kYoeYSuU+HW2e3BXNL824TG8hzxQurRbCa
	Kmw8ASFJL2Kf4y6cw0JfJnU=
X-Google-Smtp-Source: ABdhPJwVjGmOY3eEb0BzZM1QKec4ZVjs5FOkfdn11BzDA03Jo3cvWfcZpRZVPp4sUwk0U4myKMPoTQ==
X-Received: by 2002:a9d:2046:: with SMTP id n64mr3989632ota.38.1610740533682;
        Fri, 15 Jan 2021 11:55:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3d36:: with SMTP id a51ls2573110otc.3.gmail; Fri, 15 Jan
 2021 11:55:33 -0800 (PST)
X-Received: by 2002:a9d:6255:: with SMTP id i21mr9647490otk.346.1610740533314;
        Fri, 15 Jan 2021 11:55:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610740533; cv=none;
        d=google.com; s=arc-20160816;
        b=UPI9V+Q+ju48tj+fgU3elel1sVHytGFDi2cqK9ppJqCW5m7IEkcR97Wy8KA8BgJrMo
         /2xHH+UtNP/wfGGPMWNDK7wkqutBJjQya10xZ7969RA/J+z/WElmOrf1XrHW2uvbixao
         CtlmDpvIucoj/tOT8+Rjztzc20RRBziIaD20c1n5cztCtJlua2SONHVQQANjPmmrwqzZ
         snwQjMy8Rh3FBNJYKyccU10IGynwJT1Hny9YbNJmHyzYw5lEILEn48uNb99ejPDTLUt6
         IB5QwQMdAvowC+bJumdexOhSZPv3iLsqu10DM+0vuawqM3nZlnztJD1yIHXR5C1dBvB5
         9LdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IGs2HkGiaxO0w74PW3RRJejo5AsHL0mLZAB29K0969g=;
        b=NDtgDIeApEYJak7UbWcjviBMvYgKLjU3qTXPPSNUIIuGZ81ANkvuzb+uO4QVvP212Q
         YiG1VFW5yv7v/CyT13edhm8q5irbQJtvOebe6J4maZFzXR6xmFDz9Y4CglwFUsXqfswk
         /nVusb0OIFmNzLNPK+N0Kf9+4or0/7jTDSUiedB8KyL2DIvsKllqMx841+t3uDSw22gb
         4auN1jgpYUYq9APn3GQDHGh5t3SrAezgkyXIJpvYvKCe5D19QzJtSb883NIKY1+gIuhe
         9TCDVQu5yea+vnjunO7Tsb/TS8nGvSqOodfiQrwrG/XBnyjdVhKCM6MltTOMB2l26ijs
         rXUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NVa21p5g;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com. [2607:f8b0:4864:20::82c])
        by gmr-mx.google.com with ESMTPS id r8si881369otp.4.2021.01.15.11.55.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 11:55:33 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) client-ip=2607:f8b0:4864:20::82c;
Received: by mail-qt1-x82c.google.com with SMTP id v3so4627555qtw.4
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 11:55:33 -0800 (PST)
X-Received: by 2002:ac8:c2:: with SMTP id d2mr13697639qtg.207.1610740532868;
        Fri, 15 Jan 2021 11:55:32 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id q6sm5673360qkd.41.2021.01.15.11.55.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 11:55:32 -0800 (PST)
Date: Fri, 15 Jan 2021 12:55:30 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Fangrui Song <maskray@google.com>
Cc: linux-kernel@vger.kernel.org, Jessica Yu <jeyu@kernel.org>,
	clang-built-linux@googlegroups.com, Sam Ravnborg <sam@ravnborg.org>,
	Marco Elver <elver@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org
Subject: Re: [PATCH v3] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
 undefined symbols
Message-ID: <20210115195530.GA3843886@ubuntu-m3-large-x86>
References: <20210114211840.GA5617@linux-8ccs>
 <20210115195222.3453262-1-maskray@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210115195222.3453262-1-maskray@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NVa21p5g;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Jan 15, 2021 at 11:52:22AM -0800, 'Fangrui Song' via Clang Built Linux wrote:
> clang-12 -fno-pic (since
> https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6)
> can emit `call __stack_chk_fail@PLT` instead of `call __stack_chk_fail`
> on x86.  The two forms should have identical behaviors on x86-64 but the
> former causes GNU as<2.37 to produce an unreferenced undefined symbol
> _GLOBAL_OFFSET_TABLE_.
> 
> (On x86-32, there is an R_386_PC32 vs R_386_PLT32 difference but the
> linker behavior is identical as far as Linux kernel is concerned.)
> 
> Simply ignore _GLOBAL_OFFSET_TABLE_ for now, like what
> scripts/mod/modpost.c:ignore_undef_symbol does. This also fixes the
> problem for gcc/clang -fpie and -fpic, which may emit `call foo@PLT` for
> external function calls on x86.
> 
> Note: ld -z defs and dynamic loaders do not error for unreferenced
> undefined symbols so the module loader is reading too much.  If we ever
> need to ignore more symbols, the code should be refactored to ignore
> unreferenced symbols.
> 
> Reported-by: Marco Elver <elver@google.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1250
> Signed-off-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Marco Elver <elver@google.com>
> Cc: <stable@vger.kernel.org>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> 
> ---
> Changes in v2:
> * Fix Marco's email address
> * Add a function ignore_undef_symbol similar to scripts/mod/modpost.c:ignore_undef_symbol
> ---
> Changes in v3:
> * Fix the style of a multi-line comment.
> * Use static bool ignore_undef_symbol.
> ---
>  kernel/module.c | 21 +++++++++++++++++++--
>  1 file changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/kernel/module.c b/kernel/module.c
> index 4bf30e4b3eaa..805c49d1b86d 100644
> --- a/kernel/module.c
> +++ b/kernel/module.c
> @@ -2348,6 +2348,21 @@ static int verify_exported_symbols(struct module *mod)
>  	return 0;
>  }
>  
> +static bool ignore_undef_symbol(Elf_Half emachine, const char *name)
> +{
> +	/*
> +	 * On x86, PIC code and Clang non-PIC code may have call foo@PLT. GNU as
> +	 * before 2.37 produces an unreferenced _GLOBAL_OFFSET_TABLE_ on x86-64.
> +	 * i386 has a similar problem but may not deserve a fix.
> +	 *
> +	 * If we ever have to ignore many symbols, consider refactoring the code to
> +	 * only warn if referenced by a relocation.
> +	 */
> +	if (emachine == EM_386 || emachine == EM_X86_64)
> +		return !strcmp(name, "_GLOBAL_OFFSET_TABLE_");
> +	return false;
> +}
> +
>  /* Change all symbols so that st_value encodes the pointer directly. */
>  static int simplify_symbols(struct module *mod, const struct load_info *info)
>  {
> @@ -2395,8 +2410,10 @@ static int simplify_symbols(struct module *mod, const struct load_info *info)
>  				break;
>  			}
>  
> -			/* Ok if weak.  */
> -			if (!ksym && ELF_ST_BIND(sym[i].st_info) == STB_WEAK)
> +			/* Ok if weak or ignored.  */
> +			if (!ksym &&
> +			    (ELF_ST_BIND(sym[i].st_info) == STB_WEAK ||
> +			     ignore_undef_symbol(info->hdr->e_machine, name)))
>  				break;
>  
>  			ret = PTR_ERR(ksym) ?: -ENOENT;
> -- 
> 2.30.0.296.g2bfb1c46d8-goog
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115195222.3453262-1-maskray%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115195530.GA3843886%40ubuntu-m3-large-x86.
