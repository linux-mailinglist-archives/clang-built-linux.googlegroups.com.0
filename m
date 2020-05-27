Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB4O5XH3AKGQER5ZN4RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2510E1E4422
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 15:45:22 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id p24sf861325wmc.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 06:45:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590587122; cv=pass;
        d=google.com; s=arc-20160816;
        b=gLOzOAME0vZ4gbRE6O5exSX1HFr3PlMuzup9QzSW2MsfBKIBgGDmai4hJniEMxUpfg
         KASe2HXeb8zw1by2LNoMpQmStXGS5DVxm8HHw8uXUYVbPw7aCIzdKIBVCLe+YgCOs6nG
         ESuI++t/i5wrZU+KCl9ciYXBUQKpjsKA3MGsZ/3rCkJuLtNcgdCF5NvrxJis7sr/Avtf
         CGlMfsvQqtjSGm71/ijEbN6wWQe1FaMBbYE+ZAgUftZ/8K/0Z1prCwpCs+aaULpTF4kK
         prXr0PIiux9zkgv57p2JPlaL04vqwceg+VYwDTI/rT00pbPu/XEuc/fLvmyWkP0UFqmr
         AvaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=RnF2HFWmk0TRSQa9PNLYXDAFC3HYScAO8nLozQfhk8U=;
        b=gGOCozh1JmRGGwriXg/G5sj2fU/Zd418n3eCvhOGgeayaEXrSlKv6YaoqVc6ERrT2q
         8Q3utX0qat2JLT/JRNqThXqvKPG6SIvrnHvTlG3Kk5NYg8vcd4gZhz54fLuDzvmobSqq
         TkhiFhJSHYl4ma706q40MkZ8FfitHoaObaxejOSPA6wfiF5I9o1DcSaRJhVg+BlCqbgF
         SxbItRCxyb8V0PCVQSfy5KPyjTQ4GxOhLWXiLJAGhKr4JCcNRfMdUMmdPH2MF9Sw0JXW
         z6T0/THRuDIBclqlXYjtr/QNRjKyjXASp9FA3lA0tobpfVpGCLzD9jTpeBBuOMzOYJR+
         ZV1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RnF2HFWmk0TRSQa9PNLYXDAFC3HYScAO8nLozQfhk8U=;
        b=BXZhX6eu1tsQv9SSBrppLmdETX1PjWw7ACgvOFt5JUk/Elc0CF8l2Gn4xCbyVXJ9lb
         IL1hInFxmmPIEBYwrsxb4P5ETfygeVXNDSgEyfTOV5lNiDutlIPWmjxdqwlFAQLY5MOO
         8EQ2MNHHweI6iF4ypiTvY+ChvwACP65kNYXSlUonvSGykik2XlHTge8Ouup4DEHkJ28O
         QgIKGF0ArIs86yLBGLcQFfA5mslGas9yqVUpc0BPyrGftnG7Aknnv5+7u9VfK73siVq7
         2RoaIIEqT9qLc2tc5QTBixd060x2Ewy2x9eW1VFaCMQnITBOajiyTgQvnSbK7ieDpNh9
         BZxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RnF2HFWmk0TRSQa9PNLYXDAFC3HYScAO8nLozQfhk8U=;
        b=s8Duu0rIc/UMijP1AzYMSZ0AcVjyQuTiZJv+lg2Rb3wuAVe3CS0LjWAHN+B4442/w/
         FvlzCooWTU5R6TYF/jbZYdk31KcHnZ1d2C1rRL3tqmYLZofCNpDhERLDFzNCPoAT52sf
         rVJzbYBH0m3Eyi0eeV7VGHUYGUsG5dEWp96BjbgUjY6aicHWrmJZyNhnl/rIJKSMyKFv
         5KR/lKlj0eb/8pRBX1bm+L/3EHhZEqzqjFFsY6hUlnEOJmy1na76B38Fj+922/iaBZkh
         NIqwNrfu1lr39kTKdIpoUBHlGq/Qev7qdeF3CmyMChWqNwsugtUsNeiuIy9J3TL+Mgvd
         GS0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/v9hqOFK2AWJJ9X8X/Lri7pwNEdZSb1QLGukFQvEjb7nsK8Rm
	Pl2nmRmtgEftiXr7Le6L1TA=
X-Google-Smtp-Source: ABdhPJz+ROfVB4ihQB+cPteUyzdZsxyf5ZKA0HNy+rmNOUmv8hEf7ENCAdmSxxbyxatoyuaZteKUqg==
X-Received: by 2002:a5d:6884:: with SMTP id h4mr26845068wru.198.1590587121916;
        Wed, 27 May 2020 06:45:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c770:: with SMTP id x16ls1548579wmk.3.gmail; Wed, 27 May
 2020 06:45:21 -0700 (PDT)
X-Received: by 2002:a05:600c:2c53:: with SMTP id r19mr4652827wmg.83.1590587121431;
        Wed, 27 May 2020 06:45:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590587121; cv=none;
        d=google.com; s=arc-20160816;
        b=S9upE452n0h+W5U0VkZYnz+QoWOZvRPV/H40zUCHf3sV7fvT5pvVq5Mo4pxEYeB3h7
         MrUk7IG/XK8aJPAKRiaqgkzh5fXqGZ4RMYBjQFz0Uuz+Sx2zx/ckZuKp+DMZVPLurhIi
         bkMUIUOJa5uQTgvs5GRUZmP7trXyS4x1taAX9e0HYJh+jPR4tXkWh+1K2DoqD6lFxmkN
         0OMgpVrMK+2iE3bBPSvv96v7/1eYAxLGnCRz1TMY5AuWvcz2axgDYywGPaHOKct34+3C
         BXTF8W46ajL3vxfKa/k5HX5n8u6Rf4zt7es9/DOlEpvHPXxz3spHfgZhAKtHPwJHtnB8
         V4Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=wLarC1QIqGZsCp73Kz2OzO3zuIfBLfYAblzcOdnHoRk=;
        b=PABVQ6O3MTsbgsA2axPMkEcGLt87u7o02nqgTVtVnuZGbuscIPP/+wWn8yTsR514FK
         guj77Cjl2y4HDdjwM+3cMrV6JgQwSbU9QDhk2EpYBn7ZzhrwEXuyI3BqICqC9ztif0U8
         E2nUJwm/Ln17RDDe/TIHbELE5MIZ04urm3iZmHIT/MQuqejvzVnOq5NPrz3WXEEIDtPJ
         CYiyNaRzHvXGTdzFkKN2WqS+ZcWqjT9cauD5/cmtDqmldkDNGJbbjCvCtjsoz9JRCGCB
         VuT+4kW0LfHwqIqL8p7YXF21vAs4ku8JBbA/tmbHiev9TJL4uM/DeU6uowFdk9jdwJXy
         M2UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id 135si194277wma.2.2020.05.27.06.45.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 06:45:21 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N5CMP-1iv9Gv0jwb-0118Vd; Wed, 27 May 2020 15:45:20 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Dilip Kota <eswara.kota@linux.intel.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] phy: intel: fix enum type mismatch warning
Date: Wed, 27 May 2020 15:45:06 +0200
Message-Id: <20200527134518.908624-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:nyIOF008cbZxsbmhfvGhCRdrwCcN1q1JDweBfwxy95/py9s3Bz7
 BFHwcfK/dnZiPczlXT624LDAPtJsDwXBDDVwKsXxmRjYf1EWQfTsfA1lMSe65U0u8rKWGRz
 3INsuZt+Gl5Bw9EtoeuItFkPoX0bh/5MKbcJprGU199PLC52YdwdIY6BxhvjcCJSsvqOqAI
 hm1FdsF24f+/DT3woz7iQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JauS/qGrgKE=:E8zZXa1xetlRt0BTAijuz5
 X0mQ+xT50m+/+kDnEKmuArkBTJXF096ns60R0bqWmW9YD9hv5hvPx5q83HjOoWzs+KxKNymy3
 8drzDdkH35yPqJK9roborwsd/c8NqvXUZIrT+KrRDdW8N7t1mmHMKsyVQgOnuSZPUa0yu1R8s
 5As1TX/0KyWq3G7V6GidUbogztS46M/n5olB7epjstaleNgtSsLFwbLIPNgqSdLeS1QBYupGS
 pnPiB1WeN4JZoPoC2yMIs2raU+7Yh1b2kVOfV2qUjAxTyRhsc4kZojwdHPkYCg+f+Ip1ClB72
 DpVLBg7PiD5rCc3McRVwnUUHes9lmnSQkzCptMSPztT/HFD2nkRZgCBJjVekLeYb9jL0nqBBX
 VnNzrImSCMTinqB62tyeRCwdCoZqkyqUKHJOFpNKY6lA9BVSTrP0y1RkDOdm/tIr3KW63jY86
 OJ8c+zVEoc6xc2lNBXSqkExO2OkJnDu/1eA8xCwpBSGME24XqDEQX7mkkxAco8KrHqtH54rs7
 6H1T295VZ/3UKHhCPxpKrazeX1UACoHFWarFD8rvcWaBudccUk1itslfLRk+ikPp69O4Pk3bx
 TPJGyeKDLYmKZkmxDLLomdfql/hXGIXDccGOtyQTypxgsskTutUa/a+IeBAtbNlqa3HAtmlXN
 k+1xtv3VC/6qp3IGjrqVK6YQ4UHw9wHtVeNa2HpRNK/WVnyi+8usIN94R1r8Lk3N5T5IwT9bl
 +UwwWo98adgXNiY1f81FyiMNQiKDt+gHPASU69bNXDCcfOLxHDx/n+wpPNIC/rn1shIN5v0Ba
 Jfwr8DWgUGXYWltQ3BUf8x6G8jUdnpE+ywwMU72tPj3VTl+9xM=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.130 is neither permitted nor denied by best guess
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

clang points out that a local variable is initialized with
an enum value of the wrong type:

drivers/phy/intel/phy-intel-combo.c:202:34: error: implicit conversion from enumeration type 'enum intel_phy_mode' to different enumeration type 'enum intel_combo_mode' [-Werror,-Wenum-conversion]
        enum intel_combo_mode cb_mode = PHY_PCIE_MODE;
                              ~~~~~~~   ^~~~~~~~~~~~~

From reading the code, it seems that this was not only the
wrong type, but not even supposed to be a code path that can
happen in practice.

Change the code to have no default phy mode but instead return an
error for invalid input.

Fixes: ac0a95a3ea78 ("phy: intel: Add driver support for ComboPhy")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/phy/intel/phy-intel-combo.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/intel/phy-intel-combo.c b/drivers/phy/intel/phy-intel-combo.c
index c2a35be4cdfb..04f7b0d08742 100644
--- a/drivers/phy/intel/phy-intel-combo.c
+++ b/drivers/phy/intel/phy-intel-combo.c
@@ -199,7 +199,7 @@ static int intel_cbphy_pcie_dis_pad_refclk(struct intel_cbphy_iphy *iphy)
 
 static int intel_cbphy_set_mode(struct intel_combo_phy *cbphy)
 {
-	enum intel_combo_mode cb_mode = PHY_PCIE_MODE;
+	enum intel_combo_mode cb_mode;
 	enum aggregated_mode aggr = cbphy->aggr_mode;
 	struct device *dev = cbphy->dev;
 	enum intel_phy_mode mode;
@@ -224,6 +224,8 @@ static int intel_cbphy_set_mode(struct intel_combo_phy *cbphy)
 
 		cb_mode = SATA0_SATA1_MODE;
 		break;
+	default:
+		return -EINVAL;
 	}
 
 	ret = regmap_write(cbphy->hsiocfg, REG_COMBO_MODE(cbphy->bid), cb_mode);
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527134518.908624-1-arnd%40arndb.de.
