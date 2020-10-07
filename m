Return-Path: <clang-built-linux+bncBAABBD6J675QKGQEJM5RCOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3B428629E
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Oct 2020 17:53:52 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id u23sf869529ljk.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Oct 2020 08:53:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602086032; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y02D/Wj/1SSYTyttRMBozQGEP5L6af6vHffCKmvH10RPIjnS1fjD5JHWjFmPez5D5d
         oXbL03Nbd64ps3Fyc4NfhF2GtwZugL31ZumLFEk+0LPAU8jogUI2j/7uzqlHSIfZiBhs
         eUCWY1NfWTToUSB14dCZ8qB4U9XUaK661rwv7/cImJNtlBmvAZpHN9NObkq93nWafRkh
         TxvuMzBX7VnFnCV+m36K1N7wlB2fly9Hx1FLggz3KIPxwOUbhdP06BZileFtxd22sG/p
         Lum/3IoF95ut9Jv9zRYXok+2ij/JLiqOJHxP5YnRuohJ5nagzhP/mPEPejBdzTfsJPkR
         s/DA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wzJWUBlyxM7hPL6PmZKjSDP3OLUd65XT4fepREgMm2k=;
        b=B1Es1b4ROVHYJpQ+k85iz9zle+KTCnt5AhpMg4Rk10X90i4q3xfEp4S/229AfCHzAG
         g4HvSGKAG0fQEky5/LspKdWtLqCDeKq0KWcOwo2x49AqXAphaNYHmmqPo1vxfCz7qWWo
         thDKHwuL5ZuA8Brtt+hua5FhQeGEPOKMTQQ2GJU5utiSJ8H/M3MDP+zb7ELSjFUnZLzs
         m49I3Op2zP3G4WSVqn9kw+DHLHhc0emkwqOIORx8c3U9/JB1odu+wbHzO2TAAbFYiYGw
         AWdJWVXV6hIQuJCDjveK6PP99oxUdEEjWWFxO0Yv0w4pQ2exORO7QKneQYBP7jRpFM4V
         3Hmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=qAF3ZE9J;
       spf=pass (google.com: domain of mhocko@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=mhocko@suse.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wzJWUBlyxM7hPL6PmZKjSDP3OLUd65XT4fepREgMm2k=;
        b=Jn9Jd4guRK+18t2LGhjqz1IQLcq/xeDCSoz8BNPqa7n/LAZMtKGTYiLVDa8iIsfnCM
         0/87Cbb3DVaMv0Tuk0AXc3qyH7GdFQePKxPYdhKk8seKdBhTGFOHHMRHIqzGFzzvSPFe
         oOsxH42qG03TjQ4V2UODLXKqFhwwG5cgkfQccnCYtfRMI/d2iBYdR30lVOsVVfxMOAKs
         GHkJpLwGLXoNfM0JyAK0G6Wb1SWgv5M5JTfauUo+urWHsvSBfhZu4S9/bqWTx5TZRPuX
         lPs+b1CDQbQayz1PTKV0SH0cAq3LzBLuPlLjcuLcrUi+Fs14IgijbEH+JDvZbPddA8P0
         dNaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wzJWUBlyxM7hPL6PmZKjSDP3OLUd65XT4fepREgMm2k=;
        b=mAWgsnlBLKyG+SR6n6jn6QV7qs3mkG+JRfXfbQjPkynPPCxVc9Qv8CvF22mWIPbDGl
         6gfn5kwzv4ulRZyALUfgEXyEx6j5vcUhY6sCXxeDmftLutCRemM9SGg/C03Kkku62+C/
         b8lUDxFKkhU6X1zv6z9z6Xq+saQ5ZXIuRZsm7qhNajzaNhoBvMYWiFOhO3SSRnqCanKW
         n9XfQ9yydTkt9Z10fhzH1n1AFvoKWbSbKUepu/WsmqRaINj0HQWVMIx8kAgNLtRlB4Bg
         /xuyoTB1FhhT+vuvSv2uFqUdZi92MJbb3BApq+cs8sEPmcfoxq6yFbyt9jcUaK8OmOMG
         W6JQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532uRSI7qd5qK8864p/i4oRGei709N/Qwrw3RNh0IqD52iLw87Eh
	3gruRp5jZ7L32L5DPcP1p+g=
X-Google-Smtp-Source: ABdhPJzfxQWQF3HL2MXXDedn8dqqZoiD/kV97Mz2x/9OxYJKcrZD1Qi69sWUkZ/LVGenOXzt3J79kw==
X-Received: by 2002:a2e:97cd:: with SMTP id m13mr1615819ljj.221.1602086031849;
        Wed, 07 Oct 2020 08:53:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ad43:: with SMTP id s3ls1565155lfd.2.gmail; Wed, 07 Oct
 2020 08:53:51 -0700 (PDT)
X-Received: by 2002:a19:15:: with SMTP id 21mr82179lfa.25.1602086030953;
        Wed, 07 Oct 2020 08:53:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602086030; cv=none;
        d=google.com; s=arc-20160816;
        b=mFVVpgl/GOfPgMzFDtSCMATnNmmbfNf6I5CiYyOUqLiRYK4bZXCvjw8jJvVGEmuL74
         vyhXa4Quyc1hvyrIMV1OopSyI1bAoew79/yFLwCXaCVDvkakCeUIS0xR9Z5Mdx4xkskI
         2gbtzfCOGTLlnL49TP2r5x1cyu6oAN+jhDTCiKsePCRbVdzizuX1IqkUp0ajT2pvxNWI
         vpWtC1HZiZ840XB07SeX5utHZiXVgi+bpowcVnDiw1oBZi3KNZbBSoIzhUmpJmopHOiq
         4ake4UQHn7LuwiYknOvpH+X4G/+phxtPNNr2bOgWmJ9siVB8B2VpefchEES8OBK3BRjR
         1ZTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JrKJq5HeGq5Y0QA9Z0BGlITkicjFkWJAXD92TdzPk80=;
        b=tDNRMGblNX0q+CAsye0uRedRySCEpPg7I0Cr12fxjbNASntL8s1HThZzqzMnIOxkvm
         AQjD6ugWRYzsB5BFMuqpPCH/Gk7CIoKPg1EC+dOslmb6k23W28dDDz+a3zc/20C+2jai
         fGIRYFFCgQMFoWnK+aE8Be8woeNXlP2iXWN+mxajmpyVmf26fwyqWz7SOp3VY7IzT4Qg
         jOjvrl/AzfwCHkSzADht3yDzZ7n9zHdYxfL+AwzLp/Fox2iV/jL42QJXwRSK05zYh+4i
         6bRUpioF641WVOvdbbe3Yuar4uKNtIVK2ypTx5d9jngI8RzLfq/gBq58AQMdIr1FVSh3
         TUHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=qAF3ZE9J;
       spf=pass (google.com: domain of mhocko@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=mhocko@suse.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id d1si72707lfa.11.2020.10.07.08.53.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2020 08:53:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of mhocko@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 1F7ADADC2;
	Wed,  7 Oct 2020 15:53:50 +0000 (UTC)
Date: Wed, 7 Oct 2020 17:53:49 +0200
From: Michal Hocko <mhocko@suse.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH] kernel: allow to configure PREEMPT_NONE,
 PREEMPT_VOLUNTARY on kernel command line
Message-ID: <20201007155349.GA4967@dhcp22.suse.cz>
References: <20201007120401.11200-1-mhocko@kernel.org>
 <202010072327.l6NN6vIy-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202010072327.l6NN6vIy-lkp@intel.com>
X-Original-Sender: mhocko@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=qAF3ZE9J;       spf=pass
 (google.com: domain of mhocko@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=mhocko@suse.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=suse.com
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

On Wed 07-10-20 23:41:30, kernel test robot wrote:
> Hi Michal,
> 
> [FYI, it's a private test report for your RFC patch.]
> [auto build test ERROR on gpio/for-next]
> [also build test ERROR on tip/sched/core linus/master v5.9-rc8 next-20201007]
> [cannot apply to linux/master]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]

Thanks for the report. So this is CONFIG_PREEMPT=y and I haven't tested
with that option for this RFC TBH. But the fix should be trivial.

diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 94238df64afc..d2d37bd5ecd5 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -203,6 +203,9 @@ DECLARE_STATIC_KEY_FALSE(preempt_voluntary_key);
 extern int _cond_resched(void);
 # define might_resched() \
 	do { if (static_branch_likely(&preempt_voluntary_key)) _cond_resched(); } while (0)
+#else
+# define might_resched() \
+	do { } while (0)
 #endif
 
 #ifdef CONFIG_DEBUG_ATOMIC_SLEEP
-- 
Michal Hocko
SUSE Labs

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201007155349.GA4967%40dhcp22.suse.cz.
