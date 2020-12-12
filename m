Return-Path: <clang-built-linux+bncBCX2JBVY5MBBB7UI2L7AKGQE6EC3NUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9D32D8549
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 09:51:12 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id z24sf8230433pgu.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 00:51:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607763071; cv=pass;
        d=google.com; s=arc-20160816;
        b=mt6Md6D+/FZplSfAMK2PMreWHsMtxwRS0M5833zIQmsQJDwMWujngZwv/hWMtwe0j8
         Q+jNriTMpLW0fsCbAhzaTVp/21CSKcNxAmO3AKFOKOJXx2YIL6wMvNYnXzmsifZiremY
         VKW5k/s/yaa6TitPA6vH3VpBGex6M6usa5o30EsyI8f2n+SIln33OcIKw96FNDFJYomE
         FJkWQPqe02hU1SX3iLontUVk7aayQAYX2qpVpcUhU8qM7AieLDeL75sPhB7R3j+ff7Ld
         qlj6lUGTbzWuiRfw3PfYHDBDvvMGMPwOLJHdqpTXRDplFonkeHcWRARZmtCsCQxl68uF
         BkDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=Mx97YdQFFnmqvlPpTH4kqXylSaUSaWc8Q9AuLaua5dI=;
        b=YcwqBepxqQNigztd4aH2rS6iGpKuQUDfZ5agoGUHFcrwaYYaeRsIaGyq2zb03maMbu
         nCzmKIbSWOXzPQiLvJCz9Jy0E+hQz+eMCyijriLpbrUhotS9XRPX5SiDYHB31pD5fQfX
         g1kKyziK2UP1fwKjp0k/k+A1ivYJfn8eyJH3DRFNTswWAvyQZDkWyI9I2pU2Fzt8h5nv
         8CXAstpOCtRLalcxj14q1YAhkWoLHUfGPwjpE4biONSt/MM6SXfwhs6/zq60USAnmwAi
         PH6YHMZ5ZiHLlgnENf+fHwLL6Bk617LbixZz055d8BhvWv0zG2xS28J/kltv2paQdSMw
         IqZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mx97YdQFFnmqvlPpTH4kqXylSaUSaWc8Q9AuLaua5dI=;
        b=N/gaUMJX2qnVpOB/UFivwgz0Ff3foLWEa4KKzce9fDRVUnmK2nYE/4SMSZCwiFoWl4
         8cKop0TNfDIllxq2uZ8LZWRHmKmdy5EvuRsYIWQNhJmAIk9sZaphpTSzLS8IhJGlZB8I
         s3MTUmVoffeMXvzV4fdm8SJkrq306SDztTgo9uhGrmlBxhmsWVOndhV0cYDNQ8Br1lxM
         7YXw7D8ZJB2ki+Pw23QdpEsLe+nSy4o7hNvgLVeuP68EGsuJau9tH3HNsvCUdw8KRfV6
         5Wvnr6dXp8taC2hdOZfm62DDQ1zAstGT2j/xrwA5jurkldOhiXsee+kdZk25ef6C/F2/
         WQWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mx97YdQFFnmqvlPpTH4kqXylSaUSaWc8Q9AuLaua5dI=;
        b=Fgkzp9wWxss3Pa2V6KUjUMFSNSkNFizPqeFLEYtMd/4CDkG+5cQY1ZXWqiNc6miNil
         6C9xJRT5AvXwaoI+aKAnz5LaUqRyF/Q920qbADgYMBpL64rmgQ+/miG/KFhcgb+2ORgX
         SgEP+Kz7KlBI6XUYLySMleEObdbc9XYoiShvy3LoSDN3elR5BQWqzMnBqukFzcs5uXGz
         2UtheEa++5S1cEYRN1OhxeQD3LNnZxEuPlYUpwALfNvIg2mZO3SRkQ5Zzh09l9TO3ZOI
         4zGZhva75oUc5Im0qKzcWrDIq7+nuB46yjl14C1492JBcHnYLoDPZm92ZAa3a0Qys21Y
         jyAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532B0Mz5cmrTocjlJhnjCfgBAWIqdTKwhJvfxyRaiiTv8AyKLoGc
	QPWKhEQvutLcSsO9nX3Gk6Y=
X-Google-Smtp-Source: ABdhPJwa9eG6d0fzd78S/CglrqkL4Npldg8O7hXXEOcblk3we+D1aUntn53GHSJmwJ78BPYVZNpwTg==
X-Received: by 2002:a62:7642:0:b029:19d:d68d:17b8 with SMTP id r63-20020a6276420000b029019dd68d17b8mr14825015pfc.67.1607763070799;
        Sat, 12 Dec 2020 00:51:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a47:: with SMTP id x7ls5149340plv.1.gmail; Sat, 12
 Dec 2020 00:51:10 -0800 (PST)
X-Received: by 2002:a17:90a:bf88:: with SMTP id d8mr17043191pjs.124.1607763069939;
        Sat, 12 Dec 2020 00:51:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607763069; cv=none;
        d=google.com; s=arc-20160816;
        b=OxGUYdOyt04mqpgSfHJpHp/QQUA1gB6KGrYR+t3Qd4TjVteO2ThpcdLPCCX3qASn8t
         35r9p0xCc9rMuwKm5ehwFH5Yylp7JdTi9w0/RYai7L4ITjRxFbN/3Zzit5JWGElptpWd
         8+CRwP8/zcWQBWppqxUQruHjVRRFZOKHFCSCqk5NAvSfeJv1I6pHpN8jxGvYbsSSjVZ4
         tXOKao+me/MUeUz8NBLUODvQ85NraWoYGprsit9t5zmcAiW/MSlHhlZOD996k14rgwDL
         +MhAGJ5FKtUe/6pj1YYJQ4O3Cb5Ei5Xs0grznJYA2XPqmdCP6mr0EbYk9REfaZt6OICd
         pgdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=TPQjGRbDyM+G1ag5ATIWXe8K7MmYu5+Y1iqnmTuRU6A=;
        b=uv0dFyE2+EpDPKqwtmW5D7b7v/1AjmbALuJeMDEFQjK+w5HuuSsKzk+/G6dDn2ICRv
         fGoSGAIVR9LBiHq2heM5Ma+mH1X7Y/0GEH42b2RK5R+llfiS0a1YD5BWV+moUIQqNryd
         2x3Ud7wrdmLLdLsfI9+tbTmlnj4mFzUmO3MHv1NODxU7iA+pn6ipR5gzUdYthTV4EUzQ
         fmHkD0IFpqRWMSdCTRRaKxxuMvfT+z0WG3pVwBWQtcAqs6gs67YuH3xlqwtVHky3kqn+
         WWEHulbY7/uDloi/Pf/PLzw+16zGYk6HSupWCeeShWFdY4jI91dGsPyDz3joKmSoMa2C
         kRjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id h11si665914pjv.3.2020.12.12.00.51.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Dec 2020 00:51:09 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: 7MgCza4duYWGnU8pQGwvaQr2rIwrKeo9dr3s8V9e/iKnKEiO+DUNav8bvMLR6mRnsRZz8KeZ8l
 lAMOFjVmBIkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9832"; a="154350788"
X-IronPort-AV: E=Sophos;i="5.78,413,1599548400"; 
   d="scan'208";a="154350788"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2020 00:51:09 -0800
IronPort-SDR: aSBz5MFlyrxBJJzgSWgWgFPnNZy+yYkUI01f1gEKuZmrrl5Qfun45FyAmLvVl/IFwKO0p7Bh7U
 88DPh5b1fv1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,413,1599548400"; 
   d="scan'208";a="324863738"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga008.fm.intel.com with ESMTP; 12 Dec 2020 00:51:04 -0800
Date: Sat, 12 Dec 2020 16:47:08 +0800
From: Philip Li <philip.li@intel.com>
To: "Geva, Erez" <erez.geva.ext@siemens.com>
Cc: kernel test robot <lkp@intel.com>,
	"kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Jamal Hadi Salim <jhs@mojatatu.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	"David S . Miller" <davem@davemloft.net>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
	Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
	Arnd Bergmann <arnd@arndb.de>, Cong Wang <xiyou.wangcong@gmail.com>,
	Sudler@ml01.01.org, Andreas <andreas.meisinger@siemens.com>,
	"jan.kiszka@siemens.com" <jan.kiszka@siemens.com>,
	"henning.schild@siemens.com" <henning.schild@siemens.com>
Subject: Re: [kbuild-all] Re: [PATCH 1/3] Add TX sending hardware timestamp.
Message-ID: <20201212084708.GA31899@intel.com>
References: <20201209143707.13503-2-erez.geva.ext@siemens.com>
 <202012101050.lTUKkbvy-lkp@intel.com>
 <VI1PR10MB244664932EF569D492539DB8ABCB0@VI1PR10MB2446.EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <VI1PR10MB244664932EF569D492539DB8ABCB0@VI1PR10MB2446.EURPRD10.PROD.OUTLOOK.COM>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.151 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Thu, Dec 10, 2020 at 12:41:32PM +0000, Geva, Erez wrote:
> 
> On 10/12/2020 04:11, kernel test robot wrote:
> > Hi Erez,
> > 
> > Thank you for the patch! Yet something to improve:
> > 
> Thanks for the robot,
> as we rarely use clang for kernel. It is very helpful.
> 
> > [auto build test ERROR on b65054597872ce3aefbc6a666385eabdf9e288da]
> > 
> > url:    https://github.com/0day-ci/linux/commits/Erez-Geva/Add-sending-TX-hardware-timestamp-for-TC-ETF-Qdisc/20201210-000521
> I can not find this commit
> 
> > base:    b65054597872ce3aefbc6a666385eabdf9e288da
> > config: mips-randconfig-r026-20201209 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1968804ac726e7674d5de22bc2204b45857da344)
> However the clang in 
> https://download.01.org/0day-ci/cross-package/clang-latest/clang.tar.xz  is version 11
Sorry that these are issues at our side, including the branch/commit missing.
The push to download.01.org failed and did not really work, we will look for
recovering them.

> 
> > reproduce (this is a W=1 build):
> >          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> Your make cross script tries to download the clang every time.
> Please separate the download (which is ~400 MB and 2 GB after open) from the compilation.
Hi Erez, thanks for your feedback, we will improve the reproduction
side per these suggestions.

> 
> Please use "wget" follow your own instructions in this email.
> 
> >          chmod +x ~/bin/make.cross
> >          # install mips cross compiling tool for clang build
> >          # apt-get install binutils-mips-linux-gnu
> >          # https://github.com/0day-ci/linux/commit/8a8f634bc74db16dc551cfcf3b63c1183f98eaac
> >          git remote add linux-review https://github.com/0day-ci/linux
> >          git fetch --no-tags linux-review Erez-Geva/Add-sending-TX-hardware-timestamp-for-TC-ETF-Qdisc/20201210-000521
> This branch is absent
> 
> >          git checkout 8a8f634bc74db16dc551cfcf3b63c1183f98eaac
> This commit as well
> 
> >          # save the attached .config to linux build tree
> >          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
> > 
> I use Debian 10.7.
> I usually compile with GCC. I have not see any errors.
> 
> When I use clang 11 from download.01.org I get a crash right away.
> Please add a proper instructions how to use clang on Debian or provide 
> a Docker container with updated clang for testing.
> 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All errors (new ones prefixed by >>):
> > 
> >>> net/core/sock.c:2383:7: error: use of undeclared identifier 'SCM_HW_TXTIME'; did you mean 'SOCK_HW_TXTIME'?
> >             case SCM_HW_TXTIME:
> >                  ^~~~~~~~~~~~~
> >                  SOCK_HW_TXTIME
> >     include/net/sock.h:862:2: note: 'SOCK_HW_TXTIME' declared here
> >             SOCK_HW_TXTIME,
> >             ^
> >     1 error generated.
> > 
> > vim +2383 net/core/sock.c
> > 
> >    2351	
> >    2352	int __sock_cmsg_send(struct sock *sk, struct msghdr *msg, struct cmsghdr *cmsg,
> >    2353			     struct sockcm_cookie *sockc)
> >    2354	{
> >    2355		u32 tsflags;
> >    2356	
> >    2357		switch (cmsg->cmsg_type) {
> >    2358		case SO_MARK:
> >    2359			if (!ns_capable(sock_net(sk)->user_ns, CAP_NET_ADMIN))
> >    2360				return -EPERM;
> >    2361			if (cmsg->cmsg_len != CMSG_LEN(sizeof(u32)))
> >    2362				return -EINVAL;
> >    2363			sockc->mark = *(u32 *)CMSG_DATA(cmsg);
> >    2364			break;
> >    2365		case SO_TIMESTAMPING_OLD:
> >    2366			if (cmsg->cmsg_len != CMSG_LEN(sizeof(u32)))
> >    2367				return -EINVAL;
> >    2368	
> >    2369			tsflags = *(u32 *)CMSG_DATA(cmsg);
> >    2370			if (tsflags & ~SOF_TIMESTAMPING_TX_RECORD_MASK)
> >    2371				return -EINVAL;
> >    2372	
> >    2373			sockc->tsflags &= ~SOF_TIMESTAMPING_TX_RECORD_MASK;
> >    2374			sockc->tsflags |= tsflags;
> >    2375			break;
> >    2376		case SCM_TXTIME:
> >    2377			if (!sock_flag(sk, SOCK_TXTIME))
> >    2378				return -EINVAL;
> >    2379			if (cmsg->cmsg_len != CMSG_LEN(sizeof(u64)))
> >    2380				return -EINVAL;
> >    2381			sockc->transmit_time = get_unaligned((u64 *)CMSG_DATA(cmsg));
> >    2382			break;
> >> 2383		case SCM_HW_TXTIME:
> >    2384			if (!sock_flag(sk, SOCK_HW_TXTIME))
> >    2385				return -EINVAL;
> >    2386			if (cmsg->cmsg_len != CMSG_LEN(sizeof(u64)))
> >    2387				return -EINVAL;
> >    2388			sockc->transmit_hw_time = get_unaligned((u64 *)CMSG_DATA(cmsg));
> >    2389			break;
> >    2390		/* SCM_RIGHTS and SCM_CREDENTIALS are semantically in SOL_UNIX. */
> >    2391		case SCM_RIGHTS:
> >    2392		case SCM_CREDENTIALS:
> >    2393			break;
> >    2394		default:
> >    2395			return -EINVAL;
> >    2396		}
> >    2397		return 0;
> >    2398	}
> >    2399	EXPORT_SYMBOL(__sock_cmsg_send);
> >    2400	
> > 
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > 
> 
> Please improve the robot, so we can comply and properly support clang compilation.
Got it, we will keep improving the bot.

> 
> Thanks
>    Erez
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201212084708.GA31899%40intel.com.
