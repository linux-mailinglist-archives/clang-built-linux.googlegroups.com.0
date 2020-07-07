Return-Path: <clang-built-linux+bncBCX4ZJPL5EPBBHVKSH4AKGQEXO6PQZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id CF757216ADB
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Jul 2020 12:57:34 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id t18sf20378831lfe.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jul 2020 03:57:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594119454; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ygml11eO9/d3VZX6TZJPwA1mcqvU9R/35wM2YhNlWZ9v8RqoHYyPhK+sAi9qAYi439
         927sS6ExDTHvlKKsZSFkHLyNEr6ol+v+hvtudbQS2z1fEUuswVhSKBvGoJQRX2pk23Xr
         f5vZYcOP8Nil1EPaOS9KsZ7MEJDuf3ugB+fiV9clBV/GJ5exqm9pCWsdSK8jkfR8B7mf
         kBKnLhNWlT5h4+NTwJQZEEHYzGeQeK8mTECHXLRa5C0UgmEhU5RokawBfsYVNb++krhw
         Ux/mpsSCcIkUk4bcSkDSUFZwNzlTzU5jq2aGTeQVgETow9HYwfKPDNPhj+5W4GXgwtO2
         JIaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:reply-to:from:subject:message-id
         :dkim-signature;
        bh=tGo2vULSjXtttZNYfWV3Ry+3xrXjPylbqLkv31kPAhs=;
        b=YeRdDzrUMHCd5lS3y3wEZGNqDLZo4zRH0fIq3dmOol7UsV+PaLFn+AwlsVNkWVKFJR
         McXkebOj8lP3Xo8CAJQNmBgDteCa+kSzMIgXVEpBFF+dvTm58qNMHymw93d8ATWV6tjp
         MvDxZI1RScWvxQVWP4D7gK+84/JjzR7BfEGSVrPTy+Uk7If0R3HF2Umr0u10RgIxrScN
         G3Jt0Zl+qQTJWjsZDkTCFJCz+eGyyl7YcytRx82jpCRgAiu6GKc6yfOAeZOaoOhtOXLi
         zf3IHDux4wXwQLFxqONBZHZcleKO7Qv8TFT3rkrLIYjZJBq1LgcHNhDGgFrs5RoV8hGi
         EKfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@googlemail.com header.s=20161025 header.b=uxBkYCD9;
       spf=pass (google.com: domain of chf.fritz@googlemail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=chf.fritz@googlemail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=googlemail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=message-id:subject:from:reply-to:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tGo2vULSjXtttZNYfWV3Ry+3xrXjPylbqLkv31kPAhs=;
        b=QM7OykX7IUBRHZLbld+KGNIlFJ/fti1+PO99BBOtM5OGhujvzA4Rfm1PC0EhA93Itt
         5Pu7Y1/ynbpRF+6LlKjbtn19QCc/2xgMjwnaoP/nKT7jOhqjB4AguXmdYpYYI7MsfSG4
         K1rC9OitrH2hL++D6XxSQrOGVAnLjiL/YY3rU5sOeae+8ouMf8ZAnPX40H8oApgrRxnj
         jFInaIBAobl7sAybQrJIr85Lv/oMeVK8ML4o/HpzV+nD19OYD+SVw2N0j8o5QcgxXUxt
         Z3TtSKIIDwsbHCI3YgC1ijKYmAe++lHkZwtAs50DDNab4yGvUg2AGq3ENxrzObKbrw6J
         5kMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tGo2vULSjXtttZNYfWV3Ry+3xrXjPylbqLkv31kPAhs=;
        b=dkCWtg8cnBNIqjs5Y/kf9slkqamMYZ5EtiKINXrfAuqOr1Y6ibSGFoUcjizdRvqMTD
         4i4a7C3mdoNg075bSXWnNZntS4X7cwTzzdIVf3hQB1eHA6MLq0H3Tr2ScOTatnizbEwl
         FcVrUPCyUU1LOIjLIHNvig4Ryh8pUlwdAb+Sk57j3KxpuLqwvr0t0OPx9XxWP2eF9spu
         Ma4UV2sbbKTbrMUNyyA69MOIPm3EvVWMBoDmsCiMhszJYCV60fZeJz3DtxBEQ9sAlRjG
         lV6QwujDWr2Vzgzq8puoKQUIXa+I/a0gjCJEqFg1OdsE3HpF/sZazZoFEpnOBKFu1RtF
         3bnQ==
X-Gm-Message-State: AOAM533E331S6tmbiB3+Z2XfxEBH2W/3rJS8kZDcMlwjTVx3JlWMnLOk
	tRIpqJMOcEtL3rxbPbqfhCE=
X-Google-Smtp-Source: ABdhPJzEuAAGSXf5ip+unUgM6luhtnSB027Oj9f3usSggUKdmuqiYA5B+cnB4Jg1VPCh49OoEcI4JA==
X-Received: by 2002:a2e:9b0f:: with SMTP id u15mr32038384lji.180.1594119454109;
        Tue, 07 Jul 2020 03:57:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9b09:: with SMTP id u9ls1874743lji.3.gmail; Tue, 07 Jul
 2020 03:57:33 -0700 (PDT)
X-Received: by 2002:a2e:3c0f:: with SMTP id j15mr31761817lja.443.1594119453314;
        Tue, 07 Jul 2020 03:57:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594119453; cv=none;
        d=google.com; s=arc-20160816;
        b=yhFjCxomPGzQb//1Yfiv+xLkfeshdRFcIe6UTP5Fu4LMY/c9uyNbOVwlZdE8ZOLRKZ
         X+bVjyiXLZ6NvDV3wlfy8BdE8IwZz2r8aMzkBgOSw7sfT8QKCaqQS7GBPnL5P0UP3b2+
         28gpSRFu4DuXiQJb9/628SYXMBf9QUuWuBeS0uFzqZ1nSYJq4rcTpK0Hb40KiU5jFk4Z
         sT8GxfbULVzcme/YfU8nv1m7+bDk/gGsu8c8vJydmGnmi7g1FFH/g8dAe7rf63eq3rap
         bKbZoORlQYYi4wIskLgxkCIYuv+Er082xfZuL8uUqF5VhW52ECgMSF8hc/WenqLt50HS
         XlQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:reply-to:from:subject:message-id
         :dkim-signature;
        bh=q8a6HmZPzdfh5fojW+wd4kULWFylxpCdZMDt/VjHsYk=;
        b=NMofcUlZ1bAuwJUQsoPoD1BvIauN6LrOSgN46uCZ8gYuN/Ql/n1CdhvWH9QzEFAZAl
         BvXK5R01jEqp8T5dhuuUsXvBPytZZ6+1Pi6HKUnJhIVpKKQkit1gfeZWDPCN89xYtUzR
         R3eTLmjOB88otJP5bU1qzMGofZc8vuEs4pfF1HKWEKXkmFJ0Y7FSa/NdnVbgPl1jCMhZ
         HxkN/gdyouypX4YrDdVSmWZWiVS4nse6fsb5y6VK3ULf0NrS7UHM2ZAvm+4uWr5dwerY
         S+iCBHsoUhSiGQdRGMnR5ppK3JJ+1x7Pp1HVptFHZbzH2qMRswrVDL9vAGkPa2YiLLbF
         G0Tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@googlemail.com header.s=20161025 header.b=uxBkYCD9;
       spf=pass (google.com: domain of chf.fritz@googlemail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=chf.fritz@googlemail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=googlemail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id r21si1311603ljp.0.2020.07.07.03.57.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jul 2020 03:57:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of chf.fritz@googlemail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id z2so22395154wrp.2
        for <clang-built-linux@googlegroups.com>; Tue, 07 Jul 2020 03:57:33 -0700 (PDT)
X-Received: by 2002:a05:6000:1283:: with SMTP id f3mr54061782wrx.106.1594119452809;
        Tue, 07 Jul 2020 03:57:32 -0700 (PDT)
Received: from ?IPv6:2a02:8070:bb9:bc00::fc? ([2a02:8070:bb9:bc00::fc])
        by smtp.gmail.com with ESMTPSA id d201sm529110wmd.34.2020.07.07.03.57.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2020 03:57:32 -0700 (PDT)
Message-ID: <1c437154873ace65ff738a0ebca511308f1cecc1.camel@googlemail.com>
Subject: [PATCH] regulator: fan53880: Add support for COMPILE_TEST
From: "'Christoph Fritz' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Reply-To: chf.fritz@googlemail.com
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, kernel test robot <lkp@intel.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Date: Tue, 07 Jul 2020 12:57:31 +0200
In-Reply-To: <20200707102042.GD4870@sirena.org.uk>
References: <202007071433.Z3bmcgjU%lkp@intel.com>
	 <da3aece9abd23b12837e9abf908ee67f0c2c988c.camel@googlemail.com>
	 <20200707102042.GD4870@sirena.org.uk>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1
MIME-Version: 1.0
X-Original-Sender: chf.fritz@googlemail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@googlemail.com header.s=20161025 header.b=uxBkYCD9;       spf=pass
 (google.com: domain of chf.fritz@googlemail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=chf.fritz@googlemail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=googlemail.com
X-Original-From: Christoph Fritz <chf.fritz@googlemail.com>
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

This patch adds support for COMPILE_TEST while fixing a warning when
no support for device tree is there.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 drivers/regulator/Kconfig    | 2 +-
 drivers/regulator/fan53880.c | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index d47055db999d..1cc3c93a9621 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -338,7 +338,7 @@ config REGULATOR_FAN53555
 
 config REGULATOR_FAN53880
 	tristate "Fairchild FAN53880 Regulator"
-	depends on I2C
+	depends on I2C && (OF || COMPILE_TEST)
 	select REGMAP_I2C
 	help
 	  This driver supports Fairchild (ON Semiconductor) FAN53880
diff --git a/drivers/regulator/fan53880.c b/drivers/regulator/fan53880.c
index 285acc705a55..c45baf581299 100644
--- a/drivers/regulator/fan53880.c
+++ b/drivers/regulator/fan53880.c
@@ -152,11 +152,13 @@ static int fan53880_i2c_probe(struct i2c_client *i2c,
 	return 0;
 }
 
+#ifdef CONFIG_OF
 static const struct of_device_id fan53880_dt_ids[] = {
 	{ .compatible = "onnn,fan53880", },
 	{}
 };
 MODULE_DEVICE_TABLE(of, fan53880_dt_ids);
+#endif
 
 static const struct i2c_device_id fan53880_i2c_id[] = {
 	{ "fan53880", },
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1c437154873ace65ff738a0ebca511308f1cecc1.camel%40googlemail.com.
