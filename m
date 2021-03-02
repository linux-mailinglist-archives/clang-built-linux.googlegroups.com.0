Return-Path: <clang-built-linux+bncBCIIBJ5W64OBBCFD7CAQMGQEUOYMO5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA1832995E
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Mar 2021 11:20:57 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id x20sf1617015pjk.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Mar 2021 02:20:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614680456; cv=pass;
        d=google.com; s=arc-20160816;
        b=IlzNFfUMV0Vlcmqgh8b8e0fFeYGd8IPmk8THZXcYq4FNEyA2Lj4CsYlmiKSE9++9kk
         6nkIsdUb01g1z+GkFJg0/d6R/updYEeAdsainfNwgVLv6qiMu5fuYsfyvyuCdbbGicSe
         4a7reQzsYbHWBA2Cdi5Rk0mX2cuqb8fTmvRanA5UmowOZnbpp3kh+P/Lsyg48Uu480ej
         7yPTjobOMh5O5M/mJijPemwqqHxzY1y4paoXmARbxkTtxJninwXGqfIpkiQOVMO+OzVQ
         BdeAgwtCgpw58nsmOzTQvdaB6jqoRVDgleYkfBpyhqjq/DZDKt4+LukbaGWKMoRU7Q5W
         vH5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=EzbF54WznRDOeiiVSb6zpVWargLwY+NjKi0qxif+dxo=;
        b=DaGjoZFNNXP0iyuqeiB8iDkpJNS9hganl8EmLqNYTZPpr6KGMMUoDRiU0fsCDILDgV
         pENJpORIX3OKzMQtBPMgBC4e+4CpF231YR3R8YRQ7kE2xPDt4CP3c5qxj04q6Q2TjISB
         cw1aE4yjLYP6c63cAAoDx+eL6/h8KYOvLwG/pdEf1BQhQoW5SbErRoZ6UkA40qlIXRf0
         8pSumwvV+A1wAXqFvCeFyazBnLI0XtWewTnc2d6Ir8bVHBXquy9lHcA0fj1tsjabmY0H
         Ys3MOs9MQrIcC2LB0b7RBcX0Zt0Rq/XCfyu+IFGzcmH2eBsLwaG67zHGyK4VOP1dQB0I
         dYDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of anshuman.khandual@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=anshuman.khandual@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EzbF54WznRDOeiiVSb6zpVWargLwY+NjKi0qxif+dxo=;
        b=PVOPHFjtFLT9lDAS+xRn+gY46Fmnd7IexmP4HmWz/4wx5yntE5embe9z6+pScx90av
         fCNRs9ai0awC3WHi3xfnaPvZklerwDlCOBeSNeJE/JY3gOotd5iKcddukZntYzDjqVh/
         DtylHG/2FMmWlfgF45/8535Zu8lACNOhAyxfIxb9qAPujG/lGEvp3DCE7im4AIV7q1W+
         Tmqbo75L21wX+WppPgQUo6JvYN1EtHZUsEllCRy5nO3420Ke6kqrOmytHzWsPaMdns3E
         VOl+lOAui/gR1N4hi8m3EqWRGOwB1N8pAfXqDfXEH+yXN4M0ogkweXfF9mSng26f/t8b
         /mDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EzbF54WznRDOeiiVSb6zpVWargLwY+NjKi0qxif+dxo=;
        b=IYRdPRWkMaiWLoYoUR8q2vABeQe0QtRl4oTxJnqFcnS+S42NE0V/0MzQGaug8nXzHJ
         M5HTXJAwLcL7OVHED6cBk48s5OeNtfeqRfdy59aT2Jx1bFgoAtfOwOkVBkH7vz1at6YG
         Tae3YRuxrqcEI+uwKuSS9l8ou8r1q+rIzFR8O2GQhfanTte3ZTLrhytS8OoyIILloxEc
         XN26XoF5kqtm3cSd/3Kj6ghdQqRAWrduJgJFy7Iu72fUy5F3OzMHTMEDmCH9BW2EoWEe
         AAnuR1dGccmocr/3XazwaTte0sPBurFzP7muoHE7n4tkigxZffDgWqLLEMXdJx26u63t
         h2+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533d7CnXqXC/86dVWUfnrOww5UIRMjoIjysMrVlK+UUVKIBBZeNK
	29G0SBLijLvDlGPMQ9ql6No=
X-Google-Smtp-Source: ABdhPJwqbUiKXM8xGUX/6koXFeMrqFbX4s2BuABgoKhhUeH93jy04ZxLMO+MY2f4TKa9lxNPGCQtcA==
X-Received: by 2002:a17:902:8641:b029:e4:7e05:c916 with SMTP id y1-20020a1709028641b02900e47e05c916mr2831738plt.57.1614680456360;
        Tue, 02 Mar 2021 02:20:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2c8c:: with SMTP id s134ls8208923pfs.6.gmail; Tue, 02
 Mar 2021 02:20:55 -0800 (PST)
X-Received: by 2002:a05:6a00:1a48:b029:1ce:64d9:70e6 with SMTP id h8-20020a056a001a48b02901ce64d970e6mr2650134pfv.8.1614680455781;
        Tue, 02 Mar 2021 02:20:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614680455; cv=none;
        d=google.com; s=arc-20160816;
        b=sFcfIOccFZwPd7Y/6U+E0hJyuMzB+wpbVQ8MFsZ9KNT6QmNweEWm3f0zfe7WXpEAf7
         P8iNkmRBILIO9ucWnLMV8Sojo6eHyyUUKBF3pheBc8ehg0bpWHEekh+o9EvkrosM1kFs
         fKRCBnpBREdKmdLL9crzg1azm4UQK0IUFJkaW6XzEScWMNhWJjXXhC6HhqPrF6dsEoto
         ZG0a5tFk6Y7TNbXpmIZHwg9p5VAGf9LpIxNlIEACsiBOZ2AFQyas6vnRgYDZsvxsIdIG
         WMgIeXUBOIyEzdZ2qtZTz5L17p77Jq8N7q7DCzScJbjZE07k+4RkPpbXGvPpFu7Odg9q
         SCdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=YaiNXrx80bKMM+R5T5A23298hNocQuyP+4rgP9GSyEo=;
        b=T50XNYg1pzHUbLRQEZknVyrYaCl4VbjqmHKayqpknxn4Bz1yX6gNY/LbMz7kEpNsJS
         46pSMtESo6akDUJmFT8kGtCUT4mQaU2nZSWhqlQv90Na4fZ/2SS3plePffsrrdhKIIKN
         lcQl8icRAlM7+stTA+ykO9MMeCcno78iK6CZtm7nxNhirWhqqPWrPSbIs+VpZbnUFJkk
         e7RQ/+O4eZ8ZFJ9sgauT/uahBzaYT3/8BfRxKVYBVQjqHc6DLOG9QKwK4akNTMvdyooz
         XGdapMolY4MXAJlzjVWIbF+V79Eq6uAuUMndi3nPtJOHsNuD4zGNlRs7lgOyY513B4ef
         4lWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of anshuman.khandual@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=anshuman.khandual@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id w2si112339pjc.1.2021.03.02.02.20.55
        for <clang-built-linux@googlegroups.com>;
        Tue, 02 Mar 2021 02:20:55 -0800 (PST)
Received-SPF: pass (google.com: domain of anshuman.khandual@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D2B0EED1;
	Tue,  2 Mar 2021 02:20:54 -0800 (PST)
Received: from [10.163.67.84] (unknown [10.163.67.84])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D13CA3F70D;
	Tue,  2 Mar 2021 02:20:51 -0800 (PST)
Subject: Re: [PATCH v4 17/19] coresight: core: Add support for dedicated
 percpu sinks
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
 kernel test robot <lkp@intel.com>, linux-arm-kernel@lists.infradead.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, mathieu.poirier@linaro.org,
 mike.leach@linaro.org, leo.yan@linaro.org
References: <20210225193543.2920532-18-suzuki.poulose@arm.com>
 <202102261412.zCSQLdKB-lkp@intel.com>
 <5fad098f-8cdd-e56d-3812-d85720b1768c@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <b1dc82de-d148-8483-f9e7-c70930240dd3@arm.com>
Date: Tue, 2 Mar 2021 15:51:24 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <5fad098f-8cdd-e56d-3812-d85720b1768c@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: anshuman.khandual@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of anshuman.khandual@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=anshuman.khandual@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
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



On 3/1/21 7:24 PM, Suzuki K Poulose wrote:
> On 2/26/21 6:34 AM, kernel test robot wrote:
>> Hi Suzuki,
>>
>> Thank you for the patch! Yet something to improve:
>>
>> [auto build test ERROR on linus/master]
>> [also build test ERROR on next-20210226]
>> [cannot apply to kvmarm/next arm64/for-next/core tip/perf/core v5.11]
>> [If your patch is applied to the wrong git tree, kindly drop us a note.
>> And when submitting patch, we suggest to use '--base' as documented in
>> https://git-scm.com/docs/git-format-patch]
>>
>> url:=C2=A0=C2=A0=C2=A0 https://github.com/0day-ci/linux/commits/Suzuki-K=
-Poulose/arm64-coresight-Add-support-for-ETE-and-TRBE/20210226-035447
>> base:=C2=A0=C2=A0 https://git.kernel.org/pub/scm/linux/kernel/git/torval=
ds/linux.git 6fbd6cf85a3be127454a1ad58525a3adcf8612ab
>> config: arm-randconfig-r024-20210225 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a92=
1aaf789912d981cbb2036bdc91ad7289e1523)
>> reproduce (this is a W=3D1 build):
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget https://raw.github=
usercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/make.cro=
ss
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install arm cross com=
piling tool for clang build
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get install binut=
ils-arm-linux-gnueabi
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # https://github.com/0d=
ay-ci/linux/commit/c37564326cdf11e0839eae06c1bfead47d3e5775
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git remote add linux-re=
view https://github.com/0day-ci/linux
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git fetch --no-tags lin=
ux-review Suzuki-K-Poulose/arm64-coresight-Add-support-for-ETE-and-TRBE/202=
10226-035447
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout c37564326c=
df11e0839eae06c1bfead47d3e5775
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attached .co=
nfig to linux build tree
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_PATH=
=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=3Darm
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>=20
> Thanks for the report. The following fixup should clear this :
>=20
>=20
> ---8>---
>=20
>=20
>=20
> diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> index 8a3a3c199087..85008a65e21f 100644
> --- a/include/linux/coresight.h
> +++ b/include/linux/coresight.h
> @@ -429,6 +429,33 @@ static inline void csdev_access_write64(struct csdev=
_access *csa, u64 val, u32 o
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 csa->write(val, offset, =
false, true);
> =C2=A0}
>=20
> +#else=C2=A0=C2=A0=C2=A0 /* !CONFIG_64BIT */
> +
> +static inline u64 csdev_access_relaxed_read64(struct csdev_access *csa,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 u32 offset)
> +{
> +=C2=A0=C2=A0=C2=A0 WARN_ON(1);
> +=C2=A0=C2=A0=C2=A0 return 0;
> +}
> +
> +static inline u64 csdev_access_read64(struct csdev_access *csa, u32 offs=
et)
> +{
> +=C2=A0=C2=A0=C2=A0 WARN_ON(1);
> +=C2=A0=C2=A0=C2=A0 return 0;
> +}
> +
> +static inline void csdev_access_relaxed_write64(struct csdev_access *csa=
,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u64 val,=
 u32 offset)
> +{
> +=C2=A0=C2=A0=C2=A0 WARN_ON(1);
> +}
> +
> +static inline void csdev_access_write64(struct csdev_access *csa, u64 va=
l, u32 offset)
> +{
> +=C2=A0=C2=A0=C2=A0 WARN_ON(1);
> +}
> +#endif=C2=A0=C2=A0=C2=A0 /* CONFIG_64BIT */
> +
> =C2=A0static inline bool coresight_is_percpu_source(struct coresight_devi=
ce *csdev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0 return csdev && (csdev->type =3D=3D CORESIGHT_DE=
V_TYPE_SOURCE) &&
> @@ -440,32 +467,6 @@ static inline bool coresight_is_percpu_sink(struct c=
oresight_device *csdev)
> =C2=A0=C2=A0=C2=A0=C2=A0 return csdev && (csdev->type =3D=3D CORESIGHT_DE=
V_TYPE_SINK) &&
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (csdev=
->subtype.sink_subtype =3D=3D CORESIGHT_DEV_SUBTYPE_SINK_PERCPU_SYSMEM);
> =C2=A0}
> -#else=C2=A0=C2=A0=C2=A0 /* !CONFIG_64BIT */
> -
> -static inline u64 csdev_access_relaxed_read64(struct csdev_access *csa,
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 u32 offset)
> -{
> -=C2=A0=C2=A0=C2=A0 WARN_ON(1);
> -=C2=A0=C2=A0=C2=A0 return 0;
> -}
> -
> -static inline u64 csdev_access_read64(struct csdev_access *csa, u32 offs=
et)
> -{
> -=C2=A0=C2=A0=C2=A0 WARN_ON(1);
> -=C2=A0=C2=A0=C2=A0 return 0;
> -}
> -
> -static inline void csdev_access_relaxed_write64(struct csdev_access *csa=
,
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u64 val,=
 u32 offset)
> -{
> -=C2=A0=C2=A0=C2=A0 WARN_ON(1);
> -}
> -
> -static inline void csdev_access_write64(struct csdev_access *csa, u64 va=
l, u32 offset)
> -{
> -=C2=A0=C2=A0=C2=A0 WARN_ON(1);
> -}
> -#endif=C2=A0=C2=A0=C2=A0 /* CONFIG_64BIT */
>=20
> =C2=A0extern struct coresight_device *
> =C2=A0coresight_register(struct coresight_desc *desc);

Agreed, these new helpers should be available in general and not restricted=
 for 64BIT.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/b1dc82de-d148-8483-f9e7-c70930240dd3%40arm.com.
