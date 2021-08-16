Return-Path: <clang-built-linux+bncBDYJPJO25UGBBC6C5OEAMGQE4WE7ZRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id D86453EDFA9
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 00:04:59 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id r25-20020a2e7619000000b001b9769d3d54sf2437063ljc.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 15:04:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629151499; cv=pass;
        d=google.com; s=arc-20160816;
        b=HcOWnurG22DHOac1S620VtJYwQFub8XsfeDtBDP8NYNtzfS2BQGkTo4QrMcM5u2sWz
         dRzmzYMEF0JPpSm8uSEkeFdbd/8a654aOl5YzINqf44lgybjvYTCjNW3doWsjF6gHhSK
         058A6WXkasRXYiZTKaSGj7k/T8MY/5IRsfD47ZDDSlZXMA+JpRqmCUWsqyrf3JV7EiZm
         e1/LDvkPH8ay51OV6/2TCX35WTgRhVvMydCualllj8kKT+UC9jqFsyK3XTDoPGk1sehl
         0BM4yTyiYtfeQfxdhVxX15em24QUWJeDPWn0MxEzGEvadeGxntjfsHKRmNadUzU9OG8B
         C4YQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KpN8VlcA9WaeOySd/CSpGPFIW/QF/hIqjSrKmldqE6Y=;
        b=T7BkWjQzg8I3ZIXO7BIkKGG7+IfN/608FiKk7m+pWRmaKGDnuGRFUNcpBb+I1z4ynn
         EA65myQ1Mq7tZb3YbZSZk8FJwcUUYDkSyxLmLpgvwuYgO3NJ8AGQtBGnNEFyxzSiw9ue
         zdEGQaGdp5cw0+6mlxEefgZ3WuYcu9c7Wx0muxqNamR2T9ZsGyx8MSDyjN7qfhx/dMLK
         o01Z8KaNedJUZvR9qWsZuPghm2IUEcRb5uqV5e0YT46195t4gWEQ1FVfr0Lq0J00wBcm
         ZnixCqtT2HaNfElQFAKfAJJwRgfzJGwGNuDOsSRKJImRb8/h/U20im3iHu8a5RlaQT+w
         BEbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=edCdElco;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KpN8VlcA9WaeOySd/CSpGPFIW/QF/hIqjSrKmldqE6Y=;
        b=YW9a4Ltma/km1O/V9lPB8b1ACY8q4G/eCbYlVO5qx57rYY8w0h3G4GNHnbmK8oQhBn
         R2VzThnKwQT/kso0vYcNXesRvPI+0L5V031fnJlULkQOWL3fFUM+SOrYtgR7PGTT+ayJ
         Go88atqCM05t9RYskI3QmKnXftfSTAhyqnN73ISvWECvQEv1xdUp4eiaSTLKoKVFvTWK
         hKpks9Xe3Pyo5tCO8cOMI9pXlgbpyN4mc3DcOTFCvVwW1DLx7qQ7WKWeEpKbACx9+pkq
         yeimarBlBigpALSyds6+D/t0C/4kSyeEgJmIInzpLxTc5ZxF5x16AMzXGYh4gad+ZVD0
         f+fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KpN8VlcA9WaeOySd/CSpGPFIW/QF/hIqjSrKmldqE6Y=;
        b=mwBYll9hUdZEt9Z6O+33825ctOXttCXkg8xXNN1PK17ntEvIp1PJEeOCB/DZRysUSr
         a+s2tCl/W2bE8b19/nxB3sC5nLbWxoIYsui0RXAc477q3/eCPxkxYkeho3bBcHVdwrIo
         Mhyr/neAYrx1AEjY6+jEyenbWNxCWz3/46w85/sJCJs5TfIFV7IU/Xu4/GM0oJRCtB//
         pUiUHaZULHTvXOND3wiKeWWYsTz2jh9sw3mvkQebZyLUBhP5fJ5VI4YYNlw6hL+Y7KDS
         VSlAhND1s3H/w0JSwMf9y9yIo/XwUOWLINBBw4c9PNE9Pk0TvPFA4NNBQ+of5HP6BlCM
         5s9Q==
X-Gm-Message-State: AOAM531/bq1ueBHniQEU1rJKSjvxJmhshUFYYhQGm7B2oyQxMxfssC9i
	7GRUM+RfABP/ybN03jQ7FBc=
X-Google-Smtp-Source: ABdhPJzBQCyPdJX8n2Or2vAJI4SdIufr9zwh5EPRmpfcz40XM/ZIrP4/aL7kMrR7nofPSxT2yKZX6Q==
X-Received: by 2002:a2e:9ed4:: with SMTP id h20mr328719ljk.90.1629151499441;
        Mon, 16 Aug 2021 15:04:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:160f:: with SMTP id f15ls47556ljq.3.gmail; Mon, 16
 Aug 2021 15:04:58 -0700 (PDT)
X-Received: by 2002:a05:651c:158b:: with SMTP id h11mr293136ljq.395.1629151498432;
        Mon, 16 Aug 2021 15:04:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629151498; cv=none;
        d=google.com; s=arc-20160816;
        b=X5qdm3U0VwWx5za3+7Sp6rrjUykmkVooq7TA0wDToYeNyWRfjH+xIaJVoBmpVJHDbh
         HmcJ3kvF/OHbMel754SZRQHk0uhSkyIYfnsD4zreYWib9dGirz8P79pw88gzClakXV9y
         Gb+2sv+rixVU/VgNGOCahOzxA383YnDmi80vJtsRXNBKILiImgDEzvK1OGaw4Y92upPO
         fctw2uIhSz/uacF6EH/3/vy3iptoV3/ZXFoN55BPgopo10ks8N/qg1r1wL7ffPgOEhi+
         48EGiniNTflQp4RfXcDH47FlcHYQtZO5a6Eo75T0M62GW6RezuED5fN/0Tv3ZhuildDH
         4O8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=e31P/2GOTWbuV4ckMdMmZ6I8R+PPJnAJhAHl1ZjYZ8Y=;
        b=cHdBXMIgdEjHi2CgFGoCS9n1LRc3wtJwAH78+o1zbpWoIksIoqI3Ct4I59xXIsjBFu
         NX47AvNEvmulC/bAvoDBdq/GZRr3LgOXfpw76U58aMJED3UvblnH/M7QDgOhHhLcK0Ph
         zYG8mFn3IN8jsfaDJ/lSQdrotyI5h/0yUnHm45i/nC07RcOOcQfEFbdHDnf1sPT3IoFD
         xGU5xoLiDHg85jweVCUaVvh8MKQtAgnDW2+8u1nlKGE544SKfyX6GCEduYSy+dw9TxyI
         MHV17HMZKYHV/oo9X2ODbUaAGP51tJMJzgJxemPwGSnYihZnJIIfRNY7AocnxkwOwOAp
         Dsfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=edCdElco;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id v15si7207lfa.6.2021.08.16.15.04.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 15:04:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id s3so517570ljp.11
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 15:04:58 -0700 (PDT)
X-Received: by 2002:a05:651c:83:: with SMTP id 3mr301012ljq.341.1629151498062;
 Mon, 16 Aug 2021 15:04:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210816185711.21563-1-nathan@kernel.org>
In-Reply-To: <20210816185711.21563-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Aug 2021 15:04:46 -0700
Message-ID: <CAKwvOdkOCraDC0QccntgWD-ZkW8c2+RG8WeOD7aQH3BHZM2BHw@mail.gmail.com>
Subject: Re: [PATCH] powerpc/xive: Do not mark xive_request_ipi() as __init
To: Nathan Chancellor <nathan@kernel.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=edCdElco;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Aug 16, 2021 at 12:06 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Compiling ppc64le_defconfig with clang-14 shows a modpost warning:
>
> WARNING: modpost: vmlinux.o(.text+0xa74e0): Section mismatch in
> reference from the function xive_setup_cpu_ipi() to the function
> .init.text:xive_request_ipi()
> The function xive_setup_cpu_ipi() references
> the function __init xive_request_ipi().
> This is often because xive_setup_cpu_ipi lacks a __init
> annotation or the annotation of xive_request_ipi is wrong.
>
> xive_request_ipi() is called from xive_setup_cpu_ipi(), which is not
> __init, so xive_request_ipi() should not be marked __init. Remove the
> attribute so there is no more warning.
>
> Fixes: cbc06f051c52 ("powerpc/xive: Do not skip CPU-less nodes when creating the IPIs")
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/powerpc/sysdev/xive/common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/powerpc/sysdev/xive/common.c b/arch/powerpc/sysdev/xive/common.c
> index 943fd30095af..8183ca343675 100644
> --- a/arch/powerpc/sysdev/xive/common.c
> +++ b/arch/powerpc/sysdev/xive/common.c
> @@ -1170,7 +1170,7 @@ static int __init xive_init_ipis(void)
>         return ret;
>  }
>
> -static int __init xive_request_ipi(unsigned int cpu)
> +static int xive_request_ipi(unsigned int cpu)
>  {
>         struct xive_ipi_desc *xid = &xive_ipis[early_cpu_to_node(cpu)];
>         int ret;
>
> base-commit: a2824f19e6065a0d3735acd9fe7155b104e7edf5
> --
> 2.33.0.rc2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkOCraDC0QccntgWD-ZkW8c2%2BRG8WeOD7aQH3BHZM2BHw%40mail.gmail.com.
