Return-Path: <clang-built-linux+bncBDYNJBOFRECBBR44WXWQKGQEWMPVPLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id A9743DE472
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 08:20:55 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id c27sf2458523lfj.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Oct 2019 23:20:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571638855; cv=pass;
        d=google.com; s=arc-20160816;
        b=kBj7BXrOLg2vECARbMF9jLwC8XIgyu0a8qJWQ/fU34zi/DEQl8tnOx1AWJw9qLymVy
         c818JS7NNC5yyy1DWK/LbrYO2NKalvJrmMf4KCVb4iZCsp2PIMEiAOyR5RCaDk4OpEyG
         ethb9snSoBg9hdgx4ObU9Z1izjhNoMiTsn8DP+u/kPLK+tYVJSESAIo9a9S35zpDnv0f
         BmkAVkg/VUwZEJ7FDcvBY1HOCYb3CDgMnfciC8N0QtBQARQRQj8GGFOl/reU9JGwczue
         QmYq/o2DBk1ZDKqXdF9jwsns7OFnuDakWwUkr/5QhDb6XRTzdov5LTUx+Psb4P53Pkdc
         XD1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=gcKgERmOxyx7B8Hbn7Gj4wN6uv8kBHZKUstd7BejQR8=;
        b=ZaybuI152vOzy21cwyGE+Pl3l4Rd+G6Dd1w0dt5oQi6oxFVkIZFFkMaj7hz/Am7tYi
         5muG7mfRJkR6pRlsD8CPeRzrhSm8vlknr/ppun1KDspcEoj9wryFzEfDn/HWnXifZH3X
         IGleOLxhe0g4tBMhTk2J/og/OZbpUGBBWgg5QHkLXKAHIsBJia5Ii25D+/Ny5OWORp2Z
         GBp4+Iz3Ai4uz+Hzdkk7bE9gvRt0BTmJzVTBEkKBsHRXQSds7cblWoKsBRS3CAigL9Mu
         2L5cVzE2CzXYT2Dctj9LAv0R3Sp1hpTEhuNIyODEvmNSNOmUyvGH5NgF+cy8zJ3R74b4
         Mr8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=h6kY1+sn;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gcKgERmOxyx7B8Hbn7Gj4wN6uv8kBHZKUstd7BejQR8=;
        b=i++B5yC3H3zIPMPi4ySVFDLvhL3adEcu4/26YlAejrGoKZRKkwggxTFsYFw1ZTcyWH
         P8kmjpH6eGr1JIALLxE9ZFYM0eG4UMNXv22Xe9jrBkzAq9Eq5Thui65p0SMfTwgwYQNF
         hr+jW/Ud2CaPvNrmkah15B8iWD94rJL6k3OWe2o901USDfyZkHMW9yXHyrUJ4iWmis1O
         DRvTyplpRCEHFruA4zEjRwKwZSV/bDqq9lb1xpopDVxy/CWcLPUVwVzLcMsbEMYtZenp
         ++m/Y4tB72p3LJvapiLxwipgDh8wRK/RSUFaB+bM0Yw/LkYLcNuUv229B2usoCS9EegM
         yEOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gcKgERmOxyx7B8Hbn7Gj4wN6uv8kBHZKUstd7BejQR8=;
        b=d0+bjRgHSqi7Ffh1qoChcx770JApTZ8+2KAs9Y9D7mGCp24NLLExcyIVkRvemnXixD
         T5qxSoPhUlQMbTtd1FWoYODMacXlQdK1vnSTpkLB2USxT6+EZ8GCsTwOLOZ0CDBliDZq
         ulo3Uo2RGpL9EhVlZHuytjBppFiEHZJqDkbqR73xpLKQeI/Mt5mFHHSLYjTLVsKdeA4S
         mjtnu/WlsqYo1MpgUw78aAjXrubCkTi545f6HPlDGP3FdIhTzQQTQCldtTFbpYEhTt8/
         NZ7vkLxtBpvZcm1r01rWB5aG6T8eOjrRm5eBw7zgbKDW91HwaIUdreXlOBk2spyCixU+
         gpfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUxIM3CKRvCsDfVmPWcF/kPZ+tzDCO6aYOh9MaqOFPn8qg08uRy
	LtGLBEieoISf+IyHgmT9VD8=
X-Google-Smtp-Source: APXvYqzluYTKJOZ8wRcUU26uQcEj18qHeD+PBeCCshuxqz8rDSNDxxA6gtTa/KelRcFUULwU+PCZpQ==
X-Received: by 2002:a19:640c:: with SMTP id y12mr14542900lfb.78.1571638855244;
        Sun, 20 Oct 2019 23:20:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9246:: with SMTP id v6ls1383320ljg.6.gmail; Sun, 20 Oct
 2019 23:20:54 -0700 (PDT)
X-Received: by 2002:a2e:8945:: with SMTP id b5mr9559175ljk.215.1571638854741;
        Sun, 20 Oct 2019 23:20:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571638854; cv=none;
        d=google.com; s=arc-20160816;
        b=BnqNi9VLpkNFCTllPnyAUPSPiVDxoHCQHTjhk7KyyOD+DkWpq6JMHiKLoRZPLoBmpI
         98U3rVcKwNTUydxyfLWL3CNxh0gBVcYW1uYNuPneKNJXLox9VsH3p2AmuyRpjARsIZuV
         falMCxnGjluOciiTa3Rzp9JFhKKaATKnyrtxIt/11GR8DFwPTCsVJXxqqRc6uXisW+Jg
         zJSlkjzDCFrG1zXt5J18bCUUdk9zSoWPaqeEPU4DIip4vh+pA4jmIDD5HhEbohtGbTJY
         Br+q/Pxv6BdqPRyhy6NTbiHtXPzpULm5slRwYmCFXoVueVa3lbTnYid8PYBJd+cWhYdK
         hddA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CdvcOGCYVL+T0dd/Qovdpy0EycQbYWDHOCHJnmgemls=;
        b=kVyfRcZ8kt+oeHDK01kK8DO95F9BH9a+lRMyZw5BZfJgJevodG4NHyH1mJW8mCuNS9
         gTcvafR/OqOjUKLo5e0T7GKBESoJKw5XEhLdSnYlzOecW5Liud19Szi4iHeBvRQahi5i
         JcQOZMuHT6zTgQqSrh0kyNUxzpoT7CMcjaAMXDUfza5D3aEkh37jggp139JCbMw2SEWI
         QVnQozqoZovThFBY0oTNecilw/gEXcDvzNK3LQPGMmQ2PT+kE/ffQmHkRKNxuE7EisrB
         Lx+2pFcRP0w/LR5kCTfutcWewUeEisSCP+RK3h2nneVlam56RnudInyPkdp8W7SpZ76V
         QHpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=h6kY1+sn;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id z26si8469lfq.4.2019.10.20.23.20.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Oct 2019 23:20:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id l10so11955815wrb.2
        for <clang-built-linux@googlegroups.com>; Sun, 20 Oct 2019 23:20:54 -0700 (PDT)
X-Received: by 2002:a5d:43c9:: with SMTP id v9mr11140606wrr.200.1571638854218;
 Sun, 20 Oct 2019 23:20:54 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191018161033.261971-15-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-15-samitolvanen@google.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 21 Oct 2019 08:20:43 +0200
Message-ID: <CAKv+Gu-kMzsot5KSPSo_iMsuzcv8J1R5RLT9uGjuzJsxCVUPPg@mail.gmail.com>
Subject: Re: [PATCH 14/18] arm64: efi: restore x18 if it was corrupted
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=h6kY1+sn;       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Fri, 18 Oct 2019 at 18:11, Sami Tolvanen <samitolvanen@google.com> wrote:
>
> If we detect a corrupted x18 and SCS is enabled, restore the register
> before jumping back to instrumented code.
>

You'll have to elaborate a bit here and explain that this is
sufficient, given that we run EFI runtime services with interrupts
enabled.

> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/kernel/efi-rt-wrapper.S | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
> index 3fc71106cb2b..945744f16086 100644
> --- a/arch/arm64/kernel/efi-rt-wrapper.S
> +++ b/arch/arm64/kernel/efi-rt-wrapper.S
> @@ -34,5 +34,10 @@ ENTRY(__efi_rt_asm_wrapper)
>         ldp     x29, x30, [sp], #32
>         b.ne    0f
>         ret
> -0:     b       efi_handle_corrupted_x18        // tail call
> +0:
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +       /* Restore x18 before returning to instrumented code. */
> +       mov     x18, x2
> +#endif
> +       b       efi_handle_corrupted_x18        // tail call
>  ENDPROC(__efi_rt_asm_wrapper)
> --
> 2.23.0.866.gb869b98d4c-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu-kMzsot5KSPSo_iMsuzcv8J1R5RLT9uGjuzJsxCVUPPg%40mail.gmail.com.
