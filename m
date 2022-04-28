Return-Path: <clang-built-linux+bncBDV37XP3XYDRBKGHVGJQMGQEFZAKOUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B63513053
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Apr 2022 11:51:37 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id 26-20020a05600c021a00b003940660c053sf1509165wmi.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Apr 2022 02:51:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651139497; cv=pass;
        d=google.com; s=arc-20160816;
        b=hMAWkmMgsJoKbSszBtQUplbIte9Ak9UMu3AA2wJMNjs9HN+kX7w1IWfAnmM1eCQk4a
         0eh/dsmSt9w8HuOSfule7O/Fr3Pco9i44D4K0G538GQ1vsM/KyfxrW2Y7+VxS1BKKzhD
         IiHGtgp8C/K0TAt+yjGFdMLXTypGKV62Qd08aa+2T5yRIz4iA1bP8DNbA9VYTowq4gyJ
         /jdUQNyg3UL0uJbeh0VXnt0n7Sp2S/KLVCcHG+ok83ZTV4Se9OJoNoYYTMfuU28McDw8
         yiDKZUvdSfbiwUD5OxWDdXXdFjckSaMZ/+7dvNsnUAs4AYXmjz2kdbT/RC1HXFe8LETn
         J8Vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fZ+dQfgmLucgwN4rvCTJefcHU/D0rK1GIeSEfVYUvHo=;
        b=KaI6dX//agJQGPyZDTLi4VhWFQqIFm+KmDv/2WaIoSU8rVa8x3AyfTMutIceXRx3rr
         FrUHsJBAr4kV+ytRLx7KYqdpYqWTFFLfiQn4EgjLXMsBPIV7XI1c0LSbsyRCC5JOgeRS
         fFEQC+3ltNP0A3AG5cavWjTfEi/PQDrjxmktPFmRFpYLDDrLZd/Y9O1eGeOqg66SaGT+
         fSTTd363Fd0G4KTnyn+BdPgCzrKNrEg3YwMLP4dxvVZWU1HcmMqbCpYKQ6KD4NXSMVxo
         wGzfi4Zf5WPq1v+Kmc9bjUZ7TlI1sBeTM/AVwc0tikvyp2CR0+QvRXy5/UVKLJwNr7tT
         bgvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fZ+dQfgmLucgwN4rvCTJefcHU/D0rK1GIeSEfVYUvHo=;
        b=fnpNbkWGisCLqYXeag4+aZ5KvTfg+bSSq/q/0KzijFKDWkW8kXCXKef5sOigXDLxYv
         PVRZ6QM3eeuNgm6At2NkcWKHnIgh1Kjm27XGeB3D/CEH0zKqd8gyfGmL55ASLxMn77DX
         PI7wtEX0FXSCX1OeQmSr/g+KJynUP99uX8uDXOSdw+l0aXk30diRMkv56l2djJa8QOae
         o8CoZImEcwWjUqu0QxjvN+bBdEC6+rGHtBJ5IH2/3iuMXKDoESnWNzqQMWv1WF4TeHkB
         WXx4UyoHeZXc9C+1TwRGTXZRBTTgbjPkEHyE8iPhrY+IwQMQW4D2cLZyUJJo23nZwysK
         x4cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fZ+dQfgmLucgwN4rvCTJefcHU/D0rK1GIeSEfVYUvHo=;
        b=RsKpsl0xtyhaD+VzCtmeTDd7PI14g2w5kWI4t7o4Rz4EvcgaYcvKLL8iUq531ZeaaN
         vvSAxHRhTuU3s4uct0oi15kM4ZjbThuroLML3xssVFjm7HqS/c/5LpJShTRe+XRYKhI1
         gAEvvCjhqnKUJK7rpRza5+pM446O3aRRmAFEMkE3LdqUf6IrweGmpTqWB3NjxL1Uz8Jv
         zVbyNjdeK9yf86TpIZgjEmo4E92JzwOftbvPB8u6H8ivH6S7XBeCKFJt1Ap6aQif4KF7
         4Q7Q/AhnC0l3ubFEPd0YODzhlEk0voMEkRUIlZjQdIvOKsYzSvC/tPVnXbe8EK3A6bS+
         l64w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532shDEJ5Dgt8pL88SpWMRh2Mwpepg5XDxhQDx1mXKl93bD5I7i5
	yOKvCNhGNvcNRvPJ19yzD7I=
X-Google-Smtp-Source: ABdhPJymkU2+feXM/keCbeZSuQuDGETzdciWziPv0NmPGQntgWUmpdxSiK956l00/RYWTV/1mfa21g==
X-Received: by 2002:a05:6000:1369:b0:20a:c68b:7275 with SMTP id q9-20020a056000136900b0020ac68b7275mr26515948wrz.158.1651139496736;
        Thu, 28 Apr 2022 02:51:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1ace:b0:20c:3dff:8284 with SMTP id
 i14-20020a0560001ace00b0020c3dff8284ls1321749wry.1.gmail; Thu, 28 Apr 2022
 02:51:35 -0700 (PDT)
X-Received: by 2002:a5d:64eb:0:b0:20a:ecf8:ac9f with SMTP id g11-20020a5d64eb000000b0020aecf8ac9fmr6656597wri.342.1651139495465;
        Thu, 28 Apr 2022 02:51:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651139495; cv=none;
        d=google.com; s=arc-20160816;
        b=euxLeSsMNaX1aWJjugP1SXxLmgjeYSkG11oFPhgGG/g9n35/hBF1VxdNYfm9HFUKT9
         G+Oe97VzgOEbs6Aalgz00GWIJ1ZjDk0WZiwMLIBpkFR/41ckuRxPFwINEtX4WqRydsaZ
         AX4ONl9EPI7ppDzvQijdTvtO8yJjOu0m33tzUmb45B1kligKS4DukRuG1c7ivlrr/VJa
         LTyYfz8UIfLehpwoKqLby0SWerRCpw+cpyaUYDb/4EEh640QS6b5Ft/5aDVoPFziA9tn
         D/sEFOdgNBn1JPVEQNgIktGD7t1q55O1LLo31MtLflBDSPP6aAN+eGOlNpOQc2M/NuA9
         v5GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=jEwh1fTBj4SSuyCD9ObZzswxNk1pQ/qrlZtXlQm090o=;
        b=w9f8+EhNwioh6wganlSNgpUNndcklFfM+xsw2nJJQ0wQN/Ug0iVA8OJeu9Zq1qw1Ik
         /ctC8s2J0qY32GWMX6FHscEzJeMdR5R5I7MuiIIyVbOC9cKTA7/xJKNypI+GxI3jMz1T
         twiXMvanrtoOnMioMoRGavApi/L+OAr+z+Mwuu4YNqcbw9+NOcU15GHp0G7YGKBF9q8w
         SxIriM8XEsNb1VbIwtGp7qgow4mwrO8I2CiCRSmu2jEnl9UOP9g16RTICA2ykOBDE+Vz
         ZPE7dPEL/lJf4xwBlkBpDraa+82i5DPbUdJ6cmDFA578knkvaUyVD0C9AeUPkuNxIC29
         /xog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id m14-20020a05600c4f4e00b003920a4a27e9si281137wmq.0.2022.04.28.02.51.35
        for <clang-built-linux@googlegroups.com>;
        Thu, 28 Apr 2022 02:51:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9C4B51474;
	Thu, 28 Apr 2022 02:51:34 -0700 (PDT)
Received: from FVFF77S0Q05N (unknown [10.57.44.187])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 109613F774;
	Thu, 28 Apr 2022 02:51:32 -0700 (PDT)
Date: Thu, 28 Apr 2022 10:51:28 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com, will@kernel.org,
	catalin.marinas@arm.com, keescook@chromium.org, nathan@kernel.org,
	Sami Tolvanen <samitolvanen@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [RFC PATCH 1/2] arm64: jump_label: use more precise asm
 constraints
Message-ID: <YmpjoNLqKA+prhRr@FVFF77S0Q05N>
References: <20220427171241.2426592-1-ardb@kernel.org>
 <20220427171241.2426592-2-ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220427171241.2426592-2-ardb@kernel.org>
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

Hi Ard,

On Wed, Apr 27, 2022 at 07:12:40PM +0200, Ard Biesheuvel wrote:
> In order to set bit #0 of the struct static_key pointer in the the jump
> label struct

I think you mean jump_entry::key here?

> , we currently cast the pointer to char[], and take the
> address of either the 0th or 1st array member, depending on the value of
> 'branch'. This works but creates problems with -fpie code generation:
> GCC complains about the constraint being unsatisfiable, and Clang
> miscompiles the code in a way that causes stability issues (immediate
> panic on 'attempt to kill init')

I couldn't reproduce that stability issue locally playing with Clang 12.0.0 and
14.0.0 (and just applying patch 2 of this series atop v5.18-rc1). I built
defconfig and booted that under a QEMU HVF VM on an M1 Mac.

FWIW, I used the binaries from llvm.org and built with:

  // magic script to add the toolchains to my PATH
  usellvm 12.0.0 make LLVM=1 ARCH=arm64 defconfig 
  usellvm 12.0.0 make LLVM=1 ARCH=arm64 -j50 Image

... and QEMU isn't providing entropy to the guest, so it's possible that:

* This only goes wrong when randomizing VAs (maybe we get a redundant
  relocation, and corrupt the key offset?).

* This is specific to the LLVM binaries you're using.

* This is down to a combination of LLVM + binutils, if you're not building with
  LLVM=1?

  I had a go with Clang 12.0.0 and the kernel.org crosstool GCC 11.1.0
  release's binutils. I made the constraint "Si" but left the indexing logic,
  and that still worked fine.

> So instead, pass the struct static_key reference and the 'branch'
> immediate individually, in a way that satisfies both GCC and Clang (GCC
> wants the 'S' constraint, whereas Clang wants the 'i' constraint for
> argument %0)
>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  arch/arm64/include/asm/jump_label.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/jump_label.h b/arch/arm64/include/asm/jump_label.h
> index cea441b6aa5d..f741bbacf175 100644
> --- a/arch/arm64/include/asm/jump_label.h
> +++ b/arch/arm64/include/asm/jump_label.h
> @@ -23,9 +23,9 @@ static __always_inline bool arch_static_branch(struct static_key *key,
>  		 "	.pushsection	__jump_table, \"aw\"	\n\t"
>  		 "	.align		3			\n\t"
>  		 "	.long		1b - ., %l[l_yes] - .	\n\t"
> -		 "	.quad		%c0 - .			\n\t"
> +		 "	.quad		%c0 - . + %1		\n\t"
>  		 "	.popsection				\n\t"
> -		 :  :  "i"(&((char *)key)[branch]) :  : l_yes);
> +		 :  :  "Si"(key), "i"(branch) :  : l_yes);

Nice! I like that this clearly separate the "set bit 0" portion out, and IMO
that's much clearer than the array indexing.

Thanks,
Mark.

>  
>  	return false;
>  l_yes:
> @@ -40,9 +40,9 @@ static __always_inline bool arch_static_branch_jump(struct static_key *key,
>  		 "	.pushsection	__jump_table, \"aw\"	\n\t"
>  		 "	.align		3			\n\t"
>  		 "	.long		1b - ., %l[l_yes] - .	\n\t"
> -		 "	.quad		%c0 - .			\n\t"
> +		 "	.quad		%c0 - . + %1		\n\t"
>  		 "	.popsection				\n\t"
> -		 :  :  "i"(&((char *)key)[branch]) :  : l_yes);
> +		 :  :  "Si"(key), "i"(branch) :  : l_yes);
>  
>  	return false;
>  l_yes:
> -- 
> 2.30.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YmpjoNLqKA%2BprhRr%40FVFF77S0Q05N.
