Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB4WZ53WQKGQE23QNOEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id EA92EEBC95
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 04:56:35 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id k8sf5116147pll.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 20:56:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572580594; cv=pass;
        d=google.com; s=arc-20160816;
        b=UQy81d3sC+6EDcbFisvjNsaygDkFjIIDUpK7q3K1gDVEW76PxgAq7VYX7Rp/BLImEd
         AcXK9POwuBj6u/V9BP9ysv2T/n78eBt5jG5p/zI+UBakE0EoNjFLyeznRp4Y7o/1VX0V
         OVu+vz/P49YKMl+JeKxnk0mkVS5QKIyODS8PNIFl5VHdzc/brIk730LumtRFQTNyCXfz
         2sEeWjYYuh6H52DAga/oTIiW23iPO+1n+cKtSV98XrGngmNwPCRkucJG8qjj7kB3Ltf2
         jwzgSp0YA0TuyIneAEdDG7ZWgBd25ZP8CHAsIryGNNx7/oiH4JN2tchZeBj0DGcBqGhe
         hIxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fsGsUbCIhAVYL5oFVDJeaMCxWqrdf6z6wxSheHffiTg=;
        b=zfVAsbIjff1C+Oll6BxKh0zJRowEe5DkbnconFVbF0ase7jJerJKsJgAdguoGY5/Xz
         jJs82ZZvPp9CxiD2zHi2KxniPNs0B65BaJ/oHzE6sbqPXs0SFyoID0uq80chKzTGZcH0
         xHsa5gohXDZLF/UTiSlkTcbHRoYV0OFN6QS0VaL5aYpbCm7aXjoiqTnw/NsNMVxri8SW
         xC3Jk7irQ5lk2o6pe6vCYnVBMoEdMqKamlpk8nlYM+q/yjblZ72ta9erWBN2rZHjS4rm
         0abA8uPbF/qzh09obDo3UAhvl4G3Qj3VR1XQnsE92gypc/KBANICZC773A8zUTp8pSrW
         Bslw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=J3B2kmOf;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fsGsUbCIhAVYL5oFVDJeaMCxWqrdf6z6wxSheHffiTg=;
        b=cPAsac6fT3ILJPoQgqL3OszfCuGK7D+J0JPmYJ5eCerJinEY/HCzCYeYg8O6//kgKI
         YpgQOwjvF3gXpki3KCm8PVycmgAQa+qSBn33NrhdB9uoVv9aIkHDlgB2CWbIPnNCtUcR
         HJbVEz/gKOldfsFpyRpnO5PdEmhMpgYJQe3MKKoRIcaG0s6vc9IDR/5AEvi6HMvA2yRz
         JB4Wv3lz1JPer7NXGjnK8N135kgfllhUEXvPsIYrRZMj195ksGwefRTru06qSXEy1ddG
         9ar/q11VtK1a3x1r8fIkw7YAgt+RaiIAzsJodBDkC74UcOh0wBqgF2NGZygds6s2h31Q
         2M1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fsGsUbCIhAVYL5oFVDJeaMCxWqrdf6z6wxSheHffiTg=;
        b=ER1RybsArDJnpAaDa7iAmrQnbhI6KfYH0dknEWcHdgFbVYtQqtKYdVATc4mmQyihkj
         +o8QIE5F5oEhTJJJD4NyVVv4zgEhk+cl7GQsaiGRK3kA/o5eSTA7oxEHRjieEinehDKZ
         LcUxpZzLeSyknsiIoS/0XIGgXkMAnW8UsVXv7nTLKMCzU8BiIoDDQyzlBrOAqnWMkfQG
         f/zNlg55Shp16NTn7oRwwunnW/Yv9esnDK9REsrMeW1yGkbdmieIxklmfZAVbemvsmxi
         pTUkOKL8eqIgUYcG3U6wCtgVcMC1QiJhQRhi0+U0UqhiW9oGFZB9F0Z1tUnCMHGjhjca
         rhoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVIrLpSrH1YwCEJ5nYWXgIMUd9nEMfHLNL6m9MbKCCYg5KVS6AA
	TtdcFUgLvhuFO62/GwUxq9k=
X-Google-Smtp-Source: APXvYqzeqlxnArbdMluuuMaT3a02GLCd5sdALtdm/0fuQYCBua8YMfYe2B4THqzGME7eEEyJEwuphA==
X-Received: by 2002:a17:90a:b387:: with SMTP id e7mr12705060pjr.130.1572580594017;
        Thu, 31 Oct 2019 20:56:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5260:: with SMTP id s32ls1256436pgl.2.gmail; Thu, 31 Oct
 2019 20:56:33 -0700 (PDT)
X-Received: by 2002:a62:1454:: with SMTP id 81mr8570233pfu.86.1572580593734;
        Thu, 31 Oct 2019 20:56:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572580593; cv=none;
        d=google.com; s=arc-20160816;
        b=jHr3YYjcM8czhHcRF9aydb518I+C8hbdrzSTn9UOQrnfzlJMo0qK8qU1d1gP7fIR5B
         VW0nr0y91qIi9loHOwFfkV5T/eTljHgaUDcOfohpALvDHKri34DQmtizcygZrHSL5Mvh
         XF46Xk9MqwKGdgUIorE+WoTG9TcKPloh4wp/km7PqzXuOA2tlhg/PHZRfEr0ap6qavZU
         xtXStFysReH+mgGwOhwIrTrxVXpbDfTo/zrtGnEH2rcRIa6bN41goDsGw2sRxdjQ873A
         SiqYhAY4qQjBWWNOH8OkQzz1iKw3nlPBMOcZurxv/NPfiSTzznINwMR6xsZq0A+wXZ22
         ET1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8r2XeG5yFjL/afEHA1efUXOPQ4O3tMgoY9LidcT6tD0=;
        b=UfsvAR8SOiMPnBhU8fvB3/GvnxBI9QkjwMdwGDhGEcJZawn5q5HCSHtidnXCqA1K+3
         6KDAuzH7G1EVn9cU0mlYHfpIvwRC+/hFO1fVUUefPDUMVpBJgEyZ3SfQsMC/fw3+t5gO
         xbaju2/d6f7Vs0rTxBVMCJiRwwiPFnPkNgoVxiw+2AnNtRDdYRTUDjimKbhoiOswy5s3
         sI9PTHnm6fQoYr0BOeHv+LxtqJSKqKLhjWOP6WMpMok7FTWKi71SF3H+hRj9CeEQSv9D
         lHLzxr4fuPlHLKaUKLtufuEl5Kkrnmw7TTyLePNisSt9Nrdo15DEGfy9eMTHwyfLk93+
         JbrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=J3B2kmOf;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id h4si426092pjt.2.2019.10.31.20.56.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 20:56:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id y8so3771377plk.0
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 20:56:33 -0700 (PDT)
X-Received: by 2002:a17:902:d88c:: with SMTP id b12mr10325171plz.254.1572580593477;
        Thu, 31 Oct 2019 20:56:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d4sm7481695pjs.9.2019.10.31.20.56.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 20:56:32 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:56:31 -0700
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
Subject: Re: [PATCH v3 10/17] arm64: disable kretprobes with SCS
Message-ID: <201910312056.328195A@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-11-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-11-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=J3B2kmOf;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

On Thu, Oct 31, 2019 at 09:46:30AM -0700, samitolvanen@google.com wrote:
> With CONFIG_KRETPROBES, function return addresses are modified to
> redirect control flow to kretprobe_trampoline. This is incompatible
> with SCS.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm64/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 3f047afb982c..e7b57a8a5531 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -165,7 +165,7 @@ config ARM64
>  	select HAVE_STACKPROTECTOR
>  	select HAVE_SYSCALL_TRACEPOINTS
>  	select HAVE_KPROBES
> -	select HAVE_KRETPROBES
> +	select HAVE_KRETPROBES if !SHADOW_CALL_STACK
>  	select HAVE_GENERIC_VDSO
>  	select IOMMU_DMA if IOMMU_SUPPORT
>  	select IRQ_DOMAIN
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910312056.328195A%40keescook.
