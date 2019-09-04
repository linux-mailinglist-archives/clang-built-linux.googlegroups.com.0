Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBK57X7VQKGQEDLKFGYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DEFA8649
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 18:00:44 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id z24sf4239553lfb.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 09:00:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567612843; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sspdy/1EjD9c/mnbp2ZmGnZzfHbWxe62lQ/FnlbUr2ZRlTqt8mv2RCFO7n3Epa58EU
         /KfpBnWsmbvS01l9U1y87uFL8lrUs+EQOjvJLZkx2VGtogNvDRSIY2moCUYtihbZFG6Z
         8azAOHd+nbX9fiE3v6pwES/WG+qDbutO90BtPtRDZv/9Wd2+1sG2GyaYIVKduofJ3fsX
         zI6nXsEfJs1ZyofWZkeM+XlUIVzsnwN8O7f2qXYzxTuSmq87IllQANFWC6VfwEJnolv8
         xcMGD9ZJCsvdMfZka8tRpqPAiEIWen2qe2dlQW2Fv5a30b9qby0TU/BhjeCKOhHsXULx
         BtoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=ihobSwmrBGnW9fH7CBbAI0OLOA9E7TX6LxhJZbHXGh4=;
        b=zlnuYtjO03YLDr/1jhcKge9RBM9XZYKba3m8S3L1tJzQgx/SWOcD1d+smFa1S/MUkW
         UdomgWtv9Ff0tfRUsCKCA+q/2hTtKEA3bOWiIhkdspNlDEKXaaAGTckqmeA5zWcdjRC4
         6YUVSfTQTroz/87yxqogwKmZN7JAKBxJ4FGJYlFshRNrkB5B2Px79oDZl5/kZ/pYk/vT
         tRqx6APs8XdBdalKm4V8LFDdY/uw/H3du7ulwm0iFNaA+jsyf73VmDI+cC1NbXLszuKB
         Vv9SzHeK2VQ1GZ79mFZwweSzT9wxBz6+0vO6DnhxfZariP7SS9Cw6HpB7MFqUp/seozW
         HpUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ihobSwmrBGnW9fH7CBbAI0OLOA9E7TX6LxhJZbHXGh4=;
        b=mNva8R4973YGlQcygWMiiqkrHzAnx+Lp9nsVp8iF+zoq8Alnb48gsAzHtCeyFCWMH1
         /gucHGBfHEyNwk4I3gI+iC3nmRIBcsuad/hbpDILW8d0yC0lPMIBqb2GppYSiwNWuCQW
         WTSFniA4v7ZT/YumNNylvbeGaPMnIFUIoec+RCYE54PPgmvF7BYgYlx8isNXSJdEcfeH
         OQ67h5D4V37HrEdJkj/jTdIHEKQfWROJfTDzX5ZtsV2wOCaZ99hv0o4omlaUW6bTj+E/
         UrCgYmROTBPly6Y5iVlL42aGdggyq6A4tCOO7c/nl7UZTCom+tQs15yCuSVM7QmtZJhU
         5+JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ihobSwmrBGnW9fH7CBbAI0OLOA9E7TX6LxhJZbHXGh4=;
        b=LAslqXmKT3jD8fmqGYM/qxnzFytSnVtweBlp9OUCLuvmmqCrr6TV2vqT7h7EtNyMP5
         5ikP0J1LYjI0IZ3ug83eKirdshDnSx+Vp+ktNC2LyoxdO3UiTaTYoAsTuga5P94u3KPT
         07FTyFdlUWunTWF8lurQr3NR6EMw5TsF05mkbkGZOHS35ZeQYxwxMCsc4nK5k91Dqtny
         AVxenerknEC6bl7sm8zaRlsIaAbKWwochaH8DR6ipV07fAjciNIS52vIt52CddN/jhuO
         T5BFjMkxSNXqY8kGA1O+VpMewDbD9mPyxapE6cdu75hVCiR5oBztDN1u0HBfwGbIbxg6
         sKUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAURnbCzs+xxbWWv8nVFZb00stOtZNJVF60PED0CS3H6LNU8tB4p
	r/NfjTSf7GVX3XoEEjiRcGM=
X-Google-Smtp-Source: APXvYqzH6yl9Ub0p9YrK6dRrrNNAkhJ6v24UbEoQGQVRKCo4XAmQiUzyxHpeX99GTXTtAe9wZq+f8w==
X-Received: by 2002:ac2:53b3:: with SMTP id j19mr6134614lfh.182.1567612843634;
        Wed, 04 Sep 2019 09:00:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:1285:: with SMTP id 5ls1494415ljs.11.gmail; Wed, 04 Sep
 2019 09:00:43 -0700 (PDT)
X-Received: by 2002:a2e:8694:: with SMTP id l20mr5510409lji.68.1567612843187;
        Wed, 04 Sep 2019 09:00:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567612843; cv=none;
        d=google.com; s=arc-20160816;
        b=inbpvd4WgFseP5uDKYCnxTyPdzU9c6ihaGuRGHw59k7IKnMK8oSrpfgeeLZffVDYBf
         LjNV/35MrRq04xFIhSiszc/01bbxBROtMarBf3GUff2Id5APxOfS3ARhECHbqmKVRYa2
         Rj6x9esOfunfEKeUxh6RW+GQiRH1itHFoJpWembiAmtQsMhc4Hf7DkCfwtF4AaNkd5QQ
         K1ggrYPhqm2x3kkOiAvdW1BSbbhGjyddf95zc/EodVDF5in8GnSV+rnZO7Xg6MnOePUd
         KHzTz49x44Qa7wJOiaivEUAnCSdulqwvwA+8txRLbFAXefE0o80pRYUVlc9FQNKpsX6c
         Nupw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=5X+1N/dgAu5T6iOA8YTVuyeZoI4a3457llrGPW+mk+o=;
        b=ddmTIg6qtRxNJ3pCD3/ng0bWqrd+Yp8p0Vz6sdnxz4v/CzbKxt5cI+fo6561vmdS+J
         NA+bhPR9MBeRDx6dl7sB8QO2LrUaKgcPFIxW3HtLAGjXw9QdxIP6thOJzbbTwbsbW5wK
         uQmSPv5eGuY3FQRxeg6w/6CopTR1G1ZJ5M2MwBav5Tn/17/JXOrBGZGSCEukH6TuOJdb
         L/aVd9dim3zsHKdDbMdeVZKehQGKVUmOLWG1sd+0WujVr6X88RAEuitRvpNqv8HDvztI
         sKb0cx7wzZNCUkC/LvC1UB37ZtYtquZZ3IxhH5ONOIw3vp+vTEIrzXyV1QfMX9eMkzEO
         CY4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id h19si1252344ljj.3.2019.09.04.09.00.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Sep 2019 09:00:43 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MryKp-1iYq7A0YsP-00o0MA; Wed, 04 Sep 2019 18:00:41 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Sven Van Asbroeck <thesven73@gmail.com>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] bus: imx-weim: remove incorrect __init annotations
Date: Wed,  4 Sep 2019 18:00:21 +0200
Message-Id: <20190904160039.3350229-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:edSQpPbQz2i0QyQuA+gpW63iqvRaqDAQVKOzJ3suKf+nyFqMcMI
 RKLBf7wmMBsX3B6VL98jLw9HvRgEXOWqAn0lir9QaQkdbIqWjGOdCwOzCesPsKPDZpAPytU
 Clh0eqK029q8ih2vNOnoAQcxDdYCdoX9GBgduNipzMpBvbnC+VHkNDTahUYu0rgxX8Hic0R
 SlBCpbELBaATcVxUwqyPg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/BMWc4WL1IA=:UQx49a3M/46yAIqufq86VM
 21sdTV7pJuWwJq7AbtHv9HfmlMBrqz8vmUsYWa39y97opPHXoyc1sIXe97gV0XC/kGnKj+Nd1
 Tt/oIBVkzFJ4LMbmMpntZdjy/pJiN1CfmTv1McQjMJdiFfZ2hpuk/6vNEEkVChe8MbHabbQ7V
 t8uH+4XMeyvvUkYoih/aDjRlXcsMwnHuu7boacviY0LDxIcAs7Umgb19jGciq+vemPjpfeOHR
 XbygfneBE2EpgJ2g3HZpqmA9zV1ouaUo4egHuag854s/+a+fxsYtaA5/pROTuEDTW5hq42gZy
 7tU3hYKuirDFCj3hRlcRMavDS7JTPi631dG7krtkUwds1iH9heTV7C6aAoFifpBpPJ9uHVrmT
 jqTp9kjYaUfnLpTbf29yLKXksB7vxKPWYa+YKyBaw7UpZJxpZ1VCbVEZd/xC3/1vI6IZFpnEs
 P4u4Fmj4wBTfC0BTmXuicKjIEZkCUnhgK6Ly6rYQFf2lX8zkoENzntEx9yPbpyDbOB5fnizXv
 oSPM1o30Cv2Cu7bDnicaflr7Etgh6CWuEdmrEsn1C03dRvsIawfFuB3t15y48Sxa8tmHartHF
 66RgCYPZZfNMhFNslVM9pK4Z4UgNHkFujrxCXdY9X2m4XhklZTRwc0CQCo8q6s0LLHH8sL77R
 CzckQD7lBVVuh8YqsM0HwQO+gdwTsYe8B0glWp8SjiGMh5wsjT3lGufB28kVHNOEDnmh+Vg13
 jLbk+CBHS6AgfQmVIClUAseuUJ2m54DCWQ/uBYAkSgE5MqLLPZQmJkr8nsIVdApZj1WHBvv2B
 828SZegT19VN2u1ywaaOouOFK8e+gX21cMHH44rYiESsKjdsCg=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.13 is neither permitted nor denied by best guess
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

The probe function is no longer __init, so anything it calls now
must also be available at runtime, as Kbuild points out when building
with clang-9:

WARNING: vmlinux.o(.text+0x6e7040): Section mismatch in reference from the function weim_probe() to the function .init.text:imx_weim_gpr_setup()
The function weim_probe() references
the function __init imx_weim_gpr_setup().
This is often because weim_probe lacks a __init
annotation or the annotation of imx_weim_gpr_setup is wrong.

WARNING: vmlinux.o(.text+0x6e70f0): Section mismatch in reference from the function weim_probe() to the function .init.text:weim_timing_setup()
The function weim_probe() references
the function __init weim_timing_setup().
This is often because weim_probe lacks a __init
annotation or the annotation of weim_timing_setup is wrong.

Remove the remaining __init markings that are now wrong.

Fixes: 4a92f07816ba ("bus: imx-weim: use module_platform_driver()")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
I applied this on top of the patch taht introduced the build error

 drivers/bus/imx-weim.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
index 79af0c27f5a3..28bb65a5613f 100644
--- a/drivers/bus/imx-weim.c
+++ b/drivers/bus/imx-weim.c
@@ -76,7 +76,7 @@ static const struct of_device_id weim_id_table[] = {
 };
 MODULE_DEVICE_TABLE(of, weim_id_table);
 
-static int __init imx_weim_gpr_setup(struct platform_device *pdev)
+static int imx_weim_gpr_setup(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
 	struct property *prop;
@@ -126,10 +126,10 @@ static int __init imx_weim_gpr_setup(struct platform_device *pdev)
 }
 
 /* Parse and set the timing for this device. */
-static int __init weim_timing_setup(struct device *dev,
-				    struct device_node *np, void __iomem *base,
-				    const struct imx_weim_devtype *devtype,
-				    struct cs_timing_state *ts)
+static int weim_timing_setup(struct device *dev,
+			     struct device_node *np, void __iomem *base,
+			     const struct imx_weim_devtype *devtype,
+			     struct cs_timing_state *ts)
 {
 	u32 cs_idx, value[MAX_CS_REGS_COUNT];
 	int i, ret;
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904160039.3350229-1-arnd%40arndb.de.
