Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBSURR2DAMGQE5RVIPKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B343A45F5
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:01:15 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id c3-20020a37b3030000b02903ad0001a2e8sf100378qkf.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:01:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623427274; cv=pass;
        d=google.com; s=arc-20160816;
        b=spDZcdOwdOB1BEUrI7EuGJks+Akayqvq1Ob4hXgsW6lHbYBvYF90omNd99WpBFSPHc
         OoeTiWo6p1i9zJ5WoIG/e92Suy26D/vKvXwySALCFKB4YvxHOcyqDaP0Kc5XeMoWH5DT
         6cOeETNRgnoR5uBffQD9fkdSbADiunlKv4u3hpm+12lr+Z9ZYYit9dpchu1bR53PmI+a
         H6fSb3W8E7HNT30weLfGohYFZvFvMrwkTLP9we4B2RfkN1YR1Cj9axRHXLc9ep4V+O54
         c6hAEKDb4ODHKFXuLX5CV6Ib+KOGqCIwHc/8G27/qmpepr77fte39g8oAc6WIiTFjfcW
         OBsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=O5nRIGE2FNDZDNTARztFhwh4AKzJEvEQuwaDVTotbAY=;
        b=FliblAf4zoACHFH0YjCbvojlLGaUqFzGYUt/Mj52cTPtuQPXwPap8D3Yb7qGhnBOAq
         2BpwCXwBkYtdxXhdDPL/iJz2kZ1ED2xDHnCzZDoHKnGjBqvnzbtvm79BZYeq+Eh5wsPi
         WR1Vo1/wkW37ChJf+PBOYmnw5QIk+tt5umRJGPchwDVZ0RnbSSJp8ya7blzQhIaxz02A
         MaUMDXCZVuvHpL+CQR88K3W3z7x0EAKtLee5ScrBvU3qGaxoOo3CgIF8lRj3R3RsCcnH
         EjIXMNQ0/5cN14GzJFiBtuVHGSXl+0tNt2IM+yQiK1+f4zqrbyHrIiZs6EUIuSqRe4aQ
         yZZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=De5gHpL5;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O5nRIGE2FNDZDNTARztFhwh4AKzJEvEQuwaDVTotbAY=;
        b=EWJHK5LHVXEb9tIRMu4cnzx6HJXV+Ez4F5BkFXCSL5k2h3n9COtFk+YxdfEDe7FHOn
         FZWbBg8pEZCTS/ik5udo29M903GSCAZqMOLDWhMsvsg8ZiHi93vtmmQjz5qx+ZOD32sg
         kR0TyxsrxYdVPrejP1381ZJi4xoc/lU4yw+Z35fq+ViXf7XEu1QfOquZyeWq0fne+El1
         j2ZAFKpaMoGrfHDeVcq/BTLIc8QitmyyWK5UTt4NmaOCTPBHwBBu9Ra/FPdvWXFBWy1T
         05L8OcVL3x2ShhPEodZA34jv2s/94MGmDo9sW4OIA2Cn5YSUT93WLy3mD0366gBuEV6/
         0QsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O5nRIGE2FNDZDNTARztFhwh4AKzJEvEQuwaDVTotbAY=;
        b=AqGB8JtOX5VQ8wXlheMHiFPP2QsoCnBjtreEeP1OW8FabkDOlvicEjoUW9Ey+ZQpHQ
         /Peo5CARIg61M50jFIUhINxVw7po+2+E9/dRBgZ1qIJq4v4UmIYw/JD2w2oUbEM9ltDr
         MB49YjISv19pu+yGTcXXLbpUHtx5BOPivyqyecVT194NwFuvLp9HqDKJlBmqlprrV7wV
         NlXYYwgTK90am8jeyH1VYvMrKg+gcw8Cu6Ab6oPRU2AcehWsyUgfdGiqDQDVeZET6o37
         DeBtY4wxG/S+d4UQ3+bO0vLg+a2PJhMRa0XK8maztLTD3mGdMhR98cpglVOTYTwgavah
         nQ2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533q9kcpA9RHoF+4fI8og4GL0h4tOppKUd7DZICuZgFvPSXSCKJs
	6d1DkAAErWlTLAU8Hd6gmUE=
X-Google-Smtp-Source: ABdhPJxr4DbQgUg4yNb2dxbY0MuN2kd+CIRFrLCbjk0y3TSDxZwYCZO+EuwG7iPNJag+zrECFairJw==
X-Received: by 2002:ae9:c112:: with SMTP id z18mr4449641qki.41.1623427274814;
        Fri, 11 Jun 2021 09:01:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a08d:: with SMTP id j135ls1689893qke.3.gmail; Fri, 11
 Jun 2021 09:01:14 -0700 (PDT)
X-Received: by 2002:a37:2cc3:: with SMTP id s186mr4484211qkh.330.1623427274406;
        Fri, 11 Jun 2021 09:01:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623427274; cv=none;
        d=google.com; s=arc-20160816;
        b=nJrMr1zmgkKzgoao8rl6gKecOxlvSXnDcjJe9TS4m2Tpjeq1bYdynB6tREi7zjy8cG
         dXhJ7nyjG4fsSrQPeCmpnCP8soQnq208+VkP+ISA1VHRRBVFRcgm6rH81gbQLcCMe2hP
         uDoMLgfcc1s1tPobGw4Kufr5fJyIc5peuQx8+9iQ8rptd57mfqoM3gEsY7hTxl+yxyKE
         eSiiHdHLPFVtEoL1MB0HNQ+uQZdmhlo21kp6I3O+1FFUBRewB2y3AbIHkQkmw9fzdkZW
         Cx0KsxuhwlSLLGMhYi7XEi6kuXut66tptSbBL5AxOiSdolxcHUfMAZw+qTjUXLXunVCJ
         kE7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=A7a+S8m8bCU/tgkatnTxXNMRuRJ2qxt6GlRF+LRjeZY=;
        b=AqsiEeLW+o4FwUggkCLvRtU4zXXQRsVbpSn+W75j64fdH9ux0IEXku3ZiHNXc44xMn
         Wkeuf96G8/rMKSwte05irFJ4z7M8uMiWeEmuY202E8IEa4U8Nx6e2clEgxMj5O5E1Uqg
         b6+YzgxEi75L1SaNOFKaQVrd8hTo5pHHo+VsHrPIiD071ABu0K8IcJXgT/7aM9Y9QT2N
         DGaGib8uXQJHC4iQaYTV8lUnNmLp4kBAxUoDp4hmT3FcRyJRKeIIIma/NjyTr4B0tQmA
         AzLSFUxrLmRhjNgQjCgx0rbS8t0+oyfWQ2kIvYQ/y3LRGI8/F4TBkh7Fxu1NjzRvGj1P
         cPvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=De5gHpL5;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p5si807624qkj.2.2021.06.11.09.01.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 09:01:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8396E613F9;
	Fri, 11 Jun 2021 16:01:12 +0000 (UTC)
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
Subject: [PATCH rdma-next v2 08/15] RDMA/core: Remove the kobject_uevent() NOP
Date: Fri, 11 Jun 2021 19:00:27 +0300
Message-Id: <49231c92c7d4c60686de18f7e20932d0c82160ee.1623427137.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623427137.git.leonro@nvidia.com>
References: <cover.1623427137.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=De5gHpL5;       spf=pass
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

From: Jason Gunthorpe <jgg@nvidia.com>

This call does nothing because the ib_port kobj is nested under a struct
device kobject and the dev_uevent_filter() function of the struct device
blocks uevents for any children kobj's that are not also struct devices.

A uevent for the struct device will be triggered after
ib_setup_port_attrs() returns which causes udev to pick up all the deep
"attributes" which are implemented as kobjects nested under a struct
device and assign them to the udev object for the struct device:

 $ udevadm info -a /sys/class/infiniband/ibp0s9
     ATTR{ports/1/counters/excessive_buffer_overrun_errors}=="0"

Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/infiniband/core/sysfs.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/infiniband/core/sysfs.c b/drivers/infiniband/core/sysfs.c
index 07a00d3d3d44..14b838863b5d 100644
--- a/drivers/infiniband/core/sysfs.c
+++ b/drivers/infiniband/core/sysfs.c
@@ -1422,8 +1422,6 @@ int ib_setup_port_attrs(struct ib_core_device *coredev)
 			if (ret)
 				goto err_put;
 		}
-
-		kobject_uevent(&port->kobj, KOBJ_ADD);
 	}
 	return 0;
 
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/49231c92c7d4c60686de18f7e20932d0c82160ee.1623427137.git.leonro%40nvidia.com.
