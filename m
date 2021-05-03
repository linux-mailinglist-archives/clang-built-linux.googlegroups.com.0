Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBG6PYCCAMGQEDKALKIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD9E371ACA
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 18:41:00 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id a18-20020a17090a4812b02900fc63fabd38sf7651193pjh.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 09:41:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620060059; cv=pass;
        d=google.com; s=arc-20160816;
        b=VgUanyhAazcu/n48TvkCqOSUzMQatjuk3wQET5XDi/SBhV1aUhSHWHvGQK5wEYBui9
         FstuFOC80rsgphl6Cx2MZzsUKhJGdzGcaGFcWH+5jqGjNXalUHJaLqoga4ELziLW61UD
         gbuIAQVLHbQDFTqpTKqOicwQu/l/bfoJNDHU0+WxrfXQVmJipXyG8t2ODmhcmIMrRgQY
         6qwruQznZa/xDYMJKdpCc6/0sov59kWaRqiRtK2ehj5pJcIz5da7w4XSeIlRw7dkMkij
         pi7zX2vbWfpMsscBOqE3UISQAWPKatsQBptgwwiAxB93jvdg8moPMmv+WIHmLQ8hhM0P
         4HRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=7kKsH4IB9v78TZD3SzXCK0qzXvqg2ci35moSrsvoDx0=;
        b=YeEUCfgboAxBiFQ1Byb7XviTculsalur06oclA1HCdOqM+XJ0Dy2f0MGZocTDg3XW2
         uR92k/MF77HnPDG7a4AOXEKbN8Eg0wXPWWeH0jn/IPFbSeKO8ekXJXrh/onOO8Z6t+ZG
         1pBae0e2yu1mfaREGYQfQnUn7hdKCuC9J0u0Drf9czajGR0QOa8rEuuL4FuHPJZn2Blu
         MAik3ciL6v/cI0zq7ewnmaSsp3lPvYdWTdXy/Rvmyzo84dlHLc57HOQsK/v5z3XIavte
         UUrNHtB/pHSLAe8ZbQOD2gTMavv71g2sX+/pIgKTwwzuNOLJYJj1zIw/9q9Edgr4lLzD
         ZG3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GtevQr2U;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7kKsH4IB9v78TZD3SzXCK0qzXvqg2ci35moSrsvoDx0=;
        b=rx7Vfsu7L77MgxWYva15TwnjICq/vC9dt0wXMip5ZuO8qWN2+gmV5mfJKPs5ZZXSFv
         Ui1kWxJ/7o3wdbJXseJ56oDfnu/7feV+Eiu5KD+kZgn8IdcflKe+GOOdtLNsnQ7m4F2d
         w+otBicI+JQkUk4pguFSSF4XCbMTlZ5jGjeFuwlEL0ZoazaKLbmVRNSzT7zMD6KRxqDm
         7TOsLQDgXT33cIq8Exs/DslZkf1vUIa2Vrx2lr3sPYxb0wtTCXyjdpv6VKpxU108Xy8G
         ksIDwiiqxdAQsrtP7BhRh6HrZCmI5aJIh9TxC/O7RRpVf94sQ3rDejNOIQsqWd5iNgDz
         iojA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7kKsH4IB9v78TZD3SzXCK0qzXvqg2ci35moSrsvoDx0=;
        b=WvVi0dXWffzq95iIujHctn04h0paXFWT0YQw9gqeAY2oaCKn5iLcqEr1MOTO+fozuh
         PEzVT8BH42JXHSS2Jb3KlBHX1iUH0NCRMktDIMNMfMuGpKvq9+ikV/TC8ke5b5bEQVgQ
         IvkKf44VnuAButuFXzdeRn5YTWxBSJrh4FTZ6Hw8HsDmUF5CDz568cpoVmIjmxutj/hw
         wMpIOdPHyOuBxJwuqbm5yd+Fb0sAji07R81B/WSPrEEx5QzjwiPGD5gfjXDikyoPe+oq
         izRvr7Jm9CT26qimSvzGXjb9JLPtvX3AKJhKn0ZB1xXHdVaotU42iKJwC6XsDnf2nU78
         RO2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533sWscSN10R12Ety5ct8n/7esf3eBKBvFHU/X4t7BdJif4Dywra
	7qTRv2sBXkULRt6ehVPk4f8=
X-Google-Smtp-Source: ABdhPJx6rfvyQYiOuT3c3yHyvXQ332T5/+9ckyGnjFLQ4AcUolKb6pW+ZhY/HH2AEB9aEFn2RfOTmg==
X-Received: by 2002:a17:903:2284:b029:ed:53f0:bdac with SMTP id b4-20020a1709032284b02900ed53f0bdacmr21377405plh.40.1620060059163;
        Mon, 03 May 2021 09:40:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8184:: with SMTP id g4ls5825742pfi.4.gmail; Mon, 03 May
 2021 09:40:58 -0700 (PDT)
X-Received: by 2002:a62:b419:0:b029:28e:5300:5c57 with SMTP id h25-20020a62b4190000b029028e53005c57mr12327314pfn.30.1620060058572;
        Mon, 03 May 2021 09:40:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620060058; cv=none;
        d=google.com; s=arc-20160816;
        b=I6ky6K3zJfepZEFhvxsLJ9Sm8k8AnykTyYpQuX0pwOQ4+gmEynry3t3gEzhOVfUZW2
         IsaeBP5DwPBJatoEZJzAdoNSuNYibVAesxrOMGQSlXTO+FEfgVDagNIjzyhb+/6Fb7eQ
         Prm0ONRqBxOLsQv6how3LsS8mBJAZxGl9ncFo3lIk9XJ98/nEM4SL6jq2wKl36oZkU6F
         nidg79++P+5HeXKI0bnLBrjUXeHTxuErR1U4P5/7WKTaJcyMsBBTBN9pepwRF8Av40Xc
         3YXojB39cuvU6VADrMRG1FWqBMgmTW+QECXF7WUxMampK7hShEIAdVe8s9vr5498me3B
         BFUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=z2bGoThWy9v4PwF+pG6IdwBXC05eGFDQ6u1At+RGL9w=;
        b=A1aY1pm4+t98MqQm1I8LnEmPIn9Q8iE4Je4rlIkzrooZ9mDbIYZSmD3gda+RjEdvzi
         /tdI1KIxsqRSwGQezh892aTVL6TGcT+4yXqqpFXWh4x2uZNFVmLxfxRHBL5/I0MjLh10
         RvLXBo8wF0iyjg2JdDaaazC/1vC3aEHyqtzg2ulpDsx6oJ/aBzcCee1MUV64+ih5ZZ9X
         5LoSz6gAcGyFWXhlRCuJV6YWxJZWkqk1nwnt0F8V9ngyGNYuYe3jfqQfDShsNun1/Kw0
         kKI/Z59wB4b7Ei1ScvP4EDlXrOPRf2njUkiOjluo+h3H0lxUEasSNSNTcu5FT50QjL8s
         PK9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GtevQr2U;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x3si108196pjo.3.2021.05.03.09.40.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 09:40:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CA05B61244;
	Mon,  3 May 2021 16:40:56 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Tom Rix <trix@redhat.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	Sasha Levin <sashal@kernel.org>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 50/57] amdgpu: avoid incorrect %hu format string
Date: Mon,  3 May 2021 12:39:34 -0400
Message-Id: <20210503163941.2853291-50-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210503163941.2853291-1-sashal@kernel.org>
References: <20210503163941.2853291-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=GtevQr2U;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 7d98d416c2cc1c1f7d9508e887de4630e521d797 ]

clang points out that the %hu format string does not match the type
of the variables here:

drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c:263:7: warning: format specifies ty=
pe 'unsigned short' but the argument has type 'unsigned int' [-Wformat]
                                  version_major, version_minor);
                                  ^~~~~~~~~~~~~
include/drm/drm_print.h:498:19: note: expanded from macro 'DRM_ERROR'
        __drm_err(fmt, ##__VA_ARGS__)
                  ~~~    ^~~~~~~~~~~

Change it to a regular %u, the same way a previous patch did for
another instance of the same warning.

Reviewed-by: Christian K=C3=B6nig <christian.koenig@amd.com>
Reviewed-by: Tom Rix <trix@redhat.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c b/drivers/gpu/drm/amd/=
amdgpu/amdgpu_uvd.c
index b2c364b8695f..cfa8324b9f51 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
@@ -231,7 +231,7 @@ int amdgpu_uvd_sw_init(struct amdgpu_device *adev)
 		if ((adev->asic_type =3D=3D CHIP_POLARIS10 ||
 		     adev->asic_type =3D=3D CHIP_POLARIS11) &&
 		    (adev->uvd.fw_version < FW_1_66_16))
-			DRM_ERROR("POLARIS10/11 UVD firmware version %hu.%hu is too old.\n",
+			DRM_ERROR("POLARIS10/11 UVD firmware version %u.%u is too old.\n",
 				  version_major, version_minor);
 	} else {
 		unsigned int enc_major, enc_minor, dec_minor;
--=20
2.30.2

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210503163941.2853291-50-sashal%40kernel.org.
