Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCXGT7XQKGQEKSXSWJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F1711312F
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Dec 2019 18:55:24 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id l13sf208255pgt.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Dec 2019 09:55:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575482122; cv=pass;
        d=google.com; s=arc-20160816;
        b=D04rtDC/hZXOXxSQHX8oyMAHvPeleTDhRBi8mioTXVcch1ry1APtmnuofaP4hLmHu3
         Stf5hdT+T3ZiJ5I9NwXdZ9PQDXQfR3gl25RUbCXw+k7CDJX6hO55e2WRPkVsKPIFPD/v
         t/BWpvadvF4DGtzuxYLjGr39YCShDOmrpvOCmszbEkSkAdcNK8OCCQ9VXapTqyyr64/V
         bFyH/2TlkoetIWP944D7nu6CLXxbhTx/WC8txQaIkJD4oUL4dB7gTLYLx9375Pqc7QpD
         PMIRFBOGDvrjDR1XvPLu1r0rfmqb2qiXGQcy5kKPK6dNhZCaLWO7bWRaeJKgHFu3mYtw
         9/wA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KQpnLfoFRC6dEnstj7Ss0rph7UN0P3s7+9nyWFoDJxY=;
        b=iBh8Bllci3A9G8nWJBfWHksHq1pYiSMZnQqGWo6BCSNKMAV5C69e1Nb3G2BPijnu97
         PTpYURh3A23RBKqT2tzrN2abFyq5omkr/YP62RscCtqn2XwNYnji8mcE+eOf6qpYuQ2L
         pPPrPSYqzlgf/KIVrsSI1tc9hEo0F9FLz7k13b1M2uOshTnYcb25sF0HwyZFFF/CM9Vl
         HOdzY2jjVbNTAC/V066IEh5WDdK1KE55KKDpfaLHxJ0bgmvAQJ+8uuvwwAEsTl3u4noQ
         FyRbCYpONa4B0e23144SJsm5aS9ztblLb44ayFKdWfkN8g272uImxbOM8dI7V48QsTkq
         Lh0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o+yYxpaH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KQpnLfoFRC6dEnstj7Ss0rph7UN0P3s7+9nyWFoDJxY=;
        b=pPdS/henFytl5OJRzYbwDaKwJMIldHtSrb0E4xDwhuZv1KsgM4UduE+wOyEtLAyvo1
         ahBOqYTbItjJeGLjx75AuBNrGDqOOcBG51i3jQ3f23I5JGl0Gog2jvmOVc47PR5yfEjo
         nn7oJQh9PKEXvlHz9dOwOwlhZTnIyQw1sDaP1pB/lgKIo2fBsK6zTtgejwC1mtrL6r/J
         wFEIw4Sefzn/Ql4eKBtee+MD8/ZINfZ0a6K/jFehD8V28G/TcEzDd6HFRhKwF1dz9Q6e
         5VatQWFEJpifzwB2ZeejcdgHsnZHZbH/kTdfd+x4x5xCT2xRexFomlcoK6jdg32au7n4
         ITxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KQpnLfoFRC6dEnstj7Ss0rph7UN0P3s7+9nyWFoDJxY=;
        b=cO932/HdNMm9rnkNFKzFRHCp9Th1P4To/8G40w0g9aUHs9g8ZyeKWDb+urZflaJ6KO
         vi9P2QUox8p73UCS3gfmcEzscsz9+Detz9kKObezQJ2Ql7WB4tVz93w7rcl0NXQi1fW0
         D8ws+6tTqa2dxJYCrTwpSc/ZtGpFPrGHJGwGvijVu1xmFsbBmlDmLylqrT3x+osmKu/b
         OB9IOlp8PUKHczIFtTnr4jWOeK2inWcQG8FLldRu6lQQX/464nJa4+hxPgnBIzVEygQ1
         fjciofXYelrJBJ6ljAsCjtXhWbqFW5HcrsxQCI29x1nhTA4n60qshAk+2hEQO4bkzawN
         G1bA==
X-Gm-Message-State: APjAAAVJcaWZ4deIbMLh/TUEQC3GCCphtf+CoilP3Rnk+5f8gbGcIWM5
	Tj+WLeOrcNkOU2y7rUT2dGs=
X-Google-Smtp-Source: APXvYqy5FzBp9uHYmJwiHTPsrgM2/QdHzX4hWyNZzmCM/6hwwEx7Ly4F2fZLDbr4XLEn2Vw+g/AILQ==
X-Received: by 2002:a17:90a:8c92:: with SMTP id b18mr4577238pjo.7.1575482122396;
        Wed, 04 Dec 2019 09:55:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ad06:: with SMTP id r6ls42973pjq.3.canary-gmail;
 Wed, 04 Dec 2019 09:55:21 -0800 (PST)
X-Received: by 2002:a17:90a:20aa:: with SMTP id f39mr4666633pjg.35.1575482121920;
        Wed, 04 Dec 2019 09:55:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575482121; cv=none;
        d=google.com; s=arc-20160816;
        b=ZJNpkoXihxvIUhOjUwQdg2f+Tf3dUWQQxMESR1IW1DEp9D2hc4KLl/QwUQz7RypadA
         jwF2+PYL8jD6G+OS6nyAVnP7O81/aOE+6j0/gQ0iYvm4rSYV94PeEDRyqPxeKkbXmC21
         bF0hhS10xryX/vhSI1zSeIZVGT4VYY6dyuO1VU8Ooe0CeTrdPQEBw1kDo/VJfJ/1BHcw
         AoBceMdq0V5q0x5TfDXdBrzkxja0a25HkXFZWKDNSwbO3VzMFB69ZFXnlZoDFLz+BQtf
         Uoy3jVwwPresn7sweX0qZlofWvpaTLCzUaXMCuB4Ig8r/5+WE+Yf9mzQl7a2n/lOt1Sn
         1Glw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ng1c+dnhzpjAqqX+39MX0P59sm8zeRjG3eE9584iPxg=;
        b=GJwetSlJwkBTctjvoyaexTRBfJjDzxZEx6vqi1k6XXX1ZgsVmqURMslGKn3UYqGl6b
         0wvjgidhIoM3AZy5J8trhTD9OAQN+iGF6Ie+fISqF4OEmgsO4/eHMLHm8c+LxRL2kOIU
         dW/YbFCerAcV38otJo26rgRmQTeMYMfR9rPUZ/R6WYcuK3e3y07esPY+AFW6LTRTctf2
         2QIcr4CCRSoMT8ecY32AR2yqfL8vAhYORdu1s3AOyMTPF0F0znYjNfWnO4Dc2HwCCSRx
         WSL/y4Zt9T/Q+ksqPdLNkE5+DA5BbsYkITKAjsl3GShEMFOdhvIq1u1c16pG1a1RbZkA
         /Wfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o+yYxpaH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id n2si524265pgq.0.2019.12.04.09.55.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Dec 2019 09:55:21 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id bd4so31889plb.8
        for <clang-built-linux@googlegroups.com>; Wed, 04 Dec 2019 09:55:21 -0800 (PST)
X-Received: by 2002:a17:90b:8cf:: with SMTP id ds15mr4662212pjb.134.1575482121186;
 Wed, 04 Dec 2019 09:55:21 -0800 (PST)
MIME-Version: 1.0
References: <201912040802.yFfnIpm8%lkp@intel.com>
In-Reply-To: <201912040802.yFfnIpm8%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Dec 2019 09:55:09 -0800
Message-ID: <CAKwvOdnAO=9Nv9zphE8fWTzSmt+_oJdFtBYSRCqc4PP4i-As7g@mail.gmail.com>
Subject: Re: [tobetter-linux:odroidxu4-5.4.y 11/74] drivers/gpu/drm/exynos/exynos_hdmi.c:725:22:
 warning: implicit conversion from 'int' to 'u8' (aka 'unsigned char') changes
 value from 5656 to 24
To: mauro.ribeiro@hardkernel.com
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, mihailescu2m@gmail.com, 
	kbuild-all@lists.01.org, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o+yYxpaH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

Mauro,
Below is a bugreport from 0day bot from a build with Clang, can you
please take a look.  It looks legit.  Byte literals in hex should not
have more than 2 digits, ie. 0xXX.  Consider using the values you
added modulo 16, in hex.

On Tue, Dec 3, 2019 at 4:29 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> TO: "Mauro (mdrjr) Ribeiro" <mauro.ribeiro@hardkernel.com>
> CC: Marian Mihailescu <mihailescu2m@gmail.com>
>
> tree:   https://github.com/tobetter/linux odroidxu4-5.4.y
> head:   3f6a9e533ea5b61bc00304f73365796aeba1756b
> commit: 87001ca11bea3006a3a3e18b43210d5851509806 [11/74] drm/exynos: add new HDMI PHY pll and resolutions + pre-build EDIDs
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 7999cd41d16d841d66c9c91b56bddaf209c54955)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 87001ca11bea3006a3a3e18b43210d5851509806
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/gpu/drm/exynos/exynos_hdmi.c:725:22: warning: implicit conversion from 'int' to 'u8' (aka 'unsigned char') changes value from 5656 to 24 [-Wconstant-conversion]
>                            0x01, 0xD1, 0x29, 0x1618, 0x418, 0x190, 0xF5, 0xCF,
>                                              ^~~~~~
>    drivers/gpu/drm/exynos/exynos_hdmi.c:725:30: warning: implicit conversion from 'int' to 'u8' (aka 'unsigned char') changes value from 1048 to 24 [-Wconstant-conversion]
>                            0x01, 0xD1, 0x29, 0x1618, 0x418, 0x190, 0xF5, 0xCF,
>                                                      ^~~~~
>    drivers/gpu/drm/exynos/exynos_hdmi.c:725:37: warning: implicit conversion from 'int' to 'u8' (aka 'unsigned char') changes value from 400 to 144 [-Wconstant-conversion]
>                            0x01, 0xD1, 0x29, 0x1618, 0x418, 0x190, 0xF5, 0xCF,
>                                                             ^~~~~
>    drivers/gpu/drm/exynos/exynos_hdmi.c:726:10: warning: implicit conversion from 'int' to 'u8' (aka 'unsigned char') changes value from 360 to 104 [-Wconstant-conversion]
>                            0x8D, 0x168, 0xF5, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>                                  ^~~~~
>    drivers/gpu/drm/exynos/exynos_hdmi.c:149:19: warning: unused function 'dvi_force_enable' [-Wunused-function]
>    static int __init dvi_force_enable(char *str)
>                      ^
>    drivers/gpu/drm/exynos/exynos_hdmi.c:163:19: warning: unused function 'hdmi_hpd_enable' [-Wunused-function]
>    static int __init hdmi_hpd_enable(char *str)
>                      ^
>    6 warnings generated.
>
> vim +725 drivers/gpu/drm/exynos/exynos_hdmi.c
>
>    395
>    396  static const struct hdmiphy_config hdmiphy_5420_configs[] = {
>    397          {
>    398                  .pixel_clock = 25200000,
>    399                  .conf = {
>    400                          0x01, 0x52, 0x3F, 0x55, 0x40, 0x01, 0x00, 0xC8,
>    401                          0x82, 0xC8, 0xBD, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    402                          0x06, 0x80, 0x01, 0x84, 0x05, 0x02, 0x24, 0x66,
>    403                          0x54, 0xF4, 0x24, 0x00, 0x00, 0x00, 0x01, 0x80,
>    404                  },
>    405          },
>    406          {
>    407                  .pixel_clock = 27000000,
>    408                  .conf = {
>    409                          0x01, 0xD1, 0x22, 0x51, 0x40, 0x08, 0xFC, 0xE0,
>    410                          0x98, 0xE8, 0xCB, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    411                          0x06, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x66,
>    412                          0x54, 0xE4, 0x24, 0x00, 0x00, 0x00, 0x01, 0x80,
>    413                  },
>    414          },
>    415          {
>    416                  .pixel_clock = 27027000,
>    417                  .conf = {
>    418                          0x01, 0xD1, 0x2D, 0x72, 0x40, 0x64, 0x12, 0xC8,
>    419                          0x43, 0xE8, 0x0E, 0xD9, 0x45, 0xA0, 0xAC, 0x80,
>    420                          0x26, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x66,
>    421                          0x54, 0xE3, 0x24, 0x00, 0x00, 0x00, 0x01, 0x80,
>    422                  },
>    423          },
>    424          {
>    425                  .pixel_clock = 31490000,
>    426                  .conf = {
>    427                          0x01, 0xD1, 0x34, 0x74, 0x44, 0x3C, 0x3A, 0xC2,
>    428                          0x81, 0xE8, 0x3B, 0xD9, 0x45, 0xA0, 0xAC, 0x80,
>    429                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x86,
>    430                          0x54, 0xC3, 0x24, 0x00, 0x00, 0x00, 0x01, 0x80,
>    431                  },
>    432          },
>    433          {
>    434                  .pixel_clock = 32000000,
>    435                  .conf = {
>    436                          0x01, 0x51, 0x28, 0x55, 0x44, 0x40, 0x00, 0xC8,
>    437                          0x02, 0xC8, 0xF0, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    438                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x86,
>    439                          0x54, 0x80, 0x25, 0x01, 0x00, 0x00, 0x01, 0x80,
>    440                  },
>    441          },
>    442          /*
>    443           * To support Vu5A, pixel clock 33.9MHz is needed
>    444           * but we don't have the exact HDMI PHY table
>    445           * so as a workaround, the closest table will be used.
>    446           */
>    447          {
>    448                  .pixel_clock = 33900000,
>    449                  .conf = {
>    450                          0x01, 0x51, 0x28, 0x55, 0x44, 0x40, 0x00, 0xC8,
>    451                          0x02, 0xC8, 0xF0, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    452                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x86,
>    453                          0x54, 0x80, 0x25, 0x01, 0x00, 0x00, 0x01, 0x80,
>    454                  },
>    455          },
>    456          {
>    457                  .pixel_clock = 36000000,
>    458                  .conf = {
>    459                          0x01, 0x51, 0x2D, 0x55, 0x40, 0x40, 0x00, 0xC8,
>    460                          0x02, 0xC8, 0x0E, 0xD9, 0x45, 0xA0, 0xAC, 0x80,
>    461                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x66,
>    462                          0x54, 0xAB, 0x24, 0x00, 0x00, 0x00, 0x01, 0x80,
>    463                  },
>    464          },
>    465          {
>    466                  .pixel_clock = 40000000,
>    467                  .conf = {
>    468                          0x01, 0xD1, 0x21, 0x31, 0x40, 0x3C, 0x28, 0xC8,
>    469                          0x87, 0xE8, 0xC8, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    470                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x66,
>    471                          0x54, 0x9A, 0x24, 0x00, 0x00, 0x00, 0x01, 0x80,
>    472                  },
>    473          },
>    474          /*
>    475           * To support Vu7A+, pixel clock 49MHz is needed
>    476           * but we don't have the exact HDMI PHY table
>    477           * so as a workaround, the closest table will be used.
>    478           */
>    479          {
>    480                  .pixel_clock = 49000000,
>    481                  .conf = {
>    482                          0x01, 0x51, 0x2A, 0x32, 0x42, 0x30, 0x00, 0xC4,
>    483                          0x83, 0xE8, 0xFC, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    484                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x86,
>    485                          0x54, 0x7A, 0x24, 0x00, 0x00, 0x00, 0x01, 0x80,
>    486                  },
>    487          },
>    488          {
>    489                  .pixel_clock = 50400000,
>    490                  .conf = {
>    491                          0x01, 0x51, 0x2A, 0x32, 0x42, 0x30, 0x00, 0xC4,
>    492                          0x83, 0xE8, 0xFC, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    493                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x86,
>    494                          0x54, 0x7A, 0x24, 0x00, 0x00, 0x00, 0x01, 0x80,
>    495                  },
>    496          },
>    497          {
>    498                  .pixel_clock = 65000000,
>    499                  .conf = {
>    500                          0x01, 0xD1, 0x36, 0x34, 0x40, 0x0C, 0x04, 0xC8,
>    501                          0x82, 0xE8, 0x45, 0xD9, 0x45, 0xA0, 0xAC, 0x80,
>    502                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x66,
>    503                          0x54, 0xBD, 0x24, 0x01, 0x00, 0x00, 0x01, 0x80,
>    504                  },
>    505          },
>    506          {
>    507                  .pixel_clock = 71000000,
>    508                  .conf = {
>    509                          0x01, 0xD1, 0x3B, 0x35, 0x40, 0x0C, 0x04, 0xC8,
>    510                          0x85, 0xE8, 0x63, 0xD9, 0x45, 0xA0, 0xAC, 0x80,
>    511                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x66,
>    512                          0x54, 0x57, 0x24, 0x00, 0x00, 0x00, 0x01, 0x80,
>    513                  },
>    514          },
>    515          {
>    516                  .pixel_clock = 73250000,
>    517                  .conf = {
>    518                          0x01, 0xD1, 0x1F, 0x10, 0x40, 0x78, 0x8D, 0xC8,
>    519                          0x81, 0xE8, 0xB7, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    520                          0x56, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x66,
>    521                          0x54, 0xA8, 0x24, 0x01, 0x00, 0x00, 0x01, 0x80,
>    522                  },
>    523          },
>    524          {
>    525                  .pixel_clock = 74170000,
>    526                  .conf = {
>    527                          0x01, 0xD1, 0x1F, 0x10, 0x40, 0x5B, 0xEF, 0xC8,
>    528                          0x81, 0xE8, 0xB9, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    529                          0x56, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x66,
>    530                          0x54, 0xA6, 0x24, 0x01, 0x00, 0x00, 0x01, 0x80,
>    531                  },
>    532          },
>    533          {
>    534                  .pixel_clock = 74250000,
>    535                  .conf = {
>    536                          0x01, 0xD1, 0x1F, 0x10, 0x40, 0x40, 0xF8, 0x08,
>    537                          0x81, 0xE8, 0xBA, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    538                          0x26, 0x80, 0x09, 0x84, 0x05, 0x22, 0x24, 0x66,
>    539                          0x54, 0xA5, 0x24, 0x01, 0x00, 0x00, 0x01, 0x80,
>    540                  },
>    541          },
>    542          {
>    543                  .pixel_clock = 80140000,
>    544                  .conf = {
>    545                          0x01, 0xD1, 0x21, 0x11, 0x40, 0x3C, 0x2F, 0xC8,
>    546                          0x87, 0xE8, 0xC8, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    547                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x86,
>    548                          0x54, 0x99, 0x24, 0x01, 0x00, 0x00, 0x01, 0x80,
>    549                  },
>    550          },
>    551          {
>    552                  .pixel_clock = 83500000,
>    553                  .conf = {
>    554                          0x01, 0xD1, 0x23, 0x11, 0x40, 0x0C, 0xFB, 0xC8,
>    555                          0x85, 0xE8, 0xD1, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    556                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x66,
>    557                          0x54, 0x4A, 0x24, 0x00, 0x00, 0x00, 0x01, 0x80,
>    558                  },
>    559          },
>    560          {
>    561                  .pixel_clock = 84750000,
>    562                  .conf = {
>    563                          0x01, 0xD1, 0x23, 0x11, 0x40, 0x30, 0x1E, 0xC7,
>    564                          0x84, 0xE8, 0xD4, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    565                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x86,
>    566                          0x54, 0x48, 0x24, 0x00, 0x00, 0x00, 0x01, 0x80,
>    567                  },
>    568          },
>    569          {
>    570                  .pixel_clock = 85860000,
>    571                  .conf = {
>    572                          0x01, 0xD1, 0x24, 0x11, 0x40, 0x30, 0xD2, 0xC8,
>    573                          0x84, 0xE8, 0xD5, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    574                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x86,
>    575                          0x54, 0x48, 0x24, 0x00, 0x00, 0x00, 0x01, 0x80,
>    576                  },
>    577          },
>    578          {
>    579                  .pixel_clock = 88750000,
>    580                  .conf = {
>    581                          0x01, 0xD1, 0x25, 0x11, 0x40, 0x18, 0xFF, 0xC8,
>    582                          0x83, 0xE8, 0xDE, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    583                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x66,
>    584                          0x54, 0x45, 0x24, 0x00, 0x00, 0x00, 0x01, 0x80,
>    585                  },
>    586          },
>    587          {
>    588                  .pixel_clock = 89750000,
>    589                  .conf = {
>    590                          0x01, 0xD1, 0x25, 0x11, 0x40, 0x30, 0x26, 0xC9,
>    591                          0x83, 0xE8, 0xE0, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    592                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x86,
>    593                          0x54, 0x89, 0x24, 0x01, 0x00, 0x00, 0x01, 0x80,
>    594                  },
>    595          },
>    596          {
>    597                  .pixel_clock = 104990000,
>    598                  .conf = {
>    599                          0x01, 0xD1, 0x2C, 0x12, 0x40, 0x78, 0xC3, 0xC2,
>    600                          0x81, 0xE8, 0x06, 0xD9, 0x45, 0xA0, 0xAC, 0x80,
>    601                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x86,
>    602                          0x54, 0x3B, 0x24, 0x00, 0x00, 0x00, 0x01, 0x80,
>    603                  },
>    604          },
>    605          {
>    606                  .pixel_clock = 106500000,
>    607                  .conf = {
>    608                          0x01, 0xD1, 0x2C, 0x12, 0x40, 0x0C, 0x09, 0xC8,
>    609                          0x84, 0xE8, 0x0A, 0xD9, 0x45, 0xA0, 0xAC, 0x80,
>    610                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x66,
>    611                          0x54, 0x73, 0x24, 0x01, 0x00, 0x00, 0x01, 0x80,
>    612                  },
>    613          },
>    614          {
>    615                  .pixel_clock = 106560000,
>    616                  .conf = {
>    617                          0x01, 0xD1, 0x2C, 0x12, 0x40, 0x78, 0x73, 0xCA,
>    618                          0x85, 0xE8, 0x0B, 0xD9, 0x45, 0xA0, 0xAC, 0x80,
>    619                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x86,
>    620                          0x54, 0x73, 0x24, 0x01, 0x00, 0x00, 0x01, 0x80,
>    621                  },
>    622          },
>    623          {
>    624                  .pixel_clock = 107800000,
>    625                  .conf = {
>    626                          0x01, 0x51, 0x2D, 0x15, 0x40, 0x01, 0x00, 0xC8,
>    627                          0x82, 0xC8, 0x0E, 0xD9, 0x45, 0xA0, 0xAC, 0x80,
>    628                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x66,
>    629                          0x54, 0xC7, 0x25, 0x03, 0x00, 0x00, 0x01, 0x80,
>    630                  },
>    631          },
>    632          {
>    633                  .pixel_clock = 108000000,
>    634                  .conf = {
>    635                          0x01, 0x51, 0x2D, 0x15, 0x40, 0x01, 0x00, 0xC8,
>    636                          0x82, 0xC8, 0x0E, 0xD9, 0x45, 0xA0, 0xAC, 0x80,
>    637                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x66,
>    638                          0x54, 0xC7, 0x25, 0x03, 0x00, 0x00, 0x01, 0x80,
>    639                  },
>    640          },
>    641          {
>    642                  .pixel_clock = 115500000,
>    643                  .conf = {
>    644                          0x01, 0xD1, 0x30, 0x14, 0x40, 0x0C, 0x03, 0xC8,
>    645                          0x88, 0xE8, 0x21, 0xD9, 0x45, 0xA0, 0xAC, 0x80,
>    646                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x66,
>    647                          0x54, 0x6A, 0x24, 0x01, 0x00, 0x00, 0x01, 0x80,
>    648                  },
>    649          },
>    650          {
>    651                  .pixel_clock = 119000000,
>    652                  .conf = {
>    653                          0x01, 0xD1, 0x31, 0x14, 0x40, 0x78, 0x41, 0xCB,
>    654                          0x89, 0xE8, 0x28, 0xD9, 0x45, 0xA0, 0xAC, 0x80,
>    655                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x86,
>    656                          0x54, 0x68, 0x24, 0x01, 0x00, 0x00, 0x01, 0x80,
>    657                  },
>    658          },
>    659          {
>    660                  .pixel_clock = 122000000,
>    661                  .conf = {
>    662                          0x01, 0xD1, 0x33, 0x14, 0x40, 0x30, 0xF0, 0xC8,
>    663                          0x85, 0xE8, 0x31, 0xD9, 0x45, 0xA0, 0xAC, 0x80,
>    664                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x86,
>    665                          0x54, 0x65, 0x24, 0x01, 0x00, 0x00, 0x01, 0x80,
>    666                  },
>    667          },
>    668          {
>    669                  .pixel_clock = 125590000,
>    670                  .conf = {
>    671                          0x01, 0xD1, 0x34, 0x14, 0x40, 0x78, 0x4F, 0xC2,
>    672                          0x81, 0xE8, 0x3A, 0xD9, 0x45, 0xA0, 0xAC, 0x80,
>    673                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x86,
>    674                          0x54, 0x87, 0x25, 0x03, 0x00, 0x00, 0x01, 0x80,
>    675                  },
>    676          },
>    677          {
>    678                  .pixel_clock = 146250000,
>    679                  .conf = {
>    680                          0x01, 0xD1, 0x3D, 0x15, 0x40, 0x18, 0xFD, 0xC8,
>    681                          0x83, 0xE8, 0x6E, 0xD9, 0x45, 0xA0, 0xAC, 0x80,
>    682                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x66,
>    683                          0x54, 0x54, 0x24, 0x01, 0x00, 0x00, 0x01, 0x80,
>    684                  },
>    685          },
>    686          {
>    687                  .pixel_clock = 148500000,
>    688                  .conf = {
>    689                          0x01, 0xD1, 0x1F, 0x00, 0x40, 0x40, 0xF8, 0x08,
>    690                          0x81, 0xE8, 0xBA, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    691                          0x26, 0x80, 0x09, 0x84, 0x05, 0x22, 0x24, 0x66,
>    692                          0x54, 0x4B, 0x25, 0x03, 0x00, 0x80, 0x01, 0x80,
>    693                  },
>    694          },
>    695          {
>    696                  .pixel_clock = 154000000,
>    697                  .conf = {
>    698                          0x01, 0xD1, 0x20, 0x01, 0x40, 0x30, 0x08, 0xCC,
>    699                          0x8C, 0xE8, 0xC1, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    700                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x86,
>    701                          0x54, 0x3F, 0x25, 0x03, 0x00, 0x00, 0x01, 0x80,
>    702                  },
>    703          },
>    704          {
>    705                  .pixel_clock = 162000000,
>    706                  .conf = {
>    707                          0x01, 0xD1, 0x22, 0x01, 0x40, 0x30, 0xD4, 0xCD,
>    708                          0x89, 0xE8, 0xC9, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    709                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x86,
>    710                          0x54, 0x31, 0x25, 0x03, 0x00, 0x00, 0x01, 0x80,
>    711                  },
>    712          },
>    713          {
>    714                  .pixel_clock = 164100000,
>    715                  .conf = {
>    716                          0x01, 0xD1, 0x22, 0x89, 0x49, 0xB0, 0x15, 0xCE,
>    717                          0x8A, 0xF8, 0xCD, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    718                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x86,
>    719                          0x54, 0x2B, 0x25, 0x03, 0x00, 0x00, 0x01, 0x80,
>    720                  },
>    721          },
>    722          {
>    723                  .pixel_clock = 196900000,
>    724                  .conf = {
>  > 725                          0x01, 0xD1, 0x29, 0x1618, 0x418, 0x190, 0xF5, 0xCF,
>    726                          0x8D, 0x168, 0xF5, 0xD8, 0x45, 0xA0, 0xAC, 0x80,
>    727                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x86,
>    728                          0x54, 0xFA, 0x24, 0x03, 0x00, 0x00, 0x01, 0x80,
>    729                  },
>    730          },
>    731          {
>    732                  .pixel_clock = 204800000,
>    733                  .conf = {
>    734                          0x01, 0xD1, 0x2B, 0x02, 0x40, 0x30, 0xE0, 0xC8,
>    735                          0x85, 0xE8, 0x00, 0xD9, 0x45, 0xA0, 0xAC, 0x80,
>    736                          0x08, 0x80, 0x09, 0x84, 0x05, 0x02, 0x24, 0x86,
>    737                          0x54, 0x3C, 0x24, 0x01, 0x00, 0x00, 0x01, 0x80,
>    738                  },
>    739          },
>    740  };
>    741
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnAO%3D9Nv9zphE8fWTzSmt%2B_oJdFtBYSRCqc4PP4i-As7g%40mail.gmail.com.
