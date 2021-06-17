Return-Path: <clang-built-linux+bncBDDZ5LVW4IHBBRFVVWDAMGQEYMMJ4HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE3A3AB5C2
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 16:23:00 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id y10-20020a05651c154ab02901337d2c58f3sf3019949ljp.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 07:23:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623939780; cv=pass;
        d=google.com; s=arc-20160816;
        b=q+9VcDk8hiMqs+q6tc1GRoGOGRxWUiahMS51pt0p/YcemOR9qtNWPWhERHEGH0rPHr
         Q1cz9nhwMhs90CZfWs3OqMjHv6MU9+4X4OuiD+giGi2uRfE8Tt7HZwe1IH0MqJiMFEBR
         GOWZcMSil1UhViQRaIUZZag7crQ6XJhJprk4T95M6h4DkwFN7F7QYFJLAK0zrTxDFqgc
         n6IEL4RELXHWJc5LOIUcRzhfEmveOFWf6EZQDyxOvZHmBTzQdV9a77LCFcPpoQQdcDkQ
         SdIi4yipnMK+4DgPjwSsFCkDaOy9AVrYdTGFI/GiAh+yiGUmY73/2s62azFn5l9at/E7
         QBGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=BxwMoNaAT21AV5BWfT5UvKeY3dhtN8HcL7oVAOS5dso=;
        b=UJRR885IExrZwz+CuOJjKy/pb+lBmfIZvNZVcIYy3Tu9rNhKvlh3E9mhBksOEN5+L+
         v6r6EBE7hX6MpU6pkxxPcjUSjTVDKbvUwGPobumHRDU0iWaWOyOkFkxIbMwbC/anjen+
         FDyNK4CeelGw9Nr7DLd/NRHvCM2q0JDkriYcJrrAK+3WGti8jl0XdUePXxJNnsAZh+M2
         a98MQXATM29trP0dFixhOW1DxZhl6GvA2V2TT5hFAxfSQdBehgoTpXLnq5ci9FObmeTV
         dbhoMGuf+gdYfZD1NGW57bZ7oyJYP4nYC0uGqaPZkeklwVcJMMEzmSDMlXMaWBXiHkcS
         zdMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BxwMoNaAT21AV5BWfT5UvKeY3dhtN8HcL7oVAOS5dso=;
        b=fWwOZsr++wr+Xj2OjBI3uWpNd3I5IZEQ0ihyjdfBLUsyu/+MUFVN727nphAIKHbJYY
         0gSpqlRr+07O2bvypdqc0jgqPMbcRYdcYaxBEWhzKyfJ3JwWUcQvc2R6FlAwgm/b/rmB
         ryRyDYFdLbF3g2k6zwxmdZxe+x4TfF5JZTLT4WPfQR8Cb5NAtngN0cww2dM+UIie+u7V
         PUEvKH6gc6+JvkgSAW5o2Dmg5JJFwY+1fvcvPpXeNlb3LIIBKSDcfBCHwhkjh+l6a35r
         fkexwVs3Emu/0zZADNuFoousLfKsEXGKUchDLnqz7uXg3M8m0fSXdL3aY4ZGgbjU+VCd
         kGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BxwMoNaAT21AV5BWfT5UvKeY3dhtN8HcL7oVAOS5dso=;
        b=XyDeIPyWorjY4QPLbv3www1nwcBejcNpRDC9M1CF8hvMqAkqxZT5rpJ/G6XHnsf3HK
         jR7WSP5971oLjKUqYIeenXcot9xlybRwLEITaxojpupXm9TrgcCwtzNZL62xPm19TaGB
         8QeFDV7vAoAYwuv372Dcfql2fFyseUth1RPs64NgSBnvCCpbnoHC+7uI27L9+uF/4WQP
         Et3ocI2LGQ6uj882alXx+MUbt8UAvMTsmYOZtJ+5FTOKXWgQEgnKVi2jNEP4pqsVTa8K
         jN28/1jz8FtnL1AKmkqpQn35eXO50yLCmXOE+2Lt3Trq8ojPFIU2EQv6XKKBHDZ7Ml+t
         2DnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530nCRMVfRdQzvfYngDbGGw64xBg/aMla42I6Lu+NfMMxG/o2/DM
	0y/WfQN3ImC7YfXirx5q1kQ=
X-Google-Smtp-Source: ABdhPJzxgVczMbVIFk/c8ySPH280wXne3ZQEVtiXBP/kwP1VJnCuYs9ZkhsMoK4PVJQAyBOj7rhn1w==
X-Received: by 2002:a19:da11:: with SMTP id r17mr4248278lfg.595.1623939780299;
        Thu, 17 Jun 2021 07:23:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1025:: with SMTP id w5ls1564074ljm.0.gmail; Thu, 17
 Jun 2021 07:22:59 -0700 (PDT)
X-Received: by 2002:a2e:9d59:: with SMTP id y25mr4780342ljj.399.1623939779260;
        Thu, 17 Jun 2021 07:22:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623939779; cv=none;
        d=google.com; s=arc-20160816;
        b=xaVlGyuLCUuqym38QG/IHyp+H0uCQbCTBI7zEVgGlcFknSOkg1RyDzbq5M/cpkJVJD
         FDRtQkLPgQR1b1EWuSMH//E4RMo7sGJe8q7dr/Ot6kFtzA32wxSaPVzZx8Edwjwy7pr6
         fgsKYP0kKjl3WOed3OV4i0LLwEgIrXycwmfp6oZZOFWSINYy9fxymxfnk7+R0I1vu5I7
         OyMCdWqNDdDG/ulZHQ1zGQBunA9zEADjpkC8rA9t0y0U0mZmgUouTzx29q4N51slhC/J
         ahRmr6mY136uh0R9E8ylog+PEEDlZxMggreWR34ZX5FGJkxRQRXMTGTHuWJHQsLyJn7Q
         ExZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=UxmWdI3kk7/Z+w2Eb6JIGcL9o40mvJOT52WjFUKRqiE=;
        b=xxuP9ZBCZKTKILrOJJICh7wcZ0wBYfN/LsOH9xDWhdVQUH8Ebalzsm/Fwo5Sy12qzy
         7bWZbi3gtreth+HoZfPzuVsPSfQAmoye1pMMpcte2I0Hh8952jtk9atGVeoAN2Tv1Thh
         xLlyiZv2uZJNsZof5kStIpxRZPFEALwWDQwJ8MnPn2IzzOnQqamvB9wpAdjflOHSp/uE
         ozncvOQ8foAX50PJH5nQ7eZmc0+dICDfIPxlLjU0Qr/43ZkxjGAeMgAlYfjQBJAC/LmQ
         /PDNWwyNY41JHEFjjd4akfaL91jh/v6LNdsi5tiVhwXFLemXGDZjGDztzgM9CcuPzPXP
         Tz4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id x23si208595lfd.5.2021.06.17.07.22.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Jun 2021 07:22:59 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from mail-ed1-f70.google.com ([209.85.208.70])
	by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <krzysztof.kozlowski@canonical.com>)
	id 1ltsv4-0002rE-Kp
	for clang-built-linux@googlegroups.com; Thu, 17 Jun 2021 14:22:58 +0000
Received: by mail-ed1-f70.google.com with SMTP id r15-20020aa7da0f0000b02903946a530334so1624357eds.22
        for <clang-built-linux@googlegroups.com>; Thu, 17 Jun 2021 07:22:58 -0700 (PDT)
X-Received: by 2002:a05:6402:406:: with SMTP id q6mr6801965edv.149.1623939777871;
        Thu, 17 Jun 2021 07:22:57 -0700 (PDT)
X-Received: by 2002:a05:6402:406:: with SMTP id q6mr6801950edv.149.1623939777743;
        Thu, 17 Jun 2021 07:22:57 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-177-222.adslplus.ch. [188.155.177.222])
        by smtp.gmail.com with ESMTPSA id ia26sm977089ejc.73.2021.06.17.07.22.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jun 2021 07:22:57 -0700 (PDT)
Subject: Re: [soc:tegra/memory 19/20] aarch64-linux-gnu-ld: Unexpected GOT/PLT
 entries detected!
To: kernel test robot <lkp@intel.com>, Thierry Reding <treding@nvidia.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, arm@kernel.org
References: <202106171927.ZsjdP41F-lkp@intel.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <bb8a27bc-5eef-7702-5e3f-1e9fa69f76ec@canonical.com>
Date: Thu, 17 Jun 2021 16:22:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <202106171927.ZsjdP41F-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: krzysztof.kozlowski@canonical.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com
 designates 91.189.89.112 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

On 17/06/2021 13:54, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tegra/memory
> head:   2c1bc371268862a991a6498e1dddc8971b9076b8
> commit: 8eb68595475ac5fcaaa3718a173283df48cb4ef1 [19/20] iommu/arm-smmu: tegra: Implement SID override programming
> config: arm64-randconfig-r016-20210617 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git/commit/?id=8eb68595475ac5fcaaa3718a173283df48cb4ef1
>         git remote add soc https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git
>         git fetch --no-tags soc tegra/memory
>         git checkout 8eb68595475ac5fcaaa3718a173283df48cb4ef1
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
>>> aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
>    aarch64-linux-gnu-ld: drivers/iommu/arm/arm-smmu/arm-smmu-nvidia.o: in function `nvidia_smmu_probe_finalize':
>    arm-smmu-nvidia.c:(.text+0xe0): undefined reference to `tegra_mc_probe_device'
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


Hi Thierry,

Will you take a look at this failure and prepare a follow-up patch? This
came already from soc tree.

Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/bb8a27bc-5eef-7702-5e3f-1e9fa69f76ec%40canonical.com.
