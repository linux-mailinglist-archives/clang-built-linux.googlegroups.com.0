Return-Path: <clang-built-linux+bncBDJI5MPT4AIBB5NX7GAQMGQE5WFBWNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C64D32A43A
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Mar 2021 16:38:30 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id p15sf11187014wre.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Mar 2021 07:38:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614699510; cv=pass;
        d=google.com; s=arc-20160816;
        b=yzvvuY6w8N1Gs0FBCBL7Kijb1Wo5b7vrHop8CF2Xe2TxQow8OYY9sAHbtYvn7LuvRY
         NmI4HbFxvNXNOahR/8CnNNwzvz+vPx/U9uFKu2pgmWJxYD4zmYVkakAKRvl8gz/bwWPv
         7VVVjr3gtJzFrXD8WSo+5LvSDadMsO66tVvLt/uixydsE5DoDPZ0d8+Aousd9bHdIW8M
         HdxrPX52jx3eLL+eHJcJlqcLrVmKNF3tipA6OoXexq/PFRySnx7PMnCiE9FSXGhLlf1O
         pPCJmoKk2oZSYq63n3tZ3Mt4TEC7RKNzwdogKcwO4omQIXHvUhmFeujNJQULrPd8MhDO
         ixXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ye5/zCcyCmHpC4C4GuOuGzqqH4W7WmSvXYuWfRLNtz8=;
        b=NXlR5g41nORMfj/7OnyjOaDkUQG/eIYfR/1XPMIPKt+8zGgQPhi+gU7IFPJKm9jRMR
         mI8XXO+KvUZBm55x1l0fsYti5fSeEQfv1U5azm1qjQ96PnOWUR1Pfq0oyqlqKZfO76GY
         c3VypoqUx7T/EQ9S+80oRCvF3kF/O8mOc4a1Hq1epnIoyEU6a2fbLfQaA2AFCxnu5g2B
         Xf8roNcd5crpWIga9BDFs0eNfai9zgCTU1oxxfL1rha8bf4dPb7JlKmFRfrFhFvr+P4p
         BmHgT7kHz6VSTzvvO0ZmL/R9Q/OmWv4Cz60px1xGCn0Alzfdezd1z0Ku/HMizpzgG7Sn
         Z6oA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 193.147.175.20 is neither permitted nor denied by best guess record for domain of pablo@netfilter.org) smtp.mailfrom=pablo@netfilter.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ye5/zCcyCmHpC4C4GuOuGzqqH4W7WmSvXYuWfRLNtz8=;
        b=q4IT1mWL3m44frBZIauhaw8iloM2HaEw/NvE8Shw3bZTipkAbV1OKxVALN/jn6J2yG
         B+a80DFvDEHfDHLD6804PoMuOaQ4+6u1DnPU6xObLiy0+gdtaG8TOGb6kWzrHBSvAVK7
         V/1KaqGAZ9zbeuwj6m+cdwmxsPgaBG7iLarIkwFpmYkZglNwB/oAp3N5cJg5MZ/FNh7x
         mqx8bH5jmMhhZGaT6LSzZhwdUOvVrJyIUcJ6VWHMQMYflHDIIJTpwfCu0vPTH7o4E4Mg
         cok6x/OHd4nmcIkiQuTI/xNrHEjBLmxShBN6XiuHONyl0yg3vcCHGE+vJMXRqZR6X5fk
         hrSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ye5/zCcyCmHpC4C4GuOuGzqqH4W7WmSvXYuWfRLNtz8=;
        b=ShCdXPIjCmfOrwA6+xMP2bG7YMSX00h52XURtE42zGWzaM4mbtj3zSU4470RGsVE47
         e8jdXVvT0hlwyxqjT8b17QJARS/+Ao3Z2XrNCqsd4Yv0gJr2osB0tSnDVRf5kZtsR3Gj
         V08+n0WMyQ+5bpO4/LlsQUzHN0KVlxAkEbXlRo0s5/EBaiyKdFY9b6cSSTGYYCBcpVXb
         1BcmFaM1LSQwM9SyT8bcXYdMsYBLCR0iUtvwmE2oikO/IJ2ARkO3ysF4KxiDSfQYEVIT
         /wEo63c2zhzjsiN+y2o8r6UQv0QNB6PKQx5QbgiuS0+pxrtn4y2qT9oBsN6S+P2WoS4Z
         nmKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VNaZ8lcTU4uod5wMIWVEw66ag/iaHKaau/nkqpFaYT2osW3mW
	ef9aMTa0IWgp8rPUGpQ/qCM=
X-Google-Smtp-Source: ABdhPJzXZTu9HUIRSqwCNnIsKKvZ7f/BX/hThPiJ2j7zWqnMI3CSmXpp8VBMX5dHdy24hvNMmFnWjw==
X-Received: by 2002:a1c:3b02:: with SMTP id i2mr4648177wma.18.1614699509987;
        Tue, 02 Mar 2021 07:38:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c344:: with SMTP id l4ls1720168wmj.1.canary-gmail; Tue,
 02 Mar 2021 07:38:28 -0800 (PST)
X-Received: by 2002:a05:600c:4f46:: with SMTP id m6mr4593655wmq.160.1614699508917;
        Tue, 02 Mar 2021 07:38:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614699508; cv=none;
        d=google.com; s=arc-20160816;
        b=pRieuqBH74LnWO9SAxsV/g77iIO5pJDSL+IOIj+TtbJBf8y5CWQvt9niwVmO0FofiL
         TtRJhd1D/qEyEzicfU4vaYneL2zzAUfoqdch1z8tA/tBCJkM5ysUTZrH5WnAx2szfNSY
         hl+KHOcnjsGJUC1/NUQOCCfP2e/flIzbLRVUgKv5RBu85VxYI9z6A6MmfSW56A/yATyO
         AmQrBwnTqvNjVjS4FZ39BwTRbu/QFSgWzB5K8uJ8PmIM/396I58pvdczJzxVSnTOSPED
         OplP8XS/HHgLMT+G4RjGgvMZqB2WBaXRaOf6bKPooqE7rfRb5H8Rr5L0q9cOF5J3wf5h
         I/qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=epqy4jglBBaA3Fh4dyICKYqwQr1ovkAVFiz/qWO8ry0=;
        b=HG9ql+UudT8Dc3fmQn+VS4sw2zaHfF1Y6ZoqsahV2u+PPgLYgddPht2zwiwIAdLk2h
         05cW3Mpse6deFyf5Bi7Swd6+94nUIYv3oWzV9bZ7AI6pHrOiuANDzWSwhJx814FyzAGt
         nIit1Ss0TnhYW6oMXUKZC9ZUip02IaDrzeDdVF1s3peX4HjR7YZELtKDnwh4xfjbAMlx
         i7/RZ4nsFpgAX4mVVUaP0LJrpvhekjmq7z08gan5OxX1JG+NUwHhBZQrk8tZR2ansuBO
         BU9AgrcdVYjjyUsF1icA3K2ZcXYdpSy3UYfHlEd9BXlba9ALW5VWEa54dben9a5hoeQs
         IgIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 193.147.175.20 is neither permitted nor denied by best guess record for domain of pablo@netfilter.org) smtp.mailfrom=pablo@netfilter.org
Received: from mail.us.es (correo.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id y18si920914wrp.3.2021.03.02.07.38.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Mar 2021 07:38:28 -0800 (PST)
Received-SPF: neutral (google.com: 193.147.175.20 is neither permitted nor denied by best guess record for domain of pablo@netfilter.org) client-ip=193.147.175.20;
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 60EFF508CD2
	for <clang-built-linux@googlegroups.com>; Tue,  2 Mar 2021 16:38:28 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 4E4A0DA78E
	for <clang-built-linux@googlegroups.com>; Tue,  2 Mar 2021 16:38:28 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 43829DA78A; Tue,  2 Mar 2021 16:38:28 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-105.9 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	FORGED_MUA_MOZILLA,NICE_REPLY_A,SMTPAUTH_US2,URIBL_BLOCKED,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 9A7C4DA704;
	Tue,  2 Mar 2021 16:38:25 +0100 (CET)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Tue, 02 Mar 2021 16:38:25 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (unknown [90.77.255.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 7A41B42DF562;
	Tue,  2 Mar 2021 16:38:25 +0100 (CET)
Date: Tue, 2 Mar 2021 16:38:25 +0100
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org
Subject: Re: [nf:master 7/7] net/netfilter/nf_tables_api.c:920:15: warning:
 converting the enum constant to a boolean
Message-ID: <20210302153825.GA26011@salvia>
References: <202103022132.6FiROxhQ-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202103022132.6FiROxhQ-lkp@intel.com>
User-Agent: Mozilla/5.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Original-Sender: pablo@netfilter.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 193.147.175.20 is neither permitted nor denied by best guess
 record for domain of pablo@netfilter.org) smtp.mailfrom=pablo@netfilter.org
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

On Tue, Mar 02, 2021 at 09:17:37PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/pablo/nf.git master
> head:   64d075d0d3770d761018500d59dbca37b1867017
> commit: 64d075d0d3770d761018500d59dbca37b1867017 [7/7] netfilter: nftables: disallow updates on table ownership
> config: powerpc64-randconfig-r022-20210302 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 5de09ef02e24d234d9fc0cd1c6dfe18a1bb784b0)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/pablo/nf.git/commit/?id=64d075d0d3770d761018500d59dbca37b1867017
>         git remote add nf https://git.kernel.org/pub/scm/linux/kernel/git/pablo/nf.git
>         git fetch --no-tags nf master
>         git checkout 64d075d0d3770d761018500d59dbca37b1867017
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> net/netfilter/nf_tables_api.c:920:15: warning: converting the enum constant to a boolean [-Wint-in-bool-context]
>                 !(flags && NFT_TABLE_F_OWNER)) ||
>                         ^

Ouch. Fixed.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210302153825.GA26011%40salvia.
