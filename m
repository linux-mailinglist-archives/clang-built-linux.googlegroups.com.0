Return-Path: <clang-built-linux+bncBCNODNHUQUJBBV4FT3VQKGQES6AQZ6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC67A12E5
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 09:46:33 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id y66sf1826693pfb.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:46:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567064792; cv=pass;
        d=google.com; s=arc-20160816;
        b=A9a2Xt3IKNVXpgDBPAiOF7oxV8yd0NcEMoGUNzVmutQofhWBs1fnjgeKDBwwoT+3YS
         QoCGcieAT8ZgZUuojbfddtvVGpKKpM1x3wT4accNkJ0RSTsI65pKD1J9SZ6p4AQQ37Hz
         Nt5Pmmaxdnw4nfhhQeeCMv1sjvA1eaUutieQf+gO/NjJ+xBzJTu5N6pUxEw03qCfxH6X
         xKzpZ73ro6Th9Kt1nZUB0DgJgu619YhbwD7a/Ba8cHFol6zTWvltw7pzV9ZLUUjq89H4
         E0bN/++Kg4xoywYqIc44uuPhuVDEt6JKxjrVksFTOyzK2GtR3g2JgtvT5qZgZR6dvmG7
         BK7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=eFngPAUKOOae3qGqq1GcnchpHDgg/VszrfO4/uMnacU=;
        b=TsEXCXvJ+cy+MfTEeQbiA8L14NaRNExYJS5ecWqCHM9EB1uBr//h5YYpBl34LjWF6v
         sPdTkjjUYdqzbZrCoK5M1ggTMtABGjbR+iiWLtL84/8CBHow2L2/sHY1jvWWPVg+4n4I
         brBSfyJr4aWdPSN8Sakjc9jM3uFOaOAq1L+MN7g8ZioOmythfesaDHK0Fh0j9MtJr19s
         ZKd4i7VjxbKLmGXk3+ByI/y/3Zo6/lf0+XywwJyP5+vtMR09XKN64NruOOXT0rcqIEcT
         GBIqXhaz2MIl0jwWYy4Pu6Bk7jXG1UfZf7AGfpAFgTpcE4kSf+FztANNfDMEnXfEbBMF
         DWDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G+4eBBbE;
       spf=pass (google.com: domain of 314jnxqkkagwckbkfkxkuqyyqvo.myw@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=314JnXQkKAGwcKbKfKXKUQYYQVO.MYW@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eFngPAUKOOae3qGqq1GcnchpHDgg/VszrfO4/uMnacU=;
        b=btzc9K9DxQTMnJWR/H6tINLLUaCZnKHw9ywBAYVBEA5hLXljy81kxq9zjdJf74+KGY
         Dd8eJlTg+CVWKVxvbcM9bJOt2Y5Q11T/h85Q77waY4UapP360hNf01+kP/iQb7H2z+Ju
         LpSxIQpvzdsneNUFN6W/hodrSi4fUd/XXnjwm+/rg/F+qy7+NpOIWbwzRZa76GVYqFRz
         9VkyytRCwuEQJmQ26Br15/CeGfdh7aNpGUf4DVV1rwVNvozEmSqclY/sY3ODRUkIFwZv
         T4U7CoWvDP95OmRYqJmvHOUPT9wu2XfpdWs8swSdfB/hEqNPCMOuc3YEXJ929A3RsmyM
         WvTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eFngPAUKOOae3qGqq1GcnchpHDgg/VszrfO4/uMnacU=;
        b=tBw/SAZpTzyOA/jxt3gFbvsPAYhMlL1Lll1vxGIa6oN2Kho6tAckIvXW1Y9aOiOOMo
         dPj2k5eEq+IWdfZsqW4WQTurVdd0qCv4SByS0f1LcK2NZX9KHdqXurIaDrrHaml2V06O
         t0PLZ4wA6Jt7OX5Fq5xz1GYkR6CjCR7yBeeEggJekT1k1tkiWkrnCZrk77sZdezT++N5
         0taQQbjgXGekLOiByEnN+WTFPJzsZdEULfJc4JEHNJIs6Fr4b3htCSd4aq0X32+Sm96z
         tZ9W8azrM2wBjhRle1RFQbqfyKoHTXk/tjXkv309gH6hdq3bDMh+IogvtM8edDyAx4qJ
         Sxaw==
X-Gm-Message-State: APjAAAUt7vkcWXEVlrABdqGtZcnlr/hrFrbjsylzdbvhYIgAd9e1op93
	L/oorGs/1pacaeoOyaGh298=
X-Google-Smtp-Source: APXvYqzMxgFOeKQ/7ENHLUNyHDJDm+X5vWbSkLlE2rLryCjnq/vhTGJ/Du8Wbr6MAlv82y/PhnlEJA==
X-Received: by 2002:a63:7a01:: with SMTP id v1mr7237735pgc.310.1567064792025;
        Thu, 29 Aug 2019 00:46:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:354:: with SMTP id fh20ls531677pjb.2.gmail; Thu, 29
 Aug 2019 00:46:31 -0700 (PDT)
X-Received: by 2002:a17:90a:cb88:: with SMTP id a8mr8241276pju.111.1567064791746;
        Thu, 29 Aug 2019 00:46:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567064791; cv=none;
        d=google.com; s=arc-20160816;
        b=z8h7EC/Xp3GevvwoxdVCN1Xf9GUmxFKy+Djhj94l/HPd9hyR6WOLs9KeWT0U9T+Bom
         5L9FfoWil38sfIb25s6EmOwVcuoRI/+sGQoAdlBTxN7O/Eq1NIe7OoL4xKetrrY/ITG+
         x2JEX3RacJE/qUKm2BjADzgBXSN87N1xWgolS1+IOzldmoiHq1KJ4IStFiqEgW+gPjXD
         lNX72K5gSpoynH7/pgPeikMuMlTiuyxS++anAx0P4v3c2YYHstiT7F7huYIvSGIZL8Cj
         x7/WJdz0xrd9FFalt41yolqB5wu1+cMYTDLr7XMjEmhdBWD1S7Hkve3t7vMyfqVsZWHP
         YlnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=nhjHwCHt3mcz+mHDiVxN7s8L1KuUZ7MDwDAfLe16I50=;
        b=OSIezdVU9ORYkcG9O6CKvBBKunWc4YlMpVTNttlJiOimestS5IBiJd3Nx6zFcmY7HK
         jugilv8mnFr5AvK7wG2FfbHkqHKB/scNbQJ9me1KtlkPx5ljQMuYfPjUgBuQ8Px0mXT1
         I8ssOaSnhnbiJKgEaC4z6YEVZE5AmR0K+q672E+6z7sJi72ZM1OQqnfFDgJLTP20xK+p
         PbwLtTmSxUputQzqYnqo7mkSN6Im5NhXowdwb1nHa8VRV9jp4S41d3Xd3HxPQCaeCcL7
         BsBjh5ed05GXljQ+M9txO4ffXd8nkSXtr5B4FJZ45cshXZLH7db1CzyBb5dFzyUGLZuF
         tcrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G+4eBBbE;
       spf=pass (google.com: domain of 314jnxqkkagwckbkfkxkuqyyqvo.myw@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=314JnXQkKAGwcKbKfKXKUQYYQVO.MYW@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id s21si16681plq.5.2019.08.29.00.46.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 00:46:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of 314jnxqkkagwckbkfkxkuqyyqvo.myw@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id a40so1527955pla.15
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 00:46:31 -0700 (PDT)
X-Received: by 2002:a65:690f:: with SMTP id s15mr6855732pgq.432.1567064791199;
 Thu, 29 Aug 2019 00:46:31 -0700 (PDT)
Date: Thu, 29 Aug 2019 00:46:03 -0700
In-Reply-To: <20190829074603.70424-1-saravanak@google.com>
Message-Id: <20190829074603.70424-8-saravanak@google.com>
Mime-Version: 1.0
References: <20190829074603.70424-1-saravanak@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v10 7/7] of: property: Add "depends-on" parsing support to of_fwnode_add_links()
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
 header.i=@google.com header.s=20161025 header.b=G+4eBBbE;       spf=pass
 (google.com: domain of 314jnxqkkagwckbkfkxkuqyyqvo.myw@flex--saravanak.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=314JnXQkKAGwcKbKfKXKUQYYQVO.MYW@flex--saravanak.bounces.google.com;
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

If dependencies inferred by of_fwnode_add_links() result in a cycle, it
can prevent the probing of all the devices in the cycle. The depends-on
property has been added to explicitly override inferred dependencies
when they create a cycle.

Add depends-on parsing support to of_fwnode_add_links() so that
platforms with cyclic dependencies can use "depends-on" to break the
cycle and continue successfully probing devices.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 420c2d428184..78a262e24686 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1106,6 +1106,12 @@ static struct device_node *parse_interconnects(struct device_node *np,
 				"#interconnect-cells");
 }
 
+static struct device_node *parse_depends_on(struct device_node *np,
+					    const char *prop_name, int index)
+{
+	return parse_prop_cells(np, prop_name, index, "depends-on", NULL);
+}
+
 static int strcmp_suffix(const char *str, const char *suffix)
 {
 	unsigned int len, suffix_len;
@@ -1151,6 +1157,7 @@ static const struct supplier_bindings bindings[] = {
 	{ .parse_prop = parse_clocks, },
 	{ .parse_prop = parse_interconnects, },
 	{ .parse_prop = parse_regulators, },
+	{ .parse_prop = parse_depends_on, },
 	{},
 };
 
@@ -1203,6 +1210,12 @@ static int __of_link_to_suppliers(struct device *dev,
 	struct property *p;
 	int ret = 0;
 
+	if (of_find_property(con_np, "depends-on", NULL)) {
+		if (of_link_property(dev, con_np, "depends-on"))
+			ret = -EAGAIN;
+		return ret;
+	}
+
 	for_each_property_of_node(con_np, p)
 		if (of_link_property(dev, con_np, p->name))
 			ret = -EAGAIN;
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829074603.70424-8-saravanak%40google.com.
