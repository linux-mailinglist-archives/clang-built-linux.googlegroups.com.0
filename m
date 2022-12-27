Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBIWOVKOQMGQEMYSAB6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C0265681D
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 09:04:52 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id e9-20020a056e020b2900b003036757d5casf8348807ilu.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Dec 2022 00:04:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672128291; cv=pass;
        d=google.com; s=arc-20160816;
        b=xdEwB8TbotSFSQSh6hyJi7EV1SA1HG3tETuJS0O8CvZBH8ujrfhMW/Ptg5R2Dq1BBo
         jtbaNCOSWwTcfNiPCwqUGUVUGR8r+ZwZrNrNMO/ihGWp77SBpLpDhmWR9Un+AkKMUM2g
         2GrWktcN5SBo1S10TrnUQLNvxo8g6lfdc6iFxalG46BH9Xh+9J3Th2XWW4fD0Hg3ES3l
         8Det24f8HSN/n9dfWK5hMHd60WPXROLSc2gTjjfDiUScSON0+VKnhzKZHefOGgbcao1G
         Op1SfobKS0cQdX3uJXHQCiIWOMppH0EkuOlqAX5EzMXVJiJ8E+uUYdtLA2Q0yRTHukNX
         rz9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=qF4CFnGUTKMrhYUNhsA4JHK+n6LwnWqKzWdGQ7XspIU=;
        b=axPYDgua2lEyEx/a5suB6JodOBbvVkrBdqJcaBbuGNZCqvV/fuPcRdOegYAlPsABtn
         M7FTlHGWu0kE0yBzSSLIp5f/n10ket43Gq7Wo44h1pj953iXPHqvN+RUI19pAQ23oM5x
         bDcEJ+OIhCg4fid/lfBMgQi7Qj/p+fIXssm8lYfHMitFeCwMhr7uh2hoYbYPkjDh5QUl
         HyD8T1UjwxMDilWnSkU/txKcmjKlU00tP31FnTM54nXswqepiuzEPsKmmxYIZWV+l3kz
         WhUbaSf/R8PFULut6i5YJ3ndJ+7lRiV1xWKUEJGQTDama85s3OGVqwVmsDyVaqcuL3zc
         aWqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=L0FAuJyt;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qF4CFnGUTKMrhYUNhsA4JHK+n6LwnWqKzWdGQ7XspIU=;
        b=L7/EDTahFPW6suyvrCQEVuJGYzV5urcQdVwyU3tED9dQtI95d7aB2SP6d15g06UhCg
         c+3D6i3bPEXtZjtX/RbcuVeuCAf9VY5htXmGUrm+0+JzGkqvSc5aJG0EQp5VrWMmWMJg
         f8s91yVWKnE1qRPRorgbcNwA47xYD73oEh0mp61xVo2QzJOj+6fdzxg0pMV4CskRqeRk
         CRuLoyuxwrh/Od7rzGPrNXsdfnFf2Qu8nx8mVOC2yTXJnW3uBgeItMZjcyABxd3pibCS
         ogN3JvVYG51zFxKhl1+NGGBY+zlkcOlhk8KX1syeBoxL8q3UHr6fbhh4iWGMD3IFUBhd
         iHiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qF4CFnGUTKMrhYUNhsA4JHK+n6LwnWqKzWdGQ7XspIU=;
        b=HrYJUif5xIBVRLoIAK4HLiA9N48yBhxYA0bOAe+Kie03O037jDOJK9W3upn+IeJ6TY
         EBBTtQM2YNHbbuuIlNQCPvs5snz02JZYdRfxZ8a2q4WaAhTXOVW0JwzhH18a/QrUuhCP
         FGUf0XpaRFR1VYoQGbzgo78qdOGJOGXWb82hbUOeK+CX1x94zws7J5bdXpWwXc9qiM35
         CigOQZF5C1JPxlrWVsBZJ3EKQta9PRSmx7NTojX4ormU/JHXmWt3ZmrrRUpGeu4mwNUA
         mDjc5Xtd9W73Blur+HxfU4CfjdeQTcWkWumCsabVWSk8mMXwxB9jBv+3OHb6Etjyrzic
         UPiA==
X-Gm-Message-State: AFqh2krdzdrDsEV1iiE+lMjUnBpQeFBs5eptRxXNNUJdLN7jKIpVJA5/
	LgVjuBTuVmXy+iinP/pBU4s=
X-Google-Smtp-Source: AMrXdXuY49buXhhXs13+3jTyrBfQYS5KyjXxZA7Xctl3PRbn9MPHr/SBskYK/YEOsecaeO+DORl5lA==
X-Received: by 2002:a92:d44c:0:b0:2eb:1f07:5a7e with SMTP id r12-20020a92d44c000000b002eb1f075a7emr1950542ilm.0.1672128291006;
        Tue, 27 Dec 2022 00:04:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:12b4:b0:304:ca87:c0ba with SMTP id
 f20-20020a056e0212b400b00304ca87c0bals2774457ilr.2.-pod-prod-gmail; Tue, 27
 Dec 2022 00:04:50 -0800 (PST)
X-Received: by 2002:a92:7409:0:b0:307:7cf3:ca79 with SMTP id p9-20020a927409000000b003077cf3ca79mr14187345ilc.22.1672128290547;
        Tue, 27 Dec 2022 00:04:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672128290; cv=none;
        d=google.com; s=arc-20160816;
        b=lwd/ZNtPrjkIjtUGPAU20KrgbXcn7+a7BgkPF8sqUKoaeb6RSTGyszgk6RqtJ/Alb4
         tPiweBuPk7nAwBJxsuROmlJp8t8f0NyRmchfFf6p/KnpzID98C7Ty/BRl9SRngq4Mz8e
         ennwU8pJCfjJZFTmnHAhYG2mPT2sG2CtyniUUYjaySV5alAT466xN/db4bRVrZOcS5eJ
         cp4YrrZcXZFB8esRF8cq+vINUQbxlr+QDMU2UOSCqRrQMN5eeWrkh6VRD/z4lHW/AkBP
         mdxSQS4yVDiklgyY9rEOtEILcfGsbWqeaWWU9xWw9w1Et2luRfMBObN7m5T0ja4amqEN
         DWDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=iuOY+Wc1xwO/SVxs7dLjbuVshll+1jdEkREvJ7XUtco=;
        b=VFUMY+WU19EG1zX6jjj/ZmrBZ27SRaJ+/ggrzZD3Cz/FhqlJYKfxEBbCxcJ27SYYbw
         Di2E1Mb7LmeZQPu/FMPoq1GMkS1zlFmNVJsZdi+sMaasARIVIi1MpXgLhInIQiiMkUyv
         Msocxo7LE+iP893PYcH24HMrQu73XYoDOBVlT4vAxUa0TR3DLQMXPJxybUEw30x5TX54
         +Crq3l2DgxksZvj6pF9gqUbLmWdfHssN54Tb1M3jjwV+4ro6eTLuo9OSauqGPMz9e8cp
         4rkocIzKVkmOwOpIfVYhvU6jI8sHWGHW7A/4IDNw6qKJd75MDYDUTFT82QisItAEWAKP
         fmfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=L0FAuJyt;
       spf=pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=nancy.lin@mediatek.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id x1-20020a92b001000000b00302df8abfa9si894335ilh.1.2022.12.27.00.04.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:04:49 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: ec2ff9a1c8584046a3c76c4310b8233c-20221227
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:7d960c87-f5fd-4ed8-bad2-17ca4f35c8c5,IP:0,U
	RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-META: VersionHash:dcaaed0,CLOUDID:37ac838a-8530-4eff-9f77-222cf6e2895b,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: ec2ff9a1c8584046a3c76c4310b8233c-20221227
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw01.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 520055872; Tue, 27 Dec 2022 16:04:46 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Tue, 27 Dec 2022 16:04:45 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Tue, 27 Dec 2022 16:04:45 +0800
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
Subject: [PATCH v29 01/11] dt-bindings: arm: mediatek: mmsys: add vdosys1 compatible for MT8195
Date: Tue, 27 Dec 2022 16:04:33 +0800
Message-ID: <20221227080443.6273-2-nancy.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20221227080443.6273-1-nancy.lin@mediatek.com>
References: <20221227080443.6273-1-nancy.lin@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MTK: N
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=L0FAuJyt;       spf=pass
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

Add vdosys1 mmsys compatible for MT8195 platform.

For MT8195, VDOSYS0 and VDOSYS1 are 2 display HW pipelines binding to
2 different power domains, different clock drivers and different
mediatek-drm drivers.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Reviewed-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
---
 .../devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml      | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.=
yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
index 0711f1834fbd..242ce5a69432 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
@@ -52,6 +52,10 @@ properties:
           - const: mediatek,mt8195-mmsys
           - const: syscon
=20
+      - items:
+          - const: mediatek,mt8195-vdosys1
+          - const: syscon
+
   reg:
     maxItems: 1
=20
--=20
2.18.0

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20221227080443.6273-2-nancy.lin%40mediatek.com.
