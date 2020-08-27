Return-Path: <clang-built-linux+bncBC6JD5V23ENBBM4FUD5AKGQE5IWM5UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id C2467254DA6
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 21:00:04 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id 36sf5032597pgz.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 12:00:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554803; cv=pass;
        d=google.com; s=arc-20160816;
        b=u6zqM+S+LOWaJyWl7SZae+gw6tIvdd7CIN5f+z7xzEvuTW3uBYMuKETw7mgSgHJxLM
         ZtIPpLrHUkx/0t5zswCcrT9cRhX/v8rSwVV+r5hywnNeUVipegFGbOLR4yTqP14Zizs5
         VLqYuY0FqMzeyeYd1b0tFamBb7amGeLi2F5yXHOXNWMqQVedKFFunn1NfLGEDOXFPHr2
         yw2wQZiAQo1HCbYz8ISRnq2O9hNS3dc9tspeOWUQmso4rjsz1zJiaYiS/7rtWuY02f3O
         FI3lbAJhYUkjl1Z+IlxD5rF0K/Usuuk2H/PZwKdV7oO1vsqMau5e/i+N+aJXpWeOgeh4
         lJeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=BHEGAepL1chp4Jneu2H39kdedjM0wyzXBb34e/E/tOA=;
        b=BgkNVADNluOn2oXVIHTeOMwm9KY0bH1HLR7rz94960u/m4Adfnt4QLt4BR6nJ7vVDL
         BITzHUwLM6OXKWt7TFQ4gr27TiG7NkJqWj3DOInsJMDl59xkUeHoE63AdVFq2M1b3RPW
         fmZNQzrfHmbbvhG3KbTmnx8yjusYnn+w8cJxARyqbYFA1LzULm4lkOuItv/UKf/mXBCQ
         KByYAx6P6XTf2KbXWwaEfsd6FAd11dsNmuJ6gj6oDE6j9ZiDrdcQjVZnS+wAkO+qkd/S
         jAT5ScYzhMvGewuc00AO6Yf76mzdS0WJDKCTTQ4CUGIRKrzf5/D0omlhmePCCUvS9rTx
         A4uQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uU1UvUH1;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BHEGAepL1chp4Jneu2H39kdedjM0wyzXBb34e/E/tOA=;
        b=FtupvauyO+R00D8qqr8gXjcEYzyiJzsIz/2gRH/BFw3U+gqzqVgQ5Bde/d4pkH2Vpw
         yT63UlLSWfpUi4sFoDbDVhDYmoVSZU/tliDuvFOrFu9xkKuKY9vM9b0/+TkZkvG36r5N
         /gPTAE9ACUdOM6EiktbwzRGnBgCOwEe8JC/zI3M90yrZl/KpNsiSiwsk4YO/wCl8EegW
         ty3s0tQJyh/DnYxoXoTYL6e7esTqs/gw65uzlLBnFkrCe0hKGB0HzEUudxKwBuMXBdmP
         PJwYPzXZVij9gcNbhO4g9QRnvLArnfchDvWPyjGT0V4iT4Igy4YJER9LUWCXi3ThVp5n
         X9ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BHEGAepL1chp4Jneu2H39kdedjM0wyzXBb34e/E/tOA=;
        b=MZw4SMo6tSTMITlFa0nTtHMVyDtbfLle7+uPHKnCQ2TtA4xAYUOQ1P/OEqBeFmlnss
         OJ+5hjNNcw3/mqURWWSSvnoXmpRxSx/JJhNlvToJsyqhda8qkMF+FfcMod9Tx9ClUyep
         23G57zlqaeEu7B1XjQZnkoa7En0HGZvci07WbQf2Iov0fJUMNbQzffvoDhPdsKPSC9a+
         NdjaNm3kADT8U8khPiXmnSVL+G3vUVZgl9miZNB+pvnDy3sIM0PLgHSrN2i+wbZkZko4
         IqfhLaPip4yPDQtr4c+0F4W39DmKaWWWPJ03y7TfNvANBbETAkYXmVD8Ojsr9m0ZAyYJ
         YA/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MsWmoh2NrUjFVCE1JmVO3uLTZx9tnFcYGX8JwzJEGf/HY5IG1
	D7a0jfGwlPqOFyRXrSpT778=
X-Google-Smtp-Source: ABdhPJx1tlITg50QYy8pmUSK/sxlSbHQyeFa055vVz3/9u9I5fSZWgiRgf1F3Z2WF8jrts9FTi3XHA==
X-Received: by 2002:a65:6545:: with SMTP id a5mr16016178pgw.43.1598554803442;
        Thu, 27 Aug 2020 12:00:03 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:442:: with SMTP id 60ls1649847ple.4.gmail; Thu, 27
 Aug 2020 12:00:03 -0700 (PDT)
X-Received: by 2002:a17:90a:f691:: with SMTP id cl17mr274034pjb.8.1598554802953;
        Thu, 27 Aug 2020 12:00:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554802; cv=none;
        d=google.com; s=arc-20160816;
        b=joSaL9Ugwe+gXketoVSB6MYMhdJGT/ZbANeL985LZJDjW09ONogw5qiXehZWLq+4eS
         5ylqriOpDAvOETR9XTQtqY6n4AYjLHwS04v1XQoAv/0bCt6yaPMRcoUl5VlsPxDciO2n
         5gHv94wbAEU89HELn07TC0KIufA2/Qa0jPl/Oq76zx378p+LBxZuFSl/ji5s++hLtX7S
         4YGjtcVkuYzpelYRv6aIyWnwMUjUyZSsuOj5H5vQPaDYqA7ISNs081VS+UeSY8KktcM2
         1F97dWFh0Fnyac6OEwLud4ktwB3KSE/1R1R+WwcFOkKl3Roe9abCzTx/tBBUZGs9U80d
         MlQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=yzxK3J0SAx0H0mrlQpVdh8C7sJWVF2Hox8MHNujOdCo=;
        b=NpkKHJHFJe4cIbgcrro/n/lxAZny+z73XHqwPxngnPDs5GUe3DEeFojdtdD/r6mlXH
         aDGUO1VjQOzS/RkDSp63n735ojfiDXu3X1mbrYOOM0Jt8bmQ5BYwppu5vvzBQlU+o/Ay
         I/m5WW2mNvPen7H8JOfWaqpvBpyYqWpTQ/f7UcnhZxtt+Ouzz64EbaD+i0zJbZ9wMt6Z
         rfD9mFUkMHcLobq1WtPgUWRtyFBVHZnOit6AmXElbDAbfQBlwa7sxNoSmYmBt2x2XQaF
         PxHZV2gMhzOOatL73a5Sb03IMB7TGtyhX4nVhsXTtLax1LF0dSG3ki74TQYLCvfGOrLw
         X2gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uU1UvUH1;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l2si257850pfd.0.2020.08.27.12.00.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 12:00:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C79802087E;
	Thu, 27 Aug 2020 18:59:59 +0000 (UTC)
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Hans de Goede <hdegoede@redhat.com>,
	Bastien Nocera <hadess@hadess.net>,
	Sangwon Jee <jeesw@melfas.com>,
	Eugen Hristev <eugen.hristev@microchip.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	platform-driver-x86@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v3 24/27] gpio: Add devm_fwnode_gpiod_get_optional() helpers
Date: Thu, 27 Aug 2020 20:58:26 +0200
Message-Id: <20200827185829.30096-25-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=uU1UvUH1;       spf=pass
 (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=krzk@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

Add devm_fwnode_gpiod_get_optional() and
devm_fwnode_gpiod_get_index_optional() helpers, similar to regular
devm_gpiod optional versions.  Drivers getting GPIOs from a firmware
node might use it to remove some boilerplate code.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

---

Changes since v2:
1. Return NULL

Changes since v1:
1. New patch
---
 drivers/gpio/gpiolib-devres.c | 71 +++++++++++++++++++++++++++++++++++
 include/linux/gpio/consumer.h | 30 +++++++++++++++
 2 files changed, 101 insertions(+)

diff --git a/drivers/gpio/gpiolib-devres.c b/drivers/gpio/gpiolib-devres.c
index 7dbce4c4ebdf..f8476f6a65cc 100644
--- a/drivers/gpio/gpiolib-devres.c
+++ b/drivers/gpio/gpiolib-devres.c
@@ -184,6 +184,37 @@ struct gpio_desc *devm_gpiod_get_from_of_node(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(devm_gpiod_get_from_of_node);
 
+/**
+ * devm_fwnode_gpiod_get_optional - Resource-managed fwnode_gpiod_get_index()
+ *                                  for optional GPIO
+ * @dev:	GPIO consumer
+ * @fwnode:	firmware node containing GPIO reference
+ * @con_id:	function within the GPIO consumer
+ * @flags:	GPIO initialization flags
+ * @label:	label to attach to the requested GPIO
+ *
+ * GPIO descriptors returned from this function are automatically disposed on
+ * driver detach.
+ *
+ * This is equivalent to devm_fwnode_gpiod_get_index(), except that when no
+ * GPIO with the specified index was assigned to the requested function it will
+ * return NULL.  This is convenient for drivers that need to handle optional
+ * GPIOs.
+ *
+ * On successful request the GPIO pin is configured in accordance with
+ * provided @flags.
+ */
+struct gpio_desc *devm_fwnode_gpiod_get_optional(struct device *dev,
+						 struct fwnode_handle *fwnode,
+						 const char *con_id,
+						 enum gpiod_flags flags,
+						 const char *label)
+{
+	return devm_fwnode_gpiod_get_index_optional(dev, fwnode, con_id, 0,
+						    flags, label);
+}
+EXPORT_SYMBOL_GPL(devm_fwnode_gpiod_get_optional);
+
 /**
  * devm_fwnode_gpiod_get_index - get a GPIO descriptor from a given node
  * @dev:	GPIO consumer
@@ -226,6 +257,46 @@ struct gpio_desc *devm_fwnode_gpiod_get_index(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(devm_fwnode_gpiod_get_index);
 
+/**
+ * devm_fwnode_gpiod_get_index_optional - Resource-managed fwnode_gpiod_get_index()
+ *                                        for optional GPIO
+ * @dev:	GPIO consumer
+ * @fwnode:	firmware node containing GPIO reference
+ * @con_id:	function within the GPIO consumer
+ * @index:	index of the GPIO to obtain in the consumer
+ * @flags:	GPIO initialization flags
+ * @label:	label to attach to the requested GPIO
+ *
+ * GPIO descriptors returned from this function are automatically disposed on
+ * driver detach.
+ *
+ * This is equivalent to devm_fwnode_gpiod_get_index(), except that when no
+ * GPIO with the specified index was assigned to the requested function it will
+ * return NULL.  This is convenient for drivers that need to handle optional
+ * GPIOs.
+ *
+ * On successful request the GPIO pin is configured in accordance with
+ * provided @flags.
+ */
+struct gpio_desc *devm_fwnode_gpiod_get_index_optional(struct device *dev,
+						       struct fwnode_handle *fwnode,
+						       const char *con_id, int index,
+						       enum gpiod_flags flags,
+						       const char *label)
+{
+	struct gpio_desc *desc;
+
+	desc = devm_fwnode_gpiod_get_index(dev, fwnode, con_id, index, flags,
+					   label);
+	if (IS_ERR(desc)) {
+		if (PTR_ERR(desc) == -ENOENT)
+			return NULL;
+	}
+
+	return desc;
+}
+EXPORT_SYMBOL_GPL(devm_fwnode_gpiod_get_index_optional);
+
 /**
  * devm_gpiod_get_index_optional - Resource-managed gpiod_get_index_optional()
  * @dev: GPIO consumer
diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
index 901aab89d025..7854d80b1e9a 100644
--- a/include/linux/gpio/consumer.h
+++ b/include/linux/gpio/consumer.h
@@ -183,11 +183,21 @@ struct gpio_desc *fwnode_gpiod_get_index(struct fwnode_handle *fwnode,
 					 const char *con_id, int index,
 					 enum gpiod_flags flags,
 					 const char *label);
+struct gpio_desc *devm_fwnode_gpiod_get_optional(struct device *dev,
+						 struct fwnode_handle *fwnode,
+						 const char *con_id,
+						 enum gpiod_flags flags,
+						 const char *label);
 struct gpio_desc *devm_fwnode_gpiod_get_index(struct device *dev,
 					      struct fwnode_handle *child,
 					      const char *con_id, int index,
 					      enum gpiod_flags flags,
 					      const char *label);
+struct gpio_desc *devm_fwnode_gpiod_get_index_optional(struct device *dev,
+						       struct fwnode_handle *fwnode,
+						       const char *con_id, int index,
+						       enum gpiod_flags flags,
+						       const char *label);
 
 #else /* CONFIG_GPIOLIB */
 
@@ -562,6 +572,16 @@ struct gpio_desc *fwnode_gpiod_get_index(struct fwnode_handle *fwnode,
 	return ERR_PTR(-ENOSYS);
 }
 
+static inline
+struct gpio_desc *devm_fwnode_gpiod_get_optional(struct device *dev,
+						 struct fwnode_handle *fwnode,
+						 const char *con_id,
+						 enum gpiod_flags flags,
+						 const char *label)
+{
+	return NULL;
+}
+
 static inline
 struct gpio_desc *devm_fwnode_gpiod_get_index(struct device *dev,
 					      struct fwnode_handle *fwnode,
@@ -572,6 +592,16 @@ struct gpio_desc *devm_fwnode_gpiod_get_index(struct device *dev,
 	return ERR_PTR(-ENOSYS);
 }
 
+static inline
+struct gpio_desc *devm_fwnode_gpiod_get_index_optional(struct device *dev,
+						       struct fwnode_handle *fwnode,
+						       const char *con_id, int index,
+						       enum gpiod_flags flags,
+						       const char *label)
+{
+	return NULL;
+}
+
 #endif /* CONFIG_GPIOLIB */
 
 static inline
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-25-krzk%40kernel.org.
