Return-Path: <clang-built-linux+bncBAABBGHYWD2QKGQEV5QEKGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7261C1914
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 May 2020 17:11:22 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id v185sf14305wmg.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 May 2020 08:11:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588345881; cv=pass;
        d=google.com; s=arc-20160816;
        b=LlvJKPFkOjsdbqhWf1Wh+qPPTUIeZs1bdzGKknrQToaZ4v5BG751vgo/qo5I4xAb2C
         mgZJRc4x+Oc/cQ9gjly0YM+Ah3nYbOFw2ip8b8uzw2nUs/AgaSs4NcbmXUcCzUEaxdBz
         BohBPx7sShjDQZQCPWNlIkd8lpRdwtZPpFq1Ul16yj95S7rlT3JOs91bu7MFkU3c0l9o
         thoXjqNB8liEDEcgL/BTqFuDpPZuomDQjJpTg4tAAHvk9w4ms1fF64qSsKQqJyp+2NUO
         DyOrJDZcyjCdCcTY3d7ndQwhJ+txZwYasrI58fsHhJ9GqE+2aqHLe3AN+DCsW8xnUlym
         Ybrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:content-transfer-encoding
         :mime-version:subject:from:references:in-reply-to:message-id:date
         :sender:dkim-signature;
        bh=Iyxnt+PiyP55iihnd4UMAK3/DtmdCBTzPUKgX+HMOHw=;
        b=kbRYa/dFguBvdOErgYfQOcL6B3A09Lec3P6Ojq25QPcTaLK6Qa2SwPD/he9hYYCcoe
         y0PQDIgsl7nTNTfXpsw2kngrc8dgD7H96dQ1d4t1yyPTOkQyV8dD7jd1sPnMlvg+VtNn
         TjFSPIiK0XiwW0SItr1nJqNF4AO/vJnrtuGlF52GYn33AdYRPRQrveFcNBwAVzt+39rf
         vjoJyE9wLMQ6jO/oJekwYT9xW3xQcSK2TFmlLZyipYRglplnV21cBQKclsEyTd/y4hPv
         FXvfi0279pLpZ51oZlNdeiYY3qTR6ATB+bmY5trq+kLZA9nDLd2ImkD5Ki6KUN6xuUwh
         34Mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=Y0dO+r5A;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:in-reply-to:references:from:subject
         :mime-version:content-transfer-encoding:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Iyxnt+PiyP55iihnd4UMAK3/DtmdCBTzPUKgX+HMOHw=;
        b=kirkHUr0eoK03GjZ+jOhJISrCFqtFPo+Pdh8+lkTiTCIW7KmSTAylyrQz7UwWo9v+L
         RvdpUHZ2A4454husMoO12yNhizL/vqNEoL80kTcztsFGs+Y/izxK6A18s14vQu8cu9w/
         BzYgnUvRkS3ebwiQVu1t80HBX9gD1iT/oJxNAEem55R+vHtqIPBwISD+0wcWvo1APo9Y
         p/kQgh/cQV4r/Z8zg4JSDgB6k6pb6qDCYOGXekvlG+/gdMAmyL3Rr1YpQIpsLdT4Xbr0
         HTBbrFrLUtzLQ9o0vzfbx6zIrSz4HK1FW0PC+PhvwVPksxMIyTwogGYLdijVZ/qWcOT7
         U6hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:in-reply-to:references
         :from:subject:mime-version:content-transfer-encoding:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Iyxnt+PiyP55iihnd4UMAK3/DtmdCBTzPUKgX+HMOHw=;
        b=bTj8dmHlujfjVzY+mFTFLAkm/CPEbZgncdmeCNNhi8Z2emF1jPGLYfZFOofsDVg7Se
         m9P+N+02n89ZFnS+vLVcZ3Yjyta8XzM/HjdGiYpmi659vwNrMUJazdP02y6qC5fmuysc
         BJhIGcojwBpfMAKzZiF2hiFYMu61w9aqHQlnAUo1MnYG1Ekof/5MiyzyveI0WoDFR5sI
         JoRiLebNSNna9K20qK5ZybOwoKVh/TFQGoe5EbqCztnegRNjeX7K7DyeKgV8arm3ODS4
         xpQ6wJXcfTDvZZEUXt+E3H3sSbuuo5DVS9bm7xSJKqgWpWLbuiTO8gzutBWVkL1IJcmW
         uinQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYTd+9q5mDAKACiyjYe6+VUVNA+oqvMIVBhdxzf+H73d9kqmlUu
	sNfqk4RZUAlnku22mKU2fMY=
X-Google-Smtp-Source: APiQypL/iOXDfLHVSpoHILgBrdZqkyiWp+0UN+IykDgEBGCZ5BwF4zD0JxvmdcuxW0hQk9VN7nXt/w==
X-Received: by 2002:adf:91e3:: with SMTP id 90mr4675432wri.206.1588345880432;
        Fri, 01 May 2020 08:11:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4411:: with SMTP id z17ls7646159wrq.11.gmail; Fri, 01
 May 2020 08:11:20 -0700 (PDT)
X-Received: by 2002:adf:dd8a:: with SMTP id x10mr4754918wrl.308.1588345880031;
        Fri, 01 May 2020 08:11:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588345880; cv=none;
        d=google.com; s=arc-20160816;
        b=qm6585NEr62h7rEkPZK6W1Amw2aPhRZk5dqQU5UF1k+D8I/zgcbD5o5bjeMO97x/hg
         uInt3JP8ZT+7sHmeS/v0Lin7A4r+qHdb7ttnMwoqWfzXQiGs/ScxDqhpJ81L4EMlGIRB
         APw20NsX0XL2Qfc148Q0jYpCycOOsMIpH6neLURGnQFWN+w2B56kqxdgyjVw8ibN7JWv
         Rms5o5Y0ux4JqJyVVC+uKvSEq7V/tZ4sqkmPqWyhv4niE19EY9dbcDdXEIfkZAoW9GyU
         vfDfGlGLKc/r3qiSiTSgCLM0buozqjI52Xo624oWh8bIJAHmVdW6pZ1TBlXZwLCR34bR
         AJug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:content-transfer-encoding:mime-version:subject:from
         :references:in-reply-to:message-id:date:dkim-signature;
        bh=rLdz711ZMPl0MSiyCVVBDq0FV+9imv+XhT5+Y2lHcA0=;
        b=p0KB63+gkF4f7qgBYec28qFJJm14/Ze1kvwGi0W0DqmpOfO8tXeErTSLdAEJwuVqFp
         Y6WUscoOhGGzbnLd6JNYZTZSVzLdUh7XGF/vUw4bsA1pWF1rIxWENRZkjamxxJTSQGZ0
         b0P9Hkg/xavJ1UzMAujaHnB7n5GJXyaJ8wGRZ5BcHwCq/Cr5XdnXUhX+HQiKFhXJQrV5
         sCCi22EigeuAzCDaCCfzYxjkZyXxJOkKRN1xaF/KcJWffudyMJ7oJiglFfBcWcpNCv9u
         dGBI8ly3zJBl30iipLRbRBWvYhe0i5OlM6aPICDW+JdDlwRqfiFkiSqOVmwG6RM1jfFp
         I7Kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=Y0dO+r5A;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
Received: from rere.qmqm.pl (rere.qmqm.pl. [91.227.64.183])
        by gmr-mx.google.com with ESMTPS id m4si196863wrn.5.2020.05.01.08.11.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 May 2020 08:11:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) client-ip=91.227.64.183;
Received: from remote.user (localhost [127.0.0.1])
	by rere.qmqm.pl (Postfix) with ESMTPSA id 49DG126KGyzLn;
	Fri,  1 May 2020 17:11:18 +0200 (CEST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Fri, 01 May 2020 17:11:18 +0200
Message-Id: <79bec8125df260bdae294345bd7773dc3dd9c434.1588345420.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1588345420.git.mirq-linux@rere.qmqm.pl>
References: <cover.1588345420.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH v4 1/4] power: supply: core: tabularize HWMON temperature
 labels
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
X-Original-Sender: mirq-linux@rere.qmqm.pl
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@rere.qmqm.pl header.s=1 header.b=Y0dO+r5A;       spf=pass
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

Rework power_supply_hwmon_read_string() to check it's parameters.
This allows to extend it later with labels for other types of
measurements.

Signed-off-by: Micha=C5=82 Miros=C5=82aw <mirq-linux@rere.qmqm.pl>
---
v2: split from fix temperature labels
v3: remove power_supply_hwmon_read_string() parameter checks
    as it is internal API (suggested by Guenter Roeck)
v4: remove unreachable() as it triggers compiler bugs
---
 drivers/power/supply/power_supply_hwmon.c | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/power/supply/power_supply_hwmon.c b/drivers/power/supp=
ly/power_supply_hwmon.c
index af72e5693f65..f5d538485aaa 100644
--- a/drivers/power/supply/power_supply_hwmon.c
+++ b/drivers/power/supply/power_supply_hwmon.c
@@ -13,6 +13,11 @@ struct power_supply_hwmon {
 	unsigned long *props;
 };
=20
+static const char *const ps_temp_label[] =3D {
+	"temp",
+	"ambient temp",
+};
+
 static int power_supply_hwmon_in_to_property(u32 attr)
 {
 	switch (attr) {
@@ -180,7 +185,20 @@ static int power_supply_hwmon_read_string(struct devic=
e *dev,
 					  u32 attr, int channel,
 					  const char **str)
 {
-	*str =3D channel ? "temp ambient" : "temp";
+	switch (type) {
+	case hwmon_temp:
+		*str =3D ps_temp_label[channel];
+		break;
+	default:
+		/* unreachable, but see:
+		 * gcc bug #51513 [1] and clang bug #978 [2]
+		 *
+		 * [1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D51513
+		 * [2] https://github.com/ClangBuiltLinux/linux/issues/978
+		 */
+		break;
+	}
+
 	return 0;
 }
=20
--=20
2.20.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/79bec8125df260bdae294345bd7773dc3dd9c434.1588345420.git.m=
irq-linux%40rere.qmqm.pl.
