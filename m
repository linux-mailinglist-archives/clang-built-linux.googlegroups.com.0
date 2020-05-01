Return-Path: <clang-built-linux+bncBAABBGHYWD2QKGQEV5QEKGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCFF1C1911
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 May 2020 17:11:21 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id v7sf2158586lfq.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 May 2020 08:11:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588345880; cv=pass;
        d=google.com; s=arc-20160816;
        b=NYZ/NnteVwp1Ri6wM1lm7mDgZPDa7sce3V3Z0FSupDngHNwZVUupNxNfy6c8RCU7kT
         1O2hUpbyPWNXJwmOzC6Zm4nf4sLLl7OPUNeACuUYAlTryINO8oBEyV620yxmM+cCv08Z
         CPNHzQX7oZlTrvc1WfxIcORGttmhyqsrYfovIzJjlXJ2HFM7b2TZquP7YRLLtxOAHWrB
         SBmY6n7gyq18Mg8BsrLqJeiPDdVQ7jd4Zme2S5vdesM0+vLeif+nJo6E260sqzqBq9JR
         tiZXjMCnC3z3PeP5bOojre0IxA8dkhcbC2A4v+29o2VZIy6CGNBHB29ncZ/rFB8d89V2
         cd1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:content-transfer-encoding
         :mime-version:subject:from:references:in-reply-to:message-id:date
         :sender:dkim-signature;
        bh=C2tS/aZ2XcRElPfvvYKoFqL3j2ZSne1o+WSduYwigt4=;
        b=LUC5rCvfZTECCx0aeXRbOqPbxrpbstmJHp5SEp7YUaDSs4z+dIiuPwOv6mUz/GAEmh
         X1NBpvbtZvW12B8rcmMzOdempfVZWeii27404yAeMtWry9VeDt6yJnzQK1CBYs/hQSyd
         uJRSyS8Bm4IVn15jfW8xCa0p7LnSyqR7otYTjZzi6FBkXLT5uAv8TwaaHCbd3/qPiDQT
         rT5wAXzFjeSNterkPrbZI8M3RDfn2ft+UP2YNmZGh5jt0ZSIedZyb//ahseMFVTDnhlG
         tvMt3w7eHjIc8uQVgUyAvfAy2QCQneoj+kwb47mrl8TgUjL/ov8oREz3RC7k5SmnMnp9
         MWrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=BUm2psIr;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:in-reply-to:references:from:subject
         :mime-version:content-transfer-encoding:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C2tS/aZ2XcRElPfvvYKoFqL3j2ZSne1o+WSduYwigt4=;
        b=fdACRDb0tDFDzd3pUQYIfIGA8b0Jjw24/vxicA1JbkD/Tmevxt0tDxlGsGjNSZVYxW
         IE1czpih3xmDjyNuSFmpqpE2b1yjinsQx4qyghvVkZAYtxH1tWkD2KBc5VZJjdceiH4U
         rLV/ZhH7FCNI2WXTSTeDis2LiLS84lA7Gm1FzJavrdqdiKM/y5tgLUXh+11EuSj7PMKq
         gyPOCCjidlcXW8uybaUTWzKgfkGcgFXkNV7P1wBMg8r4auBF7MlMxf15G5xlscCObHbJ
         Y2eLU/GGrCFKOGdJCSs3CXFQYFrwRCWRTxa6n2Fp5VmLoyAw6sWJWcdYQMNHPDVEQa0C
         Yl4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:in-reply-to:references
         :from:subject:mime-version:content-transfer-encoding:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=C2tS/aZ2XcRElPfvvYKoFqL3j2ZSne1o+WSduYwigt4=;
        b=ArhpXO+lNRxkZQNfzHpodiLoqhqgbRc7aN1imWX3Ws5iQF0mucTnvrZISQ8ff4LjKQ
         tk2YrbCm3OevRasIj57hKE/6MdyuzQxWMC0sO04u9aPbChXzwonnm2FRfYd0xRpyaOCt
         gYbx5IzMOLbyXjUfffnhxX3b3ngjZKHoOt2wXRuykv4+I+hVWeTo+GWrekN96iuMC92o
         WIe4mr2nZ88fewVQT2nlJH3p0zjmlsmi0c8YXzcEPisPGgkA7i36ICra0T8mwK6EzfR6
         82ZmAI2GLbuycozD7iYsfllVgM6L6EV/4wCVGcfY8YCUFXtjyIz10x0SIYU8dkCJHx6+
         kTFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaQ+Vmw4mVjDj1zirO3BXId74KmiU6V5+ngF9v9cDCkTZFGdw9O
	aqd+6GX4V7WPn4qpK/T8/oo=
X-Google-Smtp-Source: APiQypJWT5Rk29wJADQltfN7yghLM9ppWkIs3lS0QC0DWPnh28aKva8CUZyqUl/SDcrgTaY9a8Rj5g==
X-Received: by 2002:a2e:6c08:: with SMTP id h8mr2581960ljc.48.1588345880776;
        Fri, 01 May 2020 08:11:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:852:: with SMTP id 79ls1122473lfi.8.gmail; Fri, 01 May
 2020 08:11:20 -0700 (PDT)
X-Received: by 2002:ac2:5f73:: with SMTP id c19mr2884244lfc.29.1588345880326;
        Fri, 01 May 2020 08:11:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588345880; cv=none;
        d=google.com; s=arc-20160816;
        b=QaVwo/r+pkcCp3YIBuQ9MMV5ivKrKHnkDyou3Q92gXS93yzhNxAu+8wdFfe4mnQ3/p
         +AxEayXEErVDlqyqwtaUPsOUVk41eYolIKqw9qmJ7RAbWEENpbLHoZldbqSRvAWPEVOQ
         4kaHE6J3XnGrXj4Y2c7U4tj9IGelYGr8PrSrLac9/xjIauOzRq8Qpq5iZtS7RsPgFumj
         AOcdaF8b+HCor8FsFIIOYc13m+o3ccpjmXwi6S6F0DAkZ8c4U9pnyw1h3TjE5gRdg7Fi
         x5LCgiz3zT/rYwt+/sje1rap+mj8Ib+AHVTNA+WBO84dqmGukJls5HBbLh81cALGTLE4
         /zmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:content-transfer-encoding:mime-version:subject:from
         :references:in-reply-to:message-id:date:dkim-signature;
        bh=AoWg9t+mxqJF9/KIbYY6QIWGqNM/hEkvoc6jGxHds34=;
        b=sKigfQyNuXELc6R56HP/TsgaXMEY9l/0m3u+vsjVvt6CtqLtUnIDbmb6T1ruTdSabx
         ZWGW+H1r98M8UY6hbsr2EBoit0yI3WvS5ESMxiNqeGuYPn8lHR0a1XvdI9V4X0zA2yzn
         5e0IEqtfUnRiE90yVhdEBOgvxTjCh75DkKaKnQo9N3N1YktqcxZSoZw0Z6oBdDcGrASj
         uJoHoQ16T/Wd0+I4BnkKrCKXiIB0D7qZ0ZIPLyj1NrlIx6spsYK+o1bLBpZgq0Op5taS
         SUI2VjMO8Fq+4COrRFMWlMavBCZ3R07oLK0iMJ2Misxz1gX8sN2vyf6MoWwIdBeiyW5x
         ibEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=BUm2psIr;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
Received: from rere.qmqm.pl (rere.qmqm.pl. [91.227.64.183])
        by gmr-mx.google.com with ESMTPS id c24si113822lff.2.2020.05.01.08.11.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 May 2020 08:11:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) client-ip=91.227.64.183;
Received: from remote.user (localhost [127.0.0.1])
	by rere.qmqm.pl (Postfix) with ESMTPSA id 49DG135MzJzT9;
	Fri,  1 May 2020 17:11:19 +0200 (CEST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Fri, 01 May 2020 17:11:19 +0200
Message-Id: <d7728c3de2bbdcf496474a0f7ce4cb0d1c62bb71.1588345420.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1588345420.git.mirq-linux@rere.qmqm.pl>
References: <cover.1588345420.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH v4 3/4] power: supply: core: add output voltage measurements
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
X-Original-Sender: mirq-linux@rere.qmqm.pl
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@rere.qmqm.pl header.s=1 header.b=BUm2psIr;       spf=pass
 (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as
 permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
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

Add support for supply output voltage to be measured and configured.
This might be different from the voltage on the storage element (battery).

Signed-off-by: Micha=C5=82 Miros=C5=82aw <mirq-linux@rere.qmqm.pl>
---
 drivers/power/supply/power_supply_hwmon.c | 25 +++++++++++++++++++++++
 drivers/power/supply/power_supply_sysfs.c |  3 +++
 include/linux/power_supply.h              |  3 +++
 3 files changed, 31 insertions(+)

diff --git a/drivers/power/supply/power_supply_hwmon.c b/drivers/power/supp=
ly/power_supply_hwmon.c
index 3863b2a73ecf..626a344fbad1 100644
--- a/drivers/power/supply/power_supply_hwmon.c
+++ b/drivers/power/supply/power_supply_hwmon.c
@@ -16,6 +16,7 @@ struct power_supply_hwmon {
 static const char *const ps_input_label[] =3D {
 	"battery",
 	"external source",
+	"load",
 };
=20
 static const char *const ps_temp_label[] =3D {
@@ -51,6 +52,20 @@ static int power_supply_hwmon_in1_to_property(u32 attr)
 	}
 }
=20
+static int power_supply_hwmon_in2_to_property(u32 attr)
+{
+	switch (attr) {
+	case hwmon_in_min:
+		return POWER_SUPPLY_PROP_OUTPUT_VOLTAGE_MIN;
+	case hwmon_in_max:
+		return POWER_SUPPLY_PROP_OUTPUT_VOLTAGE_MAX;
+	case hwmon_in_input:
+		return POWER_SUPPLY_PROP_OUTPUT_VOLTAGE_NOW;
+	default:
+		return -EINVAL;
+	}
+}
+
 static int power_supply_hwmon_in_to_property(u32 attr, int channel)
 {
 	switch (channel) {
@@ -58,6 +73,8 @@ static int power_supply_hwmon_in_to_property(u32 attr, in=
t channel)
 		return power_supply_hwmon_in0_to_property(attr);
 	case 1:
 		return power_supply_hwmon_in1_to_property(attr);
+	case 2:
+		return power_supply_hwmon_in2_to_property(attr);
 	default:
 		return -EINVAL;
 	}
@@ -399,6 +416,11 @@ static const struct hwmon_channel_info *power_supply_h=
wmon_info[] =3D {
=20
 			   HWMON_I_LABEL   |
 			   HWMON_I_MAX     |
+			   HWMON_I_INPUT,
+
+			   HWMON_I_LABEL   |
+			   HWMON_I_MIN     |
+			   HWMON_I_MAX     |
 			   HWMON_I_INPUT),
=20
 	NULL
@@ -469,6 +491,9 @@ int power_supply_add_hwmon_sysfs(struct power_supply *p=
sy)
 		case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
 		case POWER_SUPPLY_PROP_INPUT_VOLTAGE_NOW:
 		case POWER_SUPPLY_PROP_INPUT_VOLTAGE_LIMIT:
+		case POWER_SUPPLY_PROP_OUTPUT_VOLTAGE_MIN:
+		case POWER_SUPPLY_PROP_OUTPUT_VOLTAGE_MAX:
+		case POWER_SUPPLY_PROP_OUTPUT_VOLTAGE_NOW:
 			set_bit(prop, psyhw->props);
 			break;
 		default:
diff --git a/drivers/power/supply/power_supply_sysfs.c b/drivers/power/supp=
ly/power_supply_sysfs.c
index 1d1fb69516a8..fb6f113b52bb 100644
--- a/drivers/power/supply/power_supply_sysfs.c
+++ b/drivers/power/supply/power_supply_sysfs.c
@@ -278,6 +278,9 @@ static struct device_attribute power_supply_attrs[] =3D=
 {
 	POWER_SUPPLY_ATTR(input_voltage_now),
 	POWER_SUPPLY_ATTR(input_voltage_limit),
 	POWER_SUPPLY_ATTR(input_power_limit),
+	POWER_SUPPLY_ATTR(output_voltage_now),
+	POWER_SUPPLY_ATTR(output_voltage_min),
+	POWER_SUPPLY_ATTR(output_voltage_max),
 	POWER_SUPPLY_ATTR(energy_full_design),
 	POWER_SUPPLY_ATTR(energy_empty_design),
 	POWER_SUPPLY_ATTR(energy_full),
diff --git a/include/linux/power_supply.h b/include/linux/power_supply.h
index 5313d1284aad..f1ff8d230488 100644
--- a/include/linux/power_supply.h
+++ b/include/linux/power_supply.h
@@ -132,6 +132,9 @@ enum power_supply_property {
 	POWER_SUPPLY_PROP_INPUT_VOLTAGE_NOW,
 	POWER_SUPPLY_PROP_INPUT_VOLTAGE_LIMIT,
 	POWER_SUPPLY_PROP_INPUT_POWER_LIMIT,
+	POWER_SUPPLY_PROP_OUTPUT_VOLTAGE_NOW,
+	POWER_SUPPLY_PROP_OUTPUT_VOLTAGE_MIN,
+	POWER_SUPPLY_PROP_OUTPUT_VOLTAGE_MAX,
 	POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN,
 	POWER_SUPPLY_PROP_ENERGY_EMPTY_DESIGN,
 	POWER_SUPPLY_PROP_ENERGY_FULL,
--=20
2.20.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/d7728c3de2bbdcf496474a0f7ce4cb0d1c62bb71.1588345420.git.m=
irq-linux%40rere.qmqm.pl.
