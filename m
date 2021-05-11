Return-Path: <clang-built-linux+bncBCN5HJ6RQMJBBJGU5KCAMGQEKU52NOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 058A537AB40
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 18:00:37 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id v4-20020a2e96040000b02900ce9d1504b5sf11000240ljh.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 09:00:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620748836; cv=pass;
        d=google.com; s=arc-20160816;
        b=04kIYVr/tmrZeZeXDFZb9b/iYngFwAYYI9quW4Eq/lPFGHTQRPZV+QB2d2avqlL8sS
         LHJKif+oDudH93EbMDKCTB8ETfw3IbRR8pbJvyDu4bIZPrG0gwhhXCW0eLX477xwn3fC
         BLhu/G9B+cEbmXCbZOnMGHlT8M3g72s2CMj4N3LKlc8tKMt9W4OdgnOb4oggl18kFJJU
         h8o+dPVCdXdo3tWCiExkAducBMHSDzniH0cDTXjri+Lsm0RDJDX1ZtWeanLRCylGsapS
         56tib87ojD+UslQTdVKnhnGiBEX+iPMXui6gUdrw/edKys/XPhBqOv5E4xdD9ZD224wk
         SMPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=STA2aiKPltiWmDBwFQ3Nx9Kr2eDB2NOuRiuuRUHqU2g=;
        b=QC+LGqnYYQEdFt+HWFyBHUs/wv7ZwdlHN8sWFv+98uIcJIqqMJC2+GeveU1/zH6X7K
         MvmV9kdbGr85FhkBk0HwaGl58EGrAKagOeRkAdaLGyKKVmumsN0+hrYBswCKZcClPQnw
         HagmPNNrjxYzlY8QrfmFe3rZ84MR4Pemnud551wQGS+eC8Pks87VkfUg605DRfFmlDSC
         LeEAWWKYU0HwTUmtY6wA4AOdzawNV5n32Tfx3i3TXp3lmvGQnfcdmSflfynsrlACnWss
         p9zY0V9WuE/Y2n4eAc/szf8OOnpPTqW5NrlipKNQSnKPazVB7Fv14MfZYCewdmxwbr+B
         MVRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HewY0gL6;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=STA2aiKPltiWmDBwFQ3Nx9Kr2eDB2NOuRiuuRUHqU2g=;
        b=O9Z4uj8qID9r2jvNiwc9bQC/nYG4R3QgdbNPOE6iu5ELmM8rSWgRHpUVcBVWcP8Y2p
         bd9l+RFA7I01na03jkFoLF6lj62iIqPNDdsoI3XA9R05SEgFBL+LYWctwycYKtSOY/f6
         9TOW8zLy33ryinI9VccguH3s7l/eH/qqN4xu7hn1rQSzIVC9oPXRisiiLSqflKHEJzrx
         +YkJ9r7fVdESL1AElVCZcJH+jz57jb3Bw1OizIJHUBhxVynVB2awsa0V4d04KBD6RhZs
         FwlGgIX79yTbu16I2tfjpK1tNzkwVbLQO0yKPfrMOmDe0MWRESlLcaskUcYdWY91/Vpf
         y7sQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=STA2aiKPltiWmDBwFQ3Nx9Kr2eDB2NOuRiuuRUHqU2g=;
        b=XHXGpAwB5fNGfLO9GXagYUW2eAFn2faweDoo/ClQiy4O3COOyembUh8rVQqvG5OaxO
         PR3j74eVN4eb0/HGIBohPyRUD4W+BL/Kedzj7rAv3ysJP/RqZLaF9cx3pX08c/eWIIfR
         gtOzL1SurHFw1C1MgBFgXkrphYSN0BntDenIEiSaOb4GN/NZP8LwCcFAQlDqvPw/hR+X
         ed5pTWsB/SRY28zHqeltoJDSpdJEvCysEKil68t3dyaByMNIEzKxSK+fp5OXMkWZ2E49
         CXVlelzbGDRuilWkEXrrWQt569kOJ1XhlO3xVyOldqqW06SlDQaJyk/E7OJBfHgzdUzU
         8n6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=STA2aiKPltiWmDBwFQ3Nx9Kr2eDB2NOuRiuuRUHqU2g=;
        b=NxisBUtajC0mGwDDIEOLrzXN4svak1Tb1QMrH26Fg0XvO3GDItojDqV3HcPPa8emXF
         T8YDyl1krSo2B8QSa2k2NiAcJHQ0oQKGZXwUnVtE8VAhsVKexeZ/cBV6InZTWCMlUpMJ
         vrSIt3dED5otdpGV+8fKXIB300tx/oGn3OSybtnGpqbTgb1iK+g2zUkvAQiiwfUxoe8Y
         gUVC/OIL288q+LdhtlIEI3FiJYQohNsJ1ltK9Fzv7Cn9jTOl5bVVkfncOamxOtqGv0YU
         7PjnchQa/QWqpkkilPIB/zRApinqSpICD0PtVJWalcrj5XaczbXlwKSauDorW3QURxg8
         f2xA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533uVikhSBfKfqGKNR2dtihrXZ8htE+bAVHf6pwmgi84hTLxio5L
	gn9QJ/G9cLqw+y+Ac91wG1Y=
X-Google-Smtp-Source: ABdhPJzwpPyo6386pEDpgebCkoF+8fSiGz87KAUeLLSulbFybw1m5CQvCwCxzytcXnfqX9AB0HCAmg==
X-Received: by 2002:ac2:5330:: with SMTP id f16mr21994866lfh.592.1620748836566;
        Tue, 11 May 2021 09:00:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5592:: with SMTP id v18ls12661708lfg.0.gmail; Tue, 11
 May 2021 09:00:35 -0700 (PDT)
X-Received: by 2002:a05:6512:1093:: with SMTP id j19mr21496541lfg.508.1620748835451;
        Tue, 11 May 2021 09:00:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620748835; cv=none;
        d=google.com; s=arc-20160816;
        b=nFzvIfcI2Y0kAzvewrshT2aMRcJCUYyYfWaC1h48Fum7Dzj3T6hFqfeNnED0iE6+Fj
         hf9N3QkmShP5Rv+EqA7vBp7HwDGpvLQUBi9P7qrOvlwXfrERq0+otMS/3w+/REERcaLX
         9W7QYhJOuOY9ZY25zX/qBDuFm6juFc3oMEhg1wBEIyUjzRk/fwCh13rCZZ39ZkZseTFz
         UrVUrVJN7zJhVjEK3B2gPpZpwwmbEKJvLRCKM6tMviTdox6dmCSsmgHiZQolopE3Jtx6
         kxL37B4WuhdKM3B5a0hNDW7tJzKZa/ZBA1xg5eK1a4RplJ+NbL4w/wseOPWUJLfHDRuM
         ggaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=AWqrTKMIPcNBCl3MksIMFmTbGs76+AqqH4j4wDV18mo=;
        b=C2T1w4R5eoeJmRVS+TwAxXdzEmDKLRCZLwQq+9Lg64/CzFcY+/3Lto/6wTkpvQ61Vy
         wwPrPdQhtezkpsaB0pZzd2qil1Zv9Ys2/4yAPskwm/YwLDlNeyUJo3OH4Ni/a8MhecdW
         1Nad7Z2cb0Ni9AAP3YhjKPPDJyzuaYdw3Ewpt4hO0QYaHxbHf1879SInjJQUNk9Azfgm
         IyA4MALaLp3Nm5uGCHDmf+jz7MULaYCp7kDhHnFiXpcfGXAPr/XQE1XGpjsS5h2S7Vpk
         NoAw091+cOMVA/zSAf4gbtqwd07QIqLW0W1jW2P7SxGtxjUXWRPWtVKO9Ph+b+CzBnwB
         WhDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HewY0gL6;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id c17si655456lfv.9.2021.05.11.09.00.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 09:00:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id y9so25766488ljn.6
        for <clang-built-linux@googlegroups.com>; Tue, 11 May 2021 09:00:35 -0700 (PDT)
X-Received: by 2002:a2e:5c7:: with SMTP id 190mr24393620ljf.174.1620748835287;
        Tue, 11 May 2021 09:00:35 -0700 (PDT)
Received: from [192.168.2.145] (109-252-193-91.dynamic.spd-mgts.ru. [109.252.193.91])
        by smtp.googlemail.com with ESMTPSA id n16sm2656522lfe.245.2021.05.11.09.00.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 09:00:35 -0700 (PDT)
Subject: Re: [PATCH v1 2/2] memory: tegra: Enable compile testing for all
 drivers
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 kernel test robot <lkp@intel.com>, Thierry Reding
 <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com
Cc: kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
 linux-tegra@vger.kernel.org
References: <20210510213729.7095-3-digetx@gmail.com>
 <202105112125.VctfC6sX-lkp@intel.com>
 <dd0b550e-76a0-bfbc-9d6f-5d867812046d@gmail.com>
 <06addbf3-0090-b76f-65cf-e0c10d284c69@canonical.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <3ab5d50b-4955-7144-5d1d-d44cb0892d65@gmail.com>
Date: Tue, 11 May 2021 19:00:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <06addbf3-0090-b76f-65cf-e0c10d284c69@canonical.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: digetx@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HewY0gL6;       spf=pass
 (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::235 as
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

11.05.2021 18:31, Krzysztof Kozlowski =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
...
                                      ~~~~~~~~~~~~~~~~~~~~~^
>>>>> drivers/memory/tegra/tegra124-emc.c:802:26: warning: implicit convers=
ion from 'unsigned long' to 'u32' (aka 'unsigned int') changes value from 1=
8446744071562067985 to 2147483665 [-Wconstant-conversion]
>>>                    emc_ccfifo_writel(emc, EMC_ZQ_CAL_LONG_CMD_DEV0, EMC=
_ZQ_CAL);
>>>                    ~~~~~~~~~~~~~~~~~      ^~~~~~~~~~~~~~~~~~~~~~~~
>>>    drivers/memory/tegra/tegra124-emc.c:154:36: note: expanded from macr=
o 'EMC_ZQ_CAL_LONG_CMD_DEV0'
>>>            (DRAM_DEV_SEL_0 | EMC_ZQ_CAL_LONG | EMC_ZQ_CAL_CMD)
>>>             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~
>>>    13 warnings generated.
>>
>> This doesn't look like a useful warning from clang, it should see that
>> the constant value itself isn't truncated, hence it should be a problem
>> of clang. Do you think it's okay to ignore this nonsense?
>=20
> I admit I also do not see the real issue here. The DRAM_DEV_SEL_0 fits
> in u32 and there is no other bitwise arithmetic than just OR, so why
> clang assumes it can have 32 most signifcant bits toggled on?
>=20
> +Cc Nathan and Nick,
> Maybe you could shed some light here on this warning?
>=20
> Dmitry,
> In general you should not ignore it because:
> 1. This breaks allyesconfig with clang on powerpc (or it is one of the
> stoppers),
> 2. We might want in some future to build it with clang.

I meant to ignore it from the perspective of the memory drivers, i.e. it
likely should be fixed in clang and not worked around in the code. Thank
you for pinging the right people.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3ab5d50b-4955-7144-5d1d-d44cb0892d65%40gmail.com.
