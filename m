Return-Path: <clang-built-linux+bncBD26TVH6RINBBJXB4T4AKGQE4MHPR5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0F022A90F
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 08:39:35 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id c3sf2318751ooi.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 23:39:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595486374; cv=pass;
        d=google.com; s=arc-20160816;
        b=oIs/w+AzKvwUUeRGwo4VALKKGWhLcPTqzI0QCFSrsflyIR7Icz7hJ3VrAqZF697MaL
         Lo/Z38UFlvSMuuikrjqBg9cD26szCfioOaVgm5c2JuYTEf0h6hRFAaAYD5lmyybjucPo
         vAT1l3eesnB9jsDGMFwDn1e+hP0bK0HlbT3yFUck9V5sdgFTEabP0WAONq5RvL0zyi5D
         Z6qNedlxiXbuUDLLGu9y3/zoHby1V6cVaMafXVks1HoeCkaPopyX/epFB8dWUx0+hMiE
         ja8pDcJ2TSWh5x2LmBCck/I7HWsK5x/rghpvd/qKA7EHfwervED0rYT5NISU/GtbUP4n
         fdXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=H71CzUTj30sPHI6qv3nhl8asn6AFqo35WNd/j9GgcS8=;
        b=d6iOzKuj0KcZCNfYj6DU7CEZUjpneuq0JMjD9pycpM2hObtL+LMqgsOQ0wT1Vrb0U8
         0foRsNz7aqfQKiCnhSud3zpakLUf8GvkGRIueMTVXvNbXBKf0LjTqGWtKpnzLNspXE0K
         Cmxvu179K3wmKbaK6S1nAX/XugSldG1+jmH+j7Faog/eOZh837cVNKGYs/LqlCqlN1cR
         8kH06R2vvohKrhyPe6is4Nlm9MYVZkTO8/+sQfN/Jtpp2c1e741q0K9i+a1JWtegWDcF
         knTchTgDYrPsFKjbDVPy27evO6kibD0Z2YMBj2PaNXyizqTssKVMG6KV53XskK36Wl42
         k4dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H71CzUTj30sPHI6qv3nhl8asn6AFqo35WNd/j9GgcS8=;
        b=RRSvIyJ5GmmWoq/fHL+0tMxasRHi7ytyt9g0KdzEPlFGMYOEqZMd0gLbR2w5u0epxt
         XNPMaa0Byd+aE9CfAjCZsJvnca6RO0TkDFnmIaZIAN8pZUJDhIf8l6Z951C0MgOiGyL2
         jGuNmajZ1lmbfzpirx1Bi0IIXGT/FQahlK1oIgKYjQHuTWlWNR0RtgMiXjR/liAMMW6q
         /CyqMwUJMzY/YcrtS6i69KMDmps9FqeDjET9J7/A5GNCO19d8TvJY6sEbwx/W47YtSuy
         f05siJxOSJP5hflv3/rOYZ5ldUAPVYnosPCMG9F3PTnNsxm/gOCCsJxHdLY7pvzpnXdZ
         SQpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H71CzUTj30sPHI6qv3nhl8asn6AFqo35WNd/j9GgcS8=;
        b=H/cTnPZ6NBjJ7/Lew50U4EahVdd+CvOD4N+IRWLimsqrhXK8uuQuswR+u6DXjsPwle
         EE+q4n/zInx4OXfDRAIUC3MLQDgIC6HOqu0f8zFxfL9b9Ta4AWuASu8xrq/RT0zOgEmv
         Ro6FoweC/Mi+nNy9ucVQEHeMpyfkEev9/cxaSGe/ravr0N2IVqO97+lurzCa9rTJVJYp
         Ll6GueHZVyFA6EK4nSEONwnGeI0+hyUq8scug63Dz78P3bnaut9n8iEAqVFCODZUekmW
         woKlsyWrvDCZYxjDCwYbcuUjaxEHG/kXxXIhCcCewxKT240eyw5q00hRfUlOyAwSXn7k
         s1mg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LGVQz9WF4fOB8eF63Bj8L8ajL90iLAbTM6TF2tNr1D+Dhfazr
	e8tUxI++JJi0iQ89QFFKXdk=
X-Google-Smtp-Source: ABdhPJzHFZwEAr+IG2ic73s3pWMZIi9ymOCm/MbhQICwfFKvZbRRZjPQPSuilZvAyxOfW+u3YhC0Zg==
X-Received: by 2002:a05:6820:50a:: with SMTP id m10mr3269621ooj.54.1595486374260;
        Wed, 22 Jul 2020 23:39:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:544a:: with SMTP id i71ls901533oib.9.gmail; Wed, 22 Jul
 2020 23:39:33 -0700 (PDT)
X-Received: by 2002:a05:6808:9a3:: with SMTP id e3mr2708182oig.63.1595486373896;
        Wed, 22 Jul 2020 23:39:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595486373; cv=none;
        d=google.com; s=arc-20160816;
        b=ZaSXGZ0qkehyCQNR9H+nSbASPA8nv1v4ugVdCQXt6Mh1WXQ8KePR31yeRNaZncsMZo
         jWWWF+nl0ri1gGVLune3oV1vppfjo1AXk64IJiAsGhOuQjlilvLwQsnlnu6BSwg7V/3m
         /Lz9Npc7P7cQtzJKJ8GNRue5heL5C/HlV66NVG2XtUbRA2i4tPsoyqZmhmh9PKaNFyiP
         LxYr8njfiNUJH0LhEKOjgH436WwfBNbmhML5QfF3SMCDDV3I7S4yUPxG0OFeL/eXVYyn
         8eraiFN+MgfWdW3UD6q60KhA40W55FsjcByJJ+uFzy81WKyi4BlI3QTqiBxRkvzCGiQN
         8/Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=cS7KgB7AxRu2RjhEk0qOD4avXd1CH5PboLeVSdDjQyc=;
        b=0imnUPs68WmeNpg4QHH4hZN0qZKKH/cJGTQa7qLNAr515Vy19VbZdzjmy8+cbpJrS2
         fwwt61ZJlBPfk/WZ0f1V0IgPDob321iVBP5gqsXb+ZyhGfsEidiAdlHFl/oiGv7VohbA
         pQHAgkGYNmePENfjfLI+grCjUrXdAsV1PCLoxKgqrX5U0JPtRq9KsfgdCPEQjfFy3XAN
         +j3YxTyWKpj7IJlikSa4QKwW/PtW1ExDtqqpCmd+qf0d6rmcF9um3r3wlmaM8ikGFd7v
         Lq/zx09cQV79PM163jdMK2Ef6RIxUFFW6JiKU1I4vnyMNs01xO5QCF2hsAsFtn5Ff5AD
         aNBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id a65si168292oib.1.2020.07.22.23.39.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Jul 2020 23:39:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: 32+N22WJ/Xn9uARjKWbre1VxNjWi3Bv+OCSJtMAUApoHEunr1DA7yHtSxOq2qNYnksbnWNvMhy
 HvLVM6lvcqWw==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="212015761"
X-IronPort-AV: E=Sophos;i="5.75,385,1589266800"; 
   d="scan'208";a="212015761"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jul 2020 23:39:32 -0700
IronPort-SDR: KFobaJNmJXY1ISXxIe8TY9KN46bKSptgFTGwG3X7pwNW1aqhbyemUwUR2o5W5YIS6ESte0o6HP
 z3BvrI217lwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,385,1589266800"; 
   d="scan'208";a="302202654"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.3]) ([10.239.13.3])
  by orsmga002.jf.intel.com with ESMTP; 22 Jul 2020 23:39:31 -0700
Subject: Re: [kbuild-all] Re: Adding branches for testing
To: Lee Jones <lee.jones@linaro.org>,
 Nathan Chancellor <natechancellor@gmail.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com
References: <202007180528.vD5KVnHi%lkp@intel.com> <20200722180319.GH3533@dell>
 <20200723035548.GA363815@ubuntu-n2-xlarge-x86> <20200723063243.GJ3533@dell>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <19e886f4-f4de-2605-d2fe-b6009ce97aa0@intel.com>
Date: Thu, 23 Jul 2020 14:38:59 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200723063243.GJ3533@dell>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 7/23/20 2:32 PM, Lee Jones wrote:
> On Wed, 22 Jul 2020, Nathan Chancellor wrote:
>
>> Hi Lee,
>>
>> On Wed, Jul 22, 2020 at 07:03:19PM +0100, Lee Jones wrote:
>>> Good evening,
>>>
>>> Is it possible to obtain build-test results for successful builds?
>>>
>>> If so, what is the process for adding branches to your system?
>>>
>>> Thanks in advance.
>>>
>>> Kind regards,
>>> Lee
>>>
>> I filed a pull request against their repository and I get email
>> notifications whenever I push to a new branch on my repository:
>>
>> https://github.com/intel/lkp-tests/pull/64
> Of course it's on GitHub! :)
>
> There was me thinking it was secret source.
>
>> Looks like there are a lot of trees to look over in case you want to
>> customize it in some way, I am not sure of any documentation over it
>> though:
> Docs:
>
>    https://github.com/intel/lkp-tests
>    https://github.com/intel/lkp-tests/wiki
>
>> https://github.com/intel/lkp-tests/tree/master/repo/linux
> You've been a great help Nathan.  Thank you!
>

Hi Lee, Nathan,

We have updated the config file for repo/linux/ljones-mfd: 
https://github.com/intel/lkp-tests/commit/deff2b285b141ac462b3a7091566ce2ea218c9f0
and there is a introduce document for these items: 
https://github.com/intel/lkp-tests/wiki/Repo-Spec

Best Regards,
Rong Chen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/19e886f4-f4de-2605-d2fe-b6009ce97aa0%40intel.com.
