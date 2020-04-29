Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBN64UP2QKGQEJLI3PJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id D204C1BD2BE
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 05:02:16 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id c26sf1121562ioa.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 20:02:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588129336; cv=pass;
        d=google.com; s=arc-20160816;
        b=y5lJb3SEj57axBLzQby/PqXMf7odfMuN11ipI6V8ZoBIMucfB1KUo1/UN4LE3r56b0
         J1gUlNy6AinfmAGRmM5rM0nkPqbqjovKk8Ygp8Th6W7anqr37yPt9iZoAbhdjGhfDza4
         JOVCjaurIAvJalFYGLm5H5SRdng1dUxgV7PngUCZp+AfXwLupZIjgT0CEAkXvGO3wCYY
         zgq7mXBSiv95HR1Lo4RDF4NCdjQR2SKe0IqSX7V6DRrrsEpDzRw3rwVZd/BNqWR6uGoP
         e/AAFsgq/txV2XPARLvE0/wFZiCTn0AZIPFLR/ColzN75sWA8EkcIpG+mZbGggmPfK3q
         IAIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=3k9Uec1PKelyXkQHJAsykSwso3k4cHGy9lYrPWysMVw=;
        b=CObj+HrXcK+iYlmqZb6ZzZpvc/mc+6wcG0paagHryXzYeS1sjyy3q62eM1RCc8CCKr
         7s563ivcYBZQsyinfGLVUp/A1CtHCIxonw5Kx8XFxk0lct/INFvXPt5jb2a0SU1yzNf6
         L50Y9SFcJvriSSn1Uw6QsaLPZzMj16Gfd5mk6ZdIg7O9jZ0vfFBKGAB8S9k15RFM+Phi
         lLCrKwiAPGJxyrLshlh6j0EU7rTfyJHnZMwY7XCwdaiL5oYuC3+Ha2AQfK7YHLCRIPve
         EsYxzWwGnHL8Wwo/MRwJcK3O5jwOARuiFps081mJf1/u1CwJKk1gxL5pG2XEQoMjRV+U
         //Fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MXsmR3gG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3k9Uec1PKelyXkQHJAsykSwso3k4cHGy9lYrPWysMVw=;
        b=m7YpeG3J2PrgC4fOWZ07tWuflB3Yej2JSygRs0mYt4nR1yjFhRePLlr2vkYDit6rPm
         p97sITyID3kGCK423sYiQUSwXp0kcmxI5w6v82SoNFDYFGup3DXqpycQJU3NHvY2joY6
         +xmw5m7Xslp3YKfcGzxAvxZEpVx9nYRsy/+vbjktJ3FZMvVF8+jrS7YAW+SAWiYDgHjX
         z5qvi7Aq3yThisECPKYQMpOHI39/zQXDZmtfq3ZTOphQMKFK2BT7UkucjLFQG3a9W+qP
         UquVF34YOocEahC0oeHlLOWyrejMws85WY2ZuJAP92N6nkXpa39Gk8I/LH742GlVPdwb
         InsQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3k9Uec1PKelyXkQHJAsykSwso3k4cHGy9lYrPWysMVw=;
        b=U069nrcPK0pv09FtgDh9KaioV7uDPRWGYDTtuxWjZIDzzxKGmwCr9JKlf0GxPgCSRs
         xvo0mKJ6q6b9vtyETppYuMlsdr6NCEHESapsLWHw8TjdTxdQQT3MW7MMM/QzAEg0nqlR
         1RhyDUorSAvcMk4OA0+Q9eqFRKcu4u1ikq3Q9e4OaP7ydZwwc/CrVWfuwxjD/Al5Nn/A
         1FFdOx2byyJ3RxJAIx5JwpjSTAIThvgTRmSCRADqiGDAqWbDPBkdtBVz1PWB6yq8vLN4
         y1ugjpMLIZI9JF7vGuwSvEB5F8kP7qh2lRo1xQsxcntTnsdVSA1yhLOTGHZypUqyBlqk
         917g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3k9Uec1PKelyXkQHJAsykSwso3k4cHGy9lYrPWysMVw=;
        b=gKEO9wbgsq5J+uUUbQQ07QAlF9373PnTpo6xaaM+NxvK2iG2F7JTNR007n131WYNMq
         cLWak8M3v8+Cbhpov47yczkMymKKpmHnQts72Z2nQEoDwcw4ens7z8gbKiBDN3hltnzT
         pxFdXcpdJ/YgVl5rbmm9VCEKQCsqB4q8V4wSDhSvNj0OCuE1MUoqKswMqcPUC4vRRHmY
         Wy88+z71LVppnmoh5BBF6ujpz+K4fGjR0W9btU3uE5m9Vl/EqC45hlPJnk0CUlFSrBPz
         wNZhua/6lIjAvnrVcnHEfM6S5GVC0kieyg9wNdDQuRajZ7mDIcpe8JMLLARS5wG50cr9
         i2eQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua35PJarK7ZAqcrSjgtN2EskAwdAQgHtWku5xC49R24Q2l5l2rD
	nJQ5mIWcI4JV8t+aBK+yp9k=
X-Google-Smtp-Source: APiQypLjJfgMgss/nt7v5OE9NwOfp9LCurHLzm2UA6QPVK9xxM/+kbkWjOayfopTPJPovvbsfBMlZg==
X-Received: by 2002:a6b:cf09:: with SMTP id o9mr28050786ioa.7.1588129335820;
        Tue, 28 Apr 2020 20:02:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c604:: with SMTP id i4ls6175000jan.5.gmail; Tue, 28 Apr
 2020 20:02:15 -0700 (PDT)
X-Received: by 2002:a02:2708:: with SMTP id g8mr28732927jaa.52.1588129335483;
        Tue, 28 Apr 2020 20:02:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588129335; cv=none;
        d=google.com; s=arc-20160816;
        b=WZB/UyUo/dVCwKtm3kiqP+xp2ZwJxQl8mb9aTkPgAOFtXnOMEhlPZuIBdeC2gG1Nri
         J7NnIFVqy92XUAD33LILCQOEcVHLLBjfJvslWEPqbPgnn8IjiGxL4VMIroZ8DFY5uokQ
         3PftEMLB6Sp9F2x+J2UYj7S9syNzVdLTGGXmJ70FMUWN5UwE2Iv5Ly5D6Wxni6L4zCgA
         NP0P/y8i77loUgP4JOxyqD+u7rTPsj5UnxWZUhCh/Pko/5UuDcib5ZVkfPUp62CPePZ6
         sxHSNMQhTrx7rRpM8IdLSwjMEBByeneE18lexbxhnejWF5R/6OLe0UbDlTKsmz6kVIMs
         vHuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=vat/A+5wAq17/5/tk88DCdniaj1GWzYrag6w3vBmDBk=;
        b=Mj0Z9U9Kp8ad8of1IvxNDmZwID0CaR4llCJKl+BTLTnMKcwGIANNXPcv+wT16nytTD
         Rw2WIQcwD9wbQgPCInbp30qfbqCHVKQLJzY4hJItfY72tGSO1ytK9YW03/uWAnuvyUDx
         rZApzGLlBVviCaicE71Ojrf4HYxFD1JvrS7nsdzeg46LoKm2kw5T4kbSOIPkQplyVt4r
         Wx5LWu+kg5c1QTfchftWtiVxSbCHPMqtSzAzoLwobjSRK3SKVQDs39h94qQ+dtXalwr8
         jFhB5UNWLdeAir+Y0QhZzCB3/cmE49wlOlLUaZCL3BrST+Y1/fVNX06oyZST3cFXLs4p
         4aOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MXsmR3gG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id x4si44040iof.0.2020.04.28.20.02.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 20:02:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id x10so541766oie.1
        for <clang-built-linux@googlegroups.com>; Tue, 28 Apr 2020 20:02:15 -0700 (PDT)
X-Received: by 2002:aca:fc0a:: with SMTP id a10mr323869oii.77.1588129335074;
        Tue, 28 Apr 2020 20:02:15 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id m189sm4262046oig.12.2020.04.28.20.02.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2020 20:02:14 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Chris Wilson <chris@chris-wilson.co.uk>
Cc: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] drm/i915/gt: Avoid uninitialized use of rpcurupei in frequency_show
Date: Tue, 28 Apr 2020 20:00:52 -0700
Message-Id: <20200429030051.920203-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MXsmR3gG;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When building with clang + -Wuninitialized:

drivers/gpu/drm/i915/gt/debugfs_gt_pm.c:407:7: warning: variable
'rpcurupei' is uninitialized when used here [-Wuninitialized]
                           rpcurupei,
                           ^~~~~~~~~
drivers/gpu/drm/i915/gt/debugfs_gt_pm.c:304:16: note: initialize the
variable 'rpcurupei' to silence this warning
                u32 rpcurupei, rpcurup, rpprevup;
                             ^
                              = 0
1 warning generated.

rpupei is assigned twice; based on the second argument to
intel_uncore_read, it seems this one should have been assigned to
rpcurupei.

Fixes: 9c878557b1eb ("drm/i915/gt: Use the RPM config register to determine clk frequencies")
Link: https://github.com/ClangBuiltLinux/linux/issues/1016
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
index 3d3ef62ed89f..f6ba66206273 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
@@ -336,7 +336,7 @@ static int frequency_show(struct seq_file *m, void *unused)
 		rpdeclimit = intel_uncore_read(uncore, GEN6_RP_DOWN_THRESHOLD);
 
 		rpstat = intel_uncore_read(uncore, GEN6_RPSTAT1);
-		rpupei = intel_uncore_read(uncore, GEN6_RP_CUR_UP_EI) & GEN6_CURICONT_MASK;
+		rpcurupei = intel_uncore_read(uncore, GEN6_RP_CUR_UP_EI) & GEN6_CURICONT_MASK;
 		rpcurup = intel_uncore_read(uncore, GEN6_RP_CUR_UP) & GEN6_CURBSYTAVG_MASK;
 		rpprevup = intel_uncore_read(uncore, GEN6_RP_PREV_UP) & GEN6_CURBSYTAVG_MASK;
 		rpcurdownei = intel_uncore_read(uncore, GEN6_RP_CUR_DOWN_EI) & GEN6_CURIAVG_MASK;

base-commit: 0fd02a5d3eb7020a7e1801f8d7f01891071c85e4
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200429030051.920203-1-natechancellor%40gmail.com.
