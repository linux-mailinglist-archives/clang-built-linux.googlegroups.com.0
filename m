Return-Path: <clang-built-linux+bncBD35N45CXILBBXGI5X3AKGQE7JBQBSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-f58.google.com (mail-io1-f58.google.com [209.85.166.58])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1C41F05F1
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Jun 2020 11:39:42 +0200 (CEST)
Received: by mail-io1-f58.google.com with SMTP id p8sf7365450ios.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Jun 2020 02:39:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591436381; cv=pass;
        d=google.com; s=arc-20160816;
        b=vbzRsxznyOvOOgAne413dEIykgSdGkzx0QwWCQ4On5dQiGWvbTA3HIztSo2aiZ3jRU
         XL84fTpnoOatxeJLwacBiC6yBeyDinW/Es9qJzhfTL+w3WKAzB1oys6zwGgF4+xpyJMW
         ze04OerzwWKxNWz17MaPXQ00Wgqd8uIie25sTFWkTBuLr9GelDMfHxFAn0QN7ZeJHcQk
         OlbaRQiH9z1trCeSUXjfwE9ODsI2zVQMF7vrjCNfOJ8YRP6SqHrtygSy8+AyVSDvJUq+
         Mzm61c6b9GuI5nzDxWU2FzMkU5n/BgEeJS6T+nMRcp599j30TS4o1ppw+mi3YREE2ir3
         Tuug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender;
        bh=RyYfB86DL5EuDWUB3nZPW61SzquJo4MD0C8PHRAT1FE=;
        b=SOFHmI54CyI6S7gzG93oQLbLTTpk1MAl8oRK/+5z2nSI+KORCyt0F6fxKWri9VJxa5
         PpJUvPX/94ngN5mnpJNWPyfghtzEsfyqOyYuVKifXBXXy9H2S2fKLv5FnsdL2ZUhhT2e
         PXRLwHSDwm93u63qrAUL2XFZy+2/EKcuiRIurqi8TSeJslqgB9qK/8Y2NsToo9wRwOg5
         IrSpBLW4t4p+jbN+iBljAQm+NmAmcNvxhMba9bbSJNtVfqgRwDCL2mMMd5c8ULWuksoU
         KkDPD/69tMApVwPmPX65drPSD9cVZjL1faUJr660aL1lgWiwnnD0sdRdUoUD9OPLSmuF
         MnDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=AAZgxfKh;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.27 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:mime-version:date:from:to:cc:subject
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RyYfB86DL5EuDWUB3nZPW61SzquJo4MD0C8PHRAT1FE=;
        b=fmZh82BdTnX//QHU7IMt51+qVvxUJvboxNq/CfrIYKUlpfIe4p90o4HHqGfyLgxS6g
         45Ve/CdG+X9op2IrI3UyJWN/Z2zHP9p9XsyiIfAG375jBhzlkMTYz7WwzKCTa1OTNXDY
         Q3wP/B1ttPQ/vQ2ZJiYClWb3pfZDJyhZ6FHsqdOPeqlMgel2OD9C4yYeL37dlGs8KfFY
         t8Et2yFCXennYdhTA0qR5CK3LTmY7kVhEyZ8eNPM93R1F9AVdMk6SEXosthaQGNunKPk
         SCCtkAU0/SSlHMx3+S93KHlRw+X1CoXU4uH8V1n9gtJsTVOF1ObdFviLDAPcMQjUBPBq
         KGfA==
X-Gm-Message-State: AOAM532hxR8gcHS66FqFMxwdMR5uXSWwbr6m1zLrdeduU4KBz/WuCCoc
	reQM14PpDHbDTPX44laiocI=
X-Google-Smtp-Source: ABdhPJwS1bXiPV5IxDi3w+zaUQM3HQxWagwUbsvlEYNQvqthyFdLQyfxfhgg6a/XhqCsp/3q3thBOg==
X-Received: by 2002:a02:a392:: with SMTP id y18mr9755194jak.112.1591436380830;
        Sat, 06 Jun 2020 02:39:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c9cd:: with SMTP id k13ls3213496ilq.2.gmail; Sat, 06 Jun
 2020 02:39:40 -0700 (PDT)
X-Received: by 2002:a92:c5c5:: with SMTP id s5mr12414323ilt.85.1591436380447;
        Sat, 06 Jun 2020 02:39:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591436380; cv=none;
        d=google.com; s=arc-20160816;
        b=l/Yuya+LDyjxofA24A+W0dk9Cp6nGpiS9GlJhx3NsToDsHxidRfXg4kKbYJfpKLU7n
         6OD2BLxDMxrvEaTJKhUMH5Sn98Ij///7lWkrsyw2Z/x2TrvdVVySdjRbovVI3jhu/KN4
         XVhH5W6inriFXLpHZCaLHSczoM0Lk8dDjfW3rTL7HRNvRwAnyQI2CqQV9+u6iv7Uno3M
         AJTKwHUnMkLsYeAlT9XergpHedARmcRo9fAnnvx4Wdw/UOnRZ+VBNM9XhsaRj5TF5iTP
         jp3roQPbi5Uo5cN3zuFYFcLuLMPTiM07qt/xhcwuCxabaLLLrQ2brNVGr/tlRl4ZgJBl
         bm2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:sender:dkim-signature;
        bh=ZEaujj+NfNF8UrtIAowBnPyaKDxe8PZLC4pX9BH+NII=;
        b=uaonLOtskr28OcslrheW/VxCJWX/5mLFowt5gzYUIsXxFlK2GYAXDpSUlrz44/gEj8
         18u+OKB89/K+/tSiS2FnwovLLs47y4h/GSBERO19dAB25z25DFxwQ+q3asoxclmKuDWi
         vB08DFHrfRBUgZlXCWdRqOtneslmks5T6/JaarzjOI1dREV3PWXnBe2Np/HpygUvAfN9
         O62Zornhpshh8owL8wqQoVU+RhP8ogW2H/dUujobiMLScQ9XPlm4Uga7Gzx9xt3pDj0y
         6mV9Fca+oXnDiAfveOVsDLhQqjukmLAkmLKe+tXaAzLtQx+0M1rL61OdYiBEm/rZ+9JJ
         TQmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=AAZgxfKh;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.27 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from mail27.static.mailgun.info (mail27.static.mailgun.info. [104.130.122.27])
        by gmr-mx.google.com with UTF8SMTPS id b1si285993ilq.4.2020.06.06.02.39.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Jun 2020 02:39:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.27 as permitted sender) client-ip=104.130.122.27;
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n09.prod.us-east-1.postgun.com with SMTP id
 5edb6446e8914a8bc19b2b62 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Sat, 06 Jun 2020 09:39:18
 GMT
Sender: saiprakash.ranjan=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id E8406C433CB; Sat,  6 Jun 2020 09:39:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: saiprakash.ranjan)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 5781CC433C6;
	Sat,  6 Jun 2020 09:39:17 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Sat, 06 Jun 2020 15:09:17 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Will Deacon <will@kernel.org>
Cc: kbuild test robot <lkp@intel.com>, Jordan Crouse
 <jcrouse@codeaurora.org>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, Robin Murphy <robin.murphy@arm.com>
Subject: Re: [linux-next:master 6465/14955]
 drivers/iommu/arm-smmu-qcom.c:15:34: warning: unused variable
 'qcom_smmu_client_of_match'
In-Reply-To: <20200603152133.GA11733@willie-the-truck>
References: <202006022119.oVUnwCxU%lkp@intel.com>
 <20200603152133.GA11733@willie-the-truck>
Message-ID: <95e8e0597f716411417a8ffcfc0f3397@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-Original-Sender: saiprakash.ranjan@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=AAZgxfKh;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 104.130.122.27 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

On 2020-06-03 20:51, Will Deacon wrote:
> On Tue, Jun 02, 2020 at 09:28:22PM +0800, kbuild test robot wrote:
>> tree:   
>> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git 
>> master
>> head:   0e21d4620dd047da7952f44a2e1ac777ded2d57e
>> commit: 0e764a01015dfebff8a8ffd297d74663772e248a [6465/14955] 
>> iommu/arm-smmu: Allow client devices to select direct mapping
>> config: arm-randconfig-r022-20200602 (attached as .config)
>> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 
>> 2388a096e7865c043e83ece4e26654bd3d1a20d5)
>> reproduce (this is a W=1 build):
>>         wget 
>> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross 
>> -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install arm cross compiling tool for clang build
>>         # apt-get install binutils-arm-linux-gnueabi
>>         git checkout 0e764a01015dfebff8a8ffd297d74663772e248a
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross 
>> ARCH=arm
>> 
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kbuild test robot <lkp@intel.com>
>> 
>> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>> 
>> >> drivers/iommu/arm-smmu-qcom.c:15:34: warning: unused variable 'qcom_smmu_client_of_match' [-Wunused-const-variable]
>> static const struct of_device_id qcom_smmu_client_of_match[] = {
>> ^
>> 1 warning generated.
> 
> Jordan, can you take a look at this please? Fix should be trivial, but 
> it
> would be nice to squash the warning.
> 

Oops sorry, I am looking at this just now. I need to teach my mail 
client to not bury the cc'ed mails.
I see Jordan already sent the fix patch.

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/95e8e0597f716411417a8ffcfc0f3397%40codeaurora.org.
