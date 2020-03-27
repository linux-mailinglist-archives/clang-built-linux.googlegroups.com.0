Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBX6G7HZQKGQE4P3CBWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id D9388195FE0
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 21:34:40 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id 133sf3843278vku.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 13:34:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585341279; cv=pass;
        d=google.com; s=arc-20160816;
        b=TB/NYVb/3LZiSkMeI92c3TbSAqROpagBVppaVQwEocCzUnU3lum9w6QOvFDdLbDp7N
         xv2WbAEWp7ymQXbzQcDSe0x3rWhzMiS4Q5eekbvzLlN1FfTRYGlo+mBXoVnyjXjhhhrw
         lT0HRDeLmHMWZtXbjKKZj29OPULje40xWs31WaDXiuYoNTucPJhrUPAVgRwrXrwzMnMr
         YI7F7hAkOewmE8Xhuuj4RQ7xSdCgenDyuSxOJLRYGSkUltdUFFN2yZezY0U0sqirqy0v
         RhZAUv/qfZEHhxzkD+EJ05Z++5FAutn/Qv75IMFL+cVH/GQ8FftEmlACHkE0ZHG1OwO3
         lOkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=BdsznOBUbLHaHBmzLdjQv/tQSzs6iUH8EwWBAhnRmwU=;
        b=YGLWQMLCEwV/Iyzs0AOJ5nbzCOq4tNDHyTtddj17mSiwhNRfrwkmq/hWDXBIQnMSe8
         JBXvFC1nFvT/MtvDDQcvJCH8NVX1wzFFX6BNFf4DhzE+g8DHKLLkfJ0RfaQX4rd/jqzN
         /vqWT9gq+VZ/EvEQ2Cz93000y9jVgFa70hoS/YsPEwiZOHHCMQP350E71eI5wzS5/OLG
         o7ADGsVBRb0V2f5et54Ch0tLVqdXf8d5hWoiAQf+PnHmNIqnOjzyfLgVe6gR/qYlheOZ
         Lv8wds0x/QoNPKvJTWBJUsm5A2PaIcQHcNnrgAseFo1Rs5PhatkpLuq+Xz9nVFrflFT1
         IPZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KxpTKMIH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BdsznOBUbLHaHBmzLdjQv/tQSzs6iUH8EwWBAhnRmwU=;
        b=caF5n3Yw5PGcoIW9NV9vIyS4HehNJiOhCXFKxrvG8umaO1TPJZf4QauiEo+eA7d24O
         5FXF9V+kaGKxaN0+UgLz086kCz/VUiVEaDAd18Pl39wPKlZjWM/I/uet1k7JWnLfD9pc
         awuzkpLIMntiT7Y8/VyFV50CH+uXP1TtlY2IDvT2fOl/M5lcNu0DtvnpO6NltdFaq+ND
         KEOHdxKlTtbToGjgySZ4OxPCRU6E6X7aaTvAAt7VpSuEFFwnc4H18h4e2OVrCHoLNar6
         T04NN8N/R53+R9Qi8PSI8hbQYjXEK4HbXN0yFSB6PFForlWTRrROn7hR9msYSknHogY2
         5cBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BdsznOBUbLHaHBmzLdjQv/tQSzs6iUH8EwWBAhnRmwU=;
        b=k9rKSPGj49vtQVP/Xd3+Z9IhFvscZYWmWjP0nFSZIhed5Me2TJI9ZUqTtisnq5xS1z
         TS6Rk7a3eok3SjIa4LQDsKBLm1JDAN3R4zxhvDn4PZT1uDzJccAvj/35rBv5/ku/uW2z
         31rNJFbmobzqADU6obLIpI2tJp0+Hfb6o848t8CIbJiT230+fjRiPIRDWF5L1YBTE9Sc
         RhTZ/QfvFfwoir3NUdTixHg3qALFiN4O3moIb3R70L0yeUptTesK+KeplpiOkI6Hnfe/
         1ROELPNOgGHBa1XJ3gqNgMvJdGo1Z7xkfuuruAW8bfO075LMfNLGOBu8qgQ2t4FJC5NH
         rZdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BdsznOBUbLHaHBmzLdjQv/tQSzs6iUH8EwWBAhnRmwU=;
        b=OXWm3BTMcmoIE3kFs4Tr7EOiJ6tCCI4glJ/axGVGeJ2Mli5TVHtx6vTMuEH8G1CV0+
         CzTnlVsub6jXZ5KCwar05fl+xUNbSgM0a53VsPK1cykIDClaZpjTXx+1+V/zGxeEhYok
         dxYIRZc/LLpNbjrJ1A1qIxY73puASAxNmzmNvk/2cNDdlFmgh04xgvVHpR6xykq5gClt
         urheMIuvGGFKQtkaePnMiId5kCWaZeZJ5TUaSkPa1r2EJ8yeezVH9qe2wMNXXGA60zko
         xUJBMbx6o3IEQN/2QgyrOvXSM2KPn+lQMW4J7MTQH6UX0bzs/REJuCIro5/zRicF8I67
         AnQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY7Iz7aWdDpqKCpoZ6scy1JfQkk4bm49Et6f6/ycx+Xn3VojWoT
	cYg9j2xlqBeXUn5s81tOZbo=
X-Google-Smtp-Source: APiQypIFFNODxPlEdtuocEG+vr29jGpx/2il1aZTUhatXKUV5vN0HTTZuXKGFG9RgTtsgOrT0+J6ig==
X-Received: by 2002:ab0:6319:: with SMTP id a25mr664362uap.42.1585341279435;
        Fri, 27 Mar 2020 13:34:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:684c:: with SMTP id d73ls1315094vsc.7.gmail; Fri, 27 Mar
 2020 13:34:39 -0700 (PDT)
X-Received: by 2002:a67:d59e:: with SMTP id m30mr776164vsj.131.1585341278994;
        Fri, 27 Mar 2020 13:34:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585341278; cv=none;
        d=google.com; s=arc-20160816;
        b=XbMDVAbvjbjT22O2YLsG93PjpqAJkQNHWbyXZjeUCwbFpdshrHZvUHrbIg3pKVFA+J
         5R4zmJOEAgcJHyZPBOEzPd0VkSBHtOiU74HuV/ONuRmVOOmYpWAmHF1XK+NMsgl6I0MY
         iwHTRrHseGdq3gTC2bISfzSmnV0hAstgr5UE5ahlCsluNw8UPd1om+9JCKnjIIdUPxcj
         rcOcWcIRMLR0pmNPjSn/kGa1veT3FONPK+2cZY/FhklO5wokzcAiV5uwuKDgPXeENmE0
         rMZe7ipT+nts+E84ss+F54WI0H6+Y+OSABptool17sA7G0IP+1LHh8bbwWfUOvipvEdp
         SNgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=MQsdfcZURcOwBFxbkhKWFGjUO0tKW0NuGrV6KjTjvyw=;
        b=mJLCVtd3zRbtcd2W6yOFzPganJxKYAtCuxbAGlZvpLdrTq6G2YBRQ9r09C/zKazrxq
         GCkuMFVqKHAvwfokvHFOpRxxzb0ckcJuPp5dxp/hjFfdVFOcHxYCLU1pkNTB4pe+oEnY
         geYtrEByNS/jLWzqKLe74ulZcD5ZJ8wA2LttDCCKAuwM+8tZI7aHX5ASggG2hcp4JZRa
         vGckivScKqk/3KkKPyjWJ3q9uY/AphuPqREqdrzOdbHcVSDfw6y98eK858IufMesp7Gv
         2rZuUnkdI8d4sL3QGF7evgOCOu/FSpywSeKdcaQJuE0i/RiBacpdX/KRHzzfr7G3hZx3
         8GpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KxpTKMIH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id 205si444132vkw.2.2020.03.27.13.34.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 13:34:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id v134so9958173oie.11
        for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 13:34:38 -0700 (PDT)
X-Received: by 2002:aca:5191:: with SMTP id f139mr552302oib.140.1585341278490;
        Fri, 27 Mar 2020 13:34:38 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id a76sm2198488oob.5.2020.03.27.13.34.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 27 Mar 2020 13:34:37 -0700 (PDT)
Date: Fri, 27 Mar 2020 13:34:36 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thierry Reding <treding@nvidia.com>, Philip Li <philip.li@intel.com>,
	kbuild-all@lists.01.org, kbuild test robot <lkp@intel.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [linux-next:master 11818/12026] drivers/phy/tegra/xusb.c:941:
 undefined reference to `usb_get_maximum_speed'
Message-ID: <20200327203436.GA54333@ubuntu-m2-xlarge-x86>
References: <202003280210.EVgWpDIL%lkp@intel.com>
 <CAKwvOdk=kejW1DC2677EHjrRg8CXiy8EEU317gUtvG4HzdnMhw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk=kejW1DC2677EHjrRg8CXiy8EEU317gUtvG4HzdnMhw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KxpTKMIH;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Mar 27, 2020 at 12:22:04PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> This is a known bug in bfd; it doesn't seem to emit "range extending
> thunks" for 32b ARM; it's very easy to trigger this for large kernel
> images.  When using LD=ld.lld, lld emits the range extending thunks,
> so this issue doesn't occur.

This does not apply this situation as this is not an arm32 build, it's
an arm64 randconfig build. This is not a ClangBuiltLinux issue, it
happens with GCC and binutils.

The issue is that usb_get_maximum_speed is in the USB common folder but
CONFIG_USB_COMMON is not selected by PHY_TEGRA_XUSB. This should fix it
but I don't know if it is proper or not:

diff --git a/drivers/phy/tegra/Kconfig b/drivers/phy/tegra/Kconfig
index a208aca4ba7b..4b0df6e90d25 100644
--- a/drivers/phy/tegra/Kconfig
+++ b/drivers/phy/tegra/Kconfig
@@ -2,6 +2,7 @@
 config PHY_TEGRA_XUSB
 	tristate "NVIDIA Tegra XUSB pad controller driver"
 	depends on ARCH_TEGRA
+	select USB_COMMON
 	select USB_CONN_GPIO
 	select USB_PHY
 	help

> Philip, I'm trying to simplify the llvm builds a bit, but if your
> build with `make CC=clang LD=ld.lld` then we don't observe these.  We
> should circle back on that once I've simplified the build.

This does not take away from the fact that ld.lld should be used
wherever possible.

Cheers,
Nathan

> On Fri, Mar 27, 2020 at 11:50 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > Hi Stephen,
> >
> > It's probably a bug fix that unveils the link errors.
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   89295c59c1f063b533d071ca49d0fa0c0783ca6f
> > commit: bf5dea0572a06529edc5429263b23d05d30c78a5 [11818/12026] Merge remote-tracking branch 'tegra/for-next'
> > config: arm64-randconfig-a001-20200327 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2a43a1610db335afcccd1a179a33a0886a5a2c4d)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout bf5dea0572a06529edc5429263b23d05d30c78a5
> >         # save the attached .config to linux build tree
> >         COMPILER=clang make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    aarch64-linux-gnu-ld: drivers/phy/tegra/xusb.o: in function `tegra_xusb_usb3_port_parse_dt':
> > >> drivers/phy/tegra/xusb.c:941: undefined reference to `usb_get_maximum_speed'
> >    drivers/phy/tegra/xusb.c:941:(.text+0x166c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `usb_get_maximum_speed'
> >
> > vim +941 drivers/phy/tegra/xusb.c
> >
> > e78fdbad1e902f Thierry Reding 2020-03-19  921
> > 53d2a715c24034 Thierry Reding 2015-11-11  922  static int tegra_xusb_usb3_port_parse_dt(struct tegra_xusb_usb3_port *usb3)
> > 53d2a715c24034 Thierry Reding 2015-11-11  923  {
> > 53d2a715c24034 Thierry Reding 2015-11-11  924   struct tegra_xusb_port *port = &usb3->base;
> > 53d2a715c24034 Thierry Reding 2015-11-11  925   struct device_node *np = port->dev.of_node;
> > 1ef535c6ba8ebc JC Kuo         2020-02-12  926   enum usb_device_speed maximum_speed;
> > 53d2a715c24034 Thierry Reding 2015-11-11  927   u32 value;
> > 53d2a715c24034 Thierry Reding 2015-11-11  928   int err;
> > 53d2a715c24034 Thierry Reding 2015-11-11  929
> > 53d2a715c24034 Thierry Reding 2015-11-11  930   err = of_property_read_u32(np, "nvidia,usb2-companion", &value);
> > 53d2a715c24034 Thierry Reding 2015-11-11  931   if (err < 0) {
> > 53d2a715c24034 Thierry Reding 2015-11-11  932           dev_err(&port->dev, "failed to read port: %d\n", err);
> > 53d2a715c24034 Thierry Reding 2015-11-11  933           return err;
> > 53d2a715c24034 Thierry Reding 2015-11-11  934   }
> > 53d2a715c24034 Thierry Reding 2015-11-11  935
> > 53d2a715c24034 Thierry Reding 2015-11-11  936   usb3->port = value;
> > 53d2a715c24034 Thierry Reding 2015-11-11  937
> > 53d2a715c24034 Thierry Reding 2015-11-11  938   usb3->internal = of_property_read_bool(np, "nvidia,internal");
> > 53d2a715c24034 Thierry Reding 2015-11-11  939
> > 1ef535c6ba8ebc JC Kuo         2020-02-12  940   if (device_property_present(&port->dev, "maximum-speed")) {
> > 1ef535c6ba8ebc JC Kuo         2020-02-12 @941           maximum_speed =  usb_get_maximum_speed(&port->dev);
> > 1ef535c6ba8ebc JC Kuo         2020-02-12  942           if (maximum_speed == USB_SPEED_SUPER)
> > 1ef535c6ba8ebc JC Kuo         2020-02-12  943                   usb3->disable_gen2 = true;
> > 1ef535c6ba8ebc JC Kuo         2020-02-12  944           else if (maximum_speed == USB_SPEED_SUPER_PLUS)
> > 1ef535c6ba8ebc JC Kuo         2020-02-12  945                   usb3->disable_gen2 = false;
> > 1ef535c6ba8ebc JC Kuo         2020-02-12  946           else
> > 1ef535c6ba8ebc JC Kuo         2020-02-12  947                   return -EINVAL;
> > 1ef535c6ba8ebc JC Kuo         2020-02-12  948   }
> > 1ef535c6ba8ebc JC Kuo         2020-02-12  949
> > 2f8da84def73e1 Thierry Reding 2020-03-18  950   usb3->supply = regulator_get(&port->dev, "vbus");
> > 045ef3115382fa Vivek Gautam   2016-10-20  951   return PTR_ERR_OR_ZERO(usb3->supply);
> > 53d2a715c24034 Thierry Reding 2015-11-11  952  }
> > 53d2a715c24034 Thierry Reding 2015-11-11  953
> >
> > :::::: The code at line 941 was first introduced by commit
> > :::::: 1ef535c6ba8ebcad1ced47a9d382b162c34fba3a phy: tegra: xusb: Add Tegra194 support
> >
> > :::::: TO: JC Kuo <jckuo@nvidia.com>
> > :::::: CC: Thierry Reding <treding@nvidia.com>
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003280210.EVgWpDIL%25lkp%40intel.com.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200327203436.GA54333%40ubuntu-m2-xlarge-x86.
