Return-Path: <clang-built-linux+bncBCNODNHUQUJBBTUFT3VQKGQE4ZZN44I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E14CA12D5
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 09:46:23 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id k20sf1493758pgg.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:46:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567064782; cv=pass;
        d=google.com; s=arc-20160816;
        b=lyoOsvX01zFAu2e8ZTY6b6aNgeKFX44w4tPCHwjOyqQ7Gl2DPkl/nxy2eE5WeJcXNu
         FEctgnO06QjUKcUAQUJl3ntcjw1Bh7mKKtM2SxzrpPDEmAYgn/5FMKJD4Pn3frNk0GMc
         tdB0dkCmCLEhNf4001PAOdnZ7FIm5dtcs4V0cbueSVWpOVJV2yDJY/SihO5lTDj63agU
         a5YPGhB9D9el8XWV9iT+/Pj+hYDSct4GRtGzrHb/hUuI2ZWnJtEWEm18f/M7whYHalmc
         hh80nGVnQH00XskbU0B+5v+qJD1m+gIzt/okm9lFKwk8L9DYSNvCC84FedDkNGejU/PI
         O1IA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=2MUHp9q+y5tmQOqy2Vt5Bb6K29IrR633sxjdzR8WQnE=;
        b=GlWb8f6Lo1SCBQr84btmlR4xil0rasyJNcqhTfJl+N1o0raMfTtzSVpkBuhGVbII0i
         GkNoCeGA4jth1NGhPQlsK61xtmk1MpPkO97NGVv/blcy2Ghmi10FB8OzlN0a2XcHaBxz
         KUQ3KrbJmUqkYzXmBVnL/2TgaBc1OUPufKXFU5W4usAteDLF37za0msdsBYKoUjeYjwT
         VMzjNIUAie7H4RbzibXThdV1flumgYjupUkeG1Uhw6ZqpJzzNb81OXaPYbmfoRi57dCm
         qskJ3HZ7W4gtCw5TqvhM0ougwGkLQ4kuOe42S7cIGJt79VCdrGDoowQDl0YgjQziFqsD
         TfGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LBG2uKzU;
       spf=pass (google.com: domain of 3zyjnxqkkagisaravanakgoogle.com@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3zYJnXQkKAGISARAVANAKGOOGLE.COM@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2MUHp9q+y5tmQOqy2Vt5Bb6K29IrR633sxjdzR8WQnE=;
        b=fDws3B0qWZm7u+TF5E2M6gFk+RSoX/p8HhkL3nwR8aTBZanVLtVWlUkrejjhAkMtT8
         aPED0+DRloJ+dAz7aqxLXi5v4i5wpdMRZlw8G7Oat8dAJ033hjihKHpC5O9jOfLq0PTR
         +ivFcvxs5RXTzvL9kjCy5qG6LeQEiUgEFgll25kYmtL33t23Umn3u8LM1Ft/CaI18Kht
         8t8u0L7KohDAhdptpCQcfiGnLVPMCEcC84vRlBOCnMdAoNOebTjPIRZQfzDmuX4iBkbB
         74VT7BC4FsKzRuw2+4LLIPDLgrXLCmGnvpBH+1gDAcc4qZWqFqDaAKDErDTNq28AILdC
         rkag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2MUHp9q+y5tmQOqy2Vt5Bb6K29IrR633sxjdzR8WQnE=;
        b=FqVXjmCLSalN4jKsMn1EcXqHxYXbfHOTV+uYiudurKtVB7hm+a0TnZk1YW322+pWg1
         o3HKzkFdQMhNALVyVvV2VVktIoFjjAS4qmM4Op6AbeK4BM7cI9co+BmsHXxdNAg4DIV9
         GkFTQyayoreVGP7BienQcDcdq4fyY1sjGDeQH9tsMayCQvRjJBaTkSikyYLdoZWnhCFe
         XfrErDCHKkzSHTer4ohQss0fxwu6qMMQrUD/6jkBzD2iHA3JewN5Khnp67wAnNyORUDL
         kpy6vP3cCajKs1SfOdWGN/ZgGitLj+fyzj644wpB5qZmFki8DBSmUZxa3h9QT4PHJzOL
         0Ieg==
X-Gm-Message-State: APjAAAXew6MiJAwYXM4+KOQF2GPMv+Ipd2a9O2BkJrF+snRmZelOmT/b
	MEP4vnuc+t0NZSOclenl8tE=
X-Google-Smtp-Source: APXvYqwqs40vyeTai+HhHbeNHc+vNPTYMfIAETX2ksbTJkYHOeqi/DH9wjXKBG16YQuMbyCkb/SK3A==
X-Received: by 2002:a63:ee08:: with SMTP id e8mr7228252pgi.70.1567064782261;
        Thu, 29 Aug 2019 00:46:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:90:: with SMTP id 138ls438437pga.1.gmail; Thu, 29 Aug
 2019 00:46:22 -0700 (PDT)
X-Received: by 2002:a63:3fc9:: with SMTP id m192mr7174364pga.429.1567064781938;
        Thu, 29 Aug 2019 00:46:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567064781; cv=none;
        d=google.com; s=arc-20160816;
        b=MOXvx4POhdxkOnxrxmtS3llU5faKLlWMubUqy8E3uz7gq4yPb8Sm7y/EL67eP/pufC
         R5l6QFSKXOhUgx/uXU8e61D2q45LqfcRVMbXQB4nMC1JigUfwKC71+E2pDNQXy82V145
         6q1Cv5oKW/VJgF8s561F+rNBMDca1khCm3Nq7lEkad1LnY2imNd5DGatHlFQ/t7IgPYr
         RtS4KHLzohk9j3bOFX4qK09w04CMfZ/O4KH57kfvMcACzK43V1tR+6jFOVZcFyMEnCEA
         6Lt5NRVSdtEZeTQOWZXo34sCTeOjr07W/OD7rHsnIWxVNHKV0YIT0i5mSB+nHnNlvFH5
         0GKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=BNYZzlx9aTQ+LCgQZ8IG6mRelU0sVitbFkM6D5hbnnk=;
        b=T6Hdjp911x2SOc788Phh2I80eiz4Zp9+DVeHRsTZ9icGYqq+OaHcvxZvIFluDwmw2q
         DS8FP15tX8/g6NnX7aRbDKrgzplJLkS5ILHw5aUWZhFaCtN+UREwYCkHMHsZiIREeSoN
         yq3DHn/ZbecC0zyDbgpNUjOyRZtGgn1mRgJ5hEzu6SuBNhCdtKalUmXab1IzE39CC9/4
         ZQyCL1Kbc30r4A6Yamilam+wx4ydFVnhIZE49aXEM79gRnOMrOGHD+6hl8p+LDy/w0uE
         U+heY6SqT0FTRJaveLRZ0TJONZ51rb5e03JbD3jQ2jZofGPYR8ZD1CwWNub7NYlsqU8f
         4sRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LBG2uKzU;
       spf=pass (google.com: domain of 3zyjnxqkkagisaravanakgoogle.com@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3zYJnXQkKAGISARAVANAKGOOGLE.COM@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id y6si82687pjv.2.2019.08.29.00.46.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 00:46:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zyjnxqkkagisaravanakgoogle.com@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id 191so1831229pfy.20
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 00:46:21 -0700 (PDT)
X-Received: by 2002:a65:4243:: with SMTP id d3mr7249704pgq.119.1567064781369;
 Thu, 29 Aug 2019 00:46:21 -0700 (PDT)
Date: Thu, 29 Aug 2019 00:46:00 -0700
In-Reply-To: <20190829074603.70424-1-saravanak@google.com>
Message-Id: <20190829074603.70424-5-saravanak@google.com>
Mime-Version: 1.0
References: <20190829074603.70424-1-saravanak@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v10 4/7] of/platform: Pause/resume sync state during init and of_platform_populate()
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
 header.i=@google.com header.s=20161025 header.b=LBG2uKzU;       spf=pass
 (google.com: domain of 3zyjnxqkkagisaravanakgoogle.com@flex--saravanak.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3zYJnXQkKAGISARAVANAKGOOGLE.COM@flex--saravanak.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829074603.70424-5-saravanak%40google.com.
