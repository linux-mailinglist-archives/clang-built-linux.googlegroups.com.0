Return-Path: <clang-built-linux+bncBD2OL34CV4HBBNPARKEAMGQE6BAJY3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BA23DA487
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 15:42:14 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id o11-20020a5d474b0000b02901533f8ed22csf2246419wrs.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 06:42:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627566133; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jx926d2UDIfkynjpgg/9wJXbSeAMuD3jpatH/fUDtdFmPD4XX2hCIlRKREoXqL8bn6
         LswOdm57Ujj5tWhrXDy4NGrbzy+gwu55lTbggV1HxEPQR1fFxIYoMAP5SJZfrOhG4KoR
         Vu56njXCXN7sFHjM3JO1a3OsfMPoRlom2LZcaag439JOpueDvSLXqhbWZZ4OXp+cECkX
         vsS3isc6aKWiFvqpLq191ZJG7/yV31GG5j9UNzjtfJsI3lbuccJdOCk2J975MYc18n4Z
         S8lKqk4H1GiM19zv7rDxUsGIybtU1su1JVDZbFFrNeteb5+mYqzoCdPAgmZCszAg1G+H
         IUkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:cc:references:to
         :subject:sender:dkim-signature;
        bh=E+vdxBpiLLuPOkwGb4mGSwAKwkzawo6rwlbwmMlmGbk=;
        b=PDLdUVtU0nC83ta7mzxgNkIGorrhpJru+dDVtq0Cz+KorOmBhyOSdpZnffm3RP1HvW
         0Em0Tn3Xu91B4/iCLFVS0e54YqfXFtmb0cqP1OoTsFnbXoyb9FlFknhpWXBKofvgErbU
         OYDteUT3EUxv6dVcmIOH3KEDUNTYq4Il95Wndub4CgQP6/NjjnKOqPwghH5VTE8aihqJ
         5pjX/99kFadF4azjCpf4K5kte1C6/dPgPRN3VUzlT4LVmAvnv6X/w2WCRi7kyYw4DrAL
         yeG2A4kmIWB0h6zFyrprjW+T+laUEKbO4quEK/v0/gXGQhUfwnXRLbtKjHxsBw9kr0Hs
         5TNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of pmenzel@molgen.mpg.de designates 141.14.17.11 as permitted sender) smtp.mailfrom=pmenzel@molgen.mpg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E+vdxBpiLLuPOkwGb4mGSwAKwkzawo6rwlbwmMlmGbk=;
        b=JGND2GkARV2QHEkyt3oJW/3lAdIPiweFBfOo50OQ45Um+U6EN2p72SWjOhbfkRTKgp
         3njEqu2E/fEBV6q+Sg+Ys1hK3qcdiLPysv2Ximdr4Vnk6e2ACvf/pxKB2j7ik5PwAOUT
         sj27LbArTpX/bixCqN/awgs+7K8/p6krfTVrlv3UIJAFPSgAf96SLYTNn7iEo19P0wQ6
         3G93xCgOqlJ0p37bRf7HaEw4RDeaLFbz3INl+5eFmNiSisniHCDRM6dmewrBFdph+MKo
         3UYgbWrk29xnfV/ryr4SchJ5QXrnnJMPyYSdJRreFwEB6xKCY9ZUO5O0Ho7qzeuDkVP+
         paJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=E+vdxBpiLLuPOkwGb4mGSwAKwkzawo6rwlbwmMlmGbk=;
        b=sdX6wDWKLd0bAR8ldaO053QG9dNTQdU2++bldh9XdaXzcFUHRQEhMYq5GKKCPNbLQ6
         T0oAhTzTWbbTISO4zE8eyAgkgnCgSgWqfEft0KyB4V1KS2/i3iPn3Mk83vERhATsnXE/
         rYJ8ZrNyJNgtCGKLfZ4T3MEqztcaYvHS0CDKcND/D+2ufKcc29l6NT20yU0osIV73JsA
         7XRNO2GOgUpPCj97WZDfF/tI6r6SNcYY5cFsl5P+HvHUGLW0DCnlwxIIjGJMYJJZRNWE
         uc+C6GVnYjDpZHYK3CfUVbGgsBo/DTIaU9000CuMh6YTeQfBy8nqWnQ/yfFsNPyZVlsb
         v/SQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533q/avZQJdCCYwNkC3pXr0rIIZ4e5+xs59a0AmbMuLvUvcXMKKv
	gCM2n2svYa0GG8f5Q8DpUlc=
X-Google-Smtp-Source: ABdhPJwW0yjKePhNtzj8Us+6MMSKjadW+q5vnIcrvHJxJZokBlOkEuQpbtWQBUXpQw9EAmk7WSCyQQ==
X-Received: by 2002:adf:b1c5:: with SMTP id r5mr5171532wra.146.1627566133713;
        Thu, 29 Jul 2021 06:42:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cc8a:: with SMTP id p10ls5067202wma.1.canary-gmail; Thu,
 29 Jul 2021 06:42:12 -0700 (PDT)
X-Received: by 2002:a7b:cc8a:: with SMTP id p10mr4892651wma.30.1627566132705;
        Thu, 29 Jul 2021 06:42:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627566132; cv=none;
        d=google.com; s=arc-20160816;
        b=tA0lYd9qFIEoe/goc1k3BF7XZiDQj3EU0hyNZ17t2Z6e4KFlK853xZ5o8oeCNOLr6R
         eDnsSFcpN6wvhAxKl+8ZLcAofbBBKhsjhFYWNU8ZAWr3qGJae2KsUnADvTb5/fN6KDN5
         2GxVqD187tcFsRoNT88KykfxkoYpMDO57RmOO373f/peLuRlVWiUHNUMTixm96mb+/bN
         zufcWOilxS3qOqylL+a1haNB68h/wbf6wgahhbkFri14or9RdwHhINQT/29P4damXApf
         gVSis0u9EhhRJVvrCqIefsA9U+tGzzbyNT8lqWvrZKA1+hkNN95bIozpl/V92+/4PvMV
         oqvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:cc:references:to:subject;
        bh=RuKhZ2hfjS2c+ZqsWn658v6peMpZoGNUgv4evbx6wZo=;
        b=V/MM5+M1BzMwugXiTd1A84iU7teOtBKf/aqmNGLnHbkGp813kcCsgHQka0oi6tD2Wk
         KvpBnl3rqKapRxTGCydeJz/srvyBUPK3n3MfaP1G7JMbFl2++iRXT+ZT5IdHWq6m0Odn
         9J6Of9Gv14MS9+iD1fXfoG/43JQjTx3lG9oXQzn8TKQNv9kEW34Uac6LMAdnozATUVm2
         SBUAQY9fS3j/v9HEW+URdyWzvQD9QibE0VllCmEEGExPne2ULjnLEANZxfWSdVV2vqE3
         6QcF+C1vV6K2H4CxqKioCXX2TZmJwKTI4iHCuoHyBd4l+NZ474ZabcrhaF8Wu7YbBNaz
         Vxtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pmenzel@molgen.mpg.de designates 141.14.17.11 as permitted sender) smtp.mailfrom=pmenzel@molgen.mpg.de
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de. [141.14.17.11])
        by gmr-mx.google.com with ESMTPS id 14si127595wmk.2.2021.07.29.06.42.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 06:42:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of pmenzel@molgen.mpg.de designates 141.14.17.11 as permitted sender) client-ip=141.14.17.11;
Received: from [192.168.0.7] (ip5f5aeda3.dynamic.kabel-deutschland.de [95.90.237.163])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	(Authenticated sender: pmenzel)
	by mx.molgen.mpg.de (Postfix) with ESMTPSA id 378E661E5FE02;
	Thu, 29 Jul 2021 15:42:12 +0200 (CEST)
Subject: Re: [PATCH] powerpc/vdso: Don't use r30 to avoid breaking Go lang
To: Michael Ellerman <mpe@ellerman.id.au>
References: <20210729131244.2595519-1-mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <392b3b47-1878-d27a-9656-4596fdc7c343@molgen.mpg.de>
Date: Thu, 29 Jul 2021 15:42:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210729131244.2595519-1-mpe@ellerman.id.au>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: pmenzel@molgen.mpg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of pmenzel@molgen.mpg.de designates 141.14.17.11 as
 permitted sender) smtp.mailfrom=pmenzel@molgen.mpg.de
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

Dear Michael,


Am 29.07.21 um 15:12 schrieb Michael Ellerman:
> The Go runtime uses r30 for some special value called 'g'. It assumes
> that value will remain unchanged even when calling VDSO functions.
> Although r30 is non-volatile across function calls, the callee is free
> to use it, as long as the callee saves the value and restores it before
> returning.
> 
> It used to be true by accident that the VDSO didn't use r30, because the
> VDSO was hand-written asm. When we switched to building the VDSO from C
> the compiler started using r30, at least in some builds, leading to
> crashes in Go. eg:
> 
>    ~/go/src$ ./all.bash
>    Building Go cmd/dist using /usr/lib/go-1.16. (go1.16.2 linux/ppc64le)
>    Building Go toolchain1 using /usr/lib/go-1.16.
>    go build os/exec: /usr/lib/go-1.16/pkg/tool/linux_ppc64le/compile: signal: segmentation fault
>    go build reflect: /usr/lib/go-1.16/pkg/tool/linux_ppc64le/compile: signal: segmentation fault
>    go tool dist: FAILED: /usr/lib/go-1.16/bin/go install -gcflags=-l -tags=math_big_pure_go compiler_bootstrap bootstrap/cmd/...: exit status 1
> 
> There are patches in flight to fix Go[1], but until they are released
> and widely deployed we can workaround it in the VDSO by avoiding use of

Nit: work around is spelled with a space.

> r30.
> 
> Note this only works with GCC, clang does not support -ffixed-rN.

Maybe the clang/LLVM build support folks (in CC) have an idea.

> 1: https://go-review.googlesource.com/c/go/+/328110
> 
> Fixes: ab037dd87a2f ("powerpc/vdso: Switch VDSO to generic C implementation.")
> Cc: stable@vger.kernel.org # v5.11+
> Reported-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Tested-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
> ---
>   arch/powerpc/kernel/vdso64/Makefile | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/arch/powerpc/kernel/vdso64/Makefile b/arch/powerpc/kernel/vdso64/Makefile
> index 2813e3f98db6..3c5baaa6f1e7 100644
> --- a/arch/powerpc/kernel/vdso64/Makefile
> +++ b/arch/powerpc/kernel/vdso64/Makefile
> @@ -27,6 +27,13 @@ KASAN_SANITIZE := n
>   
>   ccflags-y := -shared -fno-common -fno-builtin -nostdlib \
>   	-Wl,-soname=linux-vdso64.so.1 -Wl,--hash-style=both
> +
> +# Go prior to 1.16.x assumes r30 is not clobbered by any VDSO code. That used to be true
> +# by accident when the VDSO was hand-written asm code, but may not be now that the VDSO is
> +# compiler generated. To avoid breaking Go tell GCC not to use r30. Impact on code
> +# generation is minimal, it will just use r29 instead.
> +ccflags-y += $(call cc-option, -ffixed-r30)
> +
>   asflags-y := -D__VDSO64__ -s
>   
>   targets += vdso64.lds
> 

The rest looks good.


Kind regards,

Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/392b3b47-1878-d27a-9656-4596fdc7c343%40molgen.mpg.de.
