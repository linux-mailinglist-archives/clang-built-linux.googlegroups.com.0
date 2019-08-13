Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2VZZTVAKGQEZPEEC3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDFD8C212
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 22:26:19 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id l7sf26521115vkm.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 13:26:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565727979; cv=pass;
        d=google.com; s=arc-20160816;
        b=pWLMffT+bbL1oD33lUNBDRJEYVXdOYJQ6XcbSZ3rDdL/l96bYDto0GVUkwXOEnb4Oa
         VZDHCIEJGcJiFvxDS+DOtFQjpZf60fjl4ngr+9IlCSN6ryViz2nPKdC3BiVfraaygWke
         lFTI0WZgODHcaGZ1aO5cMgnhImCjHBHrsHzLy184lm0UotoCsMfekYBQI5warc0ikMUR
         mW0xM2PTA6+HifkqucIZRqXGyziB1bPC5rnbpGV7NLclWFhb1cUO5S7qcwDvOM/14ccT
         Oh/QHgTW+jMGyRygAXcp8EBovzMje6uqfjQMuqEvdon722y94wSIXfeK0d8N917g1cxL
         aIig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZCgE96xm8fEci0vs7BIfPFR9B3yM18L1oTuj88bwoog=;
        b=DegPNe7uhOSOWCVZ512+wLEj8oY3cawi/R23j9cI9v71OgUDHHILh5Ug6iOFRvwn36
         6TWAHlCwqa/cCwbLmUX83VWPgV2+xYgcciFMpQ092CA6oBtNBjyZRvG57ark3qZwobKE
         jl94J4lY1ktwFXHHSafSJRZhQxvFqwLs6owN+o9YW47PL533TXZeEaYygixg2ieZCHqI
         JGkyTCJ952oqhwW55t6VZkGzsOwdRGvelW2XBiOUP1ojYRbjr84OyHFNFs/iapBlaO2b
         7jls/JqqHhdNw5xl369cUZKIm0x1Vlb3PnRjengwxvsn8j65DtRt+xnxs4zQKABk/ymm
         S4Ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uuocOXbZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZCgE96xm8fEci0vs7BIfPFR9B3yM18L1oTuj88bwoog=;
        b=IF386FnLLQWSp2ZkN0qLbwvtSSal7WR1B2Zy51/LYKRH5QqvubZbbTqJVyFCXLW3/A
         En4k92h5xsUF9xTpAA8a+9XtcgucptxUdgf/N4VEz30AfU5Br+kadt5/LUvSyKxhsl1N
         coX0jmKj8r13SJgwluEORpQOk4sEzrXRLQqluRBPwg7yhYK2gNLCI9C0A+1FmFSc4fZg
         ZHUjAb195EASrLSZuB0JuyxE96HkSqTp1evlaglXjzlO0a0I/X2oqobWcvH4EqQ6m5OT
         FAzY4YSVlQ6YhQJ2VuqvSct/erSkf1NJIfaASJKi7Zy8gHnCapH6FppXNFZfX5332ACI
         tC+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZCgE96xm8fEci0vs7BIfPFR9B3yM18L1oTuj88bwoog=;
        b=L74GiZZm4/cprX0j66EwzE/HCT8n7rdP6J2hvVSL9oF27TGPG9eGN6E91wYk3TzcEH
         NwEytE/dfvnx2opLUzExBaNaFGZYDx5HiGbIAscT8XewyJubII+hw/M5pTCknAzviChL
         ZsYuZyi8EBzmWcJ6ULG8p+v6HarcgBqNxHOECd0Xj1rZMCdp5HVWb2B6AVYLPQimZlO0
         FfquznnNgZUNEWBbfZQHZ3UMl3s/UsutmgCefr9d8CeUsTD0UUIKpb0cSe7bOtgCxHpX
         ZviYoKgFA8wTsPlpq++PQBp7iMStJINJyccZO35kEYW7gTRXVXbHQUPtD+rWB5Op70LF
         CcVg==
X-Gm-Message-State: APjAAAWgdUJTDcgUVcT0arum7mx8ObfNxHd7eNRyl2W/ZC6t2JZQoDJJ
	GCXr/ONnnY006qpwiilyVxI=
X-Google-Smtp-Source: APXvYqwujaIaydUpGcjgvQ21mj4QEMfXyV/lNB60SmHmsUsW+2bWRRLFFshqLMViDaqOg0vehSmR0w==
X-Received: by 2002:a1f:8914:: with SMTP id l20mr17716022vkd.78.1565727978836;
        Tue, 13 Aug 2019 13:26:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e309:: with SMTP id j9ls11603vsf.14.gmail; Tue, 13 Aug
 2019 13:26:18 -0700 (PDT)
X-Received: by 2002:a67:bc7:: with SMTP id 190mr28346979vsl.6.1565727978543;
        Tue, 13 Aug 2019 13:26:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565727978; cv=none;
        d=google.com; s=arc-20160816;
        b=v+aTiDpwdRZ+cqKx0PFsTZPU2TNAQh1OBlDECa334n2jDxBU+v+M6xzRdE02qfXJGV
         b1UaxkYUFCIH4umEmSYJ1Z8wwVhy4LF8s3a3VAU1YtHUz3qeRfkg/ltA8jsDuo2P3k1e
         MGYsgkwYh5QxtF6VWBbeIJyTV+0CnMD9pAwIqGoYdc6/nQbjGMH9YOMiD8BqlKgmc9zC
         /VkxnUt43C7qC4ncSdTDQudjDRgRudL+ZAs+M6TnKu1o3GrYDyKq5V1PX7ngq06KK7dY
         OCnIOfUNqtoCuTY+jHGOdNUSLz1JYOEbR0bDevE06nH3Oqa48GMguPtR2woOYaRw0SPH
         jbig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Vsrq97lKNR7YkO/N2gUBdzvKJX6OzqO03Z7YNbaEDy8=;
        b=EMQYASSlQlwxE5uKtc0zlzUKHYdFK9Jd6Gi+joazV4DVlO5ytGCiWvhPn+LZ8febRX
         b5tFEPPzYNVxf3FDBXovUCr7DVKirx+hSjOr2WFtqHNjsnAfKnY7tQNQU3rDWAeh0Pbs
         D6z7c+4bLbuRAPbjm64bKoRYHayC/DxDhPysKK8ZYRO2jhI372kp4gSFnSqrG+X6RxGC
         u1+nKeyWtp19F2oltKeVNQ87w3msYMRLsIlNYw1+2PhGpKfXlTMK11y9lIP/YKq6Umsl
         OjO9wgzPzoy+//gB3jTfjWQkLF7y93yzD3ESTeyyOC0dagGKPDVLE92ls/k3p2ej5TdR
         4Rfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uuocOXbZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id d85si203774vke.3.2019.08.13.13.26.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 13:26:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id c81so3233368pfc.11
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 13:26:18 -0700 (PDT)
X-Received: by 2002:aa7:8085:: with SMTP id v5mr25662126pff.165.1565727977230;
 Tue, 13 Aug 2019 13:26:17 -0700 (PDT)
MIME-Version: 1.0
References: <201908140439.g8qTXp2h%lkp@intel.com>
In-Reply-To: <201908140439.g8qTXp2h%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 13 Aug 2019 13:26:06 -0700
Message-ID: <CAKwvOd=k-M=dMyGyD8=d3u5wLjMgK8acjY-AMpQw=EaYB0d=WQ@mail.gmail.com>
Subject: Re: [khilman-linux-amlogic:v5.4/testing 22/29] drivers/usb/dwc3/dwc3-meson-g12a.c:606:16:
 warning: ignoring return value of function declared with 'warn_unused_result' attribute
To: Kevin Hilman <khilman@baylibre.com>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uuocOXbZ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

+ Kevin,
oh yeah surprise 0day bot team is testing w/ Clang, too. :D

On Tue, Aug 13, 2019 at 1:19 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> TO: Kevin Hilman <khilman@baylibre.com>
>
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/khilman/linux-amlogic.git v5.4/testing
> head:   5061d1a19b1da675bb126fd5a384cd9d2190be33
> commit: c466a93832580f373048b06d6999522bc9b1bdb9 [22/29] WIP: USB suspend/resume fix
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout c466a93832580f373048b06d6999522bc9b1bdb9
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/usb/dwc3/dwc3-meson-g12a.c:606:16: warning: ignoring return value of function declared with 'warn_unused_result' attribute [-Wunused-result]
>                   regulator_enable(priv->vbus);
>                   ^~~~~~~~~~~~~~~~ ~~~~~~~~~~
>    1 warning generated.
>
> vim +/warn_unused_result +606 drivers/usb/dwc3/dwc3-meson-g12a.c
>
>    581
>    582  static int __maybe_unused dwc3_meson_g12a_resume(struct device *dev)
>    583  {
>    584          struct dwc3_meson_g12a *priv = dev_get_drvdata(dev);
>    585          int i, ret;
>    586
>    587          reset_control_deassert(priv->reset);
>    588
>    589          dwc3_meson_g12a_usb_init(priv);
>    590
>    591          /* Init PHYs */
>    592          for (i = 0 ; i < PHY_COUNT ; ++i) {
>    593                  ret = phy_init(priv->phys[i]);
>    594                  if (ret)
>    595                          return ret;
>    596          }
>    597
>    598          /* Set PHY Power */
>    599          for (i = 0 ; i < PHY_COUNT ; ++i) {
>    600                  ret = phy_power_on(priv->phys[i]);
>    601                  if (ret)
>    602                          return ret;
>    603          }
>    604
>    605         if (priv->vbus && priv->otg_phy_mode == PHY_MODE_USB_HOST)
>  > 606                 regulator_enable(priv->vbus);
>    607
>    608          return 0;
>    609  }
>    610
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dk-M%3DdMyGyD8%3Dd3u5wLjMgK8acjY-AMpQw%3DEaYB0d%3DWQ%40mail.gmail.com.
