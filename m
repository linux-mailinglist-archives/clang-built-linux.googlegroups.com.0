Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFFZYX3QKGQEDDFLPFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 325E02046C5
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 03:36:22 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id w2sf13967435iom.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 18:36:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592876180; cv=pass;
        d=google.com; s=arc-20160816;
        b=IPoFFTDhwhNuBV7iCFB8u52+PzQ34ni32xyWtArNIXguiw+QUqAfhAMlXkSxyUbUBK
         MlYaoVcPlJiZQwlkg0ueimCxBcbt06cnS2sF27cNYbYeHIryIMSMrmw1/x/lQXdOs6ux
         Q8Qg1DayUrK06bCqoZ97EbmVz4FE52swXFh6+ErKzOC6uoNaLHApnMqpvuV1z6t6KBe1
         CKHU9gecIVNgDdSiGfvZlCzznyOJR+xFcm3nj+BPnzc8wcj+Fon7uxNal2/1Hoh4Z327
         91P8rpugwOM5R5eeEZpTqd8faP10bZYQ45xjpZk4vvMqk/UtL0k3egFww8nKSJbyzxB4
         BHwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=0tStFoTHDPoGEu0wCyE/Jr5/rwZXNqlWuyI/+SGlF4A=;
        b=fKAm4SiX4aawMFpU/3x8d78u1BmRcM3KVdB4rWXzIewyePILnuU8XX0wIm1A8mieVv
         oC/gRXlWvNst/58GvzAKlZiv+V8bdVfNEjNHnhYYCjKpJ/+MKkzKM3y4uis123Fy8vah
         nnDplrAktAKuB2G5bAUH2XyubdsdZuDFqMNoraLhRUkfI9vCKhnw46X1WbWDskhFEda7
         iiPun/E2AY6LivqZiOxPTTzLGOMvkeo22rFTMXCJTyQptH90bDLhL2dJVP9244It387z
         fnal9q9Dzv/Yz3Jlplj2TBEJOhjkKEAvHJQo3fcW7rSNWfEW5YuOwh1iocSr9L8tvHOM
         WtSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jQ+k9fFJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0tStFoTHDPoGEu0wCyE/Jr5/rwZXNqlWuyI/+SGlF4A=;
        b=Uocsxs+Z603QFGItzYXcGxHLGQHGMw2SHonSjPkSQuPjA4bjcS25WHyGG8+1ZdjMeK
         inJVpY4XVaURSsRxlFnYJGnfTyoEDXOy6r+fNm8NVP9ZGgeDhbnXx4MG6GYCe3T4Z8mo
         qMt+ihoeUKXc9xrZkn0YBNza39aiIptjjVie527FaRljXamWFqeyyUSwGa/cz4a8tXks
         yVmZY9fJsiEOgjf3AYSOnOJkIrUhJ3nwFFH7I94/A+K2E+umKuiwci/P3JvRM/AOFx2/
         mlsCXmjQfM0ILbmtNEiZ+R9BPRA/GwdufC8jZUIe5H+3TYINU9FEGSQIBwPRQmfGdMhA
         5ORg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0tStFoTHDPoGEu0wCyE/Jr5/rwZXNqlWuyI/+SGlF4A=;
        b=qgoIBlZAfFfhIDm86UInaHMdD5zx/o4e4LHoOagcXp8Wf2+ba6NxyU7/sokjV1feBl
         hbOl4jv1UQeMv7w+Gy3jNb++zRqy2xS+jIxqsft5/SW2C18q2YNiU7sd9ZjZgZfqJ5yP
         AeUDxMZVzowULSwnE9IHQNoDHClwhC6MaDgiq3ERXdaCefDFYeldXUtRao9Cl2HFsE11
         Fh2ZwE4or1oS0I1MoWLcsMyOnj5calikCwW3xO4hdv6+MWkVzAWVBqib8CrZW8khenTR
         hRQNU0nWcE9vWo+JCk6WLtsSIUDA3ZDyqqjkVNrO3jo1SOMSLDgne9dFAjcTnLuTdDHz
         JusQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0tStFoTHDPoGEu0wCyE/Jr5/rwZXNqlWuyI/+SGlF4A=;
        b=aLe54dupZdzekR7tyW+4j47kbzuCNI2ZxnwdW/Ncfwr0jZRToRS/r6+YsepV1skAfx
         oBmp8bUkY+NR0UMTAu58xJYGpoHn56gg81aRjID0XMstasOf3rWUs1MgKOLPnZx3B/qb
         LHUzaRlSR5XI8xGcaGL2Au0BNZQO9v9FirJeMVKkwQf8D0tvEj5LuOGMQ81SRgUiMFGW
         dMLH/qFAWiQr1097E03KE1iMzz36tCF2bQlsspN0HZCxZTf4JmmuVkfRzDH5TpOBFMRr
         XrZh/WjYB6Mn3Al5b2NGEcgbilGRjxlqPlY+0uVtGRVvRBcUcujLwbaklTlzedmcFuJ/
         4x8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mg4/32+M5tScOAi1CznBDpewbsh3PsGWvpjxxIQTaAr1OCpIg
	ehrvue2EleKZU5FyGzXy/Yw=
X-Google-Smtp-Source: ABdhPJxpwl3KuVT7sYzPEm0dzhnT+E6YFIdBZhxQMPAKy4ZRLKKoqZKeyZcM0GJ+EhbswangWQyhQA==
X-Received: by 2002:a02:896:: with SMTP id 144mr22210301jac.126.1592876180747;
        Mon, 22 Jun 2020 18:36:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2b81:: with SMTP id r1ls3715404iov.11.gmail; Mon,
 22 Jun 2020 18:36:20 -0700 (PDT)
X-Received: by 2002:a05:6602:2c8b:: with SMTP id i11mr22552746iow.139.1592876180431;
        Mon, 22 Jun 2020 18:36:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592876180; cv=none;
        d=google.com; s=arc-20160816;
        b=W36nCHb71ox2fkj6P5KoO6IEth1zBDOgrSCMwfGpI1qE9bSf+EKePhfjafJKPfwpA2
         sBQ1db86wLa8Hsqajk3Z+4oQfGctJTuphzgScfxniqSQ2H09Hu01VUTUFnB+SoPlkaIv
         VF3wGpFp0aBNryi/K1prMYkhcGDybe0G0zrtqVd36K+E4Pg/6Okm77zG87gJAtclg9wN
         NrjoPlj6+NwlagkY8rss/K/o3TlznhjS7Udop0U15BQrtRlVOWNV02FETERQj+oqKSCW
         18EdQ7NfepYSxZ02oAljaVIVUTu6DIhWYF/1W8cppejScs/IxeNIi8/Cp/1Kr+rhsyH0
         St1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=6xUzhKnsOu6gQ8wo5pNQ9aUbiM+zR6hakYUaVJ25KuY=;
        b=Fw3d/n/0/+Ljhj+6CahIArquDDz95ELsiK668BiMbHiHhPCMxx+g6xGBcKF8Y/pUbH
         b5EGU2QhgJAfdtl6w0qJrXEujwbfBkS7mV7RNpdPMxeerel6Zrp61JwD8LqZc4bXGlu3
         HhCsNyxwRVtnbG9iLeVZgWHI0Ljo3n/57eELBsxFGCuVjNVZCHJqNPJjeiAdWLPQGKDk
         pf9vfms4lbbGxrOGN124hX2bvnsYZ1fgOabms4JP73rAk0QYIGTwTMDrtlVz0bRXsT/Y
         3gX2Dia7jAaSFVoZXrsqjUKValYperN8fFslVjlo/veQXhhg1Xvkj88gjq/n4WT+Bv+f
         guYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jQ+k9fFJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id i20si62693iow.2.2020.06.22.18.36.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 18:36:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id t25so17472536oij.7
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 18:36:20 -0700 (PDT)
X-Received: by 2002:aca:4e0d:: with SMTP id c13mr14664131oib.30.1592876180059;
        Mon, 22 Jun 2020 18:36:20 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id j71sm3624030otj.6.2020.06.22.18.36.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 18:36:19 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
Cc: dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH] drm/omap: Remove aggregate initialization of new_mode in omap_connector_mode_valid
Date: Mon, 22 Jun 2020 18:36:10 -0700
Message-Id: <20200623013610.555610-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jQ+k9fFJ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

After commit 42acb06b01b1 ("drm: pahole struct drm_display_mode"), clang
warns:

drivers/gpu/drm/omapdrm/omap_connector.c:92:39: warning: braces around
scalar initializer [-Wbraced-scalar-init]
        struct drm_display_mode new_mode = { { 0 } };
                                             ^~~~~~
1 warning generated.

After the struct was shuffled, the second set of braces is no longer
needed because we are not initializing a structure (struct list_head)
but a regular integer (int clock).

However, looking into it further, this initialization is pointless
because new_mode is used as the destination of drm_mode_copy, where the
members of new_mode will just be completely overwritten with the members
of mode. Just remove the initialization of new_mode so that there is no
more warning and we don't need to worry about updating the
initialization if the structure ever get shuffled again.

Link: https://github.com/ClangBuiltLinux/linux/issues/1059
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/gpu/drm/omapdrm/omap_connector.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/omapdrm/omap_connector.c b/drivers/gpu/drm/omapdrm/omap_connector.c
index 528764566b17..ce4da1511920 100644
--- a/drivers/gpu/drm/omapdrm/omap_connector.c
+++ b/drivers/gpu/drm/omapdrm/omap_connector.c
@@ -89,7 +89,7 @@ static enum drm_mode_status omap_connector_mode_valid(struct drm_connector *conn
 				 struct drm_display_mode *mode)
 {
 	struct omap_connector *omap_connector = to_omap_connector(connector);
-	struct drm_display_mode new_mode = { { 0 } };
+	struct drm_display_mode new_mode;
 	enum drm_mode_status status;
 
 	status = omap_connector_mode_fixup(omap_connector->output, mode,

base-commit: 27f11fea33608cbd321a97cbecfa2ef97dcc1821
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623013610.555610-1-natechancellor%40gmail.com.
