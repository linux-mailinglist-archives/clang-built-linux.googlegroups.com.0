Return-Path: <clang-built-linux+bncBD26TVH6RINBBC7P42BAMGQEGO2LEFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F4F345B13
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 10:40:28 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id h8sf1401486pgd.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 02:40:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616492427; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ox2wn/vY/8OnDrSdsXnGvnZo43+PxUMNYJ7+OomxpkgjuC00NYLISO+QYtJSCGqFKQ
         LQ6SlmTC05S4GKhKamF8vuc8jkwflJlf40MdetbjQaL4C7DuRQYfYwTueV1UGWVk6yDF
         GwE2ej6FmLckIg40kWno30kLL7lTUEzoRO1z9NYJK1qvSUUMw0WD8obDLHNIxhJlD+yd
         KDWMFk5O+x6X1HJ+7XExNh5+mvK3ifecoCVdcTqBNJmsPSse+7chHrXtZn8jdHLGbY9f
         VGSkY94V9qDa24PcjFo8vontG8QtcpIS5WI8VF0e/Ea8YdWlR1hMcWqQfPU4bN2bsz6G
         kHzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=4wr+6K9CzNO/JzYKCCOtOwRLl8yFleFUJYOfdEW97XU=;
        b=G4nnR3n9pV3+ineJS1QXQdheyHsI4mGXK//mq2fb56HD/4akdIzFV+5O55xDafIQb/
         asAyuixXDL2W0knCUSeV5psiRjMiqr0Aj2sYEZW+INFz3oWEor32OOdNgp5m2gqkFpzy
         sw+Yq5h+QFeWlfJ7BnKiOFKKHTpVJ+GIMtpvxnsGzUfCLzCWwA7HIR7YZR2DBbA/hAFn
         hIKALNbJid+glT/rnjLl+Pntybgq1oJilQh9eUGO6HCKsREpyGqcFjb3+IrGvNg1di6E
         BDaCYllg1syqleOuAa6Q4UnQa27/T/rA5zXyhLM99BK4qnWqq/jxoRZKq4FVzusPwi/R
         /4bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4wr+6K9CzNO/JzYKCCOtOwRLl8yFleFUJYOfdEW97XU=;
        b=MpkZxBS9eOB7MJGGliGHyJg9OnjtZbFA5E4VD6rXlCJJJjFl0SwT/b+4Y+C3SSt+Wy
         ILWchZLOk8kA/lq2fN+6w3bqxZ+B8smfhGhKnJpK3d8l7E316Tu2HwyrW+LElpDBmidx
         NWHuUQRcn7G0OEMQrM1jGnIm5apHZxtJ4hC4urGp5MvB/Q8bVZvNHYlhsEOjcXLyJlXb
         pxDQk7XJqQcPYptcot5E1z1eMTjSK0kULl2b9cX9EshYEjkEyhaAjAyb/s73bOnhdWhY
         R7LDyZSvt9GQeU8yMpy884yRVYVkKoMz9DAb+LSasLAX8cieObYhShZdEIK5+x9e2BrT
         isUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4wr+6K9CzNO/JzYKCCOtOwRLl8yFleFUJYOfdEW97XU=;
        b=D7bBEZrqT3UrKkqkbbIJREKbPxO5q9kJhnxORQzGtKZEbqpq7IYYI1SQ/tx+yl+Ldb
         IM8Lp+stvlJ8g1bI8mKxMn8cCqEwE0eyHatIkyYGQScyIuxMzpq7jQ1nfIxiJVQXFp6H
         DEmA7YQkREjbyn3r3Q8AD+wU+1BJnOPVutPucAEZSmoyBBapxnkfvl89Mu1MnRtA99e5
         UnEbZbYY/nRfn9lPiX9W2F2Ka7BYr9NpoSeijZrx51b6wRZVoPEZvhIy3Rlu7waQb/iz
         gHQD9GG03yWM7cHHciNWRb9fAWDXPaeWWwkQr5t09fc8oF3kSgXm/rxGkNlUhgVpbhQn
         XgEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DwyLA1I2qHb+jqcX+AI4x+sEh7loJgF/+/sRwE4T1L3s6X1sH
	IRqWvLYfgPHZxqvLveYlrRY=
X-Google-Smtp-Source: ABdhPJx+JPyrYCElTq9rrrExEQTkrHK8oCC/VuhV/kymRcM7uiWnvzTMNf8gyFLVRgqMccc2oMi1dg==
X-Received: by 2002:aa7:8488:0:b029:1fc:f312:b24e with SMTP id u8-20020aa784880000b02901fcf312b24emr4044989pfn.55.1616492427438;
        Tue, 23 Mar 2021 02:40:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7951:: with SMTP id u78ls3780994pfc.8.gmail; Tue, 23 Mar
 2021 02:40:26 -0700 (PDT)
X-Received: by 2002:aa7:960c:0:b029:1fa:8cbb:4df4 with SMTP id q12-20020aa7960c0000b02901fa8cbb4df4mr4206880pfg.12.1616492426855;
        Tue, 23 Mar 2021 02:40:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616492426; cv=none;
        d=google.com; s=arc-20160816;
        b=briBiN1gJxp0bqI/q+n3bfR0p9jEGVEcYPg+oOcptqQioiZPdBlQ/fzCt+kYFBTmAi
         LgCzegmosgcAMbGOQ818Crqh0GoywzSy5uHoeGEUZcWF+7L+Tz1mbjDsarp8EuQgnYZu
         cPt9LdOLR5ZSPKfOU4N/9IgQdY5w0EU+otHbTejbTUNtJDkI1voIFMaJbclt/QlWZVDA
         2/BIjYcS6/Yeqb1NU4zXSWS6adEUQWyB9SE3jNzwF6QO54asEgJgfBVYL4PGHtrHNH+w
         UzIMFdHMRGu1/OnMlUCKcVYi2AR6/HXbw98hN7jveBdCqhFf6XkFaiLako5tb4eZKnu/
         lQAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=yq7HpI1lpSO47+6iNp/yVWVPD2focvkWOF5IGmCW7Ao=;
        b=D6ZK1Ghf/a9cSZGI8MZAHNeMcDwL1x1s+nvZOge8E0Q4txe6mNjqmFJgcdYENtXw6B
         XTuaXcD5qfzPkti5wT49AhyDxU4oAWQecO+ALJkB+56O+QQrGeAozQsze4GSKn9yzx8W
         WeLrHzbtLa+AYHJl9UFf0o+2awwF+YvbS3KOsVs6DlbPE/S8XvO7L5398g6wAOQaBGiu
         bl4p6vHQYgIX7EeL3sTqLCl+zdtNkyT+BIcW+xbX9Z3Q4r8hx/4L8eoGi7KoIQmXYwU4
         bRdM0bjjjnEtbQu9CPtLkUHdxluT3SEthS5SG+XYz8GjMMJKDVio8qkNaDjVYvI/89RQ
         vcjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id t5si989913pgv.4.2021.03.23.02.40.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 02:40:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: 5FUMA69TE7HKTnuX2f3kois36P4nhCp6tRTaaBSqGO6/uv3auvQ7+LSJ4zoounm6kxPEnnIaUz
 SbKk6gSLnLKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="187126081"
X-IronPort-AV: E=Sophos;i="5.81,271,1610438400"; 
   d="scan'208";a="187126081"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2021 02:40:23 -0700
IronPort-SDR: 7IYSh1KkvPQ38lizWBCrcSuM9u9zT+QMo90n/tY864He9kzN3KI1W4/HyTy7CvKw9Ny0wlGHOi
 NiA69FzBbE3g==
X-IronPort-AV: E=Sophos;i="5.81,271,1610438400"; 
   d="scan'208";a="414905499"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2021 02:40:22 -0700
Subject: Re: drivers/opp/of.c:959:12: warning: stack frame size of 1056 bytes
 in function '_of_add_table_indexed'
To: Viresh Kumar <viresh.kumar@linaro.org>, kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org
References: <202103231522.N0bCxZ97-lkp@intel.com>
 <20210323072534.sif6hfei4zx5tzn3@vireshk-i7>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <38b9dd6b-c118-a46c-e5c2-ae2a5f871f57@intel.com>
Date: Tue, 23 Mar 2021 17:39:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20210323072534.sif6hfei4zx5tzn3@vireshk-i7>
Content-Type: text/plain; charset="UTF-8"; format=flowed
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



On 3/23/21 3:25 PM, Viresh Kumar wrote:
> On 23-03-21, 15:23, kernel test robot wrote:
>> Hi Viresh,
>>
>> FYI, the error/warning still remains.
>>
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>> head:   84196390620ac0e5070ae36af84c137c6216a7dc
>> commit: 406e47652161d4f0d9bc4cd6237b36c51497ec75 opp: Create _of_add_table_indexed() to reduce code duplication
>> date:   7 weeks ago
>> config: powerpc64-randconfig-r023-20210323 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 14696baaf4c43fe53f738bc292bbe169eed93d5d)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install powerpc64 cross compiling tool for clang build
>>          # apt-get install binutils-powerpc64-linux-gnu
>>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=406e47652161d4f0d9bc4cd6237b36c51497ec75
>>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>          git fetch --no-tags linus master
>>          git checkout 406e47652161d4f0d9bc4cd6237b36c51497ec75
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>>> drivers/opp/of.c:959:12: warning: stack frame size of 1056 bytes in function '_of_add_table_indexed' [-Wframe-larger-than=]
>>     static int _of_add_table_indexed(struct device *dev, int index)
>>                ^
>>     1 warning generated.
> I have reported this on 1st march as well. Looks to be false positive.
>

Hi Viresh,

Thanks for the feedback, we'll stop the bot sending such report again.

Best Regards,
Rong Chen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/38b9dd6b-c118-a46c-e5c2-ae2a5f871f57%40intel.com.
