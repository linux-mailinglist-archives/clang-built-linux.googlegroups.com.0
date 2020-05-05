Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB5HLYX2QKGQEK3KDAOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E951C58D4
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:19:32 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id 68sf677968lfj.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:19:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588688372; cv=pass;
        d=google.com; s=arc-20160816;
        b=uy1uRQsw8ntP91WmBD3WrcuZjgqCRk3nBE88SEuzlQYDG1c0lmgTIrtM6wqeBD6MlS
         6F172R1NZ5A6WALkDPOnEOrwi60Kp6J/NqCKYRh5bab2a59BZw/oNSMrhBTd1Q1MRZ8w
         WgINVJ/F//kkSpwH7WGLREbe0J51RxeB3wuYKTQLZtKb6Nzr7ZqSAmy12WouK61ydiO6
         evXL6Nx0s/DDf8bOySa/JYcgFjQRIwE4CUFjF1bwwbuf13EU0ncECyl7sT+isd4q6fAe
         Ar1utXYOOM8PZV0DK9/vQF/Uc3eZ6tjeULhCtZfK8z5fwhsWw5t0PzxAiZa5W9bV1mcv
         I4OA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=XP4qZCTpoHSAE1H6zW1GHMFORKiN6trl/QvYmj1BFMA=;
        b=eMDfsy+CSbMWgGwPxMLWdaNVsrblj2s7oRKOZHh/BBSbRQp7Qz51NhR5XRJE9+TKNs
         7+Q9HbQFI76NtoDfsxTah7mT8y0LXkknMApRDlrDIY+/SaP9mhopHxNqNdUjc/TE+zSt
         +facjNK3MpKWjBaA9XAiMFcvIyBR+EPuG6sXL9geXh0OgvZWqoK7GDAGvkfObigwydro
         CvrzAVaCLm/MZgb90t0Uq5cm78eDdMYz5y6lMQGjVnKowOHOa0W76/1w0Hj0Jk1vz1IM
         VG1XFaWUyNY35M75V37Yg70lmVBOGgPNa1B7Kfb2VjDqJ47Ir8e4yuK55JhFtRuuKxsW
         UMjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XP4qZCTpoHSAE1H6zW1GHMFORKiN6trl/QvYmj1BFMA=;
        b=HfvUTg7ebUKIr14oc8NqzSmGAWU3ktsrhKF5wgUClnWZg+V3nwRR5eHAQL0ZC1hkDb
         W2fsUILjQ2q+C/Rh5MyLVdE5t9VkUJaf9Wjda+xhgMLFQfVT4blmPkVDJDILBUCfaBAp
         CeDkpBiyyhwi3SOMIe9HnfhEghvuIoqBwIoVFPhd/BPMNAzf5sXel1dk5KQcc0VtT7zQ
         Ov0FF7Aewg4y/TG3TVM9+Kkv0QyXwgbqpq4QFO9PtF4LMjrMbaw4Vt4P/TKXE6tS1WXV
         x9dt5dubHSjlAb5pgCEeNK6qE4ChkhDzKJRgHmSUIqX9u1oCKzAmyLB3xvrQ64HDGNvF
         goqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XP4qZCTpoHSAE1H6zW1GHMFORKiN6trl/QvYmj1BFMA=;
        b=BajcPeT2LT8krznNsspox49wUciH1MtEsvWr6idjxEur3FWPgeKsVdYxid6gRUaMYm
         13a9Z1EbMGuZzyqUsGcAwukTqtOd3oVKXDDZpZu5HbFZauT8m8pfhAVTlMMDVbS3Xjf4
         EyS2VTAGKYavg2V/lilsIhPZd2rC8XjVGNHUqr7AeviqX2FQBKMC33H17kzioqDbIfdi
         0qCWECjmZBa5XbFq4CSAPcViH6oiLhSnwXlQyCinSdVipDWPfM3TH17V9F6qclTsXdGy
         NQE8ABZuC/THyP0feaOyl3ocPNAdw+3dN2JlYGNB/e7d6brYO09CMOeEZ0p+JKQlO1Ll
         v2lQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYFIJ8VJoIPgMrr69nwqm4zlCqnJt+doZ2HkRRlB8F/GxdoR7Ka
	kzZFz8SMMccveFFirNLFUGI=
X-Google-Smtp-Source: APiQypKKv99CpuxEVfZJWjRoPyanns0mrumDArqpAlqbSVWyfzLMPOPX3pjfuv21F6AtArNQhl5Imw==
X-Received: by 2002:ac2:4257:: with SMTP id m23mr1823233lfl.141.1588688372252;
        Tue, 05 May 2020 07:19:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3208:: with SMTP id y8ls414850ljy.6.gmail; Tue, 05 May
 2020 07:19:31 -0700 (PDT)
X-Received: by 2002:a2e:9882:: with SMTP id b2mr2050855ljj.35.1588688371511;
        Tue, 05 May 2020 07:19:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588688371; cv=none;
        d=google.com; s=arc-20160816;
        b=v3r0tpLIZnpazZlkjixQ8pr5MJINk/5nAkcl7GqdSSgiKN0ahehyhfu4HrXQhv5bO+
         W4ElB8QoSVD3T94DA5J3wrZU9cEY8mhGQIu3NvYS2IFNl9Ezu8nHbZWfaReW2bUGk5+0
         SESKTqztBMxK04Bycb6F2wn/Zo0jTz6mQwCqulc6iBRYv2QtVj6gSd33hvKxRI8YhyMQ
         I4RLB4Z/VGASceYrt0r1OAqhhvaIcYrhrilTbojiNiVuvdimgF777CBB5KIdioC9RRc8
         V2eJPQeJtjKR92WPaEtNJ8uRx3qNLhzxxMsX3lxadbFoO9EpkqOZJNn9JAfvQNVKkjSG
         zAyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=P3S767h35cDpTrXHrimTLmkdiVPJrkwQIIKEroJaZoA=;
        b=dpq39njTCXsCzo6p16zq8WGXQLnkAgvKDMje1hI+Ek6sbELXYZGCN6kTV0Rxkkp8tN
         iG9IAEEX6lUKUqYxTEuJ8cpX7HwcQ6f7R+hiOU8UdSKFOmBI5xizPpFy+BJ3uKv2Q3SR
         YCWCAtcZPXP1d9qQ9HhDeZI+sz6M1T4Gk0dtrFn0NfTL67uw02G0dC4pvAQBqBmLoAvV
         58ArJStJoULzGvO3vjlhK8zOMIgb9Q5n1TL/gxa5XIJym9S7QmKTbjAZzWlEwIPo9dP+
         ZvdQZUwz1YyCdZkXsKsyXeLPmWTQD1OBFyp9An90SEODPgkZX5BQZLY2PtGHAaMIM+Qn
         4+6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id b11si154672lji.0.2020.05.05.07.19.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 07:19:31 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MQ5f4-1jj5Pt12Lw-00M5Po; Tue, 05 May 2020 16:19:29 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>,
	Pavel Machek <pavel@ucw.cz>,
	Bryan Wu <bryan.wu@canonical.com>,
	"G.Shark Jeong" <gshark.jeong@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Dan Murphy <dmurphy@ti.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-leds@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] leds: lm355x: avoid enum conversion warning
Date: Tue,  5 May 2020 16:19:17 +0200
Message-Id: <20200505141928.923428-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:8c1rln3Kq+ivHGqkg2GjteXs+tFwdFKG9L+pvtz20Yvkk7lUTum
 M25UzVJbdYcq7ohrTpNLAOZIqHtFWqtgc3b4hHiXfauZKeANowG6k+QyVNQCY+5FK+K78S1
 05XCV16fA34XPdn3Tyb+A98U77hSgYpBI2oZoWVL/Y0jR7y7+ntFJicuzGD1mXJiN+Zb7fu
 Xo5eiu66cDyuihcvKu7iw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:phYNzzBjcXE=:Iave2708yJSgJvBUtn6/KT
 JMWiFu6p/CXzgogeRhk5DQyieZ70JW+4w5IF02TuOpm7BcNZjy4W95XrC4i87emqDQf5G4DOS
 kHJh36T96za4u797haipn31pTZZWD++i3ZuvEHcbqEi/O4Lj1CBgaa9bA+xdpZ2FEsTgLZXgb
 l43uRks07wGNsPminHbnhGKPvhi+ta0Tsqb55S1ga6pcb3UIT7PGbpu6bffJtgkSCwUleF2qv
 SZXEdRvLSFLFjwj4bqgAELaDU9bPdB/By4V4urKx3ZGy1NVpVQJ7+XfLK5E8eVsSPdh00h9MA
 TGbID6OUFHeT50i5Zl9SydaoLIhNx2r6kjldIGrsawjoP9shYpcVOMJOGsoUL+XOQxo822uSW
 vRtG0qcvHWGwGoW2cQ6yYd20HCoVPnY1+31GHg5gfPfBsca6zInZOvAsofXJ2RxvKje3yQW/o
 N17AM1PkvKsBye0G9QkCb105cX1FW2y4MrTXPn30bfW8Ntdbt3BJaBVdLWHjNxrR0myOmWOOR
 8H+kx8Xub90nt8dFDf0lIGdnoE/UPQZs0y3n9fNY0JARdaSPnFwvVQVXsNZgziqZBK8DjgSud
 8YA9NgHvz5RRi/jpdbyy5O0eSPEkaO7AQCHVfKBT4AujsNK7MX87KbPOvRC2Ce+30L7luPj8b
 P/U/5WsaLH09Ao69hgPH33YJ3Dt9TXOhwlPV4UTQrWvOtn8GjYAcmZSGlTXiy3IeDQ3zTOAqV
 rRxPf9XbUeaq5uouAzA60SIvdVc5TuLM3sRpPUMotR0rakXgOFQQL5txcTeX/SxzHtiFZz5gF
 617u+Owhm28e42do5nQ2qaBvYfrX9C5YY64zWFIKF9aan8H5KA=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.10 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

clang points out that doing arithmetic between diffent enums is usually
a mistake:

drivers/leds/leds-lm355x.c:167:28: warning: bitwise operation between different enumeration types ('enum lm355x_tx2' and 'enum lm355x_ntc') [-Wenum-enum-conversion]
                reg_val = pdata->pin_tx2 | pdata->ntc_pin;
                          ~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~
drivers/leds/leds-lm355x.c:178:28: warning: bitwise operation between different enumeration types ('enum lm355x_tx2' and 'enum lm355x_ntc') [-Wenum-enum-conversion]
                reg_val = pdata->pin_tx2 | pdata->ntc_pin | pdata->pass_mode;
                          ~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~

In this driver, it is intentional, so add a cast to hide the false-positive
warning. It appears to be the only instance of this warning at the moment.

Fixes: b98d13c72592 ("leds: Add new LED driver for lm355x chips")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/leds/leds-lm355x.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/leds/leds-lm355x.c b/drivers/leds/leds-lm355x.c
index 11ce05249751..b2eb2e1e9c04 100644
--- a/drivers/leds/leds-lm355x.c
+++ b/drivers/leds/leds-lm355x.c
@@ -164,18 +164,19 @@ static int lm355x_chip_init(struct lm355x_chip_data *chip)
 	/* input and output pins configuration */
 	switch (chip->type) {
 	case CHIP_LM3554:
-		reg_val = pdata->pin_tx2 | pdata->ntc_pin;
+		reg_val = (u32)pdata->pin_tx2 | (u32)pdata->ntc_pin;
 		ret = regmap_update_bits(chip->regmap, 0xE0, 0x28, reg_val);
 		if (ret < 0)
 			goto out;
-		reg_val = pdata->pass_mode;
+		reg_val = (u32)pdata->pass_mode;
 		ret = regmap_update_bits(chip->regmap, 0xA0, 0x04, reg_val);
 		if (ret < 0)
 			goto out;
 		break;
 
 	case CHIP_LM3556:
-		reg_val = pdata->pin_tx2 | pdata->ntc_pin | pdata->pass_mode;
+		reg_val = (u32)pdata->pin_tx2 | (u32)pdata->ntc_pin |
+		          (u32)pdata->pass_mode;
 		ret = regmap_update_bits(chip->regmap, 0x0A, 0xC4, reg_val);
 		if (ret < 0)
 			goto out;
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505141928.923428-1-arnd%40arndb.de.
