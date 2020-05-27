Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBS5FXD3AKGQENKMZYQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2106E1E39EA
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 09:12:13 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id jx21sf1803936pjb.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 00:12:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590563531; cv=pass;
        d=google.com; s=arc-20160816;
        b=QzOhM50ZJ+j+FAad/U55q2HQMuXc/l0guLAjFkz2HeC7pkzI8IhwiOl93XB1g7y/25
         wk7gKYNDz8eWar96d2p2dfbYuIbq3QBV6D0sPgJ983oMt4+utCsRTLIFtNmW5wdf8dO0
         8giy4evWMD3OGbzBHFJ2VotSt/rnJOPFQH3aHdpYhwiDHKJ5OnTnL39t1V59svET27kj
         gBsID8A8dDlqphmvOFksPiVqt7a8fz0UcZp28rZABXKo8xtBshQGJbYXYSuP/NhF1iXR
         fnClVMMZb6RRKEwQ41Xn6RiSXwo2wa0bEfCNNQi28M/oOLHRKLpYCv4DYd4do815D9Dj
         683Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=BppT9ESJpxi+F+BK4I2NuiYFdr2HX6buw9uqXVuzUtE=;
        b=cPpy4hXH4AoubWz9n8r8KA4L+cwxmPl1Nji62g8dUHGKmHQPknMqMA+m9OBPnHX4l9
         ac6/ZUaLb/ZDLoXKhTvs23yRpziBSQ6q08GLDT+ZL3okahInRenJzJlUE9g1g6cyl3PC
         kizrY8HeVEuebgDuPzKoLaIm4rQlRiWdLoyzILIG7b8pii7Qs7uEwAqhpd0cSeF7uDoi
         r4noaiL0VNMklTInIHSnNL+/cyoAXCpgxktJNfz/M+hkypm3JCftphnN7sLs+vpujf+x
         xA4hhE6xbZw7DBFgji11+ZPZK9joXG/8XZd5/WfYZeV3m/sBKTj0QJSJU78HXK7QP/SG
         LviA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tqxJOttP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BppT9ESJpxi+F+BK4I2NuiYFdr2HX6buw9uqXVuzUtE=;
        b=Xtr5D8yXi6El7naYwKD995T2ZBzfUIi+N+fXh84rQrqjcNAoaSadmsN7tUQPsZtn9W
         VrNpFFC3pDke+/4OuoB5QGhgKtVwGaRFlUz+UKlH1KuTEWsvepIvCZ4jp6qyhqTRL0XY
         A+dtj+Hi+RZ2yNyXB/4ntxt7O9bV6ZHfx5apmDOiL90RbwdphtrzLAGz3WIBipi++155
         zKtBihvYEq3e+JyJvQWpRRws4uxJqLpkszvcmmwNO6dG6OUl5OVAn0U8QuvKxgVGoXHp
         uuKl+T5ZlrRY1XbQ/twrNq5aJZDWuTklDovHv6g1ZEaWGw1ZF5750CtrJpVvFCNj0wXK
         CQpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BppT9ESJpxi+F+BK4I2NuiYFdr2HX6buw9uqXVuzUtE=;
        b=QGTTrQgvwr+bVebRFAPWOl84WTixlYkRU/zLuvxhcOMrj1vFfVoGRKEl0RTLNxqHKb
         rRTFY49Rfbd9+LwzPXXaASQyti5gSjfRR7ULpt3zUT0UxT5KzRc38rbGVZILW1vEsYEe
         xORjMQH+s/rNW8r0ZWUGS8GhoZHNwfHDnFxLFkfPdeKrWPPVwfOO+xtdap1V+h4el6aY
         WEFn8yq//p6I2Ejr5miWOZXfb0nwhhbTSRtSQ/tduLh8GbZeV5hi1PzoNoqTtN6OLkpE
         8LHbVNxv1Jmic+MlkeZLIraemf/5hUhmfUo2zS1TYg2hlZcibIVfl35evHTSNZbQH4/1
         KASQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BppT9ESJpxi+F+BK4I2NuiYFdr2HX6buw9uqXVuzUtE=;
        b=NgvyIEGOi16yTC8bxLX6aCCyr+UcFDkl5L3jYOysE9Wtecv4m2OHJ0YuOr4Tjzocwa
         w9JKMw6Qbco3793vebDvEh6+yIDCz7PBVWd229nqHJoqPkg1KVZL2gUK+4ikSoCEVW84
         CL2nDklwtdpHuXe7NrwLQAnpRek2vyluAqKcuA7968jmxI6czeq/UMXOcqMLESMxr4TQ
         hBhq53MsTDAxH3Y4VPFNTZxhh5V4X2BfObr01w2L1tYPFG1E6UVG1ygkCeb0QLEHIVpF
         5PWGTTn4Jl5kCzyyEqiS2NQNWULTLItoNrAlx08hNHb8vOEk+mWaKnAdMhpRh3Bmhbuy
         VwLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533s6okcfyoTxx/iwNPO/jiW0id8YQzALD7g5C3FzXdQqXKRjNba
	Y7VB0oPCQpf3mM0+Zq8QR7o=
X-Google-Smtp-Source: ABdhPJzK6U7xLrCBZuIIcrWySO8coBVEIXiL+v1r2d7rZMFICowv40uou1hAC+VaVvL7CIl7nERm6A==
X-Received: by 2002:a17:90a:ba18:: with SMTP id s24mr3645300pjr.192.1590563531678;
        Wed, 27 May 2020 00:12:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2068:: with SMTP id n95ls1010001pjc.3.gmail; Wed, 27
 May 2020 00:12:11 -0700 (PDT)
X-Received: by 2002:a17:902:7896:: with SMTP id q22mr4856874pll.216.1590563531302;
        Wed, 27 May 2020 00:12:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590563531; cv=none;
        d=google.com; s=arc-20160816;
        b=B7h6Fl2XVVTAVyKob9uod8ruBnbN2GTOTmYQo9+NKty76D3Kkc0GHtLypJ25hcad+C
         E6VIWodbVKjA1+E6S9DGkCnH1I3V9Jcwh7n8cdC7W8L6GwVCgnu/2LhVrRQjZSBz6wbr
         Hv9km7obtJadF8PHHJi0N4l5D1ADrhtHyK3MjLUcKDj4U6Z0YA/fA+0Us3x2nhoEWww4
         9JIkya5WSTqlyHsscIQWMExsqRuoen3sy/2p9CgWM73Za6+bgjkUXwykWDk6xlKrW9l6
         JOPprxnmgfro633wY/7CbWXQ+AH7pW2c02859Oz/+w3F7pGrEJT2VuXXjkk13BSq2gPK
         eqbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lhqAHEvRLnCQw7o+jUfsPtsKFyOebABISvsPaRwN9pA=;
        b=mhjvMirs3G7tLUAU3pBUxYAMhLchskuCA07Whq8pkLMbZM/Pu84pbOZNmMr8oiEsP7
         B3hh/aklqw+97BuCa4JkxjAsbI5M+Qi8WYQkjQZIcaK51StFv+lr3AWoaGBNXh2xi2ta
         2cFQO7vshTJ7tbUXpwllWl/dQzevgntZwPkNQfBhnQ4K+8E4FsMCj2xhxZrSaQ8tmmS8
         W4QN/A0BUlPV4+WaHvYwXa66IlbDk6N6o9Iie3T3oT6nLzAOglbaNJOtMlW81CHum06J
         +v3d4xqmmvbj9trVdbS5NRgsTueFFBVwM7zncsfebPmjoPwHEPrDm+ZvBJ6zFv2hsfjJ
         l1/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tqxJOttP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id m81si254337pfd.2.2020.05.27.00.12.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 00:12:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id 124so5159831pgi.9
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 00:12:11 -0700 (PDT)
X-Received: by 2002:a62:7c02:: with SMTP id x2mr2597592pfc.70.1590563530733;
        Wed, 27 May 2020 00:12:10 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 10sm1306431pfx.138.2020.05.27.00.12.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 00:12:10 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	kbuild test robot <lkp@intel.com>
Subject: [PATCH 1/7] media: atomisp: Clean up if block in sh_css_sp_init_stage
Date: Wed, 27 May 2020 00:11:44 -0700
Message-Id: <20200527071150.3381228-2-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200527071150.3381228-1-natechancellor@gmail.com>
References: <20200527071150.3381228-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tqxJOttP;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

../drivers/staging/media/atomisp/pci/sh_css_sp.c:1039:23: warning:
address of 'binary->in_frame_info' will always evaluate to 'true'
[-Wpointer-bool-conversion]
                } else if (&binary->in_frame_info) {
                       ~~   ~~~~~~~~^~~~~~~~~~~~~

in_frame_info is not a pointer so if binary is not NULL, in_frame_info's
address cannot be NULL. Change this to an else since it will always be
evaluated as one.

While we are here, clean up this if block. The contents of both if
blocks are the same but a check against "stage == 0" is added when
ISP2401 is defined. USE_INPUT_SYSTEM_VERSION_2401 is only defined when
isp2401_system_global.h is included, which only happens when ISP2401. In
other words, USE_INPUT_SYSTEM_VERSION_2401 always requires ISP2401 to be
defined so the '#ifndef ISP2401' makes no sense. Remove that part of the
block to simplify everything.

Link: https://github.com/ClangBuiltLinux/linux/issues/1036
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/staging/media/atomisp/pci/sh_css_sp.c | 27 +++----------------
 1 file changed, 4 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css_sp.c b/drivers/staging/media/atomisp/pci/sh_css_sp.c
index e574396ad0f4..e242a539d3d8 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_sp.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_sp.c
@@ -1015,34 +1015,15 @@ sh_css_sp_init_stage(struct ia_css_binary *binary,
 		return err;
 
 #ifdef USE_INPUT_SYSTEM_VERSION_2401
-#ifndef ISP2401
-	if (args->in_frame)
-	{
-		pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
-		if (!pipe)
-			return IA_CSS_ERR_INTERNAL_ERROR;
-		ia_css_get_crop_offsets(pipe, &args->in_frame->info);
-	} else if (&binary->in_frame_info)
-	{
+	if (stage == 0) {
 		pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
 		if (!pipe)
 			return IA_CSS_ERR_INTERNAL_ERROR;
-		ia_css_get_crop_offsets(pipe, &binary->in_frame_info);
-#else
-	if (stage == 0)
-	{
-		if (args->in_frame) {
-			pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
-			if (!pipe)
-				return IA_CSS_ERR_INTERNAL_ERROR;
+
+		if (args->in_frame)
 			ia_css_get_crop_offsets(pipe, &args->in_frame->info);
-		} else if (&binary->in_frame_info) {
-			pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
-			if (!pipe)
-				return IA_CSS_ERR_INTERNAL_ERROR;
+		else
 			ia_css_get_crop_offsets(pipe, &binary->in_frame_info);
-		}
-#endif
 	}
 #else
 	(void)pipe; /*avoid build warning*/

base-commit: 938b29db3aa9c293c7c1366b16e55e308f1a1ddd
-- 
2.27.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527071150.3381228-2-natechancellor%40gmail.com.
