Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHNMR2DAMGQELQASBIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 274743A472F
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:58:07 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id l123-20020acad4810000b02901f1fb44dca7sf3144242oig.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:58:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623430686; cv=pass;
        d=google.com; s=arc-20160816;
        b=sCY/h/xwNmOyjv2D9W/yHqIlgQFVX4yl0JjJWDYAHihOlFiM0nmyn3KCPh7qdLG+co
         VsRv9ChuAfiLW2AL4sd9huDLOjQxf/pOaUcw+400sa6UAo7I6Lal0VXWqShebRXyavyP
         aI8QKgZ8hJrtTJmEjxC5d/7WoSAhb2/OHaIHGkEYMyhjYUW3yzs8dNidFUQNcO7cgUHH
         IKh+ohQmWz2shUNudz796tNpgSXHhyz1dbt/9oH91w3K9kjY0Vz7tF+1IRJxF8Wq9Psb
         F++r9yekLfwp5HEEhm46066UEwSJsCRvnpcOHPFayEplgiFSyaZU31/uVp+0hl+Xx4Bt
         c8/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=ZwXLpmYKOHckfvOXpA65UXQO7KSawAQfDoCufrinGnA=;
        b=whyew4/RgbHB6c+vje3/XsOcozJhASyWABZjShUPejGY4QwlNiy5az8IL/5qkGUMwM
         KFW5WY5W+3Q5m6CVTR4LeVnRTh/LfFpUzKWDUYe/lXG7fvG9B/qfr9IyL/EW6PzyaPOU
         13vS02tK3aGSZywJD52K5h7Httj6AWeuNxUd83YuQI4A9QbVIisLRvSK1EkgmydOEeiw
         oDF07/BG6ixmKj0dFczUFhBONtBKyosAiQeByizhUIIrzm5E22j5u3m5FHLvb65nb8ta
         +SAONOpNTO76gXDHwblNpLbUaA81Xv2lcw9oMXJcwLJQQackR4J+/fEVIwl3aK4fYXfi
         LTTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fytVhHWT;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZwXLpmYKOHckfvOXpA65UXQO7KSawAQfDoCufrinGnA=;
        b=dW1eGO61pbte5pCqALO5RFvJwXCeTQvavLQRWCQE0jlJcdjim04ShJzwym9+zXMTne
         QvYF4sYwy0/EIwNsFnGvebsP5Z5XpaW7CYSdkpc/SnksOlsQPRrCzHz3kI4OrO2wDtDd
         5+5ifudBokCJM4j8Plykl9QiNHY33ZLm8LOyFwctFJSoDi6xdU4lWXugJUXg6yRLq+Td
         Gp/icy5U/S8OEKT5pRyRMVUD6dvmiEPievFXyNL0wfDU4AGqr7txoxOxF39hStuci5d9
         gepEe++E89lbnpEqWusZhtrggdy2S1x15Fx+dyOzVdY8NiwTb/kF7aBgjnjxYi9CdYI8
         xYtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZwXLpmYKOHckfvOXpA65UXQO7KSawAQfDoCufrinGnA=;
        b=rHnG57Ltdj9RUXYtfAup1GkU0nMXBRGAlcBvJojhenB8HV/ot6rAHy/psF5bTynHjq
         MUrYvo9IIR26w9+w1kdojIjKFDKXCWiZe0l1kW5XiAHNIgKlZ9Mo4rpiJb9j6ywvI72f
         PZRqkFQ0xxLhHtzTQxyKG/Drupiz6tFcR9u/R8kdXfr0gimrXvkG76mYXfaLd9fXQq2E
         IFUUMhVQgbDXfmsj1DGoeq8n6pZj/jdRV4nDgEvZqAQvDD5roKLoKp0W7sQ0/cgHmxx+
         i/AU6hTSTsf51vaZ7M1NwnEQiLIXlgPejokZc3Efc5XQT6OS6m828trQUdiFayGEEoSt
         OE7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336GrLi70E8g6p6iA/6fNy8901xFBCjwxCEnrk6b1bEQw1tL9lD
	+566Jy4N/L8pvMwFL/uafLo=
X-Google-Smtp-Source: ABdhPJylxLWMUTBb0Do2RI5TGEjFBnwJGtyDKC00reMcKyk0gX6A21pr/l9xfp0FasyDDw3g9iiaEg==
X-Received: by 2002:a9d:12a9:: with SMTP id g38mr4131553otg.114.1623430685955;
        Fri, 11 Jun 2021 09:58:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:51c6:: with SMTP id d6ls3487768oth.7.gmail; Fri, 11 Jun
 2021 09:58:05 -0700 (PDT)
X-Received: by 2002:a9d:6244:: with SMTP id i4mr3722262otk.182.1623430685652;
        Fri, 11 Jun 2021 09:58:05 -0700 (PDT)
Received: by 2002:aca:d954:0:b029:1f4:1341:a8e0 with SMTP id 5614622812f47-1f7385779c9msb6e;
        Thu, 10 Jun 2021 09:42:35 -0700 (PDT)
X-Received: by 2002:a62:5e04:0:b029:2ea:a8dc:25d3 with SMTP id s4-20020a625e040000b02902eaa8dc25d3mr3827978pfb.6.1623343354697;
        Thu, 10 Jun 2021 09:42:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623343354; cv=none;
        d=google.com; s=arc-20160816;
        b=pbU/S+bhXjxUqfmS7y+Jgtaq8oGVVzGOU4jAoaQ37kWE836TZfC9ylSyXYiclCJCj5
         K50ri4YE4v+TLmXVgEbshCqD2njAMi//6/U9G5mRxt6hhGn6D4oBaz8akNmZP8PMtAWI
         9YOv2gh8o14KxJB8t5dKAFaMPwRsft2oVpv8B67Ez+ERObIccztWe2ZzUXAWRntqe5JU
         XM5aTdF+nWv587bAV1hkAhQcWU+wK+7l2D1p/FY1Q3RyI6qsPrLM5GSHZhukVXOJ3loY
         x2BWnRZtXSsF4IFSXyoeTc9ybnsKWldmbAzqhpiUwy4zudB1qkwUQihJkLJFIZ4SpFin
         0EKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=uqc0QllPgWTJfB4c9Fn5iMeBk+/p3Bvaojks9OXf6xg=;
        b=Cfw29qWGR9aqUfkKBU5p65MWpwmKOoDouo0XnbeDSG8EvFDooGzkMyukJgVkMs+ZCE
         DeknXt8Ah4zBcSTK0+TIQiTheTgp/Bx28/TE1Xm8LzdV7wpc+iyRD++ug+GQESlMuP8n
         HNS2k1Ri8oowt/unJvFPLGy09FdZGFsu2m25E2fiXoHNxAPpyh5xRyesY4QpiXDpG/kv
         6k+JfBo7lDQpNDiGYOrdAdmGHIJQKf61Z54lvZLyIoTEShniXsuwqo7qbPEh4XwfYpAQ
         X76y7n9GTqZGa6P2KUiNrGjNLidg9dQ1laDye8vHVBSiuYGNBG64+d+vCdxZOuewvHK2
         MZsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fytVhHWT;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b18si343754pfl.1.2021.06.10.09.42.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Jun 2021 09:42:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0A61560FDA;
	Thu, 10 Jun 2021 16:42:33 +0000 (UTC)
Subject: Re: [PATCH] x86/Makefile: make -stack-alignment conditional on LLD <
 13.0.0
To: torvic9@mailbox.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ndesaulniers@google.com" <ndesaulniers@google.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "mingo@redhat.com" <mingo@redhat.com>
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 "x86@kernel.org" <x86@kernel.org>
References: <214134496.67043.1623317284090@office.mailbox.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <ea01f4cb-3e65-0b79-ae93-ba0957e076fc@kernel.org>
Date: Thu, 10 Jun 2021 09:42:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <214134496.67043.1623317284090@office.mailbox.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=fytVhHWT;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Hi Tor,

On 6/10/2021 2:28 AM, torvic9@mailbox.org wrote:
> Since LLVM commit 3787ee4, the '-stack-alignment' flag has been dropped [1],
> leading to the following error message when building a LTO kernel with
> Clang-13 and LLD-13:
> 
>      ld.lld: error: -plugin-opt=-: ld.lld: Unknown command line argument
>      '-stack-alignment=8'.  Try 'ld.lld --help'
>      ld.lld: Did you mean '--stackrealign=8'?
> 
> It also appears that the '-code-model' flag is not necessary anymore starting
> with LLVM-9 [2].
> 
> Drop '-code-model' and make '-stack-alignment' conditional on LLD < 13.0.0.
> 
> This is for linux-stable 5.12.
> Another patch will be submitted for 5.13 shortly (unless there are objections).

This patch needs to be accepted into mainline first before it can go to 
stable so this line needs to be removed. The rest of the description 
looks good to me, good job on being descriptive!

> Discussion: https://github.com/ClangBuiltLinux/linux/issues/1377
> [1]: https://reviews.llvm.org/D103048
> [2]: https://reviews.llvm.org/D52322

As Greg's auto-response points out, there needs to be an actual

Cc: stable@vger.kernel.org

here in the patch, rather than just cc'ing stable@vger.kernel.org 
through email.

> Signed-off-by: Tor Vic <torvic9@mailbox.org>

The actual patch itself looks good and I have verified that it fixes the 
build error. On the resend with the above fixed, please feel free to add:

Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   arch/x86/Makefile | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 1f2e5bf..2855a1a 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -192,8 +192,9 @@ endif
>   KBUILD_LDFLAGS += -m elf_$(UTS_MACHINE)
>   
>   ifdef CONFIG_LTO_CLANG
> -KBUILD_LDFLAGS	+= -plugin-opt=-code-model=kernel \
> -		   -plugin-opt=-stack-alignment=$(if $(CONFIG_X86_32),4,8)
> +ifeq ($(shell test $(CONFIG_LLD_VERSION) -lt 130000; echo $$?),0)
> +KBUILD_LDFLAGS	+= -plugin-opt=-stack-alignment=$(if $(CONFIG_X86_32),4,8)
> +endif
>   endif
>   
>   ifdef CONFIG_X86_NEED_RELOCS
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ea01f4cb-3e65-0b79-ae93-ba0957e076fc%40kernel.org.
