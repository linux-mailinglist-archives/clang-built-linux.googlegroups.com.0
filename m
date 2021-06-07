Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBPFM66CQMGQE4C7OO5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF1639D6F3
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 10:18:05 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id m22-20020a0568200356b0290248e4270f00sf7894716ooe.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 01:18:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623053884; cv=pass;
        d=google.com; s=arc-20160816;
        b=d/vhuJFrmlI2N54ZVa/CkPeLdk5f08TF7w3dmFwtm3U2+WgdcIRKxS+EjMpJ//o4xm
         fmOvlA1fkPAaj92J8C/QI0kv9zDYCDP4gRDCJiiELZoGx3EWLONBmbS4vEOYRZ8Fah/s
         zoDpyUS6AFNaft7doD9NAxSKHhWTwkyJ/G6R5C9kKDB3VtD/o3XrcsWzXFmSUlEwij+P
         aaZewWGAgBcq+mAUQQTRxy7KBjDj3UBNQQdroAa+x26FJ4hs9TwpmAdcyjaongSFjpPN
         hLNCTLAiyfWkSG0XPg8eAxiuVmZh1m40rRpCCxShuT5EsbIPyNoa3XK9DlaMdgevqIGL
         qWsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=qGmsFl6oXLZ3x44UjRdVPmNabJL9f3S+ZWZAHwDT6HE=;
        b=Ep/VVcVpwZ3pnaIBd9wL/p0eTnxtB6h80aDHkLZSnfvJaKEoxkOf7vYExRVH9ppwye
         ROK+c2tByPHyvOzbPyWqrIpQ6VIhYOfHzix0ytS3mpl7Ur+AD9CoURBytDuiK436a+zP
         w7gwRxS2T/jj1IZ05luOkmTUTJCdBtWbZQEEr5o0h4H5qqE4vX6AoxTVQttrakX+MLV/
         dNe1HuCWqZmrpMVQLW0yMom7qJ3WWtj3vtwWGcxkwNZ3Fd5ykrdUNgm0taV8BW4bgzH1
         cQUu3icn2Kyck51dEIoC7d9YlzhqpWVypFJXaCQcNX2gblSNF2hwptzFc4S3AEYEEp5t
         5Nxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SKlOT+R7;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qGmsFl6oXLZ3x44UjRdVPmNabJL9f3S+ZWZAHwDT6HE=;
        b=KKqk9J8eeInzuC73vVZRpaISeG5UVt8QblQvkR7E37f5gkPcrl5XE05RW2jMc53DDk
         5NFFIqSaKkYDKohg/OlyMj6S1B9Fer8oGTue6hXQMaSRiMjlEYHVrh7FlFqfdla8t8hT
         FdtgIk/iDRFk6T3TXT2PIhaJv+pLMWE1K8LGgXj6foRIYE3jCUN4Z1HLE3SFf8OMv4Cv
         /7cA9ZfaUD8E+c1ac2SPZuOmz6VERnxTci/KvOI3GOXhaZtHAx8G06ymclzpAkZraLdY
         XHTMfAr1DeLZRAl1Lng83Kq67HLNoIiY/sLXY9FUCbcXJ3FYR4EuxvOYWc5JJw6wOEak
         tMXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qGmsFl6oXLZ3x44UjRdVPmNabJL9f3S+ZWZAHwDT6HE=;
        b=AxID8l24P0KifvmIwetfnYAkoLsrJYFRULMG/33rEMUkea9C9aJH2Vn+xgqMfUZKcR
         MRxfQrlfZkxsmaBezwMtNX9PFA20xqKSgonwtKgvatSg8r3TZdIIPsMcuuYvTN4PVdZs
         7dCiF9+JEIUPdHpv1R/WT7hUUpfNsNJxJePCUfHL/40DW3KsZvyGrlFaic+cBP7yvM/o
         1QVRercBxnpcEhbIv2QCgup7EQ5Zu0zTa8xtVrS6QyBbsjSW9k90OmUFwCR9xA9ht7DQ
         xqzy0IRZ5BI3VSvOtY1BR6uiS7N5hwiMT5qgWo2VaKB4v4sSMs7z1IRZURauGguTcinZ
         AMbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wRYF5cYWFSqyGt38ySYhs/CppIIKfyliMa49FlA+VNCNIi2N7
	xaVsxmZO31z37G1sw6kh+fw=
X-Google-Smtp-Source: ABdhPJxJ8rxUxZHd7fPAK3DXXbPdO87DIb9U2vZnW+MiNfxw2f8IyKsKiSClFd7qPUGsBAZDp8TMHg==
X-Received: by 2002:a9d:74c7:: with SMTP id a7mr13086730otl.42.1623053884588;
        Mon, 07 Jun 2021 01:18:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1d6e:: with SMTP id l14ls4642872oti.10.gmail; Mon,
 07 Jun 2021 01:18:04 -0700 (PDT)
X-Received: by 2002:a9d:729d:: with SMTP id t29mr13200475otj.256.1623053884253;
        Mon, 07 Jun 2021 01:18:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623053884; cv=none;
        d=google.com; s=arc-20160816;
        b=YZ3fwC95SakeO979vc6/l7T5mEgGgP3/bB/fle3uxGWy4pnZauBpNrdE9bFrSby1Xm
         4O6zJnT6RoQCzbru/uc69jHswjI1nURr7wU5Z5qAICZazFsHA7Ogeak1ovnECivAUqxs
         GD2wMVcmCe9RoKNG+o7zUB6oOMDikA5Wt1gYqcCMI6Y8WG1c68d7P77Omos/p8tVR3oI
         +QV8posOMTgJ+9bR6EWs+bZUkqs15Hjn4Pu+ZX4VAgsePZvGw+GBxnfDHl7wL0HmCelE
         4SOekoBsQCrZXNQf7Yznqmu+4LqQFB2MSxTw9oHYI4YHv/lPHv6kvMIJ0fy8seZfV2Gj
         lf8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=xRH3QVdPJDed9Xq/7e6035V4LKMHw2WYp2rjvsrJW40=;
        b=T/cMAA9iuT3+OwV+/sYAV08GkK5lzD20+GZM1ykNaxtTkcFDpL5L45Hc/wPTIv8NRi
         cgGBJX9BJAbIBtJzmdkWJGzPlXcFvn1h1x7agvmuR9PWq67zEin//u/dwj5JWIC5d1wn
         jWJL+3aXrYXfDsoh51IBQQmYZR9FfJelhxX30yvQnbZF+2wEanaxrUnZsbrVIsCkLMXF
         +0kR3yVQJxN3DGJR4GpbmeLAPa2HKNG4k28DzsuvqUisY08J4ZfPYYaMvjFc4iK/gUh/
         SJlT7PdfO8UKBXDDmdakJkvRymiCGnrVwGiO9ikFMnxupwYueamrWz/yj2WtQdMmYCOi
         oPfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SKlOT+R7;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c22si1128980oiy.1.2021.06.07.01.18.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 01:18:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D17DE61205;
	Mon,  7 Jun 2021 08:18:02 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: Doug Ledford <dledford@redhat.com>,
	Jason Gunthorpe <jgg@nvidia.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Leon Romanovsky <leonro@nvidia.com>,
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
Subject: [PATCH rdma-next v1 00/15] Reorganize sysfs file creation for struct ib_devices
Date: Mon,  7 Jun 2021 11:17:25 +0300
Message-Id: <cover.1623053078.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=SKlOT+R7;       spf=pass
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

Chagelog:
v1:
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
 drivers/infiniband/core/sysfs.c               | 1095 ++++++++---------
 drivers/infiniband/hw/bnxt_re/hw_counters.c   |    7 +-
 drivers/infiniband/hw/bnxt_re/hw_counters.h   |    4 +-
 drivers/infiniband/hw/bnxt_re/main.c          |    4 +-
 drivers/infiniband/hw/cxgb4/provider.c        |   11 +-
 drivers/infiniband/hw/efa/efa.h               |    3 +-
 drivers/infiniband/hw/efa/efa_main.c          |    3 +-
 drivers/infiniband/hw/efa/efa_verbs.c         |   11 +-
 drivers/infiniband/hw/hfi1/hfi.h              |    7 +-
 drivers/infiniband/hw/hfi1/sysfs.c            |  529 +++-----
 drivers/infiniband/hw/hfi1/verbs.c            |   92 +-
 drivers/infiniband/hw/irdma/verbs.c           |   11 +-
 drivers/infiniband/hw/mlx4/main.c             |   27 +-
 drivers/infiniband/hw/mlx5/counters.c         |   42 +-
 drivers/infiniband/hw/mlx5/main.c             |    2 +-
 drivers/infiniband/hw/mthca/mthca_provider.c  |    2 +-
 drivers/infiniband/hw/ocrdma/ocrdma_main.c    |    2 +-
 drivers/infiniband/hw/qedr/main.c             |    2 +-
 drivers/infiniband/hw/qib/qib.h               |    8 +-
 drivers/infiniband/hw/qib/qib_sysfs.c         |  616 ++++------
 drivers/infiniband/hw/qib/qib_verbs.c         |    6 +-
 drivers/infiniband/hw/usnic/usnic_ib_main.c   |    3 +-
 .../infiniband/hw/vmw_pvrdma/pvrdma_main.c    |    2 +-
 drivers/infiniband/sw/rdmavt/vt.c             |    2 +-
 drivers/infiniband/sw/rxe/rxe_hw_counters.c   |    7 +-
 drivers/infiniband/sw/rxe/rxe_hw_counters.h   |    4 +-
 drivers/infiniband/sw/rxe/rxe_verbs.c         |    4 +-
 include/rdma/ib_sysfs.h                       |   37 +
 include/rdma/ib_verbs.h                       |   68 +-
 34 files changed, 1313 insertions(+), 1582 deletions(-)
 create mode 100644 include/rdma/ib_sysfs.h

-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cover.1623053078.git.leonro%40nvidia.com.
