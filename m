Return-Path: <clang-built-linux+bncBDV37XP3XYDRBMELWGBQMGQEAMVWIOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AC135520A
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 13:27:45 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id g21sf2184249vso.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 04:27:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617708464; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZYBqWNUD4UMloWLd3AcL6dAQMvw/ViqWQCrTwFRVNc2STajPOTshZxaohyNDDKaj8W
         terSpHS9yZUmB5UOL8eyAfdSJ3xHSVUG9sQhuM28ecOKIu8UnlNyJUCIA7SOcUXLwVop
         rJ3OTgexS0K1vslnS8UoO5OV8e5YYxeCRvLDm3CTozCaHZhyqLTXEhxQzrPC5kEJnD3K
         8qoSeL84/ja0uzKWofZ6O+ayyqpOxFCK/JzE6ycnsWe32Z8QDlsJnZHbsnHkZM2gc/Eb
         oJyzOT/vmPGuOK1uoh6Ei9tWaJqzgzIHZ7dSPgq5lfREHXnYEuTWPoIiy2ikdJdQcdZs
         VmwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7Aw7mRjKx7H4cLlaKagghIkyDak4+XHBK8DwQYzQxJA=;
        b=RcyL3f8w3iBWpl7WZF3BuTtAs5C3UxKc+t5NeHOdx2nPUOMGzi2NU2b0KqNNQ6zYlp
         hCdWnLuWsEVv+k83xtnptDLCm+TR7OMKik2/MA14RwCKoo0eeAeU5k8tjiRsk4R2gPwm
         u6NhkwrBfVZnXMtGfK6UKq9E2JOVGQa1Xp+/rdSEmvSU9m5/ANmfyW22q6DWZCCqd/GM
         sPLBkXRkTqz01aKx9YLJqTKcog4tvEXFw7xFohEZucttIqQCczBW3wzU+lPglZJbRO0r
         y+NmQgf12xGLS903H6vmfb5ZdDhZhSGgOfmaCf2LPxiyMopJnfmaWS2Y1KA4rYxOsQZu
         ufDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7Aw7mRjKx7H4cLlaKagghIkyDak4+XHBK8DwQYzQxJA=;
        b=VGvyjATyEwj37cDb5rbNszBVAkhz9lxeQYeiAUqlew6gbOcohj5SPS2aXkv5sGdsvb
         1Pb3VIkWH5Qq2PmE5OHH1m+vw1iThDG3KHThdC1MxaWKoRA8Buf7CC0s9URzfGMbY4fH
         mbhZWeJWn7G7m/yI4BVoCKsgXi/c12U9Ydn3q0St5l+cRe3WeRhuSffKqP2by/ONHFfN
         ftJjHqPqIkmjCi04bUWcguBXVj8mD+1w627vtbzYHEKuhIM77EHZl/g2Cc8e9qgn+F/j
         SCO9o1FzDPcY4IzyQ9Rr9pMxJq4LjuTy3mHFjoKjw9voqyJ85Q9FHx6JDG8u2NP5ST6g
         /lXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7Aw7mRjKx7H4cLlaKagghIkyDak4+XHBK8DwQYzQxJA=;
        b=shvIVqzdttfURMpmX8QTH45QjL7xs3ZgLf6wVBlMAO/A56dRv90JkSMdTm4+LkMhpY
         9nECSO23IDPi8elHlSR8Mk1B0fpn/sJ50g6Bz29BaDTDVVEnN+js08GJ5e8dbTzzbUT4
         T+Vs+UC+dkwVW05YF1+drKDNaH9Tucw2tZNeUxXdyzFbY2Bia8ZnOn2LlYH/GeapCpL0
         fIgTp9e2OHT8dU0CiLt0qCBiMbqBbnL8FepmIFfVBktgwA4J7TTa8KgrZSHz4c77v2tH
         tVbsnPocvITPmPZWuuDHA2dBKfFWeyGPHE6TGNLbTCAu0gFAhAiL/i1QU1vuBiRxBNJV
         UYow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dgBkUH9D/XXeE30REYxDqzLgFO4dO4I+ul4+mrQELAKlWxs3A
	9OdCcQRi0GWlWkKaj4dMa2o=
X-Google-Smtp-Source: ABdhPJw+G0ji9LLOmkeO90RJFHqQDi4eDiJ5jHsjK2mhEBv51hvCd9Zv00i5up0OcYzysr+Ahurbfg==
X-Received: by 2002:a67:3307:: with SMTP id z7mr16727540vsz.39.1617708464113;
        Tue, 06 Apr 2021 04:27:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:390d:: with SMTP id e13ls2218684vsu.0.gmail; Tue,
 06 Apr 2021 04:27:43 -0700 (PDT)
X-Received: by 2002:a67:ed4e:: with SMTP id m14mr5759552vsp.40.1617708463492;
        Tue, 06 Apr 2021 04:27:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617708463; cv=none;
        d=google.com; s=arc-20160816;
        b=UxovSXXXNXTGASQ9z3/Bap+fCuX98fKFNhBG2XvzOeKNhtNH0Nx0fBfv7SpXvm0+oP
         PI/RHtWJBTldSiDaKr5eSftO6KHAJTiKNwhF4B/vIMoR/MkJs3ATpn3FeOpR0uMR2x67
         WHBxDjrN5+Z3ZDi7KQ9J3YR5gWYAZ/3C1H5S/eq759MeTF6FtCjlprYLj7Y88xnOSi82
         Mp8Y5DphuXfEmWsvf+byZslrGgtEObLo4Z3ZhRMR9qfZ5zb1pGkZBfzKlqGfL1WFbU1C
         B4jouAhkXc9NkGbI3g93Vb1HaZvx91Kapu9hauwfPGYX0yTGd11NiTRy+7UMfx2S0LpX
         HlOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=+Za/O0GFG3lQMew4HjSrZXaXaYVbBvEfdf+zD2NTMXM=;
        b=eILDHubJ4y4rrj/Yg4flPAHiAXSf8rsTmOQs9KT0mFpFyWnYUdqMQ+ZIAxSJ20Aghk
         S0thXFlCN+GE9Z3m0gic8L2umCKiy37rpkKX9jdejwPpPQrdrcNsSDcBrjRSuae33q5D
         aV95iZYRRkrUxOmIdHkksEiDpVILn1LLsLDXuLwGhozV5CNtZq9QrjLDrqMLknVUmDez
         BiSzfO+nZW1JOptkYQ2D4sTtYAE9A3WG0nvxCkcK5yEsW72Pr80wMxOskR4mhQZXqB2l
         d94RAedoaeiKkfFdG1tYzaaa7ET3yDS+82X4jj9oG8G647GIjN5IKToFaOrbxg+XCshz
         DuHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id p23si1166743vkm.1.2021.04.06.04.27.43
        for <clang-built-linux@googlegroups.com>;
        Tue, 06 Apr 2021 04:27:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5792DED1;
	Tue,  6 Apr 2021 04:27:42 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CC5943F73D;
	Tue,  6 Apr 2021 04:27:37 -0700 (PDT)
Date: Tue, 6 Apr 2021 12:27:35 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Christoph Hellwig <hch@infradead.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org,
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5 11/18] psci: use function_nocfi for cpu_resume
Message-ID: <20210406112735.GB96480@C02TD0UTHF1T.local>
References: <20210401233216.2540591-1-samitolvanen@google.com>
 <20210401233216.2540591-12-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210401233216.2540591-12-samitolvanen@google.com>
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

On Thu, Apr 01, 2021 at 04:32:09PM -0700, Sami Tolvanen wrote:
> With CONFIG_CFI_CLANG, the compiler replaces function pointers with
> jump table addresses, which results in __pa_symbol returning the
> physical address of the jump table entry. As the jump table contains
> an immediate jump to an EL1 virtual address, this typically won't
> work as intended. Use function_nocfi to get the actual address of
> cpu_resume.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  drivers/firmware/psci/psci.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
> index f5fc429cae3f..64344e84bd63 100644
> --- a/drivers/firmware/psci/psci.c
> +++ b/drivers/firmware/psci/psci.c
> @@ -325,8 +325,9 @@ static int __init psci_features(u32 psci_func_id)
>  static int psci_suspend_finisher(unsigned long state)
>  {
>  	u32 power_state = state;
> +	phys_addr_t pa_cpu_resume = __pa_symbol(function_nocfi(cpu_resume));
>  
> -	return psci_ops.cpu_suspend(power_state, __pa_symbol(cpu_resume));
> +	return psci_ops.cpu_suspend(power_state, pa_cpu_resume);
>  }
>  
>  int psci_cpu_suspend_enter(u32 state)
> @@ -344,8 +345,10 @@ int psci_cpu_suspend_enter(u32 state)
>  
>  static int psci_system_suspend(unsigned long unused)
>  {
> +	phys_addr_t pa_cpu_resume = __pa_symbol(function_nocfi(cpu_resume));
> +
>  	return invoke_psci_fn(PSCI_FN_NATIVE(1_0, SYSTEM_SUSPEND),
> -			      __pa_symbol(cpu_resume), 0, 0);
> +			      pa_cpu_resume, 0, 0);
>  }
>  
>  static int psci_system_suspend_enter(suspend_state_t state)
> -- 
> 2.31.0.208.g409f899ff0-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210406112735.GB96480%40C02TD0UTHF1T.local.
