Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB2WTYX3AKGQE3AYDLZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC1F1E883D
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:00:43 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id h92sf1443588wrh.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 13:00:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590782442; cv=pass;
        d=google.com; s=arc-20160816;
        b=fUYTg4+8xoI4MeLDwXltWF0PyfYKEIZEMpYuQzwAj7dQ27LXUdKS7n8bxuYNTis+VY
         uQhuYfgCUI6TWG+u57UNfsCn/aaFizzYWVoqjXKjzBtWMxR7Y8clQYo4pXDYVODnUJkV
         rzsfs08w3wX2Y7WjddEYN9IhaTIpQplLYJMGv7moWUj9J4ZA3IEItK7/vRDokFPvvdK3
         b6lbc7+l5sC1qsV7S0tnnqLCzKKxxpgNee07VKGWWR2N+zN9fMrDHV/2+3yx/e4bjjbS
         +kREFeunmtRIm1DGSb0KY8z/8JyaDj9yrdCAdQyT8APoAoRLoBRtXCJuMSgGYQE2Owz7
         0ZQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ql65RKsrmIbyfOJI+tj21dMZ0yjCn823KjyzhQgH030=;
        b=xNWUIGrgDOcGBRDT6MsG2dbdRfSs586uE1oroujYNUSwJlj2HVtH+LTZBP6X8m9y5n
         8jEHY3ShUZ9x6rY8y48h/iW1+IcqXENHwy8MDVAl6g09YHIo2uejAM+ofoRCgshB6wv6
         3kswadjTe3JheAuXWwi75W9W0lMMraHG+OeWEEWpdlwh5Zl/hCBFvJ2F/n+/NSJsKma/
         CwKw6RF5wF6Og4iTrfcIrvRWXtfPmPn6lljpNNo8m1gYIShVKx6wmhfY5s0s0Fzc1dYy
         n0vXvmI4A+A9aNgflBO9wZic9UPU3Bh98qlPDAEUvsrP4xXqLBh6yrW4NltuDs2o1Qq3
         kwsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ql65RKsrmIbyfOJI+tj21dMZ0yjCn823KjyzhQgH030=;
        b=AV8FVMgNXbDSDzEYGy837iAUcTDJpwetPMBzjx8gYJtuE4W2ttU1OBDTOI0CDntZ7M
         +GBHk3amG8bYWOwVI5qta+VWsKeAZDUvOwWIBR2mIt9EP0SJWa8DBRldYHg73C/Lj2G6
         GAizzUc/APnNC/A55BMf9nejOl+BOcInh4lIezUA3w/HVrJMSMNHa+PU3xgGNY2ahU9H
         gdeB6XPyY9M+ZxGENB8n6enupnMvPz3iWwGgmRj2on5N4aQo0L+vKRLICy4MORZAzMip
         /TgupDL8edSHqA2rh1JkN1V5dQj4CyYVd+Oomf82YbFMSNykOMpavq9H1L6O/Sh7VbjY
         u0Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ql65RKsrmIbyfOJI+tj21dMZ0yjCn823KjyzhQgH030=;
        b=cKYQO3Z6E0nqJimj2+cRPbFsCJdsAcgMImT9yvGqzPvgVVfUC9cr2/g5mnQ51mg3QJ
         L6uasHzhrwTgBCkre/uhuWAEKcRg76OxStBD71v5a9Ud50F2yBAsKAetzXjVU28q9KQx
         +BdMWNNhyG+0ZmmVaKu3Dhi7k9jina6J7nfVHqkTL7bhSXAE6aUOE08C/1zOb36iWKNc
         2G/HdjuOGOPXIR5CpI0vSYWqzPqBWHG4HMwxyO7PFYd6ETZ2MTRPOx7bAv3E1TRNE9Wl
         P5QLlz/MhktIOEIXiqF/ttr3P9K2EQ4YLi400JSzvq+Ai2yr5Oc/LcAg14xU7xk3UGbL
         dELw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53340re0/MDi4jOPYaug9NRYUqlhAT53yRdtHPPZLa0Zmb882Q+a
	qqZAgsdEWCBqjrUUyA8s53A=
X-Google-Smtp-Source: ABdhPJxkd45MzYzsdtMnP+xLFywGdS4bdrhX3lmQUxXCaUZSMvAfthSlj8i/p/4h+jF/2nmSkKf5gQ==
X-Received: by 2002:a5d:400f:: with SMTP id n15mr10770838wrp.419.1590782442827;
        Fri, 29 May 2020 13:00:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fac9:: with SMTP id a9ls8565809wrs.2.gmail; Fri, 29 May
 2020 13:00:42 -0700 (PDT)
X-Received: by 2002:adf:e587:: with SMTP id l7mr10332851wrm.352.1590782442402;
        Fri, 29 May 2020 13:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590782442; cv=none;
        d=google.com; s=arc-20160816;
        b=Wvefsvaw48gdds5S9CscSFg6keoaKOm0tkfS5fVXCx+d+KwzCr9kQ5TqQnMnfGcyp0
         f/wfD10PHrzJFM33CXvn+2tjNnIKiiVgEV+on4i9iofWhxJBCxm8BqSC1E28OFrdPh7S
         935CKWfGg8JgOvAzo692aOSOtj7R8EZlk8JQuipBZ8RpldiIGvsyy5vUTzloL/D3Mf8/
         lcFTWmrwQZcnT9E5d7mbv6DOZhUILEwnJnN1bfXmZK0S6TQK5ID+tqCa1tx9E/hk6UI+
         slL0/p2HiYCvos0gIOnWPGVysOVz9Ki8WtuaBOHA127g9T7Ik7vOFRTePdZ5ZOaroLkM
         /voQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=PxD0rsvwSO8Zecv/hZoQyhLj0QKwVh7ohUbi31d2FyU=;
        b=1Bmj/whuTgGvgrpmSNJZT4K7j7HQb4exhQkzt9gZ/D0AARAeOwrLUCbcBsBh3TnwN8
         ulHguTAdmsc+Nnzr86ghOh74r00K9kIqzRTkO4nOOMK1WM88hR9WkBY/H7BGA4ji1dtx
         UUW64Fnc8SH6rHcohhtXHC5cpr5i0nG05FwozjcbpLUH8Vb6Uvtepv35LwnbZnZvyHnO
         0YQK1RUdUtNi76tLqTAffCazaPnhcKdVHZJ/n68yYtSkj9YW0cjebaJ8uNXa3aUy06KR
         yKpmF/nYBPu7uJpWGbny0Xd3GiVhJ67mM2akvFKtcY5McCRvwhc0UyVDR1PQHSWnH4t6
         gg4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id f16si593644wrq.5.2020.05.29.13.00.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 13:00:42 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1N3sZy-1iwnQf3ybI-00zltS; Fri, 29 May 2020 22:00:42 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 7/9] staging: media: atomisp: fix enum type mixups
Date: Fri, 29 May 2020 22:00:29 +0200
Message-Id: <20200529200031.4117841-7-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529200031.4117841-1-arnd@arndb.de>
References: <20200529200031.4117841-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Oi9GZuwYCtVW0YQN+bXyI0AbOsWHne7iHij3kFt4OBTdybYPLLc
 H1tbAKJGDVUZ/HsQa0IsK0ChzDn9x9fU4h3sHE2M5zUavENXzgppLZMmVaXJw8OgyvWf8JI
 6WLxv0LO1XndxyGT2+tNMSzcBc5pudM+yARQsUzCWMNXsbqpLy5LFNUd51iYNWH5M1XMuyd
 x4l1SpV6NWqnyboGlSK2w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Iey8Rc3idrk=:R17CteIWPzHogAGPk1oHj2
 Ef9fDUzN7RcPNaW6sLJmU2Xs+zMyOjV0Yi2Rm6e9hOJsxxSwz6p3nF0I1uqsJphWUNwjZ5VFq
 cGBRzn9WDHR4MSsXIyVXGbPM5VHX7gRM8FeUxu81KrIwXXEuiD5JHweTfRLdlm/a+8XO1f9pX
 IHrvVNBArScrA2uLz6vrjnJzdPI6bM1eACaJnn/LjxuRiinFSalnndz0ed39CLMJX5iKHlzsd
 dGA2cupAXce2lpCk7UQB5r2RJtVprgpO3JYpUGppuuHLwr0ClY2F+UH+mS5zdub7M+MEJhBU4
 ubSfRC+2iR2pXRFD4DxvMp+mVZrUH3X8+3YluC4oCC7orAFJZmArPNOIa5wjhufII/+BHgR/7
 gKW4RUhD1AquC5HQ4QQWq+uGyqDyjCG6G809Z7LmGYrzuaYmw/cKs5RZQnc4nkl8RO6IoTA1p
 dlzfyWYWzYYKBsrRyZZ/3Oq7Xkxj0brEtxLfpZmM6m4rhKx24bRkKrt0iAf9uNfMPnoyG8jSQ
 pcE8IBgbsu//iK333FfoLHYzqsRVpBqems8d90rwo1wRUKHk6Dziw2EZ3cm6K26OZcWQCDZ8T
 8C3c5a9jV7LDkWUSFBfAHenQKFl0tnPbPcDtNqYxhYYthptPMcnNxRxscHftceodQhl3bC6L9
 HcnxTel/SZ+jZs4Qt2XdlV9gZrGUJtMXXeEtYRMQ1h9p73p4/+a4XSlSh4alXgbnHDzbJ3yjb
 w67r9wWYFhXQYPwO9+nn3zEMuMnGYyNjYqMaJrzi93icSQhIYIRAjQb0VutuIsPYC8OUwACDc
 nAIbKVkBQ8scTOAeuXWvnyk94XHy1BVHXzrodpMYzYwVNvLrKk=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.24 is neither permitted nor denied by best guess
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

Some function calls pass an incorrect enum type:

drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:858:16: error: implicit conversion from enumeration type 'input_system_ID_t' to different enumeration type 'gp_device_ID_t' [-Werror,-Wenum-conversion]
        gp_device_rst(INPUT_SYSTEM0_ID);
        ~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:860:19: error: implicit conversion from enumeration type 'input_system_ID_t' to different enumeration type 'gp_device_ID_t' [-Werror,-Wenum-conversion]
        input_switch_rst(INPUT_SYSTEM0_ID);
        ~~~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:876:27: error: implicit conversion from enumeration type 'input_system_cfg_flag_t' to different enumeration type 'input_system_connection_t' [-Werror,-Wenum-conversion]
                config.multicast[i]              = INPUT_SYSTEM_CFG_FLAG_RESET;
                                                 ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:1326:32: error: implicit conversion from enumeration type 'input_system_ID_t' to different enumeration type 'gp_device_ID_t' [-Werror,-Wenum-conversion]
        input_selector_cfg_for_sensor(INPUT_SYSTEM0_ID);
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:1329:19: error: implicit conversion from enumeration type 'input_system_ID_t' to different enumeration type 'gp_device_ID_t' [-Werror,-Wenum-conversion]
        input_switch_cfg(INPUT_SYSTEM0_ID, &config.input_switch_cfg);
        ~~~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~

INPUT_SYSTEM0_ID is zero, so use the corresponding zero-value
of the expected types instead.

Fixes: a49d25364dfb ("staging/atomisp: Add support for the Intel IPU v2")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../pci/hive_isp_css_common/host/input_system.c        | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
index 2114cf4f3fda..aa0f0fca9346 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
@@ -855,9 +855,9 @@ input_system_error_t input_system_configuration_reset(void)
 
 	input_system_network_rst(INPUT_SYSTEM0_ID);
 
-	gp_device_rst(INPUT_SYSTEM0_ID);
+	gp_device_rst(GP_DEVICE0_ID);
 
-	input_switch_rst(INPUT_SYSTEM0_ID);
+	input_switch_rst(GP_DEVICE0_ID);
 
 	//target_rst();
 
@@ -873,7 +873,7 @@ input_system_error_t input_system_configuration_reset(void)
 
 	for (i = 0; i < N_CSI_PORTS; i++) {
 		config.csi_buffer_flags[i]	 = INPUT_SYSTEM_CFG_FLAG_RESET;
-		config.multicast[i]		 = INPUT_SYSTEM_CFG_FLAG_RESET;
+		config.multicast[i]		 = INPUT_SYSTEM_DISCARD_ALL;
 	}
 
 	config.source_type_flags				 = INPUT_SYSTEM_CFG_FLAG_RESET;
@@ -1323,10 +1323,10 @@ static input_system_error_t configuration_to_registers(void)
 	} // end of switch (source_type)
 
 	// Set input selector.
-	input_selector_cfg_for_sensor(INPUT_SYSTEM0_ID);
+	input_selector_cfg_for_sensor(GP_DEVICE0_ID);
 
 	// Set input switch.
-	input_switch_cfg(INPUT_SYSTEM0_ID, &config.input_switch_cfg);
+	input_switch_cfg(GP_DEVICE0_ID, &config.input_switch_cfg);
 
 	// Set input formatters.
 	// AM: IF are set dynamically.
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200529200031.4117841-7-arnd%40arndb.de.
