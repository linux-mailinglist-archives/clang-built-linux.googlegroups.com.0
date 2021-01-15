Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBW64Q6AAMGQEYFD4WPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 658E12F8594
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 20:34:52 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id b11sf3462318lfj.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 11:34:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610739292; cv=pass;
        d=google.com; s=arc-20160816;
        b=O2CtrEvHI6M8dfoGAgQSsdQ7WAUN4pYnDnxs6NJi0OXIBVzRAvAZx9yPxyqRnkaK2S
         kbCvIa57Ou/SWzpYoRgYBAHYy+vOlM1gnLkiYqMXomUHSuwiYEuRFO4QXRjmcAoqnB9V
         1Cmu0b8QFvERnDAkgCAF4FiS1sOCVv0gNfgBZBpZ8gt5oE6YALCm89Ysh5HQWU/EtXTl
         4aeYB1FXSt2Hi3NyWgUZyUCiMfGZUUp9ONF2+R5eSLEsdhv30mH1nGvNoRw1/HGEfixT
         9dxLF00gKUdLVtfCqhZptGVJXHqz5Vp5dSF73JiErwKji9ITV3k/T9ZJA/COAZzk/7ay
         MGWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=fE6yUHjyknSzWg4gLIlpesl3r2XiCfu07zpIocG4w7U=;
        b=DQcuOpQ142h8a8SPmAdCYzR05ZFS8UnCjY0ajULv08bVEVf+Z6+xc2I0OU6Mc036oc
         Ud7wW8WoTqMtydFNsA9ar015Bb/WowILJhw5ewX/895dKzjMkHtjL2gd6yMo6vc1BRgp
         6BjtMqQno1eyMUCF9EyN6HJIDcQnDCynpAHBlpm2IC5cYwwYG3FioAyo18SzctYYKawe
         p18dDwd0Ujh7r5Kw6q6Ispjc2ZHpmGU21qGFtm/B5CwJ/iPHJY+4ylbchm7uzpLk+ZiE
         dXenxhAWRq/cC1RcL5TdGG68wAGsdDpPhGc9+qu/gi5GTBNs6V4HnX6lCIvaMzwV6dlf
         3/Xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=gqTf7Ku8;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fE6yUHjyknSzWg4gLIlpesl3r2XiCfu07zpIocG4w7U=;
        b=CRYnmX+72v0IAMmkrUQcIrhO21+arIc+n77Ngn/gWhmhUSD+lo8T0ucRuHLFqI9SZN
         feQM8fXD9T98nvcZKcpgbGEzIejH6j2OZu+5EuOiVAW/kByjtOQPxTf1ruZBgnFjiTBt
         t1LOR7hqcVnPN/F54Yey94RycyZ8ze125gWeUYE8MQrYDEwhgSNzCLsiteXtrFqz/N/n
         YWTa/G4vQqB9CMs6YkMR6kem2y7UtUMRY/i6/dQfwv8QVImvAhiN829EbW27FXIhr8Af
         f/GAd7+pwDtxzvqc8M1U9CnRy1Y6VX8s1fdtSbNQ0XuEUVLq3qkJ8WcaNSJSjb18KkiW
         V+zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fE6yUHjyknSzWg4gLIlpesl3r2XiCfu07zpIocG4w7U=;
        b=IKtlIj/zn7eW0RJtPl0cI7F1n3FzP7Ypa/XIov+ryDi3+2cxMlOYj1ubenrp7zhb9L
         /svN6Ra+t5lu9o2o4UFjuqeCoWDKNp4pHIGFusju1PsXxV6z74YkFdctx7HChpR1AKDR
         /nxYsEwuE2BUtBb+UjZ0bYbYlsAt66J5STkZN0gVFw1jltcoKsCu2mklsvWekKiJpJjg
         vHJuoJ4dD1OuhbkQKJNePTiC2kYoSzA7xxRrQMbt7FEMTn23pKtp69PS5LreGe81qd3O
         M0MTC7IN0qrtUnC2MwZFFsSN//sc01oLzVZlCfa5w95sfl2PZnSfNG6OsvkpYPng3vSt
         6dfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320KF+OtpB+JLnBtr2LdLzrm7AHBexKpYn1PsGVTwVlelPQpsju
	GZQAjCeldVIvJt5fSXYo2Sw=
X-Google-Smtp-Source: ABdhPJyfhKJZtXwqjG9Vsh0ef2gQZ8pfsM2Y9JL9u7BRyKBTYqBG5EH/59+lmQQkzBDSxsBgaJzuoA==
X-Received: by 2002:a05:651c:48e:: with SMTP id s14mr6196209ljc.159.1610739291991;
        Fri, 15 Jan 2021 11:34:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1a5:: with SMTP id c5ls1739941ljn.10.gmail; Fri, 15
 Jan 2021 11:34:51 -0800 (PST)
X-Received: by 2002:a2e:2c15:: with SMTP id s21mr5999038ljs.39.1610739291059;
        Fri, 15 Jan 2021 11:34:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610739291; cv=none;
        d=google.com; s=arc-20160816;
        b=H7uWhUX0W9IVGlGCjuaPhDVSFc2Qhaoc9Ljzzucty2RgOqxR2c92oHszn3jvPfi/w4
         Asnb+iREQ+nQnmvg7xOOea2qL9UmU4IpOLM0AZm+YXGsz/S59HRpU1KGyUzBp0dU/sve
         LJOMuX++nHIlpbRIPdFx+CIQFKCChlBijwo27o1V6hqY/CNtkEClEhfi2nsN14ogmZlr
         dnqjoosrEISb8e/TzkJZ2Reo3dUkGEWYn+BSPqj/W26+MkuVCH2d/oDdz0rSgDEsm68n
         6aLZy+WCx2FaV2B1J6JnsASkI7y1gvjv0i6j0eBL1OHum/kGtmSheGdGFd8mBiUN3FUm
         P5fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3WpvQp1xd2M6YCL4iuaoOe6KYDa0I+oc+7FC+fbqdyI=;
        b=QWAuurpqicuyDNG83efNHhA3sNIJ3qp2AB5ybPGVVTyqLk3lnyCwVRXHlPlpy2/+Ku
         00Lsk1KCfYq9MCTZG3GcrxZgK+dDXrKUkYfTJhE/xDgD8rPC0HjlbchN6nHt4bwx0NQG
         3N48q+H/YqT2qXMU60J4bIo+NuwnbrrDIWGLmxvj0q3Q7yZfbTp+wJPGOp+SP8lrFeYZ
         xVrR+jZeOEyODlsSxTIbsMRSsh/JkZ9DG//SwPV15cGba841Hd8qWN7BZ/pTkfZgpTsf
         p+ElPruSJ1q7TdjeWU7bxGTUJCRe4OJdfdizaeXxVcMANzt1U8eUc4kCT528kyfmqLLi
         tkog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=gqTf7Ku8;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id 7si393145lfp.13.2021.01.15.11.34.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 11:34:50 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id v67so14835539lfa.0
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 11:34:50 -0800 (PST)
X-Received: by 2002:a19:495b:: with SMTP id l27mr5717193lfj.451.1610739290762;
 Fri, 15 Jan 2021 11:34:50 -0800 (PST)
MIME-Version: 1.0
References: <20210115192622.3828545-1-natechancellor@gmail.com>
In-Reply-To: <20210115192622.3828545-1-natechancellor@gmail.com>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Fri, 15 Jan 2021 20:34:39 +0100
Message-ID: <CADYN=9+vAN+jiieKxpTYa=E6zdJfrcbQPCt3tokopMMs+Mnd8Q@mail.gmail.com>
Subject: Re: [PATCH] MIPS: VDSO: Use CLANG_FLAGS instead of filtering out '--target='
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	linux-mips@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=gqTf7Ku8;       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
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

On Fri, 15 Jan 2021 at 20:26, Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Commit ee67855ecd9d ("MIPS: vdso: Allow clang's --target flag in VDSO
> cflags") allowed the '--target=' flag from the main Makefile to filter
> through to the vDSO. However, it did not bring any of the other clang
> specific flags for controlling the integrated assembler and the GNU
> tools locations (--prefix=, --gcc-toolchain=, and -no-integrated-as).
> Without these, we will get a warning (visible with tinyconfig):
>
> arch/mips/vdso/elf.S:14:1: warning: DWARF2 only supports one section per
> compilation unit
> .pushsection .note.Linux, "a",@note ; .balign 4 ; .long 2f - 1f ; .long
> 4484f - 3f ; .long 0 ; 1:.asciz "Linux" ; 2:.balign 4 ; 3:
> ^
> arch/mips/vdso/elf.S:34:2: warning: DWARF2 only supports one section per
> compilation unit
>  .section .mips_abiflags, "a"
>  ^
>
> All of these flags are bundled up under CLANG_FLAGS in the main Makefile
> and exported so that they can be added to Makefiles that set their own
> CFLAGS. Use this value instead of filtering out '--target=' so there is
> no warning and all of the tools are properly used.
>
> Cc: stable@vger.kernel.org
> Fixes: ee67855ecd9d ("MIPS: vdso: Allow clang's --target flag in VDSO cflags")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1256
> Reported-by: Anders Roxell <anders.roxell@linaro.org>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Tested-by: Anders Roxell <anders.roxell@linaro.org>

Cheers,
Anders

> ---
>  arch/mips/vdso/Makefile | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
> index 5810cc12bc1d..2131d3fd7333 100644
> --- a/arch/mips/vdso/Makefile
> +++ b/arch/mips/vdso/Makefile
> @@ -16,16 +16,13 @@ ccflags-vdso := \
>         $(filter -march=%,$(KBUILD_CFLAGS)) \
>         $(filter -m%-float,$(KBUILD_CFLAGS)) \
>         $(filter -mno-loongson-%,$(KBUILD_CFLAGS)) \
> +       $(CLANG_FLAGS) \
>         -D__VDSO__
>
>  ifndef CONFIG_64BIT
>  ccflags-vdso += -DBUILD_VDSO32
>  endif
>
> -ifdef CONFIG_CC_IS_CLANG
> -ccflags-vdso += $(filter --target=%,$(KBUILD_CFLAGS))
> -endif
> -
>  #
>  # The -fno-jump-tables flag only prevents the compiler from generating
>  # jump tables but does not prevent the compiler from emitting absolute
>
> base-commit: 7b490a8ab0f2d3ab8d838a4ff22ae86edafd34a1
> --
> 2.30.0
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADYN%3D9%2BvAN%2BjiieKxpTYa%3DE6zdJfrcbQPCt3tokopMMs%2BMnd8Q%40mail.gmail.com.
