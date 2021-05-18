Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBW63SCCQMGQEC4QVYCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 206633881E5
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 23:13:01 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id x2-20020a0cda020000b02901edb4c412fdsf8426257qvj.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 14:13:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621372380; cv=pass;
        d=google.com; s=arc-20160816;
        b=ydiKUjjwMtLAgyq3nleQhX+YR78Tmj+HRMgKWY1gkWboNiL8ssxegpi2TeVa/W+eu+
         uXqLTrQgT/LVJTQ+MFB2lbpSPbxxRW/k4Z5NQtfyiGZXtW2bQRID6c5aHwJUujFdRl70
         JKeIYAkt89p1btL/eV8WIOLD/pbc2r14uiavQFzi/nZjMv3t5PjcdX/GIcR/EQzcammf
         tbMLwjYYghO29XUe3bKXHXGz4VNRNN/4m15i4lninBKkMHXoTwHFp2HClV6t+2Nbnr3v
         vzj2YuAYYfd7ITObm+9/9BOAlb7w6SeWiV/meDyJ4m9kl8InJJ1Au2++ABBqHpZrcDV2
         xvfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=JrqOOKeWBU7gwlaPYYNB8BdSTFnYbpmqF4V2udYDVr4=;
        b=vbeQ4tH+lkiGyMozV4X6PgiGD13QYWqvtV8pCmMkv5oyTGZacVFoKMwzTzgrZ/h3g8
         ki031UDwqobLkXHU8pjnORjaPweDSNpSrWFOcTGP0SCBkduiYyAGtEo5tdDe+D9Czp1e
         l3qyqiLxLTlpDQ1xmhycLTSD7r+qxKV1ubBrpWLVbIr6hSfKmwvsb3kIvUVE2cuU6+VL
         Sra4GhbBW4ZofsHYkhFr6fdmjBGWwmdd+llGS9bdDRZ5rV/l8AncW3q+NoPZtzJOwNhq
         PT1s1Uc4lqTobl0RIeJN7TwZifGnzIxExMORlhmcdUuOLEOfdroMM6iDlBfBjeqg1az0
         I1Pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jW7Z5QSA;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JrqOOKeWBU7gwlaPYYNB8BdSTFnYbpmqF4V2udYDVr4=;
        b=Z5Sv93kyNJY0l/LbYt2c3QIbdL358Z4hHYC1jNa3S+E/q2AI2JnYbl2na2v4434Iwh
         /AjJK7lOpkZHcBMVsOPVo8pt7j1djypoam6rJaP6V4CNH6MvIQ34wln4MSMt8poLwVQV
         SgGgR2FY3BjJ9tPm4FKAh5h2y6CS1rBvPx11pkYqyV3oVrbOhNC2O76jAHl5ctNcIN6V
         8OEGM2NF6NLAR975EA8u0lbzIS84jTwLVFrvb+n877Of62gh7GKJpQDJtypz5DTfKHZ8
         jh9LPx8AIt7pzWf0Lkj8ChltDtbyWNNBbju1kEvay4nkaJ3TYYD0WDbahR6DLoKEdSqa
         hmkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JrqOOKeWBU7gwlaPYYNB8BdSTFnYbpmqF4V2udYDVr4=;
        b=AJdKmNgxk2P0WcQiSUaz96rmm7YFBI1FI3zLghkCNIyms74058fT1I9wH5eVZ0AOdi
         UIbM0XfbY+ZFj5z1UlgnOygXgJGZcmd/hv8lS0Nm7wpuf1fjEeYvdpdg6l2qGwxCBE2o
         ghXsSxMeXh/KP3CWNdrMocBMtE5jEWnSvXJQEV9ttkJ+Qi+0P0VP5PWeoXBi/ZoiFnP4
         ECfgLBJVJYEDICMTGdv+mit1B7vAIKspETBChHnlz6rfjTt9tvj9rq9exKRk88dz1FkO
         APzCLV9xkoVk4YjodraAwVVLYzDrTwtV8RjSIeDWIOBR2pJyTw/qGaw1kJA0U3El/jTc
         vOEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rbfHh/XIhd2nlW5lgbONmj+FiXTniohY72fp/ti7q67DEPUxJ
	YIjnuvPqmoHlcJSuV56Ch/c=
X-Google-Smtp-Source: ABdhPJyIa3oHWTYdsRnKBHidigEUm55rqy8lfjOgYk6qIeLCLJpxYGOwc3U+s2XV6wxPG+pXJ8xOOA==
X-Received: by 2002:ac8:4b44:: with SMTP id e4mr7134675qts.266.1621372380028;
        Tue, 18 May 2021 14:13:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7e87:: with SMTP id z129ls13293580qkc.4.gmail; Tue, 18
 May 2021 14:12:59 -0700 (PDT)
X-Received: by 2002:ae9:f106:: with SMTP id k6mr7513333qkg.274.1621372379564;
        Tue, 18 May 2021 14:12:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621372379; cv=none;
        d=google.com; s=arc-20160816;
        b=pCH7Z6TZz24zRlnEvlo+Rpt0tnOzc9gxKmUNtEWRcZgAnJcTqg8TDOSNTB6wWUsF3X
         C7wu0Bw2C0ZGhBbJY5EfO6zkyFJos+F4qmQvbVB0vuRZPj6DvIEh9y3Q/ojk6WVCyx+8
         zaqUUlMkovWyLW5ADaetPadXETNdaHNBw+iulGjiaSFGxXTtnwzfpLp8yXp+wTtIae/7
         UYGQWSezai7DMlZgH2M//zmWVbI/fFZWDceNPn8hOC03aKaVV5TnxUAis0IJDZyNnE+p
         k1FTnxAbKCXJGtn6Z/AOjxF5mT7LEOGoscgEHY05FRolr8J0ihU8sOhOG2Q+gvcglebp
         mCXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=JN+hhMpOGu3Ms5AzzLftQuWMkLUCuOrGUEvIIEpwf44=;
        b=PuVAzeUlja5shPAFCMqNoxvJS5wUZm7I5BTftlghLtjMIqLSf4py+pr2birU0aCaKa
         ZGDjrOltfwhcSCJb8tLrk2It5ek7zngEkMVTLbeTsBF8ZOOnKUclfbkH64dm1zq/cJZo
         cvkf8duMQdz9og/EFqgY4icmh9/YPoXDtWHzv5KFVz13v3htWR58dtTRl+TQPjOt8BTC
         sV2J0QFv4oHMNcFPmhJ6bHh0yrIt9tnEIJqIqyX3g3ti7AkqusTc2i1/XxYEeurjtMLf
         PHiYqUdhJy9Sjb4K9VdoGK+26/tVPMckmSD+PRu0Oxt2IiNrGDE9310gumiOozunYPlx
         +L2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jW7Z5QSA;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o4si1714689qtm.3.2021.05.18.14.12.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 May 2021 14:12:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BDE79611BF;
	Tue, 18 May 2021 21:12:57 +0000 (UTC)
Subject: Re: [PATCH] powerpc: Kconfig: disable CONFIG_COMPAT for clang < 12
To: Nick Desaulniers <ndesaulniers@google.com>,
 Michael Ellerman <mpe@ellerman.id.au>
Cc: Segher Boessenkool <segher@kernel.crashing.org>,
 Fangrui Song <maskray@google.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210518205858.2440344-1-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <fe638f4e-4dea-2f5e-2193-2f8b63aaf7a8@kernel.org>
Date: Tue, 18 May 2021 14:12:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210518205858.2440344-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=jW7Z5QSA;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 5/18/2021 1:58 PM, Nick Desaulniers wrote:
> Until clang-12, clang would attempt to assemble 32b powerpc assembler in
> 64b emulation mode when using a 64b target triple with -m32, leading to
> errors during the build of the compat VDSO. Simply disable all of
> CONFIG_COMPAT; users should upgrade to the latest release of clang for
> proper support.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1160
> Link: https://github.com/llvm/llvm-project/commits/2288319733cd5f525bf7e24dece08bfcf9d0ff9e
> Link: https://groups.google.com/g/clang-built-linux/c/ayNmi3HoNdY/m/XJAGj_G2AgAJ
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   arch/powerpc/Kconfig | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
> index ce3f59531b51..2a02784b7ef0 100644
> --- a/arch/powerpc/Kconfig
> +++ b/arch/powerpc/Kconfig
> @@ -289,6 +289,7 @@ config PANIC_TIMEOUT
>   config COMPAT
>   	bool "Enable support for 32bit binaries"
>   	depends on PPC64
> +	depends on !CC_IS_CLANG || CLANG_VERSION >= 120000
>   	default y if !CPU_LITTLE_ENDIAN
>   	select ARCH_WANT_OLD_COMPAT_IPC
>   	select COMPAT_OLD_SIGACTION
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fe638f4e-4dea-2f5e-2193-2f8b63aaf7a8%40kernel.org.
