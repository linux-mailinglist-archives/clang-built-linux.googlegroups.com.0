Return-Path: <clang-built-linux+bncBD26TVH6RINBBX5222AQMGQE3DSIUWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DB5323477
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 01:27:12 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id d11sf283561ilu.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 16:27:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614126431; cv=pass;
        d=google.com; s=arc-20160816;
        b=siGDeIZk9CCSOCa3s4b6LSPsjmvUywxWx6GFVuN6Cc14AKsuEBMDBWhuropjO430tF
         MqhbIIrzp1f9TWuR/a9UFIFRJAqgIkS0aavM4UmHNJEac2OCIRf1+s4kG6onfpLPOURL
         jFpAcS+GZzdWIlFA/NB7vyaOVrGkye0vpj21jxfgz0YM58FFrjTGpsTyvDBazp7ln+YY
         lCC9IxQhjDFGBLq4M91EgkcowEuPTGqo8dCblvGq2b0uoBfsP8WXILmN10nswyoWcsrz
         iGchgW+Q7ogOmaaLrAT+B93gxTLL9fv9yEemyzMESimLTpMmaFYRUv4Vl+Tm822raVXZ
         JFbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:ironport-sdr:ironport-sdr
         :sender:dkim-signature;
        bh=zcUIb6Uzwy44KjxnJQ/4jx3Z5bLO6hE+VfXwJta58J0=;
        b=Wxt0TPccdstf5DXGQqSOggYDVkp2mbAzpcJ3ZNgngvpq2t2WMQUguA++PbXiFVnBIi
         WGhQAc4s4S1twQbkBB+tb1ytUTQ+07g8yCX++uqzTxL0ID9xhujaK1QJ9auMWBFz1DI/
         Bjf5ZtzZbYFfYAAqK6dee/YQdyLi5MJySNNDxD+BFmlv0ztBH40S9vFB+1Cjuz39VAO8
         ByF4T5rZGNA07JfglnIOhPlSq1EOCBj8ws//NSH08WrJWnLN43rjdjU0bBSdBWkk4NoX
         OMtQQwSw5XBWfvpH19LGKdOwlWshI3zssBEJxv0gTwC6D9k5gMPQuz4vvAq7e7lhoJHM
         aj3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zcUIb6Uzwy44KjxnJQ/4jx3Z5bLO6hE+VfXwJta58J0=;
        b=RYzD+T1tJbOSOpg1mVXueh/m3zdPrzDqoALMH/zFwvhT+YaXw3b9dj62SEAc+lnYlk
         TjdFM8xa4EaKKeQXqxb4E6+Ht7ksEr5rt3gcGbWZjzjFm0KLlDTSD/xLQQfGqnpC4GRX
         gwNW13KXC3T2STxEjEuk5U0S6imqTVEKYPgRXMBe4vzFo2KOBjpjCLv1XvUcAT/Pc+VR
         5zE3pK11MW2qgItMF/NTi9VJp3EZDlO12ThPPKn4iKg4HMN/b87tmayiB6J2gokqm346
         lQczWlGWGkdGg28bqkZCUqolsOQjguPbh+pNHioymhZPDwc2AK3kJbOjAyV2cw2tKDCD
         xP3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zcUIb6Uzwy44KjxnJQ/4jx3Z5bLO6hE+VfXwJta58J0=;
        b=SYe7jLyKVydwy6xrEbJ7mdda7jIplPzDFLw5yPRik5oD9x39iwUZN4iavC0Q3oQxnd
         mOnNEQ0x5EEoPCPKzz4tfBSARMCjfTPkiWqTS6qskSmYbv44BvcbQAX80cBk7uQ6lNaa
         Knp4THod3Q9LlWhs5eJ/FmJsMumdzD+hlvAUoZsjfZkKKSvqVSPjQ28gS//I3CnpgGK5
         EyG2GS5fismH+pjR5Zj8IgWpymmriehKyJCCTtZqeqnu/ot+PsU9lDJ4arfaGwzsCFw4
         OMxbVeNUMOsOn46JAvjmc9Kw9iD8dfLESMe7BAUJMSh3PxuHAEM/YLk2S2G66s2dtzej
         nbdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gpLp4wBB1YEkfaph1pu06adSfSK9apN/bBuP6EYzwv450ss/m
	MeWG+NCkxx5zZCj0w6fRK9Y=
X-Google-Smtp-Source: ABdhPJzD1BkSF1Bi2S0PZING/nxccjrXQ1WGaUpRyuW7FS2oAh1WizF5oYD6gqQnWdTzvb9TydKPFA==
X-Received: by 2002:a5e:980a:: with SMTP id s10mr22370285ioj.101.1614126431542;
        Tue, 23 Feb 2021 16:27:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d24b:: with SMTP id v11ls86762ilg.7.gmail; Tue, 23 Feb
 2021 16:27:11 -0800 (PST)
X-Received: by 2002:a05:6e02:194e:: with SMTP id x14mr22298796ilu.218.1614126431046;
        Tue, 23 Feb 2021 16:27:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614126431; cv=none;
        d=google.com; s=arc-20160816;
        b=AouEassERCfb+muOGFX6sas/DhUwTSl9cbsER8farnHZF6HHdqc5iq00n3jZH6XVLB
         0i60b3IPn0QJG5xbGoNBWf60f6EPrbQ/gbmQ2OPgaHhr8UTAdIAFAIyuDY/96vqccDKs
         evTLvRHCg5wvywINh9aIMlgo4SMOQMVrvNPZdgHJ8v4HEiCx3RdalTyXIALyZlobjqrt
         b7uM+oEkNM8nuCbWlR+ZHnwNzSlYaIrgxF26aSg80GooNk6OD6Yud3JZziB9MWTMY/j7
         et+ChUqpaLXTJ8k4oPwm+IcR4OkUzTU+3lGCzyyNycMQNKfaXLuCF1XMCSwIRy1et09v
         aK7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=esug6f2deKCiGpxQgFRbKLzyhzQ2oWoWCflMtGFim6M=;
        b=HoyMv2/rk34oJ/a2zKC4hRS0tkPGlHb+e5eO54dn1op4EI4frVedLNbe0O5ft3ZrGZ
         kFnPRcISuo97DzXUjEf0DMwlDcSjnKe68L28ly1y2QgQiadYGqVADUbuVCm5VW3aeFvb
         GDat8Vk01M5NYonA0g6scBLKXGwvhOrasKWzx66XSTEmO3mdr8/4j6OfH4isKq7wO173
         G+v/PQQeLhdccVxMycdb6K7OKJ4vGot3XnoI1dNVgJsmg2MKtYK1q9bTyWoWZvZx99n6
         sWpm0E/euiujN1w6IaMG3UkHfwYA3vFUvXMwOIYYYh1wqtuy3uuyu0tsusNk9xGffUlN
         T0sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id g10si41503ioo.0.2021.02.23.16.27.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2021 16:27:11 -0800 (PST)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: j91XET6kuOYrBAivuphFPPjR2Z7EHhfYeocnlHrvxo7FWL+wRVFWgzhSdbQHUVj80MnmPPKOiu
 AMEhYfJh37mA==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="246412567"
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; 
   d="scan'208";a="246412567"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Feb 2021 16:27:09 -0800
IronPort-SDR: bPNp97p24bfJTr8mlocpc6fkNwpXTt29iZkCFKWuqAylCHg9nRI2GWowCwp6aYq0JBon64tzKJ
 /kgeVUpHOIcQ==
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; 
   d="scan'208";a="403396807"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Feb 2021 16:27:08 -0800
Subject: Re: [kbuild-all] Re: [PATCH v3 4/6] ceph: convert readpage to fscache
 read helper
To: Jeff Layton <jlayton@kernel.org>, kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
References: <20210223130629.249546-5-jlayton@kernel.org>
 <202102240217.iFWnRE35-lkp@intel.com>
 <fca142d9af11b3debd76a49ff8d62bd2dd4a1553.camel@kernel.org>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <552800a2-f04c-74e8-051f-778d96deb469@intel.com>
Date: Wed, 24 Feb 2021 08:26:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <fca142d9af11b3debd76a49ff8d62bd2dd4a1553.camel@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
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



On 2/24/21 2:31 AM, Jeff Layton wrote:
> On Wed, 2021-02-24 at 02:18 +0800, kernel test robot wrote:
>> Hi Jeff,
>>
>> I love your patch! Yet something to improve:
>>
>> [auto build test ERROR on ceph-client/for-linus]
>> [also build test ERROR on v5.11]
>> [cannot apply to next-20210223]
>> [If your patch is applied to the wrong git tree, kindly drop us a note.
>
> Yes. This patch is based on top of David Howells' fscache-netfs-lib
> branch, which has some new infrastructure that's not in Linus' master
> branch yet.

Hi Jeff,

Thanks for the feedback, we'll take a look.

Best Regards,
Rong Chen

>
>> And when submitting patch, we suggest to use '--base' as documented in
>> https://git-scm.com/docs/git-format-patch]
>>
> I keep forgetting to do that. I'll try to remember in the future.
>
> Thanks!
>
>> url:    https://github.com/0day-ci/linux/commits/Jeff-Layton/ceph-conver=
t-to-netfs-helper-library/20210223-211133
>> base:   https://github.com/ceph/ceph-client.git for-linus
>> config: x86_64-randconfig-a003-20210223 (attached as .config)
>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c94=
39ca36342fb6013187d0a69aef92736951476)
>> reproduce (this is a W=3D1 build):
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0wget https://raw.github=
usercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0chmod +x ~/bin/make.cro=
ss
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0# install x86_64 cross =
compiling tool for clang build
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0# apt-get install binut=
ils-x86-64-linux-gnu
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0# https://github.com/0d=
ay-ci/linux/commit/aa28edc5eea70d90d6438db51c32b22d47fd0f40
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0git remote add linux-re=
view https://github.com/0day-ci/linux
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0git fetch --no-tags lin=
ux-review Jeff-Layton/ceph-convert-to-netfs-helper-library/20210223-211133
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0git checkout aa28edc5ee=
a70d90d6438db51c32b22d47fd0f40
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0# save the attached .co=
nfig to linux build tree
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0COMPILER_INSTALL_PATH=
=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=3Dx86_64
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>  =C2=A0=C2=A0=C2=A0In file included from fs/ceph/super.c:22:
>>>> fs/ceph/cache.h:12:10: fatal error: 'linux/netfs.h' file not found
>>  =C2=A0=C2=A0=C2=A0#include <linux/netfs.h>
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0^~~~~~~~~~~~~~~
>>  =C2=A0=C2=A0=C2=A01 error generated.
>> --
>>>> fs/ceph/addr.c:15:10: fatal error: 'linux/netfs.h' file not found
>>  =C2=A0=C2=A0=C2=A0#include <linux/netfs.h>
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0^~~~~~~~~~~~~~~
>>  =C2=A0=C2=A0=C2=A01 error generated.
>>
>>
>> vim +12 fs/ceph/cache.h
>>
>>  =C2=A0=C2=A0=C2=A0=C2=A011=09
>>  =C2=A0=C2=A0> 12	#include <linux/netfs.h>
>>  =C2=A0=C2=A0=C2=A0=C2=A013=09
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/552800a2-f04c-74e8-051f-778d96deb469%40intel.com.
