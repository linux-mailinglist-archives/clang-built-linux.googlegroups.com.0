Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBDHBXH3AKGQEVP32ERQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id D36841E447A
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 15:52:12 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id w27sf3799241lfq.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 06:52:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590587532; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZRz6R9la/WQizL8V+6yk1gFDXh6BT0yydOncsRIgOqTlC5tjBYfS+Tdn4wi15fXIba
         +XCdXUBPSCzesIvKKZGzfwrpk++s/HMcluWo7KpJOmYNlzff9JiqKgPjxLVAiZcsi0pY
         gNBwnLhxwu9KlAYX3pXQprCQgmABGuHvkZG1Kz5TO4Y63OqiQo3cI8WxNgsxiNaErYP0
         EmttG7KW9XBaFxGZSpjDigUPyF/1wN4ue5zeDgeFsqqj/3hHW7OLLbCsyE6fdFKR4kya
         5DlzLtGSvOeW9JlKiuyM9Jd1JNqHV8v6WFXoTtCZYXl5GLB0N6bpyQzYsLpsWVM2RXeq
         aGVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Vd/xtfqvIucH8sqNNLnwPZE7zmfwR0NnGKHHriXj4wc=;
        b=JdZpLRjWV2up9OUqTaBsp/JK45wFFtFbsk1bU1SvyTjseei4ye2RBF/rHBiSP5zdMm
         DvaejFbjOVTN76yPlOBHaBaLXcBJPLJpOx8hSdGk4MalsLpIv5JARcbUt3oWzqlWc3wL
         HuQwLjto8WEpZIBgNvVYahUeCXA/cLr2x16RdWYVE3Z8JyU0N8GVvodX54giuCDlx3Mq
         juJULjelArE7Q6l1lFF61zC/1uJadRvprZtPVIcPUSjOyW+S8ado2JDxii57Y/5zvtQV
         JapgdP6jMMJPP3+OyShG01wBt0tBpPjI4k7UnoSwlgptYe04LKu0lX3odHumErqEqjm/
         +Peg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vd/xtfqvIucH8sqNNLnwPZE7zmfwR0NnGKHHriXj4wc=;
        b=FE5VvW31QYm2uU+7RzEaXpSUjTYdD8faIFc0CIZkaBepFC7lIHGCAsIlDsCo/7BxJ8
         jihOOdj/fvizdkAMQ63MXQ3bZ+Z8bWFX9hdaVpFBe897pdcicsbCv6LBI3fZGX8Aaokx
         z0SDRJ/cuS5oopGK40DvJmx6gruIxXLt1AbJ95Go0XlwBgaGvDoHc0Z1peJO8O7NDUrL
         OYVQowwQvTH7Wjjjf7bqKqYKguY3/8DYar8B6Vgy5AFiZl8MakRLdUju7Xc8JIs0FS7h
         kAVC7q3U9CZpHnfn+kgNMmXTZjWYd+EggNOpcHLT2lRjtUYeRm9fX3ghwxGrx7e6YopH
         Lpfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Vd/xtfqvIucH8sqNNLnwPZE7zmfwR0NnGKHHriXj4wc=;
        b=FJhmvTfrbx/zGoa5PT4WOrZ8dBq4YYPF1V06TzOd1Sxirjgr2FyrBgVf4Cyr4ReY5u
         RRwOazpgUN4qI6wICTE5S1ES9sQ7/cuddcL0aqowjY6+AEQAUB76ww3FWTkdADQyntzX
         3G9scNU0X3kufubkTVhIoXfm0Rmji9bskVFZrSrbOUsO5OO0Kcqk8B25KeEF3GL6/ru3
         9IiOyefI1h9YxHwcudB0NJ+fdOTqott+Q5PvFgTjffomQckX/CQUu9p4G9LmEJZU9mpz
         n4QbrnuSjrNqEBkS3g2HtgkSptqZWNWBznmprXiV94QEVa1nS7gUk/8h0B6c0WOBLmNK
         TtcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TtoU4qrIra+15w8akTtgexLwBbO59niSWW6oZmTE7rEmXkuHt
	QkMWlyYvlGt68y3Ei2jAjHs=
X-Google-Smtp-Source: ABdhPJxDmyOIU80nbE1s5QHeSFifsUm6IX7pt271fPbm8H7chXcCJ/bfD9elcjgjylf4IQJpEcbBbw==
X-Received: by 2002:a05:651c:48f:: with SMTP id s15mr3300019ljc.465.1590587532401;
        Wed, 27 May 2020 06:52:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1121:: with SMTP id e1ls2912101ljo.2.gmail; Wed, 27
 May 2020 06:52:11 -0700 (PDT)
X-Received: by 2002:a2e:9b8d:: with SMTP id z13mr3038371lji.35.1590587531871;
        Wed, 27 May 2020 06:52:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590587531; cv=none;
        d=google.com; s=arc-20160816;
        b=ku7hr0uoc5+rWGaGCregWrE5w6AemfrXY60tspNT2WG/UzJO4bkQDxNqGYcXwZzY6g
         ZCm9pVUFKxkUfWYwpBzcYdUEGZ1ZoBGaanafeBLKjClkHuFXrj362S98x8F18fgU0TOR
         bLsJcARxUBLi+fw1VvLxO0cdeMi4quw1v1LT/+fx34THoVAa/r0wmRFQYsWPb1OMiXea
         DQ1jpHFTQh0r/TBZK6OAxigBjE5qCdP+Mj1y7T3UX6H6Bdbzz8M2cjRiNzz84nGbcgJ0
         f2a+U+R7m5y7P2JRA9NRgkeumW3LFpQk3hjeM0+A7qRNss+7/Pj5324NGODip5IIFIvB
         Q0Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=HBWLqXvQHSGfK57vylpmrnJznYSpUXM1WI30EFnbE+U=;
        b=gx3QwyzWVJNoatuonmuH+eGs+XBb6nIZ5lDcfWdcpScBdj5oEl4IddZjAOmn8r5G9F
         ewMRnbFXU74TEcttF07Qy1XhBtwmJi2bBg+ZmBQnos1Pvu87F892dhE9EAPsfjVS8i0w
         uE93/XkhxLB3bZt3Y4zhvZT2Amlk5t2v/NdnXk+j0Smlsm1VGLaAnBZmmi4AkBKJm06F
         63F0Pdqfbq4vDAlYw9qzmOyqLp12622cSq/kpDUJLU0hA5NlDB3RxOXCAB0/PxMEViBG
         tAqE4ACNrMtsLwROBirh2vpnB0OuAQ9BiJE44CFuYNWOERICvbIyHUDPmqFPqeJzL7Qu
         z8aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.133])
        by gmr-mx.google.com with ESMTPS id c144si134788lfg.5.2020.05.27.06.52.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 06:52:11 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.133;
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MMoXE-1jLBAj349U-00Ik9A; Wed, 27 May 2020 15:52:09 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Henrik Rydberg <rydberg@bitmath.org>,
	Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Richard Fontana <rfontana@redhat.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] hwmon: applesmc: avoid overlong udelay()
Date: Wed, 27 May 2020 15:51:57 +0200
Message-Id: <20200527135207.1118624-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:2aeiuLmb1dLgi7CFDVrF6BpL6xMbUnnyYn6LzeFFcrLYkjJvi4Q
 zhD/aywWrEhjJlMHVsHJ9H7RZOXfvz03y1zixMWfLDaXmhdSdKAvA4vYOKPIR62dhsnjkRy
 PQrRhFB59J5Und0uBufrL1DUUZzgFupAr/+RKvLvmrr1sx8KERP0XOu019Q/Z/YD4ZqDQrj
 tJDlSk7aHf8ZJFFvcIIqg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hEZH9Fbdx2c=:+3IXxtfC8iBrYIC5IMAbAL
 IfcqYO18TfCSdLwMOX5M4EoxfNKL38Q6LZ+VQ53ouFfTaNeoEbPXjj/cn4MnhhiCHJHBiefGD
 LrXWuSY7swE7VrFupA9C1T1qEwe5+4T9+XZ12s9YlyLdMZd1pq9sv+stsjNfdQIdr2VQgGS0z
 11gSNAA6zFDw51Imzg3t0+3O5iyS7sKZ1B/hZYJEmEcj5JL1lRrkQxFPezYLZN4zJwyZm6VAp
 wxsPeAObWQBmQofDe4yc0NjWlFNMbcPlw2/TLUN1v5XdgYzehEizJvEcIiJdvSwI8vcPt5hGB
 j3ASbQXrw1tQOopjyEMkZZRYjYubdG4ZUmMKMYlf2Rf59pqiNpnGMU0MaGHk5dgn6RM8+WvoY
 sl4e61i95h64RUMy9r33AscEvfhujA/w3eiuTSs/NLgkgwapB6Qpwfyjc9fKkDFj3Kuy5adKN
 /pMQjL9FryH5lPG6WrBPOwPQI/1gXZOmZPDbTIKZOL5eesEI0YqcMjP+PakK1xuwZguobzW+6
 7RFxuP/50rrZTRuvmO8BporZEkrXmOxX00UB7uNindyP8QeLer70ZmxsQlGAYDt3GgULswENs
 DSx6ZdyVZN8jnUeMR/QdkVL1gU8bHXpF2Ayqzeq7GP1+vnkc6EFyR2K8gv6+VBmWkgEJXPYlQ
 ZpaQKHDjPsO+laLtGlBXUYP6qVE15MozwBFTDFo3IZ8sY9wApFqL4u1F/Gad8Sp0I+lRg/2nS
 ZOuCBjo0tUFJ5A0mL/1NCUht0H09dxg+KMPuKIwXX0cXMVDbW2MGYupu3+lHMpTbTwTJ79GWZ
 4QcDUy7nZTynb+OYFvXnRovk4F0CQk/rH80IU19F7qcd4chv5s=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.133 is neither permitted nor denied by best guess
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

Building this driver with "clang -O3" produces a link error
after the compiler partially unrolls the loop and 256ms
becomes a compile-time constant that triggers the check
in udelay():

ld.lld: error: undefined symbol: __bad_udelay
>>> referenced by applesmc.c
>>>               hwmon/applesmc.o:(read_smc) in archive drivers/built-in.a

I can see no reason against using a sleeping function here,
as no part of the driver runs in atomic context, so instead use
usleep_range() with a wide range and use jiffies for the
end condition.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/hwmon/applesmc.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/hwmon/applesmc.c b/drivers/hwmon/applesmc.c
index ec93b8d673f5..316618409315 100644
--- a/drivers/hwmon/applesmc.c
+++ b/drivers/hwmon/applesmc.c
@@ -156,14 +156,19 @@ static struct workqueue_struct *applesmc_led_wq;
  */
 static int wait_read(void)
 {
+	unsigned long end = jiffies + (APPLESMC_MAX_WAIT * HZ) / USEC_PER_SEC;
 	u8 status;
 	int us;
+
 	for (us = APPLESMC_MIN_WAIT; us < APPLESMC_MAX_WAIT; us <<= 1) {
-		udelay(us);
+		usleep_range(us, us * 16);
 		status = inb(APPLESMC_CMD_PORT);
 		/* read: wait for smc to settle */
 		if (status & 0x01)
 			return 0;
+		/* timeout: give up */
+		if (time_after(jiffies, end))
+			break;
 	}
 
 	pr_warn("wait_read() fail: 0x%02x\n", status);
@@ -178,10 +183,11 @@ static int send_byte(u8 cmd, u16 port)
 {
 	u8 status;
 	int us;
+	unsigned long end = jiffies + (APPLESMC_MAX_WAIT * HZ) / USEC_PER_SEC;
 
 	outb(cmd, port);
 	for (us = APPLESMC_MIN_WAIT; us < APPLESMC_MAX_WAIT; us <<= 1) {
-		udelay(us);
+		usleep_range(us, us * 16);
 		status = inb(APPLESMC_CMD_PORT);
 		/* write: wait for smc to settle */
 		if (status & 0x02)
@@ -190,7 +196,7 @@ static int send_byte(u8 cmd, u16 port)
 		if (status & 0x04)
 			return 0;
 		/* timeout: give up */
-		if (us << 1 == APPLESMC_MAX_WAIT)
+		if (time_after(jiffies, end))
 			break;
 		/* busy: long wait and resend */
 		udelay(APPLESMC_RETRY_WAIT);
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527135207.1118624-1-arnd%40arndb.de.
