Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7P2ZPVAKGQEARUQ4YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 895FB8C033
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 20:12:13 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id c31sf67019736ede.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 11:12:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565719933; cv=pass;
        d=google.com; s=arc-20160816;
        b=e9PU9ugzXDSsOrXrmF7tsP4WBEe4MmAbmHlVQ/RB7pBZ4pCwNZ9l3bWxsNsu8kPSpV
         KbtbOsy9tG+iJ88VI/ghHn55soqWSGjOiRdSgqu0SO8bnl9/xi9nZLZUDNMLulw8jA7a
         wlQSNzlssqOkFdeC7I6dhgisIY1SNARvtPMUzavU60It2vrHGHY6gtvioruYmH+eXpeb
         OL0+lYI6wPHYbkqjjmdH9BdaaeMXsbXDfkjjRr/oNO46BylRZlZHGCR6KoSh8tUGOMUc
         5j1CGq+n9lSoS6VigxGWcaWpOcpZgs/LfIrh/wbor8VnoYQhu2Gjdg8e9/TeBIT9IJzs
         zuvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=KzUyDu09nKvBV6BF90XuVTBrwdtVNtAu+/0ACFG00Eg=;
        b=okizwgEuRyfdNv5J9efAr5zxbkZtoTbdwmnq9lAoLtBYDHE9/I0rtgWthWKuJonzB9
         bI/PS2+Nl649fXXpYUZKeYt1e2gZtgCvKcnRVEu0NucSnnCr4wKzzrgq1BMWkBssWTgA
         cMnszv9c5vGtntZrcfO0KA5j9oByl/LKvFW3585LdzfjelKx+jX+OAco4m1LFiC8qGa8
         jdzc6vCTIkYPyLDV56o0DiyVsJbspSmEzManl1bnzBfXITZAlvtpy2GrtQFgowfEa7Gh
         JEnPdNvMANksO2DPMMuTAfr0TYIeUAnpblOvdIXfQ2kCOXMOzkiqYGF2nxg4UOhOFDm7
         DW6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fvp7xvUo;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KzUyDu09nKvBV6BF90XuVTBrwdtVNtAu+/0ACFG00Eg=;
        b=pZLZMhUzKlbvGcg/nBKs1GX2ObTkRxw5p5ZtT47GjFjqGaiWK0ufzGfsyJdUT0Ykb4
         YGWW4QB425FCvDs9ZwnV/IzvrF+di/Avp6d90Fl/T2IpLloeg5basSXLu9jEQbSGSJmK
         ltMsuOETfir8nOlMiQVS4Ua1xywqoyw66e/ISulqAmWtPbXAzrrzTmu+VIlz8PICUAr2
         CFBEXIHTgwvQJ3284UTBdgxZbTfl89L8aMtur/piCsnuLTu5GULg4qqqffPfPiqu4c7P
         8lPbv8DdVCXrzxwAnUr2/LX7cpo0t4Muoc0JU0XLwBjvhETjPuUYPN4/S5pNlT9ITzdG
         4udA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KzUyDu09nKvBV6BF90XuVTBrwdtVNtAu+/0ACFG00Eg=;
        b=D3QY0lNUYmVnUYA0PiqzFdXouXDwK0DmxmPgXbDXCPDGOA9mf0+4ijygPhLFz+TS7J
         ni/kJV92RkJtto+T/xvzwS1uXmW3Cz7hhrcimuqV/iOrW3GkU6sqEr5o2YTw8hd6u+Lk
         qcgZ5iYI/klNKv1RTnfHH+3oM79BHUUZAArfTsLwT4KZL3C0hBR9/JBT17USPdtrDcpx
         sdl05oxLJX3Hko3UzyeDv02jxKIOxitRNJpozFJIPThrzUyk6Nl44qny/Xxs447SBwfH
         ZNQ03c6bpSzKJqycmD4FsE4+0eXGsFMLmcKVIiL3h3DVngZYKvnHw43rszj8MYnTSI+2
         j+ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KzUyDu09nKvBV6BF90XuVTBrwdtVNtAu+/0ACFG00Eg=;
        b=P9uognsw0kVhpdHb53ARpCx7sfy7KQa1W3jqcB9o9g0WDVaUD7WJ/PzOzG8eCJBqfj
         cGPxyRQbM1M6sBnXd5wxjjnaaJexoc/f9rSJyoFKwB9ghUMVbJnxs9Uf99845EjcJlTe
         LtH3zqCj3ePX+vQqow/ugA9yCFIg9WbQuz0UPr1xCCy9tdWyRuB21NLDepe2wFgZq9Vr
         gPhSjb/t8b3pj5j1BiaNrUoYHTerkb9npFwqL0TeQmi6kcXjWVEkQqj7CfAKb/AwkmyN
         e315OTai2qXljiS+2nYHpicEVVUsk7uiy6BoAxYdzjOLGVGUtCaGPtwe9cRQ6GizoS8t
         1Xwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU5BcRGC1/BxZiklprqY2bZhC51ir/ae+N1WEfJur46Sx7Di/at
	27teauOh8UKVZ+MuA1HFj80=
X-Google-Smtp-Source: APXvYqy97vCyDh/ROXRPcpPRO327xB/xKysfY8RhWQMBdOjak/vaJ/7npj6arlaEoJ0SvKwStrjrJA==
X-Received: by 2002:a17:906:a952:: with SMTP id hh18mr37092436ejb.289.1565719933294;
        Tue, 13 Aug 2019 11:12:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8a93:: with SMTP id j19ls2752328edj.2.gmail; Tue, 13 Aug
 2019 11:12:12 -0700 (PDT)
X-Received: by 2002:a05:6402:2ce:: with SMTP id b14mr16906011edx.285.1565719932827;
        Tue, 13 Aug 2019 11:12:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565719932; cv=none;
        d=google.com; s=arc-20160816;
        b=ZmDeIasj9ThTWL14aupdFwgxkze9qZ+/Q/oufmVm45QipBdDCH3ueoXrJeCSL8L5Md
         mGytQ1pqSf7CC0blCAJq0LCwjfO2IrGzYbLlSOcZMp0DoY9XKeQIaCcGr3l2wvDI3Ydt
         aAWMtrUBmvE8DtEY6ueXZmorUF1ChSVPFNrBNY13rOJGVvdmn3MxyM+ZlCAW+RVopyRg
         XYs4r9sue5A83+xF+BTmnaAbUoaXoRNPpNh3/xPyTklaE0oTE7ETJTkgCvuayLerSrof
         QxGSW71UdKlHJmC0XurN83dyb8opsj2kSmfBF0Cc/nZ7mdM3bm8PBRSbInXMGmVhZLOd
         64zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=H+HyNYqumhgzAfb6RQPcG1woV31dCtkzQNv0Z0BtjIQ=;
        b=Bggpi0D96bgDHvKuhx7nB9A8gGA9pZAjiJRa0DI+y0f5CaMgiqbTnmbvJWbRjF20rT
         3ZZx9Mwc7xP1URUDt2kDt+PXJ7pHG4A7ttLU8wlbYEczhh/a2XnzYA/93t2KEVYHmwZ+
         7QUgdD3R41EZB1z54+8Q78A7HwOXAR8rb44M+r3xVxshc8VA7uqKfywMsF7nEFLRE+bB
         +RS/PXvmytXVJTEYd3dxEhgxpZ3zblA+ijnm2Ekj9T7vGGSWA+LOX2ZC0lc9gU91bL+k
         oqCE+Nzku7/1F4qUP7sVTB8DO5PNTNuH1nh7B0mZMjzNrqLQryLEi4MgByx5KWgrRfqN
         w7mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fvp7xvUo;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id s30si2847075eda.4.2019.08.13.11.12.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 11:12:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id z1so108628097wru.13
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 11:12:12 -0700 (PDT)
X-Received: by 2002:a5d:4a4e:: with SMTP id v14mr28818222wrs.200.1565719932335;
        Tue, 13 Aug 2019 11:12:12 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id a6sm1435050wmj.15.2019.08.13.11.12.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Aug 2019 11:12:11 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Sanyog Kale <sanyog.r.kale@intel.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Cc: alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v2] soundwire: Make slave.o depend on ACPI and rename to acpi_slave.o
Date: Tue, 13 Aug 2019 11:09:30 -0700
Message-Id: <20190813180929.22497-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc2
In-Reply-To: <20190813061014.45015-1-natechancellor@gmail.com>
References: <20190813061014.45015-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fvp7xvUo;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

clang warns when CONFIG_ACPI is unset:

../drivers/soundwire/slave.c:16:12: warning: unused function
'sdw_slave_add' [-Wunused-function]
static int sdw_slave_add(struct sdw_bus *bus,
           ^
1 warning generated.

Before commit 8676b3ca4673 ("soundwire: fix regmap dependencies and
align with other serial links"), this code would only be compiled when
ACPI was set because it was only selected by SOUNDWIRE_INTEL, which
depends on ACPI.

Now, this code can be compiled without CONFIG_ACPI, which causes the
above warning. The IS_ENABLED(CONFIG_ACPI) guard could be moved to avoid
compiling the function; however, slave.c only contains three functions,
two of which are static. Since slave.c is completetely dependent on
ACPI, rename it to acpi_slave.c and only compile it when CONFIG_ACPI
is set so sdw_acpi_find_slaves will actually be used. bus.h contains
a stub for sdw_acpi_find_slaves so there will be no issues with an
undefined function.

This has been build tested with CONFIG_ACPI set and unset in combination
with CONFIG_SOUNDWIRE unset, built in, and a module.

Fixes: 8676b3ca4673 ("soundwire: fix regmap dependencies and align with other serial links")
Link: https://github.com/ClangBuiltLinux/linux/issues/637
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Rename slave.o to acpi_slave.o
* Reword commit message to reflect this

 drivers/soundwire/Makefile                  | 6 +++++-
 drivers/soundwire/{slave.c => acpi_slave.c} | 3 ---
 2 files changed, 5 insertions(+), 4 deletions(-)
 rename drivers/soundwire/{slave.c => acpi_slave.c} (98%)

diff --git a/drivers/soundwire/Makefile b/drivers/soundwire/Makefile
index 45b7e5001653..718d8dd0ac79 100644
--- a/drivers/soundwire/Makefile
+++ b/drivers/soundwire/Makefile
@@ -4,9 +4,13 @@
 #
 
 #Bus Objs
-soundwire-bus-objs := bus_type.o bus.o slave.o mipi_disco.o stream.o
+soundwire-bus-objs := bus_type.o bus.o mipi_disco.o stream.o
 obj-$(CONFIG_SOUNDWIRE) += soundwire-bus.o
 
+ifdef CONFIG_ACPI
+soundwire-bus-objs += acpi_slave.o
+endif
+
 #Cadence Objs
 soundwire-cadence-objs := cadence_master.o
 obj-$(CONFIG_SOUNDWIRE_CADENCE) += soundwire-cadence.o
diff --git a/drivers/soundwire/slave.c b/drivers/soundwire/acpi_slave.c
similarity index 98%
rename from drivers/soundwire/slave.c
rename to drivers/soundwire/acpi_slave.c
index f39a5815e25d..0dc188e6873b 100644
--- a/drivers/soundwire/slave.c
+++ b/drivers/soundwire/acpi_slave.c
@@ -60,7 +60,6 @@ static int sdw_slave_add(struct sdw_bus *bus,
 	return ret;
 }
 
-#if IS_ENABLED(CONFIG_ACPI)
 /*
  * sdw_acpi_find_slaves() - Find Slave devices in Master ACPI node
  * @bus: SDW bus instance
@@ -110,5 +109,3 @@ int sdw_acpi_find_slaves(struct sdw_bus *bus)
 
 	return 0;
 }
-
-#endif
-- 
2.23.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190813180929.22497-1-natechancellor%40gmail.com.
