Return-Path: <clang-built-linux+bncBC4Z7UNE2EIBBO7ZQP3QKGQE7RIBINQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E491F57DA
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 17:31:07 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id b63sf2026875wme.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 08:31:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591803067; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZPmenbQRoi+d2d/m2botMPZqe/Mhb9x7OFSNh4bQr96G4dgAqex8PG8BaT+zXx63g8
         dQBnBIs2nSJVjCncKJwDSBNuEBm79/77Zw8O3cSnbINfgN9EssXdG5Ekd9dffny1hIB3
         CVHEMur34tGmLgtwfu6ohJ+pmiB0WSWWcLXuWCal6Apy5wEC84m+EbmKQ7MPre9JPa4s
         p4067DlX7n9qCwG0UIoND9gw7mfBREbb3M3MSjGHuk3s0/E6PWVC36nyMbFLIPPTFqf8
         deULMhT4cpqYODU4b4J2Y0gp2yUqaYSw56wm8BWyG/1DjARfllWth2UZMNPw79yH8RHf
         6ccw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :in-reply-to:subject:cc:to:from:user-agent:references:sender
         :dkim-signature;
        bh=ys7OgCMt2/i2+kkkmUKDt1sVvnivCYFWjQoo1mbvLSg=;
        b=bid6IBvaE8RAxs+5mvdN13OZO64EWv4hAIwHEfU35AJ+x+32a1btdpNW/fKxefp1vM
         WmIRPLQaJg2s1ddByCy5ljYs+U6gLFBGE0qJx3uD+ftqbjAiDEsAtTV5i2gD+qxYwGMc
         CmneAlklcc5I1+cCyBo4iNEaAHYEPLenpFwckPKRxWJ2nWd7zlwJ4vWreGs+yKn41t/j
         V8lv0i1SHghBRAfZxcXsfoc5toXWLt4nDfTWrkbMx2Kl68+p2vCnpQ5aVkXRS3ljQBZJ
         bYCSELj5DftSKUvyOh0M7pr3wZIeGn09c+sUvL3TRNin1gcKMQI1j7Yj4bOACUmfKjHP
         wq1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=JT7uXRe2;
       spf=pass (google.com: domain of jbrunet@baylibre.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=jbrunet@baylibre.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:references:user-agent:from:to:cc:subject:in-reply-to:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ys7OgCMt2/i2+kkkmUKDt1sVvnivCYFWjQoo1mbvLSg=;
        b=aIfhIZ5Kw012TZksw8wSbLOiSRahRrL6m3MqssHPRkKLcv1Qx92p5F/X+ex4Omv2XB
         a4I0ADnUwmS0IubmtlcySgNU6UsyDeiJhWXMliV+9+skAKFrIV3Yo7zfbEBjsJ2gBNW7
         nDbGxh2IHanpLORrkUGWQ2bv0Vw4O68hmMMj8ESonZROJeR/aUWXmpMStt1q36SgFxVq
         ucmXdderVvSbfSvnVyz9JLMbFXNtyvUH7IodTE3TS4CnvhspsrbSBaNvCCWmLxgjjYSV
         7fWbw/E1hRfposzzIrd9CsSBr/tY88rSwSFmk3FvM8n0Zm9IUbHSDrUkFt1UfC32VJmr
         secA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:references:user-agent:from:to:cc:subject
         :in-reply-to:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ys7OgCMt2/i2+kkkmUKDt1sVvnivCYFWjQoo1mbvLSg=;
        b=laEIkZs/Ooq6WtDeXmYblYHqo2V3v8wJGk67H9U+KhqVtcGbFc1XonNDqT+KukZaPq
         p+fcYd9sJEPDc5Wf4ymZFamAJWjOfk6mNGtzarpEyqTUL4Y5qXmadnozIvTRvpr34oP/
         dURt/3gDvmSqzUc5zKO9wcWrkpdw415HicnJBRgQHRvhAJmjasmfr0l/Fe6RUE8wiY9X
         TrxMOR7/Dy65RrBrKfA1cIX5J3pRbMvqAeb60yZmpTx0X1mUbh0uw4aetF6q5mgWVUnd
         BqQSL6+/uMMK6xcC/hiSNbm48ZR4Sv4zjaZeqDVCqcmtaeRZBxFMH6h6WnphjMiG2/+Y
         geGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LcMBrn5Hp4BUKQ2kWaf+caWFvL7junLGZMbWDipumSvy8p7xK
	M2x7Qoc95vRJ3zxURMAHxXM=
X-Google-Smtp-Source: ABdhPJya8NrhR8pNjNvcGdbgG6IfbwJIuHw0396m+R1lQT6O8Pya2lrZzJJkdFLaqa05xnXpjCOdRA==
X-Received: by 2002:a1c:b656:: with SMTP id g83mr3969495wmf.151.1591803067176;
        Wed, 10 Jun 2020 08:31:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:aace:: with SMTP id i14ls158636wrc.3.gmail; Wed, 10 Jun
 2020 08:31:06 -0700 (PDT)
X-Received: by 2002:a5d:500d:: with SMTP id e13mr4644545wrt.150.1591803066646;
        Wed, 10 Jun 2020 08:31:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591803066; cv=none;
        d=google.com; s=arc-20160816;
        b=EyW8SmjdnPPtCJhDupcer+Gc/HCdEQr86X3D+BTpEP9o7S6KF/39WRWHZSRQblMBKX
         BCR3qD0x8Q/apuNP53DeVHzwWeacqqMAorVVvGLrR6ry6Q4xyShcpK4ttLPIh9hDOHWc
         WlJrkB18lzs7sh7i2WhoTbzhV1Fx1qVTNdrBM/Uha9w1ERFwILd0hC7+wYlzDGiiaMzq
         OF0J5i/7vyw8doaZ3dnlXogw8YAQH38WPK12MqF7C1+NshHMusA0d6vk3OZP2CeKnDu/
         GxRxqgnjZ5/VDDSTJjXUhE49fn8B+pYM0ryntWhTzIs5oXwNpKwNQJOjBzTGYzY7ooMC
         I4Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:in-reply-to:subject:cc:to:from
         :user-agent:references:dkim-signature;
        bh=RPRWMDi9dHl0rDLgLXdVcFXijNB8/Wji5rynt4uz2HE=;
        b=OdZ1fG3Lb9h6j3R5bc9btkop2Fjj6pxq+bliAfzHD6FFkeeGUSpKBHEnEYTIDGnUCf
         9q+CkQGDEYNqKokcVNRfIohPMJjl5YJ9rewfpSnQ8TLEkE3Ago2IRFN+YKTFMOVhY8iL
         x5wCZuW/wRtHaaKSAI5ZcLKKtvAj/YckF8R0nXtf37AjbD8lnaBCH9LkwZYwEtwACE7n
         Hh942BelttBIz0zmkGCV2gQsHz/V+deW5+WVGoT/28CAPlHeMpenXY4RYJqNLx1TOGIL
         TLR5vPJpx2RvCmuYV+OvGHbGokO44KSQpxQ+srligN8oQKbKrqf+ZzeyIGT4A/5Ulucv
         ZNxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=JT7uXRe2;
       spf=pass (google.com: domain of jbrunet@baylibre.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=jbrunet@baylibre.com
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id o14si10569wrx.2.2020.06.10.08.31.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2020 08:31:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbrunet@baylibre.com designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Received: by mail-ed1-x544.google.com with SMTP id m21so1683968eds.13
        for <clang-built-linux@googlegroups.com>; Wed, 10 Jun 2020 08:31:06 -0700 (PDT)
X-Received: by 2002:a05:6402:690:: with SMTP id f16mr3042853edy.9.1591803066151;
        Wed, 10 Jun 2020 08:31:06 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net. [82.243.161.21])
        by smtp.gmail.com with ESMTPSA id k10sm77009ejs.108.2020.06.10.08.31.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2020 08:31:04 -0700 (PDT)
References: <202005311147.iLK0hQoe%lkp@intel.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
Subject: Re: sound/soc/meson/t9015.c:315:34: warning: unused variable 't9015_ids'
In-reply-to: <202005311147.iLK0hQoe%lkp@intel.com>
Date: Wed, 10 Jun 2020 17:31:03 +0200
Message-ID: <1jftb32b0o.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jbrunet@baylibre.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623
 header.b=JT7uXRe2;       spf=pass (google.com: domain of jbrunet@baylibre.com
 designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=jbrunet@baylibre.com
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


On Sun 31 May 2020 at 05:00, kbuild test robot <lkp@intel.com> wrote:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   ffeb595d84811dde16a28b33d8a7cf26d51d51b3
> commit: 33901f5b9b16d212ee58865e9e8e80fc813f12da ASoC: meson: add t9015 internal DAC driver
> date:   3 months ago
> config: x86_64-randconfig-r033-20200531 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2388a096e7865c043e83ece4e26654bd3d1a20d5)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 33901f5b9b16d212ee58865e9e8e80fc813f12da
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>
>>> sound/soc/meson/t9015.c:315:34: warning: unused variable 't9015_ids' [-Wunused-const-variable]
> static const struct of_device_id t9015_ids[] = {
> ^
> 1 warning generated.
>
> vim +/t9015_ids +315 sound/soc/meson/t9015.c
>
>    314	
>  > 315	static const struct of_device_id t9015_ids[] = {
>    316		{ .compatible = "amlogic,t9015", },
>    317		{ }
>    318	};
>    319	MODULE_DEVICE_TABLE(of, t9015_ids);
>    320	

Hi,

I'm not sure what to do with this report.
I tried to reproduce has instructed, the log is full of warnings and the
compilation eventually fails to link.

It seems that most (if not all) drivers with a MODULE_DEVICE_TABLE() show
this warning with the provided .config (COMPILE_TEST).

When compiled with gcc, no such warning is shown.
I can remove COMPILE_TEST for this driver, it will make the warning go
away but I'm not sure it is appropriate.

>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1jftb32b0o.fsf%40starbuckisacylon.baylibre.com.
