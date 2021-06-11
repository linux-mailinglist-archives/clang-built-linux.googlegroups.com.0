Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBWURR2DAMGQEVZ6DNOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 1770D3A4602
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:01:32 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id w185-20020a6362c20000b02902208d90c8c8sf2026151pgb.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:01:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623427290; cv=pass;
        d=google.com; s=arc-20160816;
        b=EzJ/O4aQ2lcP8Vo1ZU6OInR42ef1cpczm7eJWKrwSLqTfgsAM6H2rDsgytHQ2sQE4s
         lH5m/UTGuT14wcfEoUP8VIjHPJ4sf5JkgwZipUh3mJ6QeWGE4fpjjlAIR2O7yKtn3OAZ
         ThbR8QRoOnywrdtX2tSz+VrCQaPrIe0X+zwEfirJvNvU+fRD8wLEycQGDpj8awwnCHDE
         JFZZ+hMV9wpWZLGD4IwuzMUuuOJ8DPlQSQh6lXJ4ShxG2h/KCyfRjs6HBTRqZHd7q16s
         nxDw0m11MFqGJg7II5942qSGV52jBOM5Riifnnr72Xt1qrNG41DVPXcZA009HVdI0guY
         co+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KW1MzPPPIuhPdz6z6XSipwy3AI0r2M6+2KMs5LPOjqU=;
        b=zZg+Ghs7+rUQ5BTKsxBDVSybX4MD2l8zl77Gm8PTS+8nH656Ksb4qg+GMfv5/h7eCr
         3L8R3SDgdQlWeq0+0mJJ+R6WTQCerDXAUnGx+DV1xWw7x1k5NyE8KJ7jD9+ZjqhA5Sa7
         93HheWSYWP8uVYz4aIKjDlRFR+oxd+m92xQJoV5WO5l0Po7yVdPJNmtTUAOmo1JS45tL
         vC/FP9fjopAnwXOBUhWxlCHQJX2AronKCUAzbcRajvaovOYzXfMsgwOnSDV1uZYDxqSx
         mGm2Ww9sQj0oQwZ7ErYxdZv8PxW5xU6IG/le1XZMFappOA87ceCRGH7Ik6gTsB+5oCsy
         rJpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mEQEIJEk;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KW1MzPPPIuhPdz6z6XSipwy3AI0r2M6+2KMs5LPOjqU=;
        b=HwAhlH9xcERGjp9TsnY6HeiFfcX9/DqBRw9huoqSbDFHz2dqPzNy2KJ0tYAxwQ7PXw
         Ot2hrNagA23SbDZGuH86lIc1qfdRGPzQILMx24SRs6EQUJHPz2OnacxCJEkH0jkb1/nO
         BaIH9oz37utu5oDH6+nd+kz5fT8w1/SCzmku3W4KIl1lwD/4trMakeoUtPKblnCFN0hZ
         P8PPME5y6BeZGN6tMZ2S/wkCdeBthav+y09oxbjhuZDm+t54d1Z2lIXJqLgH9sX2s8aS
         WKV9/ejS11nTzckub51snbnkKlyAxqeavDgRZtBL2Mbsp8XnxdBH93+G8wQbhgwGuudM
         e1Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KW1MzPPPIuhPdz6z6XSipwy3AI0r2M6+2KMs5LPOjqU=;
        b=ixz0g7bA+IoqYS583ZvxNGPga7j4BYOihO5Urh0O7WxWCy22BYBFQbH1trDEifcjvu
         7ty3E5qXombhFwg07sdUlqUSRyqSCqfyJVkng5ZGgvOcTPwXcFRZE/hV5COlneWuPrV/
         3eTItr9KLCCW7J5lpDQDVTaAU7D0xycwlklrcc5ThqJvqfxInko4Ckc2QDDpsS+frLSe
         qIZZxIuOtqpZA5tfwCOZCRHUrUPvwaAYGu8SColp2gYZ86T7Yd8gk8UyknzZxBO9QQHo
         BHRVqO+KOu7HOj+UERsRk/07Oe4h4xVoel/aSK8znEqq+gTHnwWHmy9NglD5kRwy3aDO
         PRgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532d+KnFVlOm9N/Kgh+hvYiXNa/tcXnu6g+3HtGtJC8YXUNos9Qa
	rRhr1HTFM3ONc+UOBag+Hag=
X-Google-Smtp-Source: ABdhPJxr6JLs71zMVVxTm4aWjugnuO7ZdSjWt2tYOTseqOsnvCtkJT2Lbep2b02VpH5yNUfnAp6dMg==
X-Received: by 2002:a63:581c:: with SMTP id m28mr4289863pgb.353.1623427290843;
        Fri, 11 Jun 2021 09:01:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1dd4:: with SMTP id d203ls5013594pfd.2.gmail; Fri, 11
 Jun 2021 09:01:30 -0700 (PDT)
X-Received: by 2002:a65:6642:: with SMTP id z2mr4322942pgv.388.1623427290332;
        Fri, 11 Jun 2021 09:01:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623427290; cv=none;
        d=google.com; s=arc-20160816;
        b=sU5G5Zk0AZuoGdSf1sULYVQfJYzw7EF1QxDWjwXtwrksRxFiwRTNgG0jDSW2mrUamE
         xrCsUct35e8/At6kS0fCq988MSBNoOh0XcGOxjUgFrSQgVSK0qbhALaNkowKj99ZvuFD
         aRcljNKI4DFcpIHgRTZNdy54hOFbyH1P0Lh2cVHGaXKp/UXtqI7K2i5YPc8V+MIwSL6U
         Gyakpne7EC0VUSD64QiWVD5LpE5pTCFkbTuh4rlbrlcjTQ3bPKP5bEFRsbMf/zJr8tX0
         R1Z7TbpVQXFkr1tcOGPalqn5nWBS/WOO6neSaagga4nfiUDuE/nae24ID5PfCupgJojE
         hYuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Qh6fUwhfWguo0206wYaXTsvP1VPTLG5DyBSO/qGICoA=;
        b=Jhk3qqvGtnYRk7W77RSun8UbHcqhlxSQI64ch2l1gYuofWQ+oZmLbZwA1CZ/QpVUbX
         DDmq/C/9bL92iBsEBiP4yekNqqVTFoBESK2uuze8ulWynWR1VKszbOGP579WC7Fed2Zz
         pK2jDZGAPwUm+UC9XaUw37Ba5ZBBQrJgOVIE5+/f58xxOFYhTUES8jtGoHisEAWha0dd
         oH95tXSukA2IcjFRuuziQqe6SXDLw+SaEYtYSTnHkySYZe8EcmfN0182jjP65kTeabDc
         nWCOLRNzl5yewlKLHisFeqPaevLIEWZS6Chuzh7U+qMELVli8+7vFi2C8Ie/5gRLobeC
         90Gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mEQEIJEk;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b18si620734pfl.1.2021.06.11.09.01.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 09:01:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6628F613EE;
	Fri, 11 Jun 2021 16:01:29 +0000 (UTC)
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
Subject: [PATCH rdma-next v2 14/15] RDMA/core: Allow port_groups to be used with namespaces
Date: Fri, 11 Jun 2021 19:00:33 +0300
Message-Id: <afd8b676eace2821692d44489ff71856277c48d1.1623427137.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623427137.git.leonro@nvidia.com>
References: <cover.1623427137.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mEQEIJEk;       spf=pass
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

Now that the port_groups data is being destroyed and managed by the core
code this restriction is no longer needed. All the ib_port_attrs are
compatible with the core's sysfs lifecycle.

When the main device is destroyed and moved to another namespace the
driver's port sysfs can be created/destroyed as well due to it now being a
simple attribute list.

Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/infiniband/core/device.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/infiniband/core/device.c b/drivers/infiniband/core/device.c
index 2cbd77933ea5..92f224a97481 100644
--- a/drivers/infiniband/core/device.c
+++ b/drivers/infiniband/core/device.c
@@ -1698,13 +1698,11 @@ int ib_device_set_netns_put(struct sk_buff *skb,
 	}
 
 	/*
-	 * Currently supported only for those providers which support
-	 * disassociation and don't do port specific sysfs init. Once a
-	 * port_cleanup infrastructure is implemented, this limitation will be
-	 * removed.
+	 * All the ib_clients, including uverbs, are reset when the namespace is
+	 * changed and this cannot be blocked waiting for userspace to do
+	 * something, so disassociation is mandatory.
 	 */
-	if (!dev->ops.disassociate_ucontext || dev->ops.port_groups ||
-	    ib_devices_shared_netns) {
+	if (!dev->ops.disassociate_ucontext || ib_devices_shared_netns) {
 		ret = -EOPNOTSUPP;
 		goto ns_err;
 	}
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/afd8b676eace2821692d44489ff71856277c48d1.1623427137.git.leonro%40nvidia.com.
