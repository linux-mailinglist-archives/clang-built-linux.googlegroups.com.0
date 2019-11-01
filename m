Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSO453WQKGQEMB6WGIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id C8629EBCB2
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 05:02:18 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id y25sf6410261ioc.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 21:02:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572580937; cv=pass;
        d=google.com; s=arc-20160816;
        b=qQKRtznJX772h5F6ATDgaTS/6JpeCkKf8Qh5k7tEhP1dfOXmKiLlHJiQdLoH6Mj1cr
         a9OvO+bC+oXTPtETUvihi4gna0l6GnpAHEOR3FUS2GASEIPiYRixQvjvHyrx0hQFKvl8
         Rnlb9O//CUPO6wfm9HHRBIf8a9cRK6zgN6NfJ6z0ojv6b8YlwQTRrEVvNqVOAfaOIEBm
         Y3BW2TAT6HwVEsy7Imgxp/Xfz+Wv2m+vB9j5MKSHlv5adXbBT+UkEHQt9/v2Syd2g9Ey
         CJSvkK0FSC0pwIKQrzEinhlTjEzrHIPXx95bL72lOpLPH8ODsISL62aKsV4bB2oFCSZ5
         Qa0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Jdb1lRDkw6WaIlLeGqX8+67bP6tYAl8Ono6mrX6Ntrg=;
        b=GTpeKDh7VfYqkxrndeA3wsCkLHpLI1Rp80tbN+Wi5ng1YR2c1Z16NZBUo7CIdRPGop
         aMI9OZMb+dGyfGuP8lcSR0TElXOn+rkFTQvyCcJdcdPn23WtRCmQsZCXc48VIozfH2jX
         XgRdtA/EJAkPLtrakEms6Ltnk+igcsoorJx7mAHk55Cg7lQMJn07S/JCZ9WBrKdr9Uv/
         XbMWlvqqs+eO/3EpduhHCYY7UdOrLvh0XAxVJtEztOrnU08YxgvrPAJth2t/p3b8EOEX
         9NU3oLwcBUyH7sGCsnZ2KDkEFF4IZqM38SzAIP6z1DZtLsUB+d83DBTMIyeUGg91EDMS
         e+9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=d20dfeMU;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Jdb1lRDkw6WaIlLeGqX8+67bP6tYAl8Ono6mrX6Ntrg=;
        b=VJXEHqPRgKy2wJYqEzup2EayJTKU5KJEhnOgh8YGDtd6J90I5Xldx1fjJgF6oCwVBr
         xlihX+fHQHqWdiV/CeL7XBhspM9i2suBufYuEsl5mvonb/wsN1QwAsmG3lHpYwcY2RXT
         29A/h0sDBtb1SclgMuG7BphmwEb2jEFe78SUdiRo8dBh5FI3g779J5BdOy+idZKK/2hQ
         0Zl57ILLT4R4KYBIYBilA4V/8jZOHCI9Bgp9IrpVrt9HRpYNvkk5pqeafWyjorhMleOt
         1M3x/ScHUDKJqCll6vbBcgmksoZWR2HU4mdYX4YK4mfI/Daenq8yicvRTybnVi9UXZh5
         2Jqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Jdb1lRDkw6WaIlLeGqX8+67bP6tYAl8Ono6mrX6Ntrg=;
        b=Gm9lVokKp+KMDsgMAGVbUDwthLiBJMaP/SryA0836ieFWzoSI3L1yr7n+/02OhtgbN
         vZYm47ucjTdAfAfz+cUBZmMjWIBxWs4dc9FzU2H+tsCLojYWVbjcdUr5+y0vFBdYJ6bl
         berLq6XDEQ29jUU6cOAO1xwXowtRmBrWPTR9r3yQv1oeJlWGnEo/j9uNTpJQM4XlMISV
         MzNaooUhYKLqrKkakkl7X2hAfhfeoIbRwiY/XWnhAzfq9Kzv9UTBsmCYRlaxaRbSKGHi
         BzyxJ+AyILS/Fu7pfa1E0izzHjktZQtp3htTIR6VQEYrOYEH1wTQPYeie4BJjsRg+JQd
         YBSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWwcVLllPvNVJ0/fg94bneQCvhSK2e3x2a7D9neqXAtPaOGy1g7
	d55JdM70LFDHK6UidPTgLb4=
X-Google-Smtp-Source: APXvYqxvlzmhPpZrm4lQLwagia87KPhuZa3ytet6335QdrcFQAt0Mdbva4v2vFzAS+CjaL/rVcXsdw==
X-Received: by 2002:a92:888d:: with SMTP id m13mr10195535ilh.200.1572580937639;
        Thu, 31 Oct 2019 21:02:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:606b:: with SMTP id d43ls415153jaf.6.gmail; Thu, 31 Oct
 2019 21:02:17 -0700 (PDT)
X-Received: by 2002:a02:19c1:: with SMTP id b184mr944133jab.54.1572580937146;
        Thu, 31 Oct 2019 21:02:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572580937; cv=none;
        d=google.com; s=arc-20160816;
        b=Ls8KFR0ZJ1aIbGIah6vulL/Y/Oes14KljkJjwk2+nbIqZed/PGafMzCzru1n0zgeFe
         FWm0buFXeTlyG8qStpqHU6Q5/1eZoDoSBbGGbk72VZOj8VSjr9gW/aB1Pzca0dB1AUTB
         0bIG3YBWEa7+PI1bZaluV9gnoSyNyRmmshp3oSQ3gtmpbZHC2KYG//uO3yjOLPdksicZ
         Ls6K4FcM3toxqj/IX1FUuTVpR/WzIFUmJ0dMWyV7mTGQCOyFOwQHl8GtjGea5AWVSbki
         5e/bU5baB4VY6VwrCMMqk99XZvbnHR18fPevvjhCOtcwT5VSnTOvmBZHIRTT7/OJ9I2W
         fUqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BAe1ln5Hx2gY8GJiVnbrjacBTRiF8zYUc3i9OMgoBV4=;
        b=inDNGFKkjUxXGdCdM+MWIQZb5yC6eieueerd0q+HALQwqeqRB819MzzTvhghlz4cRN
         AFZzkBHG277lPJ0Plfn/pqNWOjqskaxAHdydDGiLtdDEHx7YDNk/KSssdGQ6UEPzDNEc
         Kydn8ayfPeMQFrWpkFtqoxcNFADf430Xu9MLh10I2qV2Zt+aGo4/1ZfLOg1zG8flaLAa
         mYnGAk35MMpSxKy0I7vNJ6J1PFE5xoPdjS8LQ/7hdwsdihuu3cW/q3AJeC2HC2egjlGi
         C+cpkb4JGDIdh8iH/i46PXm0Wd5xr/BTBcTfiWOJIeQGwjBxORt50VZyzUO5NBMqw3hF
         7BRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=d20dfeMU;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id z78si432239ilj.5.2019.10.31.21.02.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 21:02:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id v19so6103818pfm.3
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 21:02:17 -0700 (PDT)
X-Received: by 2002:a62:b616:: with SMTP id j22mr10383274pff.201.1572580936603;
        Thu, 31 Oct 2019 21:02:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e5sm6101564pfa.110.2019.10.31.21.02.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 21:02:15 -0700 (PDT)
Date: Thu, 31 Oct 2019 21:02:14 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 16/17] arm64: disable SCS for hypervisor code
Message-ID: <201910312101.2A014A8F@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-17-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-17-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=d20dfeMU;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
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

On Thu, Oct 31, 2019 at 09:46:36AM -0700, samitolvanen@google.com wrote:
> Filter out CC_FLAGS_SCS for code that runs at a different exception
> level.
> 
> Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

(Does it make any sense to merge all of these "disable under SCS"
patches? I guess not, since they're each different areas...)

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm64/kvm/hyp/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
> index ea710f674cb6..17ea3da325e9 100644
> --- a/arch/arm64/kvm/hyp/Makefile
> +++ b/arch/arm64/kvm/hyp/Makefile
> @@ -28,3 +28,6 @@ GCOV_PROFILE	:= n
>  KASAN_SANITIZE	:= n
>  UBSAN_SANITIZE	:= n
>  KCOV_INSTRUMENT	:= n
> +
> +# remove the SCS flags from all objects in this directory
> +KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910312101.2A014A8F%40keescook.
