Return-Path: <clang-built-linux+bncBCN5HJ6RQMJBBHE55OCAMGQEITBQUBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F8137AE8E
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 20:36:12 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id f8-20020a0565123228b02901bf09112e2csf4556059lfe.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 11:36:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620758172; cv=pass;
        d=google.com; s=arc-20160816;
        b=YpfXeACdaCNbMeua28GodbYFdaf6uwMdG5fEwegK4t3OC7HbiLGukpxXxItwGM2rNM
         93H1VE0knokL+x3NTL8iGuloFzVb9VYVRM+/vF26iafLO3UfWjusjvsZrqkuQuGmRP8k
         o9UVhF89wY6QNqoYIUKPPs+fk0lJFZFGLKQUE20KXOLHZqbVoYzLbNT9X2UZ1fscqSZt
         zBjGnqYvOlxDEGe/F4NEvm7x2cxbCPC5gVqsxqr/r9gaBw565rYjzPa0JGlLiHsQvjgN
         N/ctYLbYKfWPmN9xOVzyqPKTbXf0xY9oRpLj8v4o2USWiCDMTXb6vuOOib6FK4TE7uto
         jZ2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=m1eSOR9vbhN5xiTVaI94iIPZZA02McJeNQu1AEONUco=;
        b=NZlDoWlq1wjaROfETrzeqA54oTrDDFp7wfO3yPYIjyaMQvZAkjFJBc9Ir1rOKuLmjw
         vvApIFuYCNHnwbNNaMjGenLLO0JrpTYHzkUUjHIXYx0OkWNnvZIDocImN2KqhaK5bcQ0
         cORA5EKq7mBpWHY0rMcKrhl5939qgOF1dOTeq9MzNJNg9gPmBKJMpvOu9bHrjmymNDuM
         yPrVd6htsr0LCQ7JExrfyERC/MlBMK67tZZ7n2HOO+2luUQpu5eg9btm8jm0sbeYL9/R
         ESS0pqhbfOP0OMZRfRI04Ws2PF244iWvaddx9skhCbShsrMDi22/U5ocg4941hTDTcNE
         fyww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RDXSEPOR;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m1eSOR9vbhN5xiTVaI94iIPZZA02McJeNQu1AEONUco=;
        b=OQ1wHZ+BIxZNuhG0NsDa/s2GCoL2EhVYXT02ok/acWJmMb07K823dKiE8alSPb3k5n
         YujcZ5eFSqqSA9CpCAoLsVr3MzYJZfUT45nxBfl9bqsw+6LjBaFmiMZuqYgWW3WS9vYP
         bhak9hB6zPu1A3V7be5xRVTyxa553n//2Y0pvxFDC66/VfhR3WKif+hjk36f7LPz8YSd
         9LpEdXk3u5QH7hGjWze8VAfZKQ9WKVcdyg1/VeKEuDOOwccLPVf5rrdqZspx5lY/Gmm8
         zYjfY07vwqZa2ZuJMuxae0Vua+u4iOkWt26qsa9OBeUGk/qgxRcm/GE66yUoWART6Fbd
         YWaA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m1eSOR9vbhN5xiTVaI94iIPZZA02McJeNQu1AEONUco=;
        b=IxTMHszeV054WkbfsUWPZx8NYpy1fEYteGghhvFHlC2hVy1f6mH91G9SuAI9AHuCc8
         e/dXnVaeHXLOOaow/LPUIztO2XYzkViAScDyMhxsnJk4vBxjmc50d4uagLjJvSlyloqS
         phuZYiMzxZWMQOhJRoebDHYDT/6q/rnSVswj9oLrwcjZCzanihfNE/ReDb8bfsWzk2k9
         IGsLN3f0sGM3e9qGVWuRLkz9AyzgQ58kmvE+wbCtGP523HxUt856U+ffd1aRXhoy+I7K
         KursZ4cb+xJTssbbsIW2fAy2d3kC52J8h9uNv4AR477LMBbJHWIzlQLjSlOpLq+0glgh
         jhVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m1eSOR9vbhN5xiTVaI94iIPZZA02McJeNQu1AEONUco=;
        b=XyqBuiNHwiVJg2xLebVIoCRMrzjNvB0IQiQxjh4TumvGTd+QO2YDOgfMcFoSOIGTde
         rrI492GBTBaKD+hYH8cumIva5CDnoYp85YF3cZ1PzRczQ/nwOwbGSXDVFoOulV3kfwYg
         fvPl4Zkc6Yvk9Yz3I/kYMeYRNZxdAh5kvKV6r64j0JjCWg+nXOsnjLy8zWk3vXYiSUvI
         q7gFChd96HfA8uz/y4vdjE9IPz5LTeuiYU/xd79e0oc/4bL5rOdFQ+kLMw3YHWMVpfeA
         SdhX+kyEcYBa0M/RP2E3NgcfR1gUvkGF2YnZ7dmAN2MG0y0mZ4/VKroQGi5iBY2ef0bV
         x/Tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532I+Hfdgpfy75GPRXJMD/aO+KBddZ2KPoRLpxE3QwbU/BnacMtE
	4zaputCSBo46bWJGn11ypQg=
X-Google-Smtp-Source: ABdhPJwgDA72KnqRVLBqbtHbOh4/hSZln29/Iy3N8TPXpSCf4HTGCtFHv8OXYfiQJQejZvtrxW315A==
X-Received: by 2002:ac2:4e05:: with SMTP id e5mr21827621lfr.613.1620758172285;
        Tue, 11 May 2021 11:36:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5e2c:: with SMTP id o12ls3182812lfg.2.gmail; Tue, 11 May
 2021 11:36:11 -0700 (PDT)
X-Received: by 2002:a05:6512:3f8c:: with SMTP id x12mr21380337lfa.622.1620758171169;
        Tue, 11 May 2021 11:36:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620758171; cv=none;
        d=google.com; s=arc-20160816;
        b=zJENEH4Mknw4RnLpXf1drrTJnd5msJFLXsVTwQlpRUj4YXpU9XlsRqEwM0WIZUCKKm
         0orkSTXji2T04nHWLqjHcH/y1BOtxGAf61NdS/TG9Y8bFMu2uaeWbUL5VSysy6H1M/RV
         BN+C4zButO3Qny8/CMvVcgXYgeA/Jrc5V3WKHnTNhQPiDxQjlcPUjb21doYoiHCBFZpd
         OfpGHqDCxASQxaNzxizD9WlCuXjpRpuiu6IEgkRE5FZfWWIK+L62Rx2UX7G+R7RKethg
         5xwH3eKnjnqmtzX17+JWey5qFi4hVaD+8x8/xI9vpQXq+Jz0JhqUOUJ1LWgC7roFeTmc
         pCKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=gwp5GrMLJNGrq/8G5vfZaiCADpEon9ModgzTBM7EDWE=;
        b=rHjBLAzdcsLKxbbxKz2Z87DLiWwpagmRHQ/kZ/bzcLaLgCCNeB8ta+ElLvhanP4TVi
         d49mc/CbIXottd/S8Mx4NhWmX0qdnBmWErl/HwVoVL0gd1gL02yOTTGU3iAursWTiPOs
         Q3fg6MKhloDHIxokpzKJ2lUKo8uJkSjiB9pI6EsGzSufqfY61KDPxb7mcyuOpM32wxan
         YoVty5l+WBqk8qYKc4mHX7O7tunca4pt0qB468Hkes/cqTNrHkLAUPFlYtK/ktuYk6lD
         UiduHD0v0w+uTJVWQoKWbJBv1MR8L3N55nh5pAiBh56hR4wyPBYw3sOa5rTCssJxnB5V
         odpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RDXSEPOR;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id z25si741715lfu.6.2021.05.11.11.36.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 11:36:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id z13so30085750lft.1
        for <clang-built-linux@googlegroups.com>; Tue, 11 May 2021 11:36:11 -0700 (PDT)
X-Received: by 2002:ac2:4ed9:: with SMTP id p25mr21336596lfr.576.1620758170970;
        Tue, 11 May 2021 11:36:10 -0700 (PDT)
Received: from [192.168.2.145] (109-252-193-91.dynamic.spd-mgts.ru. [109.252.193.91])
        by smtp.googlemail.com with ESMTPSA id v12sm3800834ljn.92.2021.05.11.11.36.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 11:36:10 -0700 (PDT)
Subject: Re: [PATCH v1 2/2] memory: tegra: Enable compile testing for all
 drivers
To: Nathan Chancellor <nathan@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 kernel test robot <lkp@intel.com>, Thierry Reding
 <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20210510213729.7095-3-digetx@gmail.com>
 <202105112125.VctfC6sX-lkp@intel.com>
 <dd0b550e-76a0-bfbc-9d6f-5d867812046d@gmail.com>
 <06addbf3-0090-b76f-65cf-e0c10d284c69@canonical.com>
 <3ab5d50b-4955-7144-5d1d-d44cb0892d65@gmail.com>
 <YJrARxhVD7QM/GPv@archlinux-ax161>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <ca2be6d1-5bb4-b44d-f306-cdf1dd369a39@gmail.com>
Date: Tue, 11 May 2021 21:36:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YJrARxhVD7QM/GPv@archlinux-ax161>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: digetx@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RDXSEPOR;       spf=pass
 (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::131 as
 permitted sender) smtp.mailfrom=digetx@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

11.05.2021 20:35, Nathan Chancellor =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> On Tue, May 11, 2021 at 07:00:34PM +0300, Dmitry Osipenko wrote:
>> 11.05.2021 18:31, Krzysztof Kozlowski =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
>> ...
>>                                       ~~~~~~~~~~~~~~~~~~~~~^
>>>>>>> drivers/memory/tegra/tegra124-emc.c:802:26: warning: implicit conve=
rsion from 'unsigned long' to 'u32' (aka 'unsigned int') changes value from=
 18446744071562067985 to 2147483665 [-Wconstant-conversion]
>>>>>                    emc_ccfifo_writel(emc, EMC_ZQ_CAL_LONG_CMD_DEV0, E=
MC_ZQ_CAL);
>>>>>                    ~~~~~~~~~~~~~~~~~      ^~~~~~~~~~~~~~~~~~~~~~~~
>>>>>    drivers/memory/tegra/tegra124-emc.c:154:36: note: expanded from ma=
cro 'EMC_ZQ_CAL_LONG_CMD_DEV0'
>>>>>            (DRAM_DEV_SEL_0 | EMC_ZQ_CAL_LONG | EMC_ZQ_CAL_CMD)
>>>>>             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~
>>>>>    13 warnings generated.
>>>>
>>>> This doesn't look like a useful warning from clang, it should see that
>>>> the constant value itself isn't truncated, hence it should be a proble=
m
>>>> of clang. Do you think it's okay to ignore this nonsense?
>>>
>>> I admit I also do not see the real issue here. The DRAM_DEV_SEL_0 fits
>>> in u32 and there is no other bitwise arithmetic than just OR, so why
>>> clang assumes it can have 32 most signifcant bits toggled on?
>>>
>>> +Cc Nathan and Nick,
>>> Maybe you could shed some light here on this warning?
>>>
>>> Dmitry,
>>> In general you should not ignore it because:
>>> 1. This breaks allyesconfig with clang on powerpc (or it is one of the
>>> stoppers),
>>> 2. We might want in some future to build it with clang.
>>
>> I meant to ignore it from the perspective of the memory drivers, i.e. it
>> likely should be fixed in clang and not worked around in the code. Thank
>> you for pinging the right people.
>=20
> I do not think this is a bug in clang, gcc warns the same (just not here
> in this case): https://godbolt.org/z/e9GWobMnd
>=20
> DRAM_DEV_SEL_0 and DRAM_DEV_SEL_1 are implicitly signed integers because
> there is no suffix on the literal 1. DRAM_DEV_SEL_0 is 2 << 30, which
> can be turned into 1 << 31. That is equal to INT_MAX + 1, which then
> overflows and becomes INT_MIN (undefined behavior). INT_MIN is then
> promoted to unsigned long because EMC_ZQ_CAL_LONG and EMC_ZQ_CAL_CMD are
> unsigned long due to the BIT macro, resulting in the gigantic number
> that clang reports above.
>=20
> I assume that this driver only runs on hardware where unsigned int is
> the same size as unsigned long, meaning this problem is merely
> theoretical?

Yes and no. The driver is built only for ARM32 today, but it's also
usable on ARM64, we just never got around to enable it for the 64bit
Tegra132 SoC.

> Regardless, defining DRAM_DEV_SEL_{0,1} with the BIT macro fixes the
> warning for me and should make everything work as expected.
>=20
> diff --git a/drivers/memory/tegra/tegra124-emc.c b/drivers/memory/tegra/t=
egra124-emc.c
> index 5699d909abc2..a21ca8e0841a 100644
> --- a/drivers/memory/tegra/tegra124-emc.c
> +++ b/drivers/memory/tegra/tegra124-emc.c
> @@ -272,8 +272,8 @@
>  #define EMC_PUTERM_ADJ				0x574
> =20
>  #define DRAM_DEV_SEL_ALL			0
> -#define DRAM_DEV_SEL_0				(2 << 30)
> -#define DRAM_DEV_SEL_1				(1 << 30)
> +#define DRAM_DEV_SEL_0				BIT(31)
> +#define DRAM_DEV_SEL_1				BIT(30)
> =20
>  #define EMC_CFG_POWER_FEATURES_MASK		\
>  	(EMC_CFG_DYN_SREF | EMC_CFG_DRAM_ACPD | EMC_CFG_DRAM_CLKSTOP_SR | \
>=20

Thank you for the clarification. So it's actually the code which needs
to be fixed.

The DRAM_DEV_SEL is a enum, hence I'll add patch in v2 that will make
the values unsigned.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/ca2be6d1-5bb4-b44d-f306-cdf1dd369a39%40gmail.com.
