Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2NE7HZQKGQEB2JFK5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id C02FC195E89
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 20:22:18 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id g198sf8853897oib.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 12:22:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585336937; cv=pass;
        d=google.com; s=arc-20160816;
        b=B7IPidbUIsNBEMqMvAJMtcmSDSL+uqr36dPhvaXBO1Ed2CwFZjoLCrYyeIFhF9xHv5
         5DlbFvnKWNoIhr8eEDGfmJL3blBv28rCNSl+VQYajK72pIinW4l75Fm8yzkXz4hAicFm
         Xaio3Q0wsZoFPOrecjev4rzNdxutCwaqRo8a9li8vic/0Fi54cBC/nSTY/OiWyt9mS/c
         uNeQiRuaQegz1vkMOP0KPP9gMCHI6vJ+3oC2zx0retkKwGZXusGVrh76NS8TFk+qfFKr
         Bz3YjmHVzg+33xrt8RU7ZLoZzhfQ2Vt+XD+AsjC+4zhF3GKLSajgvonWpBv5zE1eTmTG
         72Jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ngR5nL5waEwswUG5qit7CMaMNVGYM5YcCtWbNySJuCE=;
        b=N0/d33iUTTFjTxBN51t5kWnKW+kH3fcFdkmmZZ4y9ie8i3ShXB+EkrR9LLpW3QbLnG
         9Kx6IspX1Gf6ZovzlRn0kzhveVjDyyVOTA7O1WH7UYra6NQH+06BM6CNUDSku0OoHkpk
         HfpZ306EaAJa6zRS2WF9HWUyCblwi1Rjle4qtx6oAOy4BN04+BW8wtE4Qn39BVdKWYm7
         yyov41F1bBz4MXvGzcblvdNNfkFFnwrBJVFoyUsiJaEfocXIKOYCWbVXP1L/OYy+Ed/N
         Iz+w2nWdYmB7YiiWpj1087kmkBG22rbL6UaUifRAL3idgzFvbawJPmrDUx/mN7sNAnvc
         5dSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pA7UfkPp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ngR5nL5waEwswUG5qit7CMaMNVGYM5YcCtWbNySJuCE=;
        b=BRtwYmB4sjwx0g+2o44unXdKxGi2HjAJ/Sga+eVw43Qw3c5syMgYNUyiD8nTqu3WTT
         U9lv2JPCNjHEWbxI0DNdCI2vj1Di+tGf7sXR7HZkt63Mu6lbqoDSWY9aaQADmj0KOvSx
         wbwKemyDU91ty4FaKJsubh1ZapIsuIvIgNnLwuqzOYyk52iOY0EAwXH3ebDuL+M+k6gM
         BPPaKC4RF8IOFvgK/O2ECmylk66CJzAYQkmns0HS1IiWquS51WvkH+hUxGUXZCMkVfcQ
         SqzumT5G81awx7hmI/0IS4r91184REuYmRHgAwhYhjbC50YTxtF39qqUpppahCIGchlW
         XxwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ngR5nL5waEwswUG5qit7CMaMNVGYM5YcCtWbNySJuCE=;
        b=MGTLJbMkPv/KD96aWsOJHiOuymXzpLMl8BKpntT8JNx09Z5cGEjysm30wKwJr5zhnd
         ddDl4SSVObf3ouuHpRffsNnR42xQ5zI+FSGopzk9k14wsD0EX7fY/dR5sIZ7ER6kIe+6
         ZNXg8SsOi54Keni++KymHMV0IQZF4Y6y2Z4ktrYnwLbG1Py1TviGwL0Q/OlpHaRGz4L+
         az69TOCJKj3Kkfc9/Rd1rupa8+LHD3w4YAfwkUrqtlGqwiXCutbFx7GrKio7H8e82SHw
         SrmzS4sPwOhRSmE5b1IqoWNoR2lNGYS4/sjpKZSLnSvoTQDH8yyZun1K5KybaGLhAidY
         PTUA==
X-Gm-Message-State: ANhLgQ3KMv3/kD5MUHMe6y81gGKEswmfBsXbx6dnsEdUZSrUPwA17jsz
	VOSmjLBcUpVte4VyvVuoFHw=
X-Google-Smtp-Source: ADFU+vsCrX+RT4rD3Zg+MPWxifx5aa8ycJssr/lkcEzqwpMO6IBowo/zGRisg9vveVGHudfSo3eeOA==
X-Received: by 2002:aca:4142:: with SMTP id o63mr307754oia.118.1585336937679;
        Fri, 27 Mar 2020 12:22:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6082:: with SMTP id m2ls3726164otj.8.gmail; Fri, 27 Mar
 2020 12:22:17 -0700 (PDT)
X-Received: by 2002:a05:6830:1e10:: with SMTP id s16mr192012otr.222.1585336937240;
        Fri, 27 Mar 2020 12:22:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585336937; cv=none;
        d=google.com; s=arc-20160816;
        b=jzqdYoYeFNsUHO8eCBUQwhd0bvT1lW+59e/xpeHvQL11d8/Q3U8PqhQO44RxRvc/zc
         TjbGvG0qfMVZG1Li1Oa+EWi2H4NszJlyEOvAnF1iFZ425aqgDp6B8hO3/X6SzNoY45X4
         6L3Hmg0WjPKzyfpnmJ41AIy9EStm6bInkXpDIxxe+bCrIUaH2WHE7HtSwzaMXGW+ZcCX
         10ofvjOMW8O2Fui4VsF3Z3LOU9VgZvvFOmWJz8mtdOuvnw6PHB+dLHpcCudRQei05JeT
         YblNPo7vrpiRM1j1wk6MugRIKj+IygqYT0tLIRrZppu8b25/ac6vG6bUsP4MWTlJChIO
         SoKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7w4IaxdhbTLchgnoa5B79Bm88GY1rziDjKAOmvZ7/78=;
        b=ACa2Iz64RXH16j++vtWWQYL64OAlN6qgN2aJjew+jfnCFu9kW6hb4e2GzN/QYdRU6/
         JAey9DY3hT0L2wMBj94DpGA0gRJMbcA4xajMQ+0mHUaEYq7qByStKctWd3vzqb5ISqbi
         q7V9Vv3eSNOWSoY+WL0OU4b3kZkVkAbvpgkLzHfW8DlRJ20+4hhq2aGdGjyT0xgVlMif
         X5gE0Pl/1HAKAdK7vp1Z2IbAe8NDSME/Rm5kpUz92aqLSpv3CVpgbxezlwKdidHXqF+S
         N9L6TGlZfNkpbUy9GnMznbsm5/x7IGIkEQ6Lq5dVbaqQebNQQul2MR7MCx0giK5GNVQu
         RUZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pA7UfkPp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id t81si500189oie.5.2020.03.27.12.22.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 12:22:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id g18so3824188plq.0
        for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 12:22:17 -0700 (PDT)
X-Received: by 2002:a17:902:a5c3:: with SMTP id t3mr548203plq.223.1585336936057;
 Fri, 27 Mar 2020 12:22:16 -0700 (PDT)
MIME-Version: 1.0
References: <202003280210.EVgWpDIL%lkp@intel.com>
In-Reply-To: <202003280210.EVgWpDIL%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 27 Mar 2020 12:22:04 -0700
Message-ID: <CAKwvOdk=kejW1DC2677EHjrRg8CXiy8EEU317gUtvG4HzdnMhw@mail.gmail.com>
Subject: Re: [linux-next:master 11818/12026] drivers/phy/tegra/xusb.c:941:
 undefined reference to `usb_get_maximum_speed'
To: Thierry Reding <treding@nvidia.com>, Philip Li <philip.li@intel.com>
Cc: kbuild-all@lists.01.org, kbuild test robot <lkp@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pA7UfkPp;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

This is a known bug in bfd; it doesn't seem to emit "range extending
thunks" for 32b ARM; it's very easy to trigger this for large kernel
images.  When using LD=ld.lld, lld emits the range extending thunks,
so this issue doesn't occur.

Philip, I'm trying to simplify the llvm builds a bit, but if your
build with `make CC=clang LD=ld.lld` then we don't observe these.  We
should circle back on that once I've simplified the build.

On Fri, Mar 27, 2020 at 11:50 AM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Stephen,
>
> It's probably a bug fix that unveils the link errors.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   89295c59c1f063b533d071ca49d0fa0c0783ca6f
> commit: bf5dea0572a06529edc5429263b23d05d30c78a5 [11818/12026] Merge remote-tracking branch 'tegra/for-next'
> config: arm64-randconfig-a001-20200327 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2a43a1610db335afcccd1a179a33a0886a5a2c4d)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout bf5dea0572a06529edc5429263b23d05d30c78a5
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    aarch64-linux-gnu-ld: drivers/phy/tegra/xusb.o: in function `tegra_xusb_usb3_port_parse_dt':
> >> drivers/phy/tegra/xusb.c:941: undefined reference to `usb_get_maximum_speed'
>    drivers/phy/tegra/xusb.c:941:(.text+0x166c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `usb_get_maximum_speed'
>
> vim +941 drivers/phy/tegra/xusb.c
>
> e78fdbad1e902f Thierry Reding 2020-03-19  921
> 53d2a715c24034 Thierry Reding 2015-11-11  922  static int tegra_xusb_usb3_port_parse_dt(struct tegra_xusb_usb3_port *usb3)
> 53d2a715c24034 Thierry Reding 2015-11-11  923  {
> 53d2a715c24034 Thierry Reding 2015-11-11  924   struct tegra_xusb_port *port = &usb3->base;
> 53d2a715c24034 Thierry Reding 2015-11-11  925   struct device_node *np = port->dev.of_node;
> 1ef535c6ba8ebc JC Kuo         2020-02-12  926   enum usb_device_speed maximum_speed;
> 53d2a715c24034 Thierry Reding 2015-11-11  927   u32 value;
> 53d2a715c24034 Thierry Reding 2015-11-11  928   int err;
> 53d2a715c24034 Thierry Reding 2015-11-11  929
> 53d2a715c24034 Thierry Reding 2015-11-11  930   err = of_property_read_u32(np, "nvidia,usb2-companion", &value);
> 53d2a715c24034 Thierry Reding 2015-11-11  931   if (err < 0) {
> 53d2a715c24034 Thierry Reding 2015-11-11  932           dev_err(&port->dev, "failed to read port: %d\n", err);
> 53d2a715c24034 Thierry Reding 2015-11-11  933           return err;
> 53d2a715c24034 Thierry Reding 2015-11-11  934   }
> 53d2a715c24034 Thierry Reding 2015-11-11  935
> 53d2a715c24034 Thierry Reding 2015-11-11  936   usb3->port = value;
> 53d2a715c24034 Thierry Reding 2015-11-11  937
> 53d2a715c24034 Thierry Reding 2015-11-11  938   usb3->internal = of_property_read_bool(np, "nvidia,internal");
> 53d2a715c24034 Thierry Reding 2015-11-11  939
> 1ef535c6ba8ebc JC Kuo         2020-02-12  940   if (device_property_present(&port->dev, "maximum-speed")) {
> 1ef535c6ba8ebc JC Kuo         2020-02-12 @941           maximum_speed =  usb_get_maximum_speed(&port->dev);
> 1ef535c6ba8ebc JC Kuo         2020-02-12  942           if (maximum_speed == USB_SPEED_SUPER)
> 1ef535c6ba8ebc JC Kuo         2020-02-12  943                   usb3->disable_gen2 = true;
> 1ef535c6ba8ebc JC Kuo         2020-02-12  944           else if (maximum_speed == USB_SPEED_SUPER_PLUS)
> 1ef535c6ba8ebc JC Kuo         2020-02-12  945                   usb3->disable_gen2 = false;
> 1ef535c6ba8ebc JC Kuo         2020-02-12  946           else
> 1ef535c6ba8ebc JC Kuo         2020-02-12  947                   return -EINVAL;
> 1ef535c6ba8ebc JC Kuo         2020-02-12  948   }
> 1ef535c6ba8ebc JC Kuo         2020-02-12  949
> 2f8da84def73e1 Thierry Reding 2020-03-18  950   usb3->supply = regulator_get(&port->dev, "vbus");
> 045ef3115382fa Vivek Gautam   2016-10-20  951   return PTR_ERR_OR_ZERO(usb3->supply);
> 53d2a715c24034 Thierry Reding 2015-11-11  952  }
> 53d2a715c24034 Thierry Reding 2015-11-11  953
>
> :::::: The code at line 941 was first introduced by commit
> :::::: 1ef535c6ba8ebcad1ced47a9d382b162c34fba3a phy: tegra: xusb: Add Tegra194 support
>
> :::::: TO: JC Kuo <jckuo@nvidia.com>
> :::::: CC: Thierry Reding <treding@nvidia.com>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003280210.EVgWpDIL%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk%3DkejW1DC2677EHjrRg8CXiy8EEU317gUtvG4HzdnMhw%40mail.gmail.com.
