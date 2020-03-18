Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUW5ZHZQKGQEU6S63OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F44418A2AE
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 19:56:19 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id i67sf20742424ilf.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 11:56:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584557778; cv=pass;
        d=google.com; s=arc-20160816;
        b=OmoRT4ZOH9+tVqZIy7+TSUQGDKXRu2A69v0yzWaX2ZjF80/1JYa9t5ZuDjxGERByJn
         FUCrdvlXngBJqcDYsiikv2tZIVJFOKzIdUBMalMEIh494rdp8MGuItSIqmz5vusedpaN
         +uhw3Zq8eyJ57+sKFs1WYHZPKwsQ7miWWKi6y02HyYDRLpcqqvYv6reDFslwf1N3c3k7
         /fmQgcxbQUx2ZCwVyCKuTKQ3/3Go2O9KxzudFL0SMxiGqxYc/HwlDRjBvV6v8hgsoRbz
         Yrfdju/urJqwFo/07dUIb7+WDZLAKV9Kfz6ilVfENz78ZFq7ar2PA9BCeTcPW9HrZnB4
         p2Pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=xjGeWYx7HC24tqsgk7vltsMkGUKmV2zL+O1DCcy/hWA=;
        b=vrbXHfYszuytRMhoXDIhGchX6/qJcOoTrLm+yPyQ94KGU7N+Synp0UaYVDusKO4wlj
         fVluxcvCs2h1mDTJKxF29KT1Iw92pouqjBKiD6afbAfzgtQTRUVHUPmPcdsuEkRYio12
         XVsgleS0THgm8615g7DKL9yKk1BOraLl7yyRVYegLvVJbvi1NWmOQcwI0h1ZZeQyFOuz
         IEIIzNuYKWURWVpMOGyyJpKGh1TcxHKca+a5S2P8jjgL9qGWU4B7KgI6qlnXZL08poUO
         Lrm7IHkVrXboT0fSQ7dCchT0QztYhvQDcWM3DHrCRgxZdHE7SNyQJW2h9f4WEOrhriHS
         JXrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FUxgAQOG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xjGeWYx7HC24tqsgk7vltsMkGUKmV2zL+O1DCcy/hWA=;
        b=dPikYX5tWOLwt5k54v4zFgWAov1FBwbyMH2JEuWLZn1Mz5knNpZqG/gObiq956gAG6
         aiBDBWkN/0hWhZtPMWhoZMVJntfNWS+CqnTCsMvQNQWpjfrZYaYHqEDUzM+9gKZoMk+a
         3wlzwQWxtfTRL4QdrGxnKYeAmAIOrgsoTnT2cPCfyUCOlA2pZjM8KoOiG1EIsnBVCk/0
         8EMPyKfNairMAMma11PIKalFkhAvWOu87H70Idapyb/FYrvBIYuxFxjy2DGuqm5e/x0T
         dNOBzZJKUHJbgilv1CqSzs2MpAMdTvV5ImdPFNIBZdued5USYZq7XfApz6dZT1Z8kIVA
         x87A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xjGeWYx7HC24tqsgk7vltsMkGUKmV2zL+O1DCcy/hWA=;
        b=ZiD6HerygtYxBlGQZWu1b7rW7KXTxgVcF2Zh4U4xLrCpIC4o3eaEVN/S+ymhTC2fa6
         MJSvLYKlB2O7h6Dgu6Xej7Md29VDJRVmoOVD84tvUFPoQQzMyLoF2DL6Hpw7K9UWXhro
         v17OdpVeutHiwAYNfJmTYpSgsOcdyexU5Gcee3bCxVzs2vbcw7Gh4r5OJKXsoAwypLX0
         poI72o0IzqZgitG0ICKPOHyADXo7g90/SteHH4KCcbpXv3Jev3JEfWImdRSl5nNLFkGj
         54FaLv+MMVguB2prMY7kgFCtreizf/1GksmTC2HMUFxJAieVZSdE9MtHUO7VxDyxsMd9
         P6Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xjGeWYx7HC24tqsgk7vltsMkGUKmV2zL+O1DCcy/hWA=;
        b=GMN1od3wq3HrKfKnRPa/O7Egel5m8XJNduLBldTU7WMmmaicPNemEWw8P8eUmEqPGz
         fPsQmQZs/3MiaoVigf+zNkuGiWob4IyQJV7b4yBu8xZwnGTEDq9Sk0xHHsJ4qbq9nnYq
         Cuc1zL5AQ1N/pb4EmluZe4YZXXK0unbRUta8dk0cp/JVJCY6MdF3ia3AutyG6bai67pf
         riv/A5zRKPFaQHp78z6fno4sozCWahR7ZkCRzO0/ALahTCT/J3GNQT7MzVW/hRGIvI/M
         kKAOw3rgx+d3CWf9MYP9CTvTbVdI4hJDdAw9oXKV1zCfJUvALCBQa03Qz3pGqilj17gR
         BAdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ21YCL16FnfhUOk5er/tiD+7qsn2kX0IhsYxV04MZZx0yCtL9M9
	uujiY7hI8Rp5oVjt6G7vWNs=
X-Google-Smtp-Source: ADFU+vsO2b60vcWHB2aVxqjn/9mYsgYHvCQ0IOtkwM0gn9jyCGZ3KBmPAaIiogFwu34gO5KfPNX1lw==
X-Received: by 2002:a6b:7b02:: with SMTP id l2mr5070084iop.121.1584557778542;
        Wed, 18 Mar 2020 11:56:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:8106:: with SMTP id e6ls7187919ild.6.gmail; Wed, 18 Mar
 2020 11:56:18 -0700 (PDT)
X-Received: by 2002:a92:cac8:: with SMTP id m8mr5564689ilq.302.1584557778207;
        Wed, 18 Mar 2020 11:56:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584557778; cv=none;
        d=google.com; s=arc-20160816;
        b=OHskmZRGNY2lIf4tJOZphf7od7CBmXiDgIkj5K8Q+e0DTnrKm88eUzw2cvVUFSqqla
         qkEdb8TDijOK7P9qKaT6fb4XbKmmi2WR9/7N8IUV4S7P+i0ak4qv5iqbpEyYdrI/dob6
         e0R042BKmgeWX10lhZVPsJBTTTZZOQp0Gr8OzlEJPkqqIkVd8RHp3eAF97Gc6DNqKbU8
         PKpfnV1SqhLlQvFN1ozQzQ6sBujFhoKz5C7iSf7Ih0Kkj+uSZzKcD+vCImBh+BkSQDkX
         Jws2YT391s2rviJyFMu2M8FnYvNV1ccbePBBvy83VKmcgFw7/I0NCfX3vy0cHYCQhAet
         edkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JSy9IbOIFwZt61gKRcoN/ebm0P/2Fm9D9Y2xKky35y4=;
        b=g5qN5EA4L2g83UPndVPfJrmXFzwI1fRh7U5LPpNbksdrYnPmLO+uYeLpyDLYdMQWaQ
         K1vdmjTVSTUczL1wXkLRBTOUotVnUzrhfdAY6TCbAe8gLaHrnZvQ/lOYcvS4jZPNRIXY
         njxvoTgrKww7oKkYUlZGTIEtJ9L22R+glESF74M/TD9fKq15VBbKfwzXjUvvCakGOaFk
         5wTJsm/gYcLOE/MM+tXy4BWIGAvsDlc44wEWvXBDEz9lTtUuppKNhA7StWG/JzaN7PUt
         yipFE/LGTgBANEkmisPymLfzwX2h4zUx1ZsWHhyBrMO5hoh9kn+MoGxvcsjiu+UJLX6n
         wJ0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FUxgAQOG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com. [2607:f8b0:4864:20::235])
        by gmr-mx.google.com with ESMTPS id k88si490914ilg.1.2020.03.18.11.56.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 11:56:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) client-ip=2607:f8b0:4864:20::235;
Received: by mail-oi1-x235.google.com with SMTP id d62so26840665oia.11
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 11:56:18 -0700 (PDT)
X-Received: by 2002:a05:6808:16:: with SMTP id u22mr4445302oic.127.1584557777721;
        Wed, 18 Mar 2020 11:56:17 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id a64sm2338476oif.49.2020.03.18.11.56.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Mar 2020 11:56:17 -0700 (PDT)
Date: Wed, 18 Mar 2020 11:56:15 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: ci_notify@linaro.org
Cc: tcwg-validation@linaro.org, arnd@linaro.org,
	clang-built-linux@googlegroups.com
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-defconfig - Build # 19 - Successful!
Message-ID: <20200318185615.GA17185@ubuntu-m2-xlarge-x86>
References: <1056466409.10585.1584556825292.JavaMail.javamailuser@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1056466409.10585.1584556825292.JavaMail.javamailuser@localhost>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FUxgAQOG;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::235 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

This has been fixed for a few -next versions:

https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/?id=e31a50162feb352147d3fc87b9e036703c8f2636

Cheers,
Nathan

On Wed, Mar 18, 2020 at 06:40:24PM +0000, ci_notify@linaro.org wrote:
> Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-next-defconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/gnu-master-aarch64-next-defconfig
>  - tcwg_kernel/gnu-release-aarch64-next-defconfig
>  - tcwg_kernel/llvm-master-aarch64-next-defconfig
>  - tcwg_kernel/llvm-release-aarch64-next-defconfig
> 
> Culprit:
> <cut>
> commit 08120d236c47dd2bdb6f7366782f4756dd7f417e
> Author: Alex Elder <elder@linaro.org>
> 
>     soc: qcom: ipa: support build of IPA code
> </cut>
> 
> First few build errors in logs:
> 00:02:59 drivers/net/ipa/gsi.c:220:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
> 00:02:59 drivers/net/ipa/gsi.c:223:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
> 00:02:59 drivers/net/ipa/gsi.c:710:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
> 00:02:59 make[3]: *** [drivers/net/ipa/gsi.o] Error 1
> 00:03:10 drivers/net/ipa/ipa_endpoint.c:584:14: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
> 00:03:10 drivers/net/ipa/ipa_endpoint.c:965:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
> 00:03:10 make[3]: *** [drivers/net/ipa/ipa_endpoint.o] Error 1
> 00:03:11 drivers/net/ipa/ipa_cmd.c:182:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
> 00:03:11 drivers/net/ipa/ipa_cmd.c:183:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
> 00:03:11 make[3]: *** [drivers/net/ipa/ipa_cmd.o] Error 1
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
> rr[linux_branch]="ec947d0be5f959fff44d59161401515a98a837f3"
> 
> Results regressed to (for first_bad == 08120d236c47dd2bdb6f7366782f4756dd7f417e)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 5704
> 
> from (for last_good == 530f9216a9537b58cdc2f967b5cd78f5dafb34c4)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 6265
> # linux build successful:
> all
> # linux boot successful:
> boot
> 
> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/19/artifact/artifacts/build-08120d236c47dd2bdb6f7366782f4756dd7f417e/
> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/19/artifact/artifacts/build-530f9216a9537b58cdc2f967b5cd78f5dafb34c4/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/19/
> 
> Reproduce builds:
> <cut>
> mkdir investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e
> cd investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e
> 
> git clone https://git.linaro.org/toolchain/jenkins-scripts
> 
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/19/artifact/artifacts/manifests/build-baseline.sh
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/19/artifact/artifacts/manifests/build-parameters.sh
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/19/artifact/artifacts/test.sh
> chmod +x artifacts/test.sh
> 
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
> 
> cd linux
> 
> # Reproduce first_bad build
> git checkout --detach 08120d236c47dd2bdb6f7366782f4756dd7f417e
> ../artifacts/test.sh
> 
> # Reproduce last_good build
> git checkout --detach 530f9216a9537b58cdc2f967b5cd78f5dafb34c4
> ../artifacts/test.sh
> 
> cd ..
> </cut>
> 
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-next-defconfig
> 
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/19/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/19/consoleText
> 
> Full commit:
> <cut>
> commit 08120d236c47dd2bdb6f7366782f4756dd7f417e
> Author: Alex Elder <elder@linaro.org>
> Date:   Thu Mar 5 22:28:29 2020 -0600
> 
>     soc: qcom: ipa: support build of IPA code
>     
>     Add build and Kconfig support for the Qualcomm IPA driver.
>     
>     Signed-off-by: Alex Elder <elder@linaro.org>
>     Signed-off-by: David S. Miller <davem@davemloft.net>
> ---
>  drivers/net/Kconfig      |  2 ++
>  drivers/net/Makefile     |  1 +
>  drivers/net/ipa/Kconfig  | 19 +++++++++++++++++++
>  drivers/net/ipa/Makefile | 12 ++++++++++++
>  4 files changed, 34 insertions(+)
> 
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index 66e410e58c8e..02565bc2be8a 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -444,6 +444,8 @@ source "drivers/net/fddi/Kconfig"
>  
>  source "drivers/net/hippi/Kconfig"
>  
> +source "drivers/net/ipa/Kconfig"
> +
>  config NET_SB1000
>  	tristate "General Instruments Surfboard 1000"
>  	depends on PNP
> diff --git a/drivers/net/Makefile b/drivers/net/Makefile
> index 65967246f240..94b60800887a 100644
> --- a/drivers/net/Makefile
> +++ b/drivers/net/Makefile
> @@ -47,6 +47,7 @@ obj-$(CONFIG_ETHERNET) += ethernet/
>  obj-$(CONFIG_FDDI) += fddi/
>  obj-$(CONFIG_HIPPI) += hippi/
>  obj-$(CONFIG_HAMRADIO) += hamradio/
> +obj-$(CONFIG_QCOM_IPA) += ipa/
>  obj-$(CONFIG_PLIP) += plip/
>  obj-$(CONFIG_PPP) += ppp/
>  obj-$(CONFIG_PPP_ASYNC) += ppp/
> diff --git a/drivers/net/ipa/Kconfig b/drivers/net/ipa/Kconfig
> new file mode 100644
> index 000000000000..b8cb7cadbf75
> --- /dev/null
> +++ b/drivers/net/ipa/Kconfig
> @@ -0,0 +1,19 @@
> +config QCOM_IPA
> +	tristate "Qualcomm IPA support"
> +	depends on ARCH_QCOM && 64BIT && NET
> +	select QCOM_QMI_HELPERS
> +	select QCOM_MDT_LOADER
> +	default QCOM_Q6V5_COMMON
> +	help
> +	  Choose Y or M here to include support for the Qualcomm
> +	  IP Accelerator (IPA), a hardware block present in some
> +	  Qualcomm SoCs.  The IPA is a programmable protocol processor
> +	  that is capable of generic hardware handling of IP packets,
> +	  including routing, filtering, and NAT.  Currently the IPA
> +	  driver supports only basic transport of network traffic
> +	  between the AP and modem, on the Qualcomm SDM845 SoC.
> +
> +	  Note that if selected, the selection type must match that
> +	  of QCOM_Q6V5_COMMON (Y or M).
> +
> +	  If unsure, say N.
> diff --git a/drivers/net/ipa/Makefile b/drivers/net/ipa/Makefile
> new file mode 100644
> index 000000000000..afe5df1e6eee
> --- /dev/null
> +++ b/drivers/net/ipa/Makefile
> @@ -0,0 +1,12 @@
> +# Un-comment the next line if you want to validate configuration data
> +#ccflags-y		+=	-DIPA_VALIDATE
> +
> +obj-$(CONFIG_QCOM_IPA)	+=	ipa.o
> +
> +ipa-y			:=	ipa_main.o ipa_clock.o ipa_reg.o ipa_mem.o \
> +				ipa_table.o ipa_interrupt.o gsi.o gsi_trans.o \
> +				ipa_gsi.o ipa_smp2p.o ipa_uc.o \
> +				ipa_endpoint.o ipa_cmd.o ipa_modem.o \
> +				ipa_qmi.o ipa_qmi_msg.o
> +
> +ipa-y			+=	ipa_data-sdm845.o ipa_data-sc7180.o
> </cut>
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1056466409.10585.1584556825292.JavaMail.javamailuser%40localhost.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200318185615.GA17185%40ubuntu-m2-xlarge-x86.
