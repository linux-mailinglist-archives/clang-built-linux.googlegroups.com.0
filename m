Return-Path: <clang-built-linux+bncBD26TVH6RINBB65NXWCQMGQEJA4TKLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E2C392979
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 10:23:24 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id d201-20020ae9efd20000b02902e9e9d8d9dcsf2869874qkg.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 01:23:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622103803; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nnfl/RjwInxegQDF10cEelnd++GCv0B2A+4dnzdEkEUzIv0V/TsuMTiUdKycCd8/QV
         kRCifA8jFPxQywtYDBgatjknnIM3ekpFbXXz9A5S4E8wDcZRXjFxSlOiW84lhSJ/DQzA
         yfJ/gu5tz1RxOGYO4wHLqAvfr+eYw1XOR/MqMXbMyn1R12pKe0Jnc9/pnn/9tXojwmiS
         OWjyff66EODbHGkoT2DlNoi0mNdMqD5jIztWafz05lCa71T8a/Q/6JbJ4cA+Kga2UiVi
         Tk6Hnlwx7wBH7XVoWQ7bbTRkf6mYG9N7bd0MKXIE07D2CjGFxpuAVUFn0YBmbsaik5Iq
         PrPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=lrM0wligVPubJ5qhwnP5C3AZYuWlpvzHCBMWdDqRqhQ=;
        b=Mhhh/NKwHrSOPhyHuYat9e/kHv1v+12aZtmjMxVsJtWo4hGCJ2fKzPevbKKKsDQvhM
         EG81x2+1harTn1v1O8Tz5yP8yqBGH9F59gLNeTc7fLZA9eh5kY9ydBiU5iuo3f1HBXJA
         nIzlV1h15MrVxsU0HSN2IsaK8ismtDCSgCf+l0/yg+zUw4680x5torsj/fVMr8E+o+Nr
         AxQkiE8onkHvxBmhOdbIyOR2GLGmdoxM/l80s22lQrZiop1DTHpjqeS2P6ZlvzEx1F1k
         8OHQUy9/VBMVldJ7AADdA1chK6KZXo2l/aKAY5kBRv227Hl3wj83ZAEvV9GO4yuoY+yh
         KxvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lrM0wligVPubJ5qhwnP5C3AZYuWlpvzHCBMWdDqRqhQ=;
        b=Q/gJ8GSk2wJgsPV4GDW8fG24DW19sxm1IMwnB5I09i+puVuxyi5AJW378h16LB03mE
         mPiTZ56AE+CXI41TqyGwaq6T+w8k49xhzdyPbqc5zPI8zFx5JpVYYaRMVh7QkGq/jafq
         dX5MkNbLvVPjJVkednEl+yJ+KNSO5ev92M596btgFDR5TeYR6fR7HuwnF4SH4caWuKaV
         vaQQcWExT036XroYSFTZH+DUP9FeeiTdw2D/jYkfQpgIGe69GlnynUXFqh+sMD4g2FxJ
         tF6l8gLn2SdV0KbhgewhYAkwfQxlAI4p2I/GqX298FY/MU5G5RDNvOubBtcg8mCvPdB5
         g0eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lrM0wligVPubJ5qhwnP5C3AZYuWlpvzHCBMWdDqRqhQ=;
        b=jbuFvu65XaWKq0nuNz5qiZUJDNgJO48DKLgkINiPf6BNxwlfqckOfmoWj5qgPpGsaX
         bKyeRsNcz11EksXenJfCcJgoun9EUiG3uOPe/B4ATvlOiFxnCxMxjf3MCYmRwTPeJMAf
         5CEdUY1EpnMb9GiYX81SHmwjpJ9Wm+kHBWd01JqwAujKSkAuQgGOXkYJ1uR8lFLY9V5a
         J+UGQhcqgP2n1sytzhi10GJVoFIrXsphwDd6khf+O2OWXfSwXK0ENTNebAMj8K9pwL+S
         nzeeHkB/AnpyGxROE4r2SJWKY1u+X0gAmV1xzHu7gSaWu+p/J6oWiPwrYwFO8/1NVxCk
         Np6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XWP9IAQ+BNEITJ7kw32/LrDeZX6Wi2116Trvsrc47V3VdXxkr
	mxirEO17Pa7ThWW2v208s3s=
X-Google-Smtp-Source: ABdhPJxseeurdKbLqeDtgdzPvjp3Lafgg84oqLhVhWfrRdsU+5c12gfQ+H695BW4keqS333xUk64cQ==
X-Received: by 2002:ac8:7ef9:: with SMTP id r25mr2101996qtc.377.1622103803736;
        Thu, 27 May 2021 01:23:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7b87:: with SMTP id p7ls1192251qtu.4.gmail; Thu, 27 May
 2021 01:23:23 -0700 (PDT)
X-Received: by 2002:ac8:6b1a:: with SMTP id w26mr2140603qts.8.1622103803254;
        Thu, 27 May 2021 01:23:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622103803; cv=none;
        d=google.com; s=arc-20160816;
        b=C8ZdtvW4CV3wRzLCiVRSx8UiWbtdKFSMuYVUC4r1Iubn93qep4QhomuEFI7/W+SurU
         59ojEih8VeSr1vjOU5Yid7jnCT2c5RDUuWOrRg8UCX78ahVTDaJUDDopKcIb1up1Qk/z
         IzssIHiqqqZz3vJB0SUXDvudd5EQB74Ad5sIppm6EebvNH74BGYYedh0m5xBpdBTECOa
         baQ1AQnJ7laEKK032YVgPCX6DAs+opzsZ7p09bteM8FbBhMl3BNwdrwe6+3LVXZspvsz
         CIq0NpalE02PnJhAyNLIvN02c1AjIWZMKexa4ePp0oThqT5jOm1unKIzbo9DfiRNdWlq
         RVaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=NDJH4eJyG04RalFrN2g1dTWaoAB8DbEDuHRdpEOAmy8=;
        b=JxVL/TvXBS72iS7AyRJQACNekOM5gmCq3UQCCjiKdmSQJplCB3mUwwoGnEQyrbq5az
         TU3xnwTvoRF3H5quN08Q6DbWJtyLxuOsprAHriLlV+omRrdcWMlGShPW1etAMidrobGM
         n2aUsgAQ2/+r7A7Rei3otyjKxi48jUzypNHpVyS7PPV9z/qmuTNDT51rm9ARuojWhI6z
         m8sBJZOb51ePRoChFU+q8zdUuErvPeuSHYuhuIgStSSzZgfj09ybteizADUiv6GFoKf8
         f1fBgVDVKFeJNaNiOr3lpuw8NkYpVoqE2HzZqV9xyIHQkM2V292mS2xjuIYO+XLYlHhM
         ePZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id a205si118769qkg.6.2021.05.27.01.23.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 May 2021 01:23:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: v241Y9cSDa3KKjGNeHHGS8cbHigz+1K7UqLuc+xiISL3ptr4eo8ZTx9VJMMQ5weeab2e0AqJtt
 II/H5mkczbGw==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="266569857"
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; 
   d="scan'208";a="266569857"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2021 01:23:19 -0700
IronPort-SDR: 6Dbe1S41vi/PfqU5I9/mmPBexyuLn5xnamuBsUggtOZavmdxnAcz9zbcSQ8VReaaTGOg41WoPD
 zrfDMfkirZjg==
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; 
   d="scan'208";a="477387908"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2021 01:23:17 -0700
Subject: Re: [kbuild-all] Re: [PATCH v8 4/4] arm64: dts: mt8192: add spmi node
To: Hsin-hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 kernel test robot <lkp@intel.com>
Cc: Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, srv_heupstream@mediatek.com,
 Project_Global_Chrome_Upstream_Group@mediatek.com
References: <1622025344-31888-5-git-send-email-hsin-hsiung.wang@mediatek.com>
 <202105270021.c336cIqx-lkp@intel.com> <1622081330.22138.0.camel@mtksdaap41>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <d9a87eca-ae28-8da4-d78e-ae2602201648@intel.com>
Date: Thu, 27 May 2021 16:22:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1622081330.22138.0.camel@mtksdaap41>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.100 as
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

Hi Hsin-Hsiung,

Thanks for the clarification, the bot can't parse the previous patchset 
from a link,
but can get the base from '--base' option in 
https://git-scm.com/docs/git-format-patch.

Best Regards,
Rong Chen

On 5/27/21 10:08 AM, Hsin-hsiung Wang wrote:
> Hi, Sirs
> Thanks for the review.
> This series is based on Chun-Jie's patches[1].
>
> [1]
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=488239
>
> On Thu, 2021-05-27 at 00:46 +0800, kernel test robot wrote:
>> Hi Hsin-Hsiung,
>>
>> Thank you for the patch! Yet something to improve:
>>
>> [auto build test ERROR on robh/for-next]
>> [also build test ERROR on mediatek/for-next linus/master v5.13-rc3 next-20210526]
>> [If your patch is applied to the wrong git tree, kindly drop us a note.
>> And when submitting patch, we suggest to use '--base' as documented in
>> https://git-scm.com/docs/git-format-patch]
>>
>> url:    https://github.com/0day-ci/linux/commits/Hsin-Hsiung-Wang/Add-SPMI-support-for-Mediatek-MT6873-8192-SoC-IC/20210526-183803
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
>> config: arm64-randconfig-r016-20210526 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 99155e913e9bad5f7f8a247f8bb3a3ff3da74af1)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install arm64 cross compiling tool for clang build
>>          # apt-get install binutils-aarch64-linux-gnu
>>          # https://github.com/0day-ci/linux/commit/423b4a1660f5157dbac566f9c498c61927f09022
>>          git remote add linux-review https://github.com/0day-ci/linux
>>          git fetch --no-tags linux-review Hsin-Hsiung-Wang/Add-SPMI-support-for-Mediatek-MT6873-8192-SoC-IC/20210526-183803
>>          git checkout 423b4a1660f5157dbac566f9c498c61927f09022
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>>> Error: arch/arm64/boot/dts/mediatek/mt8192.dtsi:299.24-25 syntax error
>>     FATAL ERROR: Unable to parse input tree
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d9a87eca-ae28-8da4-d78e-ae2602201648%40intel.com.
