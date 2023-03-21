Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBP6B42QAMGQEA2OYDKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id B03036C3163
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Mar 2023 13:19:12 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id 85-20020a6b1458000000b007545a9d6706sf5887763iou.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Mar 2023 05:19:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679401151; cv=pass;
        d=google.com; s=arc-20160816;
        b=x5K0DhPESjy/q+rc1KH1RSibln09JeVHBnPXt6TGXd/Qaa1UcEqrDlM5Nr0YOrpy7A
         ZLah0RqBJ5yIea1WwYjljybK6JhGLiHXukSjnnyFnuz6i4iohj3Nr3I44klbFPc+M7fm
         sLZWT0aaDrQnhNXbq7sU1P+KrtPr9jHgfc0H8+0RDlK2pdM/Xv4+B22oZoxRfJl7lLbF
         Tj779UwU3fBt6TdHI9GHohkTnuY3hekbAKbPrLsH1E8i8sq77i0kpvPoWddb6wadirCU
         xUNINaf9/9lA519QrwX5OpWWjr5zgfb7TQ8U8Wgin5cVNWmxy2gG0Em5dhdcFymq4cTx
         NH5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=LTcUXx7p1kD6vVVLRlNvr84EEGTakESUH1DIbAH30GE=;
        b=iqQFW+A8ww9zd3a3gvExZHXyQ4FvRNFxKFdkp1iLNMc0GMG1643MykHFqcgpiiIuDg
         0x9zs4Jfz7afoelR55VORzcrgxig1DWs4ZoW0VoXrXtctx8aI7A1nnQCXBsdVltC8hHF
         9yOOeCY8pmYM6z56GQjaiyE1O7qo/g5AVvwc8BJErQGoIG08yi6qf4deY46SNIx/VWbD
         VZ0FwIiNPZ4btUs0WO2I+ENXi29mNq4iZYNm5a40XJSmbdTRcrD8b+egL7QPeHVR7BGq
         1WYa6JKiaov59gIXHV1164V/sFo4Oj1a4cN6vjPiaNlCJxFwylWANJ/NPYxxFLriDSGf
         8Gig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=rvFWSeae;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679401151;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LTcUXx7p1kD6vVVLRlNvr84EEGTakESUH1DIbAH30GE=;
        b=FI+ms3ofBiDEjw5kiQAgUnCsaKgLjVmIjaZuZu751vIPe60TTGJf2ppfnf3AByStMa
         HfIMmOrentfhYJpkA7CHR9Fwbff64etPGhAzXi2biRgpnfmNri77rQM5OVJClUhG9ONo
         jIQOBa3jBvYqs0iraPhHSoLDldHY69+c6CdVlrrg9FMB1XQKhBeotfEfi2orIQmimduA
         ObgDUEtqPZtZKyMBjTSYUQCRHvQR9wcQRxuK1jROnm2XcSX7CNvbjFdiF5EKNcF/dCJm
         AfVEbGNe3/l3fHfNy7X9QLKXYQsTZ3xjjWaVEGXca+pLCAQDk3Svf/y3FKacztKf9TuQ
         WS0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679401151;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LTcUXx7p1kD6vVVLRlNvr84EEGTakESUH1DIbAH30GE=;
        b=a3YzViOmeDt6REWii5EhCkqhtDaKS7YGBRPh6TwV94nRjSTo01QzGELjr5H8dYdYpz
         83Jgc66bkWMVrbYKlAq8XTbcLAtP+of8yLX30PnqV/7pa2O0Ggcm2scegFT33w94+9a8
         TFPF+A5TMETahQ3d4acmFLCdgb/AhaFp1EqF81EFa9I4fUoJhxZp+NsX9FS4XRTD/Ao0
         iIISq8pvVx1y7xu/VUhnfH+h7BxNXJy9B1iUGcEYGcAbPwbuNoboGmNLInqt0U5qCl73
         n13xuUmB1UT64N52eq2eOLDsBnjoibkq686CgNctxoTreZhMVpnOZ9hxs03iJXBesrWF
         PzWQ==
X-Gm-Message-State: AO0yUKXabp1WxJTkXmUbiefUrXFxlyxvyV3B4T5ob4BMd599jhgI5nUD
	3DDGSQ0IuNlcRap3MbejGHo=
X-Google-Smtp-Source: AK7set8RIN2wlXxiCVsgcy2PxkZC5STdpKoRyWglyI4rN4+g7ixVuilcfYvyp2ovPgbTGaPDxOhG+A==
X-Received: by 2002:a05:6e02:12a8:b0:317:6eac:97e1 with SMTP id f8-20020a056e0212a800b003176eac97e1mr698180ilr.0.1679401151481;
        Tue, 21 Mar 2023 05:19:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:358a:b0:752:e91b:7425 with SMTP id
 bi10-20020a056602358a00b00752e91b7425ls1826664iob.9.-pod-prod-gmail; Tue, 21
 Mar 2023 05:19:11 -0700 (PDT)
X-Received: by 2002:a6b:e006:0:b0:753:786a:bffd with SMTP id z6-20020a6be006000000b00753786abffdmr1551879iog.13.1679401150953;
        Tue, 21 Mar 2023 05:19:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679401150; cv=none;
        d=google.com; s=arc-20160816;
        b=FPbOJySqn2wqddoWMqZOzi/GbTRbVzAdOMm19hlaC+7Z0QZf5JVZf1iVJg+ypHrE+s
         6rJfYYJBMgCDe2Wa7Ix/h88HiL5dpLGTZ5VpFJputDD2nTL3w5751rbP/xds9a7Ya0/v
         KGPm2uK5Mq+bsM3x+WVKnJ+iR+7BOlqhxYhpKJTH4AYUWhubgvEUWkvGPeTB6twNpOjx
         CXymf66IKvY8GQWz42pxsu9hSlr2aakbbpb/iBs2vQ6Zyym+hAAZk2SMxoshuEEX9xhb
         p6r6/64AD4rYXtZ+jy3k2gZGaKtULhzLB/HEwbVuaqbLvPSOwwjIHTBz1Flgw70Lqopd
         RF4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=4nMEBTuCZtYxoAXkI/DlrrR5sAEuMtOsxPAWoHTcRuk=;
        b=tbNZzvsKdaodBvr7R8cReN6t/1OrUnwr0HN0bwByfDjg+3kXh5lxw1SdOazepdSr5k
         jM+i8xyh1gGWQiuLIx9lfpx0gOGRapzCqy6ChOjKIEq4y+3qE3UjHALB2LFU2s+fqNko
         ezcmeb0UjrkyMQQBI4jfcWF3sWvGkYXG6ibGqcTi/w0/2Mvy3PMBWUEN+KINRoD8AKmw
         033J21pxA+qd7HTEdSiwDS9U+Jmu8goji1slFa11DRWDkwKE/ZBMiKna/XxVn2qPdiA/
         VwT3yvswublSQCA7XnxUxwd1HUEBmmzdccRg3lBuXp7h79tzsLOyn0spiQfkgmzPzEhM
         R8mQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=rvFWSeae;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id l16-20020a056602277000b00752f670b819si35430ioe.3.2023.03.21.05.19.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 05:19:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 9078d744c7e211edb6b9f13eb10bd0fe-20230321
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.22,REQID:f38c7036-f0f7-4d05-97e2-47748691de17,IP:0,U
	RL:25,TC:0,Content:-25,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTI
	ON:release,TS:0
X-CID-META: VersionHash:120426c,CLOUDID:51b5e9b3-beed-4dfc-bd9c-e1b22fa6ccc4,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-UUID: 9078d744c7e211edb6b9f13eb10bd0fe-20230321
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 2057751068; Tue, 21 Mar 2023 20:19:01 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Tue, 21 Mar 2023 20:19:01 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.25 via Frontend Transport; Tue, 21 Mar 2023 20:19:01 +0800
From: "'Nancy.Lin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, <krzysztof.kozlowski+dt@linaro.org>
CC: Daniel Vetter <daniel@ffwll.ch>, Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>, CK Hu <ck.hu@mediatek.com>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <clang-built-linux@googlegroups.com>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	<singo.chang@mediatek.com>, Nancy.Lin <nancy.lin@mediatek.com>
Subject: [PATCH v30 1/7] dt-bindings: mediatek: add ethdr definition for mt8195
Date: Tue, 21 Mar 2023 20:18:53 +0800
Message-ID: <20230321121859.2355-2-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20230321121859.2355-1-nancy.lin@mediatek.com>
References: <20230321121859.2355-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=rvFWSeae;       spf=pass
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

Add vdosys1 ETHDR definition.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../display/mediatek/mediatek,ethdr.yaml      | 182 ++++++++++++++++++
 1 file changed, 182 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.yaml

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.yaml
new file mode 100644
index 000000000000..801fa66ae615
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.yaml
@@ -0,0 +1,182 @@
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
+    minItems: 1
+    maxItems: 7
+    description: The register of display function block to be set by gce.
+      There are 4 arguments in this property, gce node, subsys id, offset and
+      register size. The subsys id is defined in the gce header of each chips
+      include/dt-bindings/gce/<chip>-gce.h, mapping to the register of display
+      function block.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20230321121859.2355-2-nancy.lin%40mediatek.com.
