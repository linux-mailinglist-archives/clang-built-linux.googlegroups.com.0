Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBVXI3KAQMGQE6WKARCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EDF32450E
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 21:17:27 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id t25sf1766661otp.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 12:17:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614197846; cv=pass;
        d=google.com; s=arc-20160816;
        b=jfOrXb0f/TAnBHsRO8O+5uo6DPcdz1qNhs6XloNCt4iupHdkjFcg7XwdmM/QrWYSsp
         3kN4nSW94optPPsECosTSGHBEy+6qlet+lDod7G7If94BZd493bgiL0m7taKaUYhNJFs
         sxdox01uOdbki3A7pUUyr74MbyOSoGNIUV3GT4jTho2jInopvZUbmBsysjxsSwwYKhGX
         SDCYbb0DAbRBD5DcbkLTsVo07QcvHYJpZkVriEsVAcTgFf7lipq0FMLclT9+QYOFTbZZ
         Ka0oWXe7kRRvhGL8SD5mlRG7Z5/h1bJjTRG55LsNEK0taUR9N0yrD7Br5tyml8+499vY
         ePBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=b2TFCIPg2VBEk7oWsIh9ykCaUY5tcyfHnpxtcoWlpHs=;
        b=t3jkPUf83G+TMieHsxotiTKVXS9o2TX93S8I2FVsr+l27yaMhOc73GBf5Ma8cpyKDG
         Qm966z2yrIzsOHwg1QdzZPPtaOyiNxBmkccL9YYkghBoD5+HynJa/74rdflyULSwza9d
         +kEYWpd/2evehGAOYM2v4ryKoGXQJQ1eZRX4jTfiQZw+4U/5eONI8EwFxCRpyq/+dMEK
         J6l4LI+0uGmqR/BdfjEtvacHrOvpphxH+DT6vnurBM6PIsaNrThetyByaWu+w3WEHOXU
         6OMLS1pdyuo/xOHj2X7GPJ5bArW6yGEKUJrpGuTphEOIutS+iXhNU0W4/T/04ZEC+r0y
         05Rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RhNsZyzX;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b2TFCIPg2VBEk7oWsIh9ykCaUY5tcyfHnpxtcoWlpHs=;
        b=CpjTJnwPb8CxXBThTcBNPPbg0kATT0MfQNzC+FMJwDDiOKIAvdkIFbDTgb9q8MSAOA
         vfa2kyEBjck0bgXhCJnjdMQQQzT43EKiZxXHGDFaEhoftWv2Dqq+SHphqLixrahH8GmW
         inazh9f4zJkH//LS0xbsIPEJj0xtpjsQx16A/7O2J30/sa5IiJwtCTvM2bIMxq7jo5QC
         XXx9R92JCuZal6/ZxOTQKt/iDIXS5e4/fziyb8QzMMcbY7FvAp9ccqe7oUQVl0l54vuI
         A3luI47bK7Qkifyho55o0xA1I29eoyBM+6CrFjouEOJL3Nc5RKZozus3h4i2kWMSwX/g
         fRCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=b2TFCIPg2VBEk7oWsIh9ykCaUY5tcyfHnpxtcoWlpHs=;
        b=f0WTdZLF171JVpM98osZp3U88zZ3Yw7kcYk2yrXVqNHUux/J7xHrkDMjtLmXLz1Gzr
         lJ2DajCYExh0EVjcdNqgBpsPIWzbM2ql5BhYRXPOSsFAch9ylt3/P36exey6zT6xZe7J
         JhwCROSJoFFjgPeZCMxEKjz/cuMH0V6XjCuLOBhthdOtSn4Wxsl3KN6GmFyv6mXblpjW
         hPEn6EmrQMI+eSdYchGXEvTPYZBLIEkGhr1bqkVx+VSH7ecuq9/C8lHFUZlZuX9NPgEG
         zPNIDMUIZbQ6lAs8UHl/c/ISt8awD7FdKPnQeHZnGaTrbyEarBS94BkSZ+tJvbWV/yV/
         htqw==
X-Gm-Message-State: AOAM531xkaO7WIw4zdif+Iu4O0MBch7LR51VVffbOGqT2uMcMNiNN9n+
	/s/MbgHQuKP2hYYx+8u8v9c=
X-Google-Smtp-Source: ABdhPJxpdnythgYTNP/6Cv0ID+ZCikn473QaEOcHzdyP9/e5zN0+2aouDSWFLLPnLU0PovmECT6/Dg==
X-Received: by 2002:a05:6808:3a5:: with SMTP id n5mr3995501oie.154.1614197846265;
        Wed, 24 Feb 2021 12:17:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:923:: with SMTP id v35ls981717ott.0.gmail; Wed, 24
 Feb 2021 12:17:25 -0800 (PST)
X-Received: by 2002:a9d:9:: with SMTP id 9mr20202309ota.335.1614197845765;
        Wed, 24 Feb 2021 12:17:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614197845; cv=none;
        d=google.com; s=arc-20160816;
        b=HYeHVSJu+SprECnsFIZsOONEG8M3ytm/iHcTjR5h7tWU9bmQWu7noi/0/rdwHRiA4S
         D9M2ETldFiezYyxDhgNQ08hpplVCG1LjNmd0IygSWILcGGVEF6fW60mcDSDDWqLo3gnv
         1d5EyO9rcm2eH7JWD23a4k9+QWZHw17D+XUoAGUeCVCJ9EEynwwMnJaekXB5IGrnb0Ie
         ARLz5y8/JgaMvFpgK1OJIcCe8UVhbnpLQrdz9rZVdTUKROUX4/cA3o8dv+LK7V9JJp0w
         b4wJSfuL1vDGVJFuLfYBcefRif6IuV2u02xt4G1abkgu6hlOLzKCHkdEPcTMI4l1zOAr
         7UXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ylNlgfdcvRYOD6kXq/95XnGE6RgCAMqXvQ1uBMMg7TU=;
        b=bHTs5x4NkOp8ejp6BBkHYipBesjCat9DGXZy/osK+q3czR7f9mbM4ubCR9D2ELRLwj
         z9llvVush6uTbOilfmfXWatAwHiigTqMuHd30Jg/V2eo8Trlkp/ZsYnrNhpJl0blX1gB
         aDuxo2kWHCJkkE9OmBEZ2G1f8+4fbHFNqPvHTU3hOE6WBY2UUbs9Uv94VmrMU2eYHzNN
         YLCiUySwYgqveFOJtDMNCcX+jlO/pP1hPIQrL7agR1JXRnOutg2YXT5EK5E82Jk7h5de
         UAuqmp3JG8MGn3k7x34ytnzwMZJ6G5OIh+wZDcKgRDCWLILcmgE+DFG8Us9qmOMWQL8U
         5sgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RhNsZyzX;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com. [2607:f8b0:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id y26si295623ooy.1.2021.02.24.12.17.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Feb 2021 12:17:25 -0800 (PST)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) client-ip=2607:f8b0:4864:20::22e;
Received: by mail-oi1-x22e.google.com with SMTP id 18so3715770oiz.7
        for <clang-built-linux@googlegroups.com>; Wed, 24 Feb 2021 12:17:25 -0800 (PST)
X-Received: by 2002:aca:ad0d:: with SMTP id w13mr3743625oie.170.1614197845430;
        Wed, 24 Feb 2021 12:17:25 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id n93sm572233ota.37.2021.02.24.12.17.24
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 24 Feb 2021 12:17:24 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 24 Feb 2021 12:17:23 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-parisc@vger.kernel.org, Helge Deller <deller@gmx.de>
Subject: Re: [PATCH v9 01/16] tracing: move function tracer options to
 Kconfig (causing parisc build failures)
Message-ID: <20210224201723.GA69309@roeck-us.net>
References: <20201211184633.3213045-1-samitolvanen@google.com>
 <20201211184633.3213045-2-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201211184633.3213045-2-samitolvanen@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RhNsZyzX;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22e as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On Fri, Dec 11, 2020 at 10:46:18AM -0800, Sami Tolvanen wrote:
> Move function tracer options to Kconfig to make it easier to add
> new methods for generating __mcount_loc, and to make the options
> available also when building kernel modules.
> 
> Note that FTRACE_MCOUNT_USE_* options are updated on rebuild and
> therefore, work even if the .config was generated in a different
> environment.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

With this patch in place, parisc:allmodconfig no longer builds.

Error log:
Arch parisc is not supported with CONFIG_FTRACE_MCOUNT_RECORD at scripts/recordmcount.pl line 405.
make[2]: *** [scripts/mod/empty.o] Error 2

Due to this problem, CONFIG_FTRACE_MCOUNT_RECORD can no longer be
enabled in parisc builds. Since that is auto-selected by DYNAMIC_FTRACE,
DYNAMIC_FTRACE can no longer be enabled, and with it everything that
depends on it.

Bisect log attached.

Guenter

---
# bad: [414eece95b98b209cef0f49cfcac108fd00b8ced] Merge tag 'clang-lto-v5.12-rc1-part2' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux
# good: [b12b47249688915e987a9a2a393b522f86f6b7ab] Merge tag 'powerpc-5.12-1' of git://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux
git bisect start '414eece95b98' 'b12b47249688'
# bad: [f6e1e1d1e149802ed4062fa514c2d184d30aacdf] Merge tag 'gfs2-for-5.12' of git://git.kernel.org/pub/scm/linux/kernel/git/gfs2/linux-gfs2
git bisect bad f6e1e1d1e149802ed4062fa514c2d184d30aacdf
# bad: [79db4d2293eba2ce6265a341bedf6caecad5eeb3] Merge tag 'clang-lto-v5.12-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux
git bisect bad 79db4d2293eba2ce6265a341bedf6caecad5eeb3
# good: [9d5032f97e9e0655e8c507ab1f43237e31520b00] dt-bindings: mediatek: mt8192: Fix dt_binding_check warning
git bisect good 9d5032f97e9e0655e8c507ab1f43237e31520b00
# good: [f81f213850ca84b3d5e59e17d17acb2ecfc24076] Merge tag 'for-linus-5.12-1' of git://github.com/cminyard/linux-ipmi
git bisect good f81f213850ca84b3d5e59e17d17acb2ecfc24076
# bad: [112b6a8e038d793d016e330f53acb9383ac504b3] arm64: allow LTO to be selected
git bisect bad 112b6a8e038d793d016e330f53acb9383ac504b3
# bad: [3578ad11f3fba07e64c26d8db68cfd3dde28c59e] init: lto: fix PREL32 relocations
git bisect bad 3578ad11f3fba07e64c26d8db68cfd3dde28c59e
# bad: [22d429e75f24d114d99223389d6ba7047e952e32] kbuild: lto: limit inlining
git bisect bad 22d429e75f24d114d99223389d6ba7047e952e32
# bad: [dc5723b02e523b2c4a68667f7e28c65018f7202f] kbuild: add support for Clang LTO
git bisect bad dc5723b02e523b2c4a68667f7e28c65018f7202f
# bad: [3b15cdc15956673ba1551d79bceae471436ac6a9] tracing: move function tracer options to Kconfig
git bisect bad 3b15cdc15956673ba1551d79bceae471436ac6a9
# first bad commit: [3b15cdc15956673ba1551d79bceae471436ac6a9] tracing: move function tracer options to Kconfig

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210224201723.GA69309%40roeck-us.net.
