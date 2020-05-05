Return-Path: <clang-built-linux+bncBDV37XP3XYDRBAPPYX2QKGQE5D6QK7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 148B01C5965
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:26:11 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id h1sf1837936qtu.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:26:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588688770; cv=pass;
        d=google.com; s=arc-20160816;
        b=U9dbzxU3m2GKcGmOFc6Q0UaSdt6MbeFBS13lRc3Pan8GB7hkyochigpmfnkSR47aaW
         bPv52niZXCr/ihm83yKyozKJQlSfmUZ87Y+eui6eEiNkFX4oVoXOhSuPEon/Py3rdDGH
         M2RJ3+HLicosS4Lw4SoDYg3KdcKGWUwfCu8gCqjQOLCSoG56Ioi6a9kYHcSOJ96/NgC5
         2MiucPcamyAced63mOd7Qnp/mql0WXNXnjgCaUIgCBB1amHoYfxHnv+5YIYrcra3pRm8
         4wPaiRF8nz9UYzPvd2J4M1eYO2BTHPC7gD0/fFlgxkOZrkwOJfi/HznzatPOJq8Fxuzp
         /JZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=0Me4gCHyOoNh2UVb5C93tn6jJIO9KSDGMQbbobTSaXA=;
        b=y52P2IDBRVBTgiOLH1Eo7lKSwo4UPCiGu297V3FIy6rgKGVFZDg0gpuMmcSTVXhOra
         tzd7etAMfm0TiHNm3efzAVoMNNkESHgZLZ3mr2yQe061v50OMq0TDqtGQVLkMjrrfppz
         eDYBeCLEA/1G9JlcbmTNBU7U+MAPlB9QLOkjxWVO6QugmXwQviZ6huWB4YRrRi+pHP0E
         3CH48wFsy4Ck63bL8GijaSZUE/x7xjYiovd5UWSzaemfbOxTdNPG61/NPJ0xjvS4FSLU
         XiexTexvAgXd8RHSHwsL/iDQWep4nwivVCzys/NJAQuXq2U425OHG2u9/q6/rwWc5SJB
         7R6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0Me4gCHyOoNh2UVb5C93tn6jJIO9KSDGMQbbobTSaXA=;
        b=sXUvJdZZFbXlSFmx8sjF5EtdCTx7/6mG6N5urxPRfc+jYSX15QZ/mS7IAiVUkuuh6W
         sjwPjSuSPUS8SEdkZc3ZgUMUehJRiCA58F2tkp3v33xRNNeuIzxntfVXMn+dsKcKHiGq
         fH23D/vvsQ+9IW++P40WZ/DNZ0u/jvAbyY3kEAOFQNjOnA3xYUv7vUPuqzBebKX+jd/K
         yDYDGlCMkxbmRgZmdXwcCgnVuRBHVkZGcxuNh5TI3MrCX5tnvljsgMe32sUCNRD2HwrD
         4UiCmp8Rh84yj6AnPGYJ1IkaoE68mwGYXd/qiEgztfBAUSTOnwTsxt+68hbczyBvx6Ec
         lUgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0Me4gCHyOoNh2UVb5C93tn6jJIO9KSDGMQbbobTSaXA=;
        b=g47FnUDEBe/3SmL9SEXhXa14264uQ939E9BE7g2jxYcRI/WmvubnwIW7Tw/L2n9ot1
         DIoJ1zqTNn2JyR1Hf88iksbvW5pQE9Z3Q8CYvfBjP346iWI9eEMcTdBgGCDAdQdZcq65
         QGheKyewOrauP+DZdrempUTMP3YuCog43eqppAR5igpoEjAGM93Wkw4mCpFb91L+R10D
         exbdtpt/PLbynfL6cCwIFpKoml9iCtwMISiLZFIeuBjMs5Xeh66RpEHDRBwHCCrfTRbW
         vdez8yjKZ7lhq0vq95AavaTT2WDB5V1H87Q5YEB0p0ViQXvM15N9vjRAIxhsJ+bweXFc
         JShA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY9i5JuaJ30tUWWn6Q2UfcvgV/CXfoS4iBQ5B5eimILYbe7kiwQ
	BDn4unrhkx8BZN3rWIOC98k=
X-Google-Smtp-Source: APiQypKD1QpeZQfoWJ2zCc0QsJ0BR7GvxefkolM2K5U6Tkt9cpDCckTgY+jhBAkSNUKusA87Y8iabQ==
X-Received: by 2002:ac8:35e2:: with SMTP id l31mr2949383qtb.104.1588688769943;
        Tue, 05 May 2020 07:26:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b1c1:: with SMTP id a184ls2033247qkf.3.gmail; Tue, 05
 May 2020 07:26:09 -0700 (PDT)
X-Received: by 2002:a05:620a:11b6:: with SMTP id c22mr3897398qkk.378.1588688769576;
        Tue, 05 May 2020 07:26:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588688769; cv=none;
        d=google.com; s=arc-20160816;
        b=Q+LJ7FGVkV35wXuB6+2L+LDCQIS2mTeWqyv1X1DQyGt3KZbybc0KLTxU5JH/XlT03B
         tnxY/fUngImO8ydTg1Xe0VAOsRLfSK61mIMLAviTgYyaP2sLtLHfFmB5Qy+UOLMaoaGx
         DM12//7yqW47Nc1KJWM1Sn/0QbftVXsNZOxiB12koaNnVhmgqd0KZFIFpSbLq62h5v1U
         xiXmpyaXd18P0amAcOr/sxzWUdAp8dq1Dx3x9Sptx6BPVLUpg/qw+DRzyZWOmfbYk4cv
         z4QAzql1nRUJPLkK5xmKdY77v/LLpy84KRDF5QKap+WIWvs86h4EdmRc20KXZ1/ETei8
         mRhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=CRnKmj8U1S7T6r05juIe9G9oiXWB+7xusgdsCeCTxPs=;
        b=DZZY1xImYqpSFoqy5TOOMFvOPv6V4ahTTtp0/ie0pt2FdADpdSy8Kul7aXuWmUDnw/
         H/mp19m/YvWwqZ1z/TTC/a8FwxE/X8pMMn84VySmbZmjHbefDbJ9+RQbF/mRivRPWay+
         sJweTDwbMjmYP0UY15YNGg55HHTU1JBJTygpzQyOPQgniBrhT6wD44OC+f4y1SQw87a2
         r/adDDsBxbdK0leGOARLrGz4WIK5J1c52KXheYNarRpiIJd3AC5YHNL3EYl/pn4TML2q
         UNWX7PseJ9DoD4GcRb63787f38C35i4aDnntrtKCK4MyoIMl3r0i2siBu3ZopzR6T+3/
         WajQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id h33si165055qtd.2.2020.05.05.07.26.09
        for <clang-built-linux@googlegroups.com>;
        Tue, 05 May 2020 07:26:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CAEE01FB;
	Tue,  5 May 2020 07:26:03 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.25.241])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 456BF3F68F;
	Tue,  5 May 2020 07:25:59 -0700 (PDT)
Date: Tue, 5 May 2020 15:25:56 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Torsten Duwe <duwe@lst.de>,
	Ard Biesheuvel <ardb@kernel.org>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	Torsten Duwe <duwe@suse.de>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	AKASHI Takahiro <takahiro.akashi@linaro.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Julien Thierry <jthierry@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Marc Zyngier <maz@kernel.org>, Kees Cook <keescook@chromium.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Kristina Martsenko <kristina.martsenko@arm.com>,
	Ionela Voinescu <ionela.voinescu@arm.com>,
	Steve Capper <steve.capper@arm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: disable patchable function entry on big-endian
 clang builds
Message-ID: <20200505142556.GF82823@C02TD0UTHF1T.local>
References: <20200505141257.707945-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200505141257.707945-1-arnd@arndb.de>
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Tue, May 05, 2020 at 04:12:36PM +0200, Arnd Bergmann wrote:
> Clang only supports the patchable_function_entry attribute on
> little-endian arm64 builds, but not on big-endian:
> 
> include/linux/kasan-checks.h:16:8: error: unknown attribute 'patchable_function_entry' ignored [-Werror,-Wunknown-attributes]
> 
> Disable that configuration with another dependency. Unfortunately
> the existing check is not enough, as $(cc-option) at this point does
> not pass the -mbig-endian flag.

Well that's unfortunate. :(

Do we know if this is deliberate and/or likely to change in future? This
practically rules out a BE distro kernel with things like PAC, which
isn't ideal.

> Fixes: 3b23e4991fb6 ("arm64: implement ftrace with regs")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

This looks fine for now, and we can add a version check in future, so:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 4b256fa6db7a..a33d6402b934 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -151,7 +151,7 @@ config ARM64
>  	select HAVE_DMA_CONTIGUOUS
>  	select HAVE_DYNAMIC_FTRACE
>  	select HAVE_DYNAMIC_FTRACE_WITH_REGS \
> -		if $(cc-option,-fpatchable-function-entry=2)
> +		if $(cc-option,-fpatchable-function-entry=2) && !(CC_IS_CLANG && CPU_BIG_ENDIAN)
>  	select HAVE_EFFICIENT_UNALIGNED_ACCESS
>  	select HAVE_FAST_GUP
>  	select HAVE_FTRACE_MCOUNT_RECORD
> -- 
> 2.26.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505142556.GF82823%40C02TD0UTHF1T.local.
