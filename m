Return-Path: <clang-built-linux+bncBD26TVH6RINBB4OI66CQMGQEZBWIKQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id AC31539D877
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 11:18:42 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id r5-20020a5448850000b02901f4271c7d03sf923683oic.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 02:18:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623057521; cv=pass;
        d=google.com; s=arc-20160816;
        b=clcjZQz/t2iOLaVUAUbKDlvOxxHMhj+8/h/hPPGJvNCzWNG93D7GfUI+OGJhU9kOIG
         u915nImXJX80T2cCA0H7yKrnz9scLmzU7gWtdnDiTXkVtx+6sGd3upy2qYLszGwtX8XF
         x/bnd5F5U5Yn8ZlBO2gyqL9Mc2N4dm0qWLKoyaWJJQNWruONRZJ+gyxA06EyNxrSaHhq
         zEDposZcpj5jlSeSZOSf2hQZR0C7NTsZH/ytfOBXFfHG2Sm3Lagwyfc578HtmKJQl8/n
         pUlBrqQm3JMkVzpT38Od0z9cpf0nmsx884XyFWeClvhzr1ZNBAnN+tsjbZhZM0f6xICd
         lrow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:ironport-sdr:ironport-sdr
         :sender:dkim-signature;
        bh=g+udRFEMEPWVOEyduXyV0kTxtu6bN/rSiISVywM/sAE=;
        b=QmICvVvoAoKLyH2HLvba8Hv2n3rn1kWWZzhxjAmQA9yTo11ONugRbV/+jVvmHdblEB
         iASSjyu3fODbnfjwuur5AJ7TW73r2h2U7mqWtoKcULmlyRN4ZUy7sDrJm3VnBnElt7z/
         61HUtzkhTEBAAH8NQyxVn1hWrKEZJYXHCg4m9RUaoqqsGLlA6BmKm4KCbI/CB/oVujmq
         fQCUVV9OZGdWr5Jpw7+q+JOXmwDevyo1MMQ8H4GShda0tTarqH8iZ7PINRKNM3pXet/U
         u7yrEVDAa6KmkVVS0NKMKzLls9rpdv6BW7igxfJe7KF+VOmVQjk7J6e40zwoXJmECDXk
         O59Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g+udRFEMEPWVOEyduXyV0kTxtu6bN/rSiISVywM/sAE=;
        b=YAEmGTAuUNZO28ltkOBRls+tHW/KFfdvczlMNx7irQjVZ+DE8ov+6W7LMC0n9kr/ra
         KLIOo3t3w5bf/2gBBhrmSuKghWUG/KEunSZCvThxdnqX8mZY/QNP1AztIN+ECLh1gn1v
         AbldhppJyXOnhhe8NUzYG9QoA6e7ua5F5Ms7ivxIe0ufbNgU2CygOpYKmwDoFIYLEnuJ
         aAgKSTDFTe9lTaVLJWp0R50BFK0kIP6iOnxwFsjemeSpl1YBRZY3NwRNAmLHvnuvDZ3/
         zeoqFJ7bYbVdkg+6i4DVjYDw/rwTLl2m9nWNOc1Ct4r+uCU0Il4MEcIV70lyrHC6ObXR
         JVzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g+udRFEMEPWVOEyduXyV0kTxtu6bN/rSiISVywM/sAE=;
        b=eb+mO+k+Z9+hANju7LYVnrRNwLrNsOF9Kn8V36o+7cF95UDPjNA8NpYj8maT4kyPBF
         UGXhDlBf4mDPu/yv6kXVyB3mr71CNiBML1b/9ruSHQfsM9AWPrNW3p5QgM2Ds4HyVqsz
         2RvUQ8pMradP13448BdZKBFM/esCpOx5WbwacUCjvklJaN0boq/jrUMuPP+Ixw3GrJk5
         RbfUrjqpgG/ZvETlEdT2rW2mVlXOMg4RmaE3vonGPXgezRoy7RoTKUwBBkHuoOETfFiX
         AxawPYyYTOHzoQvNwmU4XIjZT5PoG1ORyTDNkr70OADewqOVlS7vJk1vSAgGMLJ925gt
         ZyUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HoHALzFRN//hIrAIgC/qusfg2GufRMkxnJVY7VoTiscGmKY7Q
	pS37jLQef8L4Xv5EQfuhC9s=
X-Google-Smtp-Source: ABdhPJwF+4CvMLc3Orw7XDZIHN8bRXt+fhS8WuIGmiVGn4xKJ7alz4fwXvsE9Jdgkws6BzGBIFF9bQ==
X-Received: by 2002:aca:603:: with SMTP id 3mr18946321oig.145.1623057521512;
        Mon, 07 Jun 2021 02:18:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3807:: with SMTP id f7ls3615828oia.10.gmail; Mon, 07 Jun
 2021 02:18:41 -0700 (PDT)
X-Received: by 2002:a05:6808:1154:: with SMTP id u20mr10630099oiu.35.1623057521106;
        Mon, 07 Jun 2021 02:18:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623057521; cv=none;
        d=google.com; s=arc-20160816;
        b=u8N8pktfkPbhHLJGsm9BO5hx3xX1liHueASJDq+22oJPOmRdaBDvJES5NhMQ5pW2NL
         dE8krQRDmudtzjTB8nEbDRdnuwSRUL/fpkiuabLNQ1g0NUs+qJYKIEZy4Hq//IVngMA9
         0+qjLWNeocrHtx1Jc03wBRmP5UTK4Erxr7i3R0FFB36lclFLxyU3Mj9WYZDELZt97zbW
         cxqjWNQb6FXrddGMWfltcmARCHe0Amo15rxGG5XO20mAv4yxNsCTWwwhi4mBfeTsZ01n
         QcpIKxgXsbyYpzre4DZcOnEdpZnjKYhbZ86KwQ4pzcOxUXfoep4G6lMpJAHO0qFkKz2D
         HKeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=Ar5A8DMEAIovBCMYEmU1yWbW5UXocTw63lAZmRW3O78=;
        b=bA3fgkLPoWx6H8pElgJ2f8nO35RqWVAg0X66ofiAU9br5vi3HwmEto8GsmptE63kmy
         UQU+hXpkaU+AMVkEIBb7SidBu0Tuttj64UBDmrJZ6Lzy9e2Nfow018pg3hQJLn4sb9Qt
         oDdUlLIrQSpIvrzjQUybeSvUF2bNOYihV8foxvA3FQnHNyw1rOcgkOC0ss4FnoNSr2up
         QuBtaZTByAOOrArh8j1qOib9/luvEjvtTMBnqwSDO/HEsVsLtvWY+2yqRyNDSPJ86TsD
         jIPjo9zRitH0nFIzebtzM/tjOoG15UZ9/Qptg/naiouanK4bVvOy9t4puWzH8LnVko9J
         urWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id b17si1099057ooq.2.2021.06.07.02.18.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 02:18:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: j5UX34PRJNK4l0S8cn+MCphclXNnPOeU/0lncJ0vp/MCT1mSotIqrtM2VWtRLFcW/DWyEHMLeH
 2zYJCqULQL4g==
X-IronPort-AV: E=McAfee;i="6200,9189,10007"; a="191916980"
X-IronPort-AV: E=Sophos;i="5.83,254,1616482800"; 
   d="scan'208";a="191916980"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2021 02:18:39 -0700
IronPort-SDR: RAcDO5vQXfQ/TNZWTcCgXV2g/0YpbchXU6OonEikw158rL8bza6AfDIol0xJYHKSWahThplg3W
 bm7sIYunpmzg==
X-IronPort-AV: E=Sophos;i="5.83,254,1616482800"; 
   d="scan'208";a="447421534"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2021 02:18:37 -0700
Subject: Re: [kbuild-all] Re: kernel/rcu/tree.c:2073:23: warning: stack frame
 size of 2704 bytes in function 'rcu_gp_kthread'
To: paulmck@kernel.org, kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org
References: <202106061253.0X2QKyyI-lkp@intel.com>
 <20210606044926.GJ4397@paulmck-ThinkPad-P17-Gen-1>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <4696fe3d-a7ad-acae-686e-6295ca327737@intel.com>
Date: Mon, 7 Jun 2021 17:18:21 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20210606044926.GJ4397@paulmck-ThinkPad-P17-Gen-1>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
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



On 6/6/21 12:49 PM, Paul E. McKenney wrote:
> On Sun, Jun 06, 2021 at 12:19:57PM +0800, kernel test robot wrote:
>> Hi Paul,
>>
>> FYI, the error/warning still remains.
>>
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.g=
it master
>> head:   f5b6eb1e018203913dfefcf6fa988649ad11ad6e
>> commit: 7dffe01765d9309b8bd5505503933ec0ec53d192 rcu: Add lockdep_assert=
_irqs_disabled() to raw_spin_unlock_rcu_node() macros
>> date:   5 months ago
>> config: powerpc-randconfig-r023-20210606 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 551=
a697c5cf33275b66add4fc467fcf59084cffb)
>> reproduce (this is a W=3D1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install powerpc cross compiling tool for clang build
>>          # apt-get install binutils-powerpc-linux-gnu
>>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linu=
x.git/commit/?id=3D7dffe01765d9309b8bd5505503933ec0ec53d192
>>          git remote add linus https://git.kernel.org/pub/scm/linux/kerne=
l/git/torvalds/linux.git
>>          git fetch --no-tags linus master
>>          git checkout 7dffe01765d9309b8bd5505503933ec0ec53d192
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross =
ARCH=3Dpowerpc
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>     In file included from kernel/rcu/tree.c:21:
>>     In file included from include/linux/kernel.h:12:
>>     In file included from include/linux/bitops.h:29:
>>     In file included from arch/powerpc/include/asm/bitops.h:62:
>>     arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro r=
edefined [-Wmacro-redefined]
>>     #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC)=
 : : :"memory")
>>             ^
>>     <built-in>:310:9: note: previous definition is here
>>     #define __lwsync __builtin_ppc_lwsync
>>             ^
>>>> kernel/rcu/tree.c:2073:23: warning: stack frame size of 2704 bytes in =
function 'rcu_gp_kthread' [-Wframe-larger-than=3D]
>>     static int __noreturn rcu_gp_kthread(void *unused)
> Does -rcu commit 2f20de99a63b ("rcu: Make rcu_gp_cleanup() be noinline
> for tracing") help?

Hi Paul,

The stack frame size decreased to 2256 bytes:

 =C2=A0 kernel/rcu/tree.c:2129:23: warning: stack frame size of 2256 bytes =
in=20
function 'rcu_gp_kthread' [-Wframe-larger-than=3D]

Best Regards,
Rong Chen

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/4696fe3d-a7ad-acae-686e-6295ca327737%40intel.com.
