Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBSMMTPZAKGQEHJXIQ5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B40215DF88
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:09:46 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id n9sf3475424vkc.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:09:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696585; cv=pass;
        d=google.com; s=arc-20160816;
        b=uWhIGCBq7GSly+nuANVDj4qh4su9DiktCHN8fLdbg0zV0CagqoaLnAroysrolbrGZT
         E92Gmw24bv78D+MW65iYci3m8gcTC85lvoRsEs+4e03ssRf5i9hX/ZYCwqKQS+K1MDnn
         Pk4NE2GgauX4nx7UzllXA8LiW0/7jj5skWwj4ywSAJTsFRwPOMoG4iiASdhk4AebZFYe
         FOo+SB90Q1XzTaDXcOKyqQ57RDVl2T1WJ2wL1es7DjVDLcaq6wL8e47xZSrdMTtZxj1Z
         44GZDaUxZb9SV0+RaAmLBFmoXeyPKMtmDpnsQ+7UJez5BBsTcH+uC+spZKf2RumGeoLh
         CHJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=NHCAYn6ycqX16w+EWMOvfUhSifbwSc8K5ocJcgQ1KQY=;
        b=IwpYSQx6brfER5p+K7ycYYTXB9aergrsee+POpwQvUUzxQ6NtSzXH7SryRjgafcLNs
         vTqaw0b6U/FXfpHNBJ4oN4UOMG4ai3TmZh7OmeE/le6RZ7fLEBJCy+byPTmIn753JsZo
         eir7y9MpVzAua3hQkC7ygQJg8ICytT9+HvydXMkpa8+vdQ5Ttiw1K7/kMA00I++gFBp8
         54AXMyU1b8tkSTSFDH40qqjsx1/rBOlQypgZjt4zYUUJ7jBVxL2uFtgoSjN/a8zNfdLr
         ap+wqGhuD+NRkUBYsordUSKlwBe3gzmJp7gNctuLdmO1aCUlC8zGpBXhK+jSZEWMdgXG
         F1ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YvOiW7OH;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NHCAYn6ycqX16w+EWMOvfUhSifbwSc8K5ocJcgQ1KQY=;
        b=XWWOl8zd3DzHzx2q8fuGWDm2lGIrBpEQlles2s9BMfSIEzYpLK/30aVZSk5F3Fk3rF
         dJHsO6toN7UBVdtD1VOhpsuFzzCS2ErMiH48aSotKY3ibycWjNqVdDIPpv9o6rd9OCzT
         cmUrfdEKikQ7omqX0QMER6j+K3z6oI/YXWGyeRPUMGrmDLGzCSSmYwvQwR58t1k9pOji
         /OMmjpR6l9KgJ7DMHtScL1erzC7w78Ahe26yYsVKgJ3fEFxh8i09IUpUZfrYtSxUNY4O
         zaMNF4prPiOVmN5ntBxvvhXbzukJNcysTvn59SaXWTJJDTSR7+7PvSadGBURsWhVMk5O
         /BIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NHCAYn6ycqX16w+EWMOvfUhSifbwSc8K5ocJcgQ1KQY=;
        b=r8cLpYB/PtYBh+pVEKTUurgGNl+pSKbrjeVdCWYZFzYAnn5j32Fk+OCOK6DF6LprnH
         eKcxGXLPDXZPAcF2bI+LxTUNYXkfal+Z/oXNAXraxU/FvC5KbObWmEJaxUpXmbe8iqv9
         h2zpgvF1ll3nJ3nc9/9PJIbPx7jIZFM4jGDBOc8NNqaiYmQpUKq5x0tU5nVAJf7Q2WKY
         XnC5r1RfSQm0n9CoG1oon8JBGKGTRWVT3j493kociv2QAcvMs745VNr0IuPOaXffsyj0
         OjMP2AjhlmUwtecxMwe5DCV+IE5ZyApp6e+kqQAtYTi6QV2XtVR1W+qPZ8jb//gP+d4U
         8RzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXnN88iv9r0eRqLxRV+Zhi5zIyteQVCR4Ixvzq9Rx7Ncb5RzPvt
	g3v3B1uHvJ6Iic3SUx+TDdI=
X-Google-Smtp-Source: APXvYqywg2I1X8QNh5bblS0RFEy+xASLlqu8rJsq2w+sHzdfO/hS0JT1S9KSKXw6aPZGk9tPOm6MAA==
X-Received: by 2002:a1f:4541:: with SMTP id s62mr2083343vka.59.1581696585621;
        Fri, 14 Feb 2020 08:09:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:c145:: with SMTP id r66ls140205vkf.1.gmail; Fri, 14 Feb
 2020 08:09:45 -0800 (PST)
X-Received: by 2002:a1f:9e86:: with SMTP id h128mr2161443vke.44.1581696585188;
        Fri, 14 Feb 2020 08:09:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696585; cv=none;
        d=google.com; s=arc-20160816;
        b=FAnIM0XUCnmgYCwX0C+BEYAcnodoM29vSGjc62KIBcWG1SHyUavK2G3mJztdgUrG3t
         TVYqgyw4WPPDOnyOU7J5VR940+ZYakNuLQV22BOjlj/W0q3lSpgXU/K21Dot4kD4ufEN
         wGDDtFyZClW7XHalUCShsK1FLzzniSlMIOspVLYZsM3fidkT84zFZ6zuxlKA3mb6kMKF
         9eh/81Kll3AGlpmQ2mnPPgqbwa/v7eY6VP1wGBzuQji1UdIqkDYwqnvzpjXk3CUx5h29
         l/camJ9c8l6T/jilBfguNbZei7dNuMB1HtHxdNU/o8wbjPTficYpHtwMqcKtjBtvQ1Pe
         R+zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/3nc0GY/LYxF77Iw+zK8n28nPS3Ji6BWs/WMxrU4n8I=;
        b=cVAbExyrMWLu4NFGbLmASWyvJsnTlBBk2COkHmUCCaMkpFwithNY9bYdat2pP62Sww
         W33C/4LPI5x0rlrL9/boIe35xjwDqQeiCqPzYasalo2W6+0PXi+ucUY8UzWofSWdGMyy
         yzKG+HBPC0CkT5l6bnd+bv0F82myilej2jZWX7R67x/wIXtgMX1SF/yh1sHVebNZiWRL
         u/XTJLVpVbVnEZ5f2sYtsR+s/i6ClpM5/vJLfYDNkY7VPL2s0mhZbIecApCpd3/TUgn6
         o26Cq5oY3SroyU+63g2kL4neaW1Ku3B1pD33ZCJ1P6MfcuNubufpsK1Ihz3dkVJzVm6z
         XD2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YvOiW7OH;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w4si297074vse.2.2020.02.14.08.09.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:09:45 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 634B42468A;
	Fri, 14 Feb 2020 16:09:43 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Vasily Gorbik <gor@linux.ibm.com>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-s390@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 372/459] s390: adjust -mpacked-stack support check for clang 10
Date: Fri, 14 Feb 2020 11:00:22 -0500
Message-Id: <20200214160149.11681-372-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=YvOiW7OH;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Vasily Gorbik <gor@linux.ibm.com>

[ Upstream commit 253b3c4b2920e07ce9e2b18800b9b65245e2fafa ]

clang 10 introduces -mpacked-stack compiler option implementation. At the
same time currently it does not support a combination of -mpacked-stack
and -mbackchain. This leads to the following build error:

clang: error: unsupported option '-mpacked-stack with -mbackchain' for
target 's390x-ibm-linux'

If/when clang adds support for a combination of -mpacked-stack and
-mbackchain it would also require -msoft-float (like gcc does). According
to Ulrich Weigand "stack slot assigned to the kernel backchain overlaps
the stack slot assigned to the FPR varargs (both are required to be
placed immediately after the saved r15 slot if present)."

Extend -mpacked-stack compiler option support check to include all 3
options -mpacked-stack -mbackchain -msoft-float which must present to
support -mpacked-stack with -mbackchain.

Acked-by: Heiko Carstens <heiko.carstens@de.ibm.com>
Signed-off-by: Vasily Gorbik <gor@linux.ibm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/s390/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/s390/Makefile b/arch/s390/Makefile
index 478b645b20ddb..9ce1baeac2b25 100644
--- a/arch/s390/Makefile
+++ b/arch/s390/Makefile
@@ -69,7 +69,7 @@ cflags-y += -Wa,-I$(srctree)/arch/$(ARCH)/include
 #
 cflags-$(CONFIG_FRAME_POINTER) += -fno-optimize-sibling-calls
 
-ifeq ($(call cc-option-yn,-mpacked-stack),y)
+ifeq ($(call cc-option-yn,-mpacked-stack -mbackchain -msoft-float),y)
 cflags-$(CONFIG_PACK_STACK)  += -mpacked-stack -D__PACK_STACK
 aflags-$(CONFIG_PACK_STACK)  += -D__PACK_STACK
 endif
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214160149.11681-372-sashal%40kernel.org.
