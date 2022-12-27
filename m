Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRB26QVKOQMGQEJU6GIOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oa1-x3e.google.com (mail-oa1-x3e.google.com [IPv6:2001:4860:4864:20::3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A3F65682C
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:10:20 +0100 (CET)
Received: by mail-oa1-x3e.google.com with SMTP id 586e51a60fabf-14261bd9123sf6171104fac.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:10:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672128619; cv=pass;
        d=google.com; s=arc-20160816;
        b=GDNCpb9QSmtBSvkqjIaN6Tj/WB+l776ZXwvqFyB8xO8i+0XzO9ZHUPgfCeZZE37Krf
         025KIQCFHkXYk9r34BUcyQX2YkovM0Tyt4wwwMTO0rYdp5uoCI4gE0/qgJ4ONpjjjJop
         OrgwCHtELQyN9mJxTV1dQnxuMY/r63cp/zmP4EseDR+YxXuWqYMMhM2a2JAVINgtooOz
         XP9/NVKKbhsoMmJB8X61GIuVZFn0vvlDc9LUTIAHLkGkbIk+fuUhtDToGISdEYJ7kq5l
         KzGWNbed3PRyXFZkWtrdawKM4TQa62JmA49hmwR47llJraLPDHe1+/qqKMwYESXFOOcs
         V92Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=9T46WsLM9pnRou9PLARgHjFxUMrnaUZyYYPImbkUkic=;
        b=IxRDkw+TMQmK93XPdSG1MG5ZAyxKC0cv0bET+xOM7F36OoyRgOe3sIEmv1rFBPUnTE
         0QJbWvmM7XJP8lBnLXzhlmjILZltQL/2Lrkw60VpFEsYvkqNKnFZ7o+u87gjewNO60/O
         xrDL4reYnYkdIC9SFpfSsdVwOqDc1E7eBdL01IxoTZrkl0nqn1E4um0vOS5iYCCjKRsP
         V/47ULw2gSTD3+aCv2ssFVhMkKaMSb5ZTddW007+w7GpWyL3gU/SqFIh4+hgrUGxvZy3
         +zaLxcaHBYIxYrqhGv91yX0SfUMLaFTNF7hY8/KAY8G8YOJk+R2ifOrWY4Sjs20zr24p
         TxcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=b5WkLdGX;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9T46WsLM9pnRou9PLARgHjFxUMrnaUZyYYPImbkUkic=;
        b=TUreoMR61ZydC2xl8Efrdz67ahSnFVVZQrONLULBQH/g3fEo6XEqlYALuoIx0Yrh0R
         5TwCvBiqNbih5oAN9mU3bNLp8CbMkAyV4TLmc3a77grbQ25u6e+mK/CWys/P2lz+yxRD
         yFNcYfen34UtWECsGVd6a1zEyfnIHGVLB4PD+7HG2E07wyGpRdu/gjuxKhxdaYgOHy4D
         9mecO+5MBuRyvYNNW6ihAHinQWFIQc/P8D5W6PuL+EHQ/lL/cHWEy2QUObItLH7KX8QD
         oYqUWPPLI9mojjvIDoQZTHQ05orIYRKlFOfU00SGXcSjjrnGKRoYTv2A+J0ju6F/YMv0
         lqDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9T46WsLM9pnRou9PLARgHjFxUMrnaUZyYYPImbkUkic=;
        b=vJ/umXYKbbRK6k2Ome9fQxhOozSZwGsLgnoZlcVF3ucqP0Ilt45iTl8ViMQKdyTar/
         lDbIJsDGg+U6bf7A/Uvxjszq4UbDtUvSyKPUVqi3jPSjNSfYYt3RD90Ecbt/p22Y9zuH
         nzPSR/SziwxJJeRMN2622sBEj/xkDce8YUSb7vCh5k2fKB10YwtNPisofHKD+WvEtMbB
         Dfj/JxBIdBz4NxccVvk6dSYco0GFWE9onvvA3syuIM5+OvZ+4mQEVIPxadq9zBA6gBNM
         VfBccBqnKdAXxvNfBVdl8hPzApOaGgHCDxKBuVSDk+KJyIiUtvR+W2UT2Zsd+ClW7HEW
         osHw==
X-Gm-Message-State: AFqh2kq3MNs1p5f7N7sIkmxZDVT7oUTOa21qmidcQ010eWusufxDiYjz
	NdcG/CRY7RaxwNJv9SO4QPw=
X-Google-Smtp-Source: AMrXdXtNOq5/2Ri0Mo/D5s5rz9leER+yAnXyp401Taxf7t7SIhurdb8oTO1M/q+GNCDrBuTAzdlQHw==
X-Received: by 2002:a05:6808:1649:b0:361:e2d:1f52 with SMTP id az9-20020a056808164900b003610e2d1f52mr676655oib.93.1672128619201;
        Tue, 27 Dec 2022 00:10:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6870:711:b0:143:408e:349 with SMTP id
 ea17-20020a056870071100b00143408e0349ls4108550oab.6.-pod-prod-gmail; Tue, 27
 Dec 2022 00:10:18 -0800 (PST)
X-Received: by 2002:a05:6870:5a5:b0:144:8d67:906e with SMTP id m37-20020a05687005a500b001448d67906emr10844453oap.24.1672128618756;
        Tue, 27 Dec 2022 00:10:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672128618; cv=none;
        d=google.com; s=arc-20160816;
        b=IzY8G3ZSOhyp4pfO72HaNJozuOEKjMoiee0dPH+IhFbnLE8lYwQo7z1Y4DMyyIbya8
         UWmyn6ZNcbjt5iDaToV8KpV4uXeNO2vflXmhoqTTjCmqNo4rL48I6/0fQE4yJvUJ8RlR
         DrZjJUofX2C/Ly9ack2TRDnJHj1lNppu1KP2BQSPrS8EyogUa/JNDwJDoMF58jv3yJrY
         PN5zSozypU/uC8fkzW0ilDbIPA0H5cKVTu2MOqG15OHrLOlH9YLybNsmf1tfCCpIo05g
         k/KpC+vCwz5QVgpbTFPX5H6d8B7hQvAK81B1JzTxQEEI5LM+zwIcr+Np5hmMtHMUhZU9
         jGQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=XNpyGlgBl9SZPhFeKALEIhFld+lzd+Z0HIMWFtYFTLM=;
        b=Gtzo+mk+beFdIibUDJ4EV/7NdsKOdhwpxo423UH3iy/A+TaQYgfYxjkgaH5EbAbbHX
         2xCu1zh/pWFC64tsi8F9itk8vUz4gHJvNwfvHZ3tW8gRPmjWohyg4V/MBSRByTf9aPsx
         X0DKrDiU+34uBf0SROMrjOOLF9pbG/Ea4x9Sem9essBX4H3Og3k4Yj5FFwB/dXp/IL3T
         0WcKBdxX7UlK4qhOHlZKmszJCMTEeMdQl81medPb1HjLkS7a3TmPnsQF+pNhVFkjpEqh
         Zyft3ByV6yvAVmdp9AsoDISkAJrtQ/O3tNFtgOlIa+dBR7FEgEwDGIPezOYehHUlzbRL
         xe4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=b5WkLdGX;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id f8-20020a056870d14800b00143cfb377b2si1235718oac.2.2022.12.27.00.10.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:10:18 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: ceef53713c724c5098244314aca9c164-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:490777fe-468a-4718-b252-a542f01a3760,IP:0,U
	RL:25,TC:0,Content:-25,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTI
	ON:release,TS:0
X-CID-META: VersionHash:dcaaed0,CLOUDID:7bdce852-dd49-462e-a4be-2143a3ddc739,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: ceef53713c724c5098244314aca9c164-20221227
Received: from mtkexhb02.mediatek.inc [(172.21.101.103)] by mailgw01.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 523076953; Tue, 27 Dec 2022 16:10:13 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Tue, 27 Dec 2022 16:10:12 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Tue, 27 Dec 2022 16:10:12 +0800
From: "'Nancy.Lin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>,
	<krzysztof.kozlowski+dt@linaro.org>
CC: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Rob
 Herring <robh+dt@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Nick
 Desaulniers <ndesaulniers@google.com>, CK Hu <ck.hu@mediatek.com>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <clang-built-linux@googlegroups.com>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	<singo.chang@mediatek.com>, Nancy.Lin <nancy.lin@mediatek.com>
Subject: [PATCH v29 1/7] dt-bindings: mediatek: add ethdr definition for mt8195
Date: Tue, 27 Dec 2022 16:10:05 +0800
Message-ID: <20221227081011.6426-2-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20221227081011.6426-1-nancy.lin@mediatek.com>
References: <20221227081011.6426-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=b5WkLdGX;       spf=pass
 (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as
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

Add vdosys1 ETHDR definition.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../display/mediatek/mediatek,ethdr.yaml      | 188 ++++++++++++++++++
 1 file changed, 188 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.yaml

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.yaml
new file mode 100644
index 000000000000..3b11e47a8834
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.yaml
@@ -0,0 +1,188 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mediatek/mediatek,ethdr.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek Ethdr Device
+
+maintainers:
+  - Chun-Kuang Hu <chunkuang.hu@kernel.org>
+  - Philipp Zabel <p.zabel@pengutronix.de>
+
+description:
+  ETHDR (ET High Dynamic Range) is a MediaTek internal HDR engine and is
+  designed for HDR video and graphics conversion in the external display path.
+  It handles multiple HDR input types and performs tone mapping, color
+  space/color format conversion, and then combine different layers,
+  output the required HDR or SDR signal to the subsequent display path.
+  This engine is composed of two video frontends, two graphic frontends,
+  one video backend and a mixer. ETHDR has two DMA function blocks, DS and ADL.
+  These two function blocks read the pre-programmed registers from DRAM and
+  set them to HW in the v-blanking period.
+
+properties:
+  compatible:
+    const: mediatek,mt8195-disp-ethdr
+
+  reg:
+    maxItems: 7
+
+  reg-names:
+    items:
+      - const: mixer
+      - const: vdo_fe0
+      - const: vdo_fe1
+      - const: gfx_fe0
+      - const: gfx_fe1
+      - const: vdo_be
+      - const: adl_ds
+
+  interrupts:
+    maxItems: 1
+
+  iommus:
+    minItems: 1
+    maxItems: 2
+
+  clocks:
+    items:
+      - description: mixer clock
+      - description: video frontend 0 clock
+      - description: video frontend 1 clock
+      - description: graphic frontend 0 clock
+      - description: graphic frontend 1 clock
+      - description: video backend clock
+      - description: autodownload and menuload clock
+      - description: video frontend 0 async clock
+      - description: video frontend 1 async clock
+      - description: graphic frontend 0 async clock
+      - description: graphic frontend 1 async clock
+      - description: video backend async clock
+      - description: ethdr top clock
+
+  clock-names:
+    items:
+      - const: mixer
+      - const: vdo_fe0
+      - const: vdo_fe1
+      - const: gfx_fe0
+      - const: gfx_fe1
+      - const: vdo_be
+      - const: adl_ds
+      - const: vdo_fe0_async
+      - const: vdo_fe1_async
+      - const: gfx_fe0_async
+      - const: gfx_fe1_async
+      - const: vdo_be_async
+      - const: ethdr_top
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    items:
+      - description: video frontend 0 async reset
+      - description: video frontend 1 async reset
+      - description: graphic frontend 0 async reset
+      - description: graphic frontend 1 async reset
+      - description: video backend async reset
+
+  reset-names:
+    items:
+      - const: vdo_fe0_async
+      - const: vdo_fe1_async
+      - const: gfx_fe0_async
+      - const: gfx_fe1_async
+      - const: vdo_be_async
+
+  mediatek,gce-client-reg:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: The register of display function block to be set by gce.
+      There are 4 arguments in this property, gce node, subsys id, offset and
+      register size. The subsys id is defined in the gce header of each chips
+      include/dt-bindings/gce/<chip>-gce.h, mapping to the register of display
+      function block.
+    items:
+      items:
+        - description: phandle of GCE
+        - description: GCE subsys id
+        - description: register offset
+        - description: register size
+    minItems: 7
+    maxItems: 7
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - power-domains
+  - resets
+  - mediatek,gce-client-reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/mt8195-clk.h>
+    #include <dt-bindings/gce/mt8195-gce.h>
+    #include <dt-bindings/memory/mt8195-memory-port.h>
+    #include <dt-bindings/power/mt8195-power.h>
+    #include <dt-bindings/reset/mt8195-resets.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        hdr-engine@1c114000 {
+                compatible = "mediatek,mt8195-disp-ethdr";
+                reg = <0 0x1c114000 0 0x1000>,
+                      <0 0x1c115000 0 0x1000>,
+                      <0 0x1c117000 0 0x1000>,
+                      <0 0x1c119000 0 0x1000>,
+                      <0 0x1c11a000 0 0x1000>,
+                      <0 0x1c11b000 0 0x1000>,
+                      <0 0x1c11c000 0 0x1000>;
+                reg-names = "mixer", "vdo_fe0", "vdo_fe1", "gfx_fe0", "gfx_fe1",
+                            "vdo_be", "adl_ds";
+                mediatek,gce-client-reg = <&gce0 SUBSYS_1c11XXXX 0x4000 0x1000>,
+                                          <&gce0 SUBSYS_1c11XXXX 0x5000 0x1000>,
+                                          <&gce0 SUBSYS_1c11XXXX 0x7000 0x1000>,
+                                          <&gce0 SUBSYS_1c11XXXX 0x9000 0x1000>,
+                                          <&gce0 SUBSYS_1c11XXXX 0xa000 0x1000>,
+                                          <&gce0 SUBSYS_1c11XXXX 0xb000 0x1000>,
+                                          <&gce0 SUBSYS_1c11XXXX 0xc000 0x1000>;
+                clocks = <&vdosys1 CLK_VDO1_DISP_MIXER>,
+                         <&vdosys1 CLK_VDO1_HDR_VDO_FE0>,
+                         <&vdosys1 CLK_VDO1_HDR_VDO_FE1>,
+                         <&vdosys1 CLK_VDO1_HDR_GFX_FE0>,
+                         <&vdosys1 CLK_VDO1_HDR_GFX_FE1>,
+                         <&vdosys1 CLK_VDO1_HDR_VDO_BE>,
+                         <&vdosys1 CLK_VDO1_26M_SLOW>,
+                         <&vdosys1 CLK_VDO1_HDR_VDO_FE0_DL_ASYNC>,
+                         <&vdosys1 CLK_VDO1_HDR_VDO_FE1_DL_ASYNC>,
+                         <&vdosys1 CLK_VDO1_HDR_GFX_FE0_DL_ASYNC>,
+                         <&vdosys1 CLK_VDO1_HDR_GFX_FE1_DL_ASYNC>,
+                         <&vdosys1 CLK_VDO1_HDR_VDO_BE_DL_ASYNC>,
+                         <&topckgen CLK_TOP_ETHDR>;
+                clock-names = "mixer", "vdo_fe0", "vdo_fe1", "gfx_fe0", "gfx_fe1",
+                              "vdo_be", "adl_ds", "vdo_fe0_async", "vdo_fe1_async",
+                              "gfx_fe0_async", "gfx_fe1_async","vdo_be_async",
+                              "ethdr_top";
+                power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS1>;
+                iommus = <&iommu_vpp M4U_PORT_L3_HDR_DS>,
+                         <&iommu_vpp M4U_PORT_L3_HDR_ADL>;
+                interrupts = <GIC_SPI 517 IRQ_TYPE_LEVEL_HIGH 0>; /* disp mixer */
+                resets = <&vdosys1 MT8195_VDOSYS1_SW1_RST_B_HDR_VDO_FE0_DL_ASYNC>,
+                         <&vdosys1 MT8195_VDOSYS1_SW1_RST_B_HDR_VDO_FE1_DL_ASYNC>,
+                         <&vdosys1 MT8195_VDOSYS1_SW1_RST_B_HDR_GFX_FE0_DL_ASYNC>,
+                         <&vdosys1 MT8195_VDOSYS1_SW1_RST_B_HDR_GFX_FE1_DL_ASYNC>,
+                         <&vdosys1 MT8195_VDOSYS1_SW1_RST_B_HDR_VDO_BE_DL_ASYNC>;
+                reset-names = "vdo_fe0_async", "vdo_fe1_async", "gfx_fe0_async",
+                              "gfx_fe1_async", "vdo_be_async";
+        };
+    };
+...
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20221227081011.6426-2-nancy.lin%40mediatek.com.
