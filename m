Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB26TYX3AKGQEAQD4CRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63d.google.com (mail-ej1-x63d.google.com [IPv6:2a00:1450:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB7E1E8842
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:00:43 +0200 (CEST)
Received: by mail-ej1-x63d.google.com with SMTP id f19sf221064ejx.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 13:00:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590782443; cv=pass;
        d=google.com; s=arc-20160816;
        b=A5ArdoI3ne/jsqev7qGQqqO3Ee4mi8T0GX5Vc4sCfPiRJWx8uoqQk0e1DPpHCh7lIw
         UUgwO14rfXdfvSZoU7dddrLqSw2osNgNGSCYj4ExOVB7kwYfntxJzK2X3rZ/jaW+Xpzb
         369Et+pjq5Jv2AVy9lUv7m4+w9/5PaNVGHXdoNICI/oa+x+Hq+Tkqp/88FCrLz4j7aYY
         51DAC2FND/b6xk7C7M/XITH9LT0pWbMd0JT/mOTNd7GmAovSxG1BT0AeUk+uGxQniiRU
         +bb1NAQCxHDO/siR5204IonIjT6MhKlB9YtDxHhhBo3ofqqt9h20kJjMvCd57xCxyRFX
         ZvnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=kzQYZxYs2vi1Ao8PuUt77xwcOzchu3G5I2eRSoBak1g=;
        b=oMHZdyVYclk0sxMChO48NnASoH9f3/x7Un/nxjUD3GFh19eEFn5rYoT/m2AWGnz84y
         AqtsSInSBNymhL0bOJ/GYEisD9U5Y+WmNCf66zZmkeEqs6HYyRgvSrCQEoQIRo7Bt1xT
         bidE63Vz0esAupiV05Ni3zgTukGNqS3maJ9/Lpbc3fIHDi37mRrb3PyNZeHtQ7QuZtvy
         xH8n8s0A+Rs7CEAGWb5gm2u5LER3tUO/J3DBvXzBzEc4tRhCdRm2lae8YDurXz49gKiU
         X3NSJ1zlvCFP7g2WSVJLFHjhLkGYITbmx2QNqlR4ryhJ/r/7bC4/RWXNPIPHRGdng7w+
         Az+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kzQYZxYs2vi1Ao8PuUt77xwcOzchu3G5I2eRSoBak1g=;
        b=I29ZWPculia8eEIj/BuuEbgZ/fbpzkehYkev8bYNpsBDYfdFJg8KSw/X+filbv0eFD
         fr3L/dOkwIFmR5e+kNwSjLGsCMUIPvEL06gfdQPHKsupoznaaUpoMoISsuPH5lxUVI7C
         HM3GhWq2Cvz1NzPbqpDpQjgn59mNsSvtfZ1l517JHJT92IOvRUHKxP9pkFuWxwHSuaJn
         tB8uc8+tuX35UC+zs1yCLRcpGXSxV1NXBcnBAQpPAAtcw67aHFzRdvswGOcSHfdcK1Vn
         jCYn21GmXYIY7G2N/0FprEpHU3IZTFDlja1aZW7JGi7QQYk7HDLsot72uEMumm0a9S4v
         uIkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kzQYZxYs2vi1Ao8PuUt77xwcOzchu3G5I2eRSoBak1g=;
        b=sQKGlVkWBXNSou3R7e4LHVGE47bj/CQouAvhBHyA+WbDCi90Iiu+OkN8rBpdqXu+Aw
         gho0mGYQ4EINAMJ8AxOC2wxl4kA7KeStMX73uyRbxkxCtJOJoTYYYl3AOVuj6iTNFNnj
         0UOe/TvlI2AYOGkXhGPdoYuEgxzV6iZeB73OjrjJWCM5zHW+RLbObdaQzOd6Rpk4n+2/
         DcVjtv6UJWCrHxGHsfPzXwlvtu9o7Ff+RnxvNNhRCGEUWEopqtk3bif8ZRY/TmliuJeS
         YKSpEdFaMUsEougZKFrhtdVQQGnVFb/emsrPPEtNMHD5zNc0LuImmaXAjgecqEpvSkhO
         1h6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/Fnvs1I9z7RfJU1qxM8hA4/A4nGQboVJSahNCprMuRiHw7Vor
	H0NW5nI0ZrjGmi/jQLjao2w=
X-Google-Smtp-Source: ABdhPJxoxJoq9f9qyeBdrpOiQ3LPjAfv/REefif6yGh1suy4udyc5r5EG617NUZO+ARmeYqRuMrbEw==
X-Received: by 2002:a05:6402:1216:: with SMTP id c22mr10434143edw.208.1590782443213;
        Fri, 29 May 2020 13:00:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d987:: with SMTP id u7ls238809eds.3.gmail; Fri, 29 May
 2020 13:00:42 -0700 (PDT)
X-Received: by 2002:aa7:cc84:: with SMTP id p4mr10065260edt.216.1590782442756;
        Fri, 29 May 2020 13:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590782442; cv=none;
        d=google.com; s=arc-20160816;
        b=MFRhrIzzgHxYC9swT9RyXOPxdkEODkSDT7FxIg56OYfj+SYb8fI8ZDe0iT2OFZtefP
         m+CI4Iq5RvtHruirriGg5Ws0tkgJ++hxdpoklSFEgRjAARGHrY97SYbLt82rZFjYcjjf
         IBOwrcr3yFNI0Kmi4TQbLv/VrwEETqYJpQEu56yXwmg9bhidarobHz6Cttu0y67De2Hc
         pbEvCNMoBQ7sVcHlLkRhVVvLTzKjHUso8UabQQ4QY7BDT3STmsbVlydQ4pLHSMmNHR/9
         gZGbU8PQFf5o4QuffQ6EZV/Vfx1F9oAlKIgeYBHBxlltqtTisE9GeRKMRry8lyslvVuJ
         NU9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=iOMLDx+BFNI59cJuHrnmOgqwoqsdGMagJPCi14qWa4A=;
        b=eOeVtshJfKe+MZg0Wstpg+GhMgvOIumNJnDmxu55AOcw18mSjMQAsKS8nLpu6jLRQE
         rwgBZ3dtJXgEIJ/f8e05N/cz/g1mXLbTS9Dy8vcKpaHr8h1opILuFbq68uj/+WTymP+F
         o0McUwcOSxaQ0KIp3BAA7WR1W1Kzx3W+kBJfcmUmKTkV9Uof+cCr8A61GbUusjoGDrfK
         /XjZgFCnZgLLUKMssAcbWJqSBOQt7wyTSZlLoUNRCwvppj2arwE7yLhduruHc7YlmUkj
         HhQZ5atONLGHgWEYDkYWyODNwHnrdyhzsCueWhM9kbFv587NDWY5duTKDsKimpUR+CC+
         ltlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id cm25si499748edb.5.2020.05.29.13.00.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 13:00:42 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MryKp-1jAuTP0z7F-00o1uJ; Fri, 29 May 2020 22:00:42 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 8/9] staging: media: atomisp: disable all custom formats
Date: Fri, 29 May 2020 22:00:30 +0200
Message-Id: <20200529200031.4117841-8-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529200031.4117841-1-arnd@arndb.de>
References: <20200529200031.4117841-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:qJ+Rt2kztW50CUtyGkYL0hFqj3O3Tr4F/pY389rx0O6o6EIN8vC
 1lCEbUfSh8FP7dkPqxLoITkuB6a10nWMuZak7qSz7LgZdyHDIgSAr52nLeV0cn1dTs/hNmJ
 qpzPc94azOr/MuKJcOKoEoEreNOP6BcKL/2tOmAOeoWEyF8UcVfW7afpZWrgtQDdl/P8taX
 kttbZO/XccamWEPS4281w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:prz40u1jyDo=:zd1Jik3K+y7oBmpr6xyGwg
 rqYC7cD7GAinKwyfFDLJIzNdgZF+PStBCYdWKfM5Z6l1JCPDhCUHVnLV4kiOdEFBxeTqB78pg
 gQscXGQ4I1kkKkbWmu3A5RXK1lgcBmO7f4tCGOrqewtuMXbxEDNpfXOIla0EEbOzT1TJYnGe5
 r0aR1aew/b5GJA6z2iIErBg9aKsA4b+lhCBa8FSVUwvRyWZmAAK6Sod/CieWy00ypIU4R5wYJ
 aM02E3XARxdVyoO2wTVJwupb5q58h6zJaWWJrZeK8Qn09C0KCp6iaClxza2kS3mVW753gVhzK
 UjlVi4Dtm3C0jZj2hFWZgOhI5T4GgZ90gsnxs2d0lgiZRKn5pcsckU6J0shqp6y1brOOn/2u0
 Q+VqH2unQnN+jF63VGLrP11UVPZhe90/IqiqGNYdjy4W/4643JQ9JRVCoKilzzO/tNSAUVCmG
 IFlWjPlQZZGM1Xu6gboffg4AEiLlif2lZUrclbEkt/4JIoYGFsBAzZNpk72+LDXLWTm652cg8
 hnIs03JuPbvrkX0fp1zdiUdF7S/1JQglFnN9SqAUVHeqqw9U7rnIbw+jU85EdUpXEjd73jQ5q
 3+2K+fLUWSMk5qfkM3TzKmC6vPAw2mzMXQT0ABG7C8lhaqwgTqZMQ0gm6n035cS7SlSWXSOuQ
 B6Pau3rwH/1qFuy1MzPYO81nXGXbi1WqTw1wzuOaDqqwCPWqOETJOtX+7kkBl44gRlPTSJeli
 yDXdFSOOgvmXkrhHbdA3kqW6M5AHeTvk5ZVl+rl8jPMKhUGAGiriyNnIDbBoxlvOpQOFP6LOu
 KNxy5bpYKsuiX9yru/eXvNTldOwCCnQX4e3TKLvMpMDLVoeCmQ=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.74 is neither permitted nor denied by best guess
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

clang points out the usage of an incorrect enum type in the
list of supported image formats:

drivers/staging/media/atomisp/pci/atomisp_subdev.c:49:65: error: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Werror,-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, CSS_FRAME_FORMAT_NV21, 0, CSS_FRAME_FORMAT_NV21 },
drivers/staging/media/atomisp/pci/atomisp_subdev.c:49:39: error: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Werror,-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, CSS_FRAME_FORMAT_NV21, 0, CSS_FRAME_FORMAT_NV21 },
        { V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, CSS_FRAME_FORMAT_NV12, 0, CSS_FRAME_FORMAT_NV12 },
        { MEDIA_BUS_FMT_JPEG_1X8, 8, 8, CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },

Checking the git history, I found a commit that disabled one such case
because it did not work. It seems likely that the incorrect enum was
part of the original problem and that the others do not work either,
or have never been tested.

Disable all the ones that cause a warning.

Fixes: cb02ae3d71ea ("media: staging: atomisp: Disable custom format for now")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/atomisp/pci/atomisp_subdev.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_subdev.c b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
index 46590129cbe3..8bce466cc128 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_subdev.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
@@ -44,9 +44,11 @@ const struct atomisp_in_fmt_conv atomisp_in_fmt_conv[] = {
 	{ MEDIA_BUS_FMT_SRGGB12_1X12, 12, 12, ATOMISP_INPUT_FORMAT_RAW_12, CSS_BAYER_ORDER_RGGB, CSS_FORMAT_RAW_12 },
 	{ MEDIA_BUS_FMT_UYVY8_1X16, 8, 8, ATOMISP_INPUT_FORMAT_YUV422_8, 0, ATOMISP_INPUT_FORMAT_YUV422_8 },
 	{ MEDIA_BUS_FMT_YUYV8_1X16, 8, 8, ATOMISP_INPUT_FORMAT_YUV422_8, 0, ATOMISP_INPUT_FORMAT_YUV422_8 },
+#if 0
 	{ MEDIA_BUS_FMT_JPEG_1X8, 8, 8, CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },
 	{ V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, CSS_FRAME_FORMAT_NV12, 0, CSS_FRAME_FORMAT_NV12 },
 	{ V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, CSS_FRAME_FORMAT_NV21, 0, CSS_FRAME_FORMAT_NV21 },
+#endif
 	{ V4L2_MBUS_FMT_CUSTOM_YUV420, 12, 12, ATOMISP_INPUT_FORMAT_YUV420_8_LEGACY, 0, ATOMISP_INPUT_FORMAT_YUV420_8_LEGACY },
 #if 0
 	{ V4L2_MBUS_FMT_CUSTOM_M10MO_RAW, 8, 8, CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200529200031.4117841-8-arnd%40arndb.de.
