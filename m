Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBR6W4WEAMGQE5C5IKPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4E73ECAAB
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 21:30:17 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id v9-20020a17090a7c09b02901778a2a8fd6sf14867956pjf.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 12:30:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629055816; cv=pass;
        d=google.com; s=arc-20160816;
        b=TGEbJVsznlC5rpwx4gQdeuOBnrpq5U28q8lXbM/1qvcdONkytGkS+Pb+QvSHozLMju
         0fdXcnxCjTkU/I0nrkhg5UuLCsX6tZJVsSa41OKz4/9qEU4hYP6Cde/doLR3NRoYlMuQ
         qEP9jIPtGDH3UhcLavySYYjlv23GRMIhojpp5aiQLTp4G2wSnOP60umZjcBsPm9uUvN+
         BAlaRRs5lEG+7qRrOe0kARtZtLiOW0uv1L0ZCBdLbhECqbFKlniQ+4qXnv7rJ42iOwuz
         jY/7hEBGmAvcNb8kZN4eMwsx5BefeCV1oviVIH50LAVXnG0vkPNexC1VuMex3KzIXamT
         EpGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=d1VW6132ze8EeMl2iHNHjctnV2i0AKqGppVR3pLhyK4=;
        b=CmnXMFyDGsLIjGmyUphsKKT1mAOslPHqWUPTgBdk3sYevfZku2aaUP6v9auMybbqRO
         SlNESLyLNagAyrBdO8M6cHJkxEvQzAv36fxAOTpbAAaHD7guDffbmBfKJ06Syaj3n/Wr
         jMZf00hSYiTBlaNafhr/l2mYhQBBAB65CB7NhkrMdYMjbObZK9SZO61Ukw4tI1h16qNl
         6+qiIL/uiUxS1mgyODSv6hReoWMAB1gN0f1TQQu9wM40LkZWI7gJ4GREvvAEX5W0CZAG
         6f5nDgyrDtwtbEGZcY1vr0qF6arQixXnZ3+S1MTHOQ/GZB5qzhY7+gyUivy/ocOjOLQ6
         3ZZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=IZ4845d4;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d1VW6132ze8EeMl2iHNHjctnV2i0AKqGppVR3pLhyK4=;
        b=gelJmsofnh5EMuM77b03syyTTbgijU4jtfWQAvEJywBU4LGx42tI81vHOyTopDgLc1
         xxFce7YDEOKZCpXEu0OipxV5FAKT0Yub8Sj1HayTdd6e7g2XJpNkc2Pc+OfLZzlfvEnc
         DbU6bFISdMjdd/ca8f/m3qdWLD5dUbAH7E11DUY70t2LHVg/3iijiae4V+DzpnbFvt7A
         WADD9wXzSpUSxjDdfkf3WCLh8o5EVuXZL8JdhhiVqDfqI9Z20jvA5YF7GCvJrJuW+z+a
         L5rx2KMW1JsDFls/UquRPjKCFr0T/NuTRGBA2bmHt5PDlojchuHxgeByPudZaCU75ZI9
         0pzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d1VW6132ze8EeMl2iHNHjctnV2i0AKqGppVR3pLhyK4=;
        b=pF1gZWTzQrnvZ+ATAKhn/KXK7nLfbxJH1+Pf8zkeG2lJXbB2dvqX6fZ28RCHWQZpoF
         5PXN69aezOCl3XZ4CQvuSluYSH57m/Imr4TEc+XaqFBCmGgR+sNYDgkeQWj0zLhMnvuH
         TLUy1QoXldNF9DfnCJ8jAkcltNRLvUFQXuK/PJ9379U1cyV2t5U94dZsmIsb2IiToMGA
         vqLfEtxXzM2q847GItYWcnZb82LRDY5tvzAwzPyTpr77XXZ4lNEtj9F8Tn4c5wzCk22A
         Uw1xM8BOPTtAt/dAiUmy48/OYFthK0LFq/MIFK2rLqVSh3lSrT671vsC7i+e4g5dsBLl
         lSfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Rl35R5yiEypjcnNnjx3WsknyiRdd4GrUKpi/hmAwfLYPkCoU9
	en5LOtmSBzm7ssmD5pFTxEc=
X-Google-Smtp-Source: ABdhPJzdxL+f8RR/aE5/ZdICaHTTvGTpKdSiW/QBfvsGnnaeEixhhHqU6qwywaXhGL1tCxWl/KAmmA==
X-Received: by 2002:a17:902:8488:b029:129:97e8:16e7 with SMTP id c8-20020a1709028488b029012997e816e7mr10356541plo.39.1629055816051;
        Sun, 15 Aug 2021 12:30:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ff04:: with SMTP id k4ls2759197pgi.11.gmail; Sun, 15 Aug
 2021 12:30:15 -0700 (PDT)
X-Received: by 2002:aa7:8889:0:b029:3bc:e8a5:50ea with SMTP id z9-20020aa788890000b02903bce8a550eamr12897984pfe.73.1629055815506;
        Sun, 15 Aug 2021 12:30:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629055815; cv=none;
        d=google.com; s=arc-20160816;
        b=Pfl49AMzhXEin2CLoHSWZYnM+5iwfvq+5DKPLBOEk9Z4rJ1bIubWh11WQEKX477Lot
         TI1cNKyJunA3uYd3qB+ZiqAxeMhcajZaxLfuq3+cVTGFdDYZ7gBSAjYQpoyDkhvhEo92
         e8YnoLAAQ+SA6IaDe9glCKkZZ4eYW6BhGxvX2r9CwCGYCoUzwmDwF6+akRN1SLpx1T6M
         lL5tRiC26xwxNKcflAC1qBU6WPpSlVOh46NykMHDmdtXDZ3Rq2Ozwgw5gWajttKODP47
         GnHK7aByr/HhVj5YwuVMMLTTk5KNfsmYcci+LrYW6nXNxGSDxyo/jRNgnFIM1pR3fdda
         eSWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=3gFMWEK6kMZFmRlXNITLL+N399Osl2Vj3LwZeLn5mps=;
        b=iJoJDJwq+4zvL6bNWu1dvaEjW+Fr4fbehOgk8blVCqy4lHScp5OxcSqD7NRrOcPtsP
         pihfdjLbmevX2HOrsZlpo8EyEOZX/bsqmESJ56S0NfNpBCI01FZlzD5kX59E83xqZtX2
         Qred6pWUKN3shxIm3pAK2rbEiFX5jee9hv57Nu808C/3Lc21nNbPw2pHkRvHmynRwuIq
         bSh+CCQS5J0mrxn++QB4I1rVztFF0mE/rL1ngnBwoJjCSw6o09bKm3L/gvZrVkvvMmIc
         y+b8ia0uCMSTpkr5YyGrkQ/20NMFut8jtTVJyXZMsXBwYdc9HhiLpMjwCNdE7erJqlDC
         TY/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=IZ4845d4;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q2si128438pfl.0.2021.08.15.12.30.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Aug 2021 12:30:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1D0C56128C;
	Sun, 15 Aug 2021 19:30:12 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"Pan, Xinhui" <Xinhui.Pan@amd.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] drm/radeon: Add break to switch statement in radeonfb_create_pinned_object()
Date: Sun, 15 Aug 2021 12:29:59 -0700
Message-Id: <20210815192959.90142-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=IZ4845d4;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Clang + -Wimplicit-fallthrough warns:

drivers/gpu/drm/radeon/radeon_fb.c:170:2: warning: unannotated
fall-through between switch labels [-Wimplicit-fallthrough]
        default:
        ^
drivers/gpu/drm/radeon/radeon_fb.c:170:2: note: insert 'break;' to avoid
fall-through
        default:
        ^
        break;
1 warning generated.

Clang's version of this warning is a little bit more pedantic than
GCC's. Add the missing break to satisfy it to match what has been done
all over the kernel tree.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/gpu/drm/radeon/radeon_fb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/radeon/radeon_fb.c b/drivers/gpu/drm/radeon/radeon_fb.c
index 0b206b052972..c8b545181497 100644
--- a/drivers/gpu/drm/radeon/radeon_fb.c
+++ b/drivers/gpu/drm/radeon/radeon_fb.c
@@ -167,6 +167,7 @@ static int radeonfb_create_pinned_object(struct radeon_fbdev *rfbdev,
 		break;
 	case 2:
 		tiling_flags |= RADEON_TILING_SWAP_16BIT;
+		break;
 	default:
 		break;
 	}

base-commit: ba31f97d43be41ca99ab72a6131d7c226306865f
-- 
2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210815192959.90142-1-nathan%40kernel.org.
