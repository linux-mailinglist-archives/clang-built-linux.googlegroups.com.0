Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6NH3H2AKGQE5CLJDQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F43C1A8FAE
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 02:23:23 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id g198sf11796738oib.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 17:23:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586910202; cv=pass;
        d=google.com; s=arc-20160816;
        b=pA7cRm6wwxxq3fdPXUc9lGPA2r76gXhKJB3HIXVCpnwF7umWk4YxZFap8bkOzwjfgE
         fCJ4NoLoAfM8DxrBkF4+pHlCc4NDvTjoVbFogYr9H+7YPHM8XYM7zQ1BEFEeH4uTd+r2
         33JfMfWOWayObFelhsRlujTUi1o6/7u+A996ZfzGrdGfUlaEgPqddT9w1RV1YEqQX34M
         QJjn0MSTGTImxqZWzfuq7zsla0vzB+tJ5OVijbCpBOYPiaOenonT/61+IVrpiKnJXGlW
         7Rdb6/729NqWR23VLbO0bgtb3rOpJ+6Q2EgxW5reEl0lOFTMbQu7u0PTu+ylC6hqqxm0
         wi3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=35UrL5yy4QHxXm1BDvRsb6PzyybKJ7X8Hp43GLy10/s=;
        b=wKMn1NWryHZ2ZQXzzjfE86haPPEj0EikduY/AK8l4vMjw55Ba2p+DlBK7KfTOBoTGi
         bS563XQHId+MoNMk7aEYJHqY4DINl4fr919ZkfJOismD9Hb5ORBeJvLZDdGrTwkXG20y
         mGwYo9l3IKX6Hk8EWMQ1PNV4nMki7yvG/lfV19QhAwXuR2FVKWBm3cYoNO7uF/kOwDyN
         vtYoyxKrAoqNfnNsvO8zvJghU+hlK/jMRP5tPM+eiFi6NinEqXyBd4ojLfdQfi9oJu8Q
         C86YGOlz1Zi0Xyr8XHyaX++Ao2qgvLh/YH12KlCvxKdaWt01bRywntJS0cJT0JBlw2Mq
         qDxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g3voW37J;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=35UrL5yy4QHxXm1BDvRsb6PzyybKJ7X8Hp43GLy10/s=;
        b=hP+Omy51qsubabeg4jHQSZoyAaZG2viUJobhloJM0lGPy2SGX41QcNBezm3ClS6HPd
         n4Zq1F1TkAzqkhIMZzlQ/BrfsLLrN+5uV7eJ6OGt2bbK8iDkLlM+qxq9QWrvopiPAptz
         7j+GePW+G/u4y+3WWrJJVGHG0lQO1MiJxQIbtd13qVsZ7qY43Br0OOTXt7B6dF5n6cSK
         36XAKBn0ntXWVDnv0j42tvcLGHR1ixUfMOdn5cGwp7UWOKuuBHcwWENI84htZzChTaNY
         sl3R/LnJngVFkyRBspSITbYH+ITYZrJt9MVNHXHZBypUV3m49LPg987ffI+D/iVhckua
         4wew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=35UrL5yy4QHxXm1BDvRsb6PzyybKJ7X8Hp43GLy10/s=;
        b=d56u6vzz2f4vcFFwqQ4soOP/Ub3lrLwXUoi9KuxHdHysLlnKKF15pNZLvPwRr+GkKM
         eKzf4jdvsyytPSwJG9MZnpvniNqGkje4ZU4/c43JdF4X3QxgWgpCOfmlnwxt60FqPBc/
         zto0HNRdR89zihus/3ITrqajWhWGvdV2pt/ds9nnK+X0ZnmUechkcDxzlG7790ItV+Ub
         JGwR8ofyx87B6Djgq2g7OlGTUj6B1omWNXJfn9xjcsJyDxSYt6Lt1SPDVdSHGEYAjMSd
         mrNAMAc66NC3obb3CluiYsy9fFknnGi8pHFKhq/9kATHsGeRO8SPHN7MQLpvvlO/hMng
         GwrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=35UrL5yy4QHxXm1BDvRsb6PzyybKJ7X8Hp43GLy10/s=;
        b=SfOOrLfHeWDiRdpEOiHddEmvtAfEnPQ94wbCcDascMQhvL0Sj5E8XXT7nnHml8ixvq
         FqZUk8qZlLwvqrkIbjhaxWk4t5bjp/Y/FXnEx2/iGoBzY/itk6SPx824ulV3dpXOTThD
         LjhzaNAZqlIHmoKxmUqdiEIAT2SO5EQxlgH6IhWzy6p8QH5d7Au3vJepv+IFEIuubyNg
         fz8SSmITanQGSkSWEs2KF8i7KIv/ZrRoSFXeZW77ovnZhvnHjHgyPu53wFKdvfEFmceW
         N4PQaBogIY/mZ1UieJklwSwOiFGkoPPxgC7o+kh5HikfoHtV1zrXZL17i9TyOCuuSHWY
         N4pw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ6jFO8++0seV3TMmaN9/j/+vTupYt3RqgDhIUsZstL1ieLQJvT
	Xm91oHXU0cIHxE+PBLrVrEw=
X-Google-Smtp-Source: APiQypJZZslxJ6wauY0AUEYO8epYAAXc+i2h1r6kbVB/Y23CwVszRXXwWXJReZZbRiAXh96AbdeuUw==
X-Received: by 2002:a4a:b981:: with SMTP id e1mr20698170oop.5.1586910201289;
        Tue, 14 Apr 2020 17:23:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:d0:: with SMTP id x16ls701084oto.9.gmail; Tue, 14
 Apr 2020 17:23:21 -0700 (PDT)
X-Received: by 2002:a05:6830:225d:: with SMTP id t29mr10680014otd.86.1586910201004;
        Tue, 14 Apr 2020 17:23:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586910201; cv=none;
        d=google.com; s=arc-20160816;
        b=UdNKko+aEiPRfb5Jv91W62rit/RecdxrbPU5DYL+93UknD5l4B+MgBWfuLaJEaCF5n
         ruLE2Z/Kdyg8UJjpE2TMysE1kN69UH17ejxT3jHDFywLjPasiGoRVgF1nojb+G7t06FU
         Y2rxwsyrOk3Ts4qQNsTDBIGLqESDiikV5KI2puLg7vfrxLzaxzCkS7SeDHYwjwegEjCC
         NSZaSRDH4dcnLqIb06DCUEcRYMCS3+sJCtDrmtiCe5p8DXlPE++M1ptGm5GMnuP5Q0ld
         D4CQQV8wXw4M/lJXRdLNwLyLrGHSlZEKj5Xi+QQaryZ3+TSfDk11hmyfd8LhSDvNRBvb
         aYQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2sLgLm+ZLoSuSHVvwjtfsskmTZSdwuj5lA5a9cyNhLM=;
        b=M5R8HUJusQAVuPlhfF9sV9nCvV/fGqtvqcP9nATo7mMjmQ7cChpwqaL0YVclq9TFR5
         bT2ze/Xz4H6X+x3QmW7mm11JMq2CbaZP2Mc5r0/drANzGJI8dn2IAo8xTYoKz/C8zEGy
         c6I4s7ekz6iGeF1/hSrJEmES08Uiel+HC7lMhHv/YiC88S2azoGIOZ5xPhdU68TrmN4q
         QmSq8mpmDcaxW5vq1P8vAE+fHuQvDsxr4k4n3jCXhfl6Fq102oNZduDxOI6YRXp6ojOc
         /RKpofvzSd9CZga6A1TfUU1iWnknyh3uGtT5fYjo3sIK46Re7YF7pq5q5K4p73A9rKeG
         yRrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g3voW37J;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id q18si608951otg.4.2020.04.14.17.23.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Apr 2020 17:23:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id i27so1669027ota.7
        for <clang-built-linux@googlegroups.com>; Tue, 14 Apr 2020 17:23:20 -0700 (PDT)
X-Received: by 2002:a9d:12ce:: with SMTP id g72mr20631837otg.350.1586910200506;
        Tue, 14 Apr 2020 17:23:20 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id c81sm5741328oib.35.2020.04.14.17.23.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 Apr 2020 17:23:19 -0700 (PDT)
Date: Tue, 14 Apr 2020 17:23:18 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Gibson <david@gibson.dropbear.id.au>,
	Rob Herring <robh@kernel.org>
Subject: Re: [stable:linux-4.4.y 9934/9999] drivers/scsi/NCR5380.c:951:124:
 warning: for loop has empty body
Message-ID: <20200415002318.GA19509@ubuntu-s3-xlarge-x86>
References: <202004150618.znZ0faWy%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202004150618.znZ0faWy%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=g3voW37J;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi all,

Sorry for yet another convergeance on this commit... :/ hopefully this
does not continue for much longer. None of the warnings are obviously
caused by the patch below.

On Wed, Apr 15, 2020 at 06:02:41AM +0800, kbuild test robot wrote:
> Hi Dirk,
> 
> First bad commit (maybe != root cause):
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git linux-4.4.y
> head:   10d9c6f92756c1b9049e409cd5e7faed40f95294
> commit: ce513359d8507123e63f34b56e67ad558074be22 [9934/9999] scripts/dtc: Remove redundant YYLOC global declaration
> config: x86_64-randconfig-c003-20200414 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f3da6b7ab5698bb0b9bd208972115dbcbbc59f27)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout ce513359d8507123e63f34b56e67ad558074be22
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    In file included from drivers/scsi/dmx3191d.c:52:
> >> drivers/scsi/NCR5380.c:951:124: warning: for loop has empty body [-Wempty-body]
>                    for (tmp = (struct scsi_cmnd *) hostdata->issue_queue; tmp->host_scribble; tmp = (struct scsi_cmnd *) tmp->host_scribble);
>                                                                                                                                             ^
>    drivers/scsi/NCR5380.c:951:124: note: put the semicolon on a separate line to silence this warning
>    1 warning generated.

Fixed by commit 32b26a104237 ("ncr5380: Use standard list data structure")
which does not seem like stable material so we'll have to live with this
one.

> >> drivers/scsi/mpt3sas/mpt3sas_scsih.c:2393:20: warning: address of array 'sas_device->connector_name' will always evaluate to 'true' [-Wpointer-bool-conversion]
>                            if (sas_device->connector_name)
>                            ~~  ~~~~~~~~~~~~^~~~~~~~~~~~~~
>    drivers/scsi/mpt3sas/mpt3sas_scsih.c:3128:19: warning: address of array 'sas_device->connector_name' will always evaluate to 'true' [-Wpointer-bool-conversion]
>                    if (sas_device->connector_name)
>                    ~~  ~~~~~~~~~~~~^~~~~~~~~~~~~~
>    2 warnings generated.

Fixed by commit 869817f9e92e ("mpt3sas: Fix static analyzer(coverity)
tool identified defects"). Seems fine for stable if Greg wants to take
it.

> >> drivers/net/ethernet/via/via-velocity.c:1731:14: warning: address of array 'tdinfo->skb_dma' will always evaluate to 'true' [-Wpointer-bool-conversion]
>            if (tdinfo->skb_dma) {
>            ~~  ~~~~~~~~^~~~~~~
>    1 warning generated.

Fixed by commit 46dfc23e9e08 ("via-velocity: remove null pointer check
on array tdinfo->skb_dma"). Ditto.

> >> arch/x86/kernel/cpu/perf_event_amd_iommu.c:36:30: warning: tentative definition of variable with internal linkage has incomplete non-array type 'struct perf_amd_iommu' [-Wtentative-definition-incomplete-type]
>    static struct perf_amd_iommu __perf_iommu;
>                                 ^
>    arch/x86/kernel/cpu/perf_event_amd_iommu.c:36:15: note: forward declaration of 'struct perf_amd_iommu'
>    static struct perf_amd_iommu __perf_iommu;
>                  ^
>    1 warning generated.

Seems fixed unintentionally by commit 25df39f2cfd0 ("x86/events/amd/iommu:
Enable support for multiple IOMMUs"). Does not seem like stable material
so we'll probably have to live with it.

> vim +951 drivers/scsi/NCR5380.c
> 
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  929  
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  930  	/* 
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  931  	 * We use the host_scribble field as a pointer to the next command  
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  932  	 * in a queue 
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  933  	 */
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  934  
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  935  	cmd->host_scribble = NULL;
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  936  	cmd->scsi_done = done;
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  937  	cmd->result = 0;
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  938  
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  939  	/* 
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  940  	 * Insert the cmd into the issue queue. Note that REQUEST SENSE 
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  941  	 * commands are added to the head of the queue since any command will
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  942  	 * clear the contingent allegiance condition that exists and the 
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  943  	 * sense data is only guaranteed to be valid while the condition exists.
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  944  	 */
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  945  
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  946  	if (!(hostdata->issue_queue) || (cmd->cmnd[0] == REQUEST_SENSE)) {
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  947  		LIST(cmd, hostdata->issue_queue);
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  948  		cmd->host_scribble = (unsigned char *) hostdata->issue_queue;
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  949  		hostdata->issue_queue = cmd;
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  950  	} else {
> 710ddd0d50d22b Finn Thain     2014-11-12 @951  		for (tmp = (struct scsi_cmnd *) hostdata->issue_queue; tmp->host_scribble; tmp = (struct scsi_cmnd *) tmp->host_scribble);
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  952  		LIST(cmd, tmp);
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  953  		tmp->host_scribble = (unsigned char *) cmd;
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  954  	}
> 52a6a1cbd9615d Finn Thain     2014-03-18  955  	dprintk(NDEBUG_QUEUES, "scsi%d : command added to %s of queue\n", instance->host_no, (cmd->cmnd[0] == REQUEST_SENSE) ? "head" : "tail");
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  956  
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  957  	/* Run the coroutine if it isn't already running. */
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  958  	/* Kick off command processing */
> c4028958b6ecad David Howells  2006-11-22  959  	schedule_delayed_work(&hostdata->coroutine, 0);
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  960  	return 0;
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  961  }
> ^1da177e4c3f41 Linus Torvalds 2005-04-16  962  
> 
> :::::: The code at line 951 was first introduced by commit
> :::::: 710ddd0d50d22b40e3b644ea35966489ad178978 ncr5380: Drop legacy scsi.h include
> 
> :::::: TO: Finn Thain <fthain@telegraphics.com.au>
> :::::: CC: Christoph Hellwig <hch@lst.de>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200415002318.GA19509%40ubuntu-s3-xlarge-x86.
