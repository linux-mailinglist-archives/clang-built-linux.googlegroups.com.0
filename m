Return-Path: <clang-built-linux+bncBD26TVH6RINBBYWVTCCQMGQESHVXYRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BED38A0D0
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 11:24:51 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id x19-20020ac87a930000b02901f6125bcda0sf6314826qtr.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 02:24:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621502690; cv=pass;
        d=google.com; s=arc-20160816;
        b=hBq8pisGBNtW/rsAZ3FxhY+8eDDispds9w54dDyH6i63yYhL9J/jvWivoKYYySchJK
         BJ8WH8Ut4+8kR2KlFDx2U6x+adMEC3CQyvEZRmBNT3ZuEQk5ujJeYTqfFSDO3Lm6vmIY
         tSO6nMmOnY/uYViwW9cR0Kouqtmo5qtu7NhQt8NMNoibmIVNjeUoSO5eg+sbZYgMwVYg
         bPnxVWweI5FKpYoPw4gkMK1nbbvP7m/gIfllQID2snb/ZoY4dae0Toki4IQKboDAuW31
         5PK1R1lVF8+lTCXM4ZK9X9CHiLChJeH2pckFGFw/0eeipkU2Di3LsJwTxqtaw+C6B1em
         nRHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=G+dA7OAl/igmW/bdtP4GZTHf9n4gC7WFSFZASR7HZZc=;
        b=XEpzkL8gmxd+xssZCmUy9wpnvAj4V8r15wSTad20WB6x+o5MNHkIRPhZ9by4oY1Dku
         TK98qZIvM5twykNGWOe2CaMMA6c+cL8/u5XJYuE5UhiTz6+X4RvzMn8VSJKF0ML3c46S
         ea6T8QAJqW2rwCCh9Tzq4Zu0N6opFIrEbpX492WfcQB84rnKOLvZRfABOWSJnTaA8uhr
         aBTJnDoHLFwIoyGQxU3v2RU5xbKmlA/OPklM1iax9L0ugJ3B7c0EiKBbVnM8fD3hp4dZ
         pNkVj0Wr3X27Eia0rTw0zQN6/NbIbLgB8k760IzK9ScFU+ltR6H6VcxZs8JWAWtAx5OL
         ma6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G+dA7OAl/igmW/bdtP4GZTHf9n4gC7WFSFZASR7HZZc=;
        b=LbejlRpi/pX35H34Qf9kbMeKFSYWAqWX2yqAACq3O2JMzk076K6ngPuD5BMtpIcvmO
         3q2RdFJYGd9Zt8GnyoWhUWunz7XitsdHy05KSKG9YjMImUmd6ivDz5GMD5qdThEeVPM7
         yGV0CsDOhHxWqCfgiECiBexDIFZAsMTCEng+QWLTHQB2P1krOBxZkRR+rD6LMWqk1331
         0BAicxqor3PCGESfkYZzG2wnjScnk21LobCJgOqmMTwGuJg7M2oKp/v7Qx/wQGkN1o7L
         HD4GhLaysAeuyDERVVSn4l8K6NarxHWb2M0qwYt/sVJ2FC0c46CD53HFUtUpiFuHry2o
         SAUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G+dA7OAl/igmW/bdtP4GZTHf9n4gC7WFSFZASR7HZZc=;
        b=gLmf3K/YMbrbL8u+lhlJv5GDflef7s2AGRQVcUvfJfORhnWbA/Gg91sZ290+yWNRMy
         3DC4w5tJ0xU1UQ1U+CwfprZ6xLZ5YtU3wOflNc6aoPuWVgJFhi/cdSysBEK2pA+S5s1e
         D3gh5RtdzFJ9UOYMtPzNJ1X8e4SY1Q+9vn1+HFGG5RxNtaqYtjA5okdAX81CTCJFpjql
         FptNR30+7XsFEWzN3D4BZC1Ah26tn2QzJYrW+1TfTJwvdIS6Q9V3MwVXP4f5S/O2kQlH
         TLVkHydm+cX6JIvMjWolaitPKVGi1ON1+pfCyK533irmHZjEbM0CHSPVEu460cEg0+FT
         rwYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530WNaPRh6uY1So2LVaxf6q3jZw05ZzRxoCUVuvn/mr0yiINo51j
	f7vo5tjCFQ8vyOx/+r5oer8=
X-Google-Smtp-Source: ABdhPJxeVn0S1julFHJI+OUbsxwkTY7MU0eL7wcNiJHHz+mL8q+npNb5akP9gsiTinfpZMmR7//lag==
X-Received: by 2002:a37:6682:: with SMTP id a124mr3798938qkc.83.1621502690288;
        Thu, 20 May 2021 02:24:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4cca:: with SMTP id l10ls1140886qtv.2.gmail; Thu, 20 May
 2021 02:24:49 -0700 (PDT)
X-Received: by 2002:ac8:1093:: with SMTP id a19mr4032684qtj.365.1621502689792;
        Thu, 20 May 2021 02:24:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621502689; cv=none;
        d=google.com; s=arc-20160816;
        b=ZPLjy95QoL2G0gAT+my/wI9s4zJI1B1AsuOCzMYxXjpmVM9WYKqohwaLLAZBzUQQba
         gqcjmTlT4QYxicATP6PnV77q3iP+r9zLfb6vJzCqNNdXYOs9tV7YPQ4VG8ilrC3/81Ry
         UcoAM2qRhF6vw2UALN7/niJGUWAcRvDEa65imIXZ6YYKvf0STiMvz0YoyWyNXjgwV3XQ
         FFPy7TqGbZd7MhLWj97rPVS65d1ZI2Lh1Fe6sA3B+GDUZOqgRr1P5EH6YKsy+V7dh8EA
         CB24nADRoJFt4F2swtEBfVdot8DkzyE56cBatLjm8yT9Lxc3zg6hoW7M1FuTcurrJSYI
         z9Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=WIyFmDhjKmfuRTWT/Wf0U8XN3dEXRzTmWWsIT6gvfp0=;
        b=NJi4A8lKy+AOPP8hvgOvQMXmyezm4BHXmv7+W5OkSuaIrpsc1oMENwwyUh7vWqLBxb
         NPoUfcfnyXkUV2zjIyUof8Wf1t7Psg6jvvHrRUbq1cGWxDsZHjFZYcd+/J/47ZF9l/xF
         i1G7fwdaCRMN747lgW2LxY3Jbh6MDmxv0rM1+0xTM2CiMMBbL8++tA62cRwjqSXBiaKf
         L16LPexf9zsXWBv4UpOGFo2/ujDKv0ipRErYR/f1S/63zjNkWipvcjs5GtbRTD+JwwuJ
         Oi2evUXZBzuULJndCl7WAx1CpUQ6wdDvqFoGyLuvE2gDyc+Hv3ndsunsIZMDXun9fs+U
         xyog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id o23si143966qka.0.2021.05.20.02.24.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 May 2021 02:24:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: MV7IMlLBJn51t2HT7NLNxGOuhEG70N1w/zkc6GmdnCB0xIt0awV4OgId94a6rRFpie4JZHjf2T
 MuVBFg/4f/6w==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="201240512"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="201240512"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 02:24:47 -0700
IronPort-SDR: Etc2GQhGchnN4xp520cc+mOggfx1lrYzlgf8MeQUXDsE3UTJWlffOSk0/xhVgGmCOcy0XuK90R
 myMCRHwWbJOw==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="473923820"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 02:24:45 -0700
Subject: Re: [kbuild-all] Re: kernel/sched/fair.c:9551:12: warning: stack
 frame size of 1376 bytes in function 'load_balance'
To: Arnd Bergmann <arnd@kernel.org>,
 Vincent Guittot <vincent.guittot@linaro.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Ingo Molnar <mingo@kernel.org>,
 "Peter Zijlstra (Intel)" <peterz@infradead.org>,
 Valentin Schneider <valentin.schneider@arm.com>
References: <202105112356.JuDlybKz-lkp@intel.com>
 <CAKfTPtB9B9jv_uSk0fS7uOTtH5FCwLcAOrPjtXzRuURLUMFnoA@mail.gmail.com>
 <CAK8P3a0YVh=hoBthjH7N=mSXOi0fEdwvyuHUJ36qricqVUZ9jA@mail.gmail.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <cae151a3-7d88-a1fd-4d34-d599238f6a4e@intel.com>
Date: Thu, 20 May 2021 17:23:34 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0YVh=hoBthjH7N=mSXOi0fEdwvyuHUJ36qricqVUZ9jA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.65 as
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



On 5/19/21 8:32 PM, Arnd Bergmann wrote:
> On Mon, May 17, 2021 at 3:45 PM Vincent Guittot
> <vincent.guittot@linaro.org> wrote:
>> On Tue, 11 May 2021 at 18:01, kernel test robot <lkp@intel.com> wrote:
>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>>> head:   1140ab592e2ebf8153d2b322604031a8868ce7a5
>>> commit: 0826530de3cbdc89e60a89e86def94a5f0fc81ca sched/fair: Remove update of blocked load from newidle_balance
>>> date:   9 weeks ago
>>> config: mips-randconfig-r022-20210511 (attached as .config)
>>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a0fed635fe1701470062495a6ffee1c608f3f1bc)
>>> reproduce (this is a W=1 build):
>>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>          chmod +x ~/bin/make.cross
>>>          # install mips cross compiling tool for clang build
>>>          # apt-get install binutils-mips-linux-gnu
>>>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0826530de3cbdc89e60a89e86def94a5f0fc81ca
>>>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>>          git fetch --no-tags linus master
>>>          git checkout 0826530de3cbdc89e60a89e86def94a5f0fc81ca
>>>          # save the attached .config to linux build tree
>>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=mips
>> It was a bit difficult to find the warning among the thousand
> I opened an issue against clang about it:
>
> See https://github.com/ClangBuiltLinux/linux/issues/1379

Hi Arnd,

We have disabled CONFIG_UBSAN_ALIGNMENT for mips/clang in our kconfigs
according to the comments in the above link.

Best Regards,
Rong Chen

>
> but then found that this is already known. I think it would be best to
> make the kernel test robot
> set CONFIG_COMPILE_TEST to avoid issues like this. I have annotated a
> number of symbols
> that are known to cause unnecessary false positives in a similar way
> to get a clean build.
>
>          Arnd
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cae151a3-7d88-a1fd-4d34-d599238f6a4e%40intel.com.
