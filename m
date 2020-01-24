Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFFIVTYQKGQE2SGRX3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6CD148B97
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 16:58:13 +0100 (CET)
Received: by mail-yw1-xc37.google.com with SMTP id c130sf1659646ywb.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 07:58:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579881492; cv=pass;
        d=google.com; s=arc-20160816;
        b=kGsvu2g0X8sRbd2ZwLl4vfhb8irB95ErBL7EWG+eR9PhAH4HtBVwkN0lP03axIIMfA
         KeMWSu0+APo1Fy6nuXeABLG0J29bVKLCLorMsYfURYBvcyMwa3YuAjzhah02JVg0ofYS
         v2OxTxwppGxkhXObwgFimmfhDVPqAktpjWBCZUWHX5sKm+nh7lxuvsMjJ7f42Y6xuQr1
         RC1hjDzHqTSr/KvEQqdT2V1Z2G6R8aJJbejDJ2A8mDJhNL4Mv/POe0OG1uO2Yf3uacJZ
         5Wq7fcW6t7Pn9V229ecFiCnIVt6VioBpsGcwBftlI3V53vdCLuogYrSj0aMzSo1wCy7C
         QUSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=x0CAazhRdiY4KUKHdSENXV3azOOKiY/5qCfaYVOW+cM=;
        b=FhL4sWVrm5TYX9yvH8nUmg4QdiReKM9Ksju9oiyfi3831QfPOTkXmBzSDR7R+hQIlF
         sk8hLAzsAJC7jytw2e17SMR229+uWNAZSdIWa1tcZf3Li8pEmlzvTXW7zWNMZFxm5xDz
         9xc6im8y7m/aS93xYYIOwTJMUL1+1oOtnY0+OV7nrXdyFSG3i/AA9a3587YtSkXRqdi4
         W2wvXeEzv4lNOlUrdlAzOdLwEPk+GLNLo9DH2XbkYl7k9zPl+vsJSVZXsqEOdnpBBcFE
         J+q5fIZES6oIJTMvbDtuGedv+ZPUwzkN9bGbRYf/RT0Hqqihu2tzDOUGbmQrw6BKroSW
         BlzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JpQEHJ2R;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x0CAazhRdiY4KUKHdSENXV3azOOKiY/5qCfaYVOW+cM=;
        b=cIGbxiJtBT+xc8RAJ/0rTUM1kEWFE3r+cF1Nji7kHorPRNSDZgi0zHQlbHzOTvXsDz
         Kz4v8/vgXbK+/hM8KFa1zMGrR/8IeChiSqdev6q2+AW1uFV8BKp+g8aLbSYrthYzMGBU
         jeQSb0oQIHQOEvzRNQBnbpIwMFXbjptFPzn05lTJu/IcyQ9EBYKUytblHDc0X0KKd/JG
         vOYufSVPgLnoUJ/zbcveW/0lzmJ4cN472XNBQdJXM3M2gQg+il4CIbxdjgFLNQh19vNy
         UBsSoA7vKyzT0vpuZT+HAOUR6EHcqfawekA6HtoJrPFeVbYudlJQK3a3bwRDjBJ+EWgo
         kGcA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x0CAazhRdiY4KUKHdSENXV3azOOKiY/5qCfaYVOW+cM=;
        b=H5UzcMupvLOFme2bvztmF/Ab6IsjYXXnC8zSd1m+kBRPt8t+fnrafnrXG0ygJNcsa2
         8e/w9JwWIOfi+3sJaKABuXODGk+JAtYeSUWEpNihhz1+vm9HZGyBlnr9/f0rRGGtnotx
         bVQGHtTAd/UknOJ5HRSrrbfXRYxfwWaFjSOqP7H3JURpKsNKCftcoXI+vkSYTLqFlrdq
         dvIUg1u+1w0XV+gM2CPbxkj9q1OoGQjECHy/ThsoSAGJzqZ+Sm/Z4I3QYaPrqlsTQFq9
         zSoWODRhHUNcgqikUflMeVN/UioT5Au6nfNp3Ok78mlKsZgbw+I8Z7gwv1XFDnU5krz2
         p4rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x0CAazhRdiY4KUKHdSENXV3azOOKiY/5qCfaYVOW+cM=;
        b=ULT8dGQ2De8cSt+irES/piYvFcNMfWb07NmROT4yzmLybu9aw4lP9JixachCWAP1qD
         8OScPof/TGSXUniIzqMFHTIkskxTOMwLd5ggOkBpu6ef6T2elsEaIUNaNCVjCVFGOGx1
         Iv1FghAHxhjXHLzraer516bfWfZf5intGwiCUiKkkrS8IHpuyhWfuth/OfsQygak+wL2
         8DA6bnCZoOra7uacWrlfDSqJVjCQZ5xNyKodMciOX04hyY2sRxrws1Id78L9Z7CuUUkw
         Sl5ZowvJJNjpQxt5pOnF86UoA1bOU4JzyQGhoVVRsfKjrfiDFHr0eUNiu5OoainW3Hm9
         JbRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUbUSBJa5mKxdf1TXf1AlbICeuSM8D/PdRzI/IKDToFDqgSoevb
	yx8ymBB0N9b/YKTaLO/UjDI=
X-Google-Smtp-Source: APXvYqwj/xJvoptg0gZ45a03hZjFfiHyorWgH2zyv0pMali1F9e4K7ilUj07jicUXJAOR4Q39AObPg==
X-Received: by 2002:a25:65c6:: with SMTP id z189mr3025767ybb.365.1579881492187;
        Fri, 24 Jan 2020 07:58:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:cc05:: with SMTP id o5ls497132ywd.1.gmail; Fri, 24 Jan
 2020 07:58:11 -0800 (PST)
X-Received: by 2002:a81:18d0:: with SMTP id 199mr1407910ywy.216.1579881491688;
        Fri, 24 Jan 2020 07:58:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579881491; cv=none;
        d=google.com; s=arc-20160816;
        b=Bet6OV8b1XDVX3H0qw8bpVejNd2zdx4NSPzTR2xGNSKMMc1m17QNAfKlLrYQA3eZ32
         SufB18vxGuyLgq2unWGHjkvVpe1nEdvD7SNvlm5+pOqdffDWxdJi4RUbZ4ALxdMCOREp
         rt3sOVIA64z1SOUH7/lR8neZHqGVIohmwhmtsjbjEglbxMi6dTz4+YB9Oz1Fx3Nonbi3
         zgowcDSI50YGfN1Mhxhjzk/tM4BIsiPSgIKflKnk6CPlefMRjKebQ+33OZ5iD1BHwUyo
         7Gb/p+r6RUBo2It3rIIk3dt3yGs2QtnyHZGjlvct14IO23/O5uRx3Nj7wkt7yYCSBajo
         qkaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=KPUbG3hCFOeAz+2tCYBbaM8hPXs0XfYtKSvTc52tAwI=;
        b=NMwjQBnHRwnW/8iY71Pf/4TsfxZshbr484mHTGfSWzqdW9//NkvooduN/ocoDd3F2A
         CR5jwZfzQHlP91NC3++w78H3KhhsTKG7vISCKZveiZB4O6d8AQDGC8P6Rf3GnvmSjOxk
         ez2As6gbKQpgF0xy+rB0OPDzyUla+T41oMw0PUFB6NTNa2TBLlWWw0Vd9Qql8xRRDWnI
         h7GEKUObUC8fZqEWg6lWEzW3Jc4uKScDrwewjLWPuwAE2xdLSbg81f96VV7ra73kO9cn
         RahnkB/aO4BSBK93fOrwTJ0BK7qalYEvy9U0H/N7VmdnbWCJiuQrUcSrr9dYrTvFWJJc
         0/uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JpQEHJ2R;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id f8si327641ybg.2.2020.01.24.07.58.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jan 2020 07:58:11 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id k4so2279620oik.2
        for <clang-built-linux@googlegroups.com>; Fri, 24 Jan 2020 07:58:11 -0800 (PST)
X-Received: by 2002:a05:6808:a9c:: with SMTP id q28mr2455682oij.176.1579881491127;
        Fri, 24 Jan 2020 07:58:11 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id h9sm1820292oie.53.2020.01.24.07.58.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jan 2020 07:58:09 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Bard Liao <bardliao@realtek.com>,
	Oder Chiou <oder_chiou@realtek.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] ASoC: rt1015: Remove unnecessary const
Date: Fri, 24 Jan 2020 08:57:50 -0700
Message-Id: <20200124155750.33753-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JpQEHJ2R;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

../sound/soc/codecs/rt1015.c:392:14: warning: duplicate 'const'
declaration specifier [-Wduplicate-decl-specifier]
static const SOC_ENUM_SINGLE_DECL(rt1015_boost_mode_enum, 0, 0,
             ^
../include/sound/soc.h:355:2: note: expanded from macro
'SOC_ENUM_SINGLE_DECL'
        SOC_ENUM_DOUBLE_DECL(name, xreg, xshift, xshift, xtexts)
        ^
../include/sound/soc.h:352:2: note: expanded from macro
'SOC_ENUM_DOUBLE_DECL'
        const struct soc_enum name = SOC_ENUM_DOUBLE(xreg, xshift_l, xshift_r, \
        ^
1 warning generated.

Remove the const after static to fix it.

Fixes: df31007400c3 ("ASoC: rt1015: add rt1015 amplifier driver")
Link: https://github.com/ClangBuiltLinux/linux/issues/845
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 sound/soc/codecs/rt1015.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/codecs/rt1015.c b/sound/soc/codecs/rt1015.c
index 4a9c5b54008f..6d490e2dbc25 100644
--- a/sound/soc/codecs/rt1015.c
+++ b/sound/soc/codecs/rt1015.c
@@ -389,7 +389,7 @@ static const char * const rt1015_boost_mode[] = {
 	"Bypass", "Adaptive", "Fixed Adaptive"
 };
 
-static const SOC_ENUM_SINGLE_DECL(rt1015_boost_mode_enum, 0, 0,
+static SOC_ENUM_SINGLE_DECL(rt1015_boost_mode_enum, 0, 0,
 	rt1015_boost_mode);
 
 static int rt1015_boost_mode_get(struct snd_kcontrol *kcontrol,
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200124155750.33753-1-natechancellor%40gmail.com.
