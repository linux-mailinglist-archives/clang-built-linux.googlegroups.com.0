Return-Path: <clang-built-linux+bncBD5ID66FXMARB27FS6BQMGQEK5GBJBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id B19EB3516AF
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 18:20:59 +0200 (CEST)
Received: by mail-ej1-x63e.google.com with SMTP id kx22sf2443663ejc.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 09:20:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617294059; cv=pass;
        d=google.com; s=arc-20160816;
        b=02m17XEjOc+Qeyi63/NGP5S5WAavPPNsvEZekHS3cnIE22fcbqkk7TC9Gluxl+XE6+
         0e07GYCJef9IdY9UzGAMJpEW7MzyCgiVXASHjpfDoiaswAK9MswoB+0vsFYorMpI3BIH
         91rAii90TPuYFpoSR59EkNLymNDWAhAGP6iF80hocnDo87XlOVTT50wmHW4a5MwtFb91
         /9umY/TOi5Dbd1pFPgv9idGxkIPTSzgpGNhD3ue77skxBipFjFLiolLc3Ph1OAvtRDKK
         S/GgsvsIcvBRam08UXabG33LO+pOu3a0HSrhgBdxVBEPB61u6Jp9PVqPDqoiBcLKfsJD
         mS9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=SEQvJvJ+ZjBp3/OVPHV+Rv6DjmahblUFHGvX7/EBDlk=;
        b=sqK+gSdJqbe42TTBSrDIeNfH9MWT5AqGnhwz6lrbjiol28W4uuzbMkI6lUuRAncyS1
         Eu/OoDOjwF7u25bWhGBqWl+TpoKUxvaNsvqKj6mUIqYIj9VpiqjE8r3BBOfFDpCc8ewq
         ip5IKEoQnP253tv7+WxIPWkZ5u5+zJbNPLUnzmSVMckTie+QBweTd0J339Ybqv7ukxOI
         p2NvX09y0AzaSghFx7UsIFpuhOYN8zuhp9RGeZszeDveQR8qgO8xZfVAPAkfk6xEAlZp
         LXwjz4OXsRa2qKoo0c4R30qJVyVedVSpL8PgyTIkMuGPHlk4zRsawPIjjvmUc2xm/yeY
         PYCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hw1BPIfi;
       spf=pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SEQvJvJ+ZjBp3/OVPHV+Rv6DjmahblUFHGvX7/EBDlk=;
        b=I0ZquMkLOA72dGkt92xzWikIF62SvfNbIZncEhjocgBfzDd5iYnsx7MI8LcGX578yf
         GuvB+hQ5cXUV+5p/YnATU5/Ozn5LSy8QB3/sWNNO7VLnMQKkQIn9BQBtt8kXG0B4fEET
         QZX/V7hlrhw6zWeQ4vEhQgxUYVRiPkgCIOCMBqQDIsvLdS0VQ+E6zQZ37pl7YKF5TPfW
         YQc4eY2ZEzsWJhp+NctLzFQsv2XixKpOamCRFJ+UmI21B3CncXpssqI7+S7vWx7ziL1X
         PPgU7DAqfq6F8tJMxAZoDVu0dHP+r10dpii2oVnAjfAcqoIBIefNckAO1MVyn68eEjz4
         eifA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SEQvJvJ+ZjBp3/OVPHV+Rv6DjmahblUFHGvX7/EBDlk=;
        b=F9y2fDrBbP8G98ZGWFgPvK+Ve2Ma6R8reWKczMFeDDw0qBQc52RuH3L6twEH35HGfu
         G8nMpCqkEbBA2/2k1PQSDc7GjEa0SnT3gzzdXtUN5Xi+Uy7CjKsMo8CDMp4CmnZJZkHJ
         sfYgTxO8VkOjWyPwcpAQHeG7kLoBelz4ZuV6aH/y6eWV4sCspeeKerybiRwAEsYxBe22
         QlCdamFbyQIbKf+cU40LWLsCFXQkImvKAdczI5cVqpm5qSK7L3ftEhT5LDM/Nw/tn0qG
         5SaGbGGpAM34M+lpEZMkhK6y2PqRi34alsbLxD3JW5ICsIVCj2S8eefixIXp3MJGC7Wj
         L+qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SEQvJvJ+ZjBp3/OVPHV+Rv6DjmahblUFHGvX7/EBDlk=;
        b=oW5u2XZpHjyQ2gd7WDldDDOLx94W4I1SE1Y1TqoQwDf5bsb7+ZReDFGkG1Kss10L7g
         LY8Zdm5HkAgCO2Yrs/Z/JbdpDHjlYOu2Q6MiwE4bh+Mh2BYxggKAVLB5YVxEtFA2Z+7Z
         UUVc73kq58ssUTmgTXYOPdjkGd9vtbOnKV2ftsSt/8XOhmOZZ+KrKP08Pl9X30nobItk
         UgFBcGiI1C/WWCo26pm+z27N+vP2tfCjTaxo+I0JB5lxd7fk0B0DR9OHA2cC/wFibW+x
         96DINc+hqdUHb6sDnpkOfcAnWfXlStisCheOCdEKEiFeB2Jf0NlGxrmjuwqQZZ+bgQoy
         c6dg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZYtx0O8wtJHOhNMHVsXSZ4VDR2pCFi2VYVbXNFTvgvGuBgzBs
	s0dcezKZkFe5QHb5GnFnVr4=
X-Google-Smtp-Source: ABdhPJwB7WWL3xGpGBPtTH5nubVkljNiw+HaS7VqJHW/dMC/ruiEmlf2pQB9FkL2qCD8CqpOOqJZ4A==
X-Received: by 2002:a05:6402:51cd:: with SMTP id r13mr10884421edd.116.1617294059465;
        Thu, 01 Apr 2021 09:20:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d788:: with SMTP id s8ls459193edq.1.gmail; Thu, 01 Apr
 2021 09:20:58 -0700 (PDT)
X-Received: by 2002:aa7:c4cc:: with SMTP id p12mr10481901edr.325.1617294058533;
        Thu, 01 Apr 2021 09:20:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617294058; cv=none;
        d=google.com; s=arc-20160816;
        b=xclm3u4ZxADndMjXCEaaWQOT8Oe2SsDEeOrHyGNeq6ieVFZDWj7JEnL1QMxitqWtU0
         5YG6EAO78fyAc4jOeLqNt37gH4ajMMdjisnLi8flfY8MPTH5Fdxr/UW+mcgMG8Mxrxnl
         l7BMkcwNjAVfzWMkQuBeHTV6htDauQ6cOTBf2esAIUHbVSNGxlMy/bFbVWiZZvw2ysnA
         mBe3Obt5nYblmAGGYs+y0BhmSq7O6Dtd39iiUveat4LelTB+zxHbsAVVL4EqVwMm5bJD
         mBnf4M+jsp+nFz7ko5uQPVeI5n9caqWWWHR9MUoj57zhu3aw7P+5sfrz1TUOzSuQsrdx
         KPYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=TsIThPytQbw/FRN51LQr5onPfH3wKs5FFxL6HpmuigI=;
        b=UHQpEKzTYvTlW0Sibie568I+ksGGdVcddFKrk+sGTCzMXVYTmz+lTMNTTB5d8W8m54
         pnEPm5dR0TyI+lprlMj1splStm4waBheAVyByVILvRwRc/qk3hNteyHCThO/JAohTMiV
         xBzZy2fDZO68HFS0VwcBiXozraPLlfX61ualSH+4txGQGTDVI3RM/CFQDtBDDWw8buxs
         tff2Q0kVhEC8D4PcH70zwQp3ZOue7jOR4RtPUuHu8bgSb2tXvCctO+IsXkzPQyhRCGAB
         u+WnIRUXiScb4RgL3VDDusyMDI+OyoMzifYhb71aVUafN1F+LUxJnm8vSBAdILz2Zk9G
         XCsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hw1BPIfi;
       spf=pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id ck26si654647edb.1.2021.04.01.09.20.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 09:20:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id o126so3745772lfa.0
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 09:20:58 -0700 (PDT)
X-Received: by 2002:a05:6512:4c4:: with SMTP id w4mr6080047lfq.91.1617294058343;
        Thu, 01 Apr 2021 09:20:58 -0700 (PDT)
Received: from 192.168.1.8 ([212.59.242.58])
        by smtp.gmail.com with ESMTPSA id n22sm660215ljc.23.2021.04.01.09.20.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 09:20:57 -0700 (PDT)
From: Maciej Falkowski <maciej.falkowski9@gmail.com>
To: aaro.koskinen@iki.fi,
	tony@atomide.com,
	linux@armlinux.org.uk
Cc: linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	maciej.falkowski9@gmail.com
Subject: [PATCH] usb: isp1301-omap: Add missing gpiod_add_lookup_table function
Date: Thu,  1 Apr 2021 18:20:32 +0200
Message-Id: <20210401162032.10150-1-maciej.falkowski9@gmail.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
X-Original-Sender: maciej.falkowski9@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Hw1BPIfi;       spf=pass
 (google.com: domain of maciej.falkowski9@gmail.com designates
 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

The gpiod table was added without any usage making it unused
as reported by Clang compilation from omap1_defconfig on linux-next:

arch/arm/mach-omap1/board-h2.c:347:34: warning: unused variable 'isp1301_gpiod_table' [-Wunused-variable]
static struct gpiod_lookup_table isp1301_gpiod_table = {
                                 ^
1 warning generated.

The patch adds the missing gpiod_add_lookup_table() function.

Signed-off-by: Maciej Falkowski <maciej.falkowski9@gmail.com>
Fixes: f3ef38160e3d ("usb: isp1301-omap: Convert to use GPIO descriptors")
Link: https://github.com/ClangBuiltLinux/linux/issues/1325
---
 arch/arm/mach-omap1/board-h2.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap1/board-h2.c b/arch/arm/mach-omap1/board-h2.c
index c40cf5ef8607..977b0b744c22 100644
--- a/arch/arm/mach-omap1/board-h2.c
+++ b/arch/arm/mach-omap1/board-h2.c
@@ -320,7 +320,7 @@ static int tps_setup(struct i2c_client *client, void *context)
 {
 	if (!IS_BUILTIN(CONFIG_TPS65010))
 		return -ENOSYS;
-	
+
 	tps65010_config_vregs1(TPS_LDO2_ENABLE | TPS_VLDO2_3_0V |
 				TPS_LDO1_ENABLE | TPS_VLDO1_3_0V);
 
@@ -394,6 +394,8 @@ static void __init h2_init(void)
 	BUG_ON(gpio_request(H2_NAND_RB_GPIO_PIN, "NAND ready") < 0);
 	gpio_direction_input(H2_NAND_RB_GPIO_PIN);
 
+	gpiod_add_lookup_table(&isp1301_gpiod_table);
+
 	omap_cfg_reg(L3_1610_FLASH_CS2B_OE);
 	omap_cfg_reg(M8_1610_FLASH_CS2B_WE);
 
-- 
2.26.3

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401162032.10150-1-maciej.falkowski9%40gmail.com.
