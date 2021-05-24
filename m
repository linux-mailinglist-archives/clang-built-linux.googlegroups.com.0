Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBBBFJV2CQMGQEML2BHYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id F07E338E5ED
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 May 2021 13:56:52 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id j33-20020adf91240000b029010e4009d2ffsf13017602wrj.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 May 2021 04:56:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621857412; cv=pass;
        d=google.com; s=arc-20160816;
        b=mH+vIgiCU9dHptGpDxVbbLsDYOoAYuTv56WfGIKQuSyW1dWv10G9ZEKgEbacNK56fJ
         ZKAjxQR1dL5YK9Mj2C1g0NZOVRUIJ2GtbP2Bz16xpTCvbmiaZ1/fl23KpoYEEqK64bcY
         yXm9z4F8f2nqPE3ysMNzRWEwQluyakqexOvp7qZ5PrX9FZ40hu7TMOu45RP3AzMm+ird
         R6FwfsO6jsvaSNIioj10DcPEaCGq68oayPvsrzShrKSZO7rfaS2oSyXbXUgAAbisGUhG
         w0hkv555J4G74xgqzGGlqKQ/bSSS2O1bT+/1As8zxXXtn/0FthNfO3TVOvJinBjd/Jo6
         /esQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=VWNE0/Mpm5kd/ENXh24MqT6d0pa2SCuoOLf7+yJN9so=;
        b=TxcTrEJf0mSuDlvfn8aJk3lEyIG7rM0BYldz1vI0aEw8tBlHI7gAwY171NGDUZreTQ
         xoF642KndCTSqsCQ0URW0xtwxuxRrdI+dqkF2RAtroIhIFQ114/ZnjsZBp9r+Ywhdr5L
         EX+XBCeHnFmz760qBatSVbm/qzE3S9p1yxqRXAllzMIJSrPhQbuU/n+wPU6+dS/3+kO4
         PXnjf+0ZkX57TAXHKMV/F0bI9G5azwrlKgjVn7IRF2ScM0fzjz/YTRQDlur0zggAsTBn
         L+ZFWagdsQZCe+7EixaqaHXyJb/IWiQV3mCEu9k9toq+TqvU8Mh0ul+RHYFqaxrikX99
         VgJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VWNE0/Mpm5kd/ENXh24MqT6d0pa2SCuoOLf7+yJN9so=;
        b=bLGYCexlPOjV/mo2ui2mgnyp11UFdag0oHayndclqKjr3kUMcA9QGfjFKp4oI9/C6e
         QC+pzIwsZhOb57Rzusy/ccV0J20Ko1eQwiCssZ+pB5yqgF2IDYUFBcialJp14eY6/krS
         XgZw5O1S50Zms11cqWQaLLDz3vVKKPt4aYc+7OzafunjxQcFSih3KAP+5iFpMrRfoGEA
         X2yNNosMzmQ4jGbtxWjJF334lhyE/Qq3c5pFhn8NL6lIw8eIuKwD8D8qa0CKiBd7rk1P
         tp3v2YWl35Hhe63+KDDzsoiLDEvkAeYfVm5TfrXt5RnG7nUZMuXY3GXtQLfNFwy6g+vB
         RvNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VWNE0/Mpm5kd/ENXh24MqT6d0pa2SCuoOLf7+yJN9so=;
        b=p7WXydU13FJY0yb/6u1GH90NctyJuSITQ4P3FJRniD866WBFwTV+IpeTZJtKawl6pn
         wU3MVyl1dNKw7XZq75iT/eytVrcskrfqQ30Kk7TaKaMfTUYUNQospFRXSlWDBw1IHrNM
         rA+pKDJ+Z8Gx1Lfbc+JOZGsdHbN8oA73rQ2AmTjMKj2oOpgcMS+zROkX0/gCP+5esitg
         2JkBnl3j08nRjuBM5W8FF0axnouNopdAzpJFMvV56h5CIcgrHzp41j/g8C+tX67DaqpN
         dyxwJMxcqQO9I/3nUIiuqOBUIBerZ74wfiAXW/2cFHEhGX7EfctMC1MuOX72xcqoIAkI
         Z4fw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Vnf/OT5TPp5HSxYCjZnhMkKBDUXdJNesz2db19VKeKIBYUgZZ
	pFF1jJ9VBdLh6AhSpquuBmo=
X-Google-Smtp-Source: ABdhPJwr13D+13onoTzn8gkIpkHyfR9XFonnQHoRJ46bD6inraRXCJFpbKuUdwA9UQ89PEFhoIMTSA==
X-Received: by 2002:a05:600c:2cd2:: with SMTP id l18mr18956475wmc.142.1621857412670;
        Mon, 24 May 2021 04:56:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:4e87:: with SMTP id f7ls9725802wmq.1.canary-gmail;
 Mon, 24 May 2021 04:56:51 -0700 (PDT)
X-Received: by 2002:a05:600c:4f15:: with SMTP id l21mr19035277wmq.37.1621857411729;
        Mon, 24 May 2021 04:56:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621857411; cv=none;
        d=google.com; s=arc-20160816;
        b=D3VoJ/x6vs8pzUncGjdsrTfeAfDnUDgbX0Y+WVZMdiJSEOnLIl2LTmSXSKpjtnhnD5
         auhLMCY5kk1SaLArvUkU9l2O6vxHql0dxLhU7YSltMJwkylHGEPeBdchGcY8BrWDIeTA
         s2WwNGqiOkFDKKNSHCEOp3Pm7mixTRUTcALjN1xwqnrF20cF2ju0XroQcRsF+GpqqSVQ
         FN9Dr6ton0TbpHkw6Vw5i0X+YeUUt3n3YO+8UnrpVU30knwRqjsnXjndHhy0cnGBL5uI
         fzykkw10MgM3auSnSBOo7CkoCrmVYmTOm4sttMCnrGXqi81laMzMS0tSnxKY+y7mKo7p
         UbUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=SKy8fQhihhmRQHe2f2bhZbWxBV0JM029agaxH4s1694=;
        b=P1hxC/E9woj1teNZ6AUnFKfJZw/1dO/8igUatqgwFFs76xSG4GlhL2yv0o2w4Y7HX6
         ngGOCvtO/l+jzfvCyfpkAQavLRcXZpgPrDpXudGeOernsmKaNQdNDAMkAi4alMyNfZun
         R9PLurxzm/Ln/oailtM6XwqNtJDvY1ynmEqFqv77JfKmBRiJvMSKhOx0FMQN58bPhVmw
         JzjjgfRxcXFt/Z+Zxlh8Bs9i/xPi+uQ892QI9ZieX0sr3jzmgJ8CogF2dLtPfj59QvyS
         j6tZT2LzZgh9auJR4LiZ3+6fH+lX95rQuSiuXwjENmIxvy4Il+CbwX29EPlORVGr9E7Y
         8CMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id t1si548982wrn.4.2021.05.24.04.56.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 04:56:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy03.your-server.de ([88.198.220.132])
	by www62.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92.3)
	(envelope-from <daniel@iogearbox.net>)
	id 1ll9CO-000Anf-C9; Mon, 24 May 2021 13:56:44 +0200
Received: from [85.7.101.30] (helo=linux-2.home)
	by sslproxy03.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <daniel@iogearbox.net>)
	id 1ll9CO-000Oiq-7M; Mon, 24 May 2021 13:56:44 +0200
Subject: Re: [linux-next:master 1880/4499] ld.lld: error: undefined symbol:
 arm64_bpf_fixup_exception
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Linux Memory Management List <linux-mm@kvack.org>,
 Alexei Starovoitov <ast@kernel.org>
References: <202105240924.0g1MHKBO-lkp@intel.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <f2d7c87d-5762-ac2a-3ba6-532920369cd3@iogearbox.net>
Date: Mon, 24 May 2021 13:56:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <202105240924.0g1MHKBO-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.103.2/26180/Mon May 24 13:10:02 2021)
X-Original-Sender: daniel@iogearbox.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as
 permitted sender) smtp.mailfrom=daniel@iogearbox.net
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

On 5/24/21 3:25 AM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   8dca2cd055ffb78b37f52f0bf0bd20c249619c4d
> commit: b24abcff918a5cbf44b0c982bd3477a93e8e4911 [1880/4499] bpf, kconfig: Add consolidated menu entry for bpf with core options
> config: arm64-randconfig-r026-20210524 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b4fd512c36ca344a3ff69350219e8b0a67e9472a)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install arm64 cross compiling tool for clang build
>          # apt-get install binutils-aarch64-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=b24abcff918a5cbf44b0c982bd3477a93e8e4911
>          git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>          git fetch --no-tags linux-next master
>          git checkout b24abcff918a5cbf44b0c982bd3477a93e8e4911
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> Note: the linux-next/master HEAD 8dca2cd055ffb78b37f52f0bf0bd20c249619c4d builds fine.
>        It may have been fixed somewhere.

Yes, fixed by:

https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/commit/?id=6bdacdb48e94ff26c03c6eeeef48c03c5e2f7dd4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f2d7c87d-5762-ac2a-3ba6-532920369cd3%40iogearbox.net.
