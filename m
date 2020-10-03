Return-Path: <clang-built-linux+bncBC27X66SWQMBB6VG4P5QKGQEKQLL3BY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D61B28265B
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Oct 2020 21:39:40 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id v10sf2222302pjy.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Oct 2020 12:39:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601753978; cv=pass;
        d=google.com; s=arc-20160816;
        b=YlQgnzbRPJOlWdfg9xZ4rQ5ucQrOLnTFAh/R1aHCdnR17cjXHb5JRK/SL87ec3cVG+
         JcQmP0mwrzk5fsUpwwZtrMIccgJComlLPfZqHvqaD10BqWEOCtbKCD5MVUYfvPzXccQ3
         uvXW9elWauFwFh43SA/DDr/5cSEPjKKlCmf0Sa+5W8n/SeFb8zCXdiEdhaYuohHt2VCL
         EgsN0ZVw6LeNkEK7NTwzgKW3KUE3f4/P3+75tlMNdS0q5Lo6isT9UapBSizB1Pt7fZFY
         gtaSuwFYFb/DzQaU6FonAmdQUMpnS8Ul52HP30ZGhtQgo9xTMBLe5gefEKuisf3XgKTA
         XjFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=SxgKjjJrblGgd0/RK94CE6UbQGZZ/vnWDghNRhKGvjo=;
        b=VrKfYKYzjECxtN1SmClRY3Wj8JJ8HF7HX6XucrNUtiT4KwLuFTKe5zGo0dTBLmfyd9
         kbOJe1GJgyA3qCgLb1zYrd1DA6eTolhf1cGswq7U+HGlGSp02HAa/zLYCp41jIl6Chxm
         DOJbB78uxspZQw3Lb8QAjslmuNgcRTm+ZB0bXguYqf74gpykXJPU/aYIgrvz4S2loFKY
         +nxwDLDhC3WJ6f+T58InzTOKTfDLiMx4eT/hHS+FhoBVI3MzsuclBmQfJ/iUAbWZw9wP
         KICOU14y8jj3pvPODySnhH6kAIba8DzN40vcpKsULxmBO7zUqXfOvT6hvgzGl8rZlGsc
         V3lA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=J0ONx5PG;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SxgKjjJrblGgd0/RK94CE6UbQGZZ/vnWDghNRhKGvjo=;
        b=CBIudu8cCfR9M5XCN0exgolGDf+PJuUNfXo5klRJLSx2YEvg9OBu8rS8K5tYYF40py
         t0YhZen/UajbODxZ53CYmAtu6N+2VwZwww1efj4sK9DH8KWCLqn5MhHoEBusqUL55KQM
         nqZSKVnOVSzW/vm/K6J/sa701KnPfHjiZGh/GpHH+liMZzkYVDAtMuZdAf/Vt0pQnvSw
         CDGbM402PXzFegFyVcrxIsO/FDULWxz0V5e6TSjbm5UwnZvCAfJ58UZgdA/qeA1ED3QP
         LaM72lpFCevFnycS36sGfxfCyhZiyvJ0stjMtczMCphHN8RNj8F12KCQmeUgUAGXgb2r
         /4MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SxgKjjJrblGgd0/RK94CE6UbQGZZ/vnWDghNRhKGvjo=;
        b=iHU5UwBm5xiI5ioR5MKkYVpDqWQpXM10PJl5A89ZuDKJPWWUU5CRXZY6/ipOrWIO1Y
         EaJvhvAzYIe/B8vVGwDl/2+lwSSb+TsPc1qMBSnUihZJm6Bu+D/khD6KgOB9WT3KSWn0
         kmSHhsFOMeNkiJYoLwgfpLN5fdpKaCWyJBfkDA7Nv/BZ4hydd8wEyZAc7f0wNkzxyzEn
         42SXVEz9DlImqnjYMfu+AlO5mQ6GwKCmnF70J15uuji+WwRCcYf91pwZ7PRG8U5Ru3/J
         uTzxF4eEIQLuHiT/W8yZh1TiMHR0/fzHxhP5BFBsdvHdVHJtPTtT3PExjfQdIzhbvFDy
         fWaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531N7KPBdTp5szfr5PVSwYpf8t6FQv05+eMMrmMLh0YkCCHKydgW
	CO6IibxB5p+F8BlyCfrZAkw=
X-Google-Smtp-Source: ABdhPJyEdFKQFirh2iqxZPvVZk3TyWK7oI29KQsyv06/PQ3sLxA0ha/dT2f6d2wsIW0vvDQ27XWPPA==
X-Received: by 2002:a63:5fcb:: with SMTP id t194mr8122678pgb.364.1601753978586;
        Sat, 03 Oct 2020 12:39:38 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c7d3:: with SMTP id gf19ls3617358pjb.0.canary-gmail;
 Sat, 03 Oct 2020 12:39:38 -0700 (PDT)
X-Received: by 2002:a17:90a:ed8e:: with SMTP id k14mr8956426pjy.178.1601753978039;
        Sat, 03 Oct 2020 12:39:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601753978; cv=none;
        d=google.com; s=arc-20160816;
        b=lzCjrEtI4M8MyoFMWPKZNcIsn9oPDXFeTfhDZVlWlvdSm4zgsHYdHvjHAGD5H3oxKq
         dfF0T4cZLqyp3sKGl0dyOiLs8FJ9YCO+a7qRgpoqxLNVlR6yJXihIIa6sZ5ndzGcGqK/
         lMdbcxFZShJW2qzpofL3S1iw7VymKG6meMooCdSXXRFt6xj30UWn8U7tkzYilpIQEAEZ
         aydixT/xpCyOuVAk2bLr/neRo7qN8bN0Cv6bxT5N+J1gKyadEaMlHMfMdvmG9zC+yMG1
         FeveslpEQfgFOhdGEwYxDcEhDiGeeeWgkfA0MGaDmAh2/8sgcouGSKKElidPkppp7Z8n
         aFbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=1IoI0EkrFuvdFZWNYyFFEEON1f+8fthEHRT5ClyKvFc=;
        b=OETXFjuzCbAxLD6aOUQB8Ds15EsC1irwLHq2UhJF8/6ikkJR2Cbi3EtajnIHeQKBqi
         8J+/lUTXNcKMGdJWyaYkX9TcP0NQF3StQz1YkYdlW62u+biOyssFtAUK2DTdZjnwRUGH
         WMCWgW/QDHYvxJaM7KRHhuRtojc5zKNUSTd8hQhXQ8m39bp0/CcVOJn9j74oe/lqdNtO
         ksNBIUvvaPoWBATbi9shH9e/OQwn+RW/ZQi3PXXlil+5NLX4C/rgwfFoBNQMRH8F2moB
         BKBzVmvFrE369LuAKlHiNWdzeFBqggWYbKzATd1MZtvNJ91BGKeZeEkGc2/rie3CbgwZ
         BJRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=J0ONx5PG;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id f6si279321pgk.3.2020.10.03.12.39.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2020 12:39:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-351-nlwWSqzlMbSAV-5JCQzADg-1; Sat, 03 Oct 2020 15:39:35 -0400
X-MC-Unique: nlwWSqzlMbSAV-5JCQzADg-1
Received: by mail-qv1-f72.google.com with SMTP id p20so3170858qvl.4
        for <clang-built-linux@googlegroups.com>; Sat, 03 Oct 2020 12:39:35 -0700 (PDT)
X-Received: by 2002:a0c:a203:: with SMTP id f3mr2723795qva.33.1601753974803;
        Sat, 03 Oct 2020 12:39:34 -0700 (PDT)
X-Received: by 2002:a0c:a203:: with SMTP id f3mr2723789qva.33.1601753974628;
        Sat, 03 Oct 2020 12:39:34 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id r187sm3730335qkc.63.2020.10.03.12.39.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Oct 2020 12:39:34 -0700 (PDT)
From: trix@redhat.com
To: patrik.r.jakobsson@gmail.com,
	airlied@linux.ie,
	daniel@ffwll.ch,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	alan@linux.intel.com,
	airlied@redhat.com,
	yakui.zhao@intel.com
Cc: dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] drm/gma500: fix double free of gma_connector
Date: Sat,  3 Oct 2020 12:39:28 -0700
Message-Id: <20201003193928.18869-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=J0ONx5PG;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Tom Rix <trix@redhat.com>

clang static analysis reports this problem:

cdv_intel_dp.c:2101:2: warning: Attempt to free released memory
        kfree(gma_connector);
        ^~~~~~~~~~~~~~~~~~~~

In cdv_intel_dp_init() when the call to cdv_intel_edp_panel_vdd_off()
fails, the handler calls cdv_intel_dp_destroy(connector) which does
the first free of gma_connector. So adjust the goto label and skip
the second free.

Fixes: d112a8163f83 ("gma500/cdv: Add eDP support")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/gpu/drm/gma500/cdv_intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/gma500/cdv_intel_dp.c b/drivers/gpu/drm/gma500/cdv_intel_dp.c
index 720a767118c9..deb4fd13591d 100644
--- a/drivers/gpu/drm/gma500/cdv_intel_dp.c
+++ b/drivers/gpu/drm/gma500/cdv_intel_dp.c
@@ -2083,7 +2083,7 @@ cdv_intel_dp_init(struct drm_device *dev, struct psb_intel_mode_device *mode_dev
 			DRM_INFO("failed to retrieve link info, disabling eDP\n");
 			drm_encoder_cleanup(encoder);
 			cdv_intel_dp_destroy(connector);
-			goto err_priv;
+			goto err_connector;
 		} else {
         		DRM_DEBUG_KMS("DPCD: Rev=%x LN_Rate=%x LN_CNT=%x LN_DOWNSP=%x\n",
 				intel_dp->dpcd[0], intel_dp->dpcd[1], 
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201003193928.18869-1-trix%40redhat.com.
