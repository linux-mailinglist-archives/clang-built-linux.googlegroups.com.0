Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGURQGEAMGQEUR3BOZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAA43D7CBC
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 19:55:39 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id e5-20020a05651c0385b029019a306f998bsf2134020ljp.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 10:55:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627408538; cv=pass;
        d=google.com; s=arc-20160816;
        b=zxcfDprIvfUEp1/JDvoh5If9RacB+YDagHJqmHcv9LNXJMti2wmYH2vWKt98ML+rwC
         yOe4jl1dOpYXZPFIyUafdFS5DpDrHdJVJZ72ikyD0w1dAQsJvq8cGsH4K9ZReqKZSldb
         F6nH5T441nbnr9gW7eRyLH0qn8u4ohPXOPchCL6HDmuigb2ANyU8pqtXwkbM5nkVmPYm
         E3x98UfoqqyraNPGa+f0hSM0TmleYj8Pjl+JAbyiTUCT0pDB1CxeKUntSEeghu7/SCWi
         tuRfepalOxmUJYyiB3ID32syq2evr1Belbm6Ux0g2LUJmyJYtEImQfoxV/ohVBjgMML7
         JKtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Yh5EaXGUFkV2Ovfylu6fPCB6H1v6i2n3R5bdknLGel0=;
        b=1E2IX3VdOvx+0ZHT3QQOSt20GH/0l46+/IzGlV0I/9Hc9AkU718GzlTACfyIpIuIqH
         TcTuBxJgKNafxrgV1XZ+hnD7gEYWjOnRP6xK8Q9mWN6OEHSRQVVSThi9jbYs9vJ8fYfi
         A93U8r1Kbu67ZJb+wIG/G8EUuSMJphE3hmYFFCJLnm+Jq+lWZiFL9JL8ZGlIg/TZXx0i
         vEDMnltaDRjHH3CjsO2ZC6tUL2wxy3msaRSqzU3fz3pna9v0YHV8cR7bDf5ZtYbAENf3
         lg86APMZkutlOPpII8PfP2Jdj3zlXuPiD0hBhyMlnOlIE5MdXSppgmpPBHZd/y9hX9rq
         8Eow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q88+W4TP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yh5EaXGUFkV2Ovfylu6fPCB6H1v6i2n3R5bdknLGel0=;
        b=gLn3ZerKl7IP6xuUN1VdPLRcGkQrO9UI1whVMpyIDAO2INhii4xAdVjZPNR48ST4hW
         lq1bSuI8Tlfze9kDPUTRRMwOVuB57X4GPlwyl+P2dg3XjsM8NvobtDTkLytazL7Ywgiy
         XowujypqQ9sFmsTrx1Kyvsl856isXttouXweB2/GUQpLo+vcb3Te1O8cOMCGSYOMfgu4
         NWu0VdPFx52x76LOoFZSaZmr2s9es81hVeKZgq9cIVpbRpnMwvCUF9W/vVClhvmyvNa8
         CPZBft3OnzAn+UPytHEpK/BNhtlSogbvqEvj9DGPbmZQToKPPsPDExeZECum8bzgDeDx
         +rDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yh5EaXGUFkV2Ovfylu6fPCB6H1v6i2n3R5bdknLGel0=;
        b=SYtPGi6pakUeg4ViPpdR74zAqrk8Zv97BPTh2LRX41qk6AcmtuHGQXohZqpCPyrbEx
         zROS0bGLVBGaA8j3un0lzIRGpK0M9BzFO/mrO01LEZwLFnFGKs+GuMl4N8Xruaqyuzfm
         bNcundMwfsT76Y67cP4GMFwiqsFwMaTHatz4t8ThFpA0t8Ypgror/d2SNVDPhgsz8OCO
         /czvoUw8j0bFGBuk3inOSyrt3W3UE7jGgEywe1vR9cNVUAIUlsynkeNiSI5sgvWBC8jp
         h+eAt5xoCz/o2PrgmI8P90lAZUwdHQ0CHz/xKVY0xAeKTINROPttE5NsX7TyzYnH1iQP
         M30g==
X-Gm-Message-State: AOAM532ASyHmL73jFN/4PWcoHiGUAOIC/IzI0a55vwX1hA0llcJxrV5g
	I8Hts+njQOBAha1QDh9OOpY=
X-Google-Smtp-Source: ABdhPJzMyntjLm4mC9RcZeZMjL1hCOK+WhzrVzFRpdTGrkzzH9tcJaOoVdH4mZve+VtTh4iRTrDG4g==
X-Received: by 2002:a05:6512:20a:: with SMTP id a10mr16782565lfo.205.1627408538650;
        Tue, 27 Jul 2021 10:55:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:b89:: with SMTP id b9ls922751lfv.1.gmail; Tue, 27
 Jul 2021 10:55:37 -0700 (PDT)
X-Received: by 2002:a05:6512:401a:: with SMTP id br26mr18031488lfb.236.1627408537579;
        Tue, 27 Jul 2021 10:55:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627408537; cv=none;
        d=google.com; s=arc-20160816;
        b=x4QUXUYT+slaTFTVHA0CrzmPhwiErw87IAlDE3EE08Ja1Z0SCSxGclIL9HwMcx1UpZ
         XWO+fOSXUqHVcTGF3BFeePCl05XtpSriV1HoYSzaa5NkmRomfymXePl8TRL4iNK97V0I
         kxKKvSKrhysF0b7Bgqpnu5UIB1IjcO2VtrY+xRhOAR+McUyycK0K1wm2Vq8YIGzr/ggq
         W6gqWtUNjJuJgGcpVw8DTIgIwwp3yi7UVGsoCRR+TsD9XuWa/Q13/zQAjnomCqCcfX0+
         w6lhHOL3alS5D4/3XJAMXJwxExSY2sL7tFxNgo3XviZWWJcYF2XeAp0VuyO60k+c9QYE
         3UoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/VbJOr8r6+EQm5drNSCNTr2Un9oLoU3QNaM6UXCSAXY=;
        b=zJ3xfVKpzQX/Sbn4MRk55vE1lY7mmBUio4eT9iWku0WbIzWvDrPNqGVYdCt4BJpT1t
         ayUxetgOoNdYiFD9Pn28aQDv1sybc2RW/lepyumL46Uo8lqJxdFPmVVWlONJx++6cUt4
         V+vI2Z0GMcZvjimSAYU9L0Tq399UJsSOyqHlvFGQ4MfdyJ+UmfzG1A2gtTNuT4LTHqsa
         2ST/jOFGICDjJimq168N0bLxrkLZDgG2R1ZUDksbKzjHLRHvwm78v3wc3ovma9ZI8QMA
         cmDsNluoD6YefEsS86e98uu42KkWMP39Fu6ZJAD+hIJqkV7VViWsAzBd/5DBkjMZVSBj
         xYjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q88+W4TP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com. [2a00:1450:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id r190si148033lff.0.2021.07.27.10.55.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 10:55:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) client-ip=2a00:1450:4864:20::12a;
Received: by mail-lf1-x12a.google.com with SMTP id d18so23129299lfb.6
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 10:55:37 -0700 (PDT)
X-Received: by 2002:a05:6512:32aa:: with SMTP id q10mr16877203lfe.368.1627408537141;
 Tue, 27 Jul 2021 10:55:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210727141119.19812-1-pavo.banicevic@sartura.hr> <20210727141119.19812-3-pavo.banicevic@sartura.hr>
In-Reply-To: <20210727141119.19812-3-pavo.banicevic@sartura.hr>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Jul 2021 10:55:26 -0700
Message-ID: <CAKwvOdmgSxx-7o6GKd0aLESQvGssteq_GkNFW11a4fatgVeZpA@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm: include: asm: unified: mask .syntax unified for clang
To: Pavo Banicevic <pavo.banicevic@sartura.hr>
Cc: linux@armlinux.org.uk, ast@kernel.org, daniel@iogearbox.net, 
	andrii@kernel.org, kafai@fb.com, songliubraving@fb.com, yhs@fb.com, 
	john.fastabend@gmail.com, kpsingh@kernel.org, nathan@kernel.org, 
	ivan.khoronzhuk@linaro.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org, 
	clang-built-linux@googlegroups.com, matt.redfearn@mips.com, mingo@kernel.org, 
	dvlasenk@redhat.com, juraj.vijtiuk@sartura.hr, robert.marko@sartura.hr, 
	luka.perkov@sartura.hr, jakov.petrina@sartura.hr
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Q88+W4TP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a
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

On Tue, Jul 27, 2021 at 7:12 AM Pavo Banicevic
<pavo.banicevic@sartura.hr> wrote:
>
> From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>
> The samples/bpf reuses linux headers, with clang -emit-llvm,
> so this w/a is only for samples/bpf (samples/bpf/Makefile CLANG-bpf).
>
> It allows to build samples/bpf for arm on target board.
> In another way clang -emit-llvm generates errors like:
>
> <inline asm>:1:1: error: unknown directive
> .syntax unified
>
> I have verified it on clang 5, 6, 7, 8, 9, 10
> as on native platform as for cross-compiling. This decision is
> arguable, but it doesn't have impact on samples/bpf so it's easier
> just ignore it for clang, at least for now...

Did you test ARCH=arm kernel builds with Clang with this series applied?

>
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---
>  arch/arm/include/asm/unified.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/include/asm/unified.h b/arch/arm/include/asm/unified.h
> index 1e2c3eb04353..8718f313e7c4 100644
> --- a/arch/arm/include/asm/unified.h
> +++ b/arch/arm/include/asm/unified.h
> @@ -11,7 +11,9 @@
>  #if defined(__ASSEMBLY__)
>         .syntax unified
>  #else
> -__asm__(".syntax unified");
> +
> +#ifndef __clang__
> +       __asm__(".syntax unified");
>  #endif
>
>  #ifdef CONFIG_CPU_V7M
> --
> 2.32.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmgSxx-7o6GKd0aLESQvGssteq_GkNFW11a4fatgVeZpA%40mail.gmail.com.
