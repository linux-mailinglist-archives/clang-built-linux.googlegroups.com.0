Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYMO4ODAMGQEVLHXNAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F5A3B54AF
	for <lists+clang-built-linux@lfdr.de>; Sun, 27 Jun 2021 20:45:54 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id p8-20020a9d69480000b02904611a880482sf8670973oto.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 27 Jun 2021 11:45:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624819553; cv=pass;
        d=google.com; s=arc-20160816;
        b=nPC137XDglle/758G9ltDqDCVAFe8tLqdGvoD2hQZMIJjckrltFrnyLrNibWo82NSP
         S6z+FzqtiZW6wgId/L7mk3+j1MXKolU6EtkN/1ibZQEew1a+VlHGrA1vhUDt7+wavuNu
         E/faVaOVRvigom96CXk9RP572LzpIf7iAuEO01bc1xCuM315mwQp9EczcyMpYuncl84Z
         Ue5TuomyUIErqXNPlMK6llQCv4yUyqK1uNcT22r0C0yPrZCNwmRG4uTMFrSJqB/fOCw0
         rwTPvjQcj0RgIuFJ+UZAKjMN19Z+MOXAzU/KFYqze5X9pAf9k1aPjVcayGdBTYVP2C84
         zbDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=f0ZwHz2UhSG0ath9OZFidblP3lgDBx7S/cyKRR6jmYY=;
        b=fECbb8BgaXffkqO0O+nwQGc5K8bvxfE9R3c2TLEuQss6VcLgfAY/litfhQC1RJRBli
         U3BQ4wgbryDcoWz8Nb2ARaWYrQIIZuo63uHx6ndNiGoP5u15dtmanVvT9xcb2TdlMjBh
         bp6yhBRDX79zaD6RmYwDtxg3lzZJcrLGk6hb5U8q4iKSGh6DA8wEZrKVZGPv0QqIthqz
         JiCHLwxV4KTK+sWACnWR8kTvvYq6U/zAAE6P+FouzVH6L3nHxTbN/hXgPqd0bLGJRkOO
         AQV6lpz8tFfKWuxDnttRcJQHTlAvWXHELl8Xcn1ioxlmtbyFxYRy3N/y83U0X0FwsgU/
         zoEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CBWdslT8;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f0ZwHz2UhSG0ath9OZFidblP3lgDBx7S/cyKRR6jmYY=;
        b=o5bi7xencFun81/7FKz1DKv7iUIfVkE2EgMIzIR6mrM+wQQxWYvjw9Ji8lLth6if67
         p3Q8f6h7Lopj/zJpyS9WjiHhUOZTmzjmDJXC8h2n6cLrAUmgbgloFMI3sD1wm/3GuVVK
         uj01Pi2oyN0KmwKgQtkCTeXheOd4+bLT5j/wKaxx0hKYPBnx5TRbubjz6ARq1u6LcE9u
         gEt93AuWCn3ZHrUz9oeg+d20HIVMKgWEhWmTqJXJDl2fqhozrpZ/HMhbGzOVxLHUxgDp
         95c+NM0ly6op4nP7RXPGfKbeXsS5JY5flAmvd5EiGudWJTS1IbgXuuDHnrM7DqlobJ9l
         AUeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=f0ZwHz2UhSG0ath9OZFidblP3lgDBx7S/cyKRR6jmYY=;
        b=CsnVFmWV8Qa/6M58jfcpja/7WCygHThCIgR4XAYQznD6SwwlDnoVqzDH/AE3zJaEVU
         QaBL+mfZwv/cRurAyxw/23rUEAu7COlqoH6k1BJafoOY7m+VvbXYfY2g0oES0lxxc1Vb
         ZXYNKU+JTyh0/mK3o0080s2JM1PgmDL+5TCBnLONs0gw9cOBYOJrqmn6oPiRrCjTfBKQ
         9NaYQK/pAMLIcU43HlftC5jLU104VJsVNz0rPWCAhcLI6s7NFxDKhMtWWIdKirXlRItC
         92j7HsFoOrFd4TbulLpIgLE6C01fhdJQRTd2HR98Hw1iL2aHpq7lBi8S+6eIuuj6NRJL
         HydQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kPVfkYHwFrW9nq+VIQ0vjG4M/gJsWR5bG6DeDh6gaCZWsC84+
	tRb6dJUzT0F5vSeRk6uc0Mg=
X-Google-Smtp-Source: ABdhPJzd8dFJLkp9jbf2Mpqp0gSSAjzXCLfTfZkUWqU78qEwkYl/f2JzX7dDK4cQzfBcIZA96v3HHw==
X-Received: by 2002:a9d:7610:: with SMTP id k16mr18186989otl.32.1624819553337;
        Sun, 27 Jun 2021 11:45:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6242:: with SMTP id i2ls5696251otk.2.gmail; Sun, 27 Jun
 2021 11:45:53 -0700 (PDT)
X-Received: by 2002:a9d:7282:: with SMTP id t2mr18279196otj.288.1624819552988;
        Sun, 27 Jun 2021 11:45:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624819552; cv=none;
        d=google.com; s=arc-20160816;
        b=JmvfS2XqAgJ4EZ181v9HTBZe6qkzGr+VjoNdazPxiFnfNEVwD7Smp+JUUxuSI1ULsX
         +KM+3Dbky7OAwCrXb3niETlJakGTsIZ2NRHFylN7yrDGaDR7+Y7tOBOiW/Sqat2WVzP8
         aiF6luQdTT4BmaFP+XJDe8iPep+DAumooebHwnj/vJTU/H8bzY04FR20AoE0PaTyHZHk
         LDLMp9CPyK3px46kKPEEmJ6tB38It25KT5f0oZugL50bir3mrS6jZHE9UmIdimNWDE2t
         Ic3FDB9kB4JDgLS+5lyFWk/9Mtd2mudNLqkvn4rGc8V1Tm1DLfZkAaarHCPMXIskfIUs
         Wi2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=n+kHsBSFswjPA9t0hxl0i+uLJpiUmvlBmkLI9Dx7CfU=;
        b=jMD9wed7jd6jzJTrGckTfFzMG4V3U3M+bLDiZdLjp0Av5qA4ybd9dY457xQYaAwAcT
         zLDNqCXDEfrHmPogGdVfEYcdJ4Jd4aU51aeDZACxTeHLkhubhzW6hoOTZjt+yS24jeXh
         Q/AWukUyVWZA18LsA6u9Y7/uA58bCQbpx834y+IiA9gF2kSLf+qsqn7fU3H4+R1vt0Y0
         xCtZXnAdMe5fGPsr7yNsphdgzVqvOd6MCvc6hZDDTkMkAlVlnnJMP1Rp9VXBdRhCxEHF
         FnLrIOzqrMbLOtNL4W67ikqOCKU47Hch21WFct/OxzZgSaULUADlWOxLNaQ5+fkHxk6m
         djuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CBWdslT8;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b9si1439915ooq.1.2021.06.27.11.45.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Jun 2021 11:45:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5C6B460238;
	Sun, 27 Jun 2021 18:45:50 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Lars Povlsen <lars.povlsen@microchip.com>,
	Steen Hegelund <Steen.Hegelund@microchip.com>
Cc: UNGLinuxDriver@microchip.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH net-next] net: sparx5: Do not use mac_addr uninitialized in mchp_sparx5_probe()
Date: Sun, 27 Jun 2021 11:45:43 -0700
Message-Id: <20210627184543.4122478-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=CBWdslT8;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Clang warns:

drivers/net/ethernet/microchip/sparx5/sparx5_main.c:760:29: warning:
variable 'mac_addr' is uninitialized when used here [-Wuninitialized]
        if (of_get_mac_address(np, mac_addr)) {
                                   ^~~~~~~~
drivers/net/ethernet/microchip/sparx5/sparx5_main.c:669:14: note:
initialize the variable 'mac_addr' to silence this warning
        u8 *mac_addr;
                    ^
                     = NULL
1 warning generated.

mac_addr is only used to store the value retrieved from
of_get_mac_address(), which is then copied into the base_mac member of
the sparx5 struct using ether_addr_copy(). It is easier to just use the
base_mac address directly, which avoids the warning and the extra copy.

Fixes: 3cfa11bac9bb ("net: sparx5: add the basic sparx5 driver")
Link: https://github.com/ClangBuiltLinux/linux/issues/1413
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/net/ethernet/microchip/sparx5/sparx5_main.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/microchip/sparx5/sparx5_main.c b/drivers/net/ethernet/microchip/sparx5/sparx5_main.c
index a325f7c05a07..c73359de3fdd 100644
--- a/drivers/net/ethernet/microchip/sparx5/sparx5_main.c
+++ b/drivers/net/ethernet/microchip/sparx5/sparx5_main.c
@@ -666,7 +666,6 @@ static int mchp_sparx5_probe(struct platform_device *pdev)
 	struct reset_control *reset;
 	struct sparx5 *sparx5;
 	int idx = 0, err = 0;
-	u8 *mac_addr;
 
 	if (!np && !pdev->dev.platform_data)
 		return -ENODEV;
@@ -757,12 +756,10 @@ static int mchp_sparx5_probe(struct platform_device *pdev)
 	if (err)
 		goto cleanup_config;
 
-	if (of_get_mac_address(np, mac_addr)) {
+	if (!of_get_mac_address(np, sparx5->base_mac)) {
 		dev_info(sparx5->dev, "MAC addr was not set, use random MAC\n");
 		eth_random_addr(sparx5->base_mac);
 		sparx5->base_mac[5] = 0;
-	} else {
-		ether_addr_copy(sparx5->base_mac, mac_addr);
 	}
 
 	sparx5->xtr_irq = platform_get_irq_byname(sparx5->pdev, "xtr");

base-commit: ff8744b5eb116fdf9b80a6ff774393afac7325bd
-- 
2.32.0.93.g670b81a890

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210627184543.4122478-1-nathan%40kernel.org.
