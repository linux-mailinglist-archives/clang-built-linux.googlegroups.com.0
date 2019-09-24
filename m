Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWVIVHWAKGQE4ZONRJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B681BD0C3
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 19:37:31 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id p17sf654663uam.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 10:37:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569346650; cv=pass;
        d=google.com; s=arc-20160816;
        b=gbP6VAxzzY6CTgm5fu6dRdhhpg652f3oTnsEfA2duqzWQqN2qEV3KoX/31Wlm2cXJn
         3rmRMvu6PxulrMURGrOYMMzwkY2/pQF8HJIk2Z3vMqodNrh8fQWFfcLauUtGoL+A59uB
         qghyhSPp3f5O8UrfRoOEIhLWgQkNOyUNrNA6G3R9SUEdKyDqjLdVG0Oc0GGPaFekf3IS
         Ei7L+1EEemxMdDdLXnex73ivC0EGDGvJ1u2Gp1ldveYh66MUSG7a8guTOceyRkM+zrSm
         rLjpvdndFiFCMViOg6xVs8ycGfgzBKE9NO+yPeSaSLeB5H8GoOKUk0Hq6OpSeAGVBzc3
         0XUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=SUjMPFzEBt3+zW6794v5ii09/sER2rj9uS/F1/rBcsE=;
        b=t/dA7Y2mLAdiCMqgYyPQjIwg7EdWzzvJokhLHMFyDDvkJ+e2HeIJ8BM5/KcsLjEzRx
         hy4K+Rekwg7hwnZ6vQqQ6+EaFhvsyOX29Otq+SL/e/hC4wfNYdzyzTGVwU3w/kCp/eda
         VqwjuPJsj+pa/8xC/N4UJb+3GCruaoyzD0hnbOCjNgWcGqKOf1ZW9Brvh4enoRvQ7VGV
         zu4ojxlUioTZVw3zYMO/f1KzQT5XBE8oyY2hpXNnW9sMmnKI3jMo9nN9xNCRa1eLarAX
         dc3DaizttYOth5WbxEO6iamRVpUALamO75QTBaRYBuI/p/EAWU9j+fDnDHH88gdsDu/I
         KN2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GrQ96GoV;
       spf=pass (google.com: domain of 3wvskxqwkab4h78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3WVSKXQwKAB4H78M4OFHC8LMAIIAF8.6IG@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=SUjMPFzEBt3+zW6794v5ii09/sER2rj9uS/F1/rBcsE=;
        b=IRdcc+vFANfw5enMIHXkOQkq2LPiLmypNOcc4xZglr+0nd1Vh9Px4ue/ewNDNeElcp
         p2p7qFZnS4GvtK7zG0NCcBpZGeCjoneWiUFnS2MJougIRt5CiipAt1H7Mj+RgWru+OJR
         EsfTXw1UWcll6b11JPbAbOE9zBHwbPhCrv+E5BL2J/C2kzwbfg5cKBo0qBz7qGGEPCjo
         6SKIRJI/nGhjoOrMtCnCFIZThxjyLpTRrmFZqNyjviouuWL5yurrtjPjFNmHxLmPYNsP
         1t2CzbO/o8gOH6GHxt05UztFPhcXsQf9dyLQj78019PzxsCyOIQodCDaAkXAYMXJw89M
         8ekQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SUjMPFzEBt3+zW6794v5ii09/sER2rj9uS/F1/rBcsE=;
        b=n8lUB+7l4T6eXGA9hPjd48LZSsBn5QL50/KhXcFq4Q0OFVaZIJrKT5ybaq5nRHvNxL
         NcQv4TZ8FOBmOkIr2bm8t8F/XgNMKS2RBKsDBUYOP9eEiYbJ8L8FViJHZiHWTd7xWCxZ
         UXLhVhh6QjQdxtasn6o2RB7W9HQXf3zvPP+BK4pbEa1fHS0R2C9DXyNFk7zbKQZCLhEe
         oWDbS1yHZRoDpSeXyEEtmK0wG+wUB7C8y2sUr1tKf3P+A65/Y5o5+6WAcWtMsxB6y35b
         sPe9aAQsArcMHK4EePrBeW8V6wlZ4N2p8Z2oMmwevPPn+J04Jv+KYo5Mu7oVljxTk1yL
         YUYQ==
X-Gm-Message-State: APjAAAWyne2s3o4vB1NWuPsbADPJB69CClLhuPoFnkqFjUXvD6w3nQV3
	VdjxBT40H6GDSZ/k2J9SrvU=
X-Google-Smtp-Source: APXvYqzKDDLnIxFS8y0EYxSGnuydsT98XqPUSJG8xv+N7N2TPOw/kBSZR4VbSf5zBkTnG9aNLxhEPA==
X-Received: by 2002:ab0:5e50:: with SMTP id a16mr2231975uah.24.1569346650206;
        Tue, 24 Sep 2019 10:37:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:bd51:: with SMTP id n78ls729vkf.10.gmail; Tue, 24 Sep
 2019 10:37:29 -0700 (PDT)
X-Received: by 2002:a1f:91d2:: with SMTP id t201mr17127vkd.3.1569346649857;
        Tue, 24 Sep 2019 10:37:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569346649; cv=none;
        d=google.com; s=arc-20160816;
        b=iuhcgICZqnUR3nwKdPF0MFXuc0bXZEvbN9CA4rZAMPCDP3VOp2xRJQsh+zRnPgvYKL
         tQsKR4iFe7NbXAdMYZRm4Ol0ULwhU1+mP/82qzHb8jsM60P7oNswK4eDEjlMOkSgeubD
         SofN/0ltWWAJGwbkv7BKEd1uSAI1LscWZuKMLQnKhofENjnblDnsIkhTo4gz73l08S0Z
         7ZvMak+2IAmGOvypvGvMk3ydovrGoISkoSsI/lhwyAdx6yERQ710nDHpOLuY8njPneoP
         dFgeaUUOg0aF4RtZ2Iqze0XrhxPZbDLFV027ofDNbF57/FLXIBoUwOUhrNc71gNvrlMS
         nGew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:from:subject:mime-version
         :message-id:date:dkim-signature;
        bh=cqlaQgskXZZonmcDyxSMH60accriyGsyjcSMTQXFDVo=;
        b=KzsDvEkTVicvTYt1BVku0SKRDpJnjp/nt45yBJvFEG29omSFYyMYOYQAcp8Swi8dn8
         VKCa4nkf7wHg+c+dNnMvb67xys17ai3VcsuBl211n3UAv/kpRrE29yvxLKQbMxe1ky0F
         8jEyl0I1w+hfd2qNTqSaBIPWn8cx76kJA9mfHKJV/fKGKBhsu/pl1JGsAiVoG4R9vWGA
         z09S3b4njYbfW1eBA/h/kOAJDLT0MNbF6M4YBfOkjVsZ7lCaaHKorMbHM2vE3ZLZLQaL
         XLGjw4yG1shwQQqCmhxZAJqTL+VHW1UzRJfWcEyW/NufNiCDnctOZ0+IL99zhPZvYZnB
         vRzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GrQ96GoV;
       spf=pass (google.com: domain of 3wvskxqwkab4h78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3WVSKXQwKAB4H78M4OFHC8LMAIIAF8.6IG@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa4a.google.com (mail-vk1-xa4a.google.com. [2607:f8b0:4864:20::a4a])
        by gmr-mx.google.com with ESMTPS id k13si1244vkd.1.2019.09.24.10.37.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2019 10:37:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wvskxqwkab4h78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) client-ip=2607:f8b0:4864:20::a4a;
Received: by mail-vk1-xa4a.google.com with SMTP id n79so724120vkf.22
        for <clang-built-linux@googlegroups.com>; Tue, 24 Sep 2019 10:37:29 -0700 (PDT)
X-Received: by 2002:a1f:3f10:: with SMTP id m16mr11725vka.15.1569346649344;
 Tue, 24 Sep 2019 10:37:29 -0700 (PDT)
Date: Tue, 24 Sep 2019 10:37:17 -0700
Message-Id: <20190924173717.198637-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH] hwmon: (applesmc) fix UB and udelay overflow
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux@roeck-us.net
Cc: clang-built-linux@googlegroups.com, jdelvare@suse.com, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	"=?UTF-8?q?Tomasz=20Pawe=C5=82=20Gajc?=" <tpgxyz@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Henrik Rydberg <rydberg@bitmath.org>, linux-hwmon@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GrQ96GoV;       spf=pass
 (google.com: domain of 3wvskxqwkab4h78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3WVSKXQwKAB4H78M4OFHC8LMAIIAF8.6IG@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Fixes the following 2 issues in the driver:
1. Left shifting a signed integer is undefined behavior. Unsigned
   integral types should be used for bitwise operations.
2. The delay scales from 0x0010 to 0x20000 by powers of 2, but udelay
   will result in a linkage failure when given a constant that's greater
   than 20000 (0x4E20). Agressive loop unrolling can fully unroll the
   loop, resulting in later iterations overflowing the call to udelay.

2 is fixed via splitting the loop in two, iterating the first up to the
point where udelay would overflow, then switching to mdelay, as
suggested in Documentation/timers/timers-howto.rst.

Reported-by: Tomasz Pawe=C5=82 Gajc <tpgxyz@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/678
Debugged-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/hwmon/applesmc.c | 35 +++++++++++++++++++++++++++++++----
 1 file changed, 31 insertions(+), 4 deletions(-)

diff --git a/drivers/hwmon/applesmc.c b/drivers/hwmon/applesmc.c
index 183ff3d25129..2bc12812f52f 100644
--- a/drivers/hwmon/applesmc.c
+++ b/drivers/hwmon/applesmc.c
@@ -46,6 +46,7 @@
 #define APPLESMC_MIN_WAIT	0x0010
 #define APPLESMC_RETRY_WAIT	0x0100
 #define APPLESMC_MAX_WAIT	0x20000
+#define APPLESMC_UDELAY_MAX	20000
=20
 #define APPLESMC_READ_CMD	0x10
 #define APPLESMC_WRITE_CMD	0x11
@@ -157,14 +158,23 @@ static struct workqueue_struct *applesmc_led_wq;
 static int wait_read(void)
 {
 	u8 status;
-	int us;
-	for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_MAX_WAIT; us <<=3D 1) {
+	unsigned int us;
+
+	for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_UDELAY_MAX; us <<=3D 1) {
 		udelay(us);
 		status =3D inb(APPLESMC_CMD_PORT);
 		/* read: wait for smc to settle */
 		if (status & 0x01)
 			return 0;
 	}
+	/* switch to mdelay for longer sleeps */
+	for (; us < APPLESMC_MAX_WAIT; us <<=3D 1) {
+		mdelay(us);
+		status =3D inb(APPLESMC_CMD_PORT);
+		/* read: wait for smc to settle */
+		if (status & 0x01)
+			return 0;
+	}
=20
 	pr_warn("wait_read() fail: 0x%02x\n", status);
 	return -EIO;
@@ -177,10 +187,10 @@ static int wait_read(void)
 static int send_byte(u8 cmd, u16 port)
 {
 	u8 status;
-	int us;
+	unsigned int us;
=20
 	outb(cmd, port);
-	for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_MAX_WAIT; us <<=3D 1) {
+	for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_UDELAY_MAX; us <<=3D 1) {
 		udelay(us);
 		status =3D inb(APPLESMC_CMD_PORT);
 		/* write: wait for smc to settle */
@@ -196,6 +206,23 @@ static int send_byte(u8 cmd, u16 port)
 		udelay(APPLESMC_RETRY_WAIT);
 		outb(cmd, port);
 	}
+	/* switch to mdelay for longer sleeps */
+	for (; us < APPLESMC_MAX_WAIT; us <<=3D 1) {
+		mdelay(us);
+		status =3D inb(APPLESMC_CMD_PORT);
+		/* write: wait for smc to settle */
+		if (status & 0x02)
+			continue;
+		/* ready: cmd accepted, return */
+		if (status & 0x04)
+			return 0;
+		/* timeout: give up */
+		if (us << 1 =3D=3D APPLESMC_MAX_WAIT)
+			break;
+		/* busy: long wait and resend */
+		udelay(APPLESMC_RETRY_WAIT);
+		outb(cmd, port);
+	}
=20
 	pr_warn("send_byte(0x%02x, 0x%04x) fail: 0x%02x\n", cmd, port, status);
 	return -EIO;
--=20
2.23.0.351.gc4317032e6-goog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190924173717.198637-1-ndesaulniers%40google.com.
