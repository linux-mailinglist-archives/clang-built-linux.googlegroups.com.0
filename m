Return-Path: <clang-built-linux+bncBAABBKXX4LZAKGQE46IJ6OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CB1173188
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 08:05:14 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id p5sf920490wrj.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 23:05:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582873514; cv=pass;
        d=google.com; s=arc-20160816;
        b=E3mAx/jpDsOnVFuJl40wU3pKXO5a+jIAOS+rbleLdGTQk8cn0MdMcRmfGinPwnlFDU
         Xu1MSnjqTtKcKz0ho//fdAAZOIGmcKVKLE1eLG6eqTg0D0WvKzkUWui+bSxd7WaoakCW
         pihNM8avnlrn3Q5QMvfwFlpCBUEFEA/R2QSl9mLWqMbX61KDjVHmafsxqDRLwhAYAA8d
         h4ND3ksKaT3dL+W51HJAIlwcP+GofxBEVVmeMSYmo24Y2r/+LNkDvKRp7cdH3qoOkq3x
         zG7R0O4AlqVmIPweQJuma+Xr5rX86DIXv7FsUuBFO6/+32AtdbtORVh9QZec0Ox4L9q4
         nGkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=yKsOL4Bo5kVud2x2/hAcaEVw+rHvZ8dQ2UmRmVhyp3o=;
        b=B/ZbgbPOK0NQBffKfuIbe470VWSy9YgSpWmnZtLhC0UjStQtM5LpSkA3z90YLbJnnh
         2nHkh+NPDRQoGXV2G/+uugGBB938VNJVf9nlpSGVk23su3V8k6iepM4/JcrxslZK+PLH
         xzBDUaLZ2bFCrkhjYDcvzKQYth8RaP3KGDrLO4XivFz+SwiriECb6xU79g4A+JmsFzYi
         FQPkUSoKaJaDkxBlOrZN0wnqjtmlZ0iUVpp5Wb2NhIV3TJEpl/a314vytuzsdnLs41BK
         9312ecsk/y/q5YnZrHyFQPC1zWB/ssTb/p5HXE68ZcSexA63XahMceK1MCkR/oNc1XJS
         w1Ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mfe@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mfe@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yKsOL4Bo5kVud2x2/hAcaEVw+rHvZ8dQ2UmRmVhyp3o=;
        b=GfUqa9N1bn/cCCoU501U0k6O1WKsBkueKz37WXV1sv+L9gitFnWzFluLumSdaT6u/Y
         uRBPwJjiO9UsQKXiMnz8ajNYNUUXy4Tj+GouSYw50J2p4zb4MsDEfahCjIQBEvRkUm8o
         XSt+r9uUFK+FKD99SDMDKcdOgm/x6wPTjUi5whz27IhHxEXt/EV/vrHPhqbuXSXvP+a5
         yS8Tj1UQxm9c3S+DEyfFMxaJPkQbKjiwDgXQvwZ+1lmIld9zOQYKjfz5ja1DGFxFXMIS
         O3ItZHoYY2RYsCSEOuVEanLZix4qoAQ0hbKOoqer39NnBn/mf8s4VXMJtD2OGF2SCWGS
         8s4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yKsOL4Bo5kVud2x2/hAcaEVw+rHvZ8dQ2UmRmVhyp3o=;
        b=Z+In6sTYOUhds3chcYO93G96u9lYYRxRp+zWRwe+5sCDQ43eTCkVk1bfG3VHBhbDuj
         ae6w6itGgYrDr1ILBTtP7g8FNzfD4YeCcEZQM+aoM2VACVCRIsvI8S33S9zT37uWgzb9
         VA2O4t8R1lzF5drYeg1gxBS2dYpshPPyiVnhRqpuxvcylzdCUgrU3zgOK+jDfA5zWhgA
         KCd31sKfFkVbPLk+RVhtlLh9Agdzi+A+ErZpkbwO6LkhZM8h8BWTjyG8TiqZzpbDZ6Kf
         nkSRVkxbND3uMOVHQuJy2wkTG0V06fDTGF3a/IjKXU8WCCgBULw10tenGtxpeUfrsL0Q
         QwMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX0s2rkrH5s1A5HiHYcAx6u7eeVrwQAMattUoVJ7GSDlks3b5HQ
	bFysqDaoiaxa/r8BEajAC6Y=
X-Google-Smtp-Source: APXvYqyUJst/PxoSYqkWW54myeAuJgsONaGfqw/I4AfcIGbm2j9zXRmr2vdlI4gO1yRMEbdr97SSNg==
X-Received: by 2002:a1c:750f:: with SMTP id o15mr3285014wmc.111.1582873514183;
        Thu, 27 Feb 2020 23:05:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:670d:: with SMTP id o13ls744062wru.3.gmail; Thu, 27 Feb
 2020 23:05:13 -0800 (PST)
X-Received: by 2002:adf:d4cc:: with SMTP id w12mr3485228wrk.249.1582873513750;
        Thu, 27 Feb 2020 23:05:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582873513; cv=none;
        d=google.com; s=arc-20160816;
        b=thkvvnd2EvaB/it2xka731pRsh0nm0FwsPePRILPAD40o7KxGh9azP+ZAb7I35sYho
         2AD9KWK/0Lx8m2K0z1lP1USNITtFY/tDKYsNMKla62tUiT13VvBjnCS/m9CUCtphikyG
         PQG96dRLNNEzASN6YQ026bHvQZNkI3QGL9i03KsgM6HVg+SCI3qv2CWMX/oGxlvCucKw
         U3q4mAn3x+kUn+GeoisNZKRRaU/RrR9ZJNqglu90K8tf2w297LGy7LaY4XmDhSrpn1mv
         se+07zyoCGNMiL0rbJr4fU3SPGAL7gR8hvWgRBQPy2Y3hGbRAO4gLP/FS7Ir3+ttM4We
         QtDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=UdF7FqASwIBatnFdGseGtr+H6GWH5NofEF9qEC03ARA=;
        b=JWNqqld0GUFAwAOp+v91ZtsktE4jBiJrwgkEIJ28aGyo49dh3YD53OS0/OQ6/DFEZg
         AmIgRshcHdHqZiWsi0EzAyd7k3HPw2ElSDfmmTya17/ORLel2qSCUpuYi6JUMPFZndoq
         GuK1Snnb/vX/naoCYXxJbGzkKlgHWihq09bQShbp1blecdoWgErvDeG/CwtbvC0wfQko
         e/w7Hp/K96RLlzTGweZOO45T2ybvkM+xKE7H/7m6lHfUD4CfI/kSuqiWGxtC9SJ1HlWE
         QsaO9fvUXbd47fphDwl+ppaBs5/TbM0QehJcYxxeIbCh6ci8JvUY7nY69VdAHUefW+35
         C1Yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mfe@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mfe@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id d14si76249wru.1.2020.02.27.23.05.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2020 23:05:13 -0800 (PST)
Received-SPF: pass (google.com: domain of mfe@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
	by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1j7Zhx-0007Pr-AT; Fri, 28 Feb 2020 08:05:13 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
	(envelope-from <mfe@pengutronix.de>)
	id 1j7Zhw-0000TS-IH; Fri, 28 Feb 2020 08:05:12 +0100
Date: Fri, 28 Feb 2020 08:05:12 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@linaro.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	CI Notify <ci_notify@linaro.org>,
	Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-allmodconfig - Build # 76 - Successful!
Message-ID: <20200228070512.a6mot2ngxdvzftrq@pengutronix.de>
References: <115101724.4577.1582789797861.JavaMail.javamailuser@localhost>
 <CAKwvOd=fdpFveAkg4uZB6T5kX9SCBJhrNnqVFuyF0YXHj0n+sQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=fdpFveAkg4uZB6T5kX9SCBJhrNnqVFuyF0YXHj0n+sQ@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:59:31 up 104 days, 22:18, 122 users,  load average: 0.17, 0.16,
 0.09
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: clang-built-linux@googlegroups.com
X-Original-Sender: m.felsch@pengutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mfe@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33
 as permitted sender) smtp.mailfrom=mfe@pengutronix.de
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

Hi Nick,

On 20-02-27 11:23, Nick Desaulniers wrote:
> + Marco
> 
> 00:02:10 drivers/pinctrl/pinctrl-da9062.c:28:10: error:
> '../gpio/gpiolib.h' file not found with <angled> include; use "quotes"
> instead
> 00:02:10 #include <../gpio/gpiolib.h>
> 00:02:10          ^~~~~~~~~~~~~~~~~~~
> 00:02:10          "../gpio/gpiolib.h"
> 00:02:10 1 error generated.
> 
> is the full error. Marco, can you please take a look? Apologies if
> this has already been reported+fixed.

Sorry for that I'm using a newer toolchain and didn't covered it. Patch
is here: https://lkml.org/lkml/2020/2/28/52

Regards,
  Marco

> On Wed, Feb 26, 2020 at 11:50 PM <ci_notify@linaro.org> wrote:
> >
> > Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-next-allmodconfig.  So far, this commit has regressed CI configurations:
> >  - tcwg_kernel/gnu-master-aarch64-next-allyesconfig
> >  - tcwg_kernel/llvm-master-aarch64-next-allmodconfig
> >
> > Culprit:
> > <cut>
> > commit 56cc3af4e8c8eaba91b51efa6081a868adbd97c3
> > Author: Marco Felsch <m.felsch@pengutronix.de>
> >
> >     pinctrl: da9062: add driver support
> > </cut>
> >
> > First few build errors in logs:
> > 00:02:10 drivers/pinctrl/pinctrl-da9062.c:28:10: error: '../gpio/gpiolib.h' file not found with <angled> include; use  instead
> > 00:02:10 make[2]: *** [drivers/pinctrl/pinctrl-da9062.o] Error 1
> > 00:02:13 make[1]: *** [drivers/pinctrl] Error 2
> > 00:12:28 make: *** [drivers] Error 2
> > Configuration details:
> > rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> > rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
> > rr[linux_branch]="c99b17ac03994525092fd66bed14b4a0c82f0b4d"
> >
> > Results regressed to (for first_bad == 56cc3af4e8c8eaba91b51efa6081a868adbd97c3)
> > reset_artifacts:
> > -10
> > build_llvm:
> > -1
> > linux_n_obj:
> > 19955
> >
> > from (for last_good == c93214689f0c70b6942ba1d12b8371b9fc60ae41)
> > reset_artifacts:
> > -10
> > build_llvm:
> > -1
> > linux_n_obj:
> > 27223
> > linux build successful:
> > all
> > linux boot successful:
> > boot
> >
> > Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/76/artifact/artifacts/build-56cc3af4e8c8eaba91b51efa6081a868adbd97c3/
> > Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/76/artifact/artifacts/build-c93214689f0c70b6942ba1d12b8371b9fc60ae41/
> > Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/76/
> >
> > Reproduce builds:
> > <cut>
> > mkdir investigate-linux-56cc3af4e8c8eaba91b51efa6081a868adbd97c3
> > cd investigate-linux-56cc3af4e8c8eaba91b51efa6081a868adbd97c3
> >
> > git clone https://git.linaro.org/toolchain/jenkins-scripts
> >
> > mkdir -p artifacts/manifests
> > curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/76/artifact/artifacts/manifests/build-baseline.sh
> > curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/76/artifact/artifacts/manifests/build-parameters.sh
> > curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/76/artifact/artifacts/test.sh
> > chmod +x artifacts/test.sh
> >
> > # Reproduce the baseline build (build all pre-requisites)
> > ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
> >
> > cd linux
> >
> > # Reproduce first_bad build
> > git checkout --detach 56cc3af4e8c8eaba91b51efa6081a868adbd97c3
> > ../artifacts/test.sh
> >
> > # Reproduce last_good build
> > git checkout --detach c93214689f0c70b6942ba1d12b8371b9fc60ae41
> > ../artifacts/test.sh
> >
> > cd ..
> > </cut>
> >
> > History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-allmodconfig
> >
> > Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/76/artifact/artifacts/
> > Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/76/consoleText
> >
> > Full commit:
> > <cut>
> > commit 56cc3af4e8c8eaba91b51efa6081a868adbd97c3
> > Author: Marco Felsch <m.felsch@pengutronix.de>
> > Date:   Wed Jan 8 11:47:46 2020 +0100
> >
> >     pinctrl: da9062: add driver support
> >
> >     The DA9062 is a mfd pmic device which supports 5 GPIOs. The GPIOs can
> >     be used as input, output or have a special use-case.
> >
> >     The patch adds the support for the normal input/output use-case.
> >
> >     Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> >     Link: https://lore.kernel.org/r/20200108104746.1765-4-m.felsch@pengutronix.de
> >     Reviewed-by: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
> >     Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> > ---
> >  MAINTAINERS                      |   1 +
> >  drivers/pinctrl/Kconfig          |  12 ++
> >  drivers/pinctrl/Makefile         |   1 +
> >  drivers/pinctrl/pinctrl-da9062.c | 300 +++++++++++++++++++++++++++++++++++++++
> >  4 files changed, 314 insertions(+)
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 408fd7c660aa..260c0c4c6e74 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -4921,6 +4921,7 @@ F:        drivers/leds/leds-da90??.c
> >  F:     drivers/mfd/da903x.c
> >  F:     drivers/mfd/da90??-*.c
> >  F:     drivers/mfd/da91??-*.c
> > +F:     drivers/pinctrl/pinctrl-da90??.c
> >  F:     drivers/power/supply/da9052-battery.c
> >  F:     drivers/power/supply/da91??-*.c
> >  F:     drivers/regulator/da903x.c
> > diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
> > index df0ef69dd474..834c59950d1c 100644
> > --- a/drivers/pinctrl/Kconfig
> > +++ b/drivers/pinctrl/Kconfig
> > @@ -126,6 +126,18 @@ config PINCTRL_DA850_PUPD
> >           Driver for TI DA850/OMAP-L138/AM18XX pinconf. Used to control
> >           pullup/pulldown pin groups.
> >
> > +config PINCTRL_DA9062
> > +       tristate "Dialog Semiconductor DA9062 PMIC pinctrl and GPIO Support"
> > +       depends on MFD_DA9062
> > +       select GPIOLIB
> > +       help
> > +         The Dialog DA9062 PMIC provides multiple GPIOs that can be muxed for
> > +         different functions. This driver bundles a pinctrl driver to select the
> > +         function muxing and a GPIO driver to handle the GPIO when the GPIO
> > +         function is selected.
> > +
> > +         Say yes to enable pinctrl and GPIO support for the DA9062 PMIC.
> > +
> >  config PINCTRL_DIGICOLOR
> >         bool
> >         depends on OF && (ARCH_DIGICOLOR || COMPILE_TEST)
> > diff --git a/drivers/pinctrl/Makefile b/drivers/pinctrl/Makefile
> > index 879f312bfb75..0b36a1cfca8a 100644
> > --- a/drivers/pinctrl/Makefile
> > +++ b/drivers/pinctrl/Makefile
> > @@ -16,6 +16,7 @@ obj-$(CONFIG_PINCTRL_AT91PIO4)        += pinctrl-at91-pio4.o
> >  obj-$(CONFIG_PINCTRL_AMD)      += pinctrl-amd.o
> >  obj-$(CONFIG_PINCTRL_BM1880)   += pinctrl-bm1880.o
> >  obj-$(CONFIG_PINCTRL_DA850_PUPD) += pinctrl-da850-pupd.o
> > +obj-$(CONFIG_PINCTRL_DA9062)   += pinctrl-da9062.o
> >  obj-$(CONFIG_PINCTRL_DIGICOLOR)        += pinctrl-digicolor.o
> >  obj-$(CONFIG_PINCTRL_FALCON)   += pinctrl-falcon.o
> >  obj-$(CONFIG_PINCTRL_GEMINI)   += pinctrl-gemini.o
> > diff --git a/drivers/pinctrl/pinctrl-da9062.c b/drivers/pinctrl/pinctrl-da9062.c
> > new file mode 100644
> > index 000000000000..f704ee0b2fd9
> > --- /dev/null
> > +++ b/drivers/pinctrl/pinctrl-da9062.c
> > @@ -0,0 +1,300 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Dialog DA9062 pinctrl and GPIO driver.
> > + * Based on DA9055 GPIO driver.
> > + *
> > + * TODO:
> > + *   - add pinmux and pinctrl support (gpio alternate mode)
> > + *
> > + * Documents:
> > + * [1] https://www.dialog-semiconductor.com/sites/default/files/da9062_datasheet_3v6.pdf
> > + *
> > + * Copyright (C) 2019 Pengutronix, Marco Felsch <kernel@pengutronix.de>
> > + */
> > +#include <linux/bits.h>
> > +#include <linux/module.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/regmap.h>
> > +
> > +#include <linux/gpio/driver.h>
> > +
> > +#include <linux/mfd/da9062/core.h>
> > +#include <linux/mfd/da9062/registers.h>
> > +
> > +/*
> > + * We need this get the gpio_desc from a <gpio_chip,offset> tuple to decide if
> > + * the gpio is active low without a vendor specific dt-binding.
> > + */
> > +#include <../gpio/gpiolib.h>
> > +
> > +#define DA9062_TYPE(offset)            (4 * (offset % 2))
> > +#define DA9062_PIN_SHIFT(offset)       (4 * (offset % 2))
> > +#define DA9062_PIN_ALTERNATE           0x00 /* gpio alternate mode */
> > +#define DA9062_PIN_GPI                 0x01 /* gpio in */
> > +#define DA9062_PIN_GPO_OD              0x02 /* gpio out open-drain */
> > +#define DA9062_PIN_GPO_PP              0x03 /* gpio out push-pull */
> > +#define DA9062_GPIO_NUM                        5
> > +
> > +struct da9062_pctl {
> > +       struct da9062 *da9062;
> > +       struct gpio_chip gc;
> > +       unsigned int pin_config[DA9062_GPIO_NUM];
> > +};
> > +
> > +static int da9062_pctl_get_pin_mode(struct da9062_pctl *pctl,
> > +                                   unsigned int offset)
> > +{
> > +       struct regmap *regmap = pctl->da9062->regmap;
> > +       int ret, val;
> > +
> > +       ret = regmap_read(regmap, DA9062AA_GPIO_0_1 + (offset >> 1), &val);
> > +       if (ret < 0)
> > +               return ret;
> > +
> > +       val >>= DA9062_PIN_SHIFT(offset);
> > +       val &= DA9062AA_GPIO0_PIN_MASK;
> > +
> > +       return val;
> > +}
> > +
> > +static int da9062_pctl_set_pin_mode(struct da9062_pctl *pctl,
> > +                                   unsigned int offset, unsigned int mode_req)
> > +{
> > +       struct regmap *regmap = pctl->da9062->regmap;
> > +       unsigned int mode = mode_req;
> > +       unsigned int mask;
> > +       int ret;
> > +
> > +       mode &= DA9062AA_GPIO0_PIN_MASK;
> > +       mode <<= DA9062_PIN_SHIFT(offset);
> > +       mask = DA9062AA_GPIO0_PIN_MASK << DA9062_PIN_SHIFT(offset);
> > +
> > +       ret = regmap_update_bits(regmap, DA9062AA_GPIO_0_1 + (offset >> 1),
> > +                                mask, mode);
> > +       if (!ret)
> > +               pctl->pin_config[offset] = mode_req;
> > +
> > +       return ret;
> > +}
> > +
> > +static int da9062_gpio_get(struct gpio_chip *gc, unsigned int offset)
> > +{
> > +       struct da9062_pctl *pctl = gpiochip_get_data(gc);
> > +       struct regmap *regmap = pctl->da9062->regmap;
> > +       int gpio_mode, val;
> > +       int ret;
> > +
> > +       gpio_mode = da9062_pctl_get_pin_mode(pctl, offset);
> > +       if (gpio_mode < 0)
> > +               return gpio_mode;
> > +
> > +       switch (gpio_mode) {
> > +       case DA9062_PIN_ALTERNATE:
> > +               return -ENOTSUPP;
> > +       case DA9062_PIN_GPI:
> > +               ret = regmap_read(regmap, DA9062AA_STATUS_B, &val);
> > +               if (ret < 0)
> > +                       return ret;
> > +               break;
> > +       case DA9062_PIN_GPO_OD:
> > +       case DA9062_PIN_GPO_PP:
> > +               ret = regmap_read(regmap, DA9062AA_GPIO_MODE0_4, &val);
> > +               if (ret < 0)
> > +                       return ret;
> > +       }
> > +
> > +       return !!(val & BIT(offset));
> > +}
> > +
> > +static void da9062_gpio_set(struct gpio_chip *gc, unsigned int offset,
> > +                           int value)
> > +{
> > +       struct da9062_pctl *pctl = gpiochip_get_data(gc);
> > +       struct regmap *regmap = pctl->da9062->regmap;
> > +
> > +       regmap_update_bits(regmap, DA9062AA_GPIO_MODE0_4, BIT(offset),
> > +                          value << offset);
> > +}
> > +
> > +static int da9062_gpio_get_direction(struct gpio_chip *gc, unsigned int offset)
> > +{
> > +       struct da9062_pctl *pctl = gpiochip_get_data(gc);
> > +       int gpio_mode;
> > +
> > +       gpio_mode = da9062_pctl_get_pin_mode(pctl, offset);
> > +       if (gpio_mode < 0)
> > +               return gpio_mode;
> > +
> > +       switch (gpio_mode) {
> > +       case DA9062_PIN_ALTERNATE:
> > +               return -ENOTSUPP;
> > +       case DA9062_PIN_GPI:
> > +               return GPIO_LINE_DIRECTION_IN;
> > +       case DA9062_PIN_GPO_OD:
> > +       case DA9062_PIN_GPO_PP:
> > +               return GPIO_LINE_DIRECTION_OUT;
> > +       }
> > +
> > +       return -EINVAL;
> > +}
> > +
> > +static int da9062_gpio_direction_input(struct gpio_chip *gc,
> > +                                      unsigned int offset)
> > +{
> > +       struct da9062_pctl *pctl = gpiochip_get_data(gc);
> > +       struct regmap *regmap = pctl->da9062->regmap;
> > +       struct gpio_desc *desc = gpiochip_get_desc(gc, offset);
> > +       unsigned int gpi_type;
> > +       int ret;
> > +
> > +       ret = da9062_pctl_set_pin_mode(pctl, offset, DA9062_PIN_GPI);
> > +       if (ret)
> > +               return ret;
> > +
> > +       /*
> > +        * If the gpio is active low we should set it in hw too. No worries
> > +        * about gpio_get() because we read and return the gpio-level. So the
> > +        * gpiolib active_low handling is still correct.
> > +        *
> > +        * 0 - active low, 1 - active high
> > +        */
> > +       gpi_type = !gpiod_is_active_low(desc);
> > +
> > +       return regmap_update_bits(regmap, DA9062AA_GPIO_0_1 + (offset >> 1),
> > +                               DA9062AA_GPIO0_TYPE_MASK << DA9062_TYPE(offset),
> > +                               gpi_type << DA9062_TYPE(offset));
> > +}
> > +
> > +static int da9062_gpio_direction_output(struct gpio_chip *gc,
> > +                                       unsigned int offset, int value)
> > +{
> > +       struct da9062_pctl *pctl = gpiochip_get_data(gc);
> > +       unsigned int pin_config = pctl->pin_config[offset];
> > +       int ret;
> > +
> > +       ret = da9062_pctl_set_pin_mode(pctl, offset, pin_config);
> > +       if (ret)
> > +               return ret;
> > +
> > +       da9062_gpio_set(gc, offset, value);
> > +
> > +       return 0;
> > +}
> > +
> > +static int da9062_gpio_set_config(struct gpio_chip *gc, unsigned int offset,
> > +                                 unsigned long config)
> > +{
> > +       struct da9062_pctl *pctl = gpiochip_get_data(gc);
> > +       struct regmap *regmap = pctl->da9062->regmap;
> > +       int gpio_mode;
> > +
> > +       /*
> > +        * We need to meet the following restrictions [1, Figure 18]:
> > +        * - PIN_CONFIG_BIAS_PULL_DOWN -> only allowed if the pin is used as
> > +        *                                gpio input
> > +        * - PIN_CONFIG_BIAS_PULL_UP   -> only allowed if the pin is used as
> > +        *                                gpio output open-drain.
> > +        */
> > +
> > +       switch (pinconf_to_config_param(config)) {
> > +       case PIN_CONFIG_BIAS_DISABLE:
> > +               return regmap_update_bits(regmap, DA9062AA_CONFIG_K,
> > +                                         BIT(offset), 0);
> > +       case PIN_CONFIG_BIAS_PULL_DOWN:
> > +               gpio_mode = da9062_pctl_get_pin_mode(pctl, offset);
> > +               if (gpio_mode < 0)
> > +                       return -EINVAL;
> > +               else if (gpio_mode != DA9062_PIN_GPI)
> > +                       return -ENOTSUPP;
> > +               return regmap_update_bits(regmap, DA9062AA_CONFIG_K,
> > +                                         BIT(offset), BIT(offset));
> > +       case PIN_CONFIG_BIAS_PULL_UP:
> > +               gpio_mode = da9062_pctl_get_pin_mode(pctl, offset);
> > +               if (gpio_mode < 0)
> > +                       return -EINVAL;
> > +               else if (gpio_mode != DA9062_PIN_GPO_OD)
> > +                       return -ENOTSUPP;
> > +               return regmap_update_bits(regmap, DA9062AA_CONFIG_K,
> > +                                         BIT(offset), BIT(offset));
> > +       case PIN_CONFIG_DRIVE_OPEN_DRAIN:
> > +               return da9062_pctl_set_pin_mode(pctl, offset,
> > +                                               DA9062_PIN_GPO_OD);
> > +       case PIN_CONFIG_DRIVE_PUSH_PULL:
> > +               return da9062_pctl_set_pin_mode(pctl, offset,
> > +                                               DA9062_PIN_GPO_PP);
> > +       default:
> > +               return -ENOTSUPP;
> > +       }
> > +}
> > +
> > +static int da9062_gpio_to_irq(struct gpio_chip *gc, unsigned int offset)
> > +{
> > +       struct da9062_pctl *pctl = gpiochip_get_data(gc);
> > +       struct da9062 *da9062 = pctl->da9062;
> > +
> > +       return regmap_irq_get_virq(da9062->regmap_irq,
> > +                                  DA9062_IRQ_GPI0 + offset);
> > +}
> > +
> > +static const struct gpio_chip reference_gc = {
> > +       .owner = THIS_MODULE,
> > +       .get = da9062_gpio_get,
> > +       .set = da9062_gpio_set,
> > +       .get_direction = da9062_gpio_get_direction,
> > +       .direction_input = da9062_gpio_direction_input,
> > +       .direction_output = da9062_gpio_direction_output,
> > +       .set_config = da9062_gpio_set_config,
> > +       .to_irq = da9062_gpio_to_irq,
> > +       .can_sleep = true,
> > +       .ngpio = DA9062_GPIO_NUM,
> > +       .base = -1,
> > +};
> > +
> > +static int da9062_pctl_probe(struct platform_device *pdev)
> > +{
> > +       struct device *parent = pdev->dev.parent;
> > +       struct da9062_pctl *pctl;
> > +       int i;
> > +
> > +       pctl = devm_kzalloc(&pdev->dev, sizeof(*pctl), GFP_KERNEL);
> > +       if (!pctl)
> > +               return -ENOMEM;
> > +
> > +       pctl->da9062 = dev_get_drvdata(parent);
> > +       if (!pctl->da9062)
> > +               return -EINVAL;
> > +
> > +       if (!device_property_present(parent, "gpio-controller"))
> > +               return 0;
> > +
> > +       for (i = 0; i < ARRAY_SIZE(pctl->pin_config); i++)
> > +               pctl->pin_config[i] = DA9062_PIN_GPO_PP;
> > +
> > +       /*
> > +        * Currently the driver handles only the GPIO support. The
> > +        * pinctrl/pinmux support can be added later if needed.
> > +        */
> > +       pctl->gc = reference_gc;
> > +       pctl->gc.label = dev_name(&pdev->dev);
> > +       pctl->gc.parent = &pdev->dev;
> > +#ifdef CONFIG_OF_GPIO
> > +       pctl->gc.of_node = parent->of_node;
> > +#endif
> > +
> > +       platform_set_drvdata(pdev, pctl);
> > +
> > +       return devm_gpiochip_add_data(&pdev->dev, &pctl->gc, pctl);
> > +}
> > +
> > +static struct platform_driver da9062_pctl_driver = {
> > +       .probe = da9062_pctl_probe,
> > +       .driver = {
> > +               .name   = "da9062-gpio",
> > +       },
> > +};
> > +module_platform_driver(da9062_pctl_driver);
> > +
> > +MODULE_AUTHOR("Marco Felsch <kernel@pengutronix.de>");
> > +MODULE_DESCRIPTION("DA9062 PMIC pinctrl and GPIO Driver");
> > +MODULE_LICENSE("GPL v2");
> > +MODULE_ALIAS("platform:da9062-gpio");
> > </cut>
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/115101724.4577.1582789797861.JavaMail.javamailuser%40localhost.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200228070512.a6mot2ngxdvzftrq%40pengutronix.de.
