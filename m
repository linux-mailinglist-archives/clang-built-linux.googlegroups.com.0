Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNNNVHWAKGQEHZJDCLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 70211BD0E8
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 19:47:35 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id o73sf2019968pfg.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 10:47:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569347254; cv=pass;
        d=google.com; s=arc-20160816;
        b=lyimEPmyT/RW3tdNvdEcn5o9VdmAbs28kMiFXDSqRBa1lovtm46O8gywnL2sg8Zskn
         KYGrrPZYP181JERJEyD92qwjzHWEqf6yFWr3IOm/NRIGdRAuBrsIr7qyZs1lioUToht7
         150hxTIKwDnhKHxTqm9s869gVuS/nsmmloSuubd2kpOfroV5TmRE43PlKE/4LUt+Js7V
         MOqOs5nxgPBENPW8wcj9pQE/ZVgSgBysl62OqI9qaE+QQnfTwzM7ao8uzmaWk0HtceuR
         p+dnVCKJ3aMWpUEM+aEcqRg72EbNdy1vQaMqOpHckVzCLprkcn7nT7b3boaG4s8ASz3O
         rfdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=KX2tF/PdXFjbieMOtAx0VP6p3qKb9i9ITWhbrbtKtFQ=;
        b=HWVW0eYCRecyuujZYsUG/NuKLfZTnxgMXc24vnU6iUcZ6LXG89qA8p+/JBmPBCeQFh
         LUpmHxCPHh3ogj6BtY3espAVURIt6sWK3Dkot2RFUxt3LFt/kmtI5oPXo3oea6CCB8Or
         axAgajAf9faGaGsxhTXZNtB85u6CL6Ic57yut2zV6tb1CTpTWSvIYrtYXh3/DpjKJXWV
         ygxUvFwT6FkbHcIX7p/3FdFpgoZxG/B/FtfehRFKM1Ootmvc55JHxj6oEqOeR3wj1ggJ
         yM+b0W731nOJu7ehdz8MvZA6jzZeCzOPP5ymfPhAFP4ASmXkP/oT5b5XCaDXhU2roMOl
         EsUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=seXQRnG4;
       spf=pass (google.com: domain of 3tfakxqwkah0oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3tFaKXQwKAH0oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=KX2tF/PdXFjbieMOtAx0VP6p3qKb9i9ITWhbrbtKtFQ=;
        b=pKmXde/99j9xvMJ/YMBdPsQ/ZPeB4VPzpAPtWCkalumEGpcTrgWFEHnc8masr7TPZr
         +0IBVM0whT7Hjq9simUnjHf0Yv139TOsANLJE/DST12B8TateaI7b52yZ/4bQ8jXPbsA
         vU1cbkiQ8/ni9+g37+jRlUmIdfnGGr/5T1JQf0rqK+T7euePOqzKwXcgb7mqXTRdOf2+
         xjwqFRXgyMKS2eE2JoM/OeqcdVRdC5YhI3ZPhLV0EMra9tHWXI4OqOZFqq+Xg7CVRZx+
         nGaizSvb/x13RbcXB4gMctqa8KTdrypsD37A0YXUGyd5/5yvVJj7p03F+4EbHHjnurjm
         UhPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KX2tF/PdXFjbieMOtAx0VP6p3qKb9i9ITWhbrbtKtFQ=;
        b=gssdcZzGfQnMLKUddp1zBW0tdgkRpUc2J/6SaxwuW5aHGNzIMYhCPoHY+32kv8kKBC
         yooqzj49j5fjugc3kB15c1WVBNq+735g7ipEKY/rcNwL2+GOJN0LicRbTwt/G8zYe4Eg
         0SNfjdsDhUr3j25mgtzDQSFAXzU/9b7wtqxqFJ3veqAmWOBHx4vZxANANxcha5JyGCqp
         mExRND4hmsfFlwR4uI9NyNFDl3g3k3IiHSMa4qpYGmspB1ct8Da8VjsirtnFRbETJKvQ
         AQILc6eQcIQM3OAJYx0Z4ALWAoHJsTYhvR8OjNOEgG3nLUsG9MCnWhoIa0nRT4FKjsRA
         Z8hQ==
X-Gm-Message-State: APjAAAV3S4p/b8TihKD7cCHlLO1COF7NHypQe7PUZ89MKRCAxU2IlFtU
	OLMfigE8rBUyI1/C9GH2HOw=
X-Google-Smtp-Source: APXvYqzA+f4qNn1Rh+DWEtVolopUrVKljYMQwbPVDfG0FCKxhuN2RQtIWBZciDocjBWA0+nduq0ikQ==
X-Received: by 2002:a63:7153:: with SMTP id b19mr4250566pgn.10.1569347254014;
        Tue, 24 Sep 2019 10:47:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:5844:: with SMTP id m65ls758317pfb.11.gmail; Tue, 24 Sep
 2019 10:47:33 -0700 (PDT)
X-Received: by 2002:a62:f244:: with SMTP id y4mr4868347pfl.2.1569347253602;
        Tue, 24 Sep 2019 10:47:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569347253; cv=none;
        d=google.com; s=arc-20160816;
        b=uDFTYDTjNYv3F3BTd1He4KsjuIT6rDbi4gxogWELHAqkEbn9UHMW6t7ltbcYS9mleK
         qZo9xBoR3oVHuvemHnSttFl5XhI0MOWv/DFPi7JiGehUDOX8dlVTocBuLC82VLgf63XL
         jIIZHNOTfDkb6cL4swEIaQBWqG72ZPv7DenC8WwuoW7hqnHKaPp9qlUkV1Mz2T7AsV6p
         IN426XY1IFJQ0DGYm+/eIL+kmjy1iSfZ7jnSHwJnCXfLMB7+NNY2gKxmvEpvJTF0LNhF
         2fo/amXlPie66GR+MoA/GBGDWiUWL44btMjZMTIejbM+grep0WDHLbRitOUAXfVGNpJo
         rIaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:from:subject:references
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=DBG/wFyung5W8UWO8gFujad4LCgDfce9k3vKq6AZOHc=;
        b=u3RQIIrrQxKYdzE2gugoUYDrIfQlPVK4x2iQv4GCbqV1r+DxukAHIoVG6ofRgtlvoc
         5K47HRUCYJXnc9vjGSO87FL6JF54Axy5/USflw5oEKrEwQe1XSPYH3p54tnQWi6oCqB0
         B34RlsHbN/o5kUaN8RETR2dkhwIhp1uzRhH691xd741n/D0ob/jNhZn/7cpLqUOtlpTi
         f5lTd1nUa4U9Dc/lwB8m0+ShOIJNUiBslAMlY8AS+xQZY/sShcYI9RmaO0cyKNLkwQNA
         BtgeHzeQ+7GgNK4ZQYUPjLMIEN1H5VwTPugE7BUcMfodPvz+WvjRzJ3SJUDUiAHl2FqC
         kaag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=seXQRnG4;
       spf=pass (google.com: domain of 3tfakxqwkah0oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3tFaKXQwKAH0oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id z22si176001pju.2.2019.09.24.10.47.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2019 10:47:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3tfakxqwkah0oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id h10so2842229qtq.11
        for <clang-built-linux@googlegroups.com>; Tue, 24 Sep 2019 10:47:33 -0700 (PDT)
X-Received: by 2002:ae9:f404:: with SMTP id y4mr3717758qkl.225.1569347252597;
 Tue, 24 Sep 2019 10:47:32 -0700 (PDT)
Date: Tue, 24 Sep 2019 10:47:28 -0700
In-Reply-To: <CAKwvOd=GVdHhsdHOMpuhEKkWMssW37keqX5c59+6fiEgLs+Q1g@mail.gmail.com>
Message-Id: <20190924174728.201464-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAKwvOd=GVdHhsdHOMpuhEKkWMssW37keqX5c59+6fiEgLs+Q1g@mail.gmail.com>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH v2] hwmon: (applesmc) fix UB and udelay overflow
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
 header.i=@google.com header.s=20161025 header.b=seXQRnG4;       spf=pass
 (google.com: domain of 3tfakxqwkah0oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3tFaKXQwKAH0oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
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
Changes V1 -> V2:
* The first loop in send_byte() needs to break out on the same condition
  now. Technically, the loop condition could even be removed. The diff
  looks funny because of the duplicated logic between existing and newly
  added for loops.

 drivers/hwmon/applesmc.c | 35 +++++++++++++++++++++++++++++++----
 1 file changed, 31 insertions(+), 4 deletions(-)

diff --git a/drivers/hwmon/applesmc.c b/drivers/hwmon/applesmc.c
index 183ff3d25129..c76adb504dff 100644
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
@@ -190,6 +200,23 @@ static int send_byte(u8 cmd, u16 port)
 		if (status & 0x04)
 			return 0;
 		/* timeout: give up */
+		if (us << 1 =3D=3D APPLESMC_UDELAY_MAX)
+			break;
+		/* busy: long wait and resend */
+		udelay(APPLESMC_RETRY_WAIT);
+		outb(cmd, port);
+	}
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
 		if (us << 1 =3D=3D APPLESMC_MAX_WAIT)
 			break;
 		/* busy: long wait and resend */
--=20
2.23.0.351.gc4317032e6-goog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190924174728.201464-1-ndesaulniers%40google.com.
