Return-Path: <clang-built-linux+bncBDM5DRMBV4ERBR7FXD3AKGQEQV4AHTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD721E3D8F
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 11:28:39 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id g194sf931678wmg.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 02:28:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590571719; cv=pass;
        d=google.com; s=arc-20160816;
        b=nnr8V0GNEvCqYEs1OwfbKQp3V89oHFFs976QyIMbLJJhpBe6lEbxbfjQJj6zYeF3zM
         85SxMXgYgpVsffySHWnRpnVs7fO5ORMTh4fy/4gw7pmubbI1MGvSc1Yz4HmTiIwkV95p
         7hBpJP+lXX3mnC6RNtaJDitU+XUHPAANYmz1UzAlJMzhkMtHElyr5JcyYp/tc4NGMwgy
         orSp3jiCb/QSWnyUysbRXtbUkFFlRjmf4d1uWkWjZ/bCihSm3DDMhSsgqkTTihJKadmN
         Anh/YK2Kb47Cyj/cRQ5PieS0zCP6sP7cbBHAYprksmjk1VSE8UVjaCsk+Y8UedgAQP/8
         AYSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=3mgoVHrOffqX5BETboohbNEUDURyPElfFpPjYjfo14Q=;
        b=B3OYiUiJfMaCLs622/gN1KnOpN7gdqhrWq+dJI+ciuKGT1nNibmNngM/hn9Y/V26IJ
         Yvm7MdLZnYrlMQK7aYX29P7yQEwZ9PhQRYB0nh/hKkn0nNL1cuWaAn1pjN6/W1vSs/XT
         8zdbvoh5KgmBxM4LNGEHAUxl1apzcATUlThODaGueEh2UKj3sx6e7YTy1BqLlbOp5qnP
         5IcQB8F0rk+F7i5b2BW1vz8O86YwbgSlGWEKHiT1pVaeZxok31bfAmcGhC8FKbbg6fjW
         RhxhHPmxmT6Y2X2Sp7+EYsuKxJCHVAmuS8TVIWQKf6acV+WOtGHdgXeZ1hQ8lyP+27uy
         wvRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U5jx1ifC;
       spf=pass (google.com: domain of tvboxspy@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=tvboxspy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3mgoVHrOffqX5BETboohbNEUDURyPElfFpPjYjfo14Q=;
        b=kfzzHWqcTyOUmq5A0RObz2+sgeQLHIZHUl/GthdTIBlJ695euZhjmVPFSDNNbaEsbz
         AYcFs2/HV2funAu8OSk8UgBT4F/G37V06kketVFY08FGTgPbx2nT3hE345nlFjqBFPn4
         gIgjpSNp5W/nAFlLKsUCGIEEcs12fzxGpp4UuC0uPA37M+6D6650eSjQRPcP8hmZUDSb
         0tfXmWmUYMWwP6Q05O1ziEhNJnP9OF56p6WMrZgA7GF/8MWPIeHXQ6MrwAkr3roPqz6F
         SD7341MSNjJMq1bs+Welp8hVgcI+cr97xCyi9DegJ57c+DngcTXxiC7T2AzAieR7Nt6F
         gExA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3mgoVHrOffqX5BETboohbNEUDURyPElfFpPjYjfo14Q=;
        b=R84gLXEg9p8sy2B8MvFJgd2wnhcY77iiqV4+MIb62Kgf9WMVcrIwJKCb8PT9byTjV3
         lZ8krOMK0/pVFUI/738MCfsSDOX/Dpyi+CQhyZNX+VCF/ngspPrHKUIKi3L0jyxTYnsX
         fmJ2OY+OlKWfvtB+nqUqKhOYR1ebyjaGl7FCkKUuyOO67IuOgiW8+AVupoM8EM99jWUF
         /MzCNWYQwEilOwpn5FeePdrJi5aPCJEAQ2oJ50xVu7QWLip0zXtYw0ZNR2Te/8np9+cm
         jNmVIq4WnoL9uIHwI2EZE3MlPwhNrILebU0/6dPvPIKF6M6Ti6qHfNiXMQkVy6CnOKA9
         XRqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3mgoVHrOffqX5BETboohbNEUDURyPElfFpPjYjfo14Q=;
        b=EyUZmPLMsoUf4XP1DmNo9CsdlLYH0f3SX5egrbPhDczpjfBj6WP5UrQa4DfoR4Zu01
         HelW/ykEualipJUCTg7pnvsznutOo+lcx+NgArx07VuqkI+LJxa8JxSEqh9VAQKz3TF6
         mQTzDGGlhM/xd3c8jaBCr03w0/mcO2d3vOc1p4HRzJmqDn6cyzy+6HkWVHXgicj0gzlE
         pD0qNp08DbJSzKpwfo1NgfLnsQ+kieHJ4/Oeec7f9Jap489o3xXjSjbbbarSEmvlwLtn
         WJKCnsGPCKYR5jWTmzjcCGPksmmRk/wKK5v0ra1IHD1m6gSHZSKfdLtWyFIJ8MDBvbhX
         Ockw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532RyxXvaFjTIc4zI/9zzZ1eOC5OuPhPD4kp7Ci7wqqwgYs6EZoC
	gC6zONb4/4WGLrnnnTdmjFw=
X-Google-Smtp-Source: ABdhPJyGOL9F4LKtqvqH98iOEDme1eFQWWVmIOD+oPnG/w9QViykIt6F8AxL9uoF3/SUxXE3w88tKQ==
X-Received: by 2002:adf:f0c6:: with SMTP id x6mr22580020wro.301.1590571719478;
        Wed, 27 May 2020 02:28:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fac9:: with SMTP id a9ls2649190wrs.2.gmail; Wed, 27 May
 2020 02:28:39 -0700 (PDT)
X-Received: by 2002:a5d:4d4d:: with SMTP id a13mr15056682wru.252.1590571718968;
        Wed, 27 May 2020 02:28:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590571718; cv=none;
        d=google.com; s=arc-20160816;
        b=xxOXzSPaQ6rH8/KYI3yqvvcNWzR4L/DMMshrBrc4532JkT73ce//8/iIqv9WfHrWAJ
         pgE9O0dphn0s12GhNfRVoZLwaNOZQszU6bvKOgPXV6spgB0GN7kn2FgkQq3JJr+pmvDZ
         FY5ULYsiVz+3o05NOEwmEl4mMZwBy8rd5NksM5TWZUU8LqI/Hv8e+vWGCubaJaHjODwC
         d0PkZpqKqFXo3l9aqW4v3kwXLeeGId/zsj2SaKu59Mb1RmLmbUwO1OKSQpCJOCma9f/I
         l2nW2A044FI9KuzX1oONKzgS4lpFmuTYgsaDg5KvoZYuilfp11PHHc6xnryCflgjPOOO
         uzoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=UOZ4TdRb4/KFLMrC2D7QMXdefrcaEXMwfgRoi1sbd/Q=;
        b=XYCwLGYTwXpk+Jrv9sMjaV3V+Ulh133OAcuHF/fzeWL4hkIS9bok6uL0pk0DHHnQhg
         2AUatmruLPgl02Dp5JzDMcDf2pus7Uq+u3AFR419hLVQ01Zd11jj5rwhSJ5/yfh9BZeu
         QSpsI7LQHPKaOxAEh+kwhzV7D098wGD2iq1yk5IwdUfN27wUJ08+u9JZ7nBudzT+EGu/
         aWVfuao+ZpdbAxJwRuefDA5VMazvUyJNGjWlv+CKGdaGrlCso4RBGmkK5xmnhTmAZhgP
         Sk+L3D+r30nAay6oC54+uaJBclqlvBhQiHSQWLyqTESGNDtbp8NQWph/qb9GeEiLKeKX
         /Z9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U5jx1ifC;
       spf=pass (google.com: domain of tvboxspy@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=tvboxspy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id f16si158095wrq.5.2020.05.27.02.28.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 02:28:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of tvboxspy@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id f5so2339810wmh.2
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 02:28:38 -0700 (PDT)
X-Received: by 2002:a7b:cb4e:: with SMTP id v14mr3686418wmj.54.1590571718787;
        Wed, 27 May 2020 02:28:38 -0700 (PDT)
Received: from [192.168.43.18] ([85.255.237.0])
        by smtp.gmail.com with ESMTPSA id u3sm2349648wmg.38.2020.05.27.02.28.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 02:28:38 -0700 (PDT)
Subject: [PATCH] staging: vt6656: Fix warning: unused variable vnt_frame_time
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, devel@driverdev.osuosl.org
References: <202005241918.IseLzHqZ%lkp@intel.com>
From: Malcolm Priestley <tvboxspy@gmail.com>
Message-ID: <41690fb4-fa4d-ffc3-0eb0-2879de2cee1a@gmail.com>
Date: Wed, 27 May 2020 10:28:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <202005241918.IseLzHqZ%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: tvboxspy@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=U5jx1ifC;       spf=pass
 (google.com: domain of tvboxspy@gmail.com designates 2a00:1450:4864:20::343
 as permitted sender) smtp.mailfrom=tvboxspy@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

In commit 3436accadc3f
("staging: vt6656: Move vnt_get_frame_time and vnt_get_phy_field to rxtx")
not quite all of the code was removed.

Remove unused vnt_frame_time variable.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 5530c06ffd40..5dd6b4d2bf20 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -39,10 +39,6 @@ static const u16 vnt_time_stampoff[2][MAX_RATE] = {
 #define DATADUR_B       10
 #define DATADUR_A       11
 
-static const u16 vnt_frame_time[MAX_RATE] = {
-	10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 216
-};
-
 static const u8 vnt_phy_signal[] = {
 	0x00,	/* RATE_1M  */
 	0x01,	/* RATE_2M  */
-- 
2.27.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/41690fb4-fa4d-ffc3-0eb0-2879de2cee1a%40gmail.com.
