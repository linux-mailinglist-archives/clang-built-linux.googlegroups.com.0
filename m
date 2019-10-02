Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBSVD2LWAKGQEMH7P6IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1E7C87B3
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 14:02:18 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id i10sf7383724wrb.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 05:02:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570017738; cv=pass;
        d=google.com; s=arc-20160816;
        b=pKDKwz/NG2y2LdSb11Bw3UjkqPQbaQFY/2HHTFNF9q64yyhOZLoLK2vqLn2FQmyEfE
         Dnl3Y0Kfq/K+BfZ0uJa/BOkyG/j1HOTfx5WJwpQIvv+woqt6V3Odx6U/m+9yYSgy2Q8Z
         hwKN8n90MyVlfY9iHEgDmIoVcKZIZK5up8vQVXHGs9NnW/F//awAQK/tYZZXe1qgBFI7
         izi5rI7scaDXFYKZznH43kuWt2mnA8swU8jrgpUdSsJOfgJnniitphdDULxvME6BEnZQ
         7F9gBlqpZqrEhZWc7E0Lk4dpU9unH1eMeYAUv6+ynHMoomiGzvgb7D6/lIf6EYhj7W96
         1quA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tbBrelX/ywVAZkc/iE6wNeYtVViFclg6SIDjXLZeHFc=;
        b=IHA2BT9mPerMoo2i1l0Pzohnis2RVLqBGPCWiTt2VQuURqUNzHjPGXf4FO2cqZeViU
         LP36DZTBVAnxwhRLvY/gudP9bZcG6BGs5GlR/vmjRyx/Gz20BaS7bhzf9NYMXm7k+ukO
         9h9UJHtgH/6sjzSD2cEjy0KQ9PNJ0GsbC52hfApldNL2tec15PBOuBYGw5HM59YINSt3
         I3wrgj/H+/rykENu8CxtEKKaOVWsvdCFn15KBSiEKSLtnjuPLoMRUQh5rG3gmlLmQBjm
         1go9Io3EMV7K1C6WHcuKtblRgNXr6Et9rcA9dDRCfmsjn9z8WUyHuwLbn4iCDVtiHB8E
         Ya6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tbBrelX/ywVAZkc/iE6wNeYtVViFclg6SIDjXLZeHFc=;
        b=ELBGeVld2kFAiNwqAFNrenyctl5upAyfgjv8i/IYZAqRCNprvyv7bs9Dq5FiPkmCKg
         aVULtBw/v4RjCsuHQm4L4mkXxQjNNZ/T2vfxtYQpNomUHff/4w8XtKZ1z4l87F2Vx7Cm
         UvWCSWlAOcroZaNH4NC75GB89G6ipfl4DufFBvRYfW4cApZfRHt/06wJW0voF+27yvEg
         JVPvzu++QPFZsT7jOSvBvG6Qb9AoobHNeFWvhUoqMqY4NGukZf8tvibJiwi9ikCvnPp5
         HikHgtBM+TV45lkTOgEZaGXsG9rrfY8+rGCbDcwSmSHbyo6NTtuCuISe93qErOXmzX9o
         9qfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tbBrelX/ywVAZkc/iE6wNeYtVViFclg6SIDjXLZeHFc=;
        b=WaqJ4gom3xqiYS4XGFf4Cn5w8OKflDp1UBl4Z67Yt/Wm7vrrFPM6Dh5zBeqV9sQeaV
         R6cKmjTn9MvNjOvarmQVQtJQ0U0rhxDhwhtLhhxR+i2FNqtsnoxHr2lu8e7KiDhxhngn
         zEZnMlZ63faETs3bK21atm6IwJwicjiNH30ZffeJwcrmURtJW3B2uqKcANEyKrUB5x62
         vh0P131pcCey+emCxXPENyRO2NA/IWPMMJO6Mp7LA3be7DbdNntkUgVTmpL6IrlxjUrL
         0+j/TAuj1huwmtRPLSbta16EVX+qaV+BqeVutSnIzFnh93C1xs+HYfPiBL8QrnFDCUoS
         yF/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVOpEwfF+Mqkqjz0gVKGg+pwBd9/moPDcbZsaQh9nfC77z2NDh1
	c6JKJ7YPJ0XzrhiSyEpxVQQ=
X-Google-Smtp-Source: APXvYqwuoyFTm23hqKeweBwN3F0DjJInfJuBrRuNUIlkmknUjj85DHOI5wn6i2eEFE54Yck8walj4Q==
X-Received: by 2002:a5d:6704:: with SMTP id o4mr2439596wru.365.1570017738244;
        Wed, 02 Oct 2019 05:02:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c0d9:: with SMTP id s25ls837146wmh.4.gmail; Wed, 02 Oct
 2019 05:02:17 -0700 (PDT)
X-Received: by 2002:a1c:cf8c:: with SMTP id f134mr2710041wmg.174.1570017737822;
        Wed, 02 Oct 2019 05:02:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570017737; cv=none;
        d=google.com; s=arc-20160816;
        b=V9uIqFgF4rgjgkfTDB/+/kwdEEAs+36If4truK0H1yIIAjs4sPBIX3odaCAO2iZwl2
         H339cUCa0T8Azpie+6rovmyzZu+qI+VnMn2KkKrH2XuTbHgXreUIMTbg8q0ZCa3TNpo7
         OF9dSnNibV3yk0JCrRMGfwl6axIZFl9abOcLqsTZcUZxuL8Csit0SUfrsPSbcpHKZQ/j
         RXcWehJz3/V25zzE8dMRW7K1E9a6M5XKvA30obRUficEgJVHYOpsb6Tzz/DdvPbeU0CI
         j43NnXEA5xS5EvAEtdsMxKzO4ewPD50vESyeDziPljSjhKg0HOLFQ1pq7b85STdvo8wK
         S9Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=4F0oej+I69313bml+9BU0OeBmx8QQ/qnStkG+OzAh8Q=;
        b=gxyCjAU0/c/fQCkaH4jDUDuHUHq0Iy0OLu/XsJzNd2xZzGPBV1AI9WmzC063mo46M6
         Fw2kRxi63Nhp9T5/hYEgdEIIzpHASutdonc427+83bv4ph743nf1JG0VwQc5pHobgqzZ
         D8fdoJZX9AT6SqjgihSDrgkmvHs7j8cDyWNi1YrbOt9TQ76OM5idCx9LOP9VEO966bhp
         TPB/7E8Dh+7A9Bponqpsle7fjsMs0og+N5lsDUF0ga8yI7f8PBSxUnr5qy+qRqg/3fML
         R9y9vtcIZhp3V9y5aW9Qedt8u22/blh9FeOWMQz0OK4ss63RySaQjeB9aDb0yAGrR7ex
         OiIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id j4si866585wro.5.2019.10.02.05.02.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Oct 2019 05:02:17 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M26iv-1iI7En17CD-002Te9; Wed, 02 Oct 2019 14:02:16 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: clang-built-linux@googlegroups.com,
	amd-gfx@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Arnd Bergmann <arnd@arndb.de>,
	Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
	Luben Tuikov <Luben.Tuikov@amd.com>,
	Hawking Zhang <Hawking.Zhang@amd.com>,
	Huang Rui <ray.huang@amd.com>
Subject: [PATCH 1/6] drm/amdgpu: make pmu support optional, again
Date: Wed,  2 Oct 2019 14:01:22 +0200
Message-Id: <20191002120136.1777161-2-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191002120136.1777161-1-arnd@arndb.de>
References: <20191002120136.1777161-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:a5b90JQEWWEeBtwVRSZFjdGm9b3I8/kdLc+6ckDpRAohLoCOLNA
 Zt4AJ464Pz/isbP+TP5Kwc89OJD3wbonPMlq/qENKAvYZB1vR8s2mS577y7JdJA+FtGwNAm
 wv5IefPzHdJPWeBjXQg9O5pmwYi/FuswYNw0pL0xXRdmWyFBmcYgbalu8WPFx9G3U3VFOwc
 JV8P3sVH+zYNVEG8X0rNA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gCX3Pclsid0=:2lnBRc1wB+VF4RSpdJj4pZ
 fUwT10GYvO0RsxFhbCUbiaYIcMydMqqMM56ICOu4Ar1iEzLA4bLtuE2kjxLk3E61oljDTaPkf
 wXWUN+FYoFQZQWg014b8ji+w/TzQmvBIydjneTRzjw9psnZOH3q5kd80JSSlTOnA5Jt67faFG
 SYCwOoaeaeEtyr/LzIBPSSiHFfWrZbolvAJf+P+OHRNrDttMBmClrSGBtWEHMIDhcCTWZCmH+
 KUwJthhWAqgwIsI8zMc3w6APokxYyO2Kk6mtyu6dbUxL+aI5wbfuFvVdargQIKy18Xl8AXRJQ
 Ar5fBn73URH/PbHM3bXFfH5owy4aqZQH1Wlmo2KX+5RuhkTt39ba/QWvPM/XvPqs2DrU1baxQ
 nb2CwF7ucyLT0T5sXzHUyHVxRXX6BEolSLzfLJVqgvIJJ2oL4l09qlg5XssKdoTaQ1vRXznKo
 F4yZjZir9RbLuE9lmQY0Vtq8aK0/4cjErS/JUIjIkIrKWtXg/TrklmkwdSW6uhZht8QP79+rR
 YiTKNAZNKZgZm67NQjHOA7Q0e11HtM8B/ofPgXvvw7jQ+x/zfD9oZHQ7vqOttg1o+lGBRbzck
 5zjXRHACBqPhJHjHWh5Vt3nfHftZs5meLjT4MX3KhCD0cl0b+/DYY38aaNnE/h9wkkK7tIm2N
 RFcnie4SKAfRNC+zeaTqhxo8Ev5EiDVg5ux1iynqkEof4uorAWjyW4tptFFCCdtP61kGptB8U
 uNvPiWYiK8Aimjr+Yvc8D8lnxzzHqeDhSu5CjfukuG/ZSylarKgsyDwQthMBs/jFRpZLNFlt5
 WJyAJYvPyrCxWFwePNBukYvFe8lg9gXEZagcgcVxUYOK2kUvaVa7GMOKNylTYpmjw6txrjPoa
 BhFwQrKLI3BWRiiXf1UQ==
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

When CONFIG_PERF_EVENTS is disabled, we cannot compile the pmu
portion of the amdgpu driver:

drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c:48:38: error: no member named 'hw' in 'struct perf_event'
        struct hw_perf_event *hwc = &event->hw;
                                     ~~~~~  ^
drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c:51:13: error: no member named 'attr' in 'struct perf_event'
        if (event->attr.type != event->pmu->type)
            ~~~~~  ^
...

The same bug was already fixed by commit d155bef0636e ("amdgpu: make pmu
support optional") but broken again by what looks like an incorrectly
rebased patch.

Fixes: 64f55e629237 ("drm/amdgpu: Add RAS EEPROM table.")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/amd/amdgpu/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/Makefile b/drivers/gpu/drm/amd/amdgpu/Makefile
index 42e2c1f57152..00962a659009 100644
--- a/drivers/gpu/drm/amd/amdgpu/Makefile
+++ b/drivers/gpu/drm/amd/amdgpu/Makefile
@@ -54,7 +54,7 @@ amdgpu-y += amdgpu_device.o amdgpu_kms.o \
 	amdgpu_gtt_mgr.o amdgpu_vram_mgr.o amdgpu_virt.o amdgpu_atomfirmware.o \
 	amdgpu_vf_error.o amdgpu_sched.o amdgpu_debugfs.o amdgpu_ids.o \
 	amdgpu_gmc.o amdgpu_xgmi.o amdgpu_csa.o amdgpu_ras.o amdgpu_vm_cpu.o \
-	amdgpu_vm_sdma.o amdgpu_pmu.o amdgpu_discovery.o amdgpu_ras_eeprom.o smu_v11_0_i2c.o
+	amdgpu_vm_sdma.o amdgpu_discovery.o amdgpu_ras_eeprom.o smu_v11_0_i2c.o
 
 amdgpu-$(CONFIG_PERF_EVENTS) += amdgpu_pmu.o
 
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191002120136.1777161-2-arnd%40arndb.de.
