Return-Path: <clang-built-linux+bncBAABB4XKV74AKGQENZV2IVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-f192.google.com (mail-il1-f192.google.com [209.85.166.192])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E62E21CEFB
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 07:47:31 +0200 (CEST)
Received: by mail-il1-f192.google.com with SMTP id o2sf8821523ilg.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 22:47:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594619250; cv=pass;
        d=google.com; s=arc-20160816;
        b=XAMwhaaN2UCUUn6Xm0UJnTGvONG0KIl4/1Znu00iheU75ZhWo+S/Fyngk1HX0TyMkK
         ZaxPcEMhnkiESezS4sqMcZZuuOZzkjoeOVA7QFdljMpceywKw/vta+G46Awkb/ZEPF/c
         xgKYXotFKkhqyst4eXRsba6PVq0U+Yv9OlFDVz3eHS/11e8/mcKZLJG//rRN6+DTjRF7
         +2E1+kTgTzi+Rg6lQC3oknm0sTShRuMfDdhwn1Un3DTC9fe5Eof12zE7/RGv2umke4HV
         wVUqh6e9ZBRsXhKDpYjwaIE8Iys1mrxxlax49RT2PnSm1pJbukdwJEJ+XUWxDbugypmU
         HoJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:dmarc-filter:sender;
        bh=Kpj4Y9WHXQbDmtIUbCJZj0KXADMczIrnlp0rIPHflu8=;
        b=oXYRNnGcEZaRJtn4m4WYfuuRdK14SlPr8Qlht+A1cea+ngyy7ywzvcu2/i59R+xX9h
         SZboLs3Aap4S+dXgsUWKIuPqjluBcB++X9rGB7jL2ZPGmyaWxM8K6woPBVI7oRwcZ/Ub
         jX9mTQt0XnXYnoJGk9F0cEOIe4OxJR9srG6M06o3pVyOXukeskQOhA6ks9Gp1Q7Vx0jm
         m2fJNuASePgkOiTy4sBn6NBY9QJKb+c2q5jnlje89xDTw4oalPtwbzUuCf0j8QKIK7Jd
         sS1HoBwh1CktSYHcCIwwgd+93OGx74vMGSYyoqevOzgQ4/u7MQROYQA7sn8LH8U+L4+T
         PKFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b="wJ/lsVIf";
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.29 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:subject:to:cc:references
         :from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kpj4Y9WHXQbDmtIUbCJZj0KXADMczIrnlp0rIPHflu8=;
        b=OtsPnegWwbpBXoRcfPrvWuJXMyAcJmkpX0DVhgxxgk1QLyVtVlrU+dTb4vWbkf5zeO
         73OGe53aa8KENZz0xJYwnozW9IoqAXDUd4UpSBzNZGFsSAs9OAZilCPqtYEpa7Zwc31E
         82tV4jzeOqnDjPXhwzlDYdnIxUPKQxhfya14fmXMgJru/zGs6rr3j5/5FjUiqOxv7AL0
         6tIh+cx0cgm73wL8jf5VcYMgjbnFjkEkchen0qdosBVfgsCvxH+1fOrKf9X2x1PhRBc6
         99IzOvCoNGnsZZ89zFzedRdC93x1ACL3ODhNFV2nV1bJs3yjQbJPDf2YiPW/kN3rzp6p
         Gqww==
X-Gm-Message-State: AOAM532LICugcbVSmzswMObMF+Drtuu9CKVfEudMgp2TsJcgzzok9ZWx
	y8eu+jEuuNuIDsKgtO+LtdE=
X-Google-Smtp-Source: ABdhPJzUx1MIp8PbUHm3MF/FbYIDlbiQXvyI2sJKN/9sKbFbdmC8EaY0AuEuNv302LonW5MlTc6JtA==
X-Received: by 2002:a6b:c80a:: with SMTP id y10mr59182986iof.67.1594619250340;
        Sun, 12 Jul 2020 22:47:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9a89:: with SMTP id c9ls3910739ill.7.gmail; Sun, 12 Jul
 2020 22:47:30 -0700 (PDT)
X-Received: by 2002:a92:4a09:: with SMTP id m9mr65456524ilf.79.1594619249961;
        Sun, 12 Jul 2020 22:47:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594619249; cv=none;
        d=google.com; s=arc-20160816;
        b=En1upxl4VqQ4X9z7NJOGyXWIZMslciNDfM9L5/VqIgsuyZJIeBgd3lEFLuNTgsSzok
         5n3WWzTXquNoyp9GiOgDcnvFUIQlEOI7d1URxSIJ1q0KcpHH8f7z28GPgUHbYbeikwcr
         JVxcXgP+pNCSuAfNUx3OvqO+b9bWK65XziXvnMrqqrCYXWH7lx61t9JDYQiHB4D/pPrT
         prO6wOWzujoDhMY4SSWdY4GnqfUO8/dLMLIf+mL7Kr0LHePmHxn3ggkVSwY7lunP2SY/
         8w6XTFaHTyVU/2nsZMaZxupnJ2WBqulh62MBSYCPzJ9KlzXAKuDIAukhPcuOYnIsV+iT
         Tt7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dmarc-filter:sender:dkim-signature;
        bh=giZv+9y7LNQMJTKXeaUBWSz3WRz84eCYj/TBVuNbEGY=;
        b=toe/djIlP44dyUdTBWJwXwTcEAkmkFJu2XxYjwgQULcvA8F0jgrkDdiED/OeA1lLyM
         QDTc1I4WpBVmJKq4J3ZlXRGCV10oVRnTN4Pt4xb9vhrsCr3K7XT8ZjDqOlUD5vK+FNlV
         I29Jlhy1p0D0cYKuOjExabapQdS1t/kV6KtyW60E+YfIk+gbnz7HC6cAvkhS/QVJiEY5
         3MHzxmyAUL8TPBs7n5F2KojkhEfPWMECU3RgO9ieDSQzc3wXXCr68vqKZfrddf4Vo0qP
         E1czLEJM4NmM+/oRVytPp3RgidvNiBzWDB2McG57HlPBt4CagQEY61tETt38C9ogVTfb
         rg+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b="wJ/lsVIf";
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.29 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from mail29.static.mailgun.info (mail29.static.mailgun.info. [104.130.122.29])
        by gmr-mx.google.com with UTF8SMTPS id b17si289382iow.2.2020.07.12.22.47.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Jul 2020 22:47:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.29 as permitted sender) client-ip=104.130.122.29;
X-Mailgun-Sending-Ip: 104.130.122.29
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n10.prod.us-east-1.postgun.com with SMTP id
 5f0bf5707c8ca473a89f62f0 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 13 Jul 2020 05:47:28
 GMT
Sender: sivaprak=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id EC176C433CA; Mon, 13 Jul 2020 05:47:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,NICE_REPLY_A,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [192.168.0.101] (unknown [49.207.129.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: sivaprak)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id BCE14C433C6;
	Mon, 13 Jul 2020 05:47:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BCE14C433C6
Subject: Re: [clk:clk-qcom 13/14] drivers/clk/qcom/gcc-ipq8074.c:4610:30:
 warning: initializer overrides prior initialization of this subobject
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Stephen Boyd <sboyd@kernel.org>,
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
References: <202007121820.EgK6NAy4%lkp@intel.com>
From: Sivaprakash Murugesan <sivaprak@codeaurora.org>
Message-ID: <f304b312-8034-5838-4ffc-e0fcbe8136b1@codeaurora.org>
Date: Mon, 13 Jul 2020 11:17:22 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202007121820.EgK6NAy4%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: sivaprak@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b="wJ/lsVIf";       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 104.130.122.29 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Hi Stephen,

I see that you already applied this patch on clk-next,

shall I provide the fix as incremental patch?

On 7/12/2020 4:04 PM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-qcom
> head:   b4297844995f380588e6f935a2f98c399129a9b2
> commit: f0cfcf1ade201dcfd3365f231efc90e846fa46df [13/14] clk: qcom: ipq8074: Add missing clocks for pcie
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 02946de3802d3bc65bc9f2eb9b8d4969b5a7add8)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          git checkout f0cfcf1ade201dcfd3365f231efc90e846fa46df
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f304b312-8034-5838-4ffc-e0fcbe8136b1%40codeaurora.org.
