Return-Path: <clang-built-linux+bncBAABB6FORKCAMGQEK6424KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-f59.google.com (mail-vs1-f59.google.com [209.85.217.59])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC42368FB3
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 11:46:33 +0200 (CEST)
Received: by mail-vs1-f59.google.com with SMTP id h1-20020a67b7010000b02902085e833adesf7981833vsf.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 02:46:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619171192; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vn2i7/MiGoF91WSAFy5opafBNX+JWRa3VgFdAtQQEop4qhzEWvwunEEdT+mv4alVIG
         tzdkrU5ws92Kxo1jVhdthQQVn/icEq4eWoMvP9etMpBhtqUnG0B6lLSBn3M648y/lCvS
         K2dRNctZ8CcRTu2DSJf3wUScNuWKn58Oei371wRRkjURI0I+uUIl+k3HvrCRrEJ4+ttv
         A7Xs6W65hhHLXVz25PNTjpnCpGjhFVVOYpkH45R19zOlM+lqun04aYJFNSyb7q9JZmgg
         uxUvLae4SS96Vtpq+LvsYDC4HHR4rwhMHJO88+UdyitmExAXVEsToX2QFmoSmG00F/ss
         9xXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender;
        bh=gfuoIulFRsMOfXRPRJ0/LT/Tk0fIj1u6OWEs57JiKBM=;
        b=VAUXdTL9bM7vNtgHMNS9iBQxVmuLe5et7DormXfDiHdExq+NPX2XgQr3aW0W/YQfK8
         OqSkRLHkdBZ+lgafCpuC+Xo13PHBYQgrqluR12MLg4XteKUFeTEje6mbuNtOum2Lm5Tu
         pHh7DfZfIMkmcs9Vrwtx0cWXlsyDHE+DLRA7wiTeLi52NjBwKzwTSp0iDLTH1twsOtrs
         MqlvtnFWCGEMLNzxX8FPN6jT3RS5fiLefl1HmmBf0bszNjW+8vaj5EmhLuYBBcHDlQ4H
         hiu085Y/bMaTcSDjxnGnNC65/bgKdAAbjvMPkrX6wciWvNpA0sASjpLF72ZeEcBEBpNq
         AeaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=emkyQK6h;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:mime-version:date:from:to:cc:subject
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gfuoIulFRsMOfXRPRJ0/LT/Tk0fIj1u6OWEs57JiKBM=;
        b=S729c1sx/WwbsuJUePRLFx8ZWoSIflgrSbfhhbyujEUGy1l3XqLrD8RXCzb7CziNeN
         66l398kw6AMLGaNy+7fqFq+6KCcHtRsOCbZ82uAl6ALhpxpvjGPVLXoOFAVRtrvmBGIu
         gRwCWIj3g4W+DDle3/PZJDDC9yy5LXLeNm2qgM0BgOvAVK1048t0HoV4KpxSr3e/V9bB
         8elqF2lIwks0ObLvsJRUkkva75DjXWFZ6Ef3W3o/UATlFzSvPG5QIPBKGbNUHUQh3AW4
         0/VBnF70NFoZdYmEgusHhf7BZmqN3JK2aUblzaEWLuzh7ZpDKhWFGQadqkYpKG3NDdQQ
         msHQ==
X-Gm-Message-State: AOAM531NrFJ9hAUzXsSbDtaFTHC+5dN7HMtlJbeO2RX/3K9kmTWbYJy/
	OEOPlvGX4tn6PPFerk3ov7g=
X-Google-Smtp-Source: ABdhPJxBvPxBPnPJF5ieg7B9CW9jS1LMRPa3x5jCgAnTscUF/MW7E9RDSCrOJOFNcQbo0jE3otG9Uw==
X-Received: by 2002:a67:efd1:: with SMTP id s17mr2554474vsp.16.1619171192115;
        Fri, 23 Apr 2021 02:46:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:3093:: with SMTP id w141ls1454311vsw.1.gmail; Fri, 23
 Apr 2021 02:46:31 -0700 (PDT)
X-Received: by 2002:a67:efd1:: with SMTP id s17mr2554467vsp.16.1619171191636;
        Fri, 23 Apr 2021 02:46:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619171191; cv=none;
        d=google.com; s=arc-20160816;
        b=jGhzyXXF436qSkZXoUYKCe1JuNqjYgcjTFrhukLcvUPI49ymUeMW4AMNjSJCX0ekA5
         PMVRLZ+FS/faMU31T87CQIchPVK3yU9Iav3u7rqBI8iOejZRjUkgB5zXkxPSnZibNRl5
         LkWdieLfO7a+H+Iu5Jf70dAu9xtVyoHLbUcPlX3RkkysBNpPDPlvDPlQw2oRqyY3/kRw
         7/gH9lU+d9laaIz+yXvI8eU7v1FZc+o6ZpUNLUIeWJpUb/Hlm3CrB0dpTkqEv0ce3TYz
         QulZDBHUlQ1Kji/M6U3AURX/UAkHZYZw33iNatjxB7rOOkMuOMS/mDhDP+3z5yUaH/i1
         SvUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:sender:dkim-signature;
        bh=Y4r/sBksddih4An+rVdi9oFleJsyckug23va/2vBzpA=;
        b=Sye8bbiwVH6V4ahmqV5MphIIKC5/spEKo1cqZ0r0kIYCK7jabTQmxUwGz7BURVAeOf
         noBh5FYanwh8UvfMakFXZEnX1mXZalAM+b4UhTtzbO9BYovMVp6j+qXxh424nKMuhx64
         WfAlZ5yrSaXPUpxpdol3xKHSgqdAXokqKiEjJXHMAY5RKefSXPTcBAnQUSccNv/gcVy+
         TV21IYODvWgtKMsIKAHvmKB/c+bSksWyI58NrY0f2R9zUfa8SqGUkgMLhScYnA1+tjwC
         zqlzMQ/YfLY5i5qm55gITIcS7U2dPp/6Cd+v9mwOllF7yFwYeAGM558X77X20d35sFeT
         XtNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=emkyQK6h;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from so254-9.mailgun.net (so254-9.mailgun.net. [198.61.254.9])
        by gmr-mx.google.com with UTF8SMTPS id a6si488471vkh.0.2021.04.23.02.46.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 02:46:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) client-ip=198.61.254.9;
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-west-2.postgun.com with SMTP id
 60829772e0e9c9a6b63dce8d (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 23 Apr 2021 09:46:26
 GMT
Sender: rojay=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id C7488C43217; Fri, 23 Apr 2021 09:46:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: rojay)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id C3513C433F1;
	Fri, 23 Apr 2021 09:46:24 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Fri, 23 Apr 2021 15:16:24 +0530
From: rojay@codeaurora.org
To: kernel test robot <lkp@intel.com>
Cc: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rajendra Nayak <rnayak@codeaurora.org>,
 saiprakash.ranjan@codeaurora.org, msavaliy@qti.qualcomm.com
Subject: Re: [PATCH V2] arm64: dts: sc7280: Add qspi, qupv3_0 and qupv3_1
 nodes
In-Reply-To: <202104230503.T7HqjQbJ-lkp@intel.com>
References: <20210422150556.450-1-rojay@codeaurora.org>
 <202104230503.T7HqjQbJ-lkp@intel.com>
Message-ID: <6950c9c7b54892b2a8e81915743431ea@codeaurora.org>
X-Sender: rojay@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-Original-Sender: rojay@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=emkyQK6h;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

On 2021-04-23 02:52, kernel test robot wrote:
> Hi Roja,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on next-20210422]
> [cannot apply to robh/for-next v5.12-rc8 v5.12-rc7 v5.12-rc6 v5.12-rc8]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:
> https://github.com/0day-ci/linux/commits/Roja-Rani-Yarubandi/arm64-dts-sc7280-Add-qspi-qupv3_0-and-qupv3_1-nodes/20210422-230756
> base:    c457d9676496f5a895509f9c510278beaaffc829
> config: arm64-randconfig-r012-20210421 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project
> f5446b769a7929806f72256fccd4826d66502e59)
> reproduce (this is a W=1 build):
>         wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         #
> https://github.com/0day-ci/linux/commit/78ed1b1d4c9f34dd06ae4494b78d70334fa8d7c1
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review
> Roja-Rani-Yarubandi/arm64-dts-sc7280-Add-qspi-qupv3_0-and-qupv3_1-nodes/20210422-230756
>         git checkout 78ed1b1d4c9f34dd06ae4494b78d70334fa8d7c1
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1
> ARCH=arm64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> Error: arch/arm64/boot/dts/qcom/sc7280.dtsi:325.31-32 syntax error
>    FATAL ERROR: Unable to parse input tree
> 

This error is due to "clk_virt" node parse issue which will be defined 
in ICC patches
https://lore.kernel.org/patchwork/project/lkml/list/?series=488429
I also mentioned the dependency in the patch.

> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6950c9c7b54892b2a8e81915743431ea%40codeaurora.org.
