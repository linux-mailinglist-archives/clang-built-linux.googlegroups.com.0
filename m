Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBD7663UQKGQETTRTPKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B697802A
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jul 2019 17:28:16 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id i9sf36835722edr.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jul 2019 08:28:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564327695; cv=pass;
        d=google.com; s=arc-20160816;
        b=tsUbUt0j1xLqlil5VlUCMAajp6Jk1BzXbkcVUhZmjTfQhQlGERXqdzFZ24JBbKkF/1
         y4axrgA7n6pb/IjuUCrOZXyctnmjQLbc/lPcw+cz9HNa31N2Kii3DAbxWFSsDPnS87kX
         kWS1XRiocOCfM5YkPBkoHXkmMmeio2vCPaE1N4oKT0fN3T0e+zERZzABtY/oNhUjY8Iq
         YYLZaj+5jYlh97R0rhwjTQ4ODT7VG2AIX34rR/If9YM2cGmt6jxANbmKB7cF/Ydpk27t
         oe1ShGp8KnjuOqAAvUmqm9DBOKc7wSq3Ec1G53pyUDBbcPumLOfha4NQmMXvvM1lPYpj
         tY7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=aVLbb4YZR3uAjrb874U+uCkkcUeb4LIOJAKdcnLdxpk=;
        b=tX66tWoZAY6YzFmQwmkA1UwfiGa9nsMrBJzKagzLZ3K/iA7cvkUT5RVCjwX5gzoeTP
         trIsOfdcWyrYMxQivzbD+5BXTnFT+TqATWxpFlo+zINVR30sf9UvavsijMhbnBFeIpx/
         Fuu776yLgN6GpBbqygkPvPaNqFUFpLPk/PXAb6R75FpQYsAdBGD8GRb+avW6E2iOE+zv
         XUGBgj9adCiEHEvx5XFcFI+M+f6UZirJ8dRUHOnosZ6g6duKuTZpKdFDaXEOU6kbPRYv
         18sJKlmkzrRChNCXX0t+dXITadDSGvIuV+2trNNqnkXKkvYDfhEEjPav2Wc5tPxvLohg
         SSug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hjRMYd9q;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aVLbb4YZR3uAjrb874U+uCkkcUeb4LIOJAKdcnLdxpk=;
        b=SzvylArGT2XM4tfUZZUEVb3KYdMriFasIsGNDHH6ctIGVuQjAEoz93ovucgZUlfztA
         eaz9TJD/LwfxWSiYCpsnYo/K5VkjJPG7YyUYuQQM+DbybZUXyU0xMMSWVts19zfGpKkn
         KQKmtz9t+vxjQ52D89ALgo66mfugeH3ectF1tUzAJNWrwTtheltE+YMQ9bQEX1qNYabZ
         j67SOsdZYJPq0W/bL2hKna3BJwDvqfyY4veEE40VrVpfuQE93Yk1OpfJ1IhKW35dbM+M
         ONyulPvLzis/mZGr6+oa80LP6cz6UsayyzN+nuh2/U4iZ/oUfOKyxsFrl3ofmcmdc+Wl
         eDeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aVLbb4YZR3uAjrb874U+uCkkcUeb4LIOJAKdcnLdxpk=;
        b=nr1F2heF2fTtUlJRA+HiMh28Gn8cDUQ8KKyFy7WEuz7Pc1ilgouNbLMx/oZMAPtnat
         AleUpSAtu7odSLYytiBHhPQF0mpbm84xvISHS/GeUqEV1oCLHoUheRth5Unf4kCgBgyy
         W9FDTDQ+Yj0IiKw9A/CRRe5gqYUYql1z0hQJyUredxaF26DB2k0XMVAmKZ3Qu1ASDqHS
         +hLTGj9ELtPJcpinmRCE5HUrhiscx4/bJ406T82UhWxQATHEqaoXgKBTOKxceKcfF5HX
         U+VAhvfVqGzqCc6qZdA+PEp7gcBvohTssrg0E0DQIFV4ODnfFWxqfbLGZIyOUMNyp04t
         ZFBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aVLbb4YZR3uAjrb874U+uCkkcUeb4LIOJAKdcnLdxpk=;
        b=cUX3n/zrhCYAeNsm4pgcpKGoGbAs150jFJt70rUAbHowV4v9gE+dzM/48Wy20TlXwC
         s23zXE3LJkFel2RP4PrSQKWfMToDvlt39gy0CQ79WlkdqsiKcd9QR7j7Jb1azeCsJdbv
         +QMpE4CHNv9LXj0r5+NXUF1A8hkVPA5i6gP2o0guBEAEksV6z1uwdiR1v2wbnE41bbW3
         Cn8ftifvPx/bmLBBwFBs7nYSn8ZIj8+BdiL/0Td5O/pHVO7xZF5aMRTJvD8CfnJsPRSb
         UzMWfKFmdD7d44glGdOt+0/nGmtv/zGBnQdklV1MNIVIStqJ/lozK9Jk5uJu1FzM2Udv
         49xw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVKDXdVyjNSscp3pc6hnl0EBy0tPDghZKD9sNm+/9EvRtdHSSKL
	56aADbRphIJy1hxDKiFBOAU=
X-Google-Smtp-Source: APXvYqybQUIlNlztmip/xKcPpZRhD7n1QaR9x8+unL2hWV0tpAPEbEsflWswfPRX9xbMuJhr4ANvMQ==
X-Received: by 2002:a50:883b:: with SMTP id b56mr91598852edb.178.1564327695846;
        Sun, 28 Jul 2019 08:28:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:ae9a:: with SMTP id e26ls2597923edd.1.gmail; Sun, 28 Jul
 2019 08:28:15 -0700 (PDT)
X-Received: by 2002:a50:84a1:: with SMTP id 30mr92609558edq.44.1564327695460;
        Sun, 28 Jul 2019 08:28:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564327695; cv=none;
        d=google.com; s=arc-20160816;
        b=S/tjKcmXCi8QqLpdLbQaDLXJ4KuWtQ/zOrHJ8JYFUPWpEK6mKUL5ImCCNIQvs/AqW9
         gA0s7jdlDCqOsMmCxStaYYxVGeKi8GdUz2QYprlTG3+/UXi5CAAWE/bF1fnEU+o56u/X
         Gfo12SCzOGaEGBy7WrvknLTrz7/oEOxipFCAXxkKS7eA+HFGuvhCaUUkMYl8r0bTwcaW
         0AAvsc/FzJZ1D/eBj9ecaznmDbx+tc88oFMlJ2/uXBRsYWK7nMoksCMKYV/gifCO9JSD
         A2l9D4XwN/nmIQBOSYPiNDPNdoS00hNoNfEKWfJCyzDp9CYqVSXPxBSdDD9cOn38TqLe
         dSnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PvG7LlWe+udPmv98hFr8qMqZSiGr3FYhSJPR+UpnYDs=;
        b=U9u20tv+ub6ve/nyfgHayzFGe7vd7qH0pHdffgjApL9dkGsI9HTqDjwfVTFB5UTbHg
         cGCStYiFDwOw1ytf7kp3BE4C0FqjVR88yelrb+2Eqowlp9EH5ze4KCPGPePgPXfsmAs9
         sapTI2SqXGL1OMnv8ErNmY1tqab17MzHSbws7g9gmtdeJBZdu7QgLbE/pkI0o9v8PFMW
         W/4jGm9LGBRM7y4tQxs5L27gQ3irBraGZgD3zth0SmSERPBfBERbkiJvWB/Nr2UkGIQe
         Kw6Bgj8tH0AoTLXLEUBxm3LsxGgB/NLyE5H6nkud0WhtVSgJSelFPjYuhII7RRgtGr1e
         SCzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hjRMYd9q;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id b39si3163889edb.1.2019.07.28.08.28.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Jul 2019 08:28:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id n4so59218462wrs.3
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jul 2019 08:28:15 -0700 (PDT)
X-Received: by 2002:a5d:53c1:: with SMTP id a1mr12571810wrw.185.1564327694797;
        Sun, 28 Jul 2019 08:28:14 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id s15sm40489619wrw.21.2019.07.28.08.28.13
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 28 Jul 2019 08:28:14 -0700 (PDT)
Date: Sun, 28 Jul 2019 08:28:12 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>,
	Linus Walleij <linus.walleij@linaro.org>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [arm-integrator:apq8060-dragonboard-wm8903 10/10]
 drivers/clk/qcom/clk-rcg.c:77:6: warning: variable 'ns' is used
 uninitialized whenever 'if' condition is true
Message-ID: <20190728152812.GA103200@archlinux-threadripper>
References: <201907282236.8BVFJxC8%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201907282236.8BVFJxC8%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hjRMYd9q;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Linus,

The 0day team has been doing clang builds for us and this cropped up. I
know this branch is very clearly a work in progress but I figured it
would be better to let you know sooner rather than later so it could be
addressed.

On Sun, Jul 28, 2019 at 10:21:40PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Linus Walleij <linus.walleij@linaro.org>
> 
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/linusw/linux-integrator.git apq8060-dragonboard-wm8903
> head:   41c3ab26cdfb8d6ab3da2d7b2ae0b462a06b8c42
> commit: 41c3ab26cdfb8d6ab3da2d7b2ae0b462a06b8c42 [10/10] stab
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 41c3ab26cdfb8d6ab3da2d7b2ae0b462a06b8c42
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/clk/qcom/clk-rcg.c:77:6: warning: variable 'ns' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>            if (ret)
>                ^~~
>    drivers/clk/qcom/clk-rcg.c:96:34: note: uninitialized use occurs here
>                    __func__, clk_hw_get_name(hw), ns);
>                                                   ^~
>    include/linux/printk.h:311:34: note: expanded from macro 'pr_info'
>            printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
>                                            ^~~~~~~~~~~
>    drivers/clk/qcom/clk-rcg.c:77:2: note: remove the 'if' if its condition is always false
>            if (ret)
>            ^~~~~~~~
>    drivers/clk/qcom/clk-rcg.c:71:8: note: initialize the variable 'ns' to silence this warning
>            u32 ns, reg;
>                  ^
>                   = 0
>    1 warning generated.
> 
> vim +77 drivers/clk/qcom/clk-rcg.c
> 
> bcd61c0f535a04a Stephen Boyd    2014-01-15   66  
> bcd61c0f535a04a Stephen Boyd    2014-01-15   67  static u8 clk_dyn_rcg_get_parent(struct clk_hw *hw)
> bcd61c0f535a04a Stephen Boyd    2014-01-15   68  {
> bcd61c0f535a04a Stephen Boyd    2014-01-15   69  	struct clk_dyn_rcg *rcg = to_clk_dyn_rcg(hw);
> 497295afb5ab070 Stephen Boyd    2015-06-25   70  	int num_parents = clk_hw_get_num_parents(hw);
> 229fd4a505553c3 Stephen Boyd    2014-04-28   71  	u32 ns, reg;
> bcd61c0f535a04a Stephen Boyd    2014-01-15   72  	int bank;
> 7f218978f10693f Georgi Djakov   2015-03-20   73  	int i, ret;
> bcd61c0f535a04a Stephen Boyd    2014-01-15   74  	struct src_sel *s;
> bcd61c0f535a04a Stephen Boyd    2014-01-15   75  
> 7f218978f10693f Georgi Djakov   2015-03-20   76  	ret = regmap_read(rcg->clkr.regmap, rcg->bank_reg, &reg);
> 7f218978f10693f Georgi Djakov   2015-03-20  @77  	if (ret)
> 7f218978f10693f Georgi Djakov   2015-03-20   78  		goto err;

If we take this if statement

> 229fd4a505553c3 Stephen Boyd    2014-04-28   79  	bank = reg_to_bank(rcg, reg);
> bcd61c0f535a04a Stephen Boyd    2014-01-15   80  	s = &rcg->s[bank];
> bcd61c0f535a04a Stephen Boyd    2014-01-15   81  
> 7f218978f10693f Georgi Djakov   2015-03-20   82  	ret = regmap_read(rcg->clkr.regmap, rcg->ns_reg[bank], &ns);
> 7f218978f10693f Georgi Djakov   2015-03-20   83  	if (ret)
> 7f218978f10693f Georgi Djakov   2015-03-20   84  		goto err;
> bcd61c0f535a04a Stephen Boyd    2014-01-15   85  	ns = ns_to_src(s, ns);
> bcd61c0f535a04a Stephen Boyd    2014-01-15   86  
> bcd61c0f535a04a Stephen Boyd    2014-01-15   87  	for (i = 0; i < num_parents; i++)
> 41c3ab26cdfb8d6 Linus Walleij   2017-04-07   88  		if (ns == s->parent_map[i].cfg) {
> 41c3ab26cdfb8d6 Linus Walleij   2017-04-07   89  			pr_info("%s: Clock %s has parent %d\n",
> 41c3ab26cdfb8d6 Linus Walleij   2017-04-07   90  				__func__, clk_hw_get_name(hw), i);
> bcd61c0f535a04a Stephen Boyd    2014-01-15   91  			return i;
> 41c3ab26cdfb8d6 Linus Walleij   2017-04-07   92  		}
> bcd61c0f535a04a Stephen Boyd    2014-01-15   93  
> 7f218978f10693f Georgi Djakov   2015-03-20   94  err:
> 41c3ab26cdfb8d6 Linus Walleij   2017-04-07   95  	pr_info("%s: Clock %s has invalid parent %d, using default.\n",
> 41c3ab26cdfb8d6 Linus Walleij   2017-04-07   96  		__func__, clk_hw_get_name(hw), ns);

ns is uninitialized here.

> 7f218978f10693f Georgi Djakov   2015-03-20   97  	return 0;
> bcd61c0f535a04a Stephen Boyd    2014-01-15   98  }

Thanks!
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190728152812.GA103200%40archlinux-threadripper.
