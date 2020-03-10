Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBX7MT3ZQKGQEJW4PZKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A655D18023A
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 16:46:40 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id h22sf8736802otj.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 08:46:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583855199; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pr5q4ZLtUlNo7niucdf7XkGVuEoMGgsRQEc/+U7kvPrEc6hayuCNnv4Rf8r1MB/R0w
         XR8oZ1DxW/8k0C4iDj2G1qhRkBpK0MOwvZqG5x8TL2X9tPDUk297vJwiuZWywmnXWNDm
         nKo3xsyqv+F1PKyww+w8QWQkUIWm8d577stgQnSQZSKIO0rv7osEnSfzVA8Jd+5Apok7
         xNVkIW4gUBh57FZZspsstyxx538VLKPI+EsgJnvqyXyaPIdVe+plNBOAyp77hU9lhrXe
         Q79yz9IcFLqQkLJepSR2qbCxtXw1e/07dBtHZqkBlERWJLrzcb3X77G2avcqscCEFWTx
         7SkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=FNoA80bCiFoZZcE/OdjS7B1GHH5u+74wXb6ONhlx22U=;
        b=BC/03khxAfOjU+5MtW0X32ps+P3zy9iXaXP1MkOtdQWc/Qgx9X4Ol1GwXuQCWxnOUI
         5/kv0dueeyuVXxK80GX565x5vZIRB/HmnDjCCSyEWFDXCQF6LfebRFeLgZWxnkDJURO+
         d9yfd2NxNjHwr4C7aRSpOXkZRR4tmveIKefqfw+hKEL0Dn81mU6iid2NIRl4LcEgDZmH
         /ZBhU4w6pjPu4r0ba+YeNgNG6GLH+9J+oWkffUSHP6CtXJlZGPWctCmt02AoYL7GxPVo
         FjFxeNk4ssjgvzrZqO9Vk+0AFE47fkLiBKi4terPxb3+sjujMOzpZy1oWz6trfqmCEfo
         PRCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=etnEvI74;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FNoA80bCiFoZZcE/OdjS7B1GHH5u+74wXb6ONhlx22U=;
        b=fzlA5xIUrvGeNAR+x2qXNKqPC7CRxY9nItVQiampkW8/He9/pU9FPOWBpFRsc30S+g
         Pn5/qZz8Pp43i21sSENBvhiLdslq32fMI/8jfWkOafXftSsKgsZIxaD3YydNZihwkvfc
         0j/HCok5Ks02Yt9GQUjYXoi1iIkRyDpBLNvl8P3OA116R2gsl5oN8P94ojk8AMohS18M
         OHWjWoRQUynRV4zB3UQaJvrerddIcf3sJfCLGCG7P5AvWLALGk43U9WikvShXNkqIHhl
         6UMROa15heHZI5BTeUd9jzX8OaEOE3vwVCWdnMJgWd0fCYZiaXComHKxUl5QxoUFcMMA
         YB6g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FNoA80bCiFoZZcE/OdjS7B1GHH5u+74wXb6ONhlx22U=;
        b=XRiLl1RmAQMiaMpb4W4VHG1MzMDwoNNqoYv9FZS6fgaCkum8lTEZz1wkAWYt7fk6Iz
         w12y2W305kTMTMba4X8S3U/CUGWrlWI4gFro64ZwlrREdVOgMHKyI3bKXUcfMRdIbnLS
         R6UV5y3sm9/m5WHZYCOcmGbv46Od16U6zI37bFqm81XX4/1sUtj7tvDJaUVeuft0CunD
         U5AQyId+DFTAqhO67Dy8eo6qkKL+oMSWB95/zLDFZKAevdARpq52brkaoqIwH+BrskBR
         x19B5YqUiY2XW3QOxl90tY6ySbko9po4cM/5oyXUJnTPkRGlYmqTcfPHWX8n4GN5yLBh
         XaQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FNoA80bCiFoZZcE/OdjS7B1GHH5u+74wXb6ONhlx22U=;
        b=blPxD6lhXYQBGXUJWV+DaBBwvbyF+Ff9EYF12wR7f+1IDvd/UmJMNrk+89nO3+fPa3
         qSOklsKX2euCK7KePclC71Pj15MrKifVeW07vHPH4I7oIhAsfFYfITvz0o8J1EQBnxT7
         6XwpMPDZI3VVGovfJ8vam16c9pXSo9gYUuzDbNnj9cl1XXhbm/H0F3kUJCo6IXyRAFsM
         uK8E/uyRM2PLvh4UgFzLkeaEj3MI/1DiFEfiK4lK20Fq8gJV2faDc8d5RSoJMDfys+F7
         uVlQW1MQcwfaP8kk1nDKxiImMO0TAOpLr+87m4Agsgj5JxUFDiTeu4faGPRdu6rcz5ji
         FT/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1uRrW3THDy9LmE1pEph9H3Css7AX03KzYRDjgdvQiUlOS+R3Bp
	V5YwOTxqZpc7Z2XGMIerknc=
X-Google-Smtp-Source: ADFU+vtiw3Cw3W/DNZjPcCm4Y0JEQPZMRxrl64QlRdTbqYSPvw3BljrwYfD+V9K1xtB4rPVPzenABA==
X-Received: by 2002:a54:4e96:: with SMTP id c22mr1718678oiy.110.1583855199473;
        Tue, 10 Mar 2020 08:46:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2097:: with SMTP id y23ls4414948otq.0.gmail; Tue,
 10 Mar 2020 08:46:39 -0700 (PDT)
X-Received: by 2002:a9d:bf7:: with SMTP id 110mr6855946oth.259.1583855199078;
        Tue, 10 Mar 2020 08:46:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583855199; cv=none;
        d=google.com; s=arc-20160816;
        b=Zpwgm+4k5HzMOvd11AptlNFohu0Vk3cHREAaU1GejWd77pZoERGPTtYqYU3puEzmFM
         gmep1nEQ7SDczgumUN6lK4rFmvMEqNzp7ORh3P9nXJj0TRsahjXMRURSRB+219gwKK6w
         8XTkCySkFOATSaBW5WoR+w5cB6w6LK6q8QANRrmnqFqtY3ON9XqMp8JYscvwX9UbQ8CR
         C8AFfRCP3TbSZGHVHZKaeNRQXoQjM2ArA4Gp4kJKRhDZo6vOous5EP9HwONfXakTIiNG
         FrNKWCkR1XaiKWPi5aTCJv5E4oD03rNYmHowGBiOmewx6+dauKCkSmB62xxEaz8YLVj/
         EnAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=oAoaOcfKFLCJ0nOY8c3/piOO/zUeoRHQO/N6WrhcgWU=;
        b=Xhn+0FwMRqgk2kD0BPJWFpMRxX0YvN/RM1F2kK2GhXa3/oS2A1yX//Fz7d4gXRDFsO
         lvQuOVlEJw0eMNZoyMT7pFRxf7MhlF7kDxAK01NsUfaP+0+KESzRNLLpuXORY/xilUdH
         A8dyxChwtnDR91l3RVLAy+/+yWlOyZW9vQhpnTBTY+eObdqB8b79wDhZ2GXRE0cfC+cm
         OXecpWTG/9SMdRFaJehtPQtoo5/6WrUCfKH9TiaIctd+3+U9gMD6BI0zmooYICDuD2xu
         2GA9QeXswZzHYytA4n8fCOsvxFFf7Z84Iu8s8O5hwfSB+PdwBPCTBmiDsGfXY7JfPy3j
         dVXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=etnEvI74;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id b2si501048oib.5.2020.03.10.08.46.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 08:46:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id h17so1154528otn.7
        for <clang-built-linux@googlegroups.com>; Tue, 10 Mar 2020 08:46:39 -0700 (PDT)
X-Received: by 2002:a05:6830:2009:: with SMTP id e9mr18014608otp.296.1583855197829;
        Tue, 10 Mar 2020 08:46:37 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c12sm4411577oic.27.2020.03.10.08.46.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 08:46:37 -0700 (PDT)
Date: Tue, 10 Mar 2020 08:46:36 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>,
	George Spelvin <lkml@sdf.org>, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] kconfig: introduce m32-flag and m64-flag
Message-ID: <20200310154636.GA24694@ubuntu-m2-xlarge-x86>
References: <20200310101250.22374-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200310101250.22374-1-masahiroy@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=etnEvI74;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Mar 10, 2020 at 07:12:49PM +0900, Masahiro Yamada wrote:
> When a compiler supports multiple architectures, some compiler features
> can be dependent on the target architecture.
> 
> This is typical for Clang, which supports multiple LLVM backends.
> Even for GCC, we need to take care of biarch compiler cases.
> 
> It is not a problem when we evaluate cc-option in Makefiles because
> cc-option is tested against the flag in question + $(KBUILD_CFLAGS).
> 
> The cc-option in Kconfig, on the other hand, does not accumulate
> tested flags. Due to this simplification, it could potentially test
> cc-option against a different target.
> 
> At first, Kconfig always evaluated cc-option against the host
> architecture.
> 
> Since commit e8de12fb7cde ("kbuild: Check for unknown options with
> cc-option usage in Kconfig and clang"), in case of cross-compiling
> with Clang, the target triple is correctly passed to Kconfig.
> 
> The case with biarch GCC (and native build with Clang) is still not
> handled properly. We need to pass some flags to specify the target
> machine bit.
> 
> Due to the design, all the macros in Kconfig are expanded in the
> parse stage, where we do not know the target bit size yet.
> 
> For example, arch/x86/Kconfig allows a user to toggle CONFIG_64BIT.
> If a compiler flag -foo depends on the machine bit, it must be tested
> twice, one with -m32 and the other with -m64.
> 
> However, -m32/-m64 are not always recognized. So, this commits adds
> m64-flag and m32-flag macros. They expand to -m32, -m64, respectively
> if supported. Or, they expand to an empty string if unsupported.
> 
> The typical usage is like this:
> 
>   config FOO
>           bool
>           default $(cc-option,$(m64-flag) -foo) if 64BIT
>           default $(cc-option,$(m32-flag) -foo)
> 
> This is clumsy, but there is no elegant way to handle this in the
> current static macro expansion.
> 
> There was discussion for static functions vs dynamic functions.
> The consensus was to go as far as possible with the static functions.
> (https://lkml.org/lkml/2018/3/2/22)
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  scripts/Kconfig.include | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> index 85334dc8c997..496d11c92c97 100644
> --- a/scripts/Kconfig.include
> +++ b/scripts/Kconfig.include
> @@ -44,3 +44,10 @@ $(error-if,$(success, $(LD) -v | grep -q gold), gold linker '$(LD)' not supporte
>  
>  # gcc version including patch level
>  gcc-version := $(shell,$(srctree)/scripts/gcc-version.sh $(CC))
> +
> +# machine bit flags
> +#  $(m32-flag): -m32 if the compiler supports it, or an empty string otherwise.
> +#  $(m64-flag): -m64 if the compiler supports it, or an empty string otherwise.
> +cc-option-bit = $(if-success,$(CC) -Werror $(1) -E -x c /dev/null -o /dev/null,$(1))
> +m32-flag := $(cc-option-bit,-m32)
> +m64-flag := $(cc-option-bit,-m64)
> -- 
> 2.17.1

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310154636.GA24694%40ubuntu-m2-xlarge-x86.
