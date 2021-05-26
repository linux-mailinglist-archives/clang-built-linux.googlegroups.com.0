Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBN4BXKCQMGQE4SLXRTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B114391D90
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 19:09:12 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id b2-20020a0568080102b02901ee0acf20ccsf741669oie.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 10:09:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622048951; cv=pass;
        d=google.com; s=arc-20160816;
        b=I/ZGf850sr3fYRzZpAEx3Q5G+q1DSl2i1wswWKI7S4mONfAB5om2/R65mmzD94ZVAx
         851zAkfZCuLxqj8vvcjuINR+KC9OfW5jeekqPenQi1h6OTTyn9rMqdSX42FYSWqKbf5O
         QRMifePrl17eWkt+Gb2mL0yKpM7ztRyiM2accn/Pd1Jli88+WCaxE2FWdMQ51cwcrnm4
         m4c76EbtjVcxxywbJ2ndYOkszmMXG9s7BS1mZR76033tHReM6Ss9bI2zikTyqAIjoGlb
         angSL1MIybwK1F/ym7YLLqJeys88JVcevNSHwGus8/3EbZjwEnAbVE4RSM1B+4xzcwqm
         Dtqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=hUiXiWY8UzfJa0338xn+VU+1CrTwMnqkeucHUhmoCgw=;
        b=VLMEKhznRs1hpCRJlpjAU0mWum5z5OImgLfatifSWw5LvvG2L94A8dJHySpG89kF32
         2gjcuT/QifE0wWgLWMsRKqEPqR454A59H5tD/zN0606VP0axQEGcL4b+pCN0Oq281oes
         HJoB87XZx1uulbPbsyFZXd/O4uZPixDjnOhUQaA8bbDPzwARs7p8HsJa+IzePyWt/+Qn
         7g2rcW9Fe8JZC4MwslZaFVicgUoLGv/J9qBk3yX6CKd1yl7PuiniNv49dZkISn9KUhT5
         JOUyCyBLAZGVJqXObfPGP+2+rM3CZf7TLW1HgxwqjReErvs4y1C92ZgQQRSwokjIxUB8
         uX6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ga8DyAAu;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hUiXiWY8UzfJa0338xn+VU+1CrTwMnqkeucHUhmoCgw=;
        b=ngzCi3/N8phYFrO8q9GfqpLH4wxYcHMQtax0mEHLV0YZR/EjdhzXK33bBN+NATU8Vw
         YsWOlLMN2MnIB1HnC63Zaub4CuNwBxKczVbAonxdzA18OI+xyN+pBffAAasxZxSm2EUb
         ybRyPy59dzm/uKHq7e05qi8cGv1EhDThB8EIbOT6p0inHGyLgGWIrNAjROwZD9aQS2Qu
         feWkgQNfLDHtbOAktvOjVfb5lrp6NlYCGYEoI9DTQ4iU/tg1ldEa0wiJQwZr4D6uMEQx
         3sDeKS9/K8oWM+AiVy9ub/KfbH+QE6GC0skABP5bL36EXAeMq6U7h6OFryK04+qF0mMm
         8m/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hUiXiWY8UzfJa0338xn+VU+1CrTwMnqkeucHUhmoCgw=;
        b=omA56BjnJE/y6eHguZKW9Fd8whpOUgXlvR5VUDtgq+5EGpCsTtxlmPSAeJNXaCmutc
         K44osvHBF3iEEAax4A51x/CYe2k7imyYd7O6Wu/uxzgQ2uxXSB19AKGOv87lD8Fh7yyk
         6Si8a97wNUpYFHO+QGDHKFBkoWO4leysT8ZNq4yc46CWJkMnhml0xhE+JEAnULbU0jPK
         tnR9a9VdSTosm61SJjDrJCGe9KVhV7RSYcI6gyRaAFHAlin39cog9FWnp4HQvKoKHgkK
         /NB1Cp9MRoAorOpzYffiYC1VUsR88rDQjCYdrtLY8MvLPI4z0+XQkVDk17tUyk8VPsua
         ewnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xWxAQzDI2Rhj/9o5EMLJSjJNBvbTWz8u8fKKCJ/eiE2YM6bc3
	QUbcztWP2TUJD7h0csyJRd4=
X-Google-Smtp-Source: ABdhPJxm7rOBaT4YUPICywhmjCv+mxu6AYrJBSdPFuvV+7m2wAw6+qMrZjrU1cRS6pBo6zYl6fUkpw==
X-Received: by 2002:a9d:225:: with SMTP id 34mr3116286otb.330.1622048951357;
        Wed, 26 May 2021 10:09:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6d11:: with SMTP id o17ls136204otp.11.gmail; Wed, 26 May
 2021 10:09:11 -0700 (PDT)
X-Received: by 2002:a05:6830:33c7:: with SMTP id q7mr3154223ott.308.1622048951035;
        Wed, 26 May 2021 10:09:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622048951; cv=none;
        d=google.com; s=arc-20160816;
        b=UV0zayOZ6RAMV24SThvKlPFpZjKo9M7W3brXIx4KyaY2gXtkHoWd9StQJy8Iy/CEMi
         I61PZhLrXB7sojNgOyv6sS394p++pQC1sulqy3WVKKWiYMJph/fWYffibS4DVBcp5JUp
         zTvuejZeuo8mFHfZpcfAdoFQCgrxoJUE8S1cFObtnZyA8vjScF08HIbk+E8YERXlAGyv
         U4311cHr3BrsLeVW3JJoTu02VmEdeu8k/DKHbbATScpAnPcIDgXb8VhPFegy7EE/XN4x
         HuqnHGxkROlOZRY03x1OXTw/t+at1PpGSeueFhgW5248Ve/Ik3WTwhVD83633AuFIKtV
         M3Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tuOkwiPEN1jDFumUMlmOYBQg5DiwY+Z33sZf+g7rvqU=;
        b=kzqCGUSmq+FGxkdpUhAtn3p/rhA4AAipuDAZjPmChOXrlp1K0aYRm9XIsCe6KM+j5A
         MQ7RdXa+bF2nJap9yvuTKq/uCvrCdtI95fuyWf3uRVh7UEbXHJPw2Uskdli5tjMwSZZP
         0A6VmTDEtlKQ5B1PqDhIk21Oxh4IxNDLarPRV27WiJtaV9p2WEcfqWCTuNa32mXEsoG2
         XdyIIavEVpBYT1yePD0FOCQi/9WNcy3c9ceGBm+NMmFdJCozwmB70wwTe9h4kHztLzIA
         n3NK3W6TZSXxy+PXMzeXGjzjdzIB7vRyF1qUjOLUNHAN6WIz7JxLPBDvdrjhilf9Bm2L
         q4Ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ga8DyAAu;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o7si3955332otk.1.2021.05.26.10.09.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 May 2021 10:09:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1040261184;
	Wed, 26 May 2021 17:09:07 +0000 (UTC)
Date: Wed, 26 May 2021 18:09:04 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	Lee Jones <lee.jones@linaro.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Elliot Berman <eberman@quicinc.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Peter Collingbourne <pcc@google.com>,
	Michal Marek <michal.lkml@markovi.net>,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	Nathan Chancellor <nathan@kernel.org>
Subject: Re: [PATCH v2] Makefile: fix GDB warning with CONFIG_RELR
Message-ID: <20210526170904.GB19831@willie-the-truck>
References: <CAK7LNAS_LpZnweujqVwZ1kL0eDYR726k35U_yx1djqNE0bk6Rw@mail.gmail.com>
 <20210522012626.2811297-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210522012626.2811297-1-ndesaulniers@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ga8DyAAu;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, May 21, 2021 at 06:26:24PM -0700, Nick Desaulniers wrote:
> GDB produces the following warning when debugging kernels built with
> CONFIG_RELR:
> 
> BFD: /android0/linux-next/vmlinux: unknown type [0x13] section `.relr.dyn'
> 
> when loading a kernel built with CONFIG_RELR into GDB. It can also
> prevent debugging symbols using such relocations.
> 
> Peter sugguests:
>   [That flag] means that lld will use dynamic tags and section type
>   numbers in the OS-specific range rather than the generic range. The
>   kernel itself doesn't care about these numbers; it determines the
>   location of the RELR section using symbols defined by a linker script.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1057
> Suggested-by: Peter Collingbourne <pcc@google.com>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V1 -> V2:
> * rebase
> * pick up Nathan's reviewed by tag.
> 
>  Makefile                      | 2 +-
>  scripts/tools-support-relr.sh | 3 ++-
>  2 files changed, 3 insertions(+), 2 deletions(-)

Does lld support RELR relocations for any architectures other than arm64? If
so, is the "--use-android-relr-tags" option supported on all of those as
well?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210526170904.GB19831%40willie-the-truck.
