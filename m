Return-Path: <clang-built-linux+bncBCQPVKWLVAIRBIFF5SBAMGQEFDEZY6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 808553475D0
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 11:21:31 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id u8sf925945otq.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 03:21:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616581280; cv=pass;
        d=google.com; s=arc-20160816;
        b=xCyYK4LN3FutSfjTJBVclMv+Rp/nutvx0jHwICbujiX80O2HNMeLK8KtkdHpRsgsfN
         bE6Yl2WamMlGQ7mN9fvH+zB0a8/qdZ/WZa9R9Q2EyRLH7268fhLRuBzdmAVKyn/1zfgw
         9H5HJJh/R+rhXzhhb2oxCQifamS6Jrb2wcaVDph8SQ29LkwJlNZbHTjenLL7lPQj5Nee
         EHhzyIF29xcGDAXGgYxL7CESnYEmY6DlH8cXnu88GBFrdFbYF4C+pKj/5RoIpvewV2kf
         Z0EOrMhYkqpkCcIxujgRFM3U+EhuicBgqf3sLFjaf8c1q5KBK/BC26AXkANbaVQ7vcPY
         7QQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NzaJJBKMe0F1NTTh2KMNX5/6mhSeTC4U8QpVZFH4TVA=;
        b=MYbfQwFD1HqhS10WPexF18qvGQ3OdWi4P9n9uoMSZmfJtHhKtHwT/0QDLcnOYC8ww1
         kPHYWau8NTeXDID5GSuBQm9XFPN9+MCFAl3lSd4qDergkTwm0iNpMiYRn0SXXkBtNbH3
         ba3l9AZUI1rP6uIc1QJuHSxBtpnhxncjdCWIPtSQHLowoSFzEXm0WZGmDdBHXAOzsMAG
         qTBMfHzmDgyU2RFf5VZU3hUX8WfTItv0otua7TusCQEpKmJlye1mkZ9NY6UhFYk32hRG
         FXvQJwYaPjFCEVFGtMKYlWzTFmxcRLe1UJ9iLy+qv/LRz4oyTAL/JNG4oq0J7Jad+0lN
         rNsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NzaJJBKMe0F1NTTh2KMNX5/6mhSeTC4U8QpVZFH4TVA=;
        b=FTcyui9W4zWoKzFJeJlywlwakxuaSq2CVjzESedHePNRL+lZjrRlMSRYWcoBtxj++q
         sCY0l/hj6Z0K09mY1SWb/C94gYgVFwosHf6Cado1c72QZRMwDpJvk4DHycxkT9jp3U3X
         db41lIIXZ5liFA4GwuezLZO9TWWeBLGXn8RI6BEyJk1VCd3HMUd3hJtiDj1iZc/cZHK0
         wFWug/5YGXvfIkE/yBfpYgxQz6CduB4XsDC92hw0AVMk/xOmumnxJJB28bjBXLTfopYF
         GicyWBIFkNXMVyK65jb5RQLXqiG6tZCOCHbKjNga5CDWoEugDAunE4nCfpEP7bapb8HB
         Vutw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NzaJJBKMe0F1NTTh2KMNX5/6mhSeTC4U8QpVZFH4TVA=;
        b=qOzr6aBaCDXmiji3D8WcLVUiemBZWb2NIZJyduyVM6T01Vh/ctHvOlkmgU6RtZ/Cie
         Faa69xbUplfn59qRO3D5ILl8WeN3+FTCS2DcNy/nqTkBnOSAxckDSyvIrkDuWRzC2c2l
         N8ZTkqKjoILduDEUaupaYnSmoOXtQWZ5ywQqjzBKs0aYCIGriWbdR3nu/kzzHmRAUNGD
         tHS/Ck+e8jBjDV7g3KaX8QE6xzrAixTm/skQv1/ENAe7FrrR3klj+4nFPvimMa7viFAs
         A7XagY+secK2RxGlpw33GTKXJqtTIfIONEfh03LLR5XxwIi2Xyxfg50zMBGZbK2pPk5V
         oJ5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/EjLguxGqxU1Yy1V2UMT/PWfPmtfIEbshgy7rTLiSCUQBZ6qa
	WVZl7e9eAAO/cX3vhW6txUE=
X-Google-Smtp-Source: ABdhPJzl3cqeu0UBDzUo7w/DiC8vRKNuGwRsqeLjuEUnxR23/qO/jqnak03zo1qoTi9SUqO7evK7pA==
X-Received: by 2002:a9d:7dc5:: with SMTP id k5mr2674683otn.220.1616581280120;
        Wed, 24 Mar 2021 03:21:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4c55:: with SMTP id z82ls435797oia.2.gmail; Wed, 24 Mar
 2021 03:21:19 -0700 (PDT)
X-Received: by 2002:aca:478d:: with SMTP id u135mr1843930oia.174.1616581279778;
        Wed, 24 Mar 2021 03:21:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616581279; cv=none;
        d=google.com; s=arc-20160816;
        b=DY6Pkfpo22f31AlrRF/OhQ6G6oMU+C2WdEBULkHNn2zRUzhuLhtK+E/ZYfuXRGOcLL
         W6q3TAj+qQNDW1dVF0y5PfDmHu6mvuqrgXhVBwDikdxZKc0SiD5VZMeNzLt9qbhVLAfd
         3dpp3arTFIppicTOvR04SVOBH6+RjpPdhsVxi7BXoRdeLJZMqsY2HTrO6k2OtB5xcIOr
         6EX4PyayFddZVdzSUOvt8OFKjtjBOK2wPpLtc/+0MBwRwK8l4eZtV1WnprOYTP9zjC7i
         WVyFH+hvOlE+EYmf06pE8TcxWGKUiSKiFaPyYdvQQ1bEBoNTx5jfJ8/kFhgby1dd/Uzg
         YIsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=Kx4LWvXgrvAo/v+WcakHLWZ99xkJGNb+rvy/lNCxrBw=;
        b=seZQRfTpH5U5BwASwCgwYdVIrPnyvDKYQ+ulnkPlog6LutoSa45/Rj6mB+wDJRac00
         tSk0ob9yxUPKaS+N++MGICJigq5wSSkgA84rjWOw1+L7eSd3gNuEIqijWrlFypodOOLT
         fqz1xbQQb/lPxbThwOT9ETQrES7MKZx0cRgsb9luvx3T8Saa0Tct8ETKSbeIifhlLHC/
         eqWwIWQ2SraQsAXmTY1qqh5Xulr5n+BMttzANpumw+2yrUjXgWpRf5kPdVFy+Hj5kiIR
         WGN3LkBO3yrUtvc3riDOfm/p6icM5JIoV3h5v4+QeZ6u3L9sSLHaxYDhNnpAgX0tIKAH
         b2fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
Received: from muru.com (muru.com. [72.249.23.125])
        by gmr-mx.google.com with ESMTP id f2si109815oob.2.2021.03.24.03.21.19
        for <clang-built-linux@googlegroups.com>;
        Wed, 24 Mar 2021 03:21:19 -0700 (PDT)
Received-SPF: neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) client-ip=72.249.23.125;
Received: from atomide.com (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 0AE488057;
	Wed, 24 Mar 2021 10:22:15 +0000 (UTC)
Date: Wed, 24 Mar 2021 12:21:16 +0200
From: Tony Lindgren <tony@atomide.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [linux-next:master 2194/6512]
 arch/arm/mach-omap2/pdata-quirks.c:578:1: warning: no previous prototype for
 function 'pdata_quirks_init_clocks'
Message-ID: <YFsSnHVIfuRoAxG0@atomide.com>
References: <202103240642.vvusWJ8u-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202103240642.vvusWJ8u-lkp@intel.com>
X-Original-Sender: tony@atomide.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 72.249.23.125 is neither permitted nor denied by best guess
 record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
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

* kernel test robot <lkp@intel.com> [210323 22:10]:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   d949689e7383cd5271470f2b99dbe2fd3199bffd
> commit: a15de032a72d511431294331f4bb47245f18b801 [2194/6512] ARM: OMAP2+: Init both prm and prcm nodes early for clocks
> config: arm-randconfig-r035-20210323 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 78a65cd945d006ff02f9d24d9cc20a302ed93b08)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=a15de032a72d511431294331f4bb47245f18b801
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout a15de032a72d511431294331f4bb47245f18b801
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> arch/arm/mach-omap2/pdata-quirks.c:578:1: warning: no previous prototype for function 'pdata_quirks_init_clocks' [-Wmissing-prototypes]
>    pdata_quirks_init_clocks(const struct of_device_id *omap_dt_match_table)
>    ^
>    arch/arm/mach-omap2/pdata-quirks.c:577:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    void __init
>    ^
>    static 
>    1 warning generated.

Thanks for the report FYI, I'm applying the following patch to fix this:

https://lore.kernel.org/linux-omap/20210318135649.1286347-1-weiyongjun1@huawei.com/T/#u

Regards,

Tony



> vim +/pdata_quirks_init_clocks +578 arch/arm/mach-omap2/pdata-quirks.c
> 
>    576	
>    577	void __init
>  > 578	pdata_quirks_init_clocks(const struct of_device_id *omap_dt_match_table)
>    579	{
>    580		struct device_node *np;
>    581		int i;
>    582	
>    583		for (i = 0; i < ARRAY_SIZE(pdata_quirks_init_nodes); i++) {
>    584			np = of_find_node_by_name(NULL, pdata_quirks_init_nodes[i]);
>    585			if (!np)
>    586				continue;
>    587	
>    588			of_platform_populate(np, omap_dt_match_table,
>    589					     omap_auxdata_lookup, NULL);
>    590		}
>    591	}
>    592	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFsSnHVIfuRoAxG0%40atomide.com.
