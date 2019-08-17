Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBA4233VAKGQEXQE2YZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B27490D11
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Aug 2019 07:13:40 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id k14sf1864160wrv.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 22:13:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566018820; cv=pass;
        d=google.com; s=arc-20160816;
        b=HJUnuJlSIwh220rtguusVveAT7oxUbP8LzFrbCwZTsoKELNN831ivVB4P4qKrVJODz
         wUp4mnJ+GMy/avNHUFkPvH948GiQrqFJHQ2YNz6tnCSAuXQw32a2oV8IruEP6d/50l8e
         rUC/VgN6fvfYNl6drMkGPFRchWdFliCyI9Pe37StEtBaW8QgVrm0vRG2WqP55RDuML7V
         KMHMpT93AgxTbz7HxFcjDNzWiPkUDopn2mDtf2eQ99FkSldOxrSNb05t8jhYf5Q6N7ws
         MD6KA2hD1i3/xW1ShZJGTznTRSs6+kxmFoEZrCZGP8z7I9V7I53mAy8Z1Za9+ZncJH2J
         VF9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=XUyyHguHoZIqkbmkWul+wfXwOQ8J2esi2Qq4q8MIWB8=;
        b=xS/4/o6StLJrF6mv0pjPX0Ajd0kygxXJnMoP2oe5MFyLS0PaKDQm/Dv0ImYOi7NKOQ
         OUOqYZ7UcVly+DnOgrOZrSM4/g7ruhL1MMspgVq09wXO4qOpdzpFiKMrFO7mKdmFp/Ic
         XQr6V4RksrRoyEPz/0UgJvWOBsMla4fdzOXz3ZIHYRg84EmQp3wnKlWaHuSamPxBNhgT
         +m6ECF/e3fAJPk/7mjHhbITJE5WwNJ387Nis5uxyO5otg29pWK2P1p03Q4UeK+NAWqJb
         nX+NgmkDr30pZvl8Uw689n+Ww0cUorDMlwUm4Jnyu2PR4CSYcasoirIEs2//mvit7ey/
         EwVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O2iGHZpA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XUyyHguHoZIqkbmkWul+wfXwOQ8J2esi2Qq4q8MIWB8=;
        b=JVfNIv/ettd3G151p+u8boctXNjOPK53M86GDfu94rF/rIJu+LMKPwe/PZ9oFZmQoO
         ISjNhz/B0rfPE9vne+ztQkVHZiwS8Y4WZpR5FMUXoBs1P1jH74pr+vRiMsLDtZZLByqd
         +pHYImaMqIm3TmHHBbMhaCBUJt8R418Kvqri44kX+wMCms/BP3sBh2Q2XEbPHkfi+N7/
         T1AIUTyxAbeZFmCMBpokxCctzda68YsIZnSf1kGPZj8lLJVqjvmicMY4S75Z3hdXdJgo
         ok56CSCam4fJW5m67Vwa7ECG4Gpr300ctCmXaAuEGTfboUzatjHQoT34SO/Bju6b+OXo
         9MwQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XUyyHguHoZIqkbmkWul+wfXwOQ8J2esi2Qq4q8MIWB8=;
        b=H+8vhsSbB6MkoV7eBj9XJAv3UWSwPR9lBHnLrlJSEVc8t1NRD4Q4UDEXDT6UXLthu2
         Hlm6PDxUJrXzBk7kFbtqN2vr/LrYnTdgLteYb7TqZfsBZb7aAV5euGcNviNMq2f6MRiV
         K5Q93nIddC6lF3RLdPJGzcWVXV4jGeBqq12NLo70EvGpi6h4JfFlspjcWWQSxGfG/D6N
         58xPe7dQD8w7ui7m4WODrjfKy0Xzcbh0OLgrX/xGCkKqBVWeMVuR0ejucRx0aeGTzE28
         8Q1ONEhtmrY6sIgtq3qJ/pRjGZIgupfLokSw4mvNaHYFfaU/CIBGZ3RUHhKoaZVlCKsf
         /SbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XUyyHguHoZIqkbmkWul+wfXwOQ8J2esi2Qq4q8MIWB8=;
        b=XTJesqFvQeFTRg2Ub/c9o7z/6L3tQhFntPWHiv0lhHkJX9XnCEvD/EKQtXI62rEob7
         fYuG6SlLOKnMQYeGCP5y146OD8y/8UK4FwMuMLUXkMbmoQ3+eY2jFvvY74tTqXvTz+sl
         ZJJTR5Myc2iTF9mYNeoarw01gurXTV3xB4yStE+w5LCDvsSR1mS3BIj49fI+At73hTHc
         0+4EvT+54btWw488nvQ9tA90zXoJJkxK+SQbhGjUt9dGVYe+RqRcv5jKcz/h3Qc5krwx
         Y+0jsBkT6UmQwAJISGnh/fspIm9ST0WQz6RT6EH4YjWQrlyqOhfclhk9UZ1UD17NGPud
         /87Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWLtGUkS0MVo96cSzWOYEKa3U7QdeVi/sfEqf2jWiH90GDL1JCC
	2AQkPiVCm5KIRU4LZoe2fK4=
X-Google-Smtp-Source: APXvYqz/YS7GdKlzAS9g0R7ZAaRp0RDKGjwEOjYYO2VLQpOSKZGEWE/tzu+bBaCqYTPPrRQVHsH6WQ==
X-Received: by 2002:a1c:4d0c:: with SMTP id o12mr10418926wmh.62.1566018819994;
        Fri, 16 Aug 2019 22:13:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5001:: with SMTP id e1ls2953622wrt.16.gmail; Fri, 16 Aug
 2019 22:13:39 -0700 (PDT)
X-Received: by 2002:a05:6000:1603:: with SMTP id u3mr14645770wrb.286.1566018819493;
        Fri, 16 Aug 2019 22:13:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566018819; cv=none;
        d=google.com; s=arc-20160816;
        b=X5EpaZSWQHzKOV4/g0biFiHDOuUPRE7aCGmDFWcIxBnwFQR52EuyYjVMlkgNjLfp1m
         gY7niqvMOURGpM1jRTCuvwHc4x0bF5Dn3hpZ000jFB96zOGaPfGbQc1LNaTTK90BKBse
         Bq0gZ+rmP8dsT1hVXwH23q7wUDIePkgbmjPivuCRuaHcJqA2vEbAAlBawVxKf1ir9zWn
         keB7BVI8dKjSRcE0TmBPkhEgGuq65oB9nPVwxBQqzg0bf2of2aGhvgG3kuGKWHdzoSEV
         H7cdk6RXdO1Rn+QnwnZftN5MXxMxrr5ir6sFzuv7v5Eq7WnimX3ktBlxSvF/vKh3/MDW
         QY4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Y9zbR1MhIph07hA3UXQ6LQMrfbPL4258g3ng3+wG1Xw=;
        b=YUlmRD4Zn9lACqMyip6KBLtirm/TD8/3kqD82IL6+VgBBNLk619MTvrb6tiYRDPJ6Z
         tNqC0iMIbQN1ZKKrE+LLEQ0S5Frqk3zjmQbGU5vAyt8QSg8XHqZH0cqETOLaa7Rw/VQM
         gM++kLvm8Se8/Mj2XhpFT7cSjiRItO5rA5Ovvx1dB4WjkjtmsCF8Wh9zloUJjd56QG/P
         HBigghYqTcVtgMtbZo5OPlvsjaO2KBaPeoysD1ih/Qh1zQ5VKo+xo0YkreXt4dB3Xoyr
         qqcFXcCmo/EVkNoR0ETHrZfqGChQlAWPUDgTvidY/qPfmItwiCMvKCbII+RJZEtcGWWn
         tqTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O2iGHZpA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id e7si297325wru.1.2019.08.16.22.13.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Aug 2019 22:13:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id y8so3395715wrn.10
        for <clang-built-linux@googlegroups.com>; Fri, 16 Aug 2019 22:13:39 -0700 (PDT)
X-Received: by 2002:a5d:460e:: with SMTP id t14mr14960313wrq.171.1566018818948;
        Fri, 16 Aug 2019 22:13:38 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id p19sm2432718wmg.31.2019.08.16.22.13.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Aug 2019 22:13:38 -0700 (PDT)
Date: Fri, 16 Aug 2019 22:13:36 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Corey Minyard <cminyard@mvista.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [ipmi:watchdog-rework 11/17]
 drivers//watchdog/ipmi_watchdog.c:308:13: warning: variable 'rv' is used
 uninitialized whenever 'if' condition is true
Message-ID: <20190817051336.GD69583@archlinux-threadripper>
References: <201908170856.hxfanXMP%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908170856.hxfanXMP%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=O2iGHZpA;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Corey,

The 0day has been running clang builds for us and this warning cropped
up.

On Sat, Aug 17, 2019 at 08:37:57AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Corey Minyard <cminyard@mvista.com>
> 
> tree:   https://github.com/cminyard/linux-ipmi watchdog-rework
> head:   d517d12b641aef58e919f9d30ae78244e54158ac
> commit: 308c71219855f8ef9e68921e42b43a69756001c0 [11/17] watchdog:ipmi: Convert over to the standard watchdog infrastructure
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         git checkout 308c71219855f8ef9e68921e42b43a69756001c0
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    drivers//watchdog/ipmi_watchdog.c:312:7: warning: variable 'rv' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>                    if (preaction_val == WDOG_PRETIMEOUT_NMI)
>                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers//watchdog/ipmi_watchdog.c:321:7: note: uninitialized use occurs here
>            if (!rv) {
>                 ^~
>    drivers//watchdog/ipmi_watchdog.c:312:3: note: remove the 'if' if its condition is always true
>                    if (preaction_val == WDOG_PRETIMEOUT_NMI)
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >> drivers//watchdog/ipmi_watchdog.c:308:13: warning: variable 'rv' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>            } else if (strcmp(inval, "preop_panic") == 0) {
>                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers//watchdog/ipmi_watchdog.c:321:7: note: uninitialized use occurs here
>            if (!rv) {
>                 ^~
>    drivers//watchdog/ipmi_watchdog.c:308:9: note: remove the 'if' if its condition is always false
>            } else if (strcmp(inval, "preop_panic") == 0) {
>                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers//watchdog/ipmi_watchdog.c:305:6: warning: variable 'rv' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>            if (strcmp(inval, "preop_none") == 0) {
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers//watchdog/ipmi_watchdog.c:321:7: note: uninitialized use occurs here
>            if (!rv) {
>                 ^~
>    drivers//watchdog/ipmi_watchdog.c:305:2: note: remove the 'if' if its condition is always false
>            if (strcmp(inval, "preop_none") == 0) {
>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers//watchdog/ipmi_watchdog.c:293:8: note: initialize the variable 'rv' to silence this warning
>            int rv;
>                  ^
>                   = 0
>    3 warnings generated.
> 
> vim +308 drivers//watchdog/ipmi_watchdog.c
> 
>    290	
>    291	static int preop_op(const char *inval, char *outval)
>    292	{
>    293		int rv;
>    294		const char *gov = NULL;
>    295		unsigned int orig_val;
>    296	
>    297		mutex_lock(&ipmi_wdt_data_mutex);
>    298		if (outval)
>    299			strcpy(outval, preop);
>    300	
>    301		if (!inval)
>    302			goto out_unlock;
>    303	
>    304		orig_val = preop_val;

Should rv be initialized to 0 here or in the individual branches?

If any of these if statements hit...

>    305		if (strcmp(inval, "preop_none") == 0) {
>    306			preop_val = WDOG_PREOP_NONE;
>    307			gov = "noop";
>  > 308		} else if (strcmp(inval, "preop_panic") == 0) {
>    309			preop_val = WDOG_PREOP_PANIC;
>    310			gov = "panic";
>    311		} else if (strcmp(inval, "preop_give_data") == 0) {
>  > 312			if (preaction_val == WDOG_PRETIMEOUT_NMI)i
>    313				rv = -EINVAL;
>    314			else {
>    315				preop_val = WDOG_PREOP_GIVE_DATA;
>    316				gov = "read_data";
>    317			}
>    318		} else {
>    319			rv = -EINVAL;
>    320		}
>    321		if (!rv) {

rv is uninitialized ^ here. This doesn't appear to be fixed in the top of
your watchdog-rework branch, even though the code is slightly reorganized.

>    322			rv = watchdog_pretimeout_governor_set(&ipmi_wdt->wdd, gov);
>    323			if (rv)
>    324			    preaction_val = orig_val;
>    325			else
>    326			    strcpy(preop, inval);
>    327		}
>    328	out_unlock:
>    329		mutex_unlock(&ipmi_wdt_data_mutex);
>    330	
>    331		return rv;
>    332	}
>    333	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Hopefully this is helpful!
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190817051336.GD69583%40archlinux-threadripper.
