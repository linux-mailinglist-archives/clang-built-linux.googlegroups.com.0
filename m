Return-Path: <clang-built-linux+bncBDYJPJO25UGBBL4P37XQKGQE6W4TWQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5F51213D4
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Dec 2019 19:06:41 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id v2sf5647130pgv.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Dec 2019 10:06:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576519599; cv=pass;
        d=google.com; s=arc-20160816;
        b=XnPGP2EFp+BR08is+nv2J/kPV9wM9Cdsp8gmqHiF94B8rjcK3fJFH7MWaGH1+hvymb
         QzgOKWrxFo3WsNn4NamzFSSUBb0xZbD2hLj6yI5Oyu6MQjRGQp3cmroH1C6ImezDVJRh
         i2h4BOc8tDLR7xqpIjN5OcOAUMFRxm2r39eWM6e/3OpYMidSzqRah1Vz7RDGQ/MMLXjz
         PL+4SvwwElhEuFlvZbL9AppLpc7DViDxda59LXRTnWWK5vofueIo8L4HZbY9iBYVKP69
         /fPKOhv4TjWZZbFjKP7FLhn46rMe/eNhOUq4jwAaUL9a5mTt0HgkPGpZbalwtwR9+NHB
         j7bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TaqRzpI4kvlUeRCxvksNpJqcsf+NF9MD/VTt1PyB+TA=;
        b=O/7Y8q6YGTwulumUV9aQdRp8a51uONVjgiCB7vBFU0MjfcF4JQ/Ad1v1/0x+psAIug
         u11XnQNoOQt9WGLzIfVPGZ90j/Y6gMJgEXb1/rP8LY5hG0na+B4H0z2LVmOu391cSq7x
         8Cs2ZOfekrbD7Cabmyg7PwYaYEdQRODOqlM5LnFs6xG8tRpQZqY9JLrJIUgax614ZWK/
         qBmwtgxVclZuuE58WuWHwFF8aDpea/02fOS5Q+RstoQB2aNc3alYxK9VN/cJgQID2wIk
         2GNY7Mzf+gFAd//agVVoJd3qv1d52vmIBxRgA+Nt4o7Xns7+25xSrPjTcCLPZcbgzSsq
         ECUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wVpAhghr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TaqRzpI4kvlUeRCxvksNpJqcsf+NF9MD/VTt1PyB+TA=;
        b=sNRuvceJoi7khaVxNiLJgFHbuNbh835TAgCXXYY2rfKLQygjSx4AV51OCnBApOrUrk
         hRkeosuc4hQGeZP/FeW5dPNssnmmQ/3CHtLZ/SqehlqgpGaD5B4qEukWAeM1Kh80IWGa
         SFt3uDX5LbdJ7YvnTsoXsRVr02jrTl/kI9w2GTCp073EmVjBiErWf4CPLdZVJQ/9FftG
         A6wuGd5oPgelPMAaNhFIu7Zd0wCaWi6KO+YgAhK3aKznNNwqLGK0KkCkKSvUYwX6pGGJ
         +tr1DevEA3WpMeo89L5/mmppxgmoqXnWsZHTJmq8jEucxK481JXX+Q/gh7PcPKjz5+SO
         o/NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TaqRzpI4kvlUeRCxvksNpJqcsf+NF9MD/VTt1PyB+TA=;
        b=TTUvcWNxJjsc/uY0qnZUO1HnFyWdT20gv/E4Uf0KcKKRc79Zwpm9xRtpuABgMNL2go
         4Xv754d2ukvVwmP+5Bnsdj3rtzsIYwX2iEIHzZWBGRTWjeRmCxiU/CkbhONBqzFCtkjF
         1o++QdL2hE4JTYTe91fdTFeu6jAdsOgvhbGwboyszRoehMjWA7865sVBDgF5Fq+HjXZ8
         psmXL+YayJ7n5y3JvVFGt11vDJxH5ZDS3OSNCZK1a14SC+mM7y4vtn6jYcbUznLbghpC
         nrxO1dZTOK5f1rajj4tM83JOjfoSdkZ0GeDjND6WD2w1t6R2an9yqfQvjoAMOrqSsTdE
         BCUA==
X-Gm-Message-State: APjAAAV88+EVSyy7XupnIzmVhudSRmX9CThfWa0bH5jWJolW6u7TBvJc
	8Lc71+J8gtm6Lv/mq1WRvic=
X-Google-Smtp-Source: APXvYqzIxCACelFNc+Tj3G1y3aeuzUkv3ury1UGnBTQHZhWZV6ZPVpdSZrAfgA4vtcESdwLvilhMtA==
X-Received: by 2002:a62:2a12:: with SMTP id q18mr17841689pfq.203.1576519599592;
        Mon, 16 Dec 2019 10:06:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9d09:: with SMTP id k9ls4536092pfp.16.gmail; Mon, 16 Dec
 2019 10:06:39 -0800 (PST)
X-Received: by 2002:a62:382:: with SMTP id 124mr17757842pfd.11.1576519599154;
        Mon, 16 Dec 2019 10:06:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576519599; cv=none;
        d=google.com; s=arc-20160816;
        b=aIewOU16WdSSey2ZTmXwgYhrGIhvsM3gMEpSxUcsGCxkxYf4bDlBPfbRPbo6Y4k6n9
         TU8Y958U1Xz64WFsbk9+t/2vHuSORo5mKj//JDbJoNECjtag1+K1q2VCMV1RWkV5hyPq
         PrNqmdqpohke+y0UPy816AtBtA/Sif3Cir08S3BJ/LZToI4aXrSFMp8fA53PSb+7QfNA
         p6xIt8rsCS3lUa61QWhs92dqnScFBUbF3iXWUJKRBothSgJfcypmESGeaXF9fmaWZpIh
         +8yCzgYWkWNQIHSiBY9HJBrjSS0LA2ezSxkq7HFhz0J3HLC7NantQESmwN6rZQuBzKCM
         yC1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OwpJZG4Pumrw50aLCJzuAv0cCCD0x7/wNSCU26pN/AM=;
        b=M1J7A+1mPt8WxzSBJiUj6xg5ARnhlU9sO5bR6TVU8Cx5yAjtnauy6FS0IEue4zum9l
         tiTIX/tc23jOUgUnOYQKosyYyvEuSITUFm8+6vsqLCQNdY5i2j2dmGJp26Yg5Wgs7Qwn
         j0K8GWHv48gveRIojQFD2Y803TY7h69DoY0DdH4EJaMXK2srThNR2A7quZtMhsGCkVRP
         EmNR3hiZbHAU/6ma093ze9oSBCY4/zpVLg9D3uRO40JIV2ZYk6pJs8mgB/DawjuRL6gH
         0W1PRb1j1ZX6rcWUvQmhvQm45yDx0k0p/h7+gH66jg2p5xLCaUFHqY083NxCDiHgrj97
         xIVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wVpAhghr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id i131si844074pfe.3.2019.12.16.10.06.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2019 10:06:39 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id x7so4130431pgl.11
        for <clang-built-linux@googlegroups.com>; Mon, 16 Dec 2019 10:06:39 -0800 (PST)
X-Received: by 2002:a63:f24b:: with SMTP id d11mr8893278pgk.381.1576519598380;
 Mon, 16 Dec 2019 10:06:38 -0800 (PST)
MIME-Version: 1.0
References: <589843567.4850.1576390378503.JavaMail.javamailuser@localhost> <690305774.5019.1576507536528.JavaMail.javamailuser@localhost>
In-Reply-To: <690305774.5019.1576507536528.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Dec 2019 10:06:27 -0800
Message-ID: <CAKwvOdkycbuDa1Gh9XjJv+m9vfM41YeZN9NGTqP0EMa3tOB-aA@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-release-arm-mainline-allyesconfig
 - Build # 43 - Fixed!
To: CI Notify <ci_notify@linaro.org>
Cc: TCWG Validation <tcwg-validation@linaro.org>, Arnd Bergmann <arnd@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wVpAhghr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

man mainline regressed today:
https://lore.kernel.org/lkml/CAHk-=wh8VLe3AEKhz=1bzSO=1fv4EM71EhufxuC=Gp=+bLhXoA@mail.gmail.com/

On Mon, Dec 16, 2019 at 6:45 AM <ci_notify@linaro.org> wrote:
>
> Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-mainline-allyesconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/gnu-master-aarch64-mainline-allyesconfig
>  - tcwg_kernel/gnu-master-arm-mainline-allyesconfig
>  - tcwg_kernel/llvm-release-arm-mainline-allyesconfig
>
> Culprit:
> <cut>
> commit 7d42b7961b9198efc75ee5192eab7d03e691d692
> Author: Guenter Roeck <linux@roeck-us.net>
>
>     staging/octeon: Mark Ethernet driver as BROKEN
> </cut>
>
> First few errors in logs of first_bad:
> 00:14:23 make: *** [vmlinux] Error 1
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
> rr[linux_branch]="e31736d9fae841e8a1612f263136454af10f476a"
>
> Results regressed to (for first_bad == 7d42b7961b9198efc75ee5192eab7d03e691d692)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 18242
>
> from (for last_good == 7347f09a198a045d5f6ea5e9c8fcc1db98e5a854)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 18250
>
> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/43/artifact/artifacts/build-7d42b7961b9198efc75ee5192eab7d03e691d692/
> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/43/artifact/artifacts/build-7347f09a198a045d5f6ea5e9c8fcc1db98e5a854/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/43/
>
> Reproduce builds:
> <cut>
> mkdir investigate-linux-7d42b7961b9198efc75ee5192eab7d03e691d692
> cd investigate-linux-7d42b7961b9198efc75ee5192eab7d03e691d692
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/43/artifact/artifacts/manifests/build-baseline.sh
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/43/artifact/artifacts/manifests/build-parameters.sh
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/43/artifact/artifacts/test.sh
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>
> cd linux
>
> # Reproduce first_bad build
> git checkout --detach 7d42b7961b9198efc75ee5192eab7d03e691d692
> ../artifacts/test.sh
>
> # Reproduce last_good build
> git checkout --detach 7347f09a198a045d5f6ea5e9c8fcc1db98e5a854
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-mainline-allyesconfig
>
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/43/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/43/consoleText
>
> Full commit:
> <cut>
> commit 7d42b7961b9198efc75ee5192eab7d03e691d692
> Author: Guenter Roeck <linux@roeck-us.net>
> Date:   Mon Dec 2 06:18:36 2019 -0800
>
>     staging/octeon: Mark Ethernet driver as BROKEN
>
>     The code doesn't compile due to incompatible pointer errors such as
>
>     drivers/staging/octeon/ethernet-tx.c:649:50: error:
>             passing argument 1 of 'cvmx_wqe_get_grp' from incompatible pointer type
>
>     This is due to mixing, for example, cvmx_wqe_t with 'struct cvmx_wqe'.
>
>     Unfortunately, one can not just revert the primary offending commit, as doing so
>     results in secondary errors. This is made worse by the fact that the "removed"
>     typedefs still exist and are used widely outside the staging directory,
>     making the entire set of "remove typedef" changes pointless and wrong.
>
>     Reflect reality and mark the driver as BROKEN.
>
>     Fixes: ef1fe6b7369a ("staging: octeon: remove typedef declaration for cvmx_wqe")
>     Fixes: 73aef0c9d2c6 ("staging: octeon: remove typedef declaration for cvmx_helper_link_info")
>     Cc: Wambui Karuga <wambui.karugax@gmail.com>
>     Cc: Julia Lawall <julia.lawall@lip6.fr>
>     Signed-off-by: Guenter Roeck <linux@roeck-us.net>
>     Link: https://lore.kernel.org/r/20191202141836.9363-1-linux@roeck-us.net
>     Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/staging/octeon/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/octeon/Kconfig b/drivers/staging/octeon/Kconfig
> index 5319909eb2f6..e7f4ddcc1361 100644
> --- a/drivers/staging/octeon/Kconfig
> +++ b/drivers/staging/octeon/Kconfig
> @@ -3,6 +3,7 @@ config OCTEON_ETHERNET
>         tristate "Cavium Networks Octeon Ethernet support"
>         depends on CAVIUM_OCTEON_SOC || COMPILE_TEST
>         depends on NETDEVICES
> +       depends on BROKEN
>         select PHYLIB
>         select MDIO_OCTEON
>         help
> </cut>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/690305774.5019.1576507536528.JavaMail.javamailuser%40localhost.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkycbuDa1Gh9XjJv%2Bm9vfM41YeZN9NGTqP0EMa3tOB-aA%40mail.gmail.com.
