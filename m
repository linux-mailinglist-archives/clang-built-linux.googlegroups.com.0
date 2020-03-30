Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3FYRD2AKGQENBRGBBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4401980D8
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 18:21:01 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id o4sf4326283vsq.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 09:21:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585585260; cv=pass;
        d=google.com; s=arc-20160816;
        b=ybEcxInqYHu0+IA0QEMXvZSH/2e11LQmQUPBIJPFVdhHz5MferAF/h0RYPdGA4fGFK
         xI69uazTVq2cQvpoP7dnVqpwGx4fh9jFxvhEYaOljrw5ns26Z7qfmLobG6Q3yq9zlzIm
         Tet+q/heH2P+1OrfzhQLIOjAoDVJZHjXWRwaD7T/rM/ILoHueThRpYVkO0woWxC0sHhA
         yD6Bq2Uqiks77vedo+OCF4h2mRWdT7/EYFw5neIW0KOoApvBz2HqBds/9M9UdUMPsl+8
         GAmTpB/ovRXQafjbBRD5u8lRaHWI/gpeRt6gnE+j2LvCAluQVdpyZeftjAawB3XDtukf
         PLgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=p99mHWBKizDnhutn2Ppj1K0tENVXhIyGDMhZy+LqVEk=;
        b=afqqeN2JZPRnBFbPXOWdGTcwiThPE8jUxMMC9RKiNgAXBFWOA/E2Ur8nQavIMtByF8
         CvMaLlUUtobsYLSDgpz0CN75zgEb9tBO7dOleDY0BTZrCpEdqRm2Naeim4yWQr+hoPtp
         yNbON6fqaVpHF4Jrsgyu+qL2vcQ/xI2U7L5qipVSRIyLBOMGctk+GxewpblcR1OPqPEU
         HrSq6y1jKM7qwiV9VuBrx7h357bTvxEMIWUwkCoeSr1LFm3KhtkruINZ3gwonUJMFZnQ
         HLLGFFmhBlZuPakff5tqQ39t0WINQJWjR4gB7f+Fb2FeFxkJMj1ctN8aRXJnirKFa/kR
         9Dcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CH3DXNhk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p99mHWBKizDnhutn2Ppj1K0tENVXhIyGDMhZy+LqVEk=;
        b=c71FhHCACUDzMIhvD2aJHFiaU2336CHWa/AsMLNzA5t8HVtNM6vsl1bDZA8QdZQ5no
         OlztYkrxHMFS8GtMsevQ8Wp5tJXSQA/v28EJQDIVVIouG54v5dlF9y4zTmo6DfI3KY1g
         WNlue/H50jDoDVtLjAuDPtaZ04IgQwwzrqJuBRKVcKL3GXuhkIRixyP5AGF7yOzo8P7h
         wVS/iKEK3uJsAsd9BabtsWSbSKOZyfCSkhOdBrr3tH+Y2CX0WD74WTagONeNAreI01kd
         91ugVlfUE2fXJ5WtjhMsOimM8JGNKXVGBtpg5rSEB0/NPLDTDA0KRnT46MWkc6l7VRW3
         F3dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p99mHWBKizDnhutn2Ppj1K0tENVXhIyGDMhZy+LqVEk=;
        b=EL+l2WAZKdezf8i0Wl+O7nhJy4by9vPBnnO8CT8En5DDzua1AfOMSlGK99UHV/JRQ0
         eZIzyZHa1L622eF7RbMTDiWsmk0sv2G7IAF0r0F9gW5zDG0A58BRLRAxoXW63o2mnmem
         zxN+w5mkdPor5HtNkHBxYoy8L51riKs8//l60SncseirXkOtyzbrgCVjF7fZn/CHLTLW
         OvwXFTVpoWYh2lHjIB2/zXMZLzI953lsx5IWxE0/Ox0Sq/51/yDBVcFENTG55MZP3Aqu
         CdWuZSDDmYxjPEGEETeHT6JbeNVmEtO8cGaf1zsxxJwr/cvL7kwRT9e6ZFTwp8rbzk5D
         YquA==
X-Gm-Message-State: AGi0PuaSkZk8CvjmZqggMxeOEeB5tXbbVlQYUbO5zcR9Mk8A+AGkAf47
	mpBHJ+SFs0Y0mGZQ8wjwt4A=
X-Google-Smtp-Source: APiQypIQxP6ItFMVxNn5irARES72wVv1eK+IWiVBGU+zkiBGVcI5LzYBK+WCzoGbueXYEhwCrMFk5Q==
X-Received: by 2002:ab0:70d9:: with SMTP id r25mr8786347ual.67.1585585260174;
        Mon, 30 Mar 2020 09:21:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6950:: with SMTP id c16ls1306808uas.0.gmail; Mon, 30 Mar
 2020 09:20:59 -0700 (PDT)
X-Received: by 2002:ab0:49e4:: with SMTP id f33mr8401432uad.86.1585585259798;
        Mon, 30 Mar 2020 09:20:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585585259; cv=none;
        d=google.com; s=arc-20160816;
        b=umNEZsrITvkmnhf3gVgkFY3id79oMxH2HVOfc54kcG//0W3hpOKdCAOXKl5LMo5J6w
         K4N1YsXf77MaJqstzvux9oX1FB3RkjOzSbbnv27Yaz5hmMC9Dk+N+NAYAimqdE59xF8Q
         22ONbMnAPg45kf7kkYaetZg4JcdUY2lMx7KPAdodqNJR5yE9KSwpi6KqdprOZNC9AdtF
         2PzhnukoxqJlu+2wc4RiIxTsc//QPH89NvQuP+wasP+9gS80dFq1CJTXx7qUVf7yGGzL
         /sYLQPewt7e60gEgtyPdJb1NmSEpyIgbDSzKdMxR7z/ypqlBrHvcIFZQYUefKrPGZXJC
         aBhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rSae6Vewe/pKHx71bupn1zsciiuzANk0QhhWFPsLGxo=;
        b=qKaljeOxOg01+cVlR7iq9xd1zmMZjB+ZAJRa55kgps3Zfzwy8OSk+CF+4wnHdC07V3
         9InKEmbNDN2gyfOUV1STCHrLXGMk0E6GF1dphkApPOPrfM0eViAypIregnX5IFLJelpw
         uFFSDk04XCymG1Q3ptauigcIgcjSrgt9yLpaZHh3ft2ks3jQgi+aw4x8wPsYLYNP/oMD
         owKLzqCFK/7pGAT/tdCRgZw43nITrmbQ7IKdsuOd2Ghf+4jdbPr6XLC5BiyH9FJMh+nN
         H4XBq2uCYkw8p+tFlF7EF1F6dUA0U/9rMz0wXOVQF7kwPtAI/Bh2kQ4/Z157IXaCTHIx
         1Y/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CH3DXNhk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v5si836436vsl.0.2020.03.30.09.20.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 09:20:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id r14so6343383pfl.12
        for <clang-built-linux@googlegroups.com>; Mon, 30 Mar 2020 09:20:59 -0700 (PDT)
X-Received: by 2002:a63:f963:: with SMTP id q35mr6219088pgk.381.1585585258519;
 Mon, 30 Mar 2020 09:20:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200327100801.161671-1-courbet@google.com> <20200330080400.124803-1-courbet@google.com>
In-Reply-To: <20200330080400.124803-1-courbet@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Mar 2020 09:20:47 -0700
Message-ID: <CAKwvOdmO_0yosb-k+UHenSa5W5HtZgPLFaHfapxD8WiDNpFJUA@mail.gmail.com>
Subject: Re: [PATCH v3] powerpc: Make setjmp/longjmp signature standard
To: Clement Courbet <courbet@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Segher Boessenkool <segher@kernel.crashing.org>, "# 3.4.x" <stable@vger.kernel.org>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Christophe Leroy <christophe.leroy@c-s.fr>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CH3DXNhk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Mon, Mar 30, 2020 at 1:04 AM Clement Courbet <courbet@google.com> wrote:
>
> Declaring setjmp()/longjmp() as taking longs makes the signature
> non-standard, and makes clang complain. In the past, this has been
> worked around by adding -ffreestanding to the compile flags.
>
> The implementation looks like it only ever propagates the value
> (in longjmp) or sets it to 1 (in setjmp), and we only call longjmp
> with integer parameters.
>
> This allows removing -ffreestanding from the compilation flags.
>
> Context:
> https://lore.kernel.org/patchwork/patch/1214060
> https://lore.kernel.org/patchwork/patch/1216174
>
> Signed-off-by: Clement Courbet <courbet@google.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> Cc: stable@vger.kernel.org # v4.14+
> Fixes: c9029ef9c957 ("powerpc: Avoid clang warnings around setjmp and longjmp")

Third time's a charm (for patches that tackle this warning). Thanks
for following up on this cleanup!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

The extent of my testing was compile testing with Clang.

>
> ---
>
> v2:
> Use and array type as suggested by Segher Boessenkool
> Add fix tags.
>
> v3:
> Properly place tags.
> ---
>  arch/powerpc/include/asm/setjmp.h | 6 ++++--
>  arch/powerpc/kexec/Makefile       | 3 ---
>  arch/powerpc/xmon/Makefile        | 3 ---
>  3 files changed, 4 insertions(+), 8 deletions(-)
>
> diff --git a/arch/powerpc/include/asm/setjmp.h b/arch/powerpc/include/asm/setjmp.h
> index e9f81bb3f83b..f798e80e4106 100644
> --- a/arch/powerpc/include/asm/setjmp.h
> +++ b/arch/powerpc/include/asm/setjmp.h
> @@ -7,7 +7,9 @@
>
>  #define JMP_BUF_LEN    23
>
> -extern long setjmp(long *) __attribute__((returns_twice));
> -extern void longjmp(long *, long) __attribute__((noreturn));
> +typedef long jmp_buf[JMP_BUF_LEN];
> +
> +extern int setjmp(jmp_buf env) __attribute__((returns_twice));
> +extern void longjmp(jmp_buf env, int val) __attribute__((noreturn));
>
>  #endif /* _ASM_POWERPC_SETJMP_H */
> diff --git a/arch/powerpc/kexec/Makefile b/arch/powerpc/kexec/Makefile
> index 378f6108a414..86380c69f5ce 100644
> --- a/arch/powerpc/kexec/Makefile
> +++ b/arch/powerpc/kexec/Makefile
> @@ -3,9 +3,6 @@
>  # Makefile for the linux kernel.
>  #
>
> -# Avoid clang warnings around longjmp/setjmp declarations
> -CFLAGS_crash.o += -ffreestanding
> -
>  obj-y                          += core.o crash.o core_$(BITS).o
>
>  obj-$(CONFIG_PPC32)            += relocate_32.o
> diff --git a/arch/powerpc/xmon/Makefile b/arch/powerpc/xmon/Makefile
> index c3842dbeb1b7..6f9cccea54f3 100644
> --- a/arch/powerpc/xmon/Makefile
> +++ b/arch/powerpc/xmon/Makefile
> @@ -1,9 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  # Makefile for xmon
>
> -# Avoid clang warnings around longjmp/setjmp declarations
> -subdir-ccflags-y := -ffreestanding
> -
>  GCOV_PROFILE := n
>  KCOV_INSTRUMENT := n
>  UBSAN_SANITIZE := n
> --
> 2.26.0.rc2.310.g2932bb562d-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmO_0yosb-k%2BUHenSa5W5HtZgPLFaHfapxD8WiDNpFJUA%40mail.gmail.com.
