Return-Path: <clang-built-linux+bncBDDL3KWR4EBRB7PE773AKGQEHOFAM6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 2054E1F482E
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 22:35:11 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id x132sf16299535pgx.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Jun 2020 13:35:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591734909; cv=pass;
        d=google.com; s=arc-20160816;
        b=W94bX1qw43eA6ZrhDAHPGS8yEHGpdTGgt5LfqDA+EAeHPrr+rjPt1K9CuUEypVVQuF
         e+fwPOtyL5paOqyXD9JzyvB35kkPWAsXg+cvj7eHkHxtjXT1zrnXDc51hOrgAdlwN7to
         1+kfv1blPu6O/CqIIo8C3qVEaVPLpQUaERRWEbL/rZzRrL0SeUgc3GMaJzUS2FzdkogD
         QO5vZkS53aXDHifWgEufeaITWaUIat/wiNNhQP9rUJ03CcAY9U4W/4RCOtb2vcVOMu0r
         xya5p+vB+gWTG/WBSTEXydqAAp9CWKGHGotq3pYZstinc5U2HOidGUMYuzzILOdO9o3y
         vnTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=YPy7r2qfa6cT7fVg9Ft8F2jJxvUjgsxBh4iv4HkpuRU=;
        b=rcUY5F1ckqiIMd/mpAHWfeDO3i8lyNEbb/ZdewVKMy3kFW4Ro5rFHCva34SZpAPmAe
         kdmmPAcu0ZxEzf2Ee7ifWXiAqZCwG3UEkJJfjNjE3WpId+gi/WKGEc5Hj5WWb5qT988i
         jNmbr765rkMU40Crz+VbVgWYaZLLe3kqCXnfiG87CxiTBJpcDfo6/cjCSZEZhDiuCHrf
         sr+fZbL8x9hmQ5olcIpQ5RrXJOYFYTX40SqKr3l0XBjIBvIRIcSN+EpTbUW+nPSL9Rsc
         w857OI6Ko70FMNjWYH67Xs0vxVh62wgUdBqaH6vk4j/cTSf/TzC1Q9RKTBa1GAMfn4W7
         k2XA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YPy7r2qfa6cT7fVg9Ft8F2jJxvUjgsxBh4iv4HkpuRU=;
        b=tBcNT2mQJrcHPzLAm5h9C9wokZxxyHVgvA33AQWIBAg3yv+KYSczK4hNGSGTnYpwTN
         uZjz4KhF4DW/vfvUSAwOP1DOrpTUzGnDnyn+TMhJm8iwxI5VmqtqOZES2tflDbJxYF+6
         5hPhVr61QYwup9odyX3T5VfxrVkXfAmnvA2Jm3/31X6DfXrUnQwhqoN4aBQd8tKf/rX9
         vd17A4EGpCzNutfU3dFOn1v/ys+uo4B8a7yjU8gt74rJCjzJypI5JAoSfW/kexm+OxcK
         8JVlgZkIaBOAvATL54/3vePBmt1E8aaahHY00o+nim5Bv2AnnFYbrJ4ybgZnYJCYjnWC
         SV4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YPy7r2qfa6cT7fVg9Ft8F2jJxvUjgsxBh4iv4HkpuRU=;
        b=UFERmNoRNRq3HZZq576nL7jmEaD10n6argNKnoyCp/hXg4jjaffMOgpeqPigI7eFCY
         /8Aya4+hd6Hr+dvPP+sPmd6lkAgaYiZthRmaxQYH2s7hxsUYDqxtlQHLEJlvr5iAZerZ
         rDYq/MCEgNYE0naDKu6URc102+mCH5n33kxmBMbPEW+q/XVd5A6gcPu1Bp5jR5a9m8NA
         ivxmRAVloi97P4tcpD1WuLYYSNtp6o4RE9qmJFR9ocBdDjs3aXOcesKcc+K8uctdEnmT
         bPvZJ5lQLC16Q9xlUyk7yWSy3JAsgAo0Sf6kB1hQt42hJIUfM7Vgn2BkJaMW+mYkSaDt
         Zvag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531WEd84M7amgFgedhRB4GnKEuATbLZfQwsLUnTjd6ofl5EkCZ2d
	49NGs4X0+8sgI9Fmw5oAjtU=
X-Google-Smtp-Source: ABdhPJyr/OhsBp02/qHLrUPPQ/fgMT4PyQoiQ8ORRvsMcMEGt9Lr4FOajlhj/Yx0dQNAV/u2OMN12w==
X-Received: by 2002:a17:90a:1ac3:: with SMTP id p61mr6982075pjp.23.1591734909318;
        Tue, 09 Jun 2020 13:35:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:384f:: with SMTP id h15ls5714074pgn.0.gmail; Tue, 09 Jun
 2020 13:35:08 -0700 (PDT)
X-Received: by 2002:aa7:8548:: with SMTP id y8mr27536103pfn.192.1591734908733;
        Tue, 09 Jun 2020 13:35:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591734908; cv=none;
        d=google.com; s=arc-20160816;
        b=GeWD/WZ28tmDuvBtHtku0X5E/iX1LtDnM+rBNwGl92x+lWtpYUHVJUbMUrX4vV7/Oj
         wUcZStIxaPLx4kKm/8u0oDbrBDzzAJGBCDgt25Kwl39dhDPhJrpHUPaqPIVn4XujoVS8
         t/2zi71MvhEcESdd8Sq7gU34bYU21Rl8y8nOXylyqehWAnbltNIQoiZlvi8seP6/j+Uo
         CeKe5W8xvUpjWm9g1+zkGuLCROkZhR1UgUjAOj3+2/VaoaWBA8Kkf/b9CykrmThzbYuX
         t8Zut8/ruSmjip9zupSUUjfjK7LJ2N9sUQ65GZocc20QbpNioCV/IHwlSBH9lYccGvaj
         amTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=WjxifuNFCGW1ZM2wG2OOOcUW3PCJJTrU74p6S3QN/+k=;
        b=trx8aE30V7eo7y8Y8Qk3QC6IsuilQEM7fZr7OX1dFwQyT6HgHpLq/kJlNqIjefznc9
         +LYXU0jrZZ63yXT6gyrmwGbGuZASaKpx2Kg9WySN8HPM+9UuiuD8GmVvBsG4K42Sp83Z
         TCGLfdK12MHDb5NGKeidmY1guXPTuLddZ/hyV99H8bIB6514BuIfBAPGu4jvyISmQCpg
         Be5JaXXnFYhUZ8MxkJ8czrS9Oq44j0YBqMrTgYQ50tx3zW6eaMA2cCCkFeKvdLNsMX88
         HkbbSifVaBv8znIyXukg4dvpKRS/vy1HHfufiiYm1GGkrrxNsGg12PgTmm4Lhd3qdFlW
         8DFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id a20si45618pls.1.2020.06.09.13.35.08
        for <clang-built-linux@googlegroups.com>;
        Tue, 09 Jun 2020 13:35:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 821121F1;
	Tue,  9 Jun 2020 13:35:07 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9C8163F73D;
	Tue,  9 Jun 2020 13:35:05 -0700 (PDT)
Date: Tue, 9 Jun 2020 21:35:03 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>, Stephen Boyd <swboyd@google.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Dave Martin <Dave.Martin@arm.com>, Luis Lozano <llozano@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Naohiro Aota <naohiro.aota@wdc.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] arm64: vdso32: add CONFIG_THUMB2_COMPAT_VDSO
Message-ID: <20200609203502.GA21214@gaia>
References: <20200528072031.GA22156@willie-the-truck>
 <20200608205711.109418-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200608205711.109418-1-ndesaulniers@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

On Mon, Jun 08, 2020 at 01:57:08PM -0700, Nick Desaulniers wrote:
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 7f9d38444d6d..fe9e6b231cac 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1299,6 +1299,14 @@ config COMPAT_VDSO
>  	  You must have a 32-bit build of glibc 2.22 or later for programs
>  	  to seamlessly take advantage of this.
>  
> +config THUMB2_COMPAT_VDSO
> +	bool "Compile the vDSO in THUMB2 mode"
> +	depends on COMPAT_VDSO
> +	default y
> +	help
> +	  Compile the compat vDSO with -mthumb -fomit-frame-pointer if y, otherwise
> +	  as -marm.

Now that we understood the issue (I think), do we actually need this
choice? Why not going for -mthumb -fomit-frame-pointer always for the
compat vdso?

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200609203502.GA21214%40gaia.
