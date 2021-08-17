Return-Path: <clang-built-linux+bncBD763O5S5UARBUUM56EAMGQEXLHEEMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE703EEE6C
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 16:23:14 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id n4-20020aa7c6840000b02903be94ce771fsf10156640edq.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 07:23:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629210194; cv=pass;
        d=google.com; s=arc-20160816;
        b=rBH0laSgCgG+Fjn5ymju8hRNcqauQdpLCCLyZWbNWxpBYCvF9YyffVIY2hK4Dlbr6P
         aC9DH1Ae1quNJqil7+Js7XIa7SxKtoqmi+Br+fXbyOgdJG96Q3yEz0AlfT6qxfw/aFmU
         9h49R/dg2xVRnEbAkQD+YG5IwSYQ1lihvb8mqwSmkyGQ0ZmIxj77Apn8mhSL6fzIFPWi
         Z0DjPii08ySrxwSXKfHTi8UNxZr8yS8T6YdihG5ceMAowyVwinvock3iwoGvcanSCH5K
         sRCceHI27mZ8hbO1M3Drcs6XP8Eb6GyuuY5aA2ev3Y3evCF46SsGK7XDqhiCcuwUFZ4X
         jtiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:importance:mime-version
         :subject:message-id:cc:to:from:date:dkim-signature;
        bh=7GB6oaeEeR/YjLIhOzZift03thc8tOO4TmlRjYiy6sQ=;
        b=xMObQKlXAeHOUUNr9HDxvJ0WOhy4ozDxana5Ue2q8CB8TnAwk67oElSlNJlyuuVKHH
         hZtCerux46FpYVCEIHBe5hqAe0BZGPZpRo0WVtRaE7VR9otGJp48Z1dq8t9fTuJkIEeR
         ZJvIBJ6OXkZHIjmBfgAeri5/5t2STsM22/IBIIh5KKiXHEk0yFVSQsxVK7m9aSvAIrtu
         T5EkdfQg2NNwdhNdpphrshoktW0v1AJfUGUTvQPYCEnAyl7V/eTpgvTkgQ+pjH9MBx/0
         hY0nOB9NV2O0bNL5M4qxRQi6OA8nrMKhiSpnxl2jXQhj5yp3/3cayQNSgaAJ8LWZolWK
         9CXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=kXK0UK9i;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=wEOHrpA7;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.161 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:message-id:subject:mime-version:importance
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7GB6oaeEeR/YjLIhOzZift03thc8tOO4TmlRjYiy6sQ=;
        b=jeGR89557lvbZ3xamys3YyEK9MwNL6G+3kAdNkmfKsR9/CVOjXQi/+/HyHeirHGcdM
         egqDXIhUWU5h3grIsjgQ+Ip32QwLNjufb6jmVb5U6iKzQg508Ex8m8rJafmTeNyz06YV
         PQUVxLHPhDGDD1nNMty8YNJCd0q+NGKK/ujAyFgtB/7gSvILXAK23cZGN0322QKyaY14
         c33OcgAPErbWaz0Z4HEwxZTzDRT/w56rLbsqXdQ4AjP3kYOy1Zq67f1I+rQ2GcaNng+c
         MZS+eWIqdUbmBqb/x7gXfRfWTyYwKZyn5aHtcdL7ThDn4U4TsuFoinPzmMM+f7BvA6sS
         l/cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:subject:mime-version
         :importance:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7GB6oaeEeR/YjLIhOzZift03thc8tOO4TmlRjYiy6sQ=;
        b=E8NCJjHqe5zPwm9hUATR5Dzc5q0ebwiGD/hj6J2/GXuhPJtp1sKUPb6COTQ4xIFSCT
         cflUPCnGg139gTizkUXIpC+P/FW/1HeJyobs+5jkS1BypkQz0mfuudLKwxH0ucZldsDq
         XkviIp8mMrekqvksNaMZVLWfRMIRq3aKkCYkUCgTNOclC99IfFjiVMFNWEVD29EBHB54
         rT62TQXpw/l5tyEW2DnF5DSPZkNrjEfWWEKBsyvOV7g8UVbZqWF3xlrkYeoXnCck3Y2n
         71gOdZDgLh5s/oeugUSzo4tn64FJp7HlMYv6rQtqYcXmMaa966QQ8OXrsbVl8Yf6TCx5
         TK/Q==
X-Gm-Message-State: AOAM530dNuuZxAg4S8N85+cjAmcit6KzijY3Hc4cHTYeTThSvMjpclUF
	RqenZ/xnw/ZwOioRDmH97cM=
X-Google-Smtp-Source: ABdhPJzrNRjs0Xi/77Iy5Pnhl1LjawIVXbdFFdfeRJH0IW5Jn2zkf0Q/Tf26CCT58usQEqzfg3dXDg==
X-Received: by 2002:a17:906:8390:: with SMTP id p16mr4343025ejx.116.1629210194297;
        Tue, 17 Aug 2021 07:23:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:d1d6:: with SMTP id bs22ls1258613ejb.3.gmail; Tue,
 17 Aug 2021 07:23:13 -0700 (PDT)
X-Received: by 2002:a17:906:e10:: with SMTP id l16mr4216149eji.423.1629210193353;
        Tue, 17 Aug 2021 07:23:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629210193; cv=none;
        d=google.com; s=arc-20160816;
        b=KJElGHNrrWR9+NOmPDtNiADVXG1Spv9megUMXqsCHQlLGFO22VBxQ8lg1FgnndXIY6
         CuJO3ZvvmGApAd+z/aco6QJ/LTMmaoK8/rEuJK2Yax9hXDju5sRxI2wifes6tQ7EXn3S
         P1GN/gsXOUrBQ5AW2bJrTWUVXt6R+c+nmk+wblsheGKCtO1KDp+kiyo0BYt6GsUCbJAV
         TmU6Nj+3wBJVex4VG9ooVaEeUx7qgY8tmtSMu2wGMoT0tvlpowoAsp3qcuQmZ4phESXo
         HVQHbNF25Cuoh6Kf5hwhvgNSkJWTZnShIbGC89HapOsvgnltvdDU/JuulDHV69ib/5ee
         pRAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=importance:content-transfer-encoding:mime-version:subject
         :message-id:cc:to:from:date:dkim-signature:dkim-signature;
        bh=w2ReuPoV//dwBiuFzBjXQTkWqHhZgldVzQtsCYRhJSY=;
        b=q1zBgv0/dyaXSaP/0RQUVHvfHRZmXHanlSewv7hdGyaeAg0TyWK2ZtZKo/IIUoGo6s
         qofpQcRmcfbJEfccrwXnLd66NYQe8B83AwBZo9wmhxrnNCGUVYMxmWTXnaGrq1JEJwTc
         0nvlpr6t3Z2KfmRdu1xEtW7G2/k2aKLXV2tR5SErANXUuWcMeSCxxzEfr4N/Rni3Sp1T
         8pEs0nBpLemR3tcDdkA1sy36cyHc83OhjNv/AJN+I1yfgr3V+3SF/zXbTidQOCaRl5fb
         0n23+6/YO6tAavlDnh9S7ItqZeQmaO7rxrwSSHb+b6wJhetQpJRmCu1H3ylm3OhI8jbs
         TcuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=kXK0UK9i;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=wEOHrpA7;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.161 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org. [80.241.56.161])
        by gmr-mx.google.com with ESMTPS id o4si146904edv.3.2021.08.17.07.23.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 07:23:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.161 as permitted sender) client-ip=80.241.56.161;
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:105:465:1:1:0])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4GptYF06MmzQkBq;
	Tue, 17 Aug 2021 16:23:13 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
	by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172]) (amavisd-new, port 10030)
	with ESMTP id bxxjERrquUke; Tue, 17 Aug 2021 16:23:10 +0200 (CEST)
Date: Tue, 17 Aug 2021 16:23:09 +0200 (CEST)
From: torvic9 via Clang Built Linux <clang-built-linux@googlegroups.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"x86@kernel.org" <x86@kernel.org>
Cc: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Message-ID: <269701460.117528.1629210189833@office.mailbox.org>
Subject: [PATCH 1/2] x86, Makefile: Move the CPU-specific 64-bit tuning
 settings to arch/x86/Makefile.cpu
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Priority: 3
Importance: Normal
X-Rspamd-Queue-Id: 2E219189C
X-Rspamd-UID: 318201
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=kXK0UK9i;
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b=wEOHrpA7;       spf=pass (google.com: domain of torvic9@mailbox.org
 designates 80.241.56.161 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
X-Original-From: torvic9@mailbox.org
Reply-To: torvic9@mailbox.org
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

In accordance with the FIXME comment in arch/x86/Makefile, move the
CPU-specific 64-bit tuning settings to arch/x86/Makefile.cpu.

Signed-off-by: Tor Vic <torvic9@mailbox.org>
---
 arch/x86/Makefile     | 11 ++---------
 arch/x86/Makefile.cpu | 12 ++++++++++++
 2 files changed, 14 insertions(+), 9 deletions(-)
 create mode 100644 arch/x86/Makefile.cpu

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 307fd0000a83..94105d7ad22c 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -119,15 +119,8 @@ else
 	# Use -mskip-rax-setup if supported.
 	KBUILD_CFLAGS += $(call cc-option,-mskip-rax-setup)
 
-        # FIXME - should be integrated in Makefile.cpu (Makefile_32.cpu)
-        cflags-$(CONFIG_MK8) += $(call cc-option,-march=k8)
-        cflags-$(CONFIG_MPSC) += $(call cc-option,-march=nocona)
-
-        cflags-$(CONFIG_MCORE2) += \
-                $(call cc-option,-march=core2,$(call cc-option,-mtune=generic))
-	cflags-$(CONFIG_MATOM) += $(call cc-option,-march=atom) \
-		$(call cc-option,-mtune=atom,$(call cc-option,-mtune=generic))
-        cflags-$(CONFIG_GENERIC_CPU) += $(call cc-option,-mtune=generic)
+        # CPU-specific tuning (64-bit).
+        include arch/x86/Makefile.cpu
         KBUILD_CFLAGS += $(cflags-y)
 
         KBUILD_CFLAGS += -mno-red-zone
diff --git a/arch/x86/Makefile.cpu b/arch/x86/Makefile.cpu
new file mode 100644
index 000000000000..fb407ae94d90
--- /dev/null
+++ b/arch/x86/Makefile.cpu
@@ -0,0 +1,12 @@
+# SPDX-License-Identifier: GPL-2.0
+# CPU tuning section (64-bit) - shared with UML.
+# Must change only cflags-y (or [yn]), not CFLAGS! That makes a difference for UML.
+
+cflags-$(CONFIG_MK8) += $(call cc-option,-march=k8)
+cflags-$(CONFIG_MPSC) += $(call cc-option,-march=nocona)
+
+cflags-$(CONFIG_MCORE2) += \
+	$(call cc-option,-march=core2,$(call cc-option,-mtune=generic))
+cflags-$(CONFIG_MATOM) += $(call cc-option,-march=atom) \
+	$(call cc-option,-mtune=atom,$(call cc-option,-mtune=generic))
+cflags-$(CONFIG_GENERIC_CPU) += $(call cc-option,-mtune=generic)
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/269701460.117528.1629210189833%40office.mailbox.org.
