Return-Path: <clang-built-linux+bncBD26TVH6RINBBA425T6QKGQELPLHHMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id CE56F2BFDFF
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 02:14:44 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id j129sf7720226vkb.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 17:14:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606094083; cv=pass;
        d=google.com; s=arc-20160816;
        b=BJX7wFu1YeY3ftYe//OFz5Mgh4Bm/FOVIaUJaIi0CzZDtXkk9XTw8V8sD+D1r9gZ7R
         4IlvfRPW/om/UQE84IOeTGQwmdVE9jYRXl54zgrKBADDqdW56RdY+ugdMRST4044LbNl
         up8OPnXqSR3g4PqtgyhLxi7LV0sggU+xungYQfSdwHUPcvDPlbG2MLHvsAbJSEALv2oS
         S8pTyZ4lOk3CLHDcFsfqkYQ6Y3ZkDm9lKoy6C2KX39rvcOBgOQx9vkfwT/Joml9TbIVG
         J6n3CH4s8ds82Ey0v0ZnKr1yt1wMhPzQfqOCaMCdikuFd/CTj/qBDAcDHUMrU3+AVEW/
         HTTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=lkoU9ckqqNo6j7L+ovsJvPn548EYR8eIJUcikT81afE=;
        b=jcnJnrlqm+QKdAviknV6r7TbWnEA7x9tLBUY+dClzLpEpFR8J6JQF69SRaPBbGPPtr
         NECt8XySbveWuvMkWVJzg6sZif2PPBKbpqVjY7xPzfy7AadXmVmSxMm+c1it7eYYLYT6
         zTXg79+VKA6rpCv+TIvO00NMQhifRm/xcyjc5oE0SupJshDc2zzrllqGUo4Kith7fKoY
         nQ4wJPziJzpg0VMwHHpYcOAknEoPtg6Qs0UrOSiCjZ6wlzyvuEX97gPnxRL2Zoog4e5I
         mVrjJyEbvSXJurHUBLswNDLl+c26wAOiqYfaBgpDCo9mGWqI2xXhlA6R7TwKH9DuKN5/
         vRag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lkoU9ckqqNo6j7L+ovsJvPn548EYR8eIJUcikT81afE=;
        b=CQ0cV1xWiTpnqLC1WFsVzvtN4xQgsYAiIdt5mMGKPfmC+NQVK53VNBzGXmkX5gMQg1
         X5o5Mcz/oF+GDsfEv5jMCgXb7TeSVM7QDG6Sg8jiLQx3kDAcXVsADs03bS8hJ6BQ7Y9f
         YIrLRHw0+svweaXJLQStBVOd5TZmu597c7IaYYNmPuWgYPhdETpnVSdVXwI7f2duRs9a
         les26aqiV/oXZ8rawIumvDLubZZzIDNxWqs+24zlVlgK3T1GV4dzuWS7JB6Pqi4zVstf
         0ZGDUUot+F4zSPckTvw+avj4RuFs4OmfEgd5SEgYlsMVXHs3GNPQ1zvQwHPEQcn2LvgY
         wvIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lkoU9ckqqNo6j7L+ovsJvPn548EYR8eIJUcikT81afE=;
        b=IVfJbHAKn02OLf7VTO3LLaVGdb8tnRmi6RnYmxlX1KhtFlUVmAe0uoe5A8YkaK0RNI
         j80S+usqFT2p2yM2QduNrqcnnfT8PT/mM7/VkTWVTVjFq3wTYAVIpj2JpK1fy0xPXFd3
         f4JVphnsT44h2PTpljPjufKU9Lh4ABMchCmD2Yx35d+8bFgOHRB9q4Y7FZtbVXllOOoE
         XdMedCF6b0t6AOo5AvuoONTZN542KatoG51X30o6Ffi8Ogv3eBMYhmTF/cQkNmdVJX3B
         QLw1Q+Ra9efUciMwoCiu9awsLNpxxPnNksZmH4J5NthBg4DAGJoYJDd4WotIN3PQrqQz
         nWZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cYkX9GgR4Ee5wQD1t1LreS5NUmLoMzGxAOJw6omyFSWevfVMC
	+dehRV7ZG0UnOQtAiCDriSo=
X-Google-Smtp-Source: ABdhPJyU/t0NxJ317Grp7F3fX9M5HBKX+vfMHopGCOQdKm421gGv7N76jdmnN8j/7XLEhCl0vVWubw==
X-Received: by 2002:a05:6102:4b6:: with SMTP id r22mr18207936vsa.10.1606094083590;
        Sun, 22 Nov 2020 17:14:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ef8c:: with SMTP id r12ls1643927vsp.7.gmail; Sun, 22 Nov
 2020 17:14:43 -0800 (PST)
X-Received: by 2002:a05:6102:2362:: with SMTP id o2mr18967450vsa.5.1606094083125;
        Sun, 22 Nov 2020 17:14:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606094083; cv=none;
        d=google.com; s=arc-20160816;
        b=Zc22j+jgvQDxJtlkdJ5HENODr1/kgtEhiWfk9kKQKIB1BX66OHzju1P2T6agffOZKy
         FNYwvJpgvSMVwlHiJg+yborX69X5FIQrFzCESZ3nGtkyzQmcu1hggM2lzAK4ItUCfQSD
         LTYcgEoRT/iFNTXdOvKgAJfpoYt9rc2sMp72Jo6YUJiLx2qKNCXjU4ZwXV6R6M92pmbQ
         k4MstvLy7AJK3qjOzZeL887+X5wKC1MqjbfoUckYe884Cs9LDoQl5diAG1wYdrVZ14q6
         HJlDWYSh3DuLd9AeABGVBg08vMCFlPneyAYTD7Lpkn33Lw9Utq59EqWtxO25aqhPJZJv
         fpqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=kMU4tTguwP6OD+WrX4FmwiddfVxqIABBa2YDIBiOBWU=;
        b=hZssdciCP0WgZv/HQTm4RR3y2E9qClxDaBuPqzzsYRu56Fu7fzLIv+wz450TM/Dm80
         QCCn/celjgjEZa9CWRu3lM1vSN9Fs2zKMP0tu9F5fdqQM78wgpFrfwjLKoTML7YmXjcX
         Zc1wzKlHXn3aguNAsJQVzm+jFPxP8Taa/r/zyk2znFyeYWKV7t6wWCTYGHvZhIVLvO1Q
         NbvUchRrfEajp2q6o398qEa2mwVn74HV+7slsnjHB2YFHmUNncPEBBKkwZycjErQX/E3
         V6/A28yaMOStTEUNEPTzZcRzwHrilu+snvtOJONYJJBRLIJFVY8wK6pRoyUx6Sr5cOs1
         BW+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id y17si726765vko.2.2020.11.22.17.14.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Nov 2020 17:14:43 -0800 (PST)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: e1PJhZet9nDFBJueJMbVoRoAkyOHeEOkcju/D3mGr1Qk0CnX/QH1K5vSHOQsxrTvBOk9nBugU2
 gToobi1cxE4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9813"; a="159452430"
X-IronPort-AV: E=Sophos;i="5.78,361,1599548400"; 
   d="scan'208";a="159452430"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Nov 2020 17:14:41 -0800
IronPort-SDR: 15ei7+3ogmIiP6fmJHzpkckgHgLx9iiXUJcKHHu8mxLciVx18EndMcnNgCPJRqCsKdADhv/nOW
 a6D/MLszqP3A==
X-IronPort-AV: E=Sophos;i="5.78,361,1599548400"; 
   d="scan'208";a="546224887"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.117]) ([10.239.13.117])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Nov 2020 17:14:38 -0800
Subject: Re: [kbuild-all] Re: [net-next,v2,4/5] seg6: add support for the SRv6
 End.DT4 behavior
To: Jakub Kicinski <kuba@kernel.org>, kernel test robot <lkp@intel.com>
Cc: Andrea Mayer <andrea.mayer@uniroma2.it>,
 "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Shuah Khan <skhan@linuxfoundation.org>,
 Shrijeet Mukherjee <shrijeet@gmail.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 netdev@vger.kernel.org
References: <20201107153139.3552-5-andrea.mayer@uniroma2.it>
 <202011131747.puABQV5A-lkp@intel.com>
 <20201113085730.5f3c850a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <9242894f-b831-067a-48d8-2f235963dedb@intel.com>
Date: Mon, 23 Nov 2020 09:13:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20201113085730.5f3c850a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as
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

Hi Jakub,

Sorry for the inconvenience, we have optimized the build bot to avoid 
this situation.

Best Regards,
Rong Chen

On 11/14/20 12:57 AM, Jakub Kicinski wrote:
> Good people of build bot,
>
> would you mind shedding some light on this one? It was also reported on
> v1, and Andrea said it's impossible to repro. Strange that build bot
> would make the same mistake twice, tho.
>
> Thanks!
>
> On Fri, 13 Nov 2020 17:23:09 +0800 kernel test robot wrote:
>> Hi Andrea,
>>
>> Thank you for the patch! Yet something to improve:
>>
>> [auto build test ERROR on ipvs/master]
>> [also build test ERROR on linus/master sparc-next/master v5.10-rc3 next-20201112]
>> [If your patch is applied to the wrong git tree, kindly drop us a note.
>> And when submitting patch, we suggest to use '--base' as documented in
>> https://git-scm.com/docs/git-format-patch]
>>
>> url:    https://github.com/0day-ci/linux/commits/Andrea-Mayer/seg6-add-support-for-the-SRv6-End-DT4-behavior/20201109-093019
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/horms/ipvs.git master
>> config: x86_64-randconfig-a005-20201111 (attached as .config)
>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 874b0a0b9db93f5d3350ffe6b5efda2d908415d0)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install x86_64 cross compiling tool for clang build
>>          # apt-get install binutils-x86-64-linux-gnu
>>          # https://github.com/0day-ci/linux/commit/761138e2f757ac64efe97b03311c976db242dc92
>>          git remote add linux-review https://github.com/0day-ci/linux
>>          git fetch --no-tags linux-review Andrea-Mayer/seg6-add-support-for-the-SRv6-End-DT4-behavior/20201109-093019
>>          git checkout 761138e2f757ac64efe97b03311c976db242dc92
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>>> net/ipv6/seg6_local.c:793:4: error: field designator 'slwt_ops' does not refer to any field in type 'struct seg6_action_desc'
>>                     .slwt_ops       = {
>>                      ^
>>>> net/ipv6/seg6_local.c:826:10: error: invalid application of 'sizeof' to an incomplete type 'struct seg6_action_desc []'
>>             count = ARRAY_SIZE(seg6_action_table);
>>                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     include/linux/kernel.h:48:32: note: expanded from macro 'ARRAY_SIZE'
>>     #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
>>                                    ^~~~~
>>     2 errors generated.
>>
>> vim +793 net/ipv6/seg6_local.c
>>
>>     757	
>>     758	static struct seg6_action_desc seg6_action_table[] = {
>>     759		{
>>     760			.action		= SEG6_LOCAL_ACTION_END,
>>     761			.attrs		= 0,
>>     762			.input		= input_action_end,
>>     763		},
>>     764		{
>>     765			.action		= SEG6_LOCAL_ACTION_END_X,
>>     766			.attrs		= (1 << SEG6_LOCAL_NH6),
>>     767			.input		= input_action_end_x,
>>     768		},
>>     769		{
>>     770			.action		= SEG6_LOCAL_ACTION_END_T,
>>     771			.attrs		= (1 << SEG6_LOCAL_TABLE),
>>     772			.input		= input_action_end_t,
>>     773		},
>>     774		{
>>     775			.action		= SEG6_LOCAL_ACTION_END_DX2,
>>     776			.attrs		= (1 << SEG6_LOCAL_OIF),
>>     777			.input		= input_action_end_dx2,
>>     778		},
>>     779		{
>>     780			.action		= SEG6_LOCAL_ACTION_END_DX6,
>>     781			.attrs		= (1 << SEG6_LOCAL_NH6),
>>     782			.input		= input_action_end_dx6,
>>     783		},
>>     784		{
>>     785			.action		= SEG6_LOCAL_ACTION_END_DX4,
>>     786			.attrs		= (1 << SEG6_LOCAL_NH4),
>>     787			.input		= input_action_end_dx4,
>>     788		},
>>     789		{
>>     790			.action		= SEG6_LOCAL_ACTION_END_DT4,
>>     791			.attrs		= (1 << SEG6_LOCAL_TABLE),
>>     792			.input		= input_action_end_dt4,
>>   > 793			.slwt_ops	= {
>>     794						.build_state = seg6_end_dt4_build,
>>     795					  },
>>     796		},
>>     797		{
>>     798			.action		= SEG6_LOCAL_ACTION_END_DT6,
>>     799			.attrs		= (1 << SEG6_LOCAL_TABLE),
>>     800			.input		= input_action_end_dt6,
>>     801		},
>>     802		{
>>     803			.action		= SEG6_LOCAL_ACTION_END_B6,
>>     804			.attrs		= (1 << SEG6_LOCAL_SRH),
>>     805			.input		= input_action_end_b6,
>>     806		},
>>     807		{
>>     808			.action		= SEG6_LOCAL_ACTION_END_B6_ENCAP,
>>     809			.attrs		= (1 << SEG6_LOCAL_SRH),
>>     810			.input		= input_action_end_b6_encap,
>>     811			.static_headroom	= sizeof(struct ipv6hdr),
>>     812		},
>>     813		{
>>     814			.action		= SEG6_LOCAL_ACTION_END_BPF,
>>     815			.attrs		= (1 << SEG6_LOCAL_BPF),
>>     816			.input		= input_action_end_bpf,
>>     817		},
>>     818	
>>     819	};
>>     820	
>>     821	static struct seg6_action_desc *__get_action_desc(int action)
>>     822	{
>>     823		struct seg6_action_desc *desc;
>>     824		int i, count;
>>     825	
>>   > 826		count = ARRAY_SIZE(seg6_action_table);
>>     827		for (i = 0; i < count; i++) {
>>     828			desc = &seg6_action_table[i];
>>     829			if (desc->action == action)
>>     830				return desc;
>>     831		}
>>     832	
>>     833		return NULL;
>>     834	}
>>     835	
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9242894f-b831-067a-48d8-2f235963dedb%40intel.com.
