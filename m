Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2OVUXYAKGQEC6CQSIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6A212CC14
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Dec 2019 04:11:38 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id x22sf20677920qvc.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Dec 2019 19:11:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577675497; cv=pass;
        d=google.com; s=arc-20160816;
        b=gQ387AYqtd1BjlwViTY5CEaMGt+YqI6MUH0GK3aclMsv6MJPpkXhDdINK7Par0joiS
         XBdTnfxgiYFMxzPoT9Y3mk6SFRto9pXj0SnnJRFwg3kpR+wbYiitv5x+igvY1QIFYHfb
         JidKDsW1kMoHJWg8XXKsUQEq5xztwuocFucYXoXR7TzWIQk5cd4mke5/dk0ZyvdV3hvu
         ITsUw1hPbB2TyeHbparYIoTPGo9ERtrlnkNH1JNW390ZCCl08yC0pNDx7EEd9uhGTRPX
         uUWztS8E6auwc5u0GCVYTtW2nwBEQW6InLTWUrTKFD4dz45fo6cl4vWvuMN1K1g4OfFZ
         S/8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=DLzcAGG6UNKwjkKNN8QM1ztSU0mbD7uw5lHa/BUJV9c=;
        b=RL8sNXw9MDgumKF+lFvyw3Mm91Slw0VOw6ybFaHtcM0jatqI1jGfacWDshoqkd9Gp9
         yBgkL9YvtNlvw1ck6z+1+z3pjCNKN125Ik3bJnJmITVnr8Csd+/uYSbUYDGeb9n7lrnh
         c7RBTo18sTfnyj2zkpAT6qQcTgBiDksQQcS5A4U/CgGVxrnFXuXuJccwJ+wOxpJuXXiN
         6H6uNHc1KBSl0w/qrVGRimyoFEw0jZZptRcMs0MRI9qNE9bxuA0LQWjhxug0Xmqj/vgC
         bSGxYbwo5kmteUlmtRs7xWgMV+w1FC7na/qbtTAdqhmkdaPpDMDDCGH4xAmfJFpj4d5C
         DOUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P9U5SADV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DLzcAGG6UNKwjkKNN8QM1ztSU0mbD7uw5lHa/BUJV9c=;
        b=mrEaLqY91uqYHWmWFV8UYLD/kCWP98gHvqItVtEVtyBZrBzK1eWXzEf7WzOn7UhhaX
         GxZ+QiTcIzTB4d0dtezWptD1Eu/zuuZMgDPmCXwlb8vEYWsmr/7m+qnjlC0eP1UwGpRX
         6+GHe77Jp93rCwCbTn3OXEKQr3viHTevwnH/7otM+1vEGkTtQi9iRls8iJx1A1rwuHfJ
         TnQ7ERzeQZFHGiagcKSOMOeHSwvaMmCuhWGJFGr4b1owcd3DBz6Ahs/V9qj5rRAg6u2t
         6FDqXlFk9pFvRIN1ARUc4H25CErr2svXUZXu9fyhcnqFECGN0EtwVNrHLL7Lu5plnC8F
         7F2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DLzcAGG6UNKwjkKNN8QM1ztSU0mbD7uw5lHa/BUJV9c=;
        b=T19gkTuoXER0IfjeNtDwWwmYSbl88b+9/L43ACgXxlMPYpKmFrBJOLEvtFeKLGOsyA
         EOmz3fid3na5PUMjVAWjtq8iuDU4uTs0RqTuPSfLb5IVzPePzpsE8UjHX7hqnT8z58MI
         XfNtkAiY7GzsEf2ygrStSvt+J5cxvwwM3Avzce9ck1RPkVnW1Uzi3yyTkrLRKi/Faa6i
         dOkdn1yr9CMZNxBcieDoQGUfFiB/2WoRCH9eJ0Y9WOW8ReA+Nr/bv2Nv6O9q8qVup05I
         b6ho04umbYhZft5w8LJBJ7rontAxl3h2BMPYpdasgpk4g+N0dYMXKltKz2r4mzSkz3sN
         BZJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DLzcAGG6UNKwjkKNN8QM1ztSU0mbD7uw5lHa/BUJV9c=;
        b=uPXAlZV7ZEH02ye4Oqb1OPsy+WDy0zlRvLkU1zQigyoB9VWS14xW9IUIWDTUOVLLQx
         wtx6fEm3u0s0p8I6ifKudJ467kKSDwM43PQPa4Xzra9hNqyMbRM4d8h/ahn6bYBmS9Qi
         PEDJPzvnUiU7eT9KpdkYtSjXb23a8Jnbyt4fKdJxuxEI90vbTa+/F235EsOV6TSEnqBr
         sYf+wiyCAMA31hsVf8oby1mdCdUuTzr5sYJn+Qeaz61PtFhaWChex7nTaw4NxcmcUO6T
         2tlmD3ikvPBmZmt/QXGH1OVg/ptkrdpO2yUt0PhBJNfLQWklKFmUESNrmyyeBZLQPrk/
         XGrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWqBVBB0MBGIRX5vq1eG8ATPSCV3YAZDhIKF99KW9FWkKW7V2Yj
	T9qmgBgHyD+YAo7rWioVJKc=
X-Google-Smtp-Source: APXvYqzuEpxIVsByxUFRvEBGxhdyevWP3JFQ7CbjS3NXKPN9J3ornj6AmJ8t2Zef8ENsW7oTk/Z7tg==
X-Received: by 2002:a37:488f:: with SMTP id v137mr51573274qka.16.1577675497659;
        Sun, 29 Dec 2019 19:11:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:32fd:: with SMTP id a58ls1500820qtb.14.gmail; Sun, 29
 Dec 2019 19:11:37 -0800 (PST)
X-Received: by 2002:ac8:3a27:: with SMTP id w36mr46131542qte.204.1577675497344;
        Sun, 29 Dec 2019 19:11:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577675497; cv=none;
        d=google.com; s=arc-20160816;
        b=gasbrJ3FC52HIjw3nmSv8sEL1Zc7qjCioz7HejNsS2VA1zZOBLWbT+M1PC/eZivWuj
         nZradIzfPowwOXpZj6cWbnI8AE8f6OccAed3Zn+RIyHfTUWtZHTBlxpWBrxQleRUO7wr
         Z+gu1+Z9twYEH6xDJ1pbdvQPDwbiN54xUM7zc1tYNuhIVK6N+nnTuKaju6SMg43pA4CH
         X3UbciTiVcTZ0BtjnOlgrQRunbKRDGI+h/givYNVUK9P8Emnu9i8haw8Eh17AaA27tQf
         194oowk7gsBdZ0bR/LKUVx1anzSX4QkZpbwXqZsVvC5GnhvYZWZQLJEX7tPoum4T/2Cj
         SWWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=QpAxXl94bcwn6RzLMLSPp9QkK7gIMwEyObwxbn8+A6c=;
        b=DXojvKfcjbWUEsKjROHAMVEQjUebiyNF530oVkoo9p8MG7Xy2eIkOQqsjxkJ4tccmL
         YqN9bN8fB2uPU255HMjh99ZKDryGVqhPYOxbJI51YXUGpopwYjhOizhZhuq1Q7/ZgScV
         54hl0Dpi4HyBsfQCf7oV92D0p/xtOjAV3PKmKfOyClEUt7M0+I0fyDbCUu0zQ/Oi+qS0
         36n3YFZpKBBruT2reryh13VcaVqdPv1U2xUSf3zlpBH81zk1uSI9PsCx6q00itzYkimz
         x+6Xjf3r5uKZX4mNWmkdD7IBqfC6hfwh38Lpqpdsh5BUALKaXUxE+xqWOSAq5HU6m81B
         rRGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P9U5SADV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id i53si1544371qte.2.2019.12.29.19.11.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Dec 2019 19:11:37 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id k8so27400850otl.13
        for <clang-built-linux@googlegroups.com>; Sun, 29 Dec 2019 19:11:37 -0800 (PST)
X-Received: by 2002:a05:6830:4d9:: with SMTP id s25mr72055026otd.171.1577675496985;
        Sun, 29 Dec 2019 19:11:36 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 97sm15238098otx.29.2019.12.29.19.11.35
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 29 Dec 2019 19:11:36 -0800 (PST)
Date: Sun, 29 Dec 2019 20:11:34 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [pm:bleeding-edge 46/58] drivers/power/avs/qcom-cpr.c:571:13:
 warning: variable 'reg_mask' is used uninitialized whenever 'if' condition
 is false
Message-ID: <20191230031134.GC6257@ubuntu-m2-xlarge-x86>
References: <201912260703.VMjjSROT%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201912260703.VMjjSROT%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=P9U5SADV;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Dec 26, 2019 at 07:01:11AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> CC: linux-acpi@vger.kernel.org
> CC: devel@acpica.org
> CC: linux-pm@vger.kernel.org
> TO: Niklas Cassel <niklas.cassel@linaro.org>
> CC: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> CC: "Jorge Ramirez-Ortiz" <jorge.ramirez-ortiz@linaro.org>
> CC: Bjorn Andersson <bjorn.andersson@linaro.org>
> CC: Ulf Hansson <ulf.hansson@linaro.org>
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
> head:   2870e410249c4965c9089bbed091fefce59fed82
> commit: bf6910abf54871b0e976e52f56fb3b3dd1b90e48 [46/58] power: avs: Add support for CPR (Core Power Reduction)
> config: arm64-allyesconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 9a77c2095439ba41bd8f6f35931b94075b2fd45b)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout bf6910abf54871b0e976e52f56fb3b3dd1b90e48
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/power/avs/qcom-cpr.c:571:13: warning: variable 'reg_mask' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            } else if (dir == DOWN) {
>                       ^~~~~~~~~~~
>    drivers/power/avs/qcom-cpr.c:579:22: note: uninitialized use occurs here
>            cpr_ctl_modify(drv, reg_mask, val);
>                                ^~~~~~~~
>    drivers/power/avs/qcom-cpr.c:571:9: note: remove the 'if' if its condition is always true
>            } else if (dir == DOWN) {
>                   ^~~~~~~~~~~~~~~~~
>    drivers/power/avs/qcom-cpr.c:464:32: note: initialize the variable 'reg_mask' to silence this warning
>            u32 val, error_steps, reg_mask;
>                                          ^
>                                           = 0
> >> drivers/power/avs/qcom-cpr.c:521:13: warning: variable 'new_uV' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            } else if (dir == DOWN) {
>                       ^~~~~~~~~~~
>    drivers/power/avs/qcom-cpr.c:560:39: note: uninitialized use occurs here
>            ret = cpr_scale_voltage(drv, corner, new_uV, dir);
>                                                 ^~~~~~
>    drivers/power/avs/qcom-cpr.c:521:9: note: remove the 'if' if its condition is always true
>            } else if (dir == DOWN) {
>                   ^~~~~~~~~~~~~~~~~
>    drivers/power/avs/qcom-cpr.c:465:21: note: initialize the variable 'new_uV' to silence this warning
>            int last_uV, new_uV, step_uV, ret;
>                               ^
>                                = 0
>    2 warnings generated.

Normally, Clang would be right...

> vim +571 drivers/power/avs/qcom-cpr.c
> 
>    461	
>    462	static int cpr_scale(struct cpr_drv *drv, enum voltage_change_dir dir)
>    463	{
>    464		u32 val, error_steps, reg_mask;
>    465		int last_uV, new_uV, step_uV, ret;
>    466		struct corner *corner;
>    467		const struct cpr_desc *desc = drv->desc;
>    468	
>    469		if (dir != UP && dir != DOWN)
>    470			return 0;

But because of this statement...

>    471	
>    472		step_uV = regulator_get_linear_step(drv->vdd_apc);
>    473		if (!step_uV)
>    474			return -EINVAL;
>    475	
>    476		corner = drv->corner;
>    477	
>    478		val = cpr_read(drv, REG_RBCPR_RESULT_0);
>    479	
>    480		error_steps = val >> RBCPR_RESULT0_ERROR_STEPS_SHIFT;
>    481		error_steps &= RBCPR_RESULT0_ERROR_STEPS_MASK;
>    482		last_uV = corner->last_uV;
>    483	
>    484		if (dir == UP) {
>    485			if (desc->clamp_timer_interval &&
>    486			    error_steps < desc->up_threshold) {
>    487				/*
>    488				 * Handle the case where another measurement started
>    489				 * after the interrupt was triggered due to a core
>    490				 * exiting from power collapse.
>    491				 */
>    492				error_steps = max(desc->up_threshold,
>    493						  desc->vdd_apc_step_up_limit);
>    494			}
>    495	
>    496			if (last_uV >= corner->max_uV) {
>    497				cpr_irq_clr_nack(drv);
>    498	
>    499				/* Maximize the UP threshold */
>    500				reg_mask = RBCPR_CTL_UP_THRESHOLD_MASK;
>    501				reg_mask <<= RBCPR_CTL_UP_THRESHOLD_SHIFT;
>    502				val = reg_mask;
>    503				cpr_ctl_modify(drv, reg_mask, val);
>    504	
>    505				/* Disable UP interrupt */
>    506				cpr_irq_set(drv, CPR_INT_DEFAULT & ~CPR_INT_UP);
>    507	
>    508				return 0;
>    509			}
>    510	
>    511			if (error_steps > desc->vdd_apc_step_up_limit)
>    512				error_steps = desc->vdd_apc_step_up_limit;
>    513	
>    514			/* Calculate new voltage */
>    515			new_uV = last_uV + error_steps * step_uV;
>    516			new_uV = min(new_uV, corner->max_uV);
>    517	
>    518			dev_dbg(drv->dev,
>    519				"UP: -> new_uV: %d last_uV: %d perf state: %u\n",
>    520				new_uV, last_uV, cpr_get_cur_perf_state(drv));

We HAVE to take either the if block above or the else if block below
here. So it is a false positive but I suppose Clang's suggestion would
work to make it clearer for static analysis, not sure how that will go
over with the maintainers though.

Simplification: https://godbolt.org/z/km-So8

diff --git a/drivers/power/avs/qcom-cpr.c b/drivers/power/avs/qcom-cpr.c
index 9247f53550b3..78fb58802532 100644
--- a/drivers/power/avs/qcom-cpr.c
+++ b/drivers/power/avs/qcom-cpr.c
@@ -518,7 +518,7 @@ static int cpr_scale(struct cpr_drv *drv, enum voltage_change_dir dir)
 		dev_dbg(drv->dev,
 			"UP: -> new_uV: %d last_uV: %d perf state: %u\n",
 			new_uV, last_uV, cpr_get_cur_perf_state(drv));
-	} else if (dir == DOWN) {
+	} else {
 		if (desc->clamp_timer_interval &&
 		    error_steps < desc->down_threshold) {
 			/*
@@ -568,7 +568,7 @@ static int cpr_scale(struct cpr_drv *drv, enum voltage_change_dir dir)
 		/* Disable auto nack down */
 		reg_mask = RBCPR_CTL_SW_AUTO_CONT_NACK_DN_EN;
 		val = 0;
-	} else if (dir == DOWN) {
+	} else {
 		/* Restore default threshold for UP */
 		reg_mask = RBCPR_CTL_UP_THRESHOLD_MASK;
 		reg_mask <<= RBCPR_CTL_UP_THRESHOLD_SHIFT;


>  > 521		} else if (dir == DOWN) {
>    522			if (desc->clamp_timer_interval &&
>    523			    error_steps < desc->down_threshold) {
>    524				/*
>    525				 * Handle the case where another measurement started
>    526				 * after the interrupt was triggered due to a core
>    527				 * exiting from power collapse.
>    528				 */
>    529				error_steps = max(desc->down_threshold,
>    530						  desc->vdd_apc_step_down_limit);
>    531			}
>    532	
>    533			if (last_uV <= corner->min_uV) {
>    534				cpr_irq_clr_nack(drv);
>    535	
>    536				/* Enable auto nack down */
>    537				reg_mask = RBCPR_CTL_SW_AUTO_CONT_NACK_DN_EN;
>    538				val = RBCPR_CTL_SW_AUTO_CONT_NACK_DN_EN;
>    539	
>    540				cpr_ctl_modify(drv, reg_mask, val);
>    541	
>    542				/* Disable DOWN interrupt */
>    543				cpr_irq_set(drv, CPR_INT_DEFAULT & ~CPR_INT_DOWN);
>    544	
>    545				return 0;
>    546			}
>    547	
>    548			if (error_steps > desc->vdd_apc_step_down_limit)
>    549				error_steps = desc->vdd_apc_step_down_limit;
>    550	
>    551			/* Calculate new voltage */
>    552			new_uV = last_uV - error_steps * step_uV;
>    553			new_uV = max(new_uV, corner->min_uV);
>    554	
>    555			dev_dbg(drv->dev,
>    556				"DOWN: -> new_uV: %d last_uV: %d perf state: %u\n",
>    557				new_uV, last_uV, cpr_get_cur_perf_state(drv));
>    558		}
>    559	
>    560		ret = cpr_scale_voltage(drv, corner, new_uV, dir);
>    561		if (ret) {
>    562			cpr_irq_clr_nack(drv);
>    563			return ret;
>    564		}
>    565		drv->corner->last_uV = new_uV;
>    566	
>    567		if (dir == UP) {
>    568			/* Disable auto nack down */
>    569			reg_mask = RBCPR_CTL_SW_AUTO_CONT_NACK_DN_EN;
>    570			val = 0;
>  > 571		} else if (dir == DOWN) {
>    572			/* Restore default threshold for UP */
>    573			reg_mask = RBCPR_CTL_UP_THRESHOLD_MASK;
>    574			reg_mask <<= RBCPR_CTL_UP_THRESHOLD_SHIFT;
>    575			val = desc->up_threshold;
>    576			val <<= RBCPR_CTL_UP_THRESHOLD_SHIFT;
>    577		}
>    578	
>    579		cpr_ctl_modify(drv, reg_mask, val);
>    580	
>    581		/* Re-enable default interrupts */
>    582		cpr_irq_set(drv, CPR_INT_DEFAULT);
>    583	
>    584		/* Ack */
>    585		cpr_irq_clr_ack(drv);
>    586	
>    587		return 0;
>    588	}
>    589	
> 
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191230031134.GC6257%40ubuntu-m2-xlarge-x86.
