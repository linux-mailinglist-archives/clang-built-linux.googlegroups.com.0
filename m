Return-Path: <clang-built-linux+bncBCNODNHUQUJBBFGRYDVQKGQEI3GWCOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C6BA94A1
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 23:11:49 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id a8sf100802pfo.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 14:11:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567631508; cv=pass;
        d=google.com; s=arc-20160816;
        b=LkYaK7F/bCdziiyH4jiqEBB2t4NcekH1sx6Mb9G8HHaAahcZeHU5W3H3BXxBtNnCDc
         q4T/01tXrytXL+GhEjCTlMb60J3euDGWgaHYwXJ/qcHsyshX28hfephkzUy2g676Tqn+
         8KxB+JiFtNuMkdB1bm5lOKFeBb4DmSDArs1uznxzKHL8O1BwdOzW+i0nEhIFrpGU9rtC
         nCTwsLIMo9a4bWJSl0jrXpE5OMl76ml/sX9M4CG7tuTaloNwpz+6thap0G1qjpjXR6tT
         lM2lObTjUj8lMcU5H7kifgpUDCnRpPF8ELPD2GRuaJJQ/8JZlf3yGfi0awBmRimD/Qma
         y/Xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=GyjP1y+XqTiWNKFs3b353aLF2pDnjmKfxKPnyi3e5U4=;
        b=yBFGw5SZCbbl/a6ewRXE0W+mZ2wfzklrd6fCKRRHpFs7RYkZAfD3AWjIVtrfmRomne
         5EOmdY4zySy3G24IvhawtLgia8h9VGBtzvdB1JxY6T6F1aq4r4Muvutz6DZ51q0z13q5
         EMkGqI0Z+m8DqWvZkP+qTxMPyA9TAGxYlPfxloyJPbQi1EFLO1ZSYhKB2rbly57USkbk
         fzHyMSd4ZlcY6Cgybmex/JN8wo6nDZ1UXFkIncW7xoCHT/CZKM1FjseLsLwdUzxUSfao
         gEiGlwKiTBjVbgMV+UaDlz3Du5FtVo0NIg1sro7YM9fA9BAdrz5M+CEYEseAsNy2AsTB
         f/5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YRrXlCAV;
       spf=pass (google.com: domain of 3kyhwxqkkajyi0h0l0d0a6ee6b4.2ec@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3kyhwXQkKAJYI0H0L0D0A6EE6B4.2EC@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GyjP1y+XqTiWNKFs3b353aLF2pDnjmKfxKPnyi3e5U4=;
        b=KCgJugUGUeu9nyBjsJeGnpUcDVT4QqAZv5GOrEX6J/H4YIveDRrkJmE1VRCdOYYFtk
         +ZwzYzhizg8QIRhhN6mbkcjne3g43FA6rSOtudxKlKCVF85zASKHQeYYqeVgOZ8RJr0k
         OtWPQ9fc+mZUsXfaaA7Tlv0/j2Eb4CQxcMAKay4zeXXdsntnPOlTODmo/lEC8so5H9sz
         KxL5tFR1EKiKwSFEErahLudGkdSW+Zo3m1LXvP1+6tIyQIStxfktt1XXOA5bPZ/iJ2O8
         EMnl1JMHhb+E1J/Tq6HmzK79JofYsrs3bIVcY1WE5ZtiNGo6DyxQycXLOX5t38SpD+sm
         yp4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GyjP1y+XqTiWNKFs3b353aLF2pDnjmKfxKPnyi3e5U4=;
        b=ANdXts8HX6yQ6lRMLCJjmwTHJFuorjNYKi/mW/JFu1zCUJaMXVQRiEOxAfLNMMyyGK
         Inqt6KhbzSzv7xfUe/72yXjskKP29+yAp8/zTx/njLJwPIFjBB68FYXUo5+sdpO/LGca
         8IqBHBhyZIWckDm1HJ46YpDa5TXvZZD28KBs2rg8T6xaEkcf8foBbjj6glbhzrKzLjN4
         etPIHrXu4+may6C93PveMZl8qjafJCF0bpw9m9Wpaeo59rxfxrwC4bc6+ahz7aV0jzd8
         3ZyP2+AGrBn71pLkVcsawdgu2IwYbT5kA09TJOcQkODrGu3H38/Qa2B912ODR7LKMO+O
         wLBQ==
X-Gm-Message-State: APjAAAUobv24erz13lF1HyUHcWWe/TBHqwlyfXfb4KlUrzBWwVhbaa5x
	QvRtL0rqqUfOcvulek66k38=
X-Google-Smtp-Source: APXvYqy/U1v8SgpzCgfc/x13GqytJFDcbdgofVhlNMo+F0vCyNBTlxzn6wAlh0G4zr8q1Wk5J9h42Q==
X-Received: by 2002:a17:90a:a611:: with SMTP id c17mr262723pjq.17.1567631508090;
        Wed, 04 Sep 2019 14:11:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:191a:: with SMTP id 26ls45907pjg.1.gmail; Wed, 04
 Sep 2019 14:11:47 -0700 (PDT)
X-Received: by 2002:a17:902:5a06:: with SMTP id q6mr11103956pli.268.1567631507821;
        Wed, 04 Sep 2019 14:11:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567631507; cv=none;
        d=google.com; s=arc-20160816;
        b=YZQAyOGDUaf4g/EhjUc6sKeBzIQdei6jUOizt8cYgTPFkOjHyRmscyjwH2P4zwt943
         JCZyy+TY5W7v++gJQxYpuZ4A2pFW2vbeqHr1O2uj2TnWVCryPQlv9R2mYaLWrBTKkfyx
         eOl80J+oz4ClUIQuUS/bBiDKa++EtuhEpLm5iz/zicUmVVzt38M2R9vt04EJkrmWcD51
         iLZKp0xDuqODYeE0UIBsF/7uhUIDOzBoDqaOS3+RzaLNs1SsrV9rR2FGDeyOHIzW+YzX
         xfdRfsu6Ioe0iOtpTZ3+CYhrOyKd4XHhp9iO0q7zD9r6E3cN9OtgOxJ3o+Vsh6NZyo0i
         F/Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=BNYZzlx9aTQ+LCgQZ8IG6mRelU0sVitbFkM6D5hbnnk=;
        b=VUagli4kCor6YA4Pt3dxctBcaQ+e28vsf9PI+6Oy2H6CqNZJVecT4Ot6ZsiDcbFH/e
         TOpPYFxn9MYPW2F67nw24hHEfc3y4rQ5w0a9qKmG2cKqnkn0A0umoH/qtSQej2l26nUm
         1W8tFH0wKKti+3jRduHNgUjA/yLx65YW9aCD7lFQ0w0dRBCHuN2pjOWOxdoWZ+6M+q7o
         zXETBQq2We07FyMgp5yC74DnXjjbfLFKN7DFocuEO3Kd5/jYBjogr/Hrg4TDAnGTvZxC
         ZX7Kcp6UMW14MTbFlQiCm117lv7FPHiIBRxj+ZJLU1pMMOKcZZI5NJGVPEWzTEVf4YLu
         kxJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YRrXlCAV;
       spf=pass (google.com: domain of 3kyhwxqkkajyi0h0l0d0a6ee6b4.2ec@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3kyhwXQkKAJYI0H0L0D0A6EE6B4.2EC@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id m44si10939pjb.0.2019.09.04.14.11.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 14:11:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kyhwxqkkajyi0h0l0d0a6ee6b4.2ec@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id p16so123976pfn.3
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 14:11:47 -0700 (PDT)
X-Received: by 2002:a63:2a08:: with SMTP id q8mr101014pgq.415.1567631507124;
 Wed, 04 Sep 2019 14:11:47 -0700 (PDT)
Date: Wed,  4 Sep 2019 14:11:24 -0700
In-Reply-To: <20190904211126.47518-1-saravanak@google.com>
Message-Id: <20190904211126.47518-6-saravanak@google.com>
Mime-Version: 1.0
References: <20190904211126.47518-1-saravanak@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v11 5/6] of/platform: Pause/resume sync state during init and of_platform_populate()
From: "'Saravana Kannan' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-acpi@vger.kernel.org, clang-built-linux@googlegroups.com, 
	David Collins <collinsd@codeaurora.org>, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: saravanak@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YRrXlCAV;       spf=pass
 (google.com: domain of 3kyhwxqkkajyi0h0l0d0a6ee6b4.2ec@flex--saravanak.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3kyhwXQkKAJYI0H0L0D0A6EE6B4.2EC@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Saravana Kannan <saravanak@google.com>
Reply-To: Saravana Kannan <saravanak@google.com>
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

When all the top level devices are populated from DT during kernel
init, the supplier devices could be added and probed before the
consumer devices are added and linked to the suppliers. To avoid the
sync_state() callback from being called prematurely, pause the
sync_state() callbacks before populating the devices and resume them
at late_initcall_sync().

Similarly, when children devices are populated from a module using
of_platform_populate(), there could be supplier-consumer dependencies
between the children devices that are populated. To avoid the same
problem with sync_state() being called prematurely, pause and resume
sync_state() callbacks across of_platform_populate().

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/platform.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index b47a2292fe8e..d93891a05f60 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -480,6 +480,7 @@ int of_platform_populate(struct device_node *root,
 	pr_debug("%s()\n", __func__);
 	pr_debug(" starting at: %pOF\n", root);
 
+	device_links_supplier_sync_state_pause();
 	for_each_child_of_node(root, child) {
 		rc = of_platform_bus_create(child, matches, lookup, parent, true);
 		if (rc) {
@@ -487,6 +488,8 @@ int of_platform_populate(struct device_node *root,
 			break;
 		}
 	}
+	device_links_supplier_sync_state_resume();
+
 	of_node_set_flag(root, OF_POPULATED_BUS);
 
 	of_node_put(root);
@@ -518,6 +521,7 @@ static int __init of_platform_default_populate_init(void)
 	if (!of_have_populated_dt())
 		return -ENODEV;
 
+	device_links_supplier_sync_state_pause();
 	/*
 	 * Handle certain compatibles explicitly, since we don't want to create
 	 * platform_devices for every node in /reserved-memory with a
@@ -538,6 +542,14 @@ static int __init of_platform_default_populate_init(void)
 	return 0;
 }
 arch_initcall_sync(of_platform_default_populate_init);
+
+static int __init of_platform_sync_state_init(void)
+{
+	if (of_have_populated_dt())
+		device_links_supplier_sync_state_resume();
+	return 0;
+}
+late_initcall_sync(of_platform_sync_state_init);
 #endif
 
 int of_platform_device_destroy(struct device *dev, void *data)
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904211126.47518-6-saravanak%40google.com.
