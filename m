Return-Path: <clang-built-linux+bncBAABBRO7U77AKGQEIWLGRZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id E30D52CE946
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 09:13:58 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id t7sf2212762oog.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Dec 2020 00:13:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607069637; cv=pass;
        d=google.com; s=arc-20160816;
        b=IjaVw9Igkm8V01V9vTfw/a05WepAaruM5Y7INadFYNkj3YnqsAnOXfbCTT4JsUYEkx
         SW48gluy7IANt/0dmKERFkkabg9lbQRsG0rXS7qf9HlYcAypfn3w8kh+y6W4IRk2X/u7
         6W21LtCgc7SxxkQPcBDYFmglPjMNgLCRGE7AnCSE6UTyrwAhBkYxkT/qSbUZUeu2Zszv
         fPRN3SN5hABffIqDbXSbjTL5pRR4fU9rzVE2VhJ8DLboXkbmnFT37/d+Fc5CnaU1zSRE
         W2/buL7L369f6KmAqlW2Sk6La4yeb9wGLShOFR1Gh3h9zua7tOd6V7HbChrZPZRcgFxo
         KJgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=gKpPpQJef7uQvnx2LoSFLnQblMeF3BFhKf4o6teoVBk=;
        b=xcjHvXwZP0JzOgM+N4A7tv4s6Gu3ySA1S6jkCGsy3BckAFkaVSZPmgIl31695tqEuQ
         WbvUAwB6X2CPY9eisbO25VhZXPkIwuqSHjUMcsUYp4FMPkFV0WepoRNNDhxY4xi6L4Q6
         0LNAMMqybVbE4IK9p1B5ASIjjuHtJuUVrHS9fvtCZQsB5HxW8qoNNmwqrhVYDfcGrIrx
         3ynfpuvJhKODP3mMsBY6uJa8QbfR2I/Y7uWSFqchhK6JvEcSVHyzT1PdtLAKBO4O0AdJ
         SjjQwqpPm9CwsjcLetAYOYePoKRltZPvDnd74V3hp/AKoEgnTAPp+CLyk3ZY61Nlpm25
         hHaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gKpPpQJef7uQvnx2LoSFLnQblMeF3BFhKf4o6teoVBk=;
        b=DifVF7tPAKpmsAeBE88OiGd3ZGY9GnCmu4IcY6jKHi1+OMmiMrEls0tdOzKnk0cYAC
         b5qjtAaBJBvbFVorPtnBeaqYZh3zRnnsR819xjyywxEDYLxL6HESUllzQ+rcTdLRi6Xv
         0GZ1X1lbSA6syGHgxquvhR1CzjGd29luwRgGBy27OF8YpO94jMXAe4X0Nj/VGN14kAUn
         A5AClRlxReqhATHSm928CKRrbmZLe40uv4UA0pMzJc4CRZql1JJcdXREmx2KoOatVE89
         MZevH8ycBeAF4tnta09dvu+zskoupwkEPSrGewpD4DSkG+0vNFICwJ6cXP6n9zRoSabz
         VsCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gKpPpQJef7uQvnx2LoSFLnQblMeF3BFhKf4o6teoVBk=;
        b=OcqCDHafkSjRAf4ySOb9WJfxlg1uvxV1iDeK60jC2EpWNH+NIlnyWdOBCXIxoqJWjH
         ZgbOhM45XbiDVmeL/J67815TarCnNk2P+NS1TTyC0rN4rZ0cgmJDb8XfmScDsSN8qhYt
         JLgQenjfTkFFtmoxJVkZ29jCDws76EoVwdX2VpVdWkNID6U1ix7DsOWb77iBhAKOYvmi
         +sN+TpXjhO1mIQv2xYLuPw0fNhBIBudwNuEE14VO6zcdh8KK5bhN4heViSRPXfDDltLC
         UW4RssUMujHRtTYx+toaodqh7PRwAW9tQd/JUn8omLSLClr2g7jAJcmchLXXDMDBXFuW
         v6cA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533MjNlXVzo3LbeQJlTXPSRI3fShi+N2dkEi8mxj0ifrY4xAoX/X
	suz95OFEZER9Qi16lTGZR2o=
X-Google-Smtp-Source: ABdhPJwHxGEgSBpKPzr+HRIvWwgryrEy4mN3Haqiuc73b/1CnTiVgdqNqLHbGHDwwGvCh07VCdjeBQ==
X-Received: by 2002:aca:570d:: with SMTP id l13mr2379141oib.96.1607069637600;
        Fri, 04 Dec 2020 00:13:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4542:: with SMTP id s63ls2174935oia.4.gmail; Fri, 04 Dec
 2020 00:13:57 -0800 (PST)
X-Received: by 2002:aca:3b56:: with SMTP id i83mr2377834oia.57.1607069637253;
        Fri, 04 Dec 2020 00:13:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607069637; cv=none;
        d=google.com; s=arc-20160816;
        b=LA3WNoLFectZ3bjNFTlajXjkF3s+bVgQ3+VXIcgtDrEgbSBpjXx1SU8lpFQ+frflRW
         2ikC+vTomNvcerXyOHUpdo7ydXYpYcfh/MvrOGHDtgKe7W3hRGiPueHmeAO3Z+tgqSbp
         dhWTd71TnuFhKvR3HqfciUDSmgvmS7D9Ng47XwgXA07ISUktDLKA7QQeSOHPXLsy0OuU
         8UHrm+86V++KFgwL5HL00Cs/R2SwdGZm/0yRnSmt5JEumjILLzmSxMRrCKEs2MSfBvdU
         ta0fS6I6+Nkx/dfiLZMu8CZ+9bjAE/IjcqWjVp1ThM9InpEG9MW33xtKRAMfbdTcMHJ/
         CCsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=Wv/9sxD0zmIamKf8eNwV9bQFTw6MqVCEGcz5XyXYABA=;
        b=lpc/UOJs3TBk/4PIDFqcADut7QHN5wjGtm7qqz4sXkb9OafVY7weWSRJHrhYG7waT7
         NC6dgJiAEbWWfGX+0yztWUF9eFJDvvCe4A7IQq4dbaHodlm/bv7cEFxKcJVs1iymYjvJ
         Xbo+z2qqYVr+7BTNXSqkkf/L5UdtuWv+xF0oiWnmEZ0JDSCuVAMwb3WS+X0jtskFbKJy
         8FzwqjJbnsnTR3pjLX2G8MOf0a67nDm1zU0Y/ESuElRvKmGEzGsnsmPEhkIBETw8ORiE
         JaNxwXJw8ZukSHUw0tO+CNtJcafxSxrcWQ4XfqxASoMC8plSQ56toZ24P9A3zoYELxpS
         59pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w26si120569oih.1.2020.12.04.00.13.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Dec 2020 00:13:57 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
From: Arnd Bergmann <arnd@kernel.org>
To: Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Luben Tuikov <luben.tuikov@amd.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
	Roman Li <Roman.Li@amd.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Mauro Rossi <issor.oruam@gmail.com>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] drm/amdgpu: make DRM_AMD_DC x86-only again
Date: Fri,  4 Dec 2020 09:13:43 +0100
Message-Id: <20201204081349.1182302-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

As the DRM_AMD_DC_DCN3_0 code was x86-only and fails to build on
arm64, merging it into DRM_AMD_DC means that the top-level symbol
is now x86-only as well.

Compilation fails on arm64 with clang-12 with

drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3641:6: error: stack frame size of 2416 bytes in function 'dml30_ModeSupportAndSystemConfigurationFull' [-Werror,-Wframe-larger-than=]
void dml30_ModeSupportAndSystemConfigurationFull(struct display_mode_lib *mode_lib)

I tried to see if the stack usage can be reduced, but this is code
that is described as "This file is gcc-parsable HW gospel, coming
straight from HW engineers." and is written in a way that is inherently
nonportable and not meant to be understood by humans.

There are probably no non-x86 users of this code, so simplify
the dependency list accordingly.

Fixes: 20f2ffe50472 ("drm/amdgpu: fold CONFIG_DRM_AMD_DC_DCN3* into CONFIG_DRM_AMD_DC_DCN (v3)")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/amd/display/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/display/Kconfig b/drivers/gpu/drm/amd/display/Kconfig
index 797b5d4b43e5..54aa50d4deba 100644
--- a/drivers/gpu/drm/amd/display/Kconfig
+++ b/drivers/gpu/drm/amd/display/Kconfig
@@ -6,7 +6,7 @@ config DRM_AMD_DC
 	bool "AMD DC - Enable new display engine"
 	default y
 	select SND_HDA_COMPONENT if SND_HDA_CORE
-	select DRM_AMD_DC_DCN if (X86 || PPC64 || (ARM64 && KERNEL_MODE_NEON)) && !(KCOV_INSTRUMENT_ALL && KCOV_ENABLE_COMPARISONS)
+	select DRM_AMD_DC_DCN if X86 && !(KCOV_INSTRUMENT_ALL && KCOV_ENABLE_COMPARISONS)
 	help
 	  Choose this option if you want to use the new display engine
 	  support for AMDGPU. This adds required support for Vega and
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201204081349.1182302-1-arnd%40kernel.org.
