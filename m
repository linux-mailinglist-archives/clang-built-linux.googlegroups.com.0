Return-Path: <clang-built-linux+bncBC6JD5V23ENBB7VETX5AKGQE2CCFXLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 80ABC253DB3
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 08:28:15 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id p15sf3572257qvv.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 23:28:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598509694; cv=pass;
        d=google.com; s=arc-20160816;
        b=av/ujpXyqEeNpHLemZyTdLF382vapj29tzEwg6sjRFZcomSoWKNiDsMoah/6r9gT1J
         9u8MuX2cCuRMRKFTVLSrV0x7U9hheLgrirxuKDZb922v8BfyEwuItIthXjdYdtSjdPrH
         8fQFBMU0WrARhGhe6hhiRI6aYMqgMxU/HpToNF/3nn0t7D81FaXZnn1pfnagMXhkhoCH
         y/it0mlzlBRtGwxLlx3We0jo3ptMG5eS1fQvH4uZXGUkuRC9Mucu1TlbbM2PjOuEfOzr
         UcBJhONyBNFaAoEJ9x4ohw9fWGFhpxTDEzWzkKeiyAA7gOLT0810QHbJ32rmH5aDWcoV
         n7tQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=fPaDre9sHT0loIU+5fLHHwn0qxHaj2Rbe/OmRhRkvQk=;
        b=SaZUWh2Q9RX48oHQgRbaCIErMzkMDty3GUKFFaeJi8vVjalobC90rio1KQNWdnZA2j
         V3fOYMq05SQzeySj8RANc4O/TTdmn4RcxopwW8O+0TNsnq0UbfAGN8ldu0A0kIah0TpV
         p9ZixFjdzRgsCCa+5WElWH/yq0xTHL6wgHFjnXVA50HAKmvG1vy6pBSQSGmozaNVt4tg
         7nNZZ0C68UWLSGYaFu6KbtbM54F5Py9xXD1/htuJ5fOGIHvinG+1/oNuWESZZ81CUogv
         ZD+lkE62wlZmBxzTKqOHm1FOpJiPxXPtq5MsH+B/hbiGQYfnVBxXLksicXVHwP3T0plR
         wqVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="v/KgMV1y";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fPaDre9sHT0loIU+5fLHHwn0qxHaj2Rbe/OmRhRkvQk=;
        b=KO4mzezRyoWrL52Xtm1cHYf0HIKZQe828twDwVROA1mtiabW5o26ROwoPlQ8BKK2uN
         ZFkjy4Jv5OT912cZcdiyHcXt9n4ornDt+qYGK7pIMP8TpyK516opvu8t8eTK5utW/F6l
         MPwMX+ttc9ymsL8jjMdlK8RoX0EcUoBCBMUwD8CTVX9dGnI24vheC+wx0oWwsedyTw8M
         9MfXIouWvcd4KhmPVJrPT68HBasAUQXd5HY4kVVbwVwYrDiemM6UL5BnRYiBLKjiRn1o
         KG9YqFoVrK3UdIh6l+OhUAuuwJS+m/IofCc50dfZEnsMWjhBcEibu62N8bYfaIAZFB6U
         XKvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fPaDre9sHT0loIU+5fLHHwn0qxHaj2Rbe/OmRhRkvQk=;
        b=sFxUOsdknnHsGXEKsqiBmy6IjG18Evo2F1lHCPpy1SGUrFGdhPjSd+KxAalg2kk9g2
         SL8Ob+fm8KxRHBlVlPEHWNZUghme5GTilKOnNaY1eRP8Tr+4viZTpwftjI1hJewqfYsH
         Z20uPl0emgYg1Ynsybdwe0hBje8ynmg4STLYAe/I0UHUyiXLJtrPT9zYMeKEghdyT6cH
         1zbOaLSU+UQn85K/csxYhRABdgjDRJN3bUt7FIlzm5fgy/BOoXmZ3CqtGOmvonJnqMc7
         V/aBEm3+V1mpkVkzF7VpYQrZKhTQOFpL3PWqSGMDt6q6nFKJqi47yXy+cb9lQr70wnC1
         0hOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317JGS6tqBOnQeMAzPGEoNW4buIZOXIun0d019sNCppvw5kMqZR
	uQD2HM6MgeVN6RYCDpYAwNc=
X-Google-Smtp-Source: ABdhPJwoHdVj3CK0yoUk3bvzhSyHPiV7BkTIU/D8EoZQQycxIuv2Cy15xCebCNP8f7KbH73jT2GAjw==
X-Received: by 2002:a05:6214:140d:: with SMTP id n13mr17389922qvx.69.1598509694263;
        Wed, 26 Aug 2020 23:28:14 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:13c9:: with SMTP id g9ls509429qkl.4.gmail; Wed, 26
 Aug 2020 23:28:13 -0700 (PDT)
X-Received: by 2002:a05:620a:1585:: with SMTP id d5mr17755469qkk.259.1598509693830;
        Wed, 26 Aug 2020 23:28:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598509693; cv=none;
        d=google.com; s=arc-20160816;
        b=IwArSDRjCJ7OZ6g4YeJETF+V3/ssogkXHurxiibkq2+54TEeIwEGh8uFA+xtWqykz6
         vrn+hZsfAm7U0OcioX+B7chiWTxo5UQuzG49OoPOHXQR/CAR8ySVytnjGjqXRzJvsJzd
         1YktmJ+I7FI1JmtMzke4b/EA6WfJYAmj4rLFUZy/tyXADeNS7jD8EZ8ThdWmuEliw9oY
         bI4qBXlh+5aCPgoIwzTNeR7f7v2qMyUnWwVIyZBKlnCiSj5NEhftZKTAKOqGUXyVMdKi
         7cYHs1QBQeayOHFgf4xSv8kalI7w84QU0d19e7mS88C3tzGa2OtC3Rnu8FJlnNXnk5JW
         WLVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=JHSBQ34HCTw6uvV5GQsFA97yu2Znls8S8gSL99rfw3E=;
        b=0aXwYMdIZMFNBZiPPsyjmJ3C0L8VQkvVkCnbKoC7qZPmMfPHnyevyXSeXmVOh/LOf5
         0VvpOOJOlfwdcxSJFlEgnPHq82+S11y3teckc187yTfkTHpfTF3H7SNFceJggpo6VDMw
         iWZVasPnyQulP8karqynDpzhieXvpuEpC92J0aMe9tSMFf993NDxzai8xWkWT7TltB2h
         TIFi2z0gUGhIJ1oC82hxmGYrhfaEXgzx32M83y57N4LrJtagtI4JVfJ/NJ18ukbZ2xVf
         FNOifyjjzFOQOyGG4BsTX1wGMdcx/AcK+2RktnZEHHE0qUY/xGWVx9F7RUwgeCuU2w7Y
         ZKVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="v/KgMV1y";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f38si73109qte.4.2020.08.26.23.28.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Aug 2020 23:28:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kozik-lap.mshome.net (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 984912177B;
	Thu, 27 Aug 2020 06:28:09 +0000 (UTC)
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Hans de Goede <hdegoede@redhat.com>,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: [PATCH v3 1/2] gpio: Add devm_fwnode_gpiod_get_optional() helpers
Date: Thu, 27 Aug 2020 08:28:03 +0200
Message-Id: <20200827062804.16730-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="v/KgMV1y";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827062804.16730-1-krzk%40kernel.org.
