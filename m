Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB2WTYX3AKGQE3AYDLZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE191E883C
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:00:42 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id h92sf1443583wrh.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 13:00:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590782442; cv=pass;
        d=google.com; s=arc-20160816;
        b=IRJwZNwoMRCIxlu/njqRymC2skWX0ZQbwrHE90EgtSOa7qQ4DkpMVcmgmr46DG6uWB
         zMPrQFzweOsqyfmGQs1oJ/Fccy2NipSalj7zR7jjX6E7Wz/owQnxTYjWtxl9DaU+PE6i
         9JlOX96hkR4V6qQqszeMWei8WhErYyZ8tt8+bpAF9rT41wsDtYPXb2SfhbHS9TF1Uqbn
         yUDrmmosFgh7sNe1d7IPiSQ3lfvhb8tZhbUbhXThLSYRSgJJvTriiP5V+bfTEXQ4xYVs
         mNzup5ITK4EXR7vjTaARnzSX6ZNlKui1eVHZT+a0K7NNC0lJFjQknVYewvtvYuHHCBVS
         Rm/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=AFM6QG5lUl8RzxC+G04mIEHBB7hiR/QYzqd8JYS5GkU=;
        b=elUQc0xneiywVr+zAl/koDd5O4yQIjIAInvBvakV8GEGnic8zbf7FBHx+eio3qgzi0
         2c3or9CDHCJ8CrSUkfRvl3Vcl1pJ6P/F86tJt97JvSOYTZqPgDpHYH9VuG5Swk494gCf
         ML1V7l3tAuqlaaLltQG2/3ILX2J6LpHdQ4uGR4DMnOPOitxSW6wwGin4gasbL+7oNfUG
         ImY3c0YqHcJQlIJdoSO9s/4IMnV86zSfHjBfUUeuo9KA9GM/6sxXaKD7Y56H+Gnlqw3k
         ObGE7Gg5gmM37aiLFPqVWSYIYoKtBnB5Vh6cDqtPWFKSctIZiAW0V+OoVVDyBhVznkj6
         JVRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AFM6QG5lUl8RzxC+G04mIEHBB7hiR/QYzqd8JYS5GkU=;
        b=BSjJSM8plQLefg9EBrVkzRseg5TavUWkvJSC2rcFbmqW5iC3z7jQd3OELhFMglokGK
         vx6fnWOhCzZyNhCaFCTsxCmF49H+RWvLNZwPh/gUdbq+H6qwIAvCcxuHezwhXrpcpCbq
         mf86hMJv0vg3JM5l7EqByVLJn4MpPMC7tplXpM6l+CTSeF8mKnzDehJak/4ORmNkFufm
         N65W42SKXm5kjxm3G2fZEpdyWC8ygdD8nxqAXGWdw2Qw1reE4WwZNdj6iEbwmefIWULd
         K4Yf/eIbL43oQS4eayJt6CbA2+Qwbrq0hLkZNKAmlRBo1lh+9xZtYpN1SD47dDp8MKLW
         uGtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AFM6QG5lUl8RzxC+G04mIEHBB7hiR/QYzqd8JYS5GkU=;
        b=QCdm/0tEXw4cEYo0i3/lrqK+MOwGZKlU+L7epR/aDBEAIRRSXCNqYJCVbm7hIuMVS/
         zIbpVpbyxa3DQa/qphZQT4dna+LpOynshYzCw+75K50suFyOlaO/r4RVgz5+M6UM/wde
         7yZ3S7Wbn1baKg5DMjbTanXZAnVctbeQvL1lAqPr9afB2S3AcvUZTFpbAFkrtApd5x55
         HntuQ0tksoHLsVHuPbD4hdpDCtmrJHRxAkmMluZ6dZ8TlnDXk9XdXONCMuEtiRhPmJL8
         nvfbvO005VDkO+eNEsCpkrVDDDRS0BOuvyn+R8RX5x7K2IFr3M2pYWVhB20chfJJAfn2
         RQFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IUtZ52TEwLrQfGRGrXArxPWZL+R/HbXMG2hfSNk5kR6uveEWp
	z7wCzki5LFIh59lPiNKRoi8=
X-Google-Smtp-Source: ABdhPJzf28aCxPjy40sN1MNfvNgx7ZlSmn/LC3MHqhf+55yRJNJtK7G9NCcad6PO006MxqnaOTSCEg==
X-Received: by 2002:a5d:5006:: with SMTP id e6mr10890456wrt.170.1590782442603;
        Fri, 29 May 2020 13:00:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:96c1:: with SMTP id y184ls3656772wmd.1.gmail; Fri, 29
 May 2020 13:00:42 -0700 (PDT)
X-Received: by 2002:a1c:740e:: with SMTP id p14mr10791170wmc.155.1590782442108;
        Fri, 29 May 2020 13:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590782442; cv=none;
        d=google.com; s=arc-20160816;
        b=UMAYa0L5AodgxzPa5N1D7G1y1kPLFW9V1h34fRbbXF3DbCNxcCEPqP0oyV5fBHk30W
         YoQoXPRRz84ZI+TRqbtVlHsK2yErQdAFaohk13EW3quyMSu0XEQ51KiRLzjz2De2268g
         FboGdtr6zC/r6WdcvIdpKaR1kjIgSHZtQKw84K8wky7NVLh8XThqaj6d9mtQBHq1B0Ob
         KS/muqvmptdBECrNVADnwAKj3gUboVA3ILxBo4jPfKct4pwVeVKKmh7dh+BJSY5TVUXz
         Oeu+YfTRWgJ5U2T/7yUWgn85aB0CFMaTF7LdPZYKsb/wea5yFe537ZZj+A42CBjGY1SW
         +hIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=mSrBQLyvuKjGePjFp9At/FlU/kBpYM63vlIipNDWFTk=;
        b=lm58RmzYR33p5v2KuWcwT11ZLH9bPaDeDM3TlnRaFThhxprStwyIi2rLkYphOeVKYg
         A2yO7ToWJV0zgwjSOhwk+gcVrTqtm0ckBrYECDigq724pVv48sShPaZO6iQjrQYQOneG
         Zo8MWMsxBE1X2XGSGU6m/78Tu7q5T3tCqGAIAIbWbgHXCTjXD5YNr28xS+S9AMDlzp6M
         xGAbxrwenx0T3HfE6hFyzMZL3SPE2zCIK8f/AduD9nQLyrd1xv6z4rEQroCn8NW83Ore
         Lb49+YWN4MuH/NasPauK5ru4/w5t8r9w1SZiUC/x4R2w9FMQ2RzCyNpbQIL6UUoIswlh
         kFVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTPS id r204si34702wma.1.2020.05.29.13.00.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 13:00:42 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.73;
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MvbO4-1ipghK3Ghq-00saMm; Fri, 29 May 2020 22:00:40 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 3/9] staging: media: atomisp: annotate an unused function
Date: Fri, 29 May 2020 22:00:25 +0200
Message-Id: <20200529200031.4117841-3-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529200031.4117841-1-arnd@arndb.de>
References: <20200529200031.4117841-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:lfZ3e7lRj4Ybe7StyQFbwkg2UGWjMbId3/8VrkKq0pNLWCLtM32
 kC18Il1MDaISgD8gL2sMI5OwZFnVA3Rp33VA5sfA/Q7v/zYyARV33SRjZVjcGToRqQsksR5
 KzWi9fEMSZvDjbXjeXC4SnaJQNdaCvhSbb99ZlJqDMlLiXk9jIhHcedSRmM/hNHAvuF0OTP
 t2vLHRR7riPg7pNu9GOXw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+LkRWSfmL0E=:9l56I5kcdmKr3QZXmDnZ+S
 sXoyK6fxxiDQqDFYRgOZG2PDT38WNHL+fT4N0cyDhyxZ4bsn77lxBIDZ31hbz3aM8pQ0DgzXK
 rovnECe6vjyY2EnMqLW62m45LXfkPeJ/hyTQ96DYeDNdWNFQof98gkgpEMlMVgQ4yimM5fIbC
 Qhv4IDC+Sx/28RHUQduOzPVCauzNO3zTnm3HyYj9+b5FSUJakM9WfHP2SWtW7+iNuRUs7JcEd
 QlZLrH+IADO71tIplE+RSZITLkv6YlQH3ccpo7CEBx+MXImuJWD5deMVvVKKGzD+IFhjg8nPn
 e/m2nQion0ZiG5uVTKvBdNxwjVhGw4noq4xdvayzpCgjjU4P4ZtUhUfIWs5qkxFRK6ymof5Me
 SKpsU/bV/yROi3suZ3+Z3Irscj5+UrIm1uUfudlpYAvb5qMUOtxMixamm51+lWJylZqFaSfGY
 gOFfr21E/HeWSr8IRE6+MUjXGaycqP9gwBEnGtpo89kk7tHdDdoeSbFK32BXB4llhRfNU8Anh
 2P7352T7x4aTMG1aj9lSUhXv8IM/IMWCuKrsbm1Rl4h52PZAZor/fRo6fqfsguCY/nil7xaxa
 6PlYDAvOdVDjaN4JcyvOK33SLdNQlJSPaZMIraTwRpn3HIkyP1h74NRReHH2lWgJ7eFZLCfEc
 bF8eHDs7hMIrsall0NEeNunR8yKDu/k7EHvejkji6GpHpl7aVFE37fEiuu3n8zs6c2UKSofRn
 z6tyFC9id+MrlOQLkqqoeEzmtEG6POwljWd0GxEJvar1K+zhPo4Ra7SHUrkyQCalwrJ9TGg4o
 3n+z/OwgfyZ88xgp90YW//B2L/jkaQ3Fh1dLg0ZoJtaVp5icug=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.73 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

atomisp_mrfld_power() has no more callers and produces
a warning:

drivers/staging/media/atomisp/pci/atomisp_v4l2.c:764:12: error: unused function 'atomisp_mrfld_power' [-Werror,-Wunused-function]

Mark the function as unused while the PM code is being
debugged, expecting that it will be used again in the
future and should not just be removed.

Fixes: 95d1f398c4dc ("media: atomisp: keep the ISP powered on when setting it")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index 694268d133c0..10abb35ba0e0 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -761,7 +761,8 @@ static void punit_ddr_dvfs_enable(bool enable)
 		pr_info("DDR DVFS, door bell is not cleared within 3ms\n");
 }
 
-static int atomisp_mrfld_power(struct atomisp_device *isp, bool enable)
+static __attribute__((unused)) int
+atomisp_mrfld_power(struct atomisp_device *isp, bool enable)
 {
 	unsigned long timeout;
 	u32 val = enable ? MRFLD_ISPSSPM0_IUNIT_POWER_ON :
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200529200031.4117841-3-arnd%40arndb.de.
