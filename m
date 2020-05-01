Return-Path: <clang-built-linux+bncBAABBGHYWD2QKGQEV5QEKGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C891C1915
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 May 2020 17:11:22 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id f15sf5840782wrj.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 May 2020 08:11:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588345882; cv=pass;
        d=google.com; s=arc-20160816;
        b=d9/1UOjQErnJL9fSTk6rU68AhgeY+Leu9UMKRvbn1z7+9ZNcEai3CICOqd7EzPVvq7
         J5D3pTZNACqCpi16c62yUeWGHyWiJ2qMoiX3YZeQUbUZliXmazp11mMtHk8ZRw7B3QGJ
         /lFgjEp3sdqL+sLro+EZQkhefecZgTysE8ooaBxUgFN8WOCKnAbkCiOI6+noQQ5AyLFK
         HWaZ7rx07bZSMkSK63rRVSO0Wi3E+DGjzPMkjYcQ2YmK02KYMMeRdWMLbQ2IgyhaO9F9
         hyfJwZ71ccpgL+7py6uWeYweZx4RnuxpsKZbpM7QEEB+B6s1kFLweswfuBHqLToKb9VD
         pCJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:content-transfer-encoding
         :mime-version:subject:from:references:in-reply-to:message-id:date
         :sender:dkim-signature;
        bh=gZkYr76aFRKkm+WLyrHYRf76J0JmokLh089jxZUR1Cg=;
        b=GKkaNY1l7T/+LJ6laLnDREWQcyYtw/kVOaf0dDPyulMQbF8y9XnTjbiuTUedG+QEw/
         uemUZsO67fD+fWDp8Y2TxQe08QuvpJ0/nHftwYmlQbjmcxpNzFHI4LjJkP/HB2WWYpwO
         CO7fMAJ9NeCTmVZQ4Y8q1hhBpsOVPWp72b5dtMcmfdKACQq196rpHLmRd3IbH1yKWMGe
         4IQlLBqUO3mO9LA9oxkhuBo0KrsHNMXmV/8ZQliKMTEoS1Bxshj8G4vDpg6K00VlanCo
         tK/v6JHKLrqpefXDwY3x1EC2LWxeEOLRsZPCsQ+bilAfWvpValnaGNThfb6765E1oEU2
         YSYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=FtbU93sy;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:in-reply-to:references:from:subject
         :mime-version:content-transfer-encoding:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gZkYr76aFRKkm+WLyrHYRf76J0JmokLh089jxZUR1Cg=;
        b=dwSzmv3rGum9mSUJyMl3AhJYkG2/zszgTq05Z5fwizM+niWeZpapUH/9H+GhSfw23z
         byuWbu49SuUOAWsybClY5CipH65btVWbPgRegP6ApQj2cXbRFAtEC5H1FXc6VhH7fTEn
         z9FFlnhHPylPNMFvn/OLLr6k2bilyIZixWTqaIH9KCeycL1YAY829GY1lPdGVhOQRdaG
         yGTZQFk7pf4ylYdFKMUYiKQcaj4BljpCHmV5vuKEISsay1zvoTlcFWguEO/+ZSVE/dzY
         xcrkPLBWLjJ1dfjrZrP4ZxLPP55DAPc4aH9MV1tCAAycjR6HBI1kmw32KxYNtFJLcEUD
         F+xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:in-reply-to:references
         :from:subject:mime-version:content-transfer-encoding:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gZkYr76aFRKkm+WLyrHYRf76J0JmokLh089jxZUR1Cg=;
        b=K/9aleIbB3RkGIWFpHdZzbn/csZziwiN0lPUQE/IRFgB01zBJDKNEGTI4yzfseFfYi
         PyhcAF16Lu7TYlsnlvaebvQd0b4br+rab4YlOJEZHw0bxF0jnqVCibRLiUKAFsCN56jk
         8EqYvhoSMPZaLDmhAZvvrBsJfHAgcstdGpgXsMlRm6R+xIUF2xi/zUvP4vTpU3WHjoCW
         KZF9Xooxdk0T3SRR4/MxEf5LQKZIsrzTx6kvNtFfKE7zVtals4dkLhParIBkKjhJM4d7
         W6t+LMltj7L2QqCFPfiqc4zFdnXQSikw2n8Mhoci741EpIuumJLoNCz0gYbKlkxlRTwU
         SFpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZWMgOllQmAKszonnoZVyhHPfz2Wz3+Ij1dWdDW/YNYuvtFxsZx
	Mzf5cBk3DFp4zNTJnp/XhlA=
X-Google-Smtp-Source: APiQypL32NTNfonFiKoPtV7TgMyGZRu7AfZ+tMLBxbhXModfPdlSz215rHCosI5jEsTa9A7T+hQxAA==
X-Received: by 2002:a1c:f20c:: with SMTP id s12mr10716wmc.83.1588345880871;
        Fri, 01 May 2020 08:11:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4088:: with SMTP id n130ls47860wma.2.canary-gmail; Fri,
 01 May 2020 08:11:20 -0700 (PDT)
X-Received: by 2002:a05:600c:2:: with SMTP id g2mr7748wmc.85.1588345880409;
        Fri, 01 May 2020 08:11:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588345880; cv=none;
        d=google.com; s=arc-20160816;
        b=LaOzeRW4nsbTFj45JHLjDxpua1L5C+/Up2PUgpjAQYdZ6KFiq+f16gnPeptFH3/JXJ
         Dy0iNtMBoszR0kiZBIBXkGhKOxt8g3PrcTcQl6hcaHh9qFNtoEK34aKvxzeZlSbXMqXZ
         nwH7jVzJsfbi027zKaEdnxfxtdRLTvDIDB9NWmeRuTKFrXMsZRzRS6tuGwauQY53qDN2
         UOlL1eR76VyyEoh8BjblFPelx/PFMn6IJ9KugZzJ+74hxl8XWqcHs0sgWel95ESyGcM0
         Km8tQ5/8OFnePTyWqShQSbgBzYjImdLq3L4/w1Tz/uXdmOs1Qv9Ycg9pLJ1kvmemiryQ
         dZEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:content-transfer-encoding:mime-version:subject:from
         :references:in-reply-to:message-id:date:dkim-signature;
        bh=Aoj2dcxIDbHvgvNob1cAwSP6U9AndPKaXTLVr3XC8pU=;
        b=HB6qWdJz6/zMCNcDNcaY/K+h6/b2v6ONPtUKDLj+dHnDqN2HhWHw3v/fZuxAPlBI85
         ksyTtJZKB8vIymGMXKdSXtwp68tWCjS48WvE8sX5IFlCuPm6lXybVFEPJGYMkzUOvU8n
         sicoTirnvdLM0wcb11+LsZEXK3Or9uiKs+9kgAiryOI2kzclH12thBhjKSVHk77vpJCv
         2ZS3NKu3yhz2PIDkxLCHuSbyBAESXgGXkkrpJJmM//h2Q5HrREZECcdnC3wEGcI4chjK
         J41RGUjwrEi4jtXW/anL1ojfexRkHep27bmHcG/pEQreQzumNR3R9Ld/tgOv+qZ/jvb9
         t6fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=FtbU93sy;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
Received: from rere.qmqm.pl (rere.qmqm.pl. [91.227.64.183])
        by gmr-mx.google.com with ESMTPS id q187si821wme.2.2020.05.01.08.11.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 May 2020 08:11:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) client-ip=91.227.64.183;
Received: from remote.user (localhost [127.0.0.1])
	by rere.qmqm.pl (Postfix) with ESMTPSA id 49DG131GJdzMP;
	Fri,  1 May 2020 17:11:19 +0200 (CEST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Fri, 01 May 2020 17:11:18 +0200
Message-Id: <249d7ad42b02bfeb8c31c49a64ee92b3e745086d.1588345420.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1588345420.git.mirq-linux@rere.qmqm.pl>
References: <cover.1588345420.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH v4 2/4] power: supply: core: add input voltage/current
 measurements
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
X-Original-Sender: mirq-linux@rere.qmqm.pl
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@rere.qmqm.pl header.s=1 header.b=FtbU93sy;       spf=pass
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

Introduce input voltage and current limits and measurements.
This makes room for e.g. VBUS measurements in USB chargers.

Signed-off-by: Micha=C5=82 Miros=C5=82aw <mirq-linux@rere.qmqm.pl>
---
v2: add parameter checking in power_supply_hwmon_read_string()
v3: remove power_supply_hwmon_read_string() parameter checks
    as it is internal API (suggested by Guenter Roeck)
---
 drivers/power/supply/power_supply_hwmon.c | 97 +++++++++++++++++++++--
 drivers/power/supply/power_supply_sysfs.c |  2 +
 include/linux/power_supply.h              |  2 +
 3 files changed, 96 insertions(+), 5 deletions(-)

diff --git a/drivers/power/supply/power_supply_hwmon.c b/drivers/power/supp=
ly/power_supply_hwmon.c
index f5d538485aaa..3863b2a73ecf 100644
--- a/drivers/power/supply/power_supply_hwmon.c
+++ b/drivers/power/supply/power_supply_hwmon.c
@@ -13,12 +13,17 @@ struct power_supply_hwmon {
 	unsigned long *props;
 };
=20
+static const char *const ps_input_label[] =3D {
+	"battery",
+	"external source",
+};
+
 static const char *const ps_temp_label[] =3D {
 	"temp",
 	"ambient temp",
 };
=20
-static int power_supply_hwmon_in_to_property(u32 attr)
+static int power_supply_hwmon_in0_to_property(u32 attr)
 {
 	switch (attr) {
 	case hwmon_in_average:
@@ -34,7 +39,31 @@ static int power_supply_hwmon_in_to_property(u32 attr)
 	}
 }
=20
-static int power_supply_hwmon_curr_to_property(u32 attr)
+static int power_supply_hwmon_in1_to_property(u32 attr)
+{
+	switch (attr) {
+	case hwmon_in_max:
+		return POWER_SUPPLY_PROP_INPUT_VOLTAGE_LIMIT;
+	case hwmon_in_input:
+		return POWER_SUPPLY_PROP_INPUT_VOLTAGE_NOW;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int power_supply_hwmon_in_to_property(u32 attr, int channel)
+{
+	switch (channel) {
+	case 0:
+		return power_supply_hwmon_in0_to_property(attr);
+	case 1:
+		return power_supply_hwmon_in1_to_property(attr);
+	default:
+		return -EINVAL;
+	}
+}
+
+static int power_supply_hwmon_curr0_to_property(u32 attr)
 {
 	switch (attr) {
 	case hwmon_curr_average:
@@ -48,6 +77,30 @@ static int power_supply_hwmon_curr_to_property(u32 attr)
 	}
 }
=20
+static int power_supply_hwmon_curr1_to_property(u32 attr)
+{
+	switch (attr) {
+	case hwmon_curr_max:
+		return POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT;
+	case hwmon_curr_input:
+		return POWER_SUPPLY_PROP_INPUT_CURRENT_NOW;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int power_supply_hwmon_curr_to_property(u32 attr, int channel)
+{
+	switch (channel) {
+	case 0:
+		return power_supply_hwmon_curr0_to_property(attr);
+	case 1:
+		return power_supply_hwmon_curr1_to_property(attr);
+	default:
+		return -EINVAL;
+	}
+}
+
 static int power_supply_hwmon_temp_to_property(u32 attr, int channel)
 {
 	if (channel) {
@@ -87,9 +140,9 @@ power_supply_hwmon_to_property(enum hwmon_sensor_types t=
ype,
 {
 	switch (type) {
 	case hwmon_in:
-		return power_supply_hwmon_in_to_property(attr);
+		return power_supply_hwmon_in_to_property(attr, channel);
 	case hwmon_curr:
-		return power_supply_hwmon_curr_to_property(attr);
+		return power_supply_hwmon_curr_to_property(attr, channel);
 	case hwmon_temp:
 		return power_supply_hwmon_temp_to_property(attr, channel);
 	default:
@@ -100,7 +153,9 @@ power_supply_hwmon_to_property(enum hwmon_sensor_types =
type,
 static bool power_supply_hwmon_is_a_label(enum hwmon_sensor_types type,
 					   u32 attr)
 {
-	return type =3D=3D hwmon_temp && attr =3D=3D hwmon_temp_label;
+	return (type =3D=3D hwmon_temp && attr =3D=3D hwmon_temp_label) ||
+	       (type =3D=3D hwmon_in && attr =3D=3D hwmon_in_label) ||
+	       (type =3D=3D hwmon_curr && attr =3D=3D hwmon_curr_label);
 }
=20
 struct hwmon_type_attr_list {
@@ -114,7 +169,19 @@ static const u32 ps_temp_attrs[] =3D {
 	hwmon_temp_min_alarm, hwmon_temp_max_alarm,
 };
=20
+static const u32 ps_in_attrs[] =3D {
+	hwmon_in_input, hwmon_in_average,
+	hwmon_in_min, hwmon_in_max,
+};
+
+static const u32 ps_curr_attrs[] =3D {
+	hwmon_curr_input, hwmon_curr_average,
+	hwmon_curr_max,
+};
+
 static const struct hwmon_type_attr_list ps_type_attrs[hwmon_max] =3D {
+	[hwmon_in] =3D { ps_in_attrs, ARRAY_SIZE(ps_in_attrs) },
+	[hwmon_curr] =3D { ps_curr_attrs, ARRAY_SIZE(ps_curr_attrs) },
 	[hwmon_temp] =3D { ps_temp_attrs, ARRAY_SIZE(ps_temp_attrs) },
 };
=20
@@ -186,6 +253,11 @@ static int power_supply_hwmon_read_string(struct devic=
e *dev,
 					  const char **str)
 {
 	switch (type) {
+	case hwmon_in:
+	case hwmon_curr:
+		*str =3D ps_input_label[channel];
+		break;
+
 	case hwmon_temp:
 		*str =3D ps_temp_label[channel];
 		break;
@@ -309,15 +381,26 @@ static const struct hwmon_channel_info *power_supply_=
hwmon_info[] =3D {
 			   HWMON_T_MAX_ALARM),
=20
 	HWMON_CHANNEL_INFO(curr,
+			   HWMON_C_LABEL   |
 			   HWMON_C_AVERAGE |
 			   HWMON_C_MAX     |
+			   HWMON_C_INPUT,
+
+			   HWMON_C_LABEL   |
+			   HWMON_C_MAX     |
 			   HWMON_C_INPUT),
=20
 	HWMON_CHANNEL_INFO(in,
+			   HWMON_I_LABEL   |
 			   HWMON_I_AVERAGE |
 			   HWMON_I_MIN     |
 			   HWMON_I_MAX     |
+			   HWMON_I_INPUT,
+
+			   HWMON_I_LABEL   |
+			   HWMON_I_MAX     |
 			   HWMON_I_INPUT),
+
 	NULL
 };
=20
@@ -382,6 +465,10 @@ int power_supply_add_hwmon_sysfs(struct power_supply *=
psy)
 		case POWER_SUPPLY_PROP_VOLTAGE_MIN:
 		case POWER_SUPPLY_PROP_VOLTAGE_MAX:
 		case POWER_SUPPLY_PROP_VOLTAGE_NOW:
+		case POWER_SUPPLY_PROP_INPUT_CURRENT_NOW:
+		case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
+		case POWER_SUPPLY_PROP_INPUT_VOLTAGE_NOW:
+		case POWER_SUPPLY_PROP_INPUT_VOLTAGE_LIMIT:
 			set_bit(prop, psyhw->props);
 			break;
 		default:
diff --git a/drivers/power/supply/power_supply_sysfs.c b/drivers/power/supp=
ly/power_supply_sysfs.c
index 51de3f47b25d..1d1fb69516a8 100644
--- a/drivers/power/supply/power_supply_sysfs.c
+++ b/drivers/power/supply/power_supply_sysfs.c
@@ -273,7 +273,9 @@ static struct device_attribute power_supply_attrs[] =3D=
 {
 	POWER_SUPPLY_ATTR(charge_control_limit_max),
 	POWER_SUPPLY_ATTR(charge_control_start_threshold),
 	POWER_SUPPLY_ATTR(charge_control_end_threshold),
+	POWER_SUPPLY_ATTR(input_current_now),
 	POWER_SUPPLY_ATTR(input_current_limit),
+	POWER_SUPPLY_ATTR(input_voltage_now),
 	POWER_SUPPLY_ATTR(input_voltage_limit),
 	POWER_SUPPLY_ATTR(input_power_limit),
 	POWER_SUPPLY_ATTR(energy_full_design),
diff --git a/include/linux/power_supply.h b/include/linux/power_supply.h
index 6a34df65d4d1..5313d1284aad 100644
--- a/include/linux/power_supply.h
+++ b/include/linux/power_supply.h
@@ -127,7 +127,9 @@ enum power_supply_property {
 	POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX,
 	POWER_SUPPLY_PROP_CHARGE_CONTROL_START_THRESHOLD, /* in percents! */
 	POWER_SUPPLY_PROP_CHARGE_CONTROL_END_THRESHOLD, /* in percents! */
+	POWER_SUPPLY_PROP_INPUT_CURRENT_NOW,
 	POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT,
+	POWER_SUPPLY_PROP_INPUT_VOLTAGE_NOW,
 	POWER_SUPPLY_PROP_INPUT_VOLTAGE_LIMIT,
 	POWER_SUPPLY_PROP_INPUT_POWER_LIMIT,
 	POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN,
--=20
2.20.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/249d7ad42b02bfeb8c31c49a64ee92b3e745086d.1588345420.git.m=
irq-linux%40rere.qmqm.pl.
