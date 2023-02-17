Return-Path: <clang-built-linux+bncBDHMBT5YSUGBBMPBX2PQMGQENPKGNHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 043EC69B165
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Feb 2023 17:52:03 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id q19-20020a5e9413000000b0071a96a509a7sf941062ioj.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Feb 2023 08:52:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1676652721; cv=pass;
        d=google.com; s=arc-20160816;
        b=JRIPPbRXM6J0IendPiZFPnqYrT97m/aXb2c7HKMEwwfUVq10CAmhpu6DOw2fkbqmEr
         Ty06AQ1RTddaeji0xcntHHP7TMHCOajdlYrInMLznuWdz2A5U9Y82EiPA5QxPyJeh0SK
         SoYcAt7RyEAITcZebBe41AxFUNDI3T0BPlB5+Yl6K9eE+iQxhChwisaBBuyxN/lEkR4D
         yYPhdAWDhERYw0Rb+8FjoyR7IvbRUYKgovyfSddMDa5DhKDjH4U8ni5W8vAqaw/S1Pi/
         lqX/EZ1l2DmG+scTEWLsPlfmzGZHYKY+m4PP1NodcmrUMG1XCJWnC1k1Y9lR+b2GxPxX
         cCKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date
         :mime-version:in-reply-to:references:user-agent:from:sender
         :dkim-signature;
        bh=n3ynvetkGgY+8GKHttYhc/ehoZTNVdOdi0NUOLe3N5M=;
        b=pkrkJBq78kYC2KOVXw2zeLkFYgdobW1UTlykpvVPZu+QqNbkoK+CXnDw2WKEczb3lL
         SItSDbjdjpT3AdFqVOQPvNejgkHE0KXiIxSG2Qch8LGl47Q018vxYoYgad3EaDm49xbs
         9+H3fa3nJjR8vG4Qa8bJdfNmo3erdb6IVX7Vg4iH2uKc5yeQjKkXEZhnoSzEBm0I5K0q
         UetqySEp10yobaIleRaXR5lnegAN00O3eLdLI3BHZdpnp1Wzl02F1MAz3kQ17ujzkA80
         Ohsr6anZqPkVq6V2qh5gLNS8uiMa25oyFmw59doTNc/mEbwhMn9oqorldZYxp4pcPc9G
         zjPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20210112.gappssmtp.com header.s=20210112 header.b=ngjtQMSn;
       spf=pass (google.com: domain of granquet@baylibre.com designates 2607:f8b0:4864:20::82f as permitted sender) smtp.mailfrom=granquet@baylibre.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:mime-version
         :in-reply-to:references:user-agent:from:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=n3ynvetkGgY+8GKHttYhc/ehoZTNVdOdi0NUOLe3N5M=;
        b=kv9cKDvja8ng1oa+W/Re5ftWnvcn63t01ffbdtZu9DFASFIBKuSFlBz18QfTbf76mW
         u5o4pgdvOFYjUgr/8MnApz75BpjUXRjMnCmaU1q98zkml8s1iXxRj7fjKQd8hi22viua
         tXWXe1AgVHmY7MLK7eNVWy5xmcZs6JunCz+PexEWGTd0Wht5MrYpj5nAZN04FjamX5/P
         WdpxbP8vYTbABJlG9yiiMkIivbvsN1s09o3JO4ojSf2AYwboaOc7OnyVKHM7/JbMY2Q8
         Y2JlU7mJwZn7YVlt+48N7urndsiCCVKQx+b85cyNT8Apm+U1RIKQ1cmT1HB9Tc74XF6u
         SO2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:mime-version:in-reply-to:references:user-agent:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n3ynvetkGgY+8GKHttYhc/ehoZTNVdOdi0NUOLe3N5M=;
        b=Saqn6QDDfZ8G6NijcQJWz7S7LAxxfLss2eG3t015QxK0skBGtYAIAJSiF6VpoOvdzC
         tAMI2okh4Ge/AdwGObp1gqKMLcXFBJALOs+HKu3WTASvO8cjnLLHriZ1XggzkESsTT6K
         xSa/3DIf9cr6EysRgSu2mZdp27k/lYifG3JVz1MiICmI99JhHgEi6qc5dRDDceIoy1Ic
         AH+RU6H5En0uNzAq8tt27orfWCHRjsyDYBMhxYy8z/7qvmH+0xs96ATpAsgOs2CKyEkM
         zghA0D/jzNNjC3bIxc18VBApXFWFHADi53iKz8ol9LwLXftpV7VKbamGDw2bqE5WK5GH
         TH8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AO0yUKWQsS1ubE6xfksa5QSKX923cDZjJLUNZjI8MBsY2eX7YFtXdvVm
	mliynVnku+Qx9JolopVu744=
X-Google-Smtp-Source: AK7set9mDm1Fgz28nzJuu8njzMSUr6BmAUL6hBnGKC8ppMOiV9rBEnn7n5J3VAUm35ZxArtSjOFUlw==
X-Received: by 2002:a5e:a609:0:b0:740:6704:6d9f with SMTP id q9-20020a5ea609000000b0074067046d9fmr3281136ioi.3.1676652721413;
        Fri, 17 Feb 2023 08:52:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d3c5:0:b0:30f:4f58:8670 with SMTP id c5-20020a92d3c5000000b0030f4f588670ls426202ilh.10.-pod-prod-gmail;
 Fri, 17 Feb 2023 08:52:00 -0800 (PST)
X-Received: by 2002:a05:6e02:bf3:b0:310:af8b:aaa2 with SMTP id d19-20020a056e020bf300b00310af8baaa2mr805251ilu.15.1676652720860;
        Fri, 17 Feb 2023 08:52:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1676652720; cv=none;
        d=google.com; s=arc-20160816;
        b=1Egc6wKrc4yee03MqDrcp+Vict6g7qF2X9YtI+fAJhlyVx0deCAh2bBogRcgAQS6l5
         8awePlxhSjZKFaVhT6bqS/S2AnUSjkxs9LBGJwm/uw5EqT0cW0YGzawb5FvK8LHfm2vp
         WPqfRm1BA8Wq9McWBZDnnNgaNMF26LnVpYJfk6J8Yn2f+UhoN8zA1OKyaRHZxyjlgawG
         ikjsJo7q8T7QZazZR+ZWsge3qKeCm/o4Q8DrH2Kh9oSnki16xmhI90/8lk7rXEuY6ZQk
         0uurDEQOCteIper1TzvE44hWDdS0Wr9mxBMFRjhHFoPip80whFFrEH63yf0xPjQPLohW
         7xPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:dkim-signature;
        bh=+lujNOKm++OPcngOcRGWEnMWSJ9dfFfJMQ8v/5cWU2M=;
        b=V74wSUFtkRxsx3hXKpvkqvFy/6d/aT1FDMRnZkCEigkmy8ctFRQABM917jtnOg3RKO
         fvGLcMZXegC8bVSrgS15G56PgibD5WMkwEfxsau82JksphRiW6Gi8TZZii+rXUgi1wCo
         raCc78755U4G61cMONn2Uj3hmqKarrT9ELFF/VSVjnF8wwUH3GzGBIjYGRIeseWplYuE
         HWC4803qJsKi3yCeBTAo4jKnLjeCuCBjYTu5Vn3bCuiFdGBwk+73QXwotrvpMyKU7LiR
         m67BTh6BjaF2iZpaEC418MCwCiAMxU97QBFhVYO5F9xz9iPeJDx7TOxZ4YsySm0GuOq2
         ujRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20210112.gappssmtp.com header.s=20210112 header.b=ngjtQMSn;
       spf=pass (google.com: domain of granquet@baylibre.com designates 2607:f8b0:4864:20::82f as permitted sender) smtp.mailfrom=granquet@baylibre.com
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com. [2607:f8b0:4864:20::82f])
        by gmr-mx.google.com with ESMTPS id j18-20020a023212000000b003c515012e49si203544jaa.1.2023.02.17.08.52.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Feb 2023 08:52:00 -0800 (PST)
Received-SPF: pass (google.com: domain of granquet@baylibre.com designates 2607:f8b0:4864:20::82f as permitted sender) client-ip=2607:f8b0:4864:20::82f;
Received: by mail-qt1-x82f.google.com with SMTP id bc7so1257725qtb.0
        for <clang-built-linux@googlegroups.com>; Fri, 17 Feb 2023 08:52:00 -0800 (PST)
X-Received: by 2002:a05:622a:1f98:b0:3ba:1506:f2 with SMTP id
 cb24-20020a05622a1f9800b003ba150600f2mr963995qtb.2.1676652720158; Fri, 17 Feb
 2023 08:52:00 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 17 Feb 2023 08:51:59 -0800
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20221227081011.6426-1-nancy.lin@mediatek.com> <20221227081011.6426-5-nancy.lin@mediatek.com>
In-Reply-To: <20221227081011.6426-5-nancy.lin@mediatek.com>
MIME-Version: 1.0
Date: Fri, 17 Feb 2023 08:51:59 -0800
Message-ID: <CABnWg9s1L2Gk5EfNW22HUJVTCnFyo+YvrjQL16XqyLYEf20Fyg@mail.gmail.com>
Subject: Re: [PATCH v29 4/7] drm/mediatek: add dma dev get function
To: linux-mediatek@lists.infradead.org, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Matthias Brugger <matthias.bgg@gmail.com>, krzysztof.kozlowski+dt@linaro.org
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, CK Hu <ck.hu@mediatek.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	clang-built-linux@googlegroups.com, 
	Project_Global_Chrome_Upstream_Group@mediatek.com, singo.chang@mediatek.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: granquet@baylibre.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@baylibre-com.20210112.gappssmtp.com header.s=20210112
 header.b=ngjtQMSn;       spf=pass (google.com: domain of granquet@baylibre.com
 designates 2607:f8b0:4864:20::82f as permitted sender) smtp.mailfrom=granquet@baylibre.com
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

On Tue, 27 Dec 2022 09:10, "" wrote:
>This is a preparation for adding support for the ovl_adaptor sub driver
>Ovl_adaptor is a DRM sub driver, which doesn't have dma dev. Add
>dma_dev_get function for getting representative dma dev in ovl_adaptor.
>
>Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
>Reviewed-by: AngeloGioachino Del Regno <angelogioacchino.delregno@collabora.com>
>Reviewed-by: CK Hu <ck.hu@mediatek.com>
>Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>Tested-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>
>---
> drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 15 +++++++++++++++
> drivers/gpu/drm/mediatek/mtk_drm_crtc.h     |  1 +
> drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  8 ++++++++
> 3 files changed, 24 insertions(+)
>
>diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
>index 112615817dcb..78e20f604158 100644
>--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
>+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
>@@ -58,6 +58,7 @@ struct mtk_drm_crtc {
> #endif
>
> 	struct device			*mmsys_dev;
>+	struct device			*dma_dev;
> 	struct mtk_mutex		*mutex;
> 	unsigned int			ddp_comp_nr;
> 	struct mtk_ddp_comp		**ddp_comp;
>@@ -865,6 +866,13 @@ static int mtk_drm_crtc_init_comp_planes(struct drm_device *drm_dev,
> 	return 0;
> }
>
>+struct device *mtk_drm_crtc_dma_dev_get(struct drm_crtc *crtc)
>+{
>+	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
>+
>+	return mtk_crtc->dma_dev;
>+}

While testing out the HDMI patchset for i1200, I've ended up with a
panic here with crtc being NULL.

I've fixed the issue on my side by testing crtc prior doing anything
in that function.

Not sure this is the proper fix.

HTH,
Guillaume.

>+
> int mtk_drm_crtc_create(struct drm_device *drm_dev,
> 			const enum mtk_ddp_comp_id *path, unsigned int path_len)
> {
>@@ -953,6 +961,13 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
> 			return ret;
> 	}
>
>+	/*
>+	 * Default to use the first component as the dma dev.
>+	 * In the case of ovl_adaptor sub driver, it needs to use the
>+	 * dma_dev_get function to get representative dma dev.
>+	 */
>+	mtk_crtc->dma_dev = mtk_ddp_comp_dma_dev_get(&priv->ddp_comp[path[0]]);
>+
> 	ret = mtk_drm_crtc_init(drm_dev, mtk_crtc, pipe);
> 	if (ret < 0)
> 		return ret;
>diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
>index cb9a36c48d4f..f5a6e80c5265 100644
>--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
>+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
>@@ -22,5 +22,6 @@ int mtk_drm_crtc_plane_check(struct drm_crtc *crtc, struct drm_plane *plane,
> 			     struct mtk_plane_state *state);
> void mtk_drm_crtc_async_update(struct drm_crtc *crtc, struct drm_plane *plane,
> 			       struct drm_atomic_state *plane_state);
>+struct device *mtk_drm_crtc_dma_dev_get(struct drm_crtc *crtc);
>
> #endif /* MTK_DRM_CRTC_H */
>diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
>index 2d0052c23dcb..364f3f7f59fa 100644
>--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
>+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
>@@ -71,6 +71,7 @@ struct mtk_ddp_comp_funcs {
> 	void (*bgclr_in_off)(struct device *dev);
> 	void (*ctm_set)(struct device *dev,
> 			struct drm_crtc_state *state);
>+	struct device * (*dma_dev_get)(struct device *dev);
> };
>
> struct mtk_ddp_comp {
>@@ -203,6 +204,13 @@ static inline void mtk_ddp_ctm_set(struct mtk_ddp_comp *comp,
> 		comp->funcs->ctm_set(comp->dev, state);
> }
>
>+static inline struct device *mtk_ddp_comp_dma_dev_get(struct mtk_ddp_comp *comp)
>+{
>+	if (comp->funcs && comp->funcs->dma_dev_get)
>+		return comp->funcs->dma_dev_get(comp->dev);
>+	return comp->dev;
>+}
>+
> int mtk_ddp_comp_get_id(struct device_node *node,
> 			enum mtk_ddp_comp_type comp_type);
> unsigned int mtk_drm_find_possible_crtc_by_comp(struct drm_device *drm,
>--
>2.18.0
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABnWg9s1L2Gk5EfNW22HUJVTCnFyo%2BYvrjQL16XqyLYEf20Fyg%40mail.gmail.com.
