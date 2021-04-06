Return-Path: <clang-built-linux+bncBDV37XP3XYDRBXUXWGBQMGQEK4LPNRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4B73552D1
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 13:54:07 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id o8sf400156ilg.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 04:54:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617710046; cv=pass;
        d=google.com; s=arc-20160816;
        b=HUTGZK62giPCulS4mHm4qjOpuAisFpYimrDJUYg3Ha8AK+QsLCdnh9ZjcyqzDZ8dTq
         brOo5CjViIP5Xmyp/WlqBGx6Zz1nebkQfuIg3o9ClFYfqesQphikTzKZ8y0S8ERw1iuA
         QUWewl6MInd5S5PiCOrHZ8XWWvnvo8J/SzPsuiSR+TQwiqfNuyrE/SIexOl8zguf9JNP
         xslYlNq3Mg3J/n6r9ymHqkOf1DOtzJ6ydWeDPkgPPChsL/krAQe94/E7x5BqW2Z2Ckzp
         U6B7tbXWPq7iK+8vxIlp8JVuvW9bP9tIaMkkk1fz/EZN1sGNtpIfUE8zKsehmsqLfVd2
         vCvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ChjECUpM6oz8I8LfWAY9ZtJp9XYTuWamLl4S23UbEws=;
        b=MD9zRDZn2eMKPD4U2TAskjdovvexTRgFw/0prStRLkLEtewUSO7M74JXZS7CGJ51sh
         egfOrM5JooH5Z7GCzYZxbLsskuqx80JLVPq+rocXng6jK8vd6bHRU0uJHF55vco6kUT2
         pv4UTCT/zK6Y7F7uQZSEglywv7rp67paAV4WbO9iXAkFIlA7sViXMHt0sx+zJXu8BZb0
         FKqvGUk2mjavWhH0jPmT9B/O/bHwYqbJYKF4YzF0wmxoLAEgTuGHUovTv1InZStLMAHn
         gmSm/vNf6nL2wnBrVmbTGpVj94BH6wlIS9LyJRUJffb+e60jRk9c6FyMgeeeYgM5emaC
         sgsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ChjECUpM6oz8I8LfWAY9ZtJp9XYTuWamLl4S23UbEws=;
        b=Tp1XxqDMZqiPO1poZndoEuERqu94FLntIGr02EDOeWd6k8qWBhF3RDjVUk/8kqd7m3
         SWJ6NCsgdaf+8o0MN85p3RHty2hCyser7mTWUrfleMgrPhwNanUuJW6t0JL8WosXMfJT
         mfVGPf4U61vOxpngeJR/fYVbjrNQwTGtRz7Td9CFyP8AT18y4C/6PEcK8TNUQ6HiHeYY
         tPf4jV1m0efF1wTJN6RD7UHNw6tTwIMJoGWL8lQQ4aqyCaSecQFavryYYaqccZVk62g1
         dpDJQ7QNjLQ2X2/nBFdw7fGy8Ta5M/+tjUJ5AQEMsXXRd0AwB4q3Wm0BgfFLBM5RXlsO
         hgSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ChjECUpM6oz8I8LfWAY9ZtJp9XYTuWamLl4S23UbEws=;
        b=YdzhO0HiC09tzusxHkPk7vZBhqvknocpNsotEzfWH/ZJ+91xK7dOfQHg9ceP6Uk4J2
         H8bb1LSvuaJN3yjABFU6fuunDKUO3XQuuhLwErFt02V0wqtndJ5Y/MlWLgrqCOD526JV
         M0jSr0dbLtcSHyKekKfZeiPw1sQ1mwZ3GaznY3SydbRPAHoxCy3ymC8p6gkd2BmQAsqd
         jRYh4VCiYfh9UGTZSlT5AOcXoPy/wGXBMvszR1ogjpB95VQmiBIF1Cdvlwq8ipclOSrf
         wivm+E4lXxMWMryEckv+8Q2uOK8zYLT327ixUOy4zU4JiMWuf7BCgNMivEjjdtSyWvWX
         SBrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324UaBQtf6sAz+A12t0xEuGV6XGRb6ks9rhQHyr+8Wlj6sqeOqJ
	l7GM6o3Ql51pCTBjwLyDVJI=
X-Google-Smtp-Source: ABdhPJypn1DF5Kn6oywZ/XuznRvLC7kiyrQEEJNVPcwdgaaKHxpGFOntrMdAXkj2wN650ashYPjDow==
X-Received: by 2002:a92:c5ae:: with SMTP id r14mr23405995ilt.194.1617710046842;
        Tue, 06 Apr 2021 04:54:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ce88:: with SMTP id r8ls2087399ilo.6.gmail; Tue, 06 Apr
 2021 04:54:06 -0700 (PDT)
X-Received: by 2002:a05:6e02:14cc:: with SMTP id o12mr12663291ilk.104.1617710046403;
        Tue, 06 Apr 2021 04:54:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617710046; cv=none;
        d=google.com; s=arc-20160816;
        b=O5iyUlwdsNO4XAooT8LHn73S8vwUBtpKrrJbZfBESQlH+ZfUv3wZw6GMUl9ICgyJWc
         rrza3XlH6Q8HsmgTebrjPbR+hHdzXpxRzKKAMtojg1/XggGhBWhY1fIt4cDyL1G2F80T
         zrjK98UpvoL/eFqepDlaNimy0jCvmpRPIne/mtVT8r3752KlG1yY1w+PhgL+7zr82ByV
         2HBye7WlaYDGPI4h9MKIwVVsRl1gMAbgIvzsmDskX4J+oycXThip32MpKtYbab3uO0S5
         9EjFG7CA0PtcEnGskiM5UoWU/V8/7SUw6smaQPLdC6IWf5/doudazKaPBpIeJkUczfMK
         lbew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=FxiY8kJpbB+WN62eslHB3kCFauJEaNsuqKQdJafYoZs=;
        b=hdIlFroy/A4sVPlIEwHugjfDVBc9yO0r3KIkc+cfA8x1VfZAYgKyX9W03GxQkOyh1F
         oGfZFf2mOQPq37KpXvLKMqwUtJsjES9pWxz2IVxSFSJTmA199Xrz6ED02WUbU75pagzn
         s3OXdg8pwy2FgtxZlaF8Hs0ON0l3HdLJTP945BZDcrn7hxqtZJzp7wygxYrBn2Zr8ppK
         XV59ezQSoUGgEXS0hqIqtF2SWcKXr5JFK2clMFxodn/QN7Z5y+Nfzeu+LM06tugPw2LV
         jHP2a4gX8LbTFeVr7sdszvUKyuQIMKFASzxIAtFdpvk1JVi4TF/jgwxZdjOtJCJ/OPjS
         77iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id w1si1152975ilh.2.2021.04.06.04.54.06
        for <clang-built-linux@googlegroups.com>;
        Tue, 06 Apr 2021 04:54:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ACB70113E;
	Tue,  6 Apr 2021 04:54:05 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9F9E23F73D;
	Tue,  6 Apr 2021 04:54:00 -0700 (PDT)
Date: Tue, 6 Apr 2021 12:53:57 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>,
	Ard Biesheuvel <ardb@kernel.org>
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
	clang-built-linux@googlegroups.com, ardb@kernel.org
Subject: Re: [PATCH v5 14/18] arm64: add __nocfi to functions that jump to a
 physical address
Message-ID: <20210406115357.GE96480@C02TD0UTHF1T.local>
References: <20210401233216.2540591-1-samitolvanen@google.com>
 <20210401233216.2540591-15-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210401233216.2540591-15-samitolvanen@google.com>
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

[adding Ard for EFI runtime services bits]

On Thu, Apr 01, 2021 at 04:32:12PM -0700, Sami Tolvanen wrote:
> Disable CFI checking for functions that switch to linear mapping and
> make an indirect call to a physical address, since the compiler only
> understands virtual addresses and the CFI check for such indirect calls
> would always fail.

What does physical vs virtual have to do with this? Does the address
actually matter, or is this just a general thing that when calling an
assembly function we won't have a trampoline that the caller expects?

I wonder if we need to do something with asmlinkage here, perhaps?

I didn't spot anything in the seriues handling EFI runtime services
calls, and I strongly suspect we need to do something for those, unless
they're handled implicitly by something else.

> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/include/asm/mmu_context.h | 2 +-
>  arch/arm64/kernel/cpu-reset.h        | 8 ++++----
>  arch/arm64/kernel/cpufeature.c       | 2 +-
>  3 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
> index 386b96400a57..d3cef9133539 100644
> --- a/arch/arm64/include/asm/mmu_context.h
> +++ b/arch/arm64/include/asm/mmu_context.h
> @@ -119,7 +119,7 @@ static inline void cpu_install_idmap(void)
>   * Atomically replaces the active TTBR1_EL1 PGD with a new VA-compatible PGD,
>   * avoiding the possibility of conflicting TLB entries being allocated.
>   */
> -static inline void cpu_replace_ttbr1(pgd_t *pgdp)
> +static inline void __nocfi cpu_replace_ttbr1(pgd_t *pgdp)

Given these are inlines, what's the effect when these are inlined into a
function that would normally use CFI? Does CFI get supressed for the
whole function, or just the bit that got inlined?

Is there an attribute that we could place on a function pointer to tell
the compiler to not check calls via that pointer? If that existed we'd
be able to scope this much more tightly.

Thanks,
Mark.

>  {
>  	typedef void (ttbr_replace_func)(phys_addr_t);
>  	extern ttbr_replace_func idmap_cpu_replace_ttbr1;
> diff --git a/arch/arm64/kernel/cpu-reset.h b/arch/arm64/kernel/cpu-reset.h
> index f3adc574f969..9a7b1262ef17 100644
> --- a/arch/arm64/kernel/cpu-reset.h
> +++ b/arch/arm64/kernel/cpu-reset.h
> @@ -13,10 +13,10 @@
>  void __cpu_soft_restart(unsigned long el2_switch, unsigned long entry,
>  	unsigned long arg0, unsigned long arg1, unsigned long arg2);
>  
> -static inline void __noreturn cpu_soft_restart(unsigned long entry,
> -					       unsigned long arg0,
> -					       unsigned long arg1,
> -					       unsigned long arg2)
> +static inline void __noreturn __nocfi cpu_soft_restart(unsigned long entry,
> +						       unsigned long arg0,
> +						       unsigned long arg1,
> +						       unsigned long arg2)
>  {
>  	typeof(__cpu_soft_restart) *restart;
>  
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 0b2e0d7b13ec..c2f94a5206e0 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -1445,7 +1445,7 @@ static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
>  }
>  
>  #ifdef CONFIG_UNMAP_KERNEL_AT_EL0
> -static void
> +static void __nocfi
>  kpti_install_ng_mappings(const struct arm64_cpu_capabilities *__unused)
>  {
>  	typedef void (kpti_remap_fn)(int, int, phys_addr_t);
> -- 
> 2.31.0.208.g409f899ff0-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210406115357.GE96480%40C02TD0UTHF1T.local.
