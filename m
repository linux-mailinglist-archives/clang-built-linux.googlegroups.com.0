Return-Path: <clang-built-linux+bncBD66FMGZA4IMTV52Q4DBUBGJBQSNM@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D963C8146
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 11:18:03 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id a15-20020a927f0f0000b02901ac2bdd733dsf657864ild.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 02:18:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626254282; cv=pass;
        d=google.com; s=arc-20160816;
        b=i9znIPUp9cahe832bVp4xo4ToLhloG3Sc7C8wS3yc8Sdkc+9UZpfJxjO+NRCd00Hkk
         CNNdEItSypoCmVBRmoP7/ZogobRjOiuTiX4USevgq2sWBk25jFWu37qoFdx5TvtWsQuD
         bYSOF/8Se70u67rFKOe0BVt20dUnnP4gFIUGMqKkz7rTd8Zvk1gXNWoHCgyBvahgZceI
         7aNI2xZLavE5cGPMLvOEI0VZulN8b7BOMwbLiohWSGgzh6Wo+A+eArSIa5QLzS0WCfkY
         NBtGgC5HIQaHI7REKMTrp1ptH5aJSuCYSRPtPF3Wh4a1my/7tYESnGM41YvguU8FTYNl
         s7tQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=VzpRg3wgrK0loBBRUndZvyWUFNs1TPPY/WUSOxkjP30=;
        b=huU3qPjbMzGfEymKYHaKuJGtaDkUdjOnxnBHbP1fPbaeptZh0OCifnMl1dHzCBPMGM
         lDWkz3ot0lOXmrXGMkFkkcqoL2KtWY6U85kzLMLkVknFDflIzJwYACn/wvU5GCn/VJps
         uV7AazV6q3WK3R2fZsxz4WYQPlwimoXVSlIoFpl2lpdz5CsoKZXYvEIExkfHudT8L+1M
         e+mJRENfOXFoqJ9YtN+XA1L19pp770/BMQXzn9nRhAP24ZeM50aoLdi53s1hC/DsN7YJ
         TlQn6poFkG05SM+/d7Z0gX4iIVMImTzE0sPd6ArcWnQ0H2oDu3FIAeDO1k4StI2xnNcl
         tvQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vEVz9LPD;
       spf=pass (google.com: domain of 3ykvuyaukeecvxakxpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3yKvuYAUKEecVXaKXPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VzpRg3wgrK0loBBRUndZvyWUFNs1TPPY/WUSOxkjP30=;
        b=TxbkDS/nFpJR/ZMW2MeBKEsMd30cw3EKHwDpwDiB5euT7n0QExp3tibn0R9Z+oZVAN
         nei5BO5fYWZemLX2cUYDcDwugGXNZvd9utG54e/FNGPKyN9SJ4lWdrnGdmfMiAr/bQ1+
         KoK43XihwFAUXGB5ZLqLswKur22+CJDcnAN/EZsbDbFz1diaGIhy0yaYF+wE9QsvpHjN
         DlxKGDYSms65FveYD89TAbt8EgdOXRfhJgoxt1Un9aCQaSJ6xNVmy0gI8UEcw2fGoqYG
         uoK3pH+7d8e9aAE0SULSiUvKq+A/fijOf5yEqvsBLtjU3BNyPHOhQjxkqpXPWsNe75o+
         tclw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VzpRg3wgrK0loBBRUndZvyWUFNs1TPPY/WUSOxkjP30=;
        b=LgzUCf3yW8hbcMrDydWdfIhkSeJ6MHPK4afUPnOOpeHZdKGyC4PTUxW/OjuIivryVH
         A+kccw/exW4RZixH8/A+gQeTXDVcB603wv/MyyVv7rkZxqR3qHE0qHpLEjUsgMhkYSrk
         Af1arD49KrngvvFP78l19TDE3rM3wof8Er0ycrphPWyr0LoXr+6pa7BkxHt55M0mZ1cI
         MOrsVybkQZM7et+/ZocA+z3xKymCBpphSXsrWgdtRQBm5OklO3rRE7oyoVD00Jy327sX
         GSXbikvsuR0K/gH5yRT4roCF0bw9uR+R/5E9BvW0jHNsmfdejqGjoDgHEMaBt0HUEUoz
         Seig==
X-Gm-Message-State: AOAM532muJoBo37AuDd3zozQT+7TIGs9bbIKlotk/QuOLqdGlvAZuYnH
	XUmxEcWE4rb196p09HPP/zY=
X-Google-Smtp-Source: ABdhPJwm+UpcN45Ptw9Fk+w6JpdmOLpNAnfa8Bwzt5hbcMLVOqWkySxYgJzADawwe/AcpsOu+KLIZg==
X-Received: by 2002:a05:6e02:2190:: with SMTP id j16mr2885220ila.144.1626254281805;
        Wed, 14 Jul 2021 02:18:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:770d:: with SMTP id n13ls386804iom.3.gmail; Wed, 14 Jul
 2021 02:18:01 -0700 (PDT)
X-Received: by 2002:a6b:e714:: with SMTP id b20mr6412631ioh.168.1626254281432;
        Wed, 14 Jul 2021 02:18:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626254281; cv=none;
        d=google.com; s=arc-20160816;
        b=ntpPLSk4U3xppRi9b2DqRubLuVechwXk4eSC6ruqB88TQv/c+j1Va83iY7pzue67TB
         nKFu0pSVAvD1TF2fl0K9uZ1hjh0/NlLixkTrMUfMRwiWB1WJOJjujD0EATfIpPEfK4DW
         LlVvP+kf506A7M3SdlRu+YhfO3Bycz1Jd0cYFtsMet8EqTnVvMQdexysVFtE3QKVw6su
         2w709eh15DTFwqss6VmPb0LvXdgbrWdSNeDdbcOo15xH6iN1sCbZ3znlPKuXABT6hvWP
         rPvE5/gSBBXUxBfCX+hCPrafi1vxYA/MSmsiAQr+P0f0QP/uFUSwdMfp6dL+Z+lzS60w
         M80A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Vw5Peyqjj1pTkLi4sY9bT/AGnFeqZYNI1XSYVd+RsmA=;
        b=cQvudGAMW1Fm88UG0QrKGVvZUvx1z24sKghuFUnDpSK78ojJq7Uix2cZskFA/Ubl0B
         gyz4ymd1NVQXAKz9CXDCLuZtAhNBUW0WUv4yIviIsiBrkWKay1SlqCHN7QObNAeiriel
         aK5WmEaNVPL0Jjxp7mP5L5heUPkpFkssP+xSUt6rJNeSCaVtcLuJt1rNWhsgjC0kxaAW
         y5uz6eORyBxAwdFatOR43Pkx0nN/KGFaIOKGQUce5O5GG+x73W5W6L9Ju0eKwAW+ATwE
         092PCBow/bK2ireDMyHHi/CTV2rUN3oXpYR/l1DhMUZl4sSgHbCcc1kXPvh+SUu5IGXh
         C/9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vEVz9LPD;
       spf=pass (google.com: domain of 3ykvuyaukeecvxakxpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3yKvuYAUKEecVXaKXPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id i12si228680iog.2.2021.07.14.02.18.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jul 2021 02:18:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ykvuyaukeecvxakxpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id j186-20020a25d2c30000b029055ed6ffbea6so1776238ybg.14
        for <clang-built-linux@googlegroups.com>; Wed, 14 Jul 2021 02:18:01 -0700 (PDT)
X-Received: from fawn.svl.corp.google.com ([2620:15c:2cd:202:c569:463c:c488:ac2])
 (user=morbo job=sendgmr) by 2002:a25:7ec4:: with SMTP id z187mr12297784ybc.136.1626254280973;
 Wed, 14 Jul 2021 02:18:00 -0700 (PDT)
Date: Wed, 14 Jul 2021 02:17:45 -0700
In-Reply-To: <20210714091747.2814370-1-morbo@google.com>
Message-Id: <20210714091747.2814370-2-morbo@google.com>
Mime-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com>
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
Subject: [PATCH 1/3] base: remove unused variable 'no_warn'
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	linux-scsi@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Ariel Elior <aelior@marvell.com>, Sudarsana Kalluru <skalluru@marvell.com>, 
	GR-everest-linux-l2@marvell.com, "David S . Miller" <davem@davemloft.net>, 
	Nilesh Javali <njavali@marvell.com>, GR-QLogic-Storage-Upstream@marvell.com, 
	"James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vEVz9LPD;       spf=pass
 (google.com: domain of 3ykvuyaukeecvxakxpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--morbo.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3yKvuYAUKEecVXaKXPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

Fix the following build warning:

  drivers/base/module.c:36:6: error: variable 'no_warn' set but not used [-Werror,-Wunused-but-set-variable]
        int no_warn;

Signed-off-by: Bill Wendling <morbo@google.com>
---
 drivers/base/module.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/base/module.c b/drivers/base/module.c
index 46ad4d636731..81d84a066a38 100644
--- a/drivers/base/module.c
+++ b/drivers/base/module.c
@@ -33,7 +33,6 @@ static void module_create_drivers_dir(struct module_kobject *mk)
 void module_add_driver(struct module *mod, struct device_driver *drv)
 {
 	char *driver_name;
-	int no_warn;
 	struct module_kobject *mk = NULL;
 
 	if (!drv)
@@ -59,12 +58,11 @@ void module_add_driver(struct module *mod, struct device_driver *drv)
 		return;
 
 	/* Don't check return codes; these calls are idempotent */
-	no_warn = sysfs_create_link(&drv->p->kobj, &mk->kobj, "module");
+	sysfs_create_link(&drv->p->kobj, &mk->kobj, "module");
 	driver_name = make_driver_name(drv);
 	if (driver_name) {
 		module_create_drivers_dir(mk);
-		no_warn = sysfs_create_link(mk->drivers_dir, &drv->p->kobj,
-					    driver_name);
+		sysfs_create_link(mk->drivers_dir, &drv->p->kobj, driver_name);
 		kfree(driver_name);
 	}
 }
-- 
2.32.0.93.g670b81a890-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210714091747.2814370-2-morbo%40google.com.
