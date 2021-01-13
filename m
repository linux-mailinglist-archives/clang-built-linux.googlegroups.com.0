Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBH7G7T7QKGQEUDLLESY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2D22F516B
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 18:51:29 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id v26sf1738617pff.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 09:51:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610560287; cv=pass;
        d=google.com; s=arc-20160816;
        b=BLdqTgjQ96aqDvYr5X4Fl8QrJfxbg34S+O/jPcfnYK5/YRoK/Nx1OpeczO6wC7BIZL
         SNASZ3CAYVhLMYtHm+bqFho6DFTSMhhoPR8BHq+WqcOWHSlEO4O8VOXnvkX6Ce3eVExr
         SARFFOQnx5CzYvehneeJI7Yn8F/y0tD9Yf7HiV6CDVcnbscLm3pBfXMnq/EEjvRqFvXY
         JB/zNq8tfQLS00T4Cyc4TmSMNyCmG/m56PSgVibxzgquRLTgoPBX4qTKp+A9OkK5SuIJ
         uIgT7+dI/GteSTrcCJ1XvwLlDkdRqRZO0X7woV6JSc8ccELwc4ZSMpvln5bleCNeKtWs
         twvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=I4WwE7t2n3rwbKe6QswHF5USnpabw1Y5uwlF2Mj5QEA=;
        b=kxHqWm3FqGrOCBoC5ViMNoR0q0P165/D3hZNy9Ta+6Fxis4Ah60oO9kX4V9fwZZvWt
         AEJhBdHQqah2hKTnegAASU+Xb8w/lud82E49SvwkfNU4GxFs2I+Q7bay1fW7jv860ctl
         8qbi61ljaRDls4GnMEAIcNG0hKU1pQt7c8wQ17D0QJQRZ6YNLW9E4lU5K6AlBoWL0nEk
         L84WVwd9A+BPac6k5342QmW2LJjZne+SDwQ19Be/76m9rk9g60YmaMDsl30DugB6rcuP
         3cniNjFsPCdGPKH8OfjTiXjdHrp/ePE1IIwiujpjroAgE2uUiv9TrbSIwiPwPHw6rb7u
         ZdNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kT4D5XuL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I4WwE7t2n3rwbKe6QswHF5USnpabw1Y5uwlF2Mj5QEA=;
        b=oEgWJmp+E+sd/oEoguCAS8CHaPrY6k2wIIjPbe9b3GIy6JDr0jIEUMIV5uMgbFuzrD
         9mf/fvUavrWvbI7VbG3MuXM4VFt8VlubYhwnJB2tVjVUCmLRYwq7GcZCWev0533W9KsR
         irNhfs1DS3CcphuobIDPVZ5sEr7U3J5yRMUk0aUiH3TxabuedAgb0tNC4piPSGYYD7Vj
         Mfv0mcAJFvuCdOxFW1saWn5PWv+4bmJbIiU7b920dXhKKwiznUEZnAVYhY0RHEIaHOe3
         1VjBoBJ0/wv0zy7h8CGtoRv0xE66bnG3D1N7zsTHYlomOT8G5LwC2s9Xu5lm/EblGWt/
         MfWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I4WwE7t2n3rwbKe6QswHF5USnpabw1Y5uwlF2Mj5QEA=;
        b=UnT7dCHiP/hSPYHwzyKU7sJjyx9+RpNVVkmdSy/UMy4B5zHM2F85HXAnAJqwLi26EH
         IszHKaAgqroCJEWzLJH8ezrtXSmA5tM5HYUGXhzub//x73FX2OhrRWzQLcdFDjtP5Sdg
         SE+sQKj/r4wA5iZ7HDg4LiVtVA6qNgo9tbejM3Zcp+sSnWXpKAgUO/sJ5Q/t1lEnzt7g
         oChJMpjtqAPc68RLXsV2uFfhuYZexjhr082lRmN4qUulhDOPiUIXpVbSBjfbCfjRCf6q
         KHsIxv8kmBlc3hKNPVvSuBuon3UX/EBJwmfAa29LtUWXVeEFBzrcENQuPxRfACIKa3LC
         JTAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=I4WwE7t2n3rwbKe6QswHF5USnpabw1Y5uwlF2Mj5QEA=;
        b=fMPmP/6hfoQr0MT9nAhLIVkr7V3a2KftXacse9AZG0zPyqEb9HLNJ++uKE5IneOXZa
         bFu7FDXaNYD66fYMgl4DMXPNgV0sZNWcovZz0B04tv/Csi/vwVNqNz+jQClG7n6LWFvB
         hAwWBPvSTnSM80OwL6c+Cs2wZMROQnXbMbFLN2nFI4pQQmzTLyVeebn8xmljnRX36zr7
         IX5NNu4K3M5rhCCXXXJLbR3ILFugZvVU4+7VkdRG9KhHQ1gmURa0xncU27ZlwXrEycxZ
         kpPVmB/u6AIHPk6N/BT6V63IuKVHBizvyUHAowHT+yoc/RQhmNP66xSSCSsxVU2bRQa9
         vcAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531DpPWItkBVcQmXO2/V1L6kcOAWFYdOYpBomU7QXhD0CG6cc81g
	Sd1Og2ScdsLXqvqqo5YIey4=
X-Google-Smtp-Source: ABdhPJwZtQj/XjMjAHvpwdUaUP9PmCbclsK+ax8s6bAU6f/x7keIWxVVRBs+qcCNZe2WSDEWNNy71w==
X-Received: by 2002:a63:c04b:: with SMTP id z11mr3168910pgi.74.1610560287798;
        Wed, 13 Jan 2021 09:51:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:959d:: with SMTP id z29ls1136055pfj.2.gmail; Wed, 13 Jan
 2021 09:51:27 -0800 (PST)
X-Received: by 2002:a63:5023:: with SMTP id e35mr3192487pgb.56.1610560286860;
        Wed, 13 Jan 2021 09:51:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610560286; cv=none;
        d=google.com; s=arc-20160816;
        b=o7+VKxh1z7R1bDo4MnYe84sv9q1JBKx2SA0VlbuwahzHfBpyUIIkZ2tJoKeptUHU5q
         Fj0FL+Rv8lXMNTkJRNUfrpjfRrFMon7q+Z6X4fry39CW2kbMbx3RJx+9Mt7y6+kDWOZO
         rbLStJNc2MzwB9kn2XBZseYXf5VqTwXJYaOnFqa85Ao6brr01EnVnbBx2MOdiSsTEVFD
         JG3T7XfrXF+leCak37i6kXwZUC0gjOrESXfWoXkhhCdgIFiSbKCJeTAe0uoi+5H+/IhE
         Yn0Rn5jA0N60XHNsvz1ma65z5KsqQ5kzyf6tW952N67t3EO8XnquF+6Bd4FhyAi2dxip
         9WGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=phNMVGOT8C1SF9CCO/PujkTaq0U+NXoha8y1/r4kCQY=;
        b=QfpDLnv7TYhMUrjtLAwwLQSYJcxJLoskvRXLHuuixhqfzbuoOMNx0Ceiq0Susc1Rcd
         G9HONcL6bBWjlW80e1ncKm2r5+38TC1ZbkeYpr5aIb7gn/D0x0n1ReK81jhT2yq3jrMy
         olQuN4PQldH55BnU4K9DfkDHFbLKKQD3GqTc//6gjBdcKvBoQBLX9Si5XSnstMWJUOuZ
         zK/MamKBirTZW0CHt4q/nG7JbnMSWtJBX3nyF22JMiHujJbZt8s9b1RXRjzPt9Iz4YrY
         qVeOSIUexLE0NmZcPblXIDbbWwSINRAB1/TVO+DirC6/qsDC+cQ0xQzk6R/kyZSsxxMb
         rzpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kT4D5XuL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com. [2607:f8b0:4864:20::735])
        by gmr-mx.google.com with ESMTPS id i12si188126plt.3.2021.01.13.09.51.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 09:51:26 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) client-ip=2607:f8b0:4864:20::735;
Received: by mail-qk1-x735.google.com with SMTP id 186so2967656qkj.3
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 09:51:26 -0800 (PST)
X-Received: by 2002:ae9:ef12:: with SMTP id d18mr3347716qkg.473.1610560286030;
        Wed, 13 Jan 2021 09:51:26 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id k7sm1340519qtg.65.2021.01.13.09.51.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 09:51:25 -0800 (PST)
Date: Wed, 13 Jan 2021 10:51:23 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>,
	Fangrui Song <maskray@google.com>,
	Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>
Subject: Re: [PATCH v4 2/3] Kbuild: make DWARF version a choice
Message-ID: <20210113175123.GB4158893@ubuntu-m3-large-x86>
References: <20210113003235.716547-1-ndesaulniers@google.com>
 <20210113003235.716547-3-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210113003235.716547-3-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kT4D5XuL;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jan 12, 2021 at 04:32:34PM -0800, Nick Desaulniers wrote:
> Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice. Adds an
> explicit CONFIG_DEBUG_INFO_DWARF2, which is the default. Does so in a
> way that's forward compatible with existing configs, and makes adding
> future versions more straightforward.
> 
> Suggested-by: Fangrui Song <maskray@google.com>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  Makefile          | 14 +++++++++-----
>  lib/Kconfig.debug | 21 ++++++++++++++++-----
>  2 files changed, 25 insertions(+), 10 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index d49c3f39ceb4..656fff17b331 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -826,12 +826,16 @@ else
>  DEBUG_CFLAGS	+= -g
>  endif
>  
> -ifneq ($(LLVM_IAS),1)
> -KBUILD_AFLAGS	+= -Wa,-gdwarf-2
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> +DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
> +ifneq ($(dwarf-version-y)$(LLVM_IAS),21)
> +# Binutils 2.35+ required for -gdwarf-4+ support.
> +dwarf-aflag	:= $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
> +ifdef CONFIG_CC_IS_CLANG
> +DEBUG_CFLAGS	+= $(dwarf-aflag)
>  endif
> -
> -ifdef CONFIG_DEBUG_INFO_DWARF4
> -DEBUG_CFLAGS	+= -gdwarf-4
> +KBUILD_AFLAGS	+= $(dwarf-aflag)
>  endif
>  
>  ifdef CONFIG_DEBUG_INFO_REDUCED
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index dd7d8d35b2a5..e80770fac4f0 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -256,13 +256,24 @@ config DEBUG_INFO_SPLIT
>  	  to know about the .dwo files and include them.
>  	  Incompatible with older versions of ccache.
>  
> +choice
> +	prompt "DWARF version"
> +	help
> +	  Which version of DWARF debug info to emit.
> +
> +config DEBUG_INFO_DWARF2
> +	bool "Generate DWARF Version 2 debuginfo"
> +	help
> +	  Generate DWARF v2 debug info.
> +
>  config DEBUG_INFO_DWARF4
> -	bool "Generate dwarf4 debuginfo"
> +	bool "Generate DWARF Version 4 debuginfo"
>  	help
> -	  Generate dwarf4 debug info. This requires recent versions
> -	  of gcc and gdb. It makes the debug information larger.
> -	  But it significantly improves the success of resolving
> -	  variables in gdb on optimized code.
> +	  Generate DWARF v4 debug info. This requires gcc 4.5+ and gdb 7.0+.
> +	  It makes the debug information larger, but it significantly
> +	  improves the success of resolving variables in gdb on optimized code.
> +
> +endchoice # "DWARF version"
>  
>  config DEBUG_INFO_BTF
>  	bool "Generate BTF typeinfo"
> -- 
> 2.30.0.284.gd98b1dd5eaa7-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113175123.GB4158893%40ubuntu-m3-large-x86.
