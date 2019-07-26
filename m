Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBVEF5TUQKGQE35QMDMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id BD612767D7
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 15:40:37 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id v20sf14079782vsi.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 06:40:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564148436; cv=pass;
        d=google.com; s=arc-20160816;
        b=vK02bcW2JdRSBtPwRv8WUavi4zQdFa2D28aeI9LJEckHzFFzIGq4MXV6l4pTBidI2s
         DE1LITDxhjy4Bt+5HrxTa02JRhC6EaZ+eQKkPCGjV/yACkfxrT4r0gXeakjEnO7/YKAd
         m8LlGTD0hriPQcPFxcMIoLmgJuEDdFNBh5HK8zWgdWy4yHJGVxmscpJ5Fcd/ipggjq3m
         nL+skkIrdGQqFR4H+eGJkR7KWBv1LqrCrr8Gqgka0etJ3Lx2MzAuzJlblYT1asg+uUGa
         NkDikwwJAmezIbEswDgS3wFmxmdTpMvsLrRYn5+m7hT9aCabkE7J/QmlK4ZRoNaS+w+e
         za6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=GgbtaYG1SxahBA556bV4sGjAygZyeneTZiFW7yuPYfo=;
        b=RzgzzSy4uJSjHMV5dU7l5umG4vbTpJobKOW2UuHANZWyE3fQesN68r+oYwc3GfBfvX
         L5ecTs0bb6rvuyf2KXKYT1dVi7AogrUOBK4dkMSCg90ImoBWu9ZAEMWUGcL+pg78sKIt
         8CCGLN3TakTTzA38Qvf0qw8AAUEulLTjfUqV0FxtaAMtXsn4eTPDZy0Q1zydvPQcBOmH
         rrQCCa5EAKPfR0dq/lJqVrgyf+H8V6I5zsc9MbhG/t4GpmMeIRqedvvQjiDhbI+FWPx5
         cfK8tRzXeZD4fpPkIu9mkJh1xe02yz4ALA59RmfQLZREM0kuVtx1ihWO1B/8T24EzqHt
         jB4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uUH8bzv1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GgbtaYG1SxahBA556bV4sGjAygZyeneTZiFW7yuPYfo=;
        b=l03u0NGJ5YLhQVicPElj8iiERrC3e0WsZgWaeKU1eGYgHEkHL6K+ScALcIMnCJ6ch6
         Pe/ddUeNZxQJB7tGgE12PsAqL9u4+EaEniCboP8drR8siFoYbEzE1XI+wqZDcsjuGp3Q
         z1NgDUw8JfCqMFiAaDBzR1zP/iB7CVCuFbRH9hCKDlZoZ3bcko56xXvn9vUV1lPvb1Jo
         zVqcsrY9IbpOiuUQkVD/UWc+xtEGU8tDf6hWGyEFoEDqnOC8fumEeTOM9pzr25BJdP+n
         mTzGlCo1bhNTtTgraomrt63uhe2cdgVI/VJIEO5pd1ls62lJquWpqedb83qWDBfDIQZI
         90AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GgbtaYG1SxahBA556bV4sGjAygZyeneTZiFW7yuPYfo=;
        b=r7hjq21PUWvSs0ASGp11gOnEslJY7Fn1TREVOTGt/cD0JMyGnDFIzw0VKqiXbR9LGE
         I9YiG689asA/YD8RqhBqubvW+jneTyXATRwIuP+/33mcehsO62NzPO7sFiZSyQgHGUbm
         0juvmn3DfC7BZiDrjrnBgv/hrga5otfAlumzlH0MKBEZMUtjTX840vpnjvcLilDC9KnC
         KixdMmVd98Cj+eZkDsZtDLE+wCW/XpdEp+DLRueighhZtwQ0AmKLdND3oME/6wKs7Gob
         mHGFWbsG8QMSLmrIDe87cWMhxEd9jrZblOdnOtBmZQIhq2sowF9zqRVbLfMNxrJJug9w
         ZRxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX+zUNCn/sznZ0I6v/ZyiQmjAdfOqOCz/x5qGNIULuBAUtVCi2i
	I4jf/FsbuyYDnWE73arijdw=
X-Google-Smtp-Source: APXvYqx4m0+yFIuHM42uBmvVAV/wi2f15OGx/Iz+v+eIlJk+2AKOx4GeegM0JAKIlov6Y8LFMAkneQ==
X-Received: by 2002:a67:ad07:: with SMTP id t7mr7728444vsl.214.1564148436797;
        Fri, 26 Jul 2019 06:40:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7d4e:: with SMTP id y75ls6921461vsc.2.gmail; Fri, 26 Jul
 2019 06:40:36 -0700 (PDT)
X-Received: by 2002:a67:f7c6:: with SMTP id a6mr61431642vsp.120.1564148436580;
        Fri, 26 Jul 2019 06:40:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564148436; cv=none;
        d=google.com; s=arc-20160816;
        b=pkJ+4QAa0zZoRhxf5vfaTPJ8DtZGnhAROzWRp9koEs/oWiIX0tUnrcM/9weq4szkK3
         COImsRVhVO/qSWHvDK0zbBDvtzjmgu0NRm+XYth6/G1xaNq+Iavaq0Kh7I9vWL1SAmsN
         pcHS/Gp7VUYxIJ78mjMFWkTB2zv5PL2Y0MGpoUwq+0lXQv/O+fK0m15Rj6xT0z0fK0SH
         tZOBVlfOEwowWaCCq5aR7VE9bnFeYI1GyUW+833MSwc3vcZ/PVnvG+m9a3isJPkdCiJn
         qmvn+C1HyEeYOBvoMr5AoI/lOV8APHQnJyH9NbIbCee+xD+fTNce47YuIFylhiAakwUF
         4roA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WllT1lMu/WdllrTZi2VYK3J0oqJgzlVEO9qtV3WqV0E=;
        b=JuEBvxchj7VKwY/ywKz6o5lNPb0CfBAMt/IMmAc5go3wammmLXOFQ3R7RnA4ODBnwP
         FC8Xgm4Gx74/xWakJSgCfMYBZhv1d6PVUQPF2UdmYchjaxStRtBg3DqtH9AqYDJRHI28
         E6ZVnUPKkweJ/kVo16OIEMWZZSJj6LAxaCOw7zOXcxJxqyRoQQFBFFmWDoUciSoEsbLd
         2+UwW/FkD3anpKRoNStvoo5u8r5S/B5YSIU1fAnHXmdcN4GIo/OrWiz2FFE+rHbvLPfv
         uMsI0jgvGzaqt9lwWoUfOzyQkLlMjzwP5O78qd3AmabxVpICeRxZOSBX5hD4hFhqD2bw
         Iplg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uUH8bzv1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e126si2829165vkg.5.2019.07.26.06.40.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 06:40:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 90E2C22BF5;
	Fri, 26 Jul 2019 13:40:34 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-acpi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 37/85] ACPI: blacklist: fix clang warning for unused DMI table
Date: Fri, 26 Jul 2019 09:38:47 -0400
Message-Id: <20190726133936.11177-37-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726133936.11177-1-sashal@kernel.org>
References: <20190726133936.11177-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=uUH8bzv1;       spf=pass
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
index ad2c565f5cbe..a86a770c9b79 100644
--- a/drivers/acpi/blacklist.c
+++ b/drivers/acpi/blacklist.c
@@ -17,7 +17,9 @@
 
 #include "internal.h"
 
+#ifdef CONFIG_DMI
 static const struct dmi_system_id acpi_rev_dmi_table[] __initconst;
+#endif
 
 /*
  * POLICY: If *anything* doesn't work, put it on the blacklist.
@@ -61,7 +63,9 @@ int __init acpi_blacklisted(void)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726133936.11177-37-sashal%40kernel.org.
