Return-Path: <clang-built-linux+bncBCQYFH77QIORBZM7535AKGQE54262NA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id D632A266194
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 16:55:34 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id r16sf6984247iot.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 07:55:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599836133; cv=pass;
        d=google.com; s=arc-20160816;
        b=yJlMy3co0MJYoytB4VEDIWh7ORMQettehYxR/k5EYrIgTKRVijYz8BObXFdAXft3AS
         gMsuWVSyiIQK161Xp4akgAVBt8L2BaYUAB/O1EOfIv0wXhuIOyOVj0DViYmt7UVrn4sB
         s6p4QwWrPkEb2MGJBGhanEzur2LGUHkWel892FEairilqzRKAC5FhJlZDEEjt60xgPzb
         g6/mWzmEdtjnggNqWX8nQdAWnN6gFmoPKOF+uunQCFN4FKYeE58R3nhktknrPyR/SR5j
         ADcB58Rjr62sfFAZZTf8e7N/PhDWsF+q4yOmJKK9cXZSU8R+0MrAuNdnfdVgT4spYf9j
         X6gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:feedback-id:mime-version:user-agent
         :message-id:in-reply-to:date:references:subject:cc:to:from
         :dmarc-filter:sender:dkim-signature;
        bh=/2/NQUSc9kmb8o1a8R4PSda1wEf0IA5idkVqHTuwWKI=;
        b=G0jrsolEFmQkIKxrW57aZcyGLSewGDNO3viS9pEM3EaemhMUh9tdqov7C8DHry0sXT
         a/K4DIKRqDVbM+2EnjRXFKRsvE1rOgZDWAC2GzXq4vR0QvZiCkKOmFOOE5eU5fEe0pPk
         mwNpJJ3GaJbzgGJZGyGk7sGKw6HAEGQxTh4l6SmEPjT0AdL8lrcsTNkpvDxodOo78987
         rXHcEqXX2tZ13X/ruRM3xBwIzWoNMcBFR0R5SpvR5Gh/ppBOGVEsBPXjK5XtBPiUfKnF
         skEOj6ibQHqusc7leUcSp1E+tQXsVN0/cMOcjaZFdkVMjP3VHDaUq5yTSvmVSBOQdAui
         FFVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=gbvhytky6xpx7itkhb67ktsxbiwpnxix header.b=Ey5SKDtV;
       dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=OmVR6tpi;
       spf=pass (google.com: domain of 010101747daa12b8-fba6ed36-851a-4f37-ac80-36f0031a9baf-000000@us-west-2.amazonses.com designates 54.240.27.187 as permitted sender) smtp.mailfrom=010101747daa12b8-fba6ed36-851a-4f37-ac80-36f0031a9baf-000000@us-west-2.amazonses.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dmarc-filter:from:to:cc:subject:references:date:in-reply-to
         :message-id:user-agent:mime-version:feedback-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/2/NQUSc9kmb8o1a8R4PSda1wEf0IA5idkVqHTuwWKI=;
        b=gUvq3jH2ktF/QgSuoiB6e6wmdgARuR6ZuoxEaPHicQtcQMhjTikBJYeRusPWmnOsvv
         XUu69kytBHeD/ILNioEOMxnJIQw/kAvxfyH/c1qc1iK3yNH/SoKwFy7QM0PYtSDxKDCj
         fLy3kcmlR0/OHU+npT6RzFfPgDTPG4gjNkCPXVTPUTsHGVMKC4KTBUV7NMzeMvjngCc4
         ixZm5GQ5CsTjxxODOfkbGE/DFJEHSaizhoayk+5l/cOJOLKRr7Lk5Sp0BTUG4+zw/cmX
         fICNDY/uYALwvXGRGsrNdVOUsY/1ZHGpYZb4mQGTPOOWwl+vKguNjFvkTG5OOBC01MeU
         MZrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :feedback-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/2/NQUSc9kmb8o1a8R4PSda1wEf0IA5idkVqHTuwWKI=;
        b=D27Yo6chnhKetD/GjibKAYdT/KueVAWm84ooN7CXWjHvBjOhra2uK6WITUyPpMUCLN
         dvY2P0q0hEC6e2RtG2/dSjxp7W8B8yWFKo2wyeLLiwRdDDdn15f3DD+cREIwEPe7hApt
         433a7gAAuZ8lMbgbmAoSTfAE+dKlElnxKQMRzJPjLZgWCZm1g70aNRbeRumCZY78/NRl
         MnFvyJI24UUKvjzclS2qa4PeN7sWrvksi3egv8X+1ANIGNQHMu9OOspG1gigjc+DUFTi
         Z8QsC/OU4ZYA9GTxpBgDpKferu7sof5MzlfhLyMTViyoIOXZM3tQjLNlWFgvB8ja2zAR
         WoVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532d/DK/AHPkc1sPlp/9OPdKs0Md5G3vyy73wwzlPKKCn9CawmVY
	b/h7CEAdrMc3fe5ewblPRYg=
X-Google-Smtp-Source: ABdhPJzoh8rPgF6YXxWZbUmfIzrLjYU/aAfUNv8mkeOGFDiETmu1rlJTN9HqB4JoAHolAAt25ljPJQ==
X-Received: by 2002:a92:9f96:: with SMTP id z22mr2119175ilk.264.1599836133409;
        Fri, 11 Sep 2020 07:55:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:bcc1:: with SMTP id m184ls438844iof.8.gmail; Fri, 11 Sep
 2020 07:55:33 -0700 (PDT)
X-Received: by 2002:a5e:9247:: with SMTP id z7mr1987865iop.71.1599836133047;
        Fri, 11 Sep 2020 07:55:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599836133; cv=none;
        d=google.com; s=arc-20160816;
        b=ty3eoqgG8yq0G/FDPY1b8DsvGgbGNMp0GR9XnQ+mDIgN1dia5Ceb90838Q8D4BjaWI
         Irlps4zJrCcBVXVS43XCrnHugzepribaXvatTS2RIk60HTHO3VmIma0z9KPdfda02Lxl
         Bcm8QTvJhfiXbD+uD4OiJXurU3bfP3kfjvhwPqvvp8dwBK8WLmwW0SF4tV8x5niVgzW7
         S6UoyacCDL+buRTYGkcsoJ7u1eDaDYbHHR9E9JVlRVwkDwH6uwCTxT/rpuWVHPrzGOnD
         zCV+eXJDiGpwYOeuaEqIRABAxYDq6gWt/nOOtBoZUKryEUChYJi3vVaw3SJHgDjTzEqr
         7taw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=feedback-id:mime-version:user-agent:message-id:in-reply-to:date
         :references:subject:cc:to:from:dmarc-filter:dkim-signature
         :dkim-signature;
        bh=/eb+erxlfh3U9/Ua5l8T17BkrjN2qOBbyPaSiYUgx/o=;
        b=0852Sief8UTYzOi7+tcOIfj2k0ue0v5S8Im9aGdpVk+DDluLJx2f+LL40ZQ5UBu3Nl
         jFWpYvu9/eQyuntlUuAcFG+T0gbChqfirbiEKGKfdUo7TTdVmgtZNva8MWyAkjEHcaN5
         VMSHdGYrIh4fg/663Ocp8MVuDXJnWpnEI/IUUcHxr5VT1W03emJZAeKrFqlUrML9FupE
         jJparPHxei0pg6efQM7JuPDeJHnbibWvHDoZyZ0A+EruBIgn5kpBD66TAKn77fGKcqR6
         wDLMWzxV4ucEhaRYxDzeqtUrPZcsewh7Yt3al95yT3v9FRhHkrJcbuF2iGtCQUdzzB1h
         /zLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=gbvhytky6xpx7itkhb67ktsxbiwpnxix header.b=Ey5SKDtV;
       dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=OmVR6tpi;
       spf=pass (google.com: domain of 010101747daa12b8-fba6ed36-851a-4f37-ac80-36f0031a9baf-000000@us-west-2.amazonses.com designates 54.240.27.187 as permitted sender) smtp.mailfrom=010101747daa12b8-fba6ed36-851a-4f37-ac80-36f0031a9baf-000000@us-west-2.amazonses.com
Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com. [54.240.27.187])
        by gmr-mx.google.com with ESMTPS id q22si154086iob.1.2020.09.11.07.55.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Fri, 11 Sep 2020 07:55:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of 010101747daa12b8-fba6ed36-851a-4f37-ac80-36f0031a9baf-000000@us-west-2.amazonses.com designates 54.240.27.187 as permitted sender) client-ip=54.240.27.187;
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D595BC433CA
From: Kalle Valo <kvalo@codeaurora.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org,  clang-built-linux@googlegroups.com,  linux-kernel@vger.kernel.org,  Anilkumar Kolli <akolli@codeaurora.org>,  Bhagavathi Perumal S <bperumal@codeaurora.org>,  Ganesh Sesetti <gseset@codeaurora.org>,  Govindaraj Saminathan <gsamin@codeaurora.org>,  John Crispin <john@phrozen.org>,  Julia Lawall <julia.lawall@lip6.fr>,  Karthikeyan Periyasamy <periyasa@codeaurora.org>,  Maharaja Kennadyrajan <mkenna@codeaurora.org>, ath11k@lists.infradead.org
Subject: Re: drivers/net/wireless/ath/ath11k/ahb.c:919:15: warning: cast to smaller integer type 'enum ath11k_hw_rev' from 'const void
References: <202009110445.WqWCY2F0%lkp@intel.com>
Date: Fri, 11 Sep 2020 14:55:32 +0000
In-Reply-To: <202009110445.WqWCY2F0%lkp@intel.com> (kernel test robot's
	message of "Fri, 11 Sep 2020 04:52:50 +0800")
Message-ID: <010101747daa12b8-fba6ed36-851a-4f37-ac80-36f0031a9baf-000000@us-west-2.amazonses.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-SES-Outgoing: 2020.09.11-54.240.27.187
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@codeaurora.org header.s=gbvhytky6xpx7itkhb67ktsxbiwpnxix
 header.b=Ey5SKDtV;       dkim=pass header.i=@amazonses.com
 header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=OmVR6tpi;       spf=pass
 (google.com: domain of 010101747daa12b8-fba6ed36-851a-4f37-ac80-36f0031a9baf-000000@us-west-2.amazonses.com
 designates 54.240.27.187 as permitted sender) smtp.mailfrom=010101747daa12b8-fba6ed36-851a-4f37-ac80-36f0031a9baf-000000@us-west-2.amazonses.com
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

+ ath11k

Hi,

can someone look at the ath11k warnings below and send fixes, please?
Some of them might be already fixed, like the one about enum
scan_priority.

Kalle

kernel test robot <lkp@intel.com> writes:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   7fe10096c1508c7f033d34d0741809f8eecc1ed4
> commit: d5c65159f2895379e11ca13f62feabe93278985d ath11k: driver for
> Qualcomm IEEE 802.11ax devices
> date:   10 months ago
> config: x86_64-randconfig-a015-20200910 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
> 0a5dc7effb191eff740e0e7ae7bd8e1f6bdb3ad9)
> reproduce (this is a W=1 build):
>         wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout d5c65159f2895379e11ca13f62feabe93278985d
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>>> drivers/net/wireless/ath/ath11k/ahb.c:919:15: warning: cast to
>>> smaller integer type 'enum ath11k_hw_rev' from 'const void *'
>>> [-Wvoid-pointer-to-enum-cast]
>            ab->hw_rev = (enum ath11k_hw_rev)of_id->data;
>                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
> --
>>> drivers/net/wireless/ath/ath11k/wmi.c:142:8: warning: format
>>> specifies type 'unsigned char' but the argument has type 'u16' (aka
>>> 'unsigned short') [-Wformat]
>                                       tlv_tag, ptr - begin, len, tlv_len);
>                                       ^~~~~~~
>    drivers/net/wireless/ath/ath11k/wmi.c:142:35: warning: format specifies type 'unsigned char' but the argument has type 'u16' (aka 'unsigned short') [-Wformat]
>                                       tlv_tag, ptr - begin, len, tlv_len);
>                                                                  ^~~~~~~
>    drivers/net/wireless/ath/ath11k/wmi.c:150:8: warning: format specifies type 'unsigned char' but the argument has type 'u16' (aka 'unsigned short') [-Wformat]
>                                       tlv_tag, ptr - begin, tlv_len,
>                                       ^~~~~~~
>    drivers/net/wireless/ath/ath11k/wmi.c:150:30: warning: format specifies type 'unsigned char' but the argument has type 'u16' (aka 'unsigned short') [-Wformat]
>                                       tlv_tag, ptr - begin, tlv_len,
>                                                             ^~~~~~~
>    drivers/net/wireless/ath/ath11k/wmi.c:1812:23: warning: implicit conversion from enumeration type 'enum wmi_scan_priority' to different enumeration type 'enum scan_priority' [-Wenum-conversion]
>            arg->scan_priority = WMI_SCAN_PRIORITY_LOW;
>                               ~ ^~~~~~~~~~~~~~~~~~~~~
>    5 warnings generated.
> --
>>> drivers/net/wireless/ath/ath11k/mac.c:3970:6: warning: format
>>> specifies type 'unsigned short' but the argument has type 'u32'
>>> (aka 'unsigned int') [-Wformat]
>                       ctx->def.chan->center_freq, ctx->def.width, ctx);
>                       ^~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/ath/ath11k/debug.h:275:37: note: expanded from macro 'ath11k_dbg'
>                    __ath11k_dbg(ar, dbg_mask, fmt, ##__VA_ARGS__); \
>                                               ~~~    ^~~~~~~~~~~
>    drivers/net/wireless/ath/ath11k/mac.c:3994:6: warning: format specifies type 'unsigned short' but the argument has type 'u32' (aka 'unsigned int') [-Wformat]
>                       ctx->def.chan->center_freq, ctx->def.width, ctx);
>                       ^~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/ath/ath11k/debug.h:275:37: note: expanded from macro 'ath11k_dbg'
>                    __ath11k_dbg(ar, dbg_mask, fmt, ##__VA_ARGS__); \
>                                               ~~~    ^~~~~~~~~~~
>    drivers/net/wireless/ath/ath11k/mac.c:4241:7: warning: format specifies type 'unsigned short' but the argument has type 'u32' (aka 'unsigned int') [-Wformat]
>                               vifs[i].old_ctx->def.chan->center_freq,
>                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/ath/ath11k/debug.h:275:37: note: expanded from macro 'ath11k_dbg'
>                    __ath11k_dbg(ar, dbg_mask, fmt, ##__VA_ARGS__); \
>                                               ~~~    ^~~~~~~~~~~
>    drivers/net/wireless/ath/ath11k/mac.c:4242:7: warning: format specifies type 'unsigned short' but the argument has type 'u32' (aka 'unsigned int') [-Wformat]
>                               vifs[i].new_ctx->def.chan->center_freq,
>                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/ath/ath11k/debug.h:275:37: note: expanded from macro 'ath11k_dbg'
>                    __ath11k_dbg(ar, dbg_mask, fmt, ##__VA_ARGS__); \
>                                               ~~~    ^~~~~~~~~~~
>    drivers/net/wireless/ath/ath11k/mac.c:4337:6: warning: format specifies type 'unsigned short' but the argument has type 'u32' (aka 'unsigned int') [-Wformat]
>                       ctx->def.chan->center_freq, ctx->def.width, ctx, changed);
>                       ^~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/wireless/ath/ath11k/debug.h:275:37: note: expanded from macro 'ath11k_dbg'
>                    __ath11k_dbg(ar, dbg_mask, fmt, ##__VA_ARGS__); \
>                                               ~~~    ^~~~~~~~~~~
>>> drivers/net/wireless/ath/ath11k/mac.c:4640:22: warning: format
>>> specifies type 'unsigned char' but the argument has type 'u32' (aka
>>> 'unsigned int') [-Wformat]
>                       arvif->vdev_id, rate, nss, sgi);
>                                       ^~~~
>    drivers/net/wireless/ath/ath11k/debug.h:275:37: note: expanded from macro 'ath11k_dbg'
>                    __ath11k_dbg(ar, dbg_mask, fmt, ##__VA_ARGS__); \
>                                               ~~~    ^~~~~~~~~~~
>    6 warnings generated.
> --
>>> drivers/net/wireless/ath/ath11k/dp_rx.c:977:8: warning: format specifies type 'unsigned char' but the argument has type 'u16' (aka 'unsigned short') [-Wformat]
>                                       tlv_tag, ptr - begin, len, tlv_len);
>                                       ^~~~~~~
>    drivers/net/wireless/ath/ath11k/dp_rx.c:977:35: warning: format specifies type 'unsigned char' but the argument has type 'u16' (aka 'unsigned short') [-Wformat]
>                                       tlv_tag, ptr - begin, len, tlv_len);
>                                                                  ^~~~~~~
>    2 warnings generated.
>
> # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d5c65159f2895379e11ca13f62feabe93278985d
> git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> git fetch --no-tags linus master
> git checkout d5c65159f2895379e11ca13f62feabe93278985d
> vim +919 drivers/net/wireless/ath/ath11k/ahb.c
>
>    879	
>    880	static int ath11k_ahb_probe(struct platform_device *pdev)
>    881	{
>    882		struct ath11k_base *ab;
>    883		const struct of_device_id *of_id;
>    884		struct resource *mem_res;
>    885		void __iomem *mem;
>    886		int ret;
>    887	
>    888		of_id = of_match_device(ath11k_ahb_of_match, &pdev->dev);
>    889		if (!of_id) {
>    890			dev_err(&pdev->dev, "failed to find matching device tree id\n");
>    891			return -EINVAL;
>    892		}
>    893	
>    894		mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>    895		if (!mem_res) {
>    896			dev_err(&pdev->dev, "failed to get IO memory resource\n");
>    897			return -ENXIO;
>    898		}
>    899	
>    900		mem = devm_ioremap_resource(&pdev->dev, mem_res);
>    901		if (IS_ERR(mem)) {
>    902			dev_err(&pdev->dev, "ioremap error\n");
>    903			return PTR_ERR(mem);
>    904		}
>    905	
>    906		ret = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
>    907		if (ret) {
>    908			dev_err(&pdev->dev, "failed to set 32-bit consistent dma\n");
>    909			return ret;
>    910		}
>    911	
>    912		ab = ath11k_core_alloc(&pdev->dev);
>    913		if (!ab) {
>    914			dev_err(&pdev->dev, "failed to allocate ath11k base\n");
>    915			return -ENOMEM;
>    916		}
>    917	
>    918		ab->pdev = pdev;
>  > 919		ab->hw_rev = (enum ath11k_hw_rev)of_id->data;
>    920		ab->mem = mem;
>    921		ab->mem_len = resource_size(mem_res);
>    922		platform_set_drvdata(pdev, ab);
>    923	
>    924		ret = ath11k_hal_srng_init(ab);
>    925		if (ret)
>    926			goto err_core_free;
>    927	
>    928		ret = ath11k_ce_alloc_pipes(ab);
>    929		if (ret) {
>    930			ath11k_err(ab, "failed to allocate ce pipes: %d\n", ret);
>    931			goto err_hal_srng_deinit;
>    932		}
>    933	
>    934		ath11k_ahb_init_qmi_ce_config(ab);
>    935	
>    936		ret = ath11k_ahb_config_irq(ab);
>    937		if (ret) {
>    938			ath11k_err(ab, "failed to configure irq: %d\n", ret);
>    939			goto err_ce_free;
>    940		}
>    941	
>    942		ret = ath11k_core_init(ab);
>    943		if (ret) {
>    944			ath11k_err(ab, "failed to init core: %d\n", ret);
>    945			goto err_ce_free;
>    946		}
>    947	
>    948		return 0;
>    949	
>    950	err_ce_free:
>    951		ath11k_ce_free_pipes(ab);
>    952	
>    953	err_hal_srng_deinit:
>    954		ath11k_hal_srng_deinit(ab);
>    955	
>    956	err_core_free:
>    957		ath11k_core_free(ab);
>    958		platform_set_drvdata(pdev, NULL);
>    959	
>    960		return ret;
>    961	}
>    962	
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/010101747daa12b8-fba6ed36-851a-4f37-ac80-36f0031a9baf-000000%40us-west-2.amazonses.com.
