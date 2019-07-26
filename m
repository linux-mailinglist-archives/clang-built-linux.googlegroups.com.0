Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBVUG5TUQKGQE5KMCXFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE0476825
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 15:42:47 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id k21sf58796999ioj.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 06:42:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564148566; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q9ZRVfiMzUYA+Z7WfPJ9m6Z79Yv/WEGJgRMQdk6PpAa9qrUXgs6u3zkOXBOGEo7K2I
         T09kH2Ndy335UUDYRGJ/QBkGjm7i3eSXHO9gKA9O5GUNC8xea+WHVf1zJClxHQDIpoxk
         H8r48PUs7QDtTz/Tlq90SBG1YHzEBBzrcFNf7hMKYenpeDgqLXUM1xi3BHWPcLdtX7ha
         OsDcctZSIURkvT4mH/L49iGZlyQ7jycKB7bNHl8hzkkEcqokMH5Oi8n3DrgO26fWwzN8
         y/Dptbbd1PUjlpcQQzUC/iwBue7hE0u7Ez7LiT4QACMxC8DZ3Je1T183o1C5sWbZW+cg
         Ur0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BAJCFgkfN/ApOACxxiLJe4V3Dz5IaRob323xGJcXZm8=;
        b=EWned6XAWGeRq7Hdwrr74sgLxWKqRQrLpPH1qi01499T20FMKM5xdFtljiVHSoYJZx
         Bdvd9dSxdAqAv3hjYzfBEdgrFF4UDGWAM4qDQTkApudSREoLzM9/6X1yWz2tVXJ+5al0
         7zo5PzPUdbqVKPyWJ60ntspolZ8fyChCvI8z8VbVplOwULU7qjD7yOUAobn/3bquwaAB
         U4MPQczJIbXtzHNf4k2IhdhNtqaXS51YxBGF8AKFXeXtBYAPuxqs8bnQWP10cB44HRg7
         6DFqjwjvTKg2LnMHuqRmCXLGeg9iVdz/+2SIZKl45oA42iL6XvQBf79Bv6dc9eG88OtK
         vM7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oSy3V2Rc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BAJCFgkfN/ApOACxxiLJe4V3Dz5IaRob323xGJcXZm8=;
        b=EOxoWjVEdstmRculVYWTInbL2uumLdVwVavxbVKcA+e+A6ltwmgZB0gLz87C8hH0Hi
         FimUZ+W4tjZOXHW52/qxu5C5l2mNWnmUcXD2SpqU/GKGjq9IBBB5RFLVmf/vdqBynJpP
         kQECUtUpRzMw17Ds0RPZZWtwyGcyc2bawCl3fy3VnoHmkAwcRjlXPnthNN1tFNQPaKCr
         LLh8bvT4uLy9D600JbgaB5O6pHrKzYMPesdJ1G9GJ1e08LfVsPYtmH2GcQrFNqyprd4L
         +GcDObNPlo+Kacl6deFByTqmCHAxUPgCLH/9eP+ubeLrAfHz/I2eRsCw17Bi1+ZEOIhY
         d60A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BAJCFgkfN/ApOACxxiLJe4V3Dz5IaRob323xGJcXZm8=;
        b=C6DK7xzM4gTZ5AY3RhCDEze99OL4Q4VUOEwuvEhaLJuNnPZCxhl/fdRdsP88rLiwS1
         fMKckuSqT+cyZfHzpm4Xpn28/yGfB29z0lz0j92XWxesKr4oTFe9+ABt0+0q+N1/hBeZ
         G2oG565HudjYNxk1mdRDvInKzxUn0H24erZRb5CeZwLcl1utCH6ZFDtm9XFB7sIYC5tM
         Dscgn/JS4RS6cZcVX70yIYev/5J2ibRXEMOXOZEKJWRQv1L/vm6EMLOQbkk3ODO9wnm3
         oVRrDnL5O6ikGpZzrvS5OvT1cfkEmXtn+pG8qaw/gRDkhitlYgoOTvjceIV08u32Q0zs
         atCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV2nHLEhLtBwc6lrzmXuvDGUU9I+C6s/xjhWaJy2nnWHw4I6+Vk
	CZN7ZU1kel0bK25O63g1Z+U=
X-Google-Smtp-Source: APXvYqx+WMz8uygnFaCzSiVl0VCXU0zn9i7C+9SvclOdg39WISRh7nLkuD45qOXAq9NnE7Z6nyWfaQ==
X-Received: by 2002:a02:c90d:: with SMTP id t13mr94642442jao.62.1564148566482;
        Fri, 26 Jul 2019 06:42:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6503:: with SMTP id z3ls13924141iob.8.gmail; Fri, 26 Jul
 2019 06:42:46 -0700 (PDT)
X-Received: by 2002:a6b:f607:: with SMTP id n7mr51020223ioh.263.1564148566206;
        Fri, 26 Jul 2019 06:42:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564148566; cv=none;
        d=google.com; s=arc-20160816;
        b=cXw9nvf0raZ6bek1DZIYwog0md3RZ1LKBYb5YLpz/ayxK1jonmu3GqDhcvsc47K96D
         EUOvq4xgVVRhsgo85l76Ugkk1yJnTAK7nirycVC1vOTOIuDgg8gde2Efopr6kMbuLRwY
         Z/8yNy9ijXaK85yoQsk5prnP+14YIaIVtya4pRkcwmcQndOUS4sJChq4X9HLXSrVwg4u
         erg5ErToZFJ/Kv+it43HS/wvzMkmYkgOv1ouGRM+1bfFazHd+FXDQYf60IWpKCRbNfYV
         4bXH8rYcb9p5q4RPsoidIVK2Fl8yAo/cibCRQzvDAEUf+e+ZhABfmIr9Xls4mK9friSc
         yx9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PBkHSXazkDxZ1OUpHhqs/52Ojm7eD4qGIfmVJCw4asY=;
        b=fMmi1cpqNW1Satm9h3VVL5idP4oSJwAhUyRMRlNt8oKAO30MVQcwGlnab3pBN8o2NB
         YV30U2Ek5nDgqJ2oZoPlKM8hxVfoNlea5BQ2hQ15i7o9+858lKWaHMDS5d9majF+u1D0
         NDVPL+XQJuuIvfviwySkJcUbeNh4PS2dLkpOPlVJhQ1JsV+86vpj+l3u9c+p29xa99/Q
         a2zDdggeoEbwYTRb+7RirV15NQvF0F2i6V00UgIeX5eWZB1hHvVGJl/ry1OTZ2V52IkB
         2EQdE5LqT7/9LO15co58+4wL2otE04BYy6DkyK+5UnbVBqgtPsr6tzKXv6CWjq2cghFB
         nRQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oSy3V2Rc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m190si2022077iof.3.2019.07.26.06.42.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 06:42:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9FF6222BF5;
	Fri, 26 Jul 2019 13:42:44 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-acpi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 21/47] ACPI: blacklist: fix clang warning for unused DMI table
Date: Fri, 26 Jul 2019 09:41:44 -0400
Message-Id: <20190726134210.12156-21-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726134210.12156-1-sashal@kernel.org>
References: <20190726134210.12156-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=oSy3V2Rc;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit b80d6a42bdc97bdb6139107d6034222e9843c6e2 ]

When CONFIG_DMI is disabled, we only have a tentative declaration,
which causes a warning from clang:

drivers/acpi/blacklist.c:20:35: error: tentative array definition assumed to have one element [-Werror]
static const struct dmi_system_id acpi_rev_dmi_table[] __initconst;

As the variable is not actually used here, hide it entirely
in an #ifdef to shut up the warning.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/acpi/blacklist.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/acpi/blacklist.c b/drivers/acpi/blacklist.c
index 995c4d8922b1..761f0c19a451 100644
--- a/drivers/acpi/blacklist.c
+++ b/drivers/acpi/blacklist.c
@@ -30,7 +30,9 @@
 
 #include "internal.h"
 
+#ifdef CONFIG_DMI
 static const struct dmi_system_id acpi_rev_dmi_table[] __initconst;
+#endif
 
 /*
  * POLICY: If *anything* doesn't work, put it on the blacklist.
@@ -74,7 +76,9 @@ int __init acpi_blacklisted(void)
 	}
 
 	(void)early_acpi_osi_init();
+#ifdef CONFIG_DMI
 	dmi_check_system(acpi_rev_dmi_table);
+#endif
 
 	return blacklisted;
 }
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726134210.12156-21-sashal%40kernel.org.
