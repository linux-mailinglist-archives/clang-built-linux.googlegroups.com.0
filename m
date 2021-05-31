Return-Path: <clang-built-linux+bncBCN5HJ6RQMJBBJPI2SCQMGQESEILSXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 984D1396841
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 21:08:22 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id u23-20020a1979170000b02901d2e8dd801dsf4008966lfc.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 12:08:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622488102; cv=pass;
        d=google.com; s=arc-20160816;
        b=0SB53dC88YMMxS1GGUU+s+zqAMcjVRAVNJqKuBQs0kU3SYIQhLDeRcnU3j4tV/QqYB
         MNQ3FV9nwMpV2jPQxqaXU7Kjyu05f7Pe1diz1rphj5fikhRRnXhQcxgiIRhOJyQoFcVD
         lish9bbYevf3c2plDaMiUlJY2YYojMdvvvGZPaD3I93oUQ997nzF0ETsYcGgbVbK0itM
         GwCwdn7xcNLyCj6n7kx6TXHbgB4S6PwHCh8hslS8jhsKYXE/U46AquS7vIkZxpM12ZGc
         Z+Fcx2bqZpxMtYSSZogTbsT4PdHePZzAKzpLpxZ9hGcG/4cAD9fu57NTAIZsqdzlucCR
         5Jag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=6Q0NqOEGrVn1sPNXQfncEbqWIkZVolvN6zPn8VREu6I=;
        b=q/+Lmpfx0M4os2x9fF2GRViP4EUmre78hSWm/zS87FvExWz7ghr6mFja1xgLCilWwU
         6/NZ5qxrJ2Bz/CzHI2v6H+VhDwnWbLXEg7QRXeYATCCiv7cVgQFnc2CDXCNHWB3IoAcB
         EbMRmcdhzYOsKkZdEmACx680enRXpXFH7YeU7BCAlLWMMslUN7SU6mWIO/eXCk1bhnfi
         jqO6m9wJf+8dtZgJoxqewiGvU+6D0R99wqt3b6QEPRavWhV4sjddf6s7H2BKzq6r7/mX
         B2wEKt1JNf+NB8fq2/xza3MN1w33Au7kKeBa279rQGQxnUfPBLrN3CJ7bU1Lh1GMJ/nC
         2eHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D1fHfWoh;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Q0NqOEGrVn1sPNXQfncEbqWIkZVolvN6zPn8VREu6I=;
        b=ie2H3st3bXdZ1sm3+2CaKggHSD49z5z0PcK6DAoteLd9abqbeIJVFk0E79iHKZjtwh
         X1kPhE2grxrdBuft6UvNNVa/0LQF6FqQaSwn1CT3mgNLY2ZxIL/C2fAbhhXszwi/n8xk
         oyfdFFPfTh2OZ0Ihse9gnz8JP7dcFSjks9qcPu06iiSohpbSMZreIMhMF1qVnS1bqxfs
         FLIJ8YXZyUNgtwg81c4o7s1h+sF7cAeQ9isclA9aFI8Q6IMnFyhYvXxwi8n7+6ftG3Uf
         FgCmvn5C/Eu90WBd6CAFelT1dlve2rRUTckzMX9zXB4EqnwIrO7XutQ2NMnTDCpUF+FJ
         Nq7g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Q0NqOEGrVn1sPNXQfncEbqWIkZVolvN6zPn8VREu6I=;
        b=glfm/nOqRpLi2ZxIyetw9otOEb51KISd78WMBR8ESKQ8YcyDMrKaD9DsZqsfW2ilm0
         M8a6xxjZGqSE222WOB0HljuLh86IJgsInNQt/lgoeqI0V2t93TUK/WyU87fF2NMgYSuX
         5c9hF782kAUNAxYmlVm8EdHnmlWYVthW8pekddAiGtD2IWfXs1XLb1hosV0tNz3hsX61
         ciIxg2pMbE4IKfVNJ2x5Gvalkkh/SWeNWJ+Pw6pvZRJrap96yn5FpCLyRJ8/vZt+pCdv
         ZbJVSNPuX0130YOt72U5g4U425/ILbk8nODXcGoVHUGFFwUabXW3OYRVCacisvK4Dw9J
         MSOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Q0NqOEGrVn1sPNXQfncEbqWIkZVolvN6zPn8VREu6I=;
        b=llNqfsI3ynmO3sHyD2TOvQdQzW/C+wQX/GlBYH2SwUU+x163D9AGkyK+zNgVJZ+/Uv
         nnuTPdhWwXs7zjplZa5CrIown9FWpoPBzjqjmC3DOz00oG4FSgLLglWjwlKyhUgl40vb
         chve0t0QXO384D2jDsYxu9cciMHLeTyAkwV/lm1KfdJ5fTQfmjXuhU+JqKT14wbv63RP
         +rdOx7DNDvzLuiR5q1857Ab7CedFaPiv7VA8jzoLMm5x6hsmgL1TMirWfCktp2oQFpqK
         9vXJ+1aTrce7dOzA8EIlKo5nWY45UE47Oey8AB7hs2bp5UnUvUnLR5WDntd9MpVryBB4
         wVEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jfPjQ67BirUJ7bwTJICkXS+YI26HAzAIVcMeNz7szvvoOz/PG
	behyz+rnER1OcoXun/3+RSY=
X-Google-Smtp-Source: ABdhPJw/3MCxtJiSL48ukcH9AopKJWe6t2FMWUJQBqy5Sr7O60jjAL9Sdit9MhmIquGWqKpuAfIlkw==
X-Received: by 2002:ac2:5c03:: with SMTP id r3mr15005794lfp.504.1622488102114;
        Mon, 31 May 2021 12:08:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a371:: with SMTP id i17ls2749693ljn.11.gmail; Mon, 31
 May 2021 12:08:21 -0700 (PDT)
X-Received: by 2002:a2e:a78c:: with SMTP id c12mr17414025ljf.421.1622488101125;
        Mon, 31 May 2021 12:08:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622488101; cv=none;
        d=google.com; s=arc-20160816;
        b=kpxi6EMGJ94DeApFKpZFcXI3Z9n72emUZWCdKcu2O2hRz8J3RelKYWC3InFtx2uxWn
         YvrkrGA/M1ekng1iC14hqDpNHV1wS0TR8UMzLQ+5xHe+Sv5s/MmqwE4QXQ1756KhiOKY
         QIw07ZRqlos+Jg7FOiFEa5S3HQCEMoAMKlFCpdkE+3FErywlEj8kgTMkmltG+etmqF/s
         XHVLjqDk2htRszA+hSQ0yHHhh5ToNe1P6085ftcgeAR6D7b1VqtpzCHVNWnU8KZv53Yk
         M/ETqH6sK7LI5p8Ciof9OvWlr3JOV9/3RVD09bq/2+zBuvmuhKsRcQ/RKxhj4an6Kf5e
         uekg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=kSyfqsouctA7ju/SYIaMzLCOJemYBCw5977jYixKedc=;
        b=Xa7zKVPpwLQVHYpX68CZqN9j3X27vPEMYxte4YWmpXHwsBYxanMXbk42h3kkAvJh/X
         YisY/hhGTdIDzbHpMHwidMdfDzj8z0zIWNYuV5y7gFe935FY4ARgqSXU4wr9lLsEXVPD
         r59dyFYaNowDU/QdDaPpyM6N8L/DF/iUSN/NKSSbZtzWqAUnWh772+40ZWDIzaW/mLpu
         ni4EJBwc0zCbKBpcN5hZQi994fvID5OcKzZhLMmKJjHQVbmLQJ/whLq6PFLJgpmXpWbr
         w30iOu6bdBp9Nh37VY/zaz+8pqYuF7DHrS+Kl4UyF5hmxT/aYmKXDQwcBdu0dk3DjR6Y
         cUiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D1fHfWoh;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com. [2a00:1450:4864:20::229])
        by gmr-mx.google.com with ESMTPS id i14si595575ljg.7.2021.05.31.12.08.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 May 2021 12:08:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::229 as permitted sender) client-ip=2a00:1450:4864:20::229;
Received: by mail-lj1-x229.google.com with SMTP id o8so16223980ljp.0
        for <clang-built-linux@googlegroups.com>; Mon, 31 May 2021 12:08:21 -0700 (PDT)
X-Received: by 2002:a2e:8257:: with SMTP id j23mr10077402ljh.396.1622488100548;
        Mon, 31 May 2021 12:08:20 -0700 (PDT)
Received: from [192.168.2.145] (79-139-170-222.dynamic.spd-mgts.ru. [79.139.170.222])
        by smtp.googlemail.com with ESMTPSA id b2sm257908lfo.221.2021.05.31.12.08.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 May 2021 12:08:20 -0700 (PDT)
Subject: Re: [PATCH v5 08/14] memory: tegra: Enable compile testing for all
 drivers
To: kernel test robot <lkp@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 =?UTF-8?Q?Nikola_Milosavljevi=c4=87?= <mnidza@outlook.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Peter Geis <pgwipeout@gmail.com>,
 Nicolas Chauvet <kwizart@gmail.com>, Viresh Kumar <vireshk@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Matt Merhar <mattmerhar@protonmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
References: <20210527235413.23120-9-digetx@gmail.com>
 <202105311837.4zaj25Fo-lkp@intel.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <3dedc9da-66ff-83ed-836a-5ff6ff321dc9@gmail.com>
Date: Mon, 31 May 2021 22:08:19 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <202105311837.4zaj25Fo-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: digetx@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=D1fHfWoh;       spf=pass
 (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::229 as
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

31.05.2021 14:01, kernel test robot =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> Hi Dmitry,
>=20
> I love your patch! Yet something to improve:
>=20
> [auto build test ERROR on regulator/for-next]
> [also build test ERROR on robh/for-next v5.13-rc4 next-20210528]
> [cannot apply to tegra/for-next]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>=20
> url:    https://github.com/0day-ci/linux/commits/Dmitry-Osipenko/NVIDIA-T=
egra-memory-and-power-management-changes-for-5-14/20210528-075529
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator=
.git for-next
> config: arm64-randconfig-r013-20210531 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project bc67=
99f2f79f0ae87e9f1ebf9d25ba799fbd25a9)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/a384967a654ee34cdf5ade1=
92aaccecf0adac21e
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Dmitry-Osipenko/NVIDIA-Tegra-mem=
ory-and-power-management-changes-for-5-14/20210528-075529
>         git checkout a384967a654ee34cdf5ade192aaccecf0adac21e
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Darm64=20
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All errors (new ones prefixed by >>):
>=20
>>> ld.lld: error: undefined symbol: tegra20_clk_set_emc_round_callback
>    >>> referenced by tegra20-emc.c
>    >>> memory/tegra/tegra20-emc.o:(tegra_emc_init_clk) in archive drivers=
/built-in.a
>    >>> referenced by tegra20-emc.c
>    >>> memory/tegra/tegra20-emc.o:(tegra_emc_init_clk) in archive drivers=
/built-in.a
>    >>> referenced by tegra20-emc.c
>    >>> memory/tegra/tegra20-emc.o:(devm_tegra_emc_unset_callback) in arch=
ive drivers/built-in.a
>    >>> referenced 3 more times
> --
>>> ld.lld: error: undefined symbol: tegra20_clk_prepare_emc_mc_same_freq
>    >>> referenced by tegra30-emc.c
>    >>> memory/tegra/tegra30-emc.o:(emc_clk_change_notify) in archive driv=
ers/built-in.a
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>=20

I missed that T20/30 clk drivers are built conditionally based on
CONFIG_ARCH_TEGRA_xx_SOC. Will fix this.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3dedc9da-66ff-83ed-836a-5ff6ff321dc9%40gmail.com.
