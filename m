Return-Path: <clang-built-linux+bncBDV37XP3XYDRBYUPWGBQMGQEXJCVJHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C3C35526C
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 13:37:07 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id w12sf9574968ooe.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 04:37:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617709026; cv=pass;
        d=google.com; s=arc-20160816;
        b=ORuXxwVDRuXSUdmPAl79Dmc7CYz71hggMWsafD/AXgmHq5b2HmqxgPf19dpz4DfEth
         bJY9btOAuCktbEh5rI6fpKP4UxCZUbiEJ8pXHQ3W4AC8wey+ZLk0ITDtiRIX1kSqk0Tm
         fMiYFnmgRwVpgyfoQ5Nkk/h3MxI0Bp4T2uHcfnmhhCbjcPuU8IOZzpSqq4DIbSo5A/d1
         c4+wiAdK7x3A6xbQb1IGK4D2KMkN+Xc2tYgVNjjKLSlbntzXIkIfMNNrXpddJl64y1wP
         SRb3CF5M5CQ0eVyk8mAe0e8C73TJEmxv4YjdjaiB+0gIP6M9ZcxBf/EMwiT3kYDujMS/
         i5Pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hXPJTI5KuItLzwQtZ3P1e/aXNf3oSAQa8c78MQQG0is=;
        b=jlhD3n0lil1zWQvhVtZH5eA7VO6Dx1W1/EaJhtbm9Up3P/ToPQ/8nO2tfawPIWDI5I
         UM0A+W5Gy506/10On93ruljPRU4FLJd6A6g3sfmdJ5FdcM/PnFsC7WN3arq/s5WBn6nk
         dCx5491/r33u7OvLOgLPjFSkKh4FMMda67eNRsKlJSDuG7lyIOpuvqJE2q3tzAI+xPXB
         v0OJJxmF9WShL2D4PI/JbEhiVZMAyZ5SoNC/hIRZ3dGmpqz4q97dB0w1wDAn+m0bB+Xi
         z9GhisOSyxpu2Un0nodKAP5hh3BPOSxZF1rkVVB37mrJZLUSBL15H3H0Oa+WlZJurJ+I
         wr2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hXPJTI5KuItLzwQtZ3P1e/aXNf3oSAQa8c78MQQG0is=;
        b=h9T8j6Xi5aZk0fggmXfHNoMQFt/UDwNfFvRi1Y1eKRxVi9q9kuOYCLXcSmufgm8x9f
         ZUNEw5f/u5wJQ+MM7X4S6Qxe9hDrb6UHqrTy+32lWe66zj0bvkAJeSIjTWlwdGsqHIoI
         gHwj4nrbGMlLmEvu3x1aP7Yo/r403a8LfyeeZdwFloYNRIOXYBXIHsJ2orrFja86jwVd
         PXeLnRlnZPwZEita08R0oVGElEjjh0wg3/iMe3vYl9xOHcKgHfBu+OlC5p80sX8fcUD4
         cT2zCdcfUslyam0rrvGBKoSK5Go6jrtJAQ54zIMmuvuaPjW/6ZC71jqCb+R4uOyt6ZRS
         WP0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hXPJTI5KuItLzwQtZ3P1e/aXNf3oSAQa8c78MQQG0is=;
        b=r4f50l98x7Of2SlYjMrlo8gyj/qIySrRCCCd5FXXNd1fKPAJaCL3lBOyAm6752VYHH
         N8OmEodkbbIu1UlCpEohpYQORUlruEVH8vQiY7vmIfwhA5xyRPBNRwsIhsE5iQbelsj5
         v3fVupNkLjBj3ILBtjHy9NcGVKw/uVXMcSGAUFxIYpixZ/+KmTlIJqVwZrg7utdMl54B
         wPkPdCLzQhcNrV/P0PWc90l01GsvYAD2mZ7Qgk9Mkwam/+cIOIWdYPj8wSwvwSr92QBt
         O2scxfFrSGiG7SdnqrUMSpquuAoqFPOO6n9qLDprDoxBch+Rr62xS4EVl9NqoiiMoMd1
         sGAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530K6N0dA2cTk/iSS/beS9hILQcJkTyvYwsiFJIOjDTdysrcpPiB
	N+QTKvRlhnDSC1eQgGcUBe8=
X-Google-Smtp-Source: ABdhPJwEUrDo0W55ku19isR5/XxILptaMXQhcnGMoSmes45LzBe4/BnwdaFZs8WZHlJ1isiagsm1Hw==
X-Received: by 2002:a4a:21c2:: with SMTP id u185mr26499936oou.63.1617709026680;
        Tue, 06 Apr 2021 04:37:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2421:: with SMTP id k1ls4418062ots.0.gmail; Tue, 06
 Apr 2021 04:37:06 -0700 (PDT)
X-Received: by 2002:a05:6830:402d:: with SMTP id i13mr25473458ots.92.1617709026290;
        Tue, 06 Apr 2021 04:37:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617709026; cv=none;
        d=google.com; s=arc-20160816;
        b=H11/ts23jRXQERaLF5PKDtRgREsPedrBatP0aE8sgZqyVR3GHbPO9sFJA00NW/HZpm
         53f5m+y0nuw7XvyHdqyhw93Fi+i9qVl/s+tPsy946hVjpLVNxpIeuuQu1vZZ6vFWzyY+
         o/2bMIuMr7VEUFv/7kycsqN1vaUvNsaqEVjTUPLK1ndZNYHZcYVkVYFb54iQCJLEGmSj
         Mv8dw+lM6oQi8sKtuO26QlXaXJEbz3LORVwUSBTXEYLBta9OUzI5ijk8fR85isVBCRSC
         2YIYhsC0CIO/CLdVMTy7L11oR9GD1O6e7wIdqBkd+7lpfQb/99D4yOXznnrho8sRUDfV
         aWAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=q8Ycajj0kp78JXDEiELXeDa5baqs7WZPtTYlQ/3ohb4=;
        b=U2Uyy7SkE/dUynxae7526gzYFTLzFtpZ38V/X73fGsiiKL6/bQAQhM0NleyfgOdXUh
         2b/ag+IaFgJ6JIZAz3sgTn4EA1npmjX+Rf+FikbwqmTF9LUbR+MFFBiGDjOXkmbHcT4g
         3PHQ+PsD1B9NNm9eOsk7K7T3jDo9lMkz4OEavCXOhSi/e1KNuDKPo4mvmCiWZFvvtEKe
         JmhWEqsqSqCSGMWhORB+sqlk8krwfFszNe09VkFkXIGPaGWNZ9ZnMGV4yLEpNGJJGMMy
         s6nqKEBDSUvzA+QgTFUf/8I83Oztg5SlvE1W7ixL1hxbrBeM0qfa7n/H/ZdPdmYGNC5c
         bHPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id h187si1120777oib.1.2021.04.06.04.37.06
        for <clang-built-linux@googlegroups.com>;
        Tue, 06 Apr 2021 04:37:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF9C9101E;
	Tue,  6 Apr 2021 04:37:05 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 243363F73D;
	Tue,  6 Apr 2021 04:37:00 -0700 (PDT)
Date: Tue, 6 Apr 2021 12:36:57 +0100
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
Subject: Re: [PATCH v5 12/18] arm64: implement function_nocfi
Message-ID: <20210406113657.GC96480@C02TD0UTHF1T.local>
References: <20210401233216.2540591-1-samitolvanen@google.com>
 <20210401233216.2540591-13-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210401233216.2540591-13-samitolvanen@google.com>
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

On Thu, Apr 01, 2021 at 04:32:10PM -0700, Sami Tolvanen wrote:
> With CONFIG_CFI_CLANG, the compiler replaces function addresses in
> instrumented C code with jump table addresses. This change implements
> the function_nocfi() macro, which returns the actual function address
> instead.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

I think that it's unfortunate that we have to drop to assembly here, but
given this is infrequent I agree it's not the end of the world, so:

Acked-by: Mark Rutland <mark.rutland@arm.com>

> ---
>  arch/arm64/include/asm/memory.h | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> index 0aabc3be9a75..b55410afd3d1 100644
> --- a/arch/arm64/include/asm/memory.h
> +++ b/arch/arm64/include/asm/memory.h
> @@ -321,6 +321,21 @@ static inline void *phys_to_virt(phys_addr_t x)
>  #define virt_to_pfn(x)		__phys_to_pfn(__virt_to_phys((unsigned long)(x)))
>  #define sym_to_pfn(x)		__phys_to_pfn(__pa_symbol(x))
>  
> +#ifdef CONFIG_CFI_CLANG
> +/*
> + * With CONFIG_CFI_CLANG, the compiler replaces function address
> + * references with the address of the function's CFI jump table
> + * entry. The function_nocfi macro always returns the address of the
> + * actual function instead.
> + */
> +#define function_nocfi(x) ({						\
> +	void *addr;							\
> +	asm("adrp %0, " __stringify(x) "\n\t"				\
> +	    "add  %0, %0, :lo12:" __stringify(x) : "=r" (addr));	\

If it's not too painful, could we please move the asm constrain onto its
own line? That makes it slightly easier to read, and aligns with what
we've (mostly) done elsewhere in arm64.

Not a big deal either way, and the ack stands regardless.

Thanks,
Mark.

> +	addr;								\
> +})
> +#endif
> +
>  /*
>   *  virt_to_page(x)	convert a _valid_ virtual address to struct page *
>   *  virt_addr_valid(x)	indicates whether a virtual address is valid
> -- 
> 2.31.0.208.g409f899ff0-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210406113657.GC96480%40C02TD0UTHF1T.local.
