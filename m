Return-Path: <clang-built-linux+bncBAABBI6D4KAQMGQEYGCPULQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-f58.google.com (mail-ot1-f58.google.com [209.85.210.58])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C278325E2A
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 08:22:13 +0100 (CET)
Received: by mail-ot1-f58.google.com with SMTP id m11sf4407826ote.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 23:22:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614324132; cv=pass;
        d=google.com; s=arc-20160816;
        b=KY2m1fLWd7a1mxUs58p3A6xVFFif0ZEdHvsOZ3ZaZurgEfzehJH6OthOjy9kd4iV95
         gUguqkiG9HuEI310tDG+fFk/JUZHgAf49hlWYKUGb25e37J29tELXa1e3sz/iZ/LJ24U
         Z8mqmE6B6hQ6rpz8tNC6TMWn5GYveAEQ5k0PeMMRRBBQuw/PJslMkmu0N33jDyaQhRsU
         8DxDGYqjrKXdkqYeVDHYgrUVAiTiS4Nzs7gQ/v9l+UVCkpW2WWWUE6RCPLiuJLvYINvd
         OGuEtKQ5CjJUFgor4kJRECiQ017NQO89x6I0iuWPtmoq1L4ehAEhFaIfa8e2ft1BpcMP
         mMqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=UGe8Y+jj0Tk6TO1hBo3xfc8gd9R+/o+oumY5VNXqq7U=;
        b=q/Nh7dBcHnoG8NLrf5b/rhv81nsRKE3ea5dRNF3llAV/bYBRP8h4Utu+pcBl2vYbdc
         M7M4LWVcd0BjKVzxJM+OLus7lqEcOmi7YwjHl4rkkfWPjNEZ6kMiebyMeLwuYoF8s9lr
         gj+D7TQHCO5VJ26W58NfeODpDc7rW+FHtPXmXehZu5usiV2l5Cvhq/V0LLfVyEeS0as/
         vckumWzWthxGc//L7Oh5a4dVTyhaZxshNxtaHRN/1q9q6n4WAnCC8MGYAHepNwPzN3fx
         zS7P04kxjycnQr7dyAxFwzufjuinPveGmKwmrCCtg6GZJkmxslIkYR1Au4naOYHX1PQE
         iD0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=pnN3dMt0;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.11 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UGe8Y+jj0Tk6TO1hBo3xfc8gd9R+/o+oumY5VNXqq7U=;
        b=ptvQbXRv4ukutLXboP6+JhgfAkIvEljbAvpR7U6nix4BuYmZJBggUipRPgJ2Pbk5t0
         OMKHwgVZjCCmT+1j/reh98cmb8aLwtm4sY7U2zYNocPClqC5H4c7d64r6J/LMAGt9GE1
         CtGfSnFijrUtp8jt8bqB/UYF86/Nhe892cx3TseMv4/PDH6GMtyM1A0oyBfQPY0FAgXK
         BTaxvGzLs7/Aiel8sSqjdMILtVGfB/ebH9msZfRmuySHXHWmAy6jaQ5j5WPHHnf4JZKC
         y5H1HBjRS8CbHca9ieyTjSYdKn6jZRgKsRXjLOihSUQnqmfsZZaQcPXg359FhEuaUqX2
         XkhQ==
X-Gm-Message-State: AOAM530Al7RnULFG+b/+rnxjXzEFwu/cahHkFZTTcojBAq5IszFtzmMe
	BJzNhVB5RIfPv7qbb8sUSJE=
X-Google-Smtp-Source: ABdhPJzLJ5zNfZwyh/0mvDBfGY87RjY5spnumc0lnZ0telHfgOZfRD8gP5rOVbui3AuFuQ1MNiM7dw==
X-Received: by 2002:aca:3307:: with SMTP id z7mr1131357oiz.34.1614324131782;
        Thu, 25 Feb 2021 23:22:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:10d0:: with SMTP id s16ls2107811ois.7.gmail; Thu,
 25 Feb 2021 23:22:11 -0800 (PST)
X-Received: by 2002:aca:1907:: with SMTP id l7mr1180733oii.28.1614324131516;
        Thu, 25 Feb 2021 23:22:11 -0800 (PST)
Received: by 2002:aca:d5d2:0:b029:fc:f7ce:72d6 with SMTP id m201-20020acad5d20000b02900fcf7ce72d6msoig;
        Thu, 25 Feb 2021 02:23:08 -0800 (PST)
X-Received: by 2002:a17:90a:eb88:: with SMTP id o8mr2583167pjy.169.1614248588188;
        Thu, 25 Feb 2021 02:23:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614248588; cv=none;
        d=google.com; s=arc-20160816;
        b=kiFh7Jhd/9IALMvsOV4/zcBRo8stStOLZYYQ1O2JMyD6kYOGMmUMRZj6R80P9FGTfz
         JQq+CNHMWsNSOsEBGwJniGMQivmhORWN+Y6d1mXXA1DWnubf52zmLL8pfoZEFDhFILB9
         nOGR/s81zT6MRbxME8HuAlOjfsmnDfRZXdEX+7MPhx9OausL4C9AKqaV5MioVPkYhkyV
         TUDB56L1dUrQ3mz0WT6CQbSrvA3sKJukIvCPAokd1dFv1hybmFqwBlDNUmNrCPlK6puM
         VqslH+wWQYTYdqxlOtxwVixzTK+gq+ZKfomFaubRZuON8N90tXAqvdF/5nSoPNdJoMFK
         Pz9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=OnrGOA7+vtKJaM77uUe4Y7LYAd/8kech7ZlLX5tFEs0=;
        b=yFAdt72wJrLWFDw4Oa6oTRFXfy+884jepu7JkGhuHOnsBjT9jH58yU2Btt+r+pT8P6
         L6YwHIog29B7f1BdA3L+drI8w0n0zv5swOkmKvUYwxXkpfgYehpDKP4HWJ2MSDqUtLPE
         EaM3u7v5buFHEXbFSYFXB55R4FO0IP+cvfu3DdwlCgmDyzWwf97lHedMQowTyH6qnBXG
         OEoN0wBd8P+B7/qJuoKIbiOMeoR2zq4r07IErlhVczWLNnWxnhkAOw7zxnmpJGB9deOB
         Fw9cPjvFOJboS+IacvkeiMgEfNtNMuULc+wPfHCIkCaCocCyIb0vm659ZbIxo4PPsEXz
         i6nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=pnN3dMt0;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.11 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from z11.mailgun.us (z11.mailgun.us. [104.130.96.11])
        by gmr-mx.google.com with UTF8SMTPS id a128si187973pfa.1.2021.02.25.02.23.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 02:23:08 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.11 as permitted sender) client-ip=104.130.96.11;
X-Mailgun-Sending-Ip: 104.130.96.11
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-west-2.postgun.com with SMTP id
 60377a844ba4640b2b1b7d0c (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 25 Feb 2021 10:23:00
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 95244C43464; Thu, 25 Feb 2021 10:23:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id C14B4C433C6;
	Thu, 25 Feb 2021 10:22:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C14B4C433C6
From: Kalle Valo <kvalo@codeaurora.org>
To: kernel test robot <lkp@intel.com>
Cc: samirweng1979 <samirweng1979@163.com>,  imitsyanko@quantenna.com,  geomatsi@gmail.com,  davem@davemloft.net,  kuba@kernel.org,  colin.king@canonical.com,  kbuild-all@lists.01.org,  clang-built-linux@googlegroups.com,  linux-wireless@vger.kernel.org,  netdev@vger.kernel.org,  linux-kernel@vger.kernel.org,  wengjianfeng <wengjianfeng@yulong.com>
Subject: Re: [PATCH] qtnfmac: remove meaningless goto statement and labels
References: <20210225064842.36952-1-samirweng1979@163.com>
	<202102251757.V6qESTrL-lkp@intel.com>
Date: Thu, 25 Feb 2021 12:22:54 +0200
In-Reply-To: <202102251757.V6qESTrL-lkp@intel.com> (kernel test robot's
	message of "Thu, 25 Feb 2021 18:04:03 +0800")
Message-ID: <875z2gfnup.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=pnN3dMt0;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 104.130.96.11 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

kernel test robot <lkp@intel.com> writes:

> Hi samirweng1979,
>
> Thank you for the patch! Yet something to improve:
>
> [auto build test ERROR on wireless-drivers-next/master]
> [also build test ERROR on wireless-drivers/master sparc-next/master v5.11 next-20210225]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/samirweng1979/qtnfmac-remove-meaningless-goto-statement-and-labels/20210225-145714
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers-next.git master
> config: x86_64-randconfig-a001-20210225 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a921aaf789912d981cbb2036bdc91ad7289e1523)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/d18bea1fd25dee219ae56343ff9caf9cb6eb1519
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review samirweng1979/qtnfmac-remove-meaningless-goto-statement-and-labels/20210225-145714
>         git checkout d18bea1fd25dee219ae56343ff9caf9cb6eb1519
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>>> drivers/net/wireless/quantenna/qtnfmac/commands.c:1901:8: error: use of undeclared label 'out'
>                    goto out;

Do you compile test your patches? This error implies that not.
Compilation test is a hard requirement for patches.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/875z2gfnup.fsf%40codeaurora.org.
