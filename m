Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLXBT7ZQKGQECMNL3IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8A618089B
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 20:55:27 +0100 (CET)
Received: by mail-yw1-xc40.google.com with SMTP id m8sf15388825ywd.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 12:55:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583870126; cv=pass;
        d=google.com; s=arc-20160816;
        b=iiG6G7kEnCxMoFQmqwBPfOi4ArJ2LBQmngPOq9ewTZi1qv4pnCib4Q66saRHdTE5Qq
         hcWMpBpQJG2Yla/hAwdKdHMsHYm6kZ7Rv8YlWBDK0UU00nt9T3MumF55CdsTPcafpPlu
         DqGNNkLaGpw72LAkZ2sXTWwduuCiH4t4rscBh0synJmN5T9UKlWHFyp9QKE8MQUsMtt9
         /6NAfXf9nCDXKV9ZnHAqlNED7eeX1jzsOS+T1vBCDBslHbyfsTsPLpoI8uwiuNSDrycR
         QQbWQv6aAY+IQTgXAonQAGyfKEDdQigWHZqa/Lcy+TPMHr2A4uak8NwxoyPofzEmWdpC
         vx+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=mm+3NIKCsit1dLxpTE02W/h2kmI34djVG4sFjT677sc=;
        b=yv6VreuZu6Cq082orVrJ7k6QV/cPvt2U0Wl9kweS1jchLIyfAsRBO3kphDFOkQHJN/
         Yh+WxjaHUdODOQCXaQbIMnXcSQU8DVCGTUyThtQFPD+fXNs0seU3igOEsSNmbAA0m7os
         NynjW2OboiJ0jfZJQna0jJ+FQEctuDfK2VC/cBklySI05hAHHo8QmPuDoRJrvUw9ibaM
         Z+8Mjytm+N7mpPiAvTlW3/wjZEJAN8e/uzvfw5cC21pTARbk7KIT1EVI9s/Xfk92AuHw
         EAwSgALAghvxoxR81h3hc8nexxWLw0hKXB5aGGQf6FIMRisvfq6hLkh3+N1eGYM0aYoD
         toUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JI+P4OOF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mm+3NIKCsit1dLxpTE02W/h2kmI34djVG4sFjT677sc=;
        b=cx/YHe/3LlNQ8gxzzTRQlU6hnQP7R/uxcORCSN2kXfjmYC93ISkeW4PUYRVyUmJgAw
         F7JjtNAfaJwBBqoCm8pGxa3yiLZhfpX5dZ6bl2mbNGPHHBKFHqfrpEvyy8go7jO6nEJc
         rh2MHS5v0EZpnfdNKzz0SMCcF/ALEWZL/QcHuJVH5gcwlAc49fkWlg9D2khvTGl9unda
         iPTCMjBqbWxiXKDsvCqpcD4EZseDo7HQniyNuXV+OSCgYTxDiY5ptcVmqkpxCeHK1eKp
         slTpqMQPBHuP0oES9Iyx6aKd8mZX3pqvVUe4l8f6FHnZ4NlzBliYnMPB41MERPssgb3U
         viFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mm+3NIKCsit1dLxpTE02W/h2kmI34djVG4sFjT677sc=;
        b=JubTVOBL2XdIUb/vojFxaH7SiTRLKMuByLPhGtCxVCgxMyB0SMSKQ8AHeOMoFqWwnm
         KxWt0ISz+H4w0NFsum2iwni5cPy0MKCN1xEhzqKf9VdD7/CRgtSiN6TnoXgH2Eas/Cv3
         3rJbNEqrGWb1hWVZmA6FKFj/iiAZfhIXVXgHp4a475cLyb0nqxAOmtYWM+dIPaxCr3+0
         NchrfhaPWRKvAeR3lpJqswn880YjVsOZb6GuC5jr83sxxuKTQriBKTR7jNkPRb5sx8rW
         ljWaLIwkErLkq77g80Uthpdcxs9ziygna+gyVp1exp20UCWB5IS29JWtAVpw6VWS0AXg
         zsUA==
X-Gm-Message-State: ANhLgQ1nekQEUKnry+42R/6JJmpiThbqYcPqGhkYlZmU01nOxTvn0/GB
	DK/UYYWkABCsrN3qhvS5mAg=
X-Google-Smtp-Source: ADFU+vuNTt+qau/2lU2hENqXGO8UgQ4yWjpQ5iM2KKx5FOgpf2aTn4Au5vWgUIgxF/epW/ijPbBPHQ==
X-Received: by 2002:a81:4787:: with SMTP id u129mr24165801ywa.359.1583870126397;
        Tue, 10 Mar 2020 12:55:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:dd0c:: with SMTP id g12ls1291985ywe.0.gmail; Tue, 10 Mar
 2020 12:55:26 -0700 (PDT)
X-Received: by 2002:a81:294c:: with SMTP id p73mr16837366ywp.352.1583870126004;
        Tue, 10 Mar 2020 12:55:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583870126; cv=none;
        d=google.com; s=arc-20160816;
        b=tCTJ2FFSSInFFNn41/8HOo84FEmB/nPXNmVU7lt8SUbRqNqu/Zes1VFjID4QuYeSLt
         QbVAlFlbGrCD0na+d/7xUMnihixBMPeUz4gSPngrSc1q2FCrX0WmIxeYrF/bkWFTGYgs
         HM+NuEWLdAeDEPtt1CFJjmUq1TWcy7cC+3SdMURLoHZbvYilP9Itglfhd7pPefChEsr/
         99vNgPtQ7aXsO8PY4sgdlhgH0gHOeKQstWpo41Zw+qD8o147ZBLu4LyIzdGr7007A44g
         3ZKEtWjz+GCA+64HpFyM5Jn2vIfJNOJ5yhNsgpllseUVpWL5Fk+OVjyI3YAwhGk8gNm0
         t/Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Yq0TpdxKMGYxx3T3W8A7XjscLhJRmhqgWGIpjxutobw=;
        b=gEUpQSBu+tEMm9zmQO5ZTiMFUAYGxDpRwZ+f28l1QAvY4jvKj5Fa4MnE9hVXXA3lw7
         lqfgFfXYl1WKz2U177aZO2htz2gUn1KMhTUMaPBz5feGWl8DXnqlqw0T95DkiSG2j6Gf
         tEwoMaXoZCX7whjoRKce4h3mN7EXQQOPu298ymkJfHeGlZ6CTkDIb35Vc7h361PgDrP1
         gJqwKYHOLLLAqyR3XHMQfBVXnVuvmb7J3y6R3iWBPxmXfBCVkpI2IJXNMoUIzBE4S5Ju
         Ej/aNQjTidiaC7kED9Zpi6jOTKR1CQ0UO+PfW+v5dTgYvXOzzU0ri4zWGKXqNS4n/JSO
         LQDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JI+P4OOF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id u202si147523ywe.5.2020.03.10.12.55.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 12:55:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Received: by mail-pg1-x52d.google.com with SMTP id s2so6785060pgv.6
        for <clang-built-linux@googlegroups.com>; Tue, 10 Mar 2020 12:55:25 -0700 (PDT)
X-Received: by 2002:aa7:8618:: with SMTP id p24mr23601102pfn.3.1583870124592;
 Tue, 10 Mar 2020 12:55:24 -0700 (PDT)
MIME-Version: 1.0
References: <73231677.8949.1583850188400.JavaMail.javamailuser@localhost>
In-Reply-To: <73231677.8949.1583850188400.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Mar 2020 12:55:12 -0700
Message-ID: <CAKwvOdnZESFfCjN9w-mAPkLOSTAe6_kkyQpfb-E4yr_Fu30++A@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allmodconfig
 - Build # 60 - Successful!
To: CI Notify <ci_notify@linaro.org>, Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Cc: TCWG Validation <tcwg-validation@linaro.org>, Arnd Bergmann <arnd@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JI+P4OOF;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d
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

Note: our CI is red across the board today due to -fno-common and dtc.

On Tue, Mar 10, 2020 at 7:23 AM <ci_notify@linaro.org> wrote:
>
> Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allmodconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/gnu-master-aarch64-next-allmodconfig
>  - tcwg_kernel/gnu-master-aarch64-next-allyesconfig
>  - tcwg_kernel/gnu-release-aarch64-next-allmodconfig
>  - tcwg_kernel/gnu-release-aarch64-next-allyesconfig
>  - tcwg_kernel/llvm-master-aarch64-next-allmodconfig
>  - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
>  - tcwg_kernel/llvm-release-aarch64-next-allmodconfig
>  - tcwg_kernel/llvm-release-aarch64-next-allyesconfig
>  - tcwg_kernel/llvm-release-arm-next-allmodconfig
>
> Culprit:
> <cut>
> commit 56cc3af4e8c8eaba91b51efa6081a868adbd97c3
> Author: Marco Felsch <m.felsch@pengutronix.de>
>
>     pinctrl: da9062: add driver support
> </cut>
>
> First few build errors in logs:
> 00:03:06 drivers/pinctrl/pinctrl-da9062.c:28:10: error: '../gpio/gpiolib.h' file not found with <angled> include; use  instead
> 00:03:07 make[2]: *** [drivers/pinctrl/pinctrl-da9062.o] Error 1
> 00:03:11 make[1]: *** [drivers/pinctrl] Error 2
> 00:12:07 make: *** [drivers] Error 2
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
> rr[linux_branch]="b86a6a241b7c60ca7a6ca4fb3c0d2aedbbf2c1b6"
>
> Results regressed to (for first_bad == 56cc3af4e8c8eaba91b51efa6081a868adbd97c3)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 20275
>
> from (for last_good == c93214689f0c70b6942ba1d12b8371b9fc60ae41)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 27723
> linux build successful:
> all
>
> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/60/artifact/artifacts/build-56cc3af4e8c8eaba91b51efa6081a868adbd97c3/
> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/60/artifact/artifacts/build-c93214689f0c70b6942ba1d12b8371b9fc60ae41/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/60/
>
> Reproduce builds:
> <cut>
> mkdir investigate-linux-56cc3af4e8c8eaba91b51efa6081a868adbd97c3
> cd investigate-linux-56cc3af4e8c8eaba91b51efa6081a868adbd97c3
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/60/artifact/artifacts/manifests/build-baseline.sh
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/60/artifact/artifacts/manifests/build-parameters.sh
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/60/artifact/artifacts/test.sh
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>
> cd linux
>
> # Reproduce first_bad build
> git checkout --detach 56cc3af4e8c8eaba91b51efa6081a868adbd97c3
> ../artifacts/test.sh
>
> # Reproduce last_good build
> git checkout --detach c93214689f0c70b6942ba1d12b8371b9fc60ae41
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-next-allmodconfig
>
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/60/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/60/consoleText
>
> Full commit:
> <cut>
> commit 56cc3af4e8c8eaba91b51efa6081a868adbd97c3
> Author: Marco Felsch <m.felsch@pengutronix.de>
> Date:   Wed Jan 8 11:47:46 2020 +0100
>
>     pinctrl: da9062: add driver support
>
>     The DA9062 is a mfd pmic device which supports 5 GPIOs. The GPIOs can
>     be used as input, output or have a special use-case.
>
>     The patch adds the support for the normal input/output use-case.
>
>     Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
>     Link: https://lore.kernel.org/r/20200108104746.1765-4-m.felsch@pengutronix.de
>     Reviewed-by: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
>     Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  MAINTAINERS                      |   1 +
>  drivers/pinctrl/Kconfig          |  12 ++
>  drivers/pinctrl/Makefile         |   1 +
>  drivers/pinctrl/pinctrl-da9062.c | 300 +++++++++++++++++++++++++++++++++++++++
>  4 files changed, 314 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 408fd7c660aa..260c0c4c6e74 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4921,6 +4921,7 @@ F:        drivers/leds/leds-da90??.c
>  F:     drivers/mfd/da903x.c
>  F:     drivers/mfd/da90??-*.c
>  F:     drivers/mfd/da91??-*.c
> +F:     drivers/pinctrl/pinctrl-da90??.c
>  F:     drivers/power/supply/da9052-battery.c
>  F:     drivers/power/supply/da91??-*.c
>  F:     drivers/regulator/da903x.c
> diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
> index df0ef69dd474..834c59950d1c 100644
> --- a/drivers/pinctrl/Kconfig
> +++ b/drivers/pinctrl/Kconfig
> @@ -126,6 +126,18 @@ config PINCTRL_DA850_PUPD
>           Driver for TI DA850/OMAP-L138/AM18XX pinconf. Used to control
>           pullup/pulldown pin groups.
>
> +config PINCTRL_DA9062
> +       tristate "Dialog Semiconductor DA9062 PMIC pinctrl and GPIO Support"
> +       depends on MFD_DA9062
> +       select GPIOLIB
> +       help
> +         The Dialog DA9062 PMIC provides multiple GPIOs that can be muxed for
> +         different functions. This driver bundles a pinctrl driver to select the
> +         function muxing and a GPIO driver to handle the GPIO when the GPIO
> +         function is selected.
> +
> +         Say yes to enable pinctrl and GPIO support for the DA9062 PMIC.
> +
>  config PINCTRL_DIGICOLOR
>         bool
>         depends on OF && (ARCH_DIGICOLOR || COMPILE_TEST)
> diff --git a/drivers/pinctrl/Makefile b/drivers/pinctrl/Makefile
> index 879f312bfb75..0b36a1cfca8a 100644
> --- a/drivers/pinctrl/Makefile
> +++ b/drivers/pinctrl/Makefile
> @@ -16,6 +16,7 @@ obj-$(CONFIG_PINCTRL_AT91PIO4)        += pinctrl-at91-pio4.o
>  obj-$(CONFIG_PINCTRL_AMD)      += pinctrl-amd.o
>  obj-$(CONFIG_PINCTRL_BM1880)   += pinctrl-bm1880.o
>  obj-$(CONFIG_PINCTRL_DA850_PUPD) += pinctrl-da850-pupd.o
> +obj-$(CONFIG_PINCTRL_DA9062)   += pinctrl-da9062.o
>  obj-$(CONFIG_PINCTRL_DIGICOLOR)        += pinctrl-digicolor.o
>  obj-$(CONFIG_PINCTRL_FALCON)   += pinctrl-falcon.o
>  obj-$(CONFIG_PINCTRL_GEMINI)   += pinctrl-gemini.o
> diff --git a/drivers/pinctrl/pinctrl-da9062.c b/drivers/pinctrl/pinctrl-da9062.c
> new file mode 100644
> index 000000000000..f704ee0b2fd9
> --- /dev/null
> +++ b/drivers/pinctrl/pinctrl-da9062.c
> @@ -0,0 +1,300 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Dialog DA9062 pinctrl and GPIO driver.
> + * Based on DA9055 GPIO driver.
> + *
> + * TODO:
> + *   - add pinmux and pinctrl support (gpio alternate mode)
> + *
> + * Documents:
> + * [1] https://www.dialog-semiconductor.com/sites/default/files/da9062_datasheet_3v6.pdf
> + *
> + * Copyright (C) 2019 Pengutronix, Marco Felsch <kernel@pengutronix.de>
> + */
> +#include <linux/bits.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +
> +#include <linux/gpio/driver.h>
> +
> +#include <linux/mfd/da9062/core.h>
> +#include <linux/mfd/da9062/registers.h>
> +
> +/*
> + * We need this get the gpio_desc from a <gpio_chip,offset> tuple to decide if
> + * the gpio is active low without a vendor specific dt-binding.
> + */
> +#include <../gpio/gpiolib.h>
> +
> +#define DA9062_TYPE(offset)            (4 * (offset % 2))
> +#define DA9062_PIN_SHIFT(offset)       (4 * (offset % 2))
> +#define DA9062_PIN_ALTERNATE           0x00 /* gpio alternate mode */
> +#define DA9062_PIN_GPI                 0x01 /* gpio in */
> +#define DA9062_PIN_GPO_OD              0x02 /* gpio out open-drain */
> +#define DA9062_PIN_GPO_PP              0x03 /* gpio out push-pull */
> +#define DA9062_GPIO_NUM                        5
> +
> +struct da9062_pctl {
> +       struct da9062 *da9062;
> +       struct gpio_chip gc;
> +       unsigned int pin_config[DA9062_GPIO_NUM];
> +};
> +
> +static int da9062_pctl_get_pin_mode(struct da9062_pctl *pctl,
> +                                   unsigned int offset)
> +{
> +       struct regmap *regmap = pctl->da9062->regmap;
> +       int ret, val;
> +
> +       ret = regmap_read(regmap, DA9062AA_GPIO_0_1 + (offset >> 1), &val);
> +       if (ret < 0)
> +               return ret;
> +
> +       val >>= DA9062_PIN_SHIFT(offset);
> +       val &= DA9062AA_GPIO0_PIN_MASK;
> +
> +       return val;
> +}
> +
> +static int da9062_pctl_set_pin_mode(struct da9062_pctl *pctl,
> +                                   unsigned int offset, unsigned int mode_req)
> +{
> +       struct regmap *regmap = pctl->da9062->regmap;
> +       unsigned int mode = mode_req;
> +       unsigned int mask;
> +       int ret;
> +
> +       mode &= DA9062AA_GPIO0_PIN_MASK;
> +       mode <<= DA9062_PIN_SHIFT(offset);
> +       mask = DA9062AA_GPIO0_PIN_MASK << DA9062_PIN_SHIFT(offset);
> +
> +       ret = regmap_update_bits(regmap, DA9062AA_GPIO_0_1 + (offset >> 1),
> +                                mask, mode);
> +       if (!ret)
> +               pctl->pin_config[offset] = mode_req;
> +
> +       return ret;
> +}
> +
> +static int da9062_gpio_get(struct gpio_chip *gc, unsigned int offset)
> +{
> +       struct da9062_pctl *pctl = gpiochip_get_data(gc);
> +       struct regmap *regmap = pctl->da9062->regmap;
> +       int gpio_mode, val;
> +       int ret;
> +
> +       gpio_mode = da9062_pctl_get_pin_mode(pctl, offset);
> +       if (gpio_mode < 0)
> +               return gpio_mode;
> +
> +       switch (gpio_mode) {
> +       case DA9062_PIN_ALTERNATE:
> +               return -ENOTSUPP;
> +       case DA9062_PIN_GPI:
> +               ret = regmap_read(regmap, DA9062AA_STATUS_B, &val);
> +               if (ret < 0)
> +                       return ret;
> +               break;
> +       case DA9062_PIN_GPO_OD:
> +       case DA9062_PIN_GPO_PP:
> +               ret = regmap_read(regmap, DA9062AA_GPIO_MODE0_4, &val);
> +               if (ret < 0)
> +                       return ret;
> +       }
> +
> +       return !!(val & BIT(offset));
> +}
> +
> +static void da9062_gpio_set(struct gpio_chip *gc, unsigned int offset,
> +                           int value)
> +{
> +       struct da9062_pctl *pctl = gpiochip_get_data(gc);
> +       struct regmap *regmap = pctl->da9062->regmap;
> +
> +       regmap_update_bits(regmap, DA9062AA_GPIO_MODE0_4, BIT(offset),
> +                          value << offset);
> +}
> +
> +static int da9062_gpio_get_direction(struct gpio_chip *gc, unsigned int offset)
> +{
> +       struct da9062_pctl *pctl = gpiochip_get_data(gc);
> +       int gpio_mode;
> +
> +       gpio_mode = da9062_pctl_get_pin_mode(pctl, offset);
> +       if (gpio_mode < 0)
> +               return gpio_mode;
> +
> +       switch (gpio_mode) {
> +       case DA9062_PIN_ALTERNATE:
> +               return -ENOTSUPP;
> +       case DA9062_PIN_GPI:
> +               return GPIO_LINE_DIRECTION_IN;
> +       case DA9062_PIN_GPO_OD:
> +       case DA9062_PIN_GPO_PP:
> +               return GPIO_LINE_DIRECTION_OUT;
> +       }
> +
> +       return -EINVAL;
> +}
> +
> +static int da9062_gpio_direction_input(struct gpio_chip *gc,
> +                                      unsigned int offset)
> +{
> +       struct da9062_pctl *pctl = gpiochip_get_data(gc);
> +       struct regmap *regmap = pctl->da9062->regmap;
> +       struct gpio_desc *desc = gpiochip_get_desc(gc, offset);
> +       unsigned int gpi_type;
> +       int ret;
> +
> +       ret = da9062_pctl_set_pin_mode(pctl, offset, DA9062_PIN_GPI);
> +       if (ret)
> +               return ret;
> +
> +       /*
> +        * If the gpio is active low we should set it in hw too. No worries
> +        * about gpio_get() because we read and return the gpio-level. So the
> +        * gpiolib active_low handling is still correct.
> +        *
> +        * 0 - active low, 1 - active high
> +        */
> +       gpi_type = !gpiod_is_active_low(desc);
> +
> +       return regmap_update_bits(regmap, DA9062AA_GPIO_0_1 + (offset >> 1),
> +                               DA9062AA_GPIO0_TYPE_MASK << DA9062_TYPE(offset),
> +                               gpi_type << DA9062_TYPE(offset));
> +}
> +
> +static int da9062_gpio_direction_output(struct gpio_chip *gc,
> +                                       unsigned int offset, int value)
> +{
> +       struct da9062_pctl *pctl = gpiochip_get_data(gc);
> +       unsigned int pin_config = pctl->pin_config[offset];
> +       int ret;
> +
> +       ret = da9062_pctl_set_pin_mode(pctl, offset, pin_config);
> +       if (ret)
> +               return ret;
> +
> +       da9062_gpio_set(gc, offset, value);
> +
> +       return 0;
> +}
> +
> +static int da9062_gpio_set_config(struct gpio_chip *gc, unsigned int offset,
> +                                 unsigned long config)
> +{
> +       struct da9062_pctl *pctl = gpiochip_get_data(gc);
> +       struct regmap *regmap = pctl->da9062->regmap;
> +       int gpio_mode;
> +
> +       /*
> +        * We need to meet the following restrictions [1, Figure 18]:
> +        * - PIN_CONFIG_BIAS_PULL_DOWN -> only allowed if the pin is used as
> +        *                                gpio input
> +        * - PIN_CONFIG_BIAS_PULL_UP   -> only allowed if the pin is used as
> +        *                                gpio output open-drain.
> +        */
> +
> +       switch (pinconf_to_config_param(config)) {
> +       case PIN_CONFIG_BIAS_DISABLE:
> +               return regmap_update_bits(regmap, DA9062AA_CONFIG_K,
> +                                         BIT(offset), 0);
> +       case PIN_CONFIG_BIAS_PULL_DOWN:
> +               gpio_mode = da9062_pctl_get_pin_mode(pctl, offset);
> +               if (gpio_mode < 0)
> +                       return -EINVAL;
> +               else if (gpio_mode != DA9062_PIN_GPI)
> +                       return -ENOTSUPP;
> +               return regmap_update_bits(regmap, DA9062AA_CONFIG_K,
> +                                         BIT(offset), BIT(offset));
> +       case PIN_CONFIG_BIAS_PULL_UP:
> +               gpio_mode = da9062_pctl_get_pin_mode(pctl, offset);
> +               if (gpio_mode < 0)
> +                       return -EINVAL;
> +               else if (gpio_mode != DA9062_PIN_GPO_OD)
> +                       return -ENOTSUPP;
> +               return regmap_update_bits(regmap, DA9062AA_CONFIG_K,
> +                                         BIT(offset), BIT(offset));
> +       case PIN_CONFIG_DRIVE_OPEN_DRAIN:
> +               return da9062_pctl_set_pin_mode(pctl, offset,
> +                                               DA9062_PIN_GPO_OD);
> +       case PIN_CONFIG_DRIVE_PUSH_PULL:
> +               return da9062_pctl_set_pin_mode(pctl, offset,
> +                                               DA9062_PIN_GPO_PP);
> +       default:
> +               return -ENOTSUPP;
> +       }
> +}
> +
> +static int da9062_gpio_to_irq(struct gpio_chip *gc, unsigned int offset)
> +{
> +       struct da9062_pctl *pctl = gpiochip_get_data(gc);
> +       struct da9062 *da9062 = pctl->da9062;
> +
> +       return regmap_irq_get_virq(da9062->regmap_irq,
> +                                  DA9062_IRQ_GPI0 + offset);
> +}
> +
> +static const struct gpio_chip reference_gc = {
> +       .owner = THIS_MODULE,
> +       .get = da9062_gpio_get,
> +       .set = da9062_gpio_set,
> +       .get_direction = da9062_gpio_get_direction,
> +       .direction_input = da9062_gpio_direction_input,
> +       .direction_output = da9062_gpio_direction_output,
> +       .set_config = da9062_gpio_set_config,
> +       .to_irq = da9062_gpio_to_irq,
> +       .can_sleep = true,
> +       .ngpio = DA9062_GPIO_NUM,
> +       .base = -1,
> +};
> +
> +static int da9062_pctl_probe(struct platform_device *pdev)
> +{
> +       struct device *parent = pdev->dev.parent;
> +       struct da9062_pctl *pctl;
> +       int i;
> +
> +       pctl = devm_kzalloc(&pdev->dev, sizeof(*pctl), GFP_KERNEL);
> +       if (!pctl)
> +               return -ENOMEM;
> +
> +       pctl->da9062 = dev_get_drvdata(parent);
> +       if (!pctl->da9062)
> +               return -EINVAL;
> +
> +       if (!device_property_present(parent, "gpio-controller"))
> +               return 0;
> +
> +       for (i = 0; i < ARRAY_SIZE(pctl->pin_config); i++)
> +               pctl->pin_config[i] = DA9062_PIN_GPO_PP;
> +
> +       /*
> +        * Currently the driver handles only the GPIO support. The
> +        * pinctrl/pinmux support can be added later if needed.
> +        */
> +       pctl->gc = reference_gc;
> +       pctl->gc.label = dev_name(&pdev->dev);
> +       pctl->gc.parent = &pdev->dev;
> +#ifdef CONFIG_OF_GPIO
> +       pctl->gc.of_node = parent->of_node;
> +#endif
> +
> +       platform_set_drvdata(pdev, pctl);
> +
> +       return devm_gpiochip_add_data(&pdev->dev, &pctl->gc, pctl);
> +}
> +
> +static struct platform_driver da9062_pctl_driver = {
> +       .probe = da9062_pctl_probe,
> +       .driver = {
> +               .name   = "da9062-gpio",
> +       },
> +};
> +module_platform_driver(da9062_pctl_driver);
> +
> +MODULE_AUTHOR("Marco Felsch <kernel@pengutronix.de>");
> +MODULE_DESCRIPTION("DA9062 PMIC pinctrl and GPIO Driver");
> +MODULE_LICENSE("GPL v2");
> +MODULE_ALIAS("platform:da9062-gpio");
> </cut>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/73231677.8949.1583850188400.JavaMail.javamailuser%40localhost.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnZESFfCjN9w-mAPkLOSTAe6_kkyQpfb-E4yr_Fu30%2B%2BA%40mail.gmail.com.
