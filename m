Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3E6SP2AKGQEPUKCZ7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CDC19B4AB
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Apr 2020 19:29:17 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id q26sf200279vsr.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Apr 2020 10:29:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585762156; cv=pass;
        d=google.com; s=arc-20160816;
        b=GinM4I6DqOjO/EtsFjmsQParW5lGJfyU0T7PYEgBxda4Iwo6MmH5IJYKRtSw7d9eDr
         CEqO5xAQR85NwfycCSd0gYRRVKw53l/pFUq6G8CuugHPSJHow//xSqumysOolPNT5u92
         p7d0p8IyD80Qdg8vYLKLcTt20TfRl17cXquxdW2GV3gQDRpQBc6HpN6kSp3OoCfbNQyT
         wnXHWTQS1MAoK7MFInKGWqzgoORBZuTuu2UZ4/qbnNpKfXyfGY5Wo9dSyGAJRe8tBA57
         ivq/oLVEosGyAMHfEt4EYI96pFV9uR3DtNOiAtqIpGN0JZL4LpJsM/BV+9QvGALrjn7A
         E75A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wubWqdMH7lGdd3pBZtL4X4tyS2bcODOpFsWd0PnfIwI=;
        b=FOjjjI4LDqqFjupEm7Q92Gqmj4BBkR0qed0Zix7tItNjbZSCNxS9k4CWoL5VDmjPzn
         s2kPZx5sfZnOzcQC8t/jaM/CS7aHBrxPcWFzbTLjJjqh70ckfLmEtnJZrvZ1nBvvLgvd
         TYlQTgZQb+BDqJHZ8FiIopRkD/B7ndDP5p8WJzWxN/5DlTUQTTLhNoS5guOwt4OdCiM+
         MIouovE+GYRH1ydO4YEPnDVxrrlHMGWYMKxLVUxzcR7GqT/7deAKXvoY1T07y7B5RLdl
         cK39stdDKNn95g/i17nmLkip2kjff0gg12A0r//hxjxUjOSYT5xKqik4OfehjdB906CH
         /iLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FA7Z8r1O;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wubWqdMH7lGdd3pBZtL4X4tyS2bcODOpFsWd0PnfIwI=;
        b=Yv+8ATBhQLRz5R5wUFKEkOBOKWg+MFky9TctfXVnNxDxzEvIIs7ws67PfSfLqYGBLY
         h6nP2Y70PqNiusTXYSkO9X7cE9ITW0QziBmr7Kgqfg0MtwQ5BKXA5ZgrPcOToCeOZ5hn
         W0IS9cGOPSu48c+eSZ0XR2Z+5Yg8/p6Pcq/gWeqKqqdUhF9HYVaAqLjp0KlC1t4yJ3gA
         O+itJR3vhoibRV9VTj06ptKBKkwhBt9cvq/ojMSg7gHTsQ7o5fMYmmgwdJpIp6sXpQXA
         nZK+OTYDteTcecnb/YknWWNL3XuX1C4JQ10+PhjRHSptZOcWBLr0ANFh7umhpGOf4+LN
         TKcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wubWqdMH7lGdd3pBZtL4X4tyS2bcODOpFsWd0PnfIwI=;
        b=NW9igLI7VKZUWdO6Khyx1RD8Vph2/oaXnR8SvNNmr1tCUd1ZyR5wKPvg7m+d9o4it+
         YgV1W6RKSsxNc8xRCyD/SoI1juKqE7TX6VHu8mQVkAYrbXlwp9RtjQLOhW1g/MwtGCvu
         /spbMpLg0mXKA7q9HFNKrw4mBxvJwX16eZRETVVJDv8U8uTgVPan4Z070DIVaujdkGBl
         vetUiCTWWIP+T/nGR21a3T+tms3WVgqPhij/63t4kb1aMAnV/2P9U7r7asbOfS76FLWZ
         RZpt2BhYqc/UBTs8oi5YpwpSMpv+3RVaaByeCEI4WPpq0RifTejQvRp7u0uH8EQyMDzr
         Kbfw==
X-Gm-Message-State: AGi0Pub+jywTN5QVB/7MDyTELCdiNQZmZg7yWAPCMDWrKERg2HIy+LiU
	F1ojs5f1D7Bku48xeo3YiNg=
X-Google-Smtp-Source: APiQypKuKw6gGajBjbIVpjrxROq64betR5KM09N36+z0s291yYPKMTQE2uld5PIt6U6j57dTzuh52w==
X-Received: by 2002:a1f:2c4b:: with SMTP id s72mr17739022vks.93.1585762156675;
        Wed, 01 Apr 2020 10:29:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c01d:: with SMTP id v29ls101507vsi.6.gmail; Wed, 01 Apr
 2020 10:29:16 -0700 (PDT)
X-Received: by 2002:a67:8005:: with SMTP id b5mr16988425vsd.183.1585762156195;
        Wed, 01 Apr 2020 10:29:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585762156; cv=none;
        d=google.com; s=arc-20160816;
        b=i8IspUAqFq3RlKBu8o1cJWd97UleP/sZ9asxGpCO17q0YTslCS0HcUni/doo0F4TfA
         qRakS2bM634MQHsfXlsgFeGOsG5QmBQRqajcJsN17azTdjqg9V7hpE+wCntqf4yatMww
         6AW6Qnb7y/fAb7Fh4l3ryxmPT4aGhI+5UsUiDy7mDU+q+hu4a5TfchXb4G4ABtO6bVzj
         126fchpFcmEGEWQKViI2oPqz9/v8nK1EE90FMhqwGuncNiA6kqXWLgEggZPM4cEl9nhF
         SVEvzUbPDwsti4mxgXdZDVZQ8aZT7j3vryDdx9qYh5aOmDjL0loEROsQZmKEFXMIpJml
         Ny/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g7TIahs4lzY744m1n7bwA6IP+kvxSHV9vxrJNz+iKSI=;
        b=X8LOZK5Ie5QGa5+palaxb7csaMDdv3o4nIJ27nKWH3rLpeR62mAeBQqSeNrtYVDaqD
         d3JM7lyZjwG0LNDeEwb8af36XEXkruhulx+IOCTbVIWKoHwQ2naB/iNNCyo/wy6XDbjp
         VdB6tVS3MPRwC3AP/PHJKvNlz9QjQrUSGSGPcTMpaINENmijPpfHmwgHFN+4LGeGSKnK
         QQmRYUplQfwZBB+r6S0E4aNHnrlkh/W0Di98nzWc694981HlaotJguiNTL1Tmcnpqe4I
         k8keYSF7Ndt1wGuUHbhJm2wjSALVvI+QbztL0vh7ADOqz/TUj9P7KijsytqfHGWAbiql
         xQKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FA7Z8r1O;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id f17si189286vka.5.2020.04.01.10.29.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 10:29:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id np9so303062pjb.4
        for <clang-built-linux@googlegroups.com>; Wed, 01 Apr 2020 10:29:16 -0700 (PDT)
X-Received: by 2002:a17:902:988e:: with SMTP id s14mr20631030plp.179.1585762154585;
 Wed, 01 Apr 2020 10:29:14 -0700 (PDT)
MIME-Version: 1.0
References: <1305216907.13686.1585754340253.JavaMail.javamailuser@localhost>
In-Reply-To: <1305216907.13686.1585754340253.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 1 Apr 2020 10:29:03 -0700
Message-ID: <CAKwvOd=-MrMR9vt2MQOWBrv4h_Zs5qtwDPZ-exjRwJsZVS9+KQ@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig
 - Build # 81 - Successful!
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@linaro.org>, CI Notify <ci_notify@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FA7Z8r1O;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

More info: https://github.com/ClangBuiltLinux/linux/issues/963
Surprised to see mainline regress.

On Wed, Apr 1, 2020 at 8:19 AM <ci_notify@linaro.org> wrote:
>
> Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/gnu-master-aarch64-mainline-allyesconfig
>  - tcwg_kernel/gnu-master-aarch64-next-defconfig
>  - tcwg_kernel/gnu-release-aarch64-next-defconfig
>  - tcwg_kernel/llvm-master-aarch64-next-defconfig
>  - tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig
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
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
> rr[linux_branch]="7111951b8d4973bda27ff663f2cf18b663d15b48"
>
> Results regressed to (for first_bad == 08120d236c47dd2bdb6f7366782f4756dd7f417e)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 19981
> # First few build errors in logs:
> # 00:10:04 drivers/net/ipa/gsi.c:220:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
> # 00:10:04 drivers/net/ipa/gsi.c:223:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
> # 00:10:04 drivers/net/ipa/gsi.c:710:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
> # 00:10:04 make[3]: *** [drivers/net/ipa/gsi.o] Error 1
> # 00:10:21 drivers/net/ipa/ipa_endpoint.c:584:14: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
> # 00:10:21 drivers/net/ipa/ipa_endpoint.c:965:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
> # 00:10:21 make[3]: *** [drivers/net/ipa/ipa_endpoint.o] Error 1
> # 00:10:22 drivers/net/ipa/ipa_cmd.c:182:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
> # 00:10:22 drivers/net/ipa/ipa_cmd.c:183:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
> # 00:10:22 make[3]: *** [drivers/net/ipa/ipa_cmd.o] Error 1
>
> from (for last_good == 530f9216a9537b58cdc2f967b5cd78f5dafb34c4)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 27236
> # linux build successful:
> all
> # linux boot successful:
> boot
>
> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/81/artifact/artifacts/build-08120d236c47dd2bdb6f7366782f4756dd7f417e/
> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/81/artifact/artifacts/build-530f9216a9537b58cdc2f967b5cd78f5dafb34c4/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/81/
>
> Reproduce builds:
> <cut>
> mkdir investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e
> cd investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/81/artifact/artifacts/manifests/build-baseline.sh --fail
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/81/artifact/artifacts/manifests/build-parameters.sh --fail
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/81/artifact/artifacts/test.sh --fail
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
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig
>
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/81/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/81/consoleText
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
>         tristate "General Instruments Surfboard 1000"
>         depends on PNP
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
> +       tristate "Qualcomm IPA support"
> +       depends on ARCH_QCOM && 64BIT && NET
> +       select QCOM_QMI_HELPERS
> +       select QCOM_MDT_LOADER
> +       default QCOM_Q6V5_COMMON
> +       help
> +         Choose Y or M here to include support for the Qualcomm
> +         IP Accelerator (IPA), a hardware block present in some
> +         Qualcomm SoCs.  The IPA is a programmable protocol processor
> +         that is capable of generic hardware handling of IP packets,
> +         including routing, filtering, and NAT.  Currently the IPA
> +         driver supports only basic transport of network traffic
> +         between the AP and modem, on the Qualcomm SDM845 SoC.
> +
> +         Note that if selected, the selection type must match that
> +         of QCOM_Q6V5_COMMON (Y or M).
> +
> +         If unsure, say N.
> diff --git a/drivers/net/ipa/Makefile b/drivers/net/ipa/Makefile
> new file mode 100644
> index 000000000000..afe5df1e6eee
> --- /dev/null
> +++ b/drivers/net/ipa/Makefile
> @@ -0,0 +1,12 @@
> +# Un-comment the next line if you want to validate configuration data
> +#ccflags-y             +=      -DIPA_VALIDATE
> +
> +obj-$(CONFIG_QCOM_IPA) +=      ipa.o
> +
> +ipa-y                  :=      ipa_main.o ipa_clock.o ipa_reg.o ipa_mem.o \
> +                               ipa_table.o ipa_interrupt.o gsi.o gsi_trans.o \
> +                               ipa_gsi.o ipa_smp2p.o ipa_uc.o \
> +                               ipa_endpoint.o ipa_cmd.o ipa_modem.o \
> +                               ipa_qmi.o ipa_qmi_msg.o
> +
> +ipa-y                  +=      ipa_data-sdm845.o ipa_data-sc7180.o
> </cut>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1305216907.13686.1585754340253.JavaMail.javamailuser%40localhost.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D-MrMR9vt2MQOWBrv4h_Zs5qtwDPZ-exjRwJsZVS9%2BKQ%40mail.gmail.com.
