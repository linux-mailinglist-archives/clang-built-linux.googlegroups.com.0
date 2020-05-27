Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB25XXD3AKGQEEXACZTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E291E3AEF
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 09:51:09 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id 187sf13063274oor.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 00:51:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590565868; cv=pass;
        d=google.com; s=arc-20160816;
        b=BKnvlIWX3ltj/FTXidxRL0DZDMLN8HVFur38B47d+T7UjLjlsWEOej1/12AT7xBUSn
         lIgEKHX6zHqm4W9VEne5K1EDJmg1H/Qx0ENGAGCyWVpE7uH3lSnL5M6rWSFgouxMZJwG
         jC07QkFaObdZSqm9j3Eu/LkLTZRxlk0HqMM2RC1MTj+Kp1vhPjn4u3ksaoedd8jUz73x
         uso2zdbnrNLxqwEstRICBJcXAPQCY5WQW94p4LRoxaQGbyYhEIankNJ5zqp55QzmneYn
         nVVKq8CKls9p743uoFCg6UoZ3CE8o67EVyJyPHcs6iN6qEQOJPTkgvP1QSnJs6OQikcT
         cx6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=moPV52QKKhje4uCeApR6uJjvA3SKkJSkW3OWfb24gq0=;
        b=t56cWjNjBYGATQ7vhKJ8YeBvIC57KUoTiIrO/R2EupTf+wjfhjc7rhRKyp+fSySykp
         4Yfv7XUl+TK9yOdUghMmuCAFc7ME1J6LrX34Gg2Pil3CluX33yO/U7L2czlohjBoXSi8
         syhSmS4lIy7718A0/dQxXLtS9cxx40UPWqlZXsk5/3RPUid9EEdcKvDnK69hpD2x66pl
         FPHNGfIdFQ0g44ur2xiOKArvGA7Dso0IgoInmI599hQMTFn2jj1U/+dGSrwQRracYJ/j
         CGt0XOhFAo39oETe/QlcdY1Z94ICP2tJxQDqjZ9wajDQYOIo+JW2QEQAJf56EIg0uL0J
         1UcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XmeGLa0E;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=moPV52QKKhje4uCeApR6uJjvA3SKkJSkW3OWfb24gq0=;
        b=ocy8WxCrjWhWuUNlP1wmeivjb6KGTkQgj7qMYjbjoop6uQvtwDrpgeaH6l7M5U6j+b
         +dTJtn4tmOS+Ve7YRkoiX8HwGq0ju2L8E1cUG4wsneWgHbqn1GoECZC+2L9lDoY0a/Sh
         mA1YkwXcNHYB/7+uwlETNt4Sfz1g5vsJQ9md1p+Mdc3adtna/MPtj2a4swVx+eIXFUDz
         R75342Jzk0K8vHFCIi3xCZMlFDFSCx14Iw0rGcNg4xPKNcJyX2dMQeVtBZXyLS27b0cf
         hW7rnWYNMbrjaMJ0iAufBDdksRCDrVHjOxulJsqr3GM/66Hk6b2HjrUIXIBl4LSuSJah
         EtLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=moPV52QKKhje4uCeApR6uJjvA3SKkJSkW3OWfb24gq0=;
        b=Tx9pANCuwUxiguZEhOMrUkwPss1LOXh/RXHpZd28otRRlbJRvMJNCPN7Ynisv7FQNF
         ZU7IKuobz5edFTP+BNwAUzwZJxNjH+AfPW0I6B/8FDuV1nAzwpPGYF7vlRun+e5APWLT
         kRE9Pn8iFA7YDTAlOZ01iZ1gIqQ0K68eS5xQaeq4TcHBAPfYXE0sZbvfS6Ex9NLmOm8a
         uoeGpS6VQ2HTQdnctCkwMVDcSzvaoccFbRBEKQ8qurEN2BFhataMg7J0qcde2LSLQium
         JeywhLYYqE/OoyQlTUgvIyrbsQsCLhG/1zUmI+3QXqOKOvC0m68NxNCDCaz8c1WeVCre
         jOrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=moPV52QKKhje4uCeApR6uJjvA3SKkJSkW3OWfb24gq0=;
        b=rAUsGI3Zua0AixGtZnDdHiCRwt7PaDE+iLC+bAd6VEslxrqDQPQupBrsH7EW6HAgQ7
         UiBhtM+fHh7bpb4zsUa18cDzgDMveWYSan4hhP5Rn6ln7GB0DUfFhx3aJesRRsWgAmOt
         AxbqPQ3BP3euPDRlNt3XwrnOteK+QppTG+/rt8fsqEgVzP4MKc3X1YjeeODkJmYOEjOO
         1P7IjUgs3djmdLh3wRdGZlXhwm8XB7j0ne3Z2HRrt/bNToyDNoxovGBA0lsGGu8JFFUg
         lf+IwBhUHTbyGdeiFdUs5RYrgIMjbfeFjUyRRYRPmgOVA1cGXZwV/PWODygpws5D3zHh
         dGuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zwT+R4PW0dn4sXqfGmRJenO5pO4wqVIL4wz1jfsETo5N48UxC
	eMY8DhUWbHJB97j5cseQYFQ=
X-Google-Smtp-Source: ABdhPJxx/b50VVBRNOs0XkSj+5LDtDcLPHR2X/sf0KLTINlwlqUdvUjhqmQdvWi4VXR+UTPCDwCjoQ==
X-Received: by 2002:a4a:9290:: with SMTP id i16mr2163789ooh.62.1590565868010;
        Wed, 27 May 2020 00:51:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7d11:: with SMTP id v17ls2952562otn.2.gmail; Wed, 27 May
 2020 00:51:07 -0700 (PDT)
X-Received: by 2002:a9d:7e92:: with SMTP id m18mr3657647otp.145.1590565867742;
        Wed, 27 May 2020 00:51:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590565867; cv=none;
        d=google.com; s=arc-20160816;
        b=PlXn/sBcnsB0GWJNlSkr1gpwxS8v66cGRxwMJIMBsl2z6e1xz75eXWo1qdK8T5fN4A
         pB40iV5VPZCONQ8InB0VSAoc9Ow14zLYDGoFJdzgg4ruGYnegJc7vPkIgPoPKekgt6gY
         SyvsxXgTNTBXBwkNVoEgp7pvGJvqkz3SZuhhfIeuce45zpthw3mqXdEbrPobxw7aFnjQ
         c14VNr+6/08VsN86gmeFK2cxnniwlYtcb/SSxQWIQ3HVEbWqGKaEo1tYhc4/5iWDJzwK
         i3QdwWDN77XceSReuCVuNzHHcq7fNvz8m74HVDGnRfzB5VIoC4+YRdZGix1+e2p3pXwX
         PdTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=lVQfYsDAh0Z24p4AneVfNcvrH/seQIrLDjjV5CDfqUA=;
        b=KKMn2X3SaCZj+FRYbSGNh7oMMpWXY9gsLlesgGFMwMWfbIaeJR1amH22QPnEQIKLVb
         KE5CiNTCZvwGxZwb6xr8iQu1KKKyedpjtE/pxeyImpM89+LM70Tlm1Cp59ii4o26ZO8U
         tHBFllARHrG+gruS5doVzBAufzkKIjrQj+43sZ1JwcZHPfv0WgFD2/2ktvLNZHH8NXJb
         9ClBaenfvy6bgfxHucWoLzoMUOJuAdxH5tRsl6z957yxUmDAOROsoASW8j/53m4ycmBz
         WYpbfj+3G4MjEoii4fA1wWdftnPwkiYZ9IR8vMBOdQ1Ug1W95KSBOzYJtwKfLggrarDB
         6fRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XmeGLa0E;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id u15si274906oth.5.2020.05.27.00.51.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 00:51:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id x11so8850890plv.9
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 00:51:07 -0700 (PDT)
X-Received: by 2002:a17:90a:2586:: with SMTP id k6mr3595800pje.121.1590565866882;
        Wed, 27 May 2020 00:51:06 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 206sm1341234pfy.97.2020.05.27.00.51.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 00:51:06 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Saeed Mahameed <saeedm@mellanox.com>,
	Leon Romanovsky <leon@kernel.org>
Cc: netdev@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] net/mlx5e: Don't use err uninitialized in mlx5e_attach_decap
Date: Wed, 27 May 2020 00:50:22 -0700
Message-Id: <20200527075021.3457912-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XmeGLa0E;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

drivers/net/ethernet/mellanox/mlx5/core/en_tc.c:3712:6: warning:
variable 'err' is used uninitialized whenever 'if' condition is false
[-Wsometimes-uninitialized]
        if (IS_ERR(d->pkt_reformat)) {
            ^~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mellanox/mlx5/core/en_tc.c:3718:6: note:
uninitialized use occurs here
        if (err)
            ^~~
drivers/net/ethernet/mellanox/mlx5/core/en_tc.c:3712:2: note: remove the
'if' if its condition is always true
        if (IS_ERR(d->pkt_reformat)) {
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mellanox/mlx5/core/en_tc.c:3670:9: note: initialize
the variable 'err' to silence this warning
        int err;
               ^
                = 0
1 warning generated.

It is not wrong, err is only ever initialized in if statements but this
one is not in one. Initialize err to 0 to fix this.

Fixes: 14e6b038afa0 ("net/mlx5e: Add support for hw decapsulation of MPLS over UDP")
Link: https://github.com/ClangBuiltLinux/linux/issues/1037
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/ethernet/mellanox/mlx5/core/en_tc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c b/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c
index fdb7d2686c35..6d0d4896fe0c 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c
@@ -3667,7 +3667,7 @@ static int mlx5e_attach_decap(struct mlx5e_priv *priv,
 	struct mlx5e_decap_entry *d;
 	struct mlx5e_decap_key key;
 	uintptr_t hash_key;
-	int err;
+	int err = 0;
 
 	parse_attr = attr->parse_attr;
 	if (sizeof(parse_attr->eth) > MLX5_CAP_ESW(priv->mdev, max_encap_header_size)) {

base-commit: d3d9065ad99d0d8d732c950cc0a37a7883cd0c60
-- 
2.27.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527075021.3457912-1-natechancellor%40gmail.com.
