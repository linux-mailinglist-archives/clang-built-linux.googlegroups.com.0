Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBZNWV7XAKGQEOLDJWQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E83FAE8D
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 11:31:03 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id x11sf1142959plr.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:31:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573641061; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y0rQM0WLAl6Q/CkuwwNDFPYrMFJuusAwbZISi5Km4qb74wabXRGONIEzdfvK0+ehB9
         KiVhBr1UTQMUoSAiG37rrbSXnocOvLYYMJ6MR4WNJRFFRpvS7RLkvy0wNYk9Nc7pWzA/
         htIWBBW7hn+F9GlLrecIDQbXcu9wgdR8oxQ4o4rJXR1t3X9mW4N/guJ/sRgo4SD88sgB
         0Vff4jPyU3LYM8e9k9xvVSjqE2ILj9WT9rV2EggPBeLmVDYsborm+SACyyRmNEdA38uX
         VgpdWR8m0zR8ZH/oFsTTf9rrKhIK0SlM1KUozsQfQwqgTixB1gISnScFT0+n0INL4196
         EAdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=F5BnI31+Ckx9gEmI2F8a6LmMa/mq3FFkkJDmn2l9rsw=;
        b=RReKdu8ge5TjqXPt6mcO/P/QMoyFx20xy9UM5pDvo7MwUSa+Vyg0L8f/pEy36pReCv
         NHSdlFVbggXuKZvofNQsm+WrbxncTcLlK4BnpF3eNHmVlkICPdQNm8sxL/Gy86NBYVMq
         OHcmfPWBulGmscTocpX91mFsbTvVtBnFanX4/fYUZvYhPe4kW+hAFzbN0ebouvu7/sqt
         WNvmI/MGdy5NGDjtvw2HlOzhgp3466tm2U2nQhaXlrBdaP6M9xxJnOzYtLDQ/wPLljET
         P/1waHPC+cpZDNGe0sojdR2mhV1Aaeqf7+h3gEMwrMTWh+qT4KeaXQg5dVa0epfSesWN
         SD6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bLHOnpyo;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F5BnI31+Ckx9gEmI2F8a6LmMa/mq3FFkkJDmn2l9rsw=;
        b=MFHo2PHsZxgf+9FZxgR0ET/cV8u8En1bdn+QAJVlAUNWxtIFrd5kDn81cPId3TnDvF
         CuTrxc4nOZs7iUfr5xYgnkpfXQ7Tfj/aU3Lpw/0CPFp+Qnul8ATt9q/REMRBEiM02igR
         RCHbwOgp7Sp7pMjK0ltsQO33b03VBTgpVeERt0yx/RsDZIGb829mygk3BErOS6SjPa2W
         /6FZ3OGofRbyGqmEHT0CzNqo1IuNs4NukEA4QvD6a1kMwsx5OcTIiUI+AYCesItNk4tN
         lpvZM6HwMVVAaPJfKTqDxiVCb8SFrwD0yH9CHfiDxhZvlE1gBcz8+kTjbo7qtAdVBk/i
         P7lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F5BnI31+Ckx9gEmI2F8a6LmMa/mq3FFkkJDmn2l9rsw=;
        b=QAngfXmSpWhYW2tKKAdFfrE9G+mYy+uozaJ8l+w96SXjySFgLwsxTJXOGgNuarPKct
         JTgbwlxISfWTrCrRMn9iFTonv+JId60UyPM3BI1AttYgMiu8fWVdWTp7yvlT0vXnrF9i
         mYt/8hlpg/PC39QG/Mo2hGm2QgE4SDLLNk4lQCh62RQFTHlUGUK5bdAcxP9WrVL6PiRw
         SX4KHE1P6iF65AKzgH65vWissnGHztK+2hp7HGEo7r2ypmnfvgp1N5NoCGqIvc2daJ93
         QVTuGq21vbd4ELyKWIHxKcHZVFbdYImbyn7j95TLywkrLt1u6JhxcB2iqkKpGxB/1ge6
         PtVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVCyZ85FIy3J0k4FNsPaSqf0CXq9kDqNoH8GVftQuJrnidHtCML
	OggNl7jTwpTxcDcNrALb8Tc=
X-Google-Smtp-Source: APXvYqwBX+j0hNdXGVwUbDB5hnlrjOwvWFihJPAKqkwKgi9ldDh/WsIKpeVbJSkpkYpWcw79NXcSUQ==
X-Received: by 2002:a62:8748:: with SMTP id i69mr763278pfe.224.1573641061088;
        Wed, 13 Nov 2019 02:31:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:860b:: with SMTP id p11ls491662pfn.16.gmail; Wed, 13 Nov
 2019 02:31:00 -0800 (PST)
X-Received: by 2002:a63:5c4a:: with SMTP id n10mr2958877pgm.120.1573641060614;
        Wed, 13 Nov 2019 02:31:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573641060; cv=none;
        d=google.com; s=arc-20160816;
        b=zRhE+/R9p4O8IAtA735jvviy4nZmtHc+NT4ZC9hCoX1qH4m40EEX9lBt8ypJXr9zIW
         XTyi7Z5PTEQf/PCTQdU8RL+GrzzqRNQaPLDCrxLgMds+YYWVo+qh8jqEiZn9veYA72O2
         CFnfKbnmBn15tSnYRch0YDC/cVRfk7Urg7TFreJJ3uG0zGcafZldrINIB99TACBLXvYF
         0Cw3JkRsCwA7bKX3r02cAoyG++TTzUwcPIist4onICg1kiHwFQWG2R/G/RT5Bhny/k2z
         S/GPISC+v6Ib5zJ+rhL82/wzmYBjZZx4u4NJAQHFAPCt3Jr95K4+SK7/BVbRyM2MTgBJ
         tj4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2mybLZz7kMkOpVydeh4Voc8fmez8GXa4s3nEq3/xtGY=;
        b=HmTzxqvZdpaoZdjiUlF0Sy+7eB+FWjn8SGqjCDL+4Wmv5d4B2EROwbZ98XplQPnk7J
         S38A1x4oTpdSEuwPQP4zXJa0h8KrJ8M2lBamC8UgC9k+7wkzvOjzc3s0/O8CL6hWDtL9
         sILXAVj1Ce77pPqOwO8f5OjAsUoKlK2RSgMhHHi2unHf/qv/BmqucnqxvPspj7eMbW/S
         HdPJ2mXjrTszPrWbsCONBY7rhKlQM1WqMs0UmZuA62ZNMt4/uuA9l0JEUbzX1nuxzdgI
         6VQ/aOMURaeL0Ov9YfHVJqPNB0Y76QNU3KEdsPqavQXI8kHm20TT5N4nx+F9JurtMJkI
         qAfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bLHOnpyo;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s4si250656pji.1.2019.11.13.02.31.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Nov 2019 02:31:00 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 32D5B222C6;
	Wed, 13 Nov 2019 10:30:59 +0000 (UTC)
Date: Wed, 13 Nov 2019 10:30:55 +0000
From: Will Deacon <will@kernel.org>
To: Ilie Halip <ilie.halip@gmail.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
	Peter Collingbourne <pcc@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] scripts/tools-support-relr.sh: un-quote variables
Message-ID: <20191113103055.GA25900@willie-the-truck>
References: <20191112134522.12177-1-ilie.halip@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191112134522.12177-1-ilie.halip@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=bLHOnpyo;       spf=pass
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

On Tue, Nov 12, 2019 at 03:45:20PM +0200, Ilie Halip wrote:
> When the CC variable contains quotes, e.g. when using
> ccache (make CC="ccache <compiler>"), this script always
> fails, so CONFIG_RELR is never enabled, even when the
> toolchain supports this feature. Removing the /dev/null
> redirect and invoking the script manually shows the issue:
> 
>     $ CC='/usr/bin/ccache clang' ./scripts/tools-support-relr.sh
>     ./scripts/tools-support-relr.sh: 7: ./scripts/tools-support-relr.sh: /usr/bin/ccache clang: not found
> 
> Fix this by un-quoting the variables.
> 
> Before:
>     $ make ARCH=arm64 CC='/usr/bin/ccache clang' LD=ld.lld \
>         NM=llvm-nm OBJCOPY=llvm-objcopy defconfig
>     $ grep RELR .config
>     CONFIG_ARCH_HAS_RELR=y
> 
> With this change:
>     $ make ARCH=arm64 CC='/usr/bin/ccache clang' LD=ld.lld \
>         NM=llvm-nm OBJCOPY=llvm-objcopy defconfig
>     $ grep RELR .config
>     CONFIG_TOOLS_SUPPORT_RELR=y
>     CONFIG_ARCH_HAS_RELR=y
>     CONFIG_RELR=y
> 
> Fixes: 5cf896fb6be3 ("arm64: Add support for relocating the kernel with RELR relocations")
> Reported-by: Dmitry Golovin <dima@golovin.in>
> Link: https://github.com/ClangBuiltLinux/linux/issues/769
> Cc: Peter Collingbourne <pcc@google.com>
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> ---
>  scripts/tools-support-relr.sh | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Thanks, I'll queue this as a fix.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113103055.GA25900%40willie-the-truck.
