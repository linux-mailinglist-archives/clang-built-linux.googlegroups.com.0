Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBVGPYCCAMGQEJTSFNVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 159FA371AEC
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 18:41:58 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id j184-20020a6255c10000b0290214249d921csf3098541pfb.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 09:41:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620060117; cv=pass;
        d=google.com; s=arc-20160816;
        b=G7mVLfOy/FxkbYSo8+SX//RJ5EnjHHIwml8b+K3rI+Di04quSUn+HfJx+ML0w1SjEI
         ehQQdzuy/vzc3NyL1+eYBzOCRyvVYE3AmANbZR5YewqhyyhlWcery1xu0xjEGYFCVYSX
         cgt9xqfP2t58qiyDmVvIXqqG4wikhHQXQsgbfioomh3PeUZk0WQh/B91Puv1cuRN8nM4
         i/l2uAUkQDZ4id1bgd8GTSV4peSuqQOD4jDKBVlbed2ReY/l5iV8squndIJ6O5Gm7JQz
         IE6lHq3r1bC2Ux8DyRZjqwZ7eBH9AD+Ba94EeK5mmtooINQ8lZpK/pkN3rX4oRAx7HnX
         Mwng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=golJ2+qjD8bY6wbJVKG4O9owq/NBgkyZiRqrFc2nJ4A=;
        b=Aw9PypiW9oOccVOD1CK2DITW4042ngmB4/zoEt9sAd6E4z1tb9sd6G09vynSn81ukO
         X2BmXidB/rayK0UjlOZkBRwa6HwLfZRPX8yxXzTLRLtzk8aVDTJLQP/F8LqzwGMa484l
         99Ib8nqrehkYtecLRXoYUpchsVS1Lb+EKSBUcbxyVnCOLW8FJHK3K8JJlidGd2CQdflA
         wJPENS9s9tae5XDxdG1KIe8dlLTm6780ufCE3k1S28zn7UxTkuQD/x6l6mXJ0fZQL4jQ
         XV8IJVvjjsqGN8+5kkoPatT3HYP36lo11MhAgtjvXJfg+SwTGhB4qJ1a/N70G7Tf9Tea
         CxTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Gl1U67yz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=golJ2+qjD8bY6wbJVKG4O9owq/NBgkyZiRqrFc2nJ4A=;
        b=H1nJyZc7ZM/29dySMrxypzVTQZ85Xd+7aw0qGdHTqnKvA0RGfc/hKs2RCp2o1mN5Mk
         BQ+f9j+1GxwdszzGeQqZyz9eFnsC+LHM8eG3ftlcbMDtgjrDqqgtb83lkKpLxgUNDp3B
         8KUBpi9H6DLJTaFHUxRszESvNeGrhV87gf0TIpEn7YCjHIwRYfEX5Kl1ytassi2/PqcB
         caOcu61S58wMG6wF8x9JYiqlJckJDy8a0wxd5McZoRCNxDwd5X7DeTKTpzkeXFKWXO7K
         2OpvF1c0S5mg1y3FxuLAfuwbMOMDFR4ThVaU6tIrp9vZLPrh+bVExrPQPZG9D0xIgNCP
         O8eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=golJ2+qjD8bY6wbJVKG4O9owq/NBgkyZiRqrFc2nJ4A=;
        b=BdLqFOHQcBgdW+MhANIg5LxaWpJamF8N4QNX/O3LR59vmKMnZxBGe8jeCqX8J8b40L
         LHHXHSQTaMKjajPeIvp2AX+nazLJsex9Ykk3LR6QgZvFMWfe7eV6TkH4+wHTDUuRfEHv
         Vw2X7V4qx6iM8Zzuxneq6nwLc+ATtzPZ/cONWs7e54fEsFzEc1eeZou2Wy4ciz/H7NEd
         e6P63A1+nshRSxocQHYEpFvi/Z1NtuaC8CVbE89VnTIS590dHcDy4uuQnZkeqJt9jjEa
         Xn7VLk1FJq3RCF47EBoJaCpU7AAF66H/vdc6kN+nx4SJdhFrWQF3gr4p0Br7zPsUfLEb
         tpaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318V68RPSJYEqtU0GEqlWGWcQx8Z2RfVDCy21tebrcrMJxkMek6
	ngq4pyERhoxVOKZDR7Wm6H0=
X-Google-Smtp-Source: ABdhPJwgXbbvVC2oo2vpg1DXzCBniXye6cGAc5tBhjII4KvwOs/dwtu26wQyrX9qnhgUxy46jA8AIA==
X-Received: by 2002:a17:902:eb4d:b029:ee:aff2:1e20 with SMTP id i13-20020a170902eb4db02900eeaff21e20mr15013381pli.71.1620060116850;
        Mon, 03 May 2021 09:41:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e142:: with SMTP id h2ls1797354pgk.10.gmail; Mon, 03 May
 2021 09:41:56 -0700 (PDT)
X-Received: by 2002:aa7:80c1:0:b029:262:ab5f:adc5 with SMTP id a1-20020aa780c10000b0290262ab5fadc5mr19949643pfn.60.1620060116267;
        Mon, 03 May 2021 09:41:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620060116; cv=none;
        d=google.com; s=arc-20160816;
        b=GxghBJX+CUkf5ALLaEtL21eA1U75rgwSgxN+ler3nlPzV31ucb7V5QkyE73ppTrACA
         XRXn910MOA79DKIfLN5+hcJWWMAf9CV0zqHtgkRl/CeY0Jus3pseNvFsQ+aoSAKPtLwZ
         EJpA1xKPhfsGXHafUd5kUrNUkFEfJMlIRCpPg9CEFtlb+blcdO+aqv1ujMsKfHPMsYh4
         85W5w70lEgFo37cREWLb9BpB+qVk0S4oq4qIlUkhcXgnnl2xauefG24516ptnuue3X4Y
         RkClcRBRQmEbgNm16WmBJ/Fk06m0M8k76aIafAimfLvE8bnT79Zt5jZVcHz8j/vt4Hj9
         U6cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Zo+QD3F6RNRD3Ja/YOGWblQP8PjfrwP8vWpn88gC8f8=;
        b=rmd9rzl5Jng3TotcqPESFY9w7wZZxYdvfdlI6XwJhPb+AnaPFx3EEYnTTUABMr5UtR
         YVhwF0ROKVyjVrwEyl8JH8iNb001k3wiP8KeAJjNLDvYwBC+XwN37PxL03dGf8OwB2kv
         7T+uw9MRIQenQm5yRGknc4HD3Rdvde6WqlH8DQ+gssPDfJBAtYH/O6+KQ6wmx6gwV0ON
         YebITLPz05MY+dxe+XSqRaQggITtI0lFg3nOpzwfhBTQTZwAij+xmKna4v0RD+XOHjnE
         Xl4BVWbIGWBXJr3L/vkaXsQT9JIjcZPrImat9YrXUHgP3+OM6l9/NXZFMcvG7rmy1RTG
         k70g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Gl1U67yz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p2si1097pjg.1.2021.05.03.09.41.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 09:41:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A594F61413;
	Mon,  3 May 2021 16:41:54 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 30/35] amdgpu: avoid incorrect %hu format string
Date: Mon,  3 May 2021 12:41:04 -0400
Message-Id: <20210503164109.2853838-30-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210503164109.2853838-1-sashal@kernel.org>
References: <20210503164109.2853838-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Gl1U67yz;       spf=pass
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
index e5a6db6beab7..8c5f39beee7c 100644
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
clang-built-linux/20210503164109.2853838-30-sashal%40kernel.org.
