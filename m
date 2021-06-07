Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBVVM66CQMGQEODOMFBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACE039D6FE
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 10:18:32 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id e19-20020aa78c530000b02902e9ca53899dsf7333500pfd.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 01:18:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623053910; cv=pass;
        d=google.com; s=arc-20160816;
        b=AelkuaJnTxo7KI0lr9/FV91vN2Zkhw+d62E5EaQnhFoITzFzJNTaM58H7/tFVhmJrA
         +eXToAFwvMTMTqUkticmZckQPfNN0oCHM4+FH28lfjKWh8gjvfb+L834jLvGepx2hX4n
         JLPn0fYZMNx/i83d4+tALRjZ98FkhdxLlkYHwSNBSWAqWYzIHVhlzA/heTR3nUFIeVZq
         TF8D/zUTWjJ7/8d/W2TpHJBr5S9Ccmp194fPzCDHji/WX8qYZ9jwtuJNx/O3IJgHA78o
         3npIRyFEBs5MPIGaNPDyjZ0flHszf9nmgu78KMP+FOKHEdl7p2T1GicvoIu0+pYwhOtE
         xmGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=X3phN29gg7AprD6fU9mLjaICMNNwpdNOreUYfPZ8i2Y=;
        b=T8olsauEpb6c6w9Hapz9tDxYnTOAC5RKqY5+RFvEUftjIFI62yl/PAZ41rzq4sZtLC
         Vfs+ESvvwVuOmYX+WHvQIs9t2spQa3eSgNv4mzOWV0c1n1Hw6jZZ/l8VQfzMP6pfG5d/
         L2LM8orqd9jVzuvGqJc0wM84myJRSsZs7JIX5Svoy3QLKwV/2+YJCzX7XHc9uwfiggqj
         HGasmr7xwG8Dl2V3UrBt/lomgWC6fPKvpVGavHdG5zcbQshUW6SMd/U4RscyQdfq+fQc
         bnuWBJIQ+IEyN9XNSooxj4P06dgIgpGPX1/Pn9pcHT/dzb4D61BqNySNsplZjz9Eo7Tw
         IBXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=niLf7MtP;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X3phN29gg7AprD6fU9mLjaICMNNwpdNOreUYfPZ8i2Y=;
        b=X3BRbzRryr95rZkglyQ+IQNl6Yqzl45vo+qopwRMG8Co4zTQBmmpK1Qp/SbGaFFFZD
         7dBtxyDJZApn4NOB/oQr+o18YcTRxfAaDCUnV3UU65GTrIas91IR93mpMzfG+mfcWdws
         BsjwUcXmMlQSs5mTlpcSzHEfNhSxjJK61zdfbKrZvQIMICyKcexE6cpNCVeZpq4wMvYa
         sT0hjRG92qouOml/llHf68O2DjCq3g1Qcr9Nav8txyPo/8t/M+NbG3x9GYYvcSFoIAE7
         fsmJPlakohSgCedve7Q8yApD0iNQHSPH90ZFtuAzBzgCwKMF4gSH0czpocDIQh6J7zUx
         8iIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X3phN29gg7AprD6fU9mLjaICMNNwpdNOreUYfPZ8i2Y=;
        b=BfXQoRIL+8zvKNESifttsV2uyV/hcyCy950oXGjo3BcB3cil2Pzaf/7wUxloKefDiY
         FdWm/jDjgdlrcVNlLV0ABSjJbzYccZ0eBzrltL6qgtW9CoE+Xoim4T0xX5zSPasohsXs
         U8DrNqbcjV2JPZqTxbaUgTqpwrhav9z3BV61qe+ic/R0AsRRPCWcdLSdIxMlYUkfHCyv
         4OT8trFHO+6bbXCXW34CQE8v2+EMwlym8JT4pTX5ughn6vyLWcyPkkDTs7gNbgvkk2zx
         x2snqJBL8zM6Uuq3urqxe+lzdaaUGpKvoMOP5GFICH1WT2U30iSzqLerQp2sTZ5l0tC9
         Fsag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CYInA4zmpkmYG7XV36TT4mzz6XeheNJcMFqWgrkQTwZtxPtuG
	4FOIMIItIBl0fW89JXf46xQ=
X-Google-Smtp-Source: ABdhPJzcFQi+xGWI5cL+8Ct81aUUfRY9gF2Rlu4doTPeicUQtvsFt4syxljdlX/5i7Y5aOq13ZjaOg==
X-Received: by 2002:a62:5c87:0:b029:2ed:cf:1f89 with SMTP id q129-20020a625c870000b02902ed00cf1f89mr9551693pfb.9.1623053910783;
        Mon, 07 Jun 2021 01:18:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8dc9:: with SMTP id j9ls2236973pfr.9.gmail; Mon, 07 Jun
 2021 01:18:30 -0700 (PDT)
X-Received: by 2002:a05:6a00:194c:b029:2ea:5909:ebfc with SMTP id s12-20020a056a00194cb02902ea5909ebfcmr16284013pfk.40.1623053910228;
        Mon, 07 Jun 2021 01:18:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623053910; cv=none;
        d=google.com; s=arc-20160816;
        b=pU/WG6zl8WjKAZGOaWpa3WZ6TiKlTTyf3KPxu1WApX5V6Lgzk3dTYz8JFWE6RKwWxR
         veN7Q3WGYB0tsUUnkLlA8ZzFuADKm2HXJY5L8IPrGnWCfTwrHA8MlW4NyANJ3LtmHL1p
         U+yKvmy4igM3yBkKDxj7ves15idND7FJ3GwMWuDywLJYw9mXw3mNDL8VlBJuv4CGaswt
         fb0xjX2rrQb5hwOP1X+UqMXHdkfxRARlDioSv0RA8+w56lGrco4n0z4jJP1jffWJjAdV
         4XxbhWfqBwkwOEnoEcBRpn7YukZVzhT8tAUQnX7UncinAK2h9GPIvD5GdtFUAv+KoXGY
         fkmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=A7a+S8m8bCU/tgkatnTxXNMRuRJ2qxt6GlRF+LRjeZY=;
        b=QcqmV3PfWTfU7dhgJNAKXiOHnox+x0fqsrFkEwVbnmS025+zQH3n9z4MGYmwnGakD7
         zyOB1BtTQJQSsl5mQCppTNHVH0JlrXcJT4iN1NCjwrGrYZB8KnAQrnKc+c/jCvtQsm9S
         9NvMPWAVZIOiaabB78y30Ns+FDoLNdrXNtNzQX4unRfHlg4c7OuBP1CKqMz3lcKNV1U+
         PkZDVM9cl1jkMBYSSAq1QAvLObDVWEH35XhJ3Ihop1i5wyyUkxyB9Dws1LcoxXqUv4hk
         +VIQKaImZuJW5si7NwyIsGDSy0+fklO/MlCiCmK2yh7yXY6ggPGk7HNPW+Wm+R4iQzp3
         oHbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=niLf7MtP;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w3si929655plz.2.2021.06.07.01.18.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 01:18:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 526C160FF1;
	Mon,  7 Jun 2021 08:18:29 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: Doug Ledford <dledford@redhat.com>,
	Jason Gunthorpe <jgg@nvidia.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
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
Subject: [PATCH rdma-next v1 08/15] RDMA/core: Remove the kobject_uevent() NOP
Date: Mon,  7 Jun 2021 11:17:33 +0300
Message-Id: <0d1deca036afe09cdddd9bead8cb6e0a6e52be60.1623053078.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623053078.git.leonro@nvidia.com>
References: <cover.1623053078.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=niLf7MtP;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0d1deca036afe09cdddd9bead8cb6e0a6e52be60.1623053078.git.leonro%40nvidia.com.
