Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBCMYXP6AKGQEVPS6PEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DAC293A1C
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 13:37:46 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id g64sf970928oib.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 04:37:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603193865; cv=pass;
        d=google.com; s=arc-20160816;
        b=f5m/lMi0kgjJ4c9B9SWscITVOcNqP9ExQDcGGIcEkNlTvbbt7eURDYltr4AJYJjQH4
         fVmgN+wDkChURl0dxSkgjUtXZj89Vek32LnL6vC0nakY4wx4SawKwXhcsCizVdLfuRtN
         iD9tSUK1WUZ/vuEOthQ3DfF9qou2fpytmJMU2oN0O3GTFlGv/uQZfgmysmK3MdUMvp1p
         f1VsbUbKhQeRRQQ2wKpt5VztdObqPY8wNbTwt5halPZci+gPSRcIsJeECTNizipG+ReF
         O+pINbHuLRUP1VQdXgmlxujG5exdK6QmfJzGFjDJ7AZbEtTNRXLAzdr57cTPYF3/Pxkm
         6hzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=LmmNyN5B2oXkNqWQj8T1dwdee6y+vmurxkbk8H7yQig=;
        b=PQEVI/v0ltFmyZR4voDCAs6hN7DYaHrpqXuwb6ssWpq+HhwdUJ4HFVJfkFnc4Aa614
         UKw5mrUq/pL5t4LAlPFH1fnZxszOFp6orBIjCWjnFMGrGNVCfVrjGz9OFktA6h7Oglh9
         JNKjGZdd/HBYuVHLh279YlBlHEYnNmNDg4vb25D5sPT5Fw+60YTO3c6c4saX5FHNp1wy
         ZXQUTljXv+bac8rlhotr/523BPASOyiwKoONx1SOCcrCa6TuhjC6xFxT9LO/9wubQyIu
         IoxdKPKA0u/gBWObFdOS8p9RVk87/wOI0Y90URF6t9/3OzJNiMl/EoZtXG7JEscmqB4f
         mzPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NURBkORO;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LmmNyN5B2oXkNqWQj8T1dwdee6y+vmurxkbk8H7yQig=;
        b=JgdIB9E/NhoYithY1PzkIw/ArN4imVLJA5+wUSShMaiZK25xuBHlnkwELUTCPw7K5g
         /Yn6esyg3L6wMQX49zjbzcrUehNuaDmYcxPXECJe6K/zMUZsSIohGLVFVoNS2iFM5ALe
         s2q/zUmyWbR0/S/CxUfTNU3F47iOmbNJrrEKxw8ohXADFz2wZMZ0T0p2C2+vmQ1srVc9
         XEE3EfyOurlEh3uuyS+o37un4BgAMb+Gn88Vu5x6w7uiq/sEPqd5Y5WXnfkK+7L7GQgy
         OIsNkwivwwNafo/+39kdVy6PXuO6YX/Y/F+qZKrmOV0vORtg5UArRjGffAtSnsVZVnPp
         WW0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LmmNyN5B2oXkNqWQj8T1dwdee6y+vmurxkbk8H7yQig=;
        b=cZFCk378ZydrMyfF1DyM/v0YerdbT3/4WuAgw41ckTXFhg01bBGq7i+fROQX7XG4t7
         5dzE2v/csQRsi60wccMnvvsKrHKDuCeX+TXIKW4k8dCrr1ubgM/W4jXIp3DYayI+Ar/k
         eXOPqyfdjeU4Bj/+CBw2Lng3wwAexFVkLVUxDWX6y+FwG0pcvM8/fOZ3wq4ARwfWXUlW
         yf+FjJH3FNxXjM6N+e+mBV8TnlExmPi9akF8PQKZX6F05PgGPTMmxfj4gTpSVLGUH5Jw
         lYD5a5gjAXqoDiXXjiF2vIHtgrUqoNZeSUMofxffi9pCkLJfIY4z3afWOSCNBBMAocUG
         NDog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sHzABAoWlAOgblzqm5vkYhSijk7Uy6ln6yViGjfslkI9Y0R/Q
	lX4DQW6zIiEMTcfamBy5zh4=
X-Google-Smtp-Source: ABdhPJzoA7aZKdGNUPZfNaCe/DhcmbZlKr9IUQ5Hn83oFkoXmKiNAlYHm3QBCwiF4ZbyllHIYoFmmw==
X-Received: by 2002:a05:6830:2092:: with SMTP id y18mr1451386otq.19.1603193865259;
        Tue, 20 Oct 2020 04:37:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:198c:: with SMTP id k12ls384874otk.3.gmail; Tue, 20 Oct
 2020 04:37:44 -0700 (PDT)
X-Received: by 2002:a05:6830:4d5:: with SMTP id s21mr1489575otd.198.1603193864930;
        Tue, 20 Oct 2020 04:37:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603193864; cv=none;
        d=google.com; s=arc-20160816;
        b=CbjyjYPFYIaAhQjeDUGX/+K8oZ//LoKwW2m9rsekZIpuPEpkp7FH5BwCh07edoIPtV
         wbv+w3oKThVRXU/mTZ97EZlWRJgrXZ6S9mHVjCYhWfJF087jZNwFKU9wU+ILYvyjHzLf
         W0Hg79u9L2o2JOOBjWx3S5pXd02aLek0hqTiIwRqZH54plBbuU4NmpZrNmDtFjUuKJp+
         EQMwoeeTR5RKbTZ14SIDmuP61MtB3DDo6PfqxsmdL1wYhNMKc7x+YWFbE5QLBSmvgKYZ
         NxahEKGdI8YCl227piZhccfBfQh7FMaADtNc5c0jeH9D1saJ6oo0ZJ07PZTSpjmHIOjM
         D/6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qsOQMflSxejlwRJ4LhuUBCTujtoNcSpvtpyJp5Ds1gg=;
        b=GasPbvFvFB23l2T9U13UyHzNt05UR3moznfuy0xD1kM88+O26t2/UBtIVtOkBGIjfP
         K/DK7dziey6VjU8a2XrkrlggXrilcfSwS2QyCKgu2wEq5eT9fNfZYPpV5A0zqigsRNBG
         LJ3mB/a9jWh5Fqc8HKUy3g8hQruDgGEB+XMIuLUQncmzolOJblAx9eCcW4pCfLexVLeV
         w0rZWor6DA/AceozH9ACJvvX8RM+ar97WYcgwtq65grg11F4otSnDfutjUAz8UIRJRr9
         7HrHzF2c3c2GP5/BIFVFtrfmMdYJZSgMewn/AqV/tTLVLBuDoHrXgVmmI6WNXde22UZr
         uO7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NURBkORO;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p17si121961oot.0.2020.10.20.04.37.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 04:37:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 31BE22173E;
	Tue, 20 Oct 2020 11:37:42 +0000 (UTC)
Date: Tue, 20 Oct 2020 12:37:38 +0100
From: Will Deacon <will@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v2] arm64: vdso32: Allow ld.lld to properly link the VDSO
Message-ID: <20201020113738.GC16084@willie-the-truck>
References: <20201013033947.2257501-1-natechancellor@gmail.com>
 <20201020011406.1818918-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201020011406.1818918-1-natechancellor@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=NURBkORO;       spf=pass
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

On Mon, Oct 19, 2020 at 06:14:07PM -0700, Nathan Chancellor wrote:
> As it stands now, the vdso32 Makefile hardcodes the linker to ld.bfd
> using -fuse-ld=bfd with $(CC). This was taken from the arm vDSO
> Makefile, as the comment notes, done in commit d2b30cd4b722 ("ARM:
> 8384/1: VDSO: force use of BFD linker").
> 
> Commit fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of $(CC) to
> link VDSO") changed that Makefile to use $(LD) directly instead of
> through $(CC), which matches how the rest of the kernel operates. Since
> then, LD=ld.lld means that the arm vDSO will be linked with ld.lld,
> which has shown no problems so far.
> 
> Allow ld.lld to link this vDSO as we do the regular arm vDSO. To do
> this, we need to do a few things:
> 
> * Add a LD_COMPAT variable, which defaults to $(CROSS_COMPILE_COMPAT)ld
>   with gcc and $(LD) if LLVM is 1, which will be ld.lld, or
>   $(CROSS_COMPILE_COMPAT)ld if not, which matches the logic of the main
>   Makefile. It is overrideable for further customization and avoiding
>   breakage.
> 
> * Eliminate cc32-ldoption, which matches commit 055efab3120b ("kbuild:
>   drop support for cc-ldoption").
> 
> With those, we can use $(LD_COMPAT) in cmd_ldvdso and change the flags
> from compiler linker flags to linker flags directly. We eliminate
> -mfloat-abi=soft because it is not handled by the linker.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1033
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---

Cheers, I'll try to remember to queue this at -rc1 but please feel free to
resend then to remind me :)

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201020113738.GC16084%40willie-the-truck.
