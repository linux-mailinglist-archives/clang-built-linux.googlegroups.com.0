Return-Path: <clang-built-linux+bncBAABBRHMR36QKGQEK2XQYDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B55C2A7918
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 09:22:30 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id f5sf944412pfa.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 00:22:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604564549; cv=pass;
        d=google.com; s=arc-20160816;
        b=VZFn1ZsvBZdAw5y3z5sWZxmMuVO/rIKixtdvcznD6526XxclmqdhPv/z3ZhcQqVbsX
         fJ5jvPgc+8MxBF5OsY1Lz1usRkF/dPC5NihGQuNoqIizZ8i7wXZXoRhLg5yR4FlXTW3l
         9c1TheJdfHUqRKpzJ6JB2pL4J6foYT+koUYrnpDZ4LytdSxU+B8ivSq2hGkvJnIdgPsB
         UWMuXZYHtJ6txKDqckFAM+DaYbLJFWu4615JGmhV5ujNUhysOqYWqQmghCUj66FuvHeY
         e7/T48oZOVHD7XzserILLuuA+DVNVX3uJhX/EYzkPnk/dPQr/vcGsessyEPWbMUJgzby
         Zfsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=YDfvJh6byzoC4l0rZLbjtN9LdFV6a36zccqVUJD3mA8=;
        b=SOX4ehmDs5NdbRJsHQQ4E49Egv1nvSyyB23adEiNSQSRTBC+bOUljH4mqoJVGJnxJp
         Qcdy3QVi0dza1YCKCXCwp1F0IrCs7T3jLK8DlSAqIp6gnGEejZpkae/6NEBMJWhJfOho
         Y4LpxfXjhTldAoTxPJgjuF6d6pGRpBSJPDh3qKnX+agaof7BooEaw2b+HOo8dL7HhEv8
         Ns6y5nBzE/e8+ktedyNwsjHsqYTaT7HwXO3VqULoStYCmYvIZUuR7wLtLz6lO/YG/Yy0
         tV+U64OtrHiZYVAXpozs+mcP4ORRLTvZoM27lBuS/+Pc+J6sQCV6p9xl9heq0kwHKFJt
         Seug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=w5ov=el=nvidia.com=leonro@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=W5ov=EL=nvidia.com=leonro@kernel.org";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YDfvJh6byzoC4l0rZLbjtN9LdFV6a36zccqVUJD3mA8=;
        b=TTGUaotQ/HPp+S2AvgGW7DKcPODNWu9K3sSG2NnurfrqFKRDnM3srh98k1Mv3u6QIQ
         SKGT7c2lM2UQ0xjsMJkb05qE8YSQZBuHIPI2eTwL1DS/4gYuorNfV7TcY71FtxWd8EkU
         aySE3M6zdWEsZVh8XlVRtnRc1lHDpUTS1qxAgEZv0x0Kzd9aP/154Mm+oC/hSSFLWFI2
         oj8VHYCzdeRPOs9flWOB+VhlNym46hEst/MsMqztMQkMLgw0bqr6cyTKQiJ5zSaeFffC
         B4ZqQb6jeJ9NSQa+k+22Kr/slwE5lv379n5GubHJ/vciXGB1YMICHTRTxLQx/JRINW8P
         Ju0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YDfvJh6byzoC4l0rZLbjtN9LdFV6a36zccqVUJD3mA8=;
        b=VSqabwdyKvjlv411FeNoipj9ayKFHKKGM7mdulrq03H9cELVwE5H1qwjsVYY94PW+u
         WZiyE9wF3YLCZMKlPPcypF1C7a7hAtNKne+UbF2Sf48Fz836XnsC6tMxIDsVTpO7zVXi
         /nt3yJqM86gkBdSJnmCAYBKPnLP91YOvpLLsWc2nnNWywrXbpLJM7oR1eTbgRgYK8XB1
         K+b8A6JXlKz3zv/sCPIHgPPuU2FohH7tcK1JQJZfXpV8dphnU5W4Ge2gxp9ZSH8al72R
         4pFnGAtv6uCQ9EoUertt6d3OM6qUSJGOU9uiUT+j7eJISnVr5buKsh4hhriSmJoexFKz
         +LXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531DiV+mR3YdovvVUgdt9P4llx4dgYj0K6LxLWlinQNDIb8YrQkA
	xtSNzNas39EYRp2f/3DIgDg=
X-Google-Smtp-Source: ABdhPJzTWj+SQ4g4SnPI2SqK9BOm/7TgfEUR3349+sFXkD6QFFtD0WPPWmXbGHuOWMsa3mz3InlaWw==
X-Received: by 2002:a17:90a:4281:: with SMTP id p1mr1391878pjg.87.1604564548905;
        Thu, 05 Nov 2020 00:22:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:64cf:: with SMTP id t15ls379163pgv.2.gmail; Thu, 05 Nov
 2020 00:22:28 -0800 (PST)
X-Received: by 2002:a62:6883:0:b029:163:ee70:1e59 with SMTP id d125-20020a6268830000b0290163ee701e59mr1551031pfc.5.1604564548381;
        Thu, 05 Nov 2020 00:22:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604564548; cv=none;
        d=google.com; s=arc-20160816;
        b=Pl9MJFMKglo/7et1ixqq/OWhQZdxpR9WNX1kB13fGJ/w9T0FzJ0GfXdApwajX/ioc5
         7htLuLu/4QR1NI4+yNSKeavQCqP5w2lNaT9DMldwe6SDa3GtaBFgWwOpFenriEa3rMOr
         ypr6o2KlvyHYnuTYTTY6Dq0ii7mYv4IrwMRgK7gA40bDiSho2w8UHXjWTZmlUJzbIXaZ
         2kLBhC7qSCUTmKmbZm/YKehrJNjF4kyvcnv/uxAef17WqaRypZVCq46MAj0chDrgIGfN
         MfEmVLRujrM+r0APx2yCMSsk6gkbYco2PDvrZx4wXRIZrSkUpyg/AiFkv0LZPlyLCHCU
         USTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=ZAw+2+61/or6he2klCY63neZVXeBGu94RWnmuhR2f1U=;
        b=vcCSy3lxlR+QCaJtzmI7YwGqDaV3IR5QbTqmhfA+7uI+22mzixkFBpkhwQnm5+/0Ug
         6IEmAr9o/0zmEs6waFGPWX2Rjpih5B5zpUw/UeMyAiPT+iltzYE1+p55gW3moSnmxZqM
         5Xqpy77hEpK1sWpIai+VMTs49NCTjLJg7+ssN60ISq6h9KQQY3dgiriCgd7VHv4V8KUq
         QIFCo/K3JlWYP9Ixz8t8KpZf53tS/t+vrcaqmh3TKydJa/6Ab6ZFs1GJRd0QjM5+edG8
         wJ8GbzVOXmAU3yuABPVHlZU7X8P/gTOt4nWTGM9NhaXJ1wvqinx4heOGnAbozysUeQZh
         lSqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=w5ov=el=nvidia.com=leonro@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=W5ov=EL=nvidia.com=leonro@kernel.org";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m62si73772pgm.2.2020.11.05.00.22.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Nov 2020 00:22:28 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=w5ov=el=nvidia.com=leonro@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (searspoint.nvidia.com [216.228.112.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5CAA7206ED;
	Thu,  5 Nov 2020 08:22:27 +0000 (UTC)
Date: Thu, 5 Nov 2020 10:22:23 +0200
From: Leon Romanovsky <leonro@nvidia.com>
To: kernel test robot <lkp@intel.com>
Cc: Jason Gunthorpe <jgg@nvidia.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [leon-rdma:rdma-next 58/59]
 drivers/infiniband/core/uverbs_cmd.c:820:6: warning: variable 'new_mr' is
 used uninitialized whenever 'if' condition is true
Message-ID: <20201105082223.GO5429@unreal>
References: <202011050034.V5X38pwZ-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202011050034.V5X38pwZ-lkp@intel.com>
X-Original-Sender: leonro@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=w5ov=el=nvidia.com=leonro@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=W5ov=EL=nvidia.com=leonro@kernel.org";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
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

On Thu, Nov 05, 2020 at 12:33:39AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/leon/linux-rdma.git rdma-next
> head:   e0a81838e0d3c558bfd2776fd6630470c4bdee0e
> commit: ce258f66e947591682a30f874692a72381dbfaf0 [58/59] RDMA/uverbs: Allow drivers to create a new HW object during rereg_mr
> config: x86_64-randconfig-a003-20201104 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a6d15d40701ad38f29e4ff93703b3ffa7b204611)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/leon/linux-rdma.git/commit/?id=ce258f66e947591682a30f874692a72381dbfaf0
>         git remote add leon-rdma https://git.kernel.org/pub/scm/linux/kernel/git/leon/linux-rdma.git
>         git fetch --no-tags leon-rdma rdma-next
>         git checkout ce258f66e947591682a30f874692a72381dbfaf0
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):

Thanks

diff --git a/drivers/infiniband/core/uverbs_cmd.c b/drivers/infiniband/core/uverbs_cmd.c
index bea1a1aeea22..cfdf89dd92b2 100644
--- a/drivers/infiniband/core/uverbs_cmd.c
+++ b/drivers/infiniband/core/uverbs_cmd.c
@@ -766,9 +766,9 @@ static int ib_uverbs_rereg_mr(struct uverbs_attr_bundle *attrs)
 	struct ib_mr                *mr;
 	int                          ret;
 	struct ib_uobject	    *uobj;
+	struct ib_mr *new_mr = NULL;
 	struct ib_uobject *new_uobj;
 	struct ib_device *ib_dev;
-	struct ib_mr *new_mr;

 	ret = uverbs_request(attrs, &cmd, sizeof(cmd));
 	if (ret)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201105082223.GO5429%40unreal.
