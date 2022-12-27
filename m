Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBKGOVKOQMGQEPEB2YGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id BE290656822
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:04:57 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id c17-20020a1f1c11000000b003d3043bb363sf3129977vkc.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:04:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672128296; cv=pass;
        d=google.com; s=arc-20160816;
        b=HZNbv8g1Dp4HJjVm8bhj/tOq8aWar+BF812g8f5rR5eDrUAWbbbnxpaiFGWN7JW9KP
         sZqLjKUFQtmhEARq5iB4gBL3UfHxWzbqo/azRtwU+pOFwDZUqrtehaHE3Xhlg9WdhJLW
         Z0mUGJu81q5q4ioxKb3J1qfadwRCprZ5PRL9o2chfwSG9bg1YbhBWfq90jP+AQWsG7r1
         aJaS66dQ6CoeXkgz1faHjtzumP7I67Uoyqm/yVZNUP4sxz1md3MqcXLJ5dvjpEDRVjhC
         SmAreZ9gH1Mka5fZLTu6Xl+tj5pLWeUwPvB5Xrvvx9NKSRViCe8ZNXsVbyu9Ryh9N5N1
         Ilnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=0lUH1hJGEXJqTDdGaH1X1rULetmgTcrjPSmwpNadQyo=;
        b=DSLpkNCsBJXC51Qa1CitPazBmcBAUXy6SaDPLKHVrvwhv9VAGmbjZ/O7eDXkOA9nke
         7O+SUfihcQe5kdUn9C7s21eARFZLMVwH9gE+AsrKv8ooZjmZE0ZaX0EKZyZgErdPIHv9
         WRs82Ccc6otfGjMUgcwV2lnIJD30WBpyK4PDA2cI27Em7wjNxHDxatPZGuuNAm4adw4t
         6bEiuI9IvpN10YbD9oW5opD+JgGZr3OqPK31xtqK0ZJeFWvF4SajPLBy9Yq8PtYYXg5o
         on13exGPBK8jwYvq0MCTwJ+GZhriPU8G3NNqeis/QSn1piRxwwtmO6fw2wRRAazNfWrf
         b/Bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=M8pYLQHS;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0lUH1hJGEXJqTDdGaH1X1rULetmgTcrjPSmwpNadQyo=;
        b=FqxAJdzs6XlDU+IO1G8A5DjFVGti2szTMojcRTLm3qVydWL7OmwXCXONxapevylmWq
         QoDFHwnCIgSlZC92AqcvII8qeIcVr0SybL5YMXXjBykBHbz9F1AviWNokX9FJKyTzZho
         N6mROIlcdgCi6i39fFVgSVLcmIbmAu7ujLZ2IusOSKGE1hRrDyufSRho2LqoqbWSOmX9
         Pd46MjiaX6L6URN6dCXeZT/f6bgntuqAqeyRM1903NO1mzthOWKpxI8hQyEqQaesv+N6
         WwlvmFrKacXDIxefMlYFae4Ubz8qhw4LlsXJb5I38qR8PkjS05qYiaOvzlGLdkeSDq7s
         /OYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0lUH1hJGEXJqTDdGaH1X1rULetmgTcrjPSmwpNadQyo=;
        b=kG9OdBRF0Z4Rokwzc7br0322MyFwOsf/ATtm7uM+E+ipgUZJv5oFAslZp4YpfXlRew
         fTJKYngg1Uq+HsJio3j2bodLIQg0Z+1RduScQWh5ops1HF+8oSAEgMwi9CiyFmZNWmab
         X9lQa5XwhU5ygJnGh7lWkaDfC2UjPk/fp7mgow6CG+SXRtJ/+E33vv3a7pfu9FdVg/or
         da4/htEckeqe3RH2RREAzGvAYSnymLkidf+LqCje6fzWufPvzeR/kB2io9uFQV4mnifT
         nbFk1t+gFWT9KuWbtEOHDbM6IpZ9gDrofv0zO9R4ji+aPO4reB935e9w+Q3A9JiGfv/w
         7sOA==
X-Gm-Message-State: AFqh2kq9FGLXyGQfi6TQ9wa0XMJ+OlUUx0rxJyHEFBFx+2Ffk3MaGMGh
	11YnKZXk9EfE3U1xzdsdkuk=
X-Google-Smtp-Source: AMrXdXvbj2Hlot0xJ0DqOYS1rK3l7BRyjufSCgMKsNAebTzWSEoJTaKRLsiFgi7HJCcbcbU1qbIGWA==
X-Received: by 2002:a67:de8c:0:b0:3a9:5c41:8cd3 with SMTP id r12-20020a67de8c000000b003a95c418cd3mr2310478vsk.5.1672128296657;
        Tue, 27 Dec 2022 00:04:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cb0c:0:b0:3b0:e9d9:3013 with SMTP id b12-20020a67cb0c000000b003b0e9d93013ls3065800vsl.0.-pod-prod-gmail;
 Tue, 27 Dec 2022 00:04:56 -0800 (PST)
X-Received: by 2002:a67:ec0b:0:b0:3b1:3817:ffc5 with SMTP id d11-20020a67ec0b000000b003b13817ffc5mr8172171vso.28.1672128296018;
        Tue, 27 Dec 2022 00:04:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672128296; cv=none;
        d=google.com; s=arc-20160816;
        b=taAPDycUjJ6pmaVHsJkV/01VAquKy79kRpoVXbuVZebQVBDBWuf41mDOytVBS7cv9n
         HzPBDbO29kv85muCTwuFmDBM5nOd7hT5FD5awVDIzpF0lmnEf7XTTLgxHJhM6KWJdVvP
         eL9lUBtYOhMCTE6X+vnvsZzdQZBdwKaia1RxYvT9eXFvI/KgnubL+8+nR4Z62x0ceWc/
         bf9oBJTgJMeo4uE3B2K/KK6/OqtdvB4o3hJ8c4tzg+CmzlTNz3j0VUeJ6fmgLD0/PUM1
         r26CeVijuX/o9RAR5Cv4xJY2XVFNnsBk1YqUomW4/a6rWMFd9yzChKLECXhOJ3B+Aiye
         t5Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=DiuYZjmUHw3nGyRgHo0u8gDUr2AHc+UIX7KzcQmjoFI=;
        b=B8+1TZ85IbE/bHU0ImOv0x6XZv18h3A/Qk9sNh7Cp8G7M64niyDe2xuCc0SpgvovZj
         bZiq2x5/0oV8ueHUF2tmjBlAaIx8KfefvzffPc9kCUG7WbmDrWIqY/IM6JCSY2emFDe+
         fi+YFJdWAxG7TnBJpMtfzGQHvgwSYuh0rR4udKqNaiPkepPkTY1IdzyDbQXwXE2Hj7Kb
         SF8zZTnqh4Swy3AvDaThan6eoQAXhlF7tUQVRpRiV2RfA25/xPNVvZjTHDpNjbSlnN9t
         HWXQL1W/hIgLfovSWO4THO+nVe5VsSYGpjLZI0zN38OCixlpr8kyqpeMw7f8CLWMuMz+
         iw2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=M8pYLQHS;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id az42-20020a05613003aa00b00418e1741f27si3098575uab.0.2022.12.27.00.04.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:04:55 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 869d65aa80f4407fa90de5215ae720a1-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:9bb78c41-7c9d-42db-94bc-864d8fa6bb1e,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:95,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:95
X-CID-INFO: VERSION:1.1.14,REQID:9bb78c41-7c9d-42db-94bc-864d8fa6bb1e,IP:0,URL
	:0,TC:0,Content:0,EDM:0,RT:0,SF:95,FILE:0,BULK:0,RULE:Spam_GS981B3D,ACTION
	:quarantine,TS:95
X-CID-META: VersionHash:dcaaed0,CLOUDID:31ace852-dd49-462e-a4be-2143a3ddc739,B
	ulkID:221227160449ETFIKD5I,BulkQuantity:0,Recheck:0,SF:38|28|17|19|48,TC:n
	il,Content:0,EDM:-3,IP:nil,URL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: 869d65aa80f4407fa90de5215ae720a1-20221227
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 132002386; Tue, 27 Dec 2022 16:04:48 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Tue, 27 Dec 2022 16:04:46 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Tue, 27 Dec 2022 16:04:46 +0800
From: "'Nancy.Lin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, CK Hu
	<ck.hu@mediatek.com>, <wim@linux-watchdog.org>,
	<krzysztof.kozlowski+dt@linaro.org>
CC: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers
	<ndesaulniers@google.com>, Jason-JH Lin <jason-jh.lin@mediatek.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<clang-built-linux@googlegroups.com>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	<singo.chang@mediatek.com>, Nancy.Lin <nancy.lin@mediatek.com>
Subject: [PATCH v29 10/11] soc: mediatek: add mtk-mutex component - dp_intf1
Date: Tue, 27 Dec 2022 16:04:42 +0800
Message-ID: <20221227080443.6273-11-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20221227080443.6273-1-nancy.lin@mediatek.com>
References: <20221227080443.6273-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=M8pYLQHS;       spf=pass
 (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as
 permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
X-Original-From: Nancy.Lin <nancy.lin@mediatek.com>
Reply-To: Nancy.Lin <nancy.lin@mediatek.com>
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

Add mtk-mutex DDP_COMPONENT_DP_INTF1 component. The MT8195 vdosys1 path
component contains ovl_adaptor, merge5, and dp_intf1. It is a preparation
for adding support for MT8195 vdosys1 path component.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>
---
 drivers/soc/mediatek/mtk-mutex.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-mutex.c b/drivers/soc/mediatek/mtk-mutex.c
index c1a33d52038e..41cba6aa0e83 100644
--- a/drivers/soc/mediatek/mtk-mutex.c
+++ b/drivers/soc/mediatek/mtk-mutex.c
@@ -602,6 +602,9 @@ void mtk_mutex_add_comp(struct mtk_mutex *mutex,
 	case DDP_COMPONENT_DP_INTF0:
 		sof_id = MUTEX_SOF_DP_INTF0;
 		break;
+	case DDP_COMPONENT_DP_INTF1:
+		sof_id = MUTEX_SOF_DP_INTF1;
+		break;
 	default:
 		if (mtx->data->mutex_mod[id] < 32) {
 			offset = DISP_REG_MUTEX_MOD(mtx->data->mutex_mod_reg,
@@ -642,6 +645,7 @@ void mtk_mutex_remove_comp(struct mtk_mutex *mutex,
 	case DDP_COMPONENT_DPI0:
 	case DDP_COMPONENT_DPI1:
 	case DDP_COMPONENT_DP_INTF0:
+	case DDP_COMPONENT_DP_INTF1:
 		writel_relaxed(MUTEX_SOF_SINGLE_MODE,
 			       mtx->regs +
 			       DISP_REG_MUTEX_SOF(mtx->data->mutex_sof_reg,
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20221227080443.6273-11-nancy.lin%40mediatek.com.
