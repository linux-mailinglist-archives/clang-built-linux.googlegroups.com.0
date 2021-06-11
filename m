Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBKMRR2DAMGQETHRONFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 592A63A45E2
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:00:43 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id 31-20020a1709020022b02900eeddd708c8sf2881978pla.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:00:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623427242; cv=pass;
        d=google.com; s=arc-20160816;
        b=DY/+lT2iQWqq/tXGHXAnS5Y33SimQmUBLQy60gH6aJx5Icn/4KvvAEr80epDsWNH0M
         FB4goj2edSY0ooCzj9bbcmjcYNaE3J7TV+tVg0raqP4snRKMDJflpSYOfZ7wZE8MtFau
         pFxAsh1oLsT2JrlQFUbOM5q3i2nctpRmvpXS9vktpK4yqgFp1SBAEagAkQkR0D8n3cix
         W/yvFW+2wpndXty3DFHQsz2ml4tAV/AnxosG0CSWmumF5+b7QxW44Met7wPa6A9Ca3xp
         YU6OZdvaPnTCQvYvlKl2hf2zOiUG9jnIaLioIbKDGAjas+PxCXtN2+HE7xob0jLXtyFJ
         TD6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=MA+IKwPdLbyYaDr3ZvUb/El8nut6cE4BYL3ia1QmbHU=;
        b=lnidTDY9MnrH7r2regT2IfiI3zloUV573AXreGJf7S30B9NMpVcyZU2BmQ4WZseX5L
         6u74CLJZ+cjCAVT+IQxmnasrGZDAO5jBkUK7HMZA1NzyCgswJICSoT0gCpUMOZW0cphZ
         U5f77TpABTgPDphB9Kgg3vnbC25GSpmsf1mIj/nHq5Zc248Z6IrhhZRVxJqcPL2Zs04T
         YA8jwiLIZA5Id0jIVcItxzSA/SItbtDsjCeqUIdYjrHCjfRz1BCp/kL0YcgFRHDGanTx
         h3fY/GTIeGHJTpVj3GRtAeZmRUhhiEgw1nJ/MrTA2e5H7tQrry9uxwKgLZsxpBQnpL4k
         MNLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XGyPAZCZ;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MA+IKwPdLbyYaDr3ZvUb/El8nut6cE4BYL3ia1QmbHU=;
        b=PppaAfHXqEKxOEaLwidlUdiB3MQKQt0KWUAozRUnM5nJz3/n3mUdG5Po9WOapZHboW
         V+fGv0TRTwKZQqULF+znzrTSRMGlek7G5bsO/Pm1J9A3E947hFHSdxgm+Qc02shW+R5H
         eZkf492IcN5afsR/JC5xqfVWmP82pLb1vdpOzVl10E4NuG9DvNrbUBVcUXyvMViu+CRc
         7Zdu5aofbapK5TGViLme21iwMF+YRqG3XyWzvkiTFx2qGQTrAWZSb5NJZdns3w5cEAmd
         oM2Z2kf9eCX51EdsM7uzith1rzS16p0C3hClvpUf/5+AVxf4Be2RJzG0BP8Bb6qKaVHb
         BgSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MA+IKwPdLbyYaDr3ZvUb/El8nut6cE4BYL3ia1QmbHU=;
        b=q7wNX2kMa9HrqdieLvavT7qV7ItYWsTL3Ak2QKA5gLVdrY2YRe91cPTuKhLeEHr5mr
         jA2mb+59InVDLtB6W1F4SiKo42KZCrqoWb2ufm9FZqSmHnLiTDjE0OppdvpxNDCWeEn9
         R2roQjRJChpEHKquqdZZKp7MyKkkkfSx+Hs/Oa90Kr0cnX9uCAS6dQZBft8MsqPcQuDK
         e1H/tiXNeU/2iKV0l1J+c3Zspdeh2F0DOHSPdVKzSHIzf58MzKTltl58jAxWQu/kBpI2
         WD6TvSta1j4GG3MaRJt7SIwYwjg0e0xckZd8ivT4RHWnE880oGlolJG00roVbGiWXiYm
         RDCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53321hhRNAYliH0qr8v9ZP80YmX0I8u31+08GAU7zDF7hm90Onpa
	Q6HX9HnUgcnn5pZLoivSuWM=
X-Google-Smtp-Source: ABdhPJyJxRjKdkrWLKS7Nws/dIAivCR2yxmfgH/67t+7wurRoMT7P/Hm40VSZuKIHzTkpX+PyfKU1w==
X-Received: by 2002:a17:90b:4b51:: with SMTP id mi17mr9858058pjb.109.1623427241838;
        Fri, 11 Jun 2021 09:00:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b48a:: with SMTP id y10ls5668385plr.7.gmail; Fri, 11
 Jun 2021 09:00:41 -0700 (PDT)
X-Received: by 2002:a17:903:4112:b029:114:8409:147b with SMTP id r18-20020a1709034112b02901148409147bmr4408542pld.55.1623427240747;
        Fri, 11 Jun 2021 09:00:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623427240; cv=none;
        d=google.com; s=arc-20160816;
        b=vft/QHDB4t0R5rKzz+VdMXyy9HHIh6Hfb4MIfrj/z5HPZh5yHrRLXLb1HpKQJh/1uV
         d9YH3wkNhwAJ3VQM62clfUgpb/OAq/5eLnRnQOlFvn/3b7HuuClQDNMr6ilgYik+VTjK
         wdAtHVLT87HKnWWdK9CL58dKAtHvsRrH/BeuSpvvX14ml3nL+zkoNAKWzv89QvFkYc/a
         JwwJ9/mV2f5F2sx9NNXP5s6ZhpcEmhqat+55oCL5eBnq6L3jiJV59CvZjN/pu6GfbLXr
         TeBbahyPgWfvODpME7bGOdBoijzJwZ7zay6IHnC2m3GmOo4u8HiPJlpggqZ5eJ56UXJw
         IYEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=lAa3ft1eYwkyz9QnKqWxR3ccc81UEV4vprJdAD30YM4=;
        b=aZqMl17NgnE2LavsBsgySD9/72DAIHmAv/kuEfmahuTG7jJMikI8Las0WL5iyg5CrQ
         fZpeRCvfLYAK6miU1OHsOPuqup9bj6KmbRckVPOftMku85AyOM6iK0mdxJz1moeLKm9C
         lUpwMUzySRYJU9Z9pk08KJyJ56VF0YumE3JpOtFSVdvsiKLYd7Q08YXkyCcuA5hkrQ/K
         /qVFwp23Q3Y5KvF1qvwiS01e5u9mut7JcPrxVZJZmi/v+P8RuRM69+7ZSSsLo0mI8d6g
         16o2Urxg2U8rq3a7ZTaByBrsXlfQ4NvcbIHgwznJwpNPFxoeVPzXYKkn5YnqB2J0Gp2L
         WgxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XGyPAZCZ;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mm4si1333177pjb.2.2021.06.11.09.00.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 09:00:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7AC73613EE;
	Fri, 11 Jun 2021 16:00:39 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: Doug Ledford <dledford@redhat.com>,
	Jason Gunthorpe <jgg@nvidia.com>
Cc: Leon Romanovsky <leonro@nvidia.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Adit Ranadive <aditr@vmware.com>,
	Ariel Elior <aelior@marvell.com>,
	Christian Benvenuti <benve@cisco.com>,
	clang-built-linux@googlegroups.com,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
	Devesh Sharma <devesh.sharma@broadcom.com>,
	Gal Pressman <galpress@amazon.com>,
	linux-kernel@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	Michal Kalderon <mkalderon@marvell.com>,
	Mike Marciniszyn <mike.marciniszyn@cornelisnetworks.com>,
	Mustafa Ismail <mustafa.ismail@intel.com>,
	Naresh Kumar PBS <nareshkumar.pbs@broadcom.com>,
	Nelson Escobar <neescoba@cisco.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Potnuri Bharat Teja <bharat@chelsio.com>,
	Selvin Xavier <selvin.xavier@broadcom.com>,
	Shiraz Saleem <shiraz.saleem@intel.com>,
	VMware PV-Drivers <pv-drivers@vmware.com>,
	Yishai Hadas <yishaih@nvidia.com>,
	Zhu Yanjun <zyjzyj2000@gmail.com>
Subject: [PATCH rdma-next v2 00/15] Reorganize sysfs file creation for struct ib_devices
Date: Fri, 11 Jun 2021 19:00:19 +0300
Message-Id: <cover.1623427137.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XGyPAZCZ;       spf=pass
 (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=leon@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

From: Leon Romanovsky <leonro@nvidia.com>

Changelog:
v2:
 * Make port_attributes visible in init_net namespace.
 * Fixed hfi1 compilation warning.
v1: https://lore.kernel.org/lkml/cover.1623053078.git.leonro@nvidia.com
 * Added two new patches to the series
     RDMA/core: Allow port_groups to be used with namespaces
     RDMA: Remove rdma_set_device_sysfs_group()
 * Fixed missing ops definition in device.c
 * Passed proper internal validation and review
 * changed EXPORT_SYMBOL to be EXPORT_SYMBOL_GPL for the ib_port_sysfs_create_groups
 * qib was converted to use .is_visible() callback together with static
   attribute_group declaration.
v0: https://lore.kernel.org/linux-rdma/0-v1-34c90fa45f1c+3c7b0-port_sysfs_jgg@nvidia.com/

-------------------------------------------------------------------------------
From Jason,

IB has a complex sysfs with a deep nesting of attributes. Nathan and Kees
recently noticed this was not even slightly sane with how it was handling
attributes and a deeper inspection shows the whole thing is a pretty
"ick" coding style.

Further review shows the ick extends outward from the ib_port sysfs and
basically everything is pretty crazy.

Simplify all of it:

 - Organize the ib_port and gid_attr's kobj's to have clear setup/destroy
   function pairings that work only on their own kobjs.

 - All memory allocated in service of a kobject's attributes is freed as
   part of the kobj release function. Thus all the error handling defers
   the memory frees to a put.

 - Build up lists of groups for every kobject and add the entire group
   list as a one-shot operation as the last thing in setup function.

 - Remove essentially all the error cleanup. The final kobject_put() will
   always free any memory allocated or do an internal kobject_del() if
   required. The new ordering eliminates all the other cleanup cases.

 - Make all attributes use proper typing for the kobj they are attached
   to. Split device and port hw_stats handling.

 - Create a ib_port_attribute type and change hfi1, qib and the CM code to
   work with attribute lists of ib_port_attribute type instead of building
   their own kobject madness

Thanks

Jason Gunthorpe (15):
  RDMA: Split the alloc_hw_stats() ops to port and device variants
  RDMA/core: Replace the ib_port_data hw_stats pointers with a ib_port
    pointer
  RDMA/core: Split port and device counter sysfs attributes
  RDMA/core: Split gid_attrs related sysfs from add_port()
  RDMA/core: Simplify how the gid_attrs sysfs is created
  RDMA/core: Simplify how the port sysfs is created
  RDMA/core: Create the device hw_counters through the normal groups
    mechanism
  RDMA/core: Remove the kobject_uevent() NOP
  RDMA/core: Expose the ib port sysfs attribute machinery
  RDMA/cm: Use an attribute_group on the ib_port_attribute intead of
    kobj's
  RDMA/qib: Use attributes for the port sysfs
  RDMA/hfi1: Use attributes for the port sysfs
  RDMA: Change ops->init_port to ops->port_groups
  RDMA/core: Allow port_groups to be used with namespaces
  RDMA: Remove rdma_set_device_sysfs_group()

 drivers/infiniband/core/cm.c                  |  227 ++--
 drivers/infiniband/core/core_priv.h           |   13 +-
 drivers/infiniband/core/counters.c            |    4 +-
 drivers/infiniband/core/device.c              |   30 +-
 drivers/infiniband/core/nldev.c               |   10 +-
 drivers/infiniband/core/sysfs.c               | 1100 ++++++++---------
 drivers/infiniband/hw/bnxt_re/hw_counters.c   |    7 +-
 drivers/infiniband/hw/bnxt_re/hw_counters.h   |    4 +-
 drivers/infiniband/hw/bnxt_re/main.c          |    4 +-
 drivers/infiniband/hw/cxgb4/provider.c        |   11 +-
 drivers/infiniband/hw/efa/efa.h               |    3 +-
 drivers/infiniband/hw/efa/efa_main.c          |    3 +-
 drivers/infiniband/hw/efa/efa_verbs.c         |   11 +-
 drivers/infiniband/hw/hfi1/hfi.h              |    7 +-
 drivers/infiniband/hw/hfi1/sysfs.c            |  530 +++-----
 drivers/infiniband/hw/hfi1/verbs.c            |   92 +-
 drivers/infiniband/hw/irdma/verbs.c           |   11 +-
 drivers/infiniband/hw/mlx4/main.c             |   27 +-
 drivers/infiniband/hw/mlx5/counters.c         |   42 +-
 drivers/infiniband/hw/mlx5/main.c             |    2 +-
 drivers/infiniband/hw/mthca/mthca_provider.c  |    2 +-
 drivers/infiniband/hw/ocrdma/ocrdma_main.c    |    2 +-
 drivers/infiniband/hw/qedr/main.c             |    2 +-
 drivers/infiniband/hw/qib/qib.h               |    8 +-
 drivers/infiniband/hw/qib/qib_sysfs.c         |  616 ++++-----
 drivers/infiniband/hw/qib/qib_verbs.c         |    6 +-
 drivers/infiniband/hw/usnic/usnic_ib_main.c   |    3 +-
 .../infiniband/hw/vmw_pvrdma/pvrdma_main.c    |    2 +-
 drivers/infiniband/sw/rdmavt/vt.c             |    2 +-
 drivers/infiniband/sw/rxe/rxe_hw_counters.c   |    7 +-
 drivers/infiniband/sw/rxe/rxe_hw_counters.h   |    4 +-
 drivers/infiniband/sw/rxe/rxe_verbs.c         |    4 +-
 include/rdma/ib_sysfs.h                       |   37 +
 include/rdma/ib_verbs.h                       |   68 +-
 34 files changed, 1319 insertions(+), 1582 deletions(-)
 create mode 100644 include/rdma/ib_sysfs.h

-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cover.1623427137.git.leonro%40nvidia.com.
