Return-Path: <clang-built-linux+bncBD26TVH6RINBBOEG4X4AKGQEPXVIEKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F7622AA2E
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 09:58:50 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id j18sf3139922qtr.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 00:58:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595491129; cv=pass;
        d=google.com; s=arc-20160816;
        b=zB+RcBRfgFPgSc2eJxkga7i1zG5yx7dMKsd7OJNDnvLifBobxbsUgFvzu7lUnoGnBY
         TbMbxqHO3SQ0vVa7/zxgoYqT8auYhwspQ1+OeM6On+ymFub357BWdYkh8JLPx00y4Ya4
         Cq8yKkNryWFvaPx5MD0x0Sg0BJUIIogP5/wbQk/8qoscVLBHnKRYRBre9oi+1vC7hNwg
         CL9nWkSIJcGVH0jclgTRClnhblCM9LFEeHRW+pbbkzSySpsYPvRETDCkKUZPzWzWdW94
         9YtSiuDPkpm9yS4Zn2UDVvPUMRCdK+Zxv1nZcph/ZfunDRW1jnv6pAqPgtBxXGMuA/7E
         dAiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:ironport-sdr:ironport-sdr
         :sender:dkim-signature;
        bh=hMN9vutcKRtxE4C7v9z2K/LwoCaHcgBg+q2NDGwbraI=;
        b=Buvfslb5nvowAmqWIfMyVufFDTMyMMD0LTdxUZdYYgsX/qZqmJfrvM2xh8YHa+4WeF
         l+oDzM/LOpVkb7a3e7SigCtBZSiNC4oZ/bJ32d9tfKbEtVpZ9RS3UyjPBP7lomy7xxqG
         oFeHYzfAv2J3PlX0dANHipOw0xmaGHDIs2t9gGrp2qIIe16ktMVJjE6LbvZq/XuLpBJO
         DwFCipAklnPnKrknbUjDIDmVK11L/1it1DFSU0diXjtw0/T4HKI+yISBBtXD0Caogcoq
         b/BqtUa6/z4ZGZPcSD9BEcxrzPMd4clE9EJ2xGPfKTyCQ1DM+MD4tLlckXI2tHF0khRK
         voyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hMN9vutcKRtxE4C7v9z2K/LwoCaHcgBg+q2NDGwbraI=;
        b=k5NjJDoIRTFpQOokkrnYzg+K6ZEgRuMYXvG3qu4gFxnsDkdeoqOMTFv7P7okxb18Cx
         WeABPF9TbUL4/ZHpPWaZRprndt+eVOSf2Ribh2djh27/g5fl6mbGc3IXWBJBkNeP5k7j
         ZNS1fhciUUmza82pPjhw00Cd+Y8ePsdfbPBTmoDII81+lot1O1y2ktILSs4H3yOnZw2g
         D9Z/QASjsBMEUOp2g1DDkF6GrGq73lymGotx3JsT1fD5AKo/7CWQl+vnyfmDLmEiJUg4
         qm+U3AwL8t1Kt3cPOtU93+of9mbQ4M+jH3YJG+n11m/rMV5uwO6z+KQlCAsPW6a7t1dm
         wBjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hMN9vutcKRtxE4C7v9z2K/LwoCaHcgBg+q2NDGwbraI=;
        b=GEhEjoYuv/KPf3KX3csHeJ273CiwOPt11YGfcMLxpr37YKXcZbvAjucdXPyb4m9Xin
         jjh+WGwrCSZ6NOK9ylHqyVVSv+mKtiaajMt/Zp84mIgnkszpNkarXEW2K3kfS0HxjoZM
         j2pRGjS4r32Q6sWIm9dBI1S2vqzAQiubP/sAOxWZEcNclKmhIGlEIbhRlCiYbiUq2BHG
         tE9ADkDauObmkME9coaEpl44/dFSfPUecF4OUEIsHYMB0Aw8EJINS4buY5vDmHg8lz2/
         q7T9f0JLPGL3su76DDvnDgl7aj96df+ECetI3iuGy0YTLjwSHBz0FjoNCGf/oKqsHvB+
         4qrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533eEoR4PFhQDgAbV53gHYvlLX9vD9NiD/mQcs/B2EOUr0QRM0ih
	NeURjj1By6LxRoPW9JemjFA=
X-Google-Smtp-Source: ABdhPJzeye+b0bj5UR4sqGxz3KB0+343fJWbR84PIf5Yh6zSpeTc9iT+CFq2f868kANTYgBDUHCXqw==
X-Received: by 2002:a05:6214:1926:: with SMTP id es6mr3685030qvb.222.1595491128974;
        Thu, 23 Jul 2020 00:58:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:ed32:: with SMTP id u18ls1124012qvq.9.gmail; Thu, 23 Jul
 2020 00:58:48 -0700 (PDT)
X-Received: by 2002:a05:6214:a10:: with SMTP id dw16mr3675973qvb.180.1595491128596;
        Thu, 23 Jul 2020 00:58:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595491128; cv=none;
        d=google.com; s=arc-20160816;
        b=Z6iOaizcfrejTbkHIQoExdW2h5804fNQA4p/HZIL92IFlpyobPTjyLIlAOdBR23QZQ
         Jju7dwG0DuZcWon1jh85zn1apBA1o2mFbeFkA2RQkiAy7h9b+RRDXekGPfZuDcVwsezO
         RItGUr5crfqoQNyYlPXecydFOriQPu5SOBZKJMB89QQBlhCaTutgbu1AWfYC7BcXxAGS
         Dqi8pU8jw8eNJHmD765PxeBpwHcTLpVFXRsQRHzs7Sv5Cis+YxYwR3pDRTV1EL6iG9tM
         NlIzC9UKGVKQ2o6UwdJ5pmesWrgvmJWJ5PqsGnuGLfK3UxuvLsoPf5kkOjt6sB5g+gbE
         F0iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=cy4X2oBUL340pDr8toI8BoUdfaVNouWrv2KCZIsjzj8=;
        b=GpMa9jXlur1HnCLCdqsZgtEdZTLMHnCjnspvlWY3AliZPqpmgwsW/beBXxm7TdoB/h
         hk5zCRVtoWA8ex8z7p3hBhuLLIvWBVLwezve5J0sc01dBs4GF9JGNC8rdMtkzU+zWuB3
         o7L73T7utxJuIZ3iinr/9vg9C3KmWS4kqs1mADFGASqLpKDj+m/+UWhiAFt/5/euHX+5
         YmCx76VeY5g3OXIhXzTzrL/HO8D2jyL1Db7ynvg16E2pzs8ez+7o8aGHwbrh/xcFi/0g
         Hr4oEpEVQsPzENylttAR3nq0eUUEnNnjZTjv1iqyYd541a2jBKXdwo29funx1B6t/tT0
         2t/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id u17si199664qka.5.2020.07.23.00.58.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jul 2020 00:58:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: xX2AOYRZnRO0SOEknfYtXd4xOz2B/RvKZlNLRbcZ4yDBeMpzfOFrjTyk5XjhmVxck7ImMKrGBp
 L0+EHc1QZe9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="148422190"
X-IronPort-AV: E=Sophos;i="5.75,386,1589266800"; 
   d="scan'208";a="148422190"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jul 2020 00:58:22 -0700
IronPort-SDR: i48FX4FeH7AL3/apomeIuDygbYKaMKyJoAFkwLk4LSSFmK186xKeoK2xdrZDJc6UtIma8o4dsS
 S71boRskPnfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,386,1589266800"; 
   d="scan'208";a="488746116"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.3]) ([10.239.13.3])
  by fmsmga005.fm.intel.com with ESMTP; 23 Jul 2020 00:58:20 -0700
Subject: Re: [kbuild-all] Re: Adding branches for testing
To: Lee Jones <lee.jones@linaro.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com
References: <202007180528.vD5KVnHi%lkp@intel.com> <20200722180319.GH3533@dell>
 <20200723035548.GA363815@ubuntu-n2-xlarge-x86> <20200723063243.GJ3533@dell>
 <19e886f4-f4de-2605-d2fe-b6009ce97aa0@intel.com> <20200723072720.GL3533@dell>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <40833ab8-8a33-b452-ae61-6574bbaaa992@intel.com>
Date: Thu, 23 Jul 2020 15:57:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200723072720.GL3533@dell>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as
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



On 7/23/20 3:27 PM, Lee Jones wrote:
> On Thu, 23 Jul 2020, Rong Chen wrote:
>
>>
>> On 7/23/20 2:32 PM, Lee Jones wrote:
>>> On Wed, 22 Jul 2020, Nathan Chancellor wrote:
>>>
>>>> Hi Lee,
>>>>
>>>> On Wed, Jul 22, 2020 at 07:03:19PM +0100, Lee Jones wrote:
>>>>> Good evening,
>>>>>
>>>>> Is it possible to obtain build-test results for successful builds?
>>>>>
>>>>> If so, what is the process for adding branches to your system?
>>>>>
>>>>> Thanks in advance.
>>>>>
>>>>> Kind regards,
>>>>> Lee
>>>>>
>>>> I filed a pull request against their repository and I get email
>>>> notifications whenever I push to a new branch on my repository:
>>>>
>>>> https://github.com/intel/lkp-tests/pull/64
>>> Of course it's on GitHub! :)
>>>
>>> There was me thinking it was secret source.
>>>
>>>> Looks like there are a lot of trees to look over in case you want to
>>>> customize it in some way, I am not sure of any documentation over it
>>>> though:
>>> Docs:
>>>
>>>     https://github.com/intel/lkp-tests
>>>     https://github.com/intel/lkp-tests/wiki
>>>
>>>> https://github.com/intel/lkp-tests/tree/master/repo/linux
>>> You've been a great help Nathan.  Thank you!
>>>
>> Hi Lee, Nathan,
>>
>> We have updated the config file for repo/linux/ljones-mfd: https://githu=
b.com/intel/lkp-tests/commit/deff2b285b141ac462b3a7091566ce2ea218c9f0
>> and there is a introduce document for these items:
>> https://github.com/intel/lkp-tests/wiki/Repo-Spec
> Would you be kind enough to expand on a couple of points for me
> please?  The Repo-Spec seems to be lacking in a couple of areas.
>
> What are 'integration_testing_branches'?  Will lkp-tests only operate
> on those branches and exclude all others (except those mentioned in
> 'whitelist_branch' of course).

Hi Lee,

the branches of integration_testing_branches are from linux-next tree,
'integration_testing_branches' means 0day will try to apply lkml patches=20
to these branches to test.

$ git show linux-next/master:Next/Trees | grep lee/mfd
mfd-fixes=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git=20
git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git#for-mfd-fixes
mfd=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 git=20
git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git#for-mfd-next

>
> What are 'subsystems'?  If the MFD case, these do not appears to be
> directories.  Do they pertain to something else, regex for instance?

'subsystems' is generated from linus/master:MAINTAINERS, 0day use it to com=
pare with the patch subject from lkml,
and sort the branches that the patch may want to be applied to.

Best Regards,
Rong Chen


>
> Any help would be gratefully received.
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/40833ab8-8a33-b452-ae61-6574bbaaa992%40intel.com.
