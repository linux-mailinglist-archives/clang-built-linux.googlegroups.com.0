Return-Path: <clang-built-linux+bncBDV37XP3XYDRBHEXVPVAKGQEDP7G76A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 0518184C39
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 15:01:17 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id c18sf18112933lji.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 06:01:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565182876; cv=pass;
        d=google.com; s=arc-20160816;
        b=tRtVVNXPKC038OLAde+Xu/Veknqi97/9k4c8e0iGnt1q4yDzv8TJNTYs2nlTg1edlO
         /3+Y5fyOdK2nEHhnRmzvW+VFOxz3J2xheVXET1cKDFVxU9qakkTO0Bpdo33fn14OuNY3
         Alm9ozvB3bUr/pOK1YA9KdBqrfpxTEUBGtiRKLZslXdd6ElkhEirzqpS9YTUuhb8be5a
         CaZimhLK3ywOK+27eeo1tk+tto762wCDYtaAnk5ATbb6ZtODpsj7T/kIc6s6kwpNqMLk
         vFvVXRM6/5cZgiNHpDgZz8dt2+cF9Ys06iWdRQFJIPl6U50Er5Q4pgLy/EPNa6SX6aN5
         WTyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=l7cMarreJ23meXXvxPXGun9/LO+qtmtuBKeEGj9DJsg=;
        b=NgFARMf+sRLXQiHFaQieR1YvKLrCgixaSrtsClfLKw4kQtN74zQDKsDocCeUszFfIA
         semarBkiqtSHksFDT+HRqxVZddztbMG83nrT7Zj3jCEtLVSp/mTp9SgiC0d9L7cdvcXi
         iahHb+llVUCUVn2W63JDf9PFSz36Vi53T3+3phPf+BkbY79coeSDMd4tLIx+AI3fIQnQ
         uXclajWTNdBkZIRhcx+JwOSc4mXf4vXfObdlPuuZPkBUKkwTygYriUEpMX0DuuE/fOcC
         3n9yM3J7RDPodIduR9M6wi47EYOGbFnfGUqVcF86n9ctil/LdkRCK45OVOnPr/gkQR7P
         tZOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l7cMarreJ23meXXvxPXGun9/LO+qtmtuBKeEGj9DJsg=;
        b=hY1wcj/a8c9FXFmcwmAi4ngntAYBMQrtQk45t/X6Kfwd7BX230QnXTWk9Z3fsFy64O
         lrUZc2/uslZlx7l0R6MJhn/0TwI+3lbZN2Y0PLnLK38vQjhTGWcrgNBBSycQrAGeC7K2
         Saq/NQhBWEUaKDZf9QL+sQ5C1GOOUUIb5FT8qCjhBH0SXpPI36xt0D5EZCldeBg3+9EH
         wa1FloXZM3gH+ZrXG6eAJIsoY/zxJLFefqeyElsa0he0Job5Nt5NKx/qWt3IQ7S8vzc8
         lFZB3WPy1n2yCTZ6sBBrMSIXJuH4qsETNULNh1XZTRCKJ3geZmStdQjyRqZ8KBMIXYQf
         sYOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l7cMarreJ23meXXvxPXGun9/LO+qtmtuBKeEGj9DJsg=;
        b=Dk/Wy0YdxCBqI6iY/LLgUOV28riNKLlcUJCFiF3OpkMqA3ZWmIeJRDIPD/U+I9hnlH
         ql733KXDp4czYZv9eT2hTc/tVm/qFtt6miaQ/ZxWpc/BD+tBdQT2LJCK4jRtZygE1VRf
         ooHJFZJuXb6a241gR93k8SZYMcarlzTEHnXOVPHat4GaaritIclyZnNlJ74DkYXR/FI2
         int4276sLM35h5GbV0MYQS5IY4pewCzqYRN6WPrZGzW73fl+OrLkTYH9UL/1vzV0cn4b
         /ve/uea+EWA5riCkegXM3wGMv99ZECf4HK4Ng03Cgj/X+VxFRQMv1E/CUF5SsrxzXj1M
         HBsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW1GBY+ixAM2onXZiDn31iM0zdGhMWOJuDGAraSJRHul93E3IRN
	AGraTPNW/zcyXokhc/463Oo=
X-Google-Smtp-Source: APXvYqw3ViXTVjGEnmFh/hg5WrUMs+gckODYxNjGHlxsV5Z85OLPIaICj3pbJrE+2VUyQTOS7HhLng==
X-Received: by 2002:a19:234c:: with SMTP id j73mr5731212lfj.96.1565182876614;
        Wed, 07 Aug 2019 06:01:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8917:: with SMTP id d23ls10239445lji.14.gmail; Wed, 07
 Aug 2019 06:01:15 -0700 (PDT)
X-Received: by 2002:a2e:98c9:: with SMTP id s9mr4894526ljj.176.1565182875976;
        Wed, 07 Aug 2019 06:01:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565182875; cv=none;
        d=google.com; s=arc-20160816;
        b=yUK12Cv4TJj/XtHQaqcymZM7ACdl1x95w2NvF4ZqCOtzj21CoD3KyYWzgSzC4zqBnM
         F8IOswFswge3gh+18h6q6EZUIC78583+j3NmwBYj8Qylky9E8VJpN2V9gv9UsORyZMgv
         7tw2WU5MasOK7Xd+8B+mKk5m+hma3iKclDp0+QJWOZR1vcXd/41wVhfIWWsypf/wXnUp
         gzQ8m/KWM5rgCZBHckNjqGhQ+F32jvKbThneJ7DZPsp0GwqrEr05URMxHqVAU71pOA/j
         4IMJxray7QFqYoroiK+eadPT2Ywk9xmStoCDcpXje2quQ0u/InQnF7DCj22MvJTnoQKk
         7Nmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=0ZwX2vpyY4dJnZP7m0XPayhVo7pGU3Bk+2/gH+QHZJk=;
        b=Ig8UBR3q+uJ8/GM4/Y9rx83OP8+X6EFjXSDrwaoYSSeFKQcoER6ZyJiO92UpnHyzrT
         zxOtLpRamsYsYJY3LbH6VcCNwGxATJM67Cyl0huv/y0OGQ8u2HPlXRUCDvk741DHBHGc
         EPbaP1GWDR4hDZqwXJA6WoA2328ee9uMk92YwwWrlEL/CRBvVLDIK5Atbc0RfLgZpv4M
         N7rt0n2jwsyBSMRU/uh/M+MrzQ+VtR13Iu27X89ejVR0kZweHGaSNmJhh2r6j2lY7eOT
         cWMUzBc/+hz/rgLDzLe3fQpvPplhefPua+A0k9nUDxPv9Vvfu2GAeH1YoE5x2rMc4xDF
         ezCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id t23si656675lfk.2.2019.08.07.06.01.15
        for <clang-built-linux@googlegroups.com>;
        Wed, 07 Aug 2019 06:01:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 881EC28;
	Wed,  7 Aug 2019 06:01:14 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6A6FA3F575;
	Wed,  7 Aug 2019 06:01:13 -0700 (PDT)
Date: Wed, 7 Aug 2019 14:01:11 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Tri Vo <trong@google.com>, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
Message-ID: <20190807130111.GE54191@lakrids.cambridge.arm.com>
References: <20190806183918.41078-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190806183918.41078-1-broonie@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
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

On Tue, Aug 06, 2019 at 07:39:18PM +0100, Mark Brown wrote:
> Current boot tests with clang built big endian kernels in KernelCI are
> showing problems with the kernel being unable to interpret big endian
> userspace. This is a bug and should be fixed but for now let's prevent
> these kernels being built, we may end up needing to add a version
> dependency on the compiler anyway.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
> 
> The clang people (CCed) are aware and looking into this.

Judging by the kernel log linked in a reply, this is with:

* clang version 8.0.1-svn359952-1~exp1~20190504004501.65 (branches/release_80)

  Is that the llvm.org binary release, or a custom build of clang?

* Linux 5.3.0-rc2-next-20190730

  Could we previously build a BE kernel with clang? If so, what's the
  last working kernel?

Thanks,
Mark.

> 
>  arch/arm64/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 990fdcbf05c7..1c32d9889e0f 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -813,6 +813,7 @@ config ARM64_PA_BITS
>  
>  config CPU_BIG_ENDIAN
>         bool "Build big-endian kernel"
> +       depends on !CC_IS_CLANG
>         help
>           Say Y if you plan on running a kernel in big-endian mode.
>  
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807130111.GE54191%40lakrids.cambridge.arm.com.
