Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZGGQ3YAKGQEUO4SPIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 40079129DD6
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Dec 2019 06:34:30 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id v14sf13242556pfm.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Dec 2019 21:34:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577165668; cv=pass;
        d=google.com; s=arc-20160816;
        b=rj7GqknM8FrpL4sjQtO8iqmigpjosw4Zp/balvtdQbVb8EEG4haBkLLd9OsHQzXOhv
         7eAm3Aaka4D5kS2AOVbE+6Aznuaujv7H5X2wLUMaQTVWTq8GVqUSPQ8gBUq2yzC4zDT/
         BL8ozMkJOqlilwMW7KYMigeOaNFjLDNQELC6pVyJD2ftV33Pt/lP9j3jNouXgqJL1EPk
         sNj6aatUuYL7HJlh5w8udzx/ttOJz1G0+fyiFFH96Igo00caGTFhMdy59Hbf6XybjoXs
         9VoIsSYdToa2Wn4Q5mudH6TZfpqPG+Hbszd6XNruA8JuGEy0YsHJse/RzmASzWqOkVcZ
         Chgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=HoWkAvCLxbUBLVS7gA5Y3jR5Cq/iRFj5cEZB+fPhfFI=;
        b=IKNa/wYxOfy7F0qDhI9agCiY8Fhl9iKXRKrKoIaCFKrMVbpSDab6bDioOjR1xtzsCT
         YOxwAmTEhJCZLHYUZ+CGStjg5Z93//DmPKFvRJBVcoscmJVP7Af/tn+57Thl/TtNJ0Eh
         WMKXF8SF6e0Y8CDRKwdknrzFJhugiBCmMchKvMbtvX42WfldZ4Jo/8BpjesxGE2eNXBA
         EJqtqjBjxwVp4/SB6yQcxUFH/BBPRt3V4I4rwAwDTZXY35yFqhnyyWQIwOF5nAuAEBA+
         ciY0vEhQEPpeDAGHfTp0PnXstXfyJGxjJF8zXcnCgrqal+aM66kZCZLzPiBR6vX4hlZa
         2Hbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eEPPKxo3;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HoWkAvCLxbUBLVS7gA5Y3jR5Cq/iRFj5cEZB+fPhfFI=;
        b=VvdFnqWhNbCACSxAHOUwbI6+uYIJE8go2MYQkzK4vS5b9yCruQ8lyhvxH/zwdwFg1F
         ilE178NL/3ndD0DLRc33UYeTA2WSNMHv27lxcR6cx0Izoz5kMcgAOXJBs7A2J9AXjH9L
         ithG6UjZqYcq/tTxHPhuMdG+vLDOEgMuxPL/6UhUUd9UIbIFUTwOyujSLbOTX/2Tsm64
         DDCIMVuJ9E0D9pSbgQvvQn0ONgzcUG3acROC0PvM8f5SR+/xyRpQVwoeOxqYECX3pvRn
         V4lT+tYLm1OGcMxdwq0FPZ21vOhk710NVztmicm3oWK+x2x1d6McB+gvnuZP65UgJCgh
         CaxQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HoWkAvCLxbUBLVS7gA5Y3jR5Cq/iRFj5cEZB+fPhfFI=;
        b=j280myEyFuaqn9Lr//PJORWw3AOZ0hiBf+7gPHpkP2+4kYEqIwSQQP9INeqFStKnMW
         vJgvKg6y94LxXXu/jO/AoRBPO5k1PAYq81WJJPlfvd0wWxuYJm9KCQ1JILol4uhRvbaH
         T9lCg1xDwEm9rlnVfPt92MGFz6/tGTMVgkrkxEGjRwZ4B+nM9gD5BaGP61hLMAlliuQy
         vUa85cZJMx7WdHdZ6YL8QNQ6n5StRt46HqSBxpZfUWEiJh02l7RmxZ4dPRmpamAZTZ0v
         4H14Qbyulxvz7Ck3vwey0QtEm2U29qy5Xu4A8XO4zZ8vbNMjRJygBpH7Aybcj0MIsJW9
         +2pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HoWkAvCLxbUBLVS7gA5Y3jR5Cq/iRFj5cEZB+fPhfFI=;
        b=pa9uM3Vb0J+BGRt4qUS6l+UWAzI1eX3IIcxkBFgt/9z/O87htYDiuuKDsVDeH8Mzvu
         dN70e2DP1SEust5GQKsFKEf3ifif+kcKM46SU2b/pHJgQ0jeD8NqKCycFXSTZfd2Cd1l
         8KnetFy0R04LB9J+YNR4ubWLlOGwLoH/gHm82CgkX4IJc2Uq7fsA2tvn1KlO3E5V78r8
         YfVZcwuC1zy/BoUBQF/l2jS2ol/C1ifwapHo72uOM4+jVNhfUBXZ4odq3576rYleEbrZ
         0o3IhTry9cB7Q6CdbgNVeDmJlUiH8nCdyff4i1C/tFGkVY+DUD7PsuqfdS83l5Gu96a+
         Lf+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV1ZRZn2qJC1jBJMTnoMz0g4WcqUZTf/96kNFr2gYkR4GyAiZiA
	7r7oSTi00H1ruU13XP0VWy4=
X-Google-Smtp-Source: APXvYqwBloFVPOe/t6gXcGJL1BEzCRDobo6+A5kUpccPf3emGDQzYWafYTmKhD1ckiuaNUZUPwEr2g==
X-Received: by 2002:aa7:9a10:: with SMTP id w16mr13614128pfj.107.1577165668539;
        Mon, 23 Dec 2019 21:34:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d207:: with SMTP id a7ls4761688pgg.1.gmail; Mon, 23 Dec
 2019 21:34:28 -0800 (PST)
X-Received: by 2002:aa7:86ce:: with SMTP id h14mr33891234pfo.31.1577165668112;
        Mon, 23 Dec 2019 21:34:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577165668; cv=none;
        d=google.com; s=arc-20160816;
        b=RabviJewBzKbARpN0YXnpTJ1pNDr5TnaxwKN0aNzxkWoPo3J2Dc1Wm5hMN7/Dfptzx
         +vYYorGxKOHE7R73lXDhtY9ywy9DpoJr3DqiHj5aIQ2Wla/3cnYzy38YVOYRbSYQ+ijG
         7QSw8h+LP2bAvYMvhgjYeIY91uaBmJ2WF6/rYSfAGrXrEDHa18445B9NJcFbT+Ga1D5Q
         PBdovQO8YstGZIw3J9IusV83i7MQYLUfzYr7JgXH1Z1RwvPOzaLtUUnED2nDO6SdFDSF
         7jikXTa49CXosvPQABIOB69ul/LhCX2V26TiL99rkzuiSHRJZJIwSWl1MaGr4IdM2O3v
         gGMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FnmCpxhQF4zHl1e+owKZtA3Wttk/pm0+1RQgSzEMGDo=;
        b=lumlrXPde0fWsN1RV2sEt9axlmNiydzd/72uIItYd/ZScMgb8PxZAsXvBlhKuBny53
         F1ndF3FmwblgQ+lg/JQFPY/35W+GKORw21kUovi29EdgF8WPzoTfa+s3JMRCpI0FX/fi
         sYsaYBXwwwXs5DIzwNJA8xn9Yo+u+4RuREeUSmKdGeEL4ZkMj12VESWZRG2uSbNLJqgZ
         QZ139sLQNKHF3JkUb8P8I4h1cB79D8YXk6jgHWIeG7+YhBmo6JD9G69ZstKa48hFccof
         S3sbfGVzVSO6g+rA60gTJ1W27P5/vDkS05QOhheo3rD5nnAP1GcO2awjAv0OI+c2p7WL
         59wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eEPPKxo3;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id h19si215453pfn.1.2019.12.23.21.34.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2019 21:34:28 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id w21so17209204otj.7
        for <clang-built-linux@googlegroups.com>; Mon, 23 Dec 2019 21:34:28 -0800 (PST)
X-Received: by 2002:a05:6830:1f95:: with SMTP id v21mr28567944otr.325.1577165667395;
        Mon, 23 Dec 2019 21:34:27 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id o20sm5922763oie.23.2019.12.23.21.34.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Dec 2019 21:34:26 -0800 (PST)
Date: Mon, 23 Dec 2019 22:34:25 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Baolin Wang <baolin.wang@linaro.org>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [ulfh-mmc:next_host_sq 52/52]
 drivers/mmc/host/sdhci-sprd.c:390:3: warning: misleading indentation;
 statement is not part of the previous 'if'
Message-ID: <20191224053425.GB54618@ubuntu-m2-xlarge-x86>
References: <201912240156.Cn7vbKcm%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201912240156.Cn7vbKcm%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eEPPKxo3;       spf=pass
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

Hi Baolin and Ulf,

The 0day team reported this new warning with clang with the below patch.
Would you like me to send a patch to fix it or is it possible to amend
the patch to fix it? Looks like the highlighted line has a space after
the tab, which currently trips up clang's version of the warning.

Cheers,
Nathan

On Tue, Dec 24, 2019 at 01:22:58AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> TO: Baolin Wang <baolin.wang@linaro.org>
> CC: Ulf Hansson <ulf.hansson@linaro.org>
> 
> tree:   git://git.kernel.org/pub/scm/linux/kernel/git/ulfh/mmc.git next_host_sq
> head:   4bf3f6f3ebb123856f0d0906eb6c396fd8952b9e
> commit: 4bf3f6f3ebb123856f0d0906eb6c396fd8952b9e [52/52] mmc: host: sdhci-sprd: Add software queue support
> config: arm64-allyesconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 891e25b02d760d0de18c7d46947913b3166047e7)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 4bf3f6f3ebb123856f0d0906eb6c396fd8952b9e
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/mmc/host/sdhci-sprd.c:390:3: warning: misleading indentation; statement is not part of the previous 'if' [-Wmisleading-indentation]
>             mmc_request_done(host->mmc, mrq);
>             ^
>    drivers/mmc/host/sdhci-sprd.c:387:2: note: previous statement is here
>            if (mmc_hsq_finalize_request(host->mmc, mrq))
>            ^
>    1 warning generated.
> 
> vim +/if +390 drivers/mmc/host/sdhci-sprd.c
> 
>    382	
>    383	static void sdhci_sprd_request_done(struct sdhci_host *host,
>    384					    struct mmc_request *mrq)
>    385	{
>    386		/* Validate if the request was from software queue firstly. */
>    387		if (mmc_hsq_finalize_request(host->mmc, mrq))
>    388			return;
>    389	
>  > 390		 mmc_request_done(host->mmc, mrq);
>    391	}
>    392	
> 
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201912240156.Cn7vbKcm%25lkp%40intel.com.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191224053425.GB54618%40ubuntu-m2-xlarge-x86.
