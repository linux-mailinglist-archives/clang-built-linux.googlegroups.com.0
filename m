Return-Path: <clang-built-linux+bncBD26TVH6RINBBYUCWOCQMGQEJ634DUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id AD24A38FD9F
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 11:20:35 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id w5-20020a6bf0050000b029043afd24a1b2sf28250013ioc.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 02:20:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621934434; cv=pass;
        d=google.com; s=arc-20160816;
        b=kRcHffflz/i4Qo45B3PYtie9i1KZTBipVE7MU4SeGTQE6sibFDz4OHf7yEa8txfsFY
         ktL3D/XhHo5biJdxOMqhkd+NhD03HDDAnLm4c09CoC75QOpCKVX2UAg0mvckeXUhEZg/
         ZBF3TpMZRarkQbU26CLVbKZmj7lk+XnTd0ehhw0/kIoiO54FS9vFtnOQoersLfqsc1cv
         FaqRlDpMEK3gAc/wy5GBx+KP24yq+ZtLQrDh67rkNZYNeqSSQ1h4mzmPN2KgeQwSzfZQ
         ySjaNq2W/05Z14BtCX12hMJGspJa40kO5dKjK+XnYZ7MsfvcJ0NHngQumIoa9bsACN9+
         ZdnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:ironport-sdr:ironport-sdr
         :sender:dkim-signature;
        bh=3snYlLnjWsw0de0pfuhw/5X/J7NF/e7uGJvqE96I4HM=;
        b=T08LmdEsUjitHOqXLy1MhMtK2P9VCS2CN1awzsV5eLL59PaFgtT5WJpGjVxVjy5UFD
         SMlSYVHb+YggSY57sqW0Pt5cBwLlrBQ71fbWEVTR1H1El+fQBW9m4vXVat9Os+vIB54u
         6WwZxy/k640sXE5Vr2RpmZJcwGFx9znbFwHFHrpXSTcIOIAImxGRoNmg1RVOkzJe7/q9
         sH3v4jFDMi+tTuGZL+nDX/HWTMpasDixdZ4fq4gw4gpVEYWw3nD8TClH+Wt3jIdFFVlb
         0z2qQowob5rzed3D9y6jk/80DTKRrje+Q82bJejULC2lN/b36bxdQiFvyM+PfQVmjCOR
         iGOA==
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
        bh=3snYlLnjWsw0de0pfuhw/5X/J7NF/e7uGJvqE96I4HM=;
        b=SBTkH+WP1J5iPLmes/KzLzZ6s+pMYPCBo08cD2zatRRjnnUVAdlkp4sDmqkOsWy6T+
         3nwLYb4bi3RLHG27ZPSW4DsM2x0v62xxRtng+gigM2cMMZQdCY+TMT38GTxMWBle4iBc
         kUgHJQENM9sN7jT5jkfv+rOAWP9zfGXq0k2zpdo4IQRr+GO1BPU6hH1DJ0O2g/fiZ0rW
         GwcTuab9pbrzkBGe06EHY71Kl2t5vEZBGUEbmhBNrGU9tRirpW/vrdpMlYn8d7KZ5XaL
         kwWJm7fUCxgy7xZcxvb/A+2F65ONRjj5pVm7CVWpfizXusR9B78wAzg+YytotfX9ImU0
         B7yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3snYlLnjWsw0de0pfuhw/5X/J7NF/e7uGJvqE96I4HM=;
        b=KopfNUnaIu/6+9WLnVyJ4DhoFQTi47dVQMSkUVIBbJssx5mp6fPd11LBRoDk2LEM4U
         jnEjKsW24a6A0NAnRVzV/FVyxbzSa+5IOcyAY0Ezi+nz+4lcwUKWOgeauvKw+HjT0zcR
         sUQ55dTo/KGBr+R2P/Qs+k6IjOy0E/kGkhuNtUHEWZYUBjaYnAczsJeSFQvbthq9TcyK
         9YN1ErSMrYNBj+9GeSWlSx8b00EnWLJInMq4e2BM6DR0ShfnFF11DQhrBTbDxqYDRr0N
         u/2gNU+3NnX55IC5MgC02nXGeTQveSDRgVCSV4bLqHnBf3QAfyUR+xGtf23GDW92Qp2N
         FzNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532SVs8vTVJAbxkrR/15p5EoYr8I3tXBEw3xOx2IHvXO8csOSxaE
	V1x7DxOyN3vAe1/4EHJYSdM=
X-Google-Smtp-Source: ABdhPJxt8b73SlDxOsi0LnKr/aDUWQRLv6opgyhacOXLYalTI0NojZNTsmTTY2ZbLlFL3hgaVuqpiw==
X-Received: by 2002:a5e:a902:: with SMTP id c2mr19668391iod.80.1621934434633;
        Tue, 25 May 2021 02:20:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:3895:: with SMTP id b21ls2239180jav.8.gmail; Tue,
 25 May 2021 02:20:34 -0700 (PDT)
X-Received: by 2002:a02:688:: with SMTP id 130mr29844129jav.48.1621934434275;
        Tue, 25 May 2021 02:20:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621934434; cv=none;
        d=google.com; s=arc-20160816;
        b=DIou0BG4UrCbw8/jLRFrJwMYCGHs1HWUuqqfyoCBaipVnf5cLWuMWI1Ju/RNarbiSj
         yLl/I+qOaJeZ3th8x5ECXZHuF9KgqGHKgx8TZp7DL/RTY1Ji3i24OGaA0GWl4XB788i3
         waF5NXGqP9XHXqfBeIZ76QKrzkaj2xw5FF6fLNT7IYkNkFcRbTFxGrXPIS+acGBZkNqm
         zZjnxVSjW1cKQNu7jA+cUWHoOW+N45lSzAuf1VStjtWnPuGREZnZjvpLTUvtI1W+kBEl
         8G+3ruVNMtJz8pMmuB/ftX7vaVFCCoL1YiMAl/DKw1L+UbkbwpZQiSdqGe8Dtnf4geor
         v5QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=9Hy+rzc0TdMQqB7Toilaj7aHpln4jUwpT0mn4y9dnq4=;
        b=IOzepAxcQt5tpxEctMus+7/ctOYopOUn28emugyRiLtJVXkJax+TS2EacUIPgx5txy
         eEXzuDNRWMiXD909X7UUQhANdn+gGImO/nQA2gc/rFfSQd8g/zhsl7QPH4xEpIqZCALd
         b8ZmizMY2JMfNpFBsuS1zEy8sMs475RrIDoDL2AAggqYjr+GRXIbvwu459G67h2HHOkp
         BF4qWUdGCvas+236cELs5CyMWy5KudI/tqBr2scKqmyDLgv/P+CwljXj83HNMSLV/6B4
         BHo32I3xf6HTENBU7RVvYiDGYliAwA7vluOji/AD8aqCrBTBjRHeSfjQVb0FP96zwmfn
         85yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id h15si2434051ili.5.2021.05.25.02.20.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 May 2021 02:20:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: YH0HmrYpiKljsnxn07bAzSqRRTwEhXsZ46AfY9EHbJ1bWqBMprT5Puuq99y99T67f6IjFJw7Kv
 O2iZBNXF1cIg==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="199094308"
X-IronPort-AV: E=Sophos;i="5.82,328,1613462400"; 
   d="scan'208";a="199094308"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 May 2021 02:20:33 -0700
IronPort-SDR: OrD3r1B531jdCPZliHRgzxPYZP+m/ydrMHpCTNghEo9LHv25v5FXhv+aZlCgp6qQMQ27tw8pKQ
 ixxjIbewQRNQ==
X-IronPort-AV: E=Sophos;i="5.82,328,1613462400"; 
   d="scan'208";a="476329263"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 May 2021 02:20:28 -0700
Subject: Re: [kbuild-all] Re: [PATCH V2] arm64: dts: sc7280: Add qspi, qupv3_0
 and qupv3_1 nodes
To: rojay@codeaurora.org, kernel test robot <lkp@intel.com>
Cc: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rajendra Nayak <rnayak@codeaurora.org>,
 saiprakash.ranjan@codeaurora.org, msavaliy@qti.qualcomm.com
References: <20210422150556.450-1-rojay@codeaurora.org>
 <202104230503.T7HqjQbJ-lkp@intel.com>
 <6950c9c7b54892b2a8e81915743431ea@codeaurora.org>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <de30ea1c-5572-ca4e-e473-7b77724a90d8@intel.com>
Date: Tue, 25 May 2021 17:19:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <6950c9c7b54892b2a8e81915743431ea@codeaurora.org>
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



On 4/23/21 5:46 PM, rojay@codeaurora.org wrote:
> On 2021-04-23 02:52, kernel test robot wrote:
>> Hi Roja,
>>
>> Thank you for the patch! Yet something to improve:
>>
>> [auto build test ERROR on next-20210422]
>> [cannot apply to robh/for-next v5.12-rc8 v5.12-rc7 v5.12-rc6 v5.12-rc8]
>> [If your patch is applied to the wrong git tree, kindly drop us a note.
>> And when submitting patch, we suggest to use '--base' as documented in
>> https://git-scm.com/docs/git-format-patch]
>>
>> url:
>> https://github.com/0day-ci/linux/commits/Roja-Rani-Yarubandi/arm64-dts-s=
c7280-Add-qspi-qupv3_0-and-qupv3_1-nodes/20210422-230756=20
>>
>> base:=C2=A0=C2=A0=C2=A0 c457d9676496f5a895509f9c510278beaaffc829
>> config: arm64-randconfig-r012-20210421 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project
>> f5446b769a7929806f72256fccd4826d66502e59)
>> reproduce (this is a W=3D1 build):
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget
>> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
>> -O ~/bin/make.cross
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/make.cross
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install arm64 cross compili=
ng tool for clang build
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get install binutils-aa=
rch64-linux-gnu
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #
>> https://github.com/0day-ci/linux/commit/78ed1b1d4c9f34dd06ae4494b78d7033=
4fa8d7c1=20
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git remote add linux-review h=
ttps://github.com/0day-ci/linux
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git fetch --no-tags linux-rev=
iew
>> Roja-Rani-Yarubandi/arm64-dts-sc7280-Add-qspi-qupv3_0-and-qupv3_1-nodes/=
20210422-230756=20
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout 78ed1b1d4c9f34dd=
06ae4494b78d70334fa8d7c1
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attached .config t=
o linux build tree
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_PATH=3D$HOME=
/0day COMPILER=3Dclang make.cross W=3D1
>> ARCH=3Darm64
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>>> Error: arch/arm64/boot/dts/qcom/sc7280.dtsi:325.31-32 syntax error
>> =C2=A0=C2=A0 FATAL ERROR: Unable to parse input tree
>>
>
> This error is due to "clk_virt" node parse issue which will be defined=20
> in ICC patches
> https://lore.kernel.org/patchwork/project/lkml/list/?series=3D488429
> I also mentioned the dependency in the patch.

Hi Roja,

Thanks for the clarification, we can parse the base commit from patch to=20
avoid false positive:

 =C2=A0=C2=A0=C2=A0 $ man git format-patch

 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 With git format-patch --base=
=3DP -3 C (or variants thereof, e.g.=20
with --cover-letter or using Z..C instead of -3 C to specify the range),=20
the base tree information block is shown at the end of the first message=20
the command outputs (either the first patch, or the cover
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 letter), like this:

 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 base-commit: =
P
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 prerequisite-=
patch-id: X
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 prerequisite-=
patch-id: Y
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 prerequisite-=
patch-id: Z

Best Regards,
Rong Chen

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/de30ea1c-5572-ca4e-e473-7b77724a90d8%40intel.com.
