Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3HKQGEAMGQE3F32CEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1BF3D807A
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:06:53 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id w19-20020a170902d113b029012c1505a89fsf1327plw.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:06:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420012; cv=pass;
        d=google.com; s=arc-20160816;
        b=aY8ubBzGr8uAzXCfCoDGEPyb7oAjhLHBQXzfHXlPM73+/u7TIbXPIJNIwj/N5jKOuL
         bMqjP7FjHPOUYTQio5F4saEIlhErUUjTDT8LKZu59AkfngaG7699C7YQlJ6j4np2Ztau
         PYc5rLRaFSM5qjmsbdt4Gx++kQAiBKpIZPXAJcMpDydD6BPuwFUFJzhbrdFXA9V8klXk
         Whe021xwYI1wcZ5KuiFhjRc2QhWoMZsoIRKtRCM2QdZyg6/5baGf6X59E7q5bYqqpI//
         apDycUUzoC7fYB3kVjhDvire8wGMABEdS9zkgnrA0eQaXPbisQkMDl5VOv0pKWDDSGCc
         NWKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Lh/kBEGH1P3ujx0D9Y1BWs3Bs8cp7tNQ/Ct2CbHVB5k=;
        b=OPAoaNvk9y9bm4VhYQzSyUI/awWqT7KiK2Ucl2l2tkdoL8BA9Ah7wBFWGs0R25a6H9
         GCwkgmuIIG5cKULVHx6WosiKNFJAiLwFJ5chTUIdVIjHawqgfhIJZOi3XK3L6OCblOdc
         xdM0gH+OM17xoMc8ChbBmsoljwU/NImZ0S4Cjql1EZzg6Y4y4KT/PO4L57xLp97/3rOc
         BhXXp4iecfdaASzhw5Ph9UqjZxu7mYQbdMWrpyRLLF0Tf92FEDYnv/PLHnUaPcXuIDa1
         WG1Gx/Mb/p2MuOpgzaRD4/q0HC23hE0zfKHX03TkBH80D6DPYD/znERqHj8ZsWEMzU5r
         +ljw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bnW6f5ZW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lh/kBEGH1P3ujx0D9Y1BWs3Bs8cp7tNQ/Ct2CbHVB5k=;
        b=IO0/v1JN7Fh9/JNL0mvDGqIQoqPf2olNZ2v2eIxYTdbnA56fIMwoccPGJ0Ix3xxvlH
         zc6wqJ82kEUa0NfVLUJOOAbCPZ8NUlvkONOF6Waau/sFApFKwjAGZ1lELwvuZRdcVdlJ
         B9kDPVBcryH6tbFNIfTzC+zaVzYJTbtmx5SoLq+VxpnxWEFmTPgwwIFQ5qmvD9uo3Tpl
         0TGAODRlHodfE5g+6Y51g+zppqo1p9eAOadAr/ja0GPmA2ZDHF70OGRDx6/NdZ2nZX1n
         HtJgem2KZTuNzqLykVaaK8RYacCAB2vM5Fnw2c3vfHOzAAtDLKutTK5f017VPwlnPm9F
         BECg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lh/kBEGH1P3ujx0D9Y1BWs3Bs8cp7tNQ/Ct2CbHVB5k=;
        b=J9a+BVrnuZiJ4EECHTfuph/BC0XZOqkyErkha/zAiRiEldPCgNIPf7AAojlJPgsa3V
         mZ6KqemtKNE4b/OZZ9m5UGU5LYuCGO1b7AZR8iy5481YCo1VGdBhsrFc+mOBKDd60cdm
         7HX1e43Om1ZHaCEAhVganCAjP+9xlzHkDlNKC1r02a46ISf7Vr0gAp+/d4os/vq6cV87
         l/bheZ/34HF+4c8Fbiuxpk2lwaHGUpg7mGoL6kHKCx5R7/CxpzgBKRk5um+MCUmeOfPK
         mIFjDivCokkeso/fEcbOD8Uk6Ng/dO8nQDO5c8xOiePBwDXZ4O6Q79Vy0zE169lYnLfU
         x6GA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OSLcbjOXUBlcL6nIz4I6XTAp21aiL89ZRJxiaYZxRKPeeG/kx
	VjwPd4/4OdZQXuJiE2OXpLE=
X-Google-Smtp-Source: ABdhPJwHSH+YfBElTYDyjoOzi6lFj+DhCHE+K74oVdWMIGPsvOL6KevYTF70dRBZcfx01MUC32sacg==
X-Received: by 2002:a63:181d:: with SMTP id y29mr25301009pgl.113.1627420012266;
        Tue, 27 Jul 2021 14:06:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e23:: with SMTP id d35ls83870pgl.5.gmail; Tue, 27 Jul
 2021 14:06:51 -0700 (PDT)
X-Received: by 2002:a05:6a00:1693:b029:333:da3a:8c86 with SMTP id k19-20020a056a001693b0290333da3a8c86mr25528620pfc.41.1627420011728;
        Tue, 27 Jul 2021 14:06:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420011; cv=none;
        d=google.com; s=arc-20160816;
        b=CO35e5uQwcJGn7V+/fg/S60M7xnMTd2NkU7yGyevFgpJASIaStqMrUqw0+TQsz0uMn
         ESEblxF2hTWjWZReaZasahITK73OFol1FLH8VokdK88a3NTZk3S2S58I7IWMZHD1Arcn
         IPeKLyAH2NokTVxFPOMwxnM8bHxL/DaeqoCmAshheUfKInnMRO/D3xPP3h3ce763Vfqw
         kuWJTfMqHPtR3sTZ6svvxroyjWtSHG8uoqT5M/oV1vOeiybb4FRxvd9D4dB2cTSzHIjW
         AUeWwYeDXpvU7fM6Lj8BCUzmi2Lm9Q/9dUXeYWN9h9AxuYfehIWIBsZToCrnzB9GYTt2
         fpkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ix+5YCGgtf4ASFZ4v/FG8sEQnqankYDKBfCTYQuGyCQ=;
        b=A3JnI3bKd48HRdPm5sjg/4B09yNii2fkS9mF44uOqApx3POu5tMsPHwxTbA5eEHPxu
         lnWvx6Lhdp+QxJ4ZgQCDTOLRQFHnP1Q2HRlO5LjU3AvhN48u9EDmibcJO6LWELgVUMBw
         C1z461B3WIGG0W01ffwMGFi+Yscm4FtTXUlScm6wQnj2OTJE87rdkhpALWmzA/6YXhdm
         kWaFgLIh9G74mI+FA4pXAHWLUzh0gZqUmqJPKuJ7RKiDUHBedirRztzTrRIF6gnpIcv0
         +AemPoVCTHMtfLgIwbRq74iwLuGXLFfIpFpUugtTWkKNfmpOXrOrdr0hrmjKyg2NnjFU
         tUJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bnW6f5ZW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id p9si264520pfo.3.2021.07.27.14.06.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:06:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id b6so1806499pji.4
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:06:51 -0700 (PDT)
X-Received: by 2002:a63:ee11:: with SMTP id e17mr25530642pgi.323.1627420011461;
        Tue, 27 Jul 2021 14:06:51 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d67sm4856651pfd.81.2021.07.27.14.06.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:06:50 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 40/64] net: 802: Use memset_after() to clear struct fields
Date: Tue, 27 Jul 2021 13:58:31 -0700
Message-Id: <20210727205855.411487-41-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1002; h=from:subject; bh=W7mlz4eEFjlHgTTisxMegB0ZhUGQYb0aFf/Mmy3UOio=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOJorvZuoNL45b35HsPI1mAinyEnA8ZX78L8pdJ 8EQ0wWuJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBziQAKCRCJcvTf3G3AJi3aD/ 9pKVrL7GGdaVZl4FyfYev6TME/fJq+q9IgkVKQ6QCoKY5T/n8lqb9wXu0sEDlYK/V1GqgYIyOt/r7B kfASageiRvyRg6nT+2AFkSJGPmwhPkUx2C0pnq6h2eqXzqar9s8LCEi8fZCrBkXObTwmGt5Elv2lL9 u3iRYv/VfrwevBjfH2MskR4OJDtdPLapzgjtDpmesjJgIuFqbLVbP0StJ/6qcp3046MFgobYGk5guX yTH4PNsJHtyrgdozwjttdVzeuhBt2WzgJQ1eaObNsLLLG37mPRxwCItRBkCwVkgMqOjQ4hE4IYAhXt A46hMy1iM0tpGB/EfZqHobJSxHkdDF8gcTzETtHJpWWBZYyLUvM2XIQ/jR1mne6xOpVdLMQUFxCFnn mY2w5SBcpciTvwuit/vfLui8lZtt29yIVecQbgt9pRHcNcLDYVr8lSjPmpO/H/Ey43fgftvpDaUE1K kZYNcM8o3ZI3ko0BO+gOPvhnYi1Hhu7xktOgZx9M3VFKye7+Rx5Hna1V2YsePjXkMGHbDlKaxCDbwc Es30R4/sgZcQr1pAtYhRgMIV9sd0TuiSf3pQyy3q5FvtNiOSMBvVO2cVjj+RDAqI4SNkvoAH2zrvou WNPNye5apRTKo4NrCQk68ENprSWgvKWfzUOE9H92IsOJCSP1oSa6QuA89TCQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=bnW6f5ZW;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Use memset_after() so memset() doesn't get confused about writing
beyond the destination member that is intended to be the starting point
of zeroing through the end of the struct.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 net/802/hippi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/802/hippi.c b/net/802/hippi.c
index f80b33a8f7e0..00f6666b4b16 100644
--- a/net/802/hippi.c
+++ b/net/802/hippi.c
@@ -65,7 +65,7 @@ static int hippi_header(struct sk_buff *skb, struct net_device *dev,
 	hip->le.src_addr_type	= 2;	/* 12 bit SC address */
 
 	memcpy(hip->le.src_switch_addr, dev->dev_addr + 3, 3);
-	memset(&hip->le.reserved, 0, 16);
+	memset_after(&hip->le, 0, src_switch_addr);
 
 	hip->snap.dsap		= HIPPI_EXTENDED_SAP;
 	hip->snap.ssap		= HIPPI_EXTENDED_SAP;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-41-keescook%40chromium.org.
