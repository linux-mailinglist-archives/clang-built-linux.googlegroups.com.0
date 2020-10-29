Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBP4Z5H6AKGQEJYD522A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7CA29E340
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 06:01:52 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id j5sf1231315pgt.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 22:01:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603947711; cv=pass;
        d=google.com; s=arc-20160816;
        b=YYdcEhobMtnWyqTEImBitf92n86k8RqLnqrft3DDPjGo4bgvU0UIHYxWE1BOlYwW+N
         uGFimzGX3P4zHlMsqKeXxhlqthcJX9N5a8ktUhEYqozkacNzVjv40owwmecbbBgiG3hp
         7AEj+b1kDe9WnR+Sg/XucjMOBsoqQjRKq9iUefEVmUX+hYYkeWFgKtRMHpcnA5NdkAZc
         836y+Pvb56YObnlm2EuraUr5vXzZmAhs9Eqkt8oQ1ToSv5TyWytE1eeRTRAYZGgRHzWV
         +y1jQvx3dCMmsXs1vRkfiyb2acIF3Fydvr1Tkz23DYohN0hZRUWy1azymVzzeaR6D/AX
         SBsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=Id/Eb28fdpp/uZUPPPXugDwWfhof2D7Xvz0WOw5GVRU=;
        b=NWQpr2XMOfz14the74gc6xaCscx/ys7fp1A4d80pO52X9etr0qjUVxoAo37mdGMUXI
         AdkF1cXU5OevACSS1UchnD/ExgA9o26wyYM7Jx+EbHDCtRDdBOFf7Bl+sCt3vLP3vJzr
         hmJcrh16QMlgQFPPB8gktpGirOsy6n86TEa2f6DCLZcTRRmxoCJqoOYs1Nc72XZSwDYF
         rhZvom0iDO2NmFkGpfzxoVrTHCNJTSnsDjkQ0yU4QMQJvHlsVy62+8/N7phjksqo1LDC
         sPVRL6nKxXI5fsBJ/9vFlGaFdcbFKmnBPZfnYQ5kpyLesERp7iq/jBelDft3vffuFwQh
         GKQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Id/Eb28fdpp/uZUPPPXugDwWfhof2D7Xvz0WOw5GVRU=;
        b=Xbr6DppNkihdx7wpktJ+g9ktTcFb2o62K8t5wBBdPH+YwuFWGcjVr8uOElsi41oAPA
         v7qvlH4YJIHI5AaxDHaY8acSsmFM/4nl4RgjaJFHtQ7EZN317piIjunfdE8YKFuDxHoy
         5UiAYmuS9GYhCFj6tgJ/u5EuEBksVNCG0hSu02nnZ3E7ugvOXphYMBaJReHeo8PuH77b
         KdWN9KMYN9sdT0N04JVRZOa42qKcnMz5tPb+4+Jz/9Ezhi7dLgKPySacsdVRo8Z8/iVR
         34euQxeM7703Hf8GibSGX5HUKMCxAqsKfZ+yHGBfng5ZkH+yFYhxZdbsiz8b2mxanUfI
         o5Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Id/Eb28fdpp/uZUPPPXugDwWfhof2D7Xvz0WOw5GVRU=;
        b=HJ7bcEceOW8Il1Q6rnw500rc+0X/0QGCD2p7DzGW8OVRmN+4XUt5VN5sB69Z7S+w0x
         H6opF241uTvxfMWQEcW4IwNXpyMAR7hAFWzEuu5JY46g2UOAv5BMc53QwN6yLIabwcfA
         SfLI3pWN+NeUfhK+lNTI1Zj77Zk3ZZcA+zFMYrdi9+CZ+GlhYWiTDqI3A1AMNdCD9oue
         3K5LA/hSuKxGGoZiqZVFX4vw50T71GOvgE3HOQ/qPuIwq9NJjEMEgLrHbrEEH2Y8gWxW
         R2aq9DZNUiJFHL6i3BaLAaa/VVukmM2Inecu185u/an3/dK5SsyS4EPg5POYhtgL5hDs
         p/IQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qAFQE93Fx9udZ07NWqOl1QUjGSP/XOJmE3kGfBhlJGoPJdm0x
	X1EyaUfbHtXum91XghA99Xk=
X-Google-Smtp-Source: ABdhPJyCyPYcfGMVqH1FGloHAdWBOjyyma+2l6Pb1sW14E3EJumYIKDdHEUkxRatJINyI4Q4HZM7wQ==
X-Received: by 2002:a17:90a:6392:: with SMTP id f18mr2370206pjj.143.1603947711218;
        Wed, 28 Oct 2020 22:01:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:941a:: with SMTP id m26ls649462pge.10.gmail; Wed, 28 Oct
 2020 22:01:50 -0700 (PDT)
X-Received: by 2002:a63:cb4f:: with SMTP id m15mr2486818pgi.281.1603947710480;
        Wed, 28 Oct 2020 22:01:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603947710; cv=none;
        d=google.com; s=arc-20160816;
        b=kO+JZuZ4kMDPcLmBsIimsAY31woedQO0e9svABo36LuwwFiiH6fZgxA+Cirk5VmDph
         OkDYGx/PAnrsDZjvr354sUuUSdcPrqBV9ekkc49QbubpW50jH90sPGZSTpCbkghmOjSA
         CDRfoh6twDbwgmUc19MIW61eVeOAaoY/BXrTZ3EzZpcCGbSNLShXStaSYuy04h4kSpwS
         xqdYqCfuqOBupufrzi7gMmiOPRI/MRJvLy+nj7Tp6FhoyQhvoc4wuWBSskRVWG6PNnhX
         hWYG0gmsZuKWK6KVCXUNT3FJ0jOY/W3HInjqhzAlbfAcZYmeJfOtufsAKNqVWke0TzFc
         K5cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=sKtGY5m7DOuXxSdl6QYxVTuqMk/GkmXyDWHlYW+Hugs=;
        b=FkOBUKMDFrRs4uVgPjAk47hcovG6tOlDZjNnGz8PQnCl8miVPW5h9OstIV6v0jl43N
         syPc9eBsZsioud39qmZ/DkoHoKteaw54A/z38UTTNSFEVrRqApAe1hhSR5aqybc7dxaL
         s0aAqO/AALH3KaYhGKriq3V4uWguhXT3TgqMxgR81tCcFkkZK9vycg5EJHcIBbAYiKyP
         7p1RUUFgzNQ8cCkq/9HtcpqkX2Seb0aFsf2V/kgPE8QTVL4m+0/sX/ecZTvKjrOznYmF
         r8nFcZ20i6OJNCESluAOXJIrfK0WWeEq/1nDNN7luFPLwOCNaqsz5I9Pq381dPjKUIqL
         z7Bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id mv6si100266pjb.0.2020.10.28.22.01.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2020 22:01:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: SCx7skv3F5/RiEHKho/dXsIwcnr2kSmyQwEZRfzCcRp3Wl6H2AzM+INwTcL2NYYZKseA6XrHZ0
 rQ8p3YB8pNfA==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="156152258"
X-IronPort-AV: E=Sophos;i="5.77,429,1596524400"; 
   d="gz'50?scan'50,208,50";a="156152258"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2020 22:01:48 -0700
IronPort-SDR: /3X+q1zbnaC8KHYG4rBYIeXLXZLyncQbJKDhx1JvLvt2QVusZATy5+x99TU5IqZwi4DtDEbXEh
 DDUML4NZ/Zcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,429,1596524400"; 
   d="gz'50?scan'50,208,50";a="351286841"
Received: from lkp-server02.sh.intel.com (HELO 72b1a4bebef6) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 28 Oct 2020 22:01:46 -0700
Received: from kbuild by 72b1a4bebef6 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kY04I-000053-BI; Thu, 29 Oct 2020 05:01:46 +0000
Date: Thu, 29 Oct 2020 13:00:44 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next 2/2] net: tipc: Add __printf() markup to fix
 -Wsuggest-attribute=format
Message-ID: <202010291216.cS9fNBBu-lkp@intel.com>
References: <20201028003849.929490-3-andrew@lunn.ch>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="UugvWAfsgieZRqgk"
Content-Disposition: inline
In-Reply-To: <20201028003849.929490-3-andrew@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--UugvWAfsgieZRqgk
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Andrew,

I love your patch! Perhaps something to improve:

[auto build test WARNING on net-next/master]

url:    https://github.com/0day-ci/linux/commits/Andrew-Lunn/net-dccp-Add-__printf-markup-to-fix-Wsuggest-attribute-format/20201029-081346
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git cd29296fdfca919590e4004a7e4905544f4c4a32
config: x86_64-randconfig-a004-20201028 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 772aaa602383cf82795572ebcd86b0e660f3579f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/0be08855cea6e7b987406c1beee6ca1b508f5066
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Andrew-Lunn/net-dccp-Add-__printf-markup-to-fix-Wsuggest-attribute-format/20201029-081346
        git checkout 0be08855cea6e7b987406c1beee6ca1b508f5066
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> net/tipc/netlink_compat.c:592:5: warning: format specifies type 'char *' but the argument has type 'void *' [-Wformat]
                            nla_data(link[TIPC_NLA_LINK_NAME]));
                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 warning generated.

vim +592 net/tipc/netlink_compat.c

f2b3b2d4ccbf96 Richard Alpe    2015-02-09  541  
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  542  static int tipc_nl_compat_link_stat_dump(struct tipc_nl_compat_msg *msg,
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  543  					 struct nlattr **attrs)
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  544  {
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  545  	char *name;
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  546  	struct nlattr *link[TIPC_NLA_LINK_MAX + 1];
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  547  	struct nlattr *prop[TIPC_NLA_PROP_MAX + 1];
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  548  	struct nlattr *stats[TIPC_NLA_STATS_MAX + 1];
297f7d2cce6a15 Baozeng Ding    2016-05-24  549  	int err;
0762216c0ad2a2 Ying Xue        2019-01-14  550  	int len;
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  551  
297f7d2cce6a15 Baozeng Ding    2016-05-24  552  	if (!attrs[TIPC_NLA_LINK])
297f7d2cce6a15 Baozeng Ding    2016-05-24  553  		return -EINVAL;
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  554  
8cb081746c031f Johannes Berg   2019-04-26  555  	err = nla_parse_nested_deprecated(link, TIPC_NLA_LINK_MAX,
8cb081746c031f Johannes Berg   2019-04-26  556  					  attrs[TIPC_NLA_LINK], NULL, NULL);
297f7d2cce6a15 Baozeng Ding    2016-05-24  557  	if (err)
297f7d2cce6a15 Baozeng Ding    2016-05-24  558  		return err;
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  559  
297f7d2cce6a15 Baozeng Ding    2016-05-24  560  	if (!link[TIPC_NLA_LINK_PROP])
297f7d2cce6a15 Baozeng Ding    2016-05-24  561  		return -EINVAL;
297f7d2cce6a15 Baozeng Ding    2016-05-24  562  
8cb081746c031f Johannes Berg   2019-04-26  563  	err = nla_parse_nested_deprecated(prop, TIPC_NLA_PROP_MAX,
8cb081746c031f Johannes Berg   2019-04-26  564  					  link[TIPC_NLA_LINK_PROP], NULL,
8cb081746c031f Johannes Berg   2019-04-26  565  					  NULL);
297f7d2cce6a15 Baozeng Ding    2016-05-24  566  	if (err)
297f7d2cce6a15 Baozeng Ding    2016-05-24  567  		return err;
297f7d2cce6a15 Baozeng Ding    2016-05-24  568  
297f7d2cce6a15 Baozeng Ding    2016-05-24  569  	if (!link[TIPC_NLA_LINK_STATS])
297f7d2cce6a15 Baozeng Ding    2016-05-24  570  		return -EINVAL;
297f7d2cce6a15 Baozeng Ding    2016-05-24  571  
8cb081746c031f Johannes Berg   2019-04-26  572  	err = nla_parse_nested_deprecated(stats, TIPC_NLA_STATS_MAX,
8cb081746c031f Johannes Berg   2019-04-26  573  					  link[TIPC_NLA_LINK_STATS], NULL,
8cb081746c031f Johannes Berg   2019-04-26  574  					  NULL);
297f7d2cce6a15 Baozeng Ding    2016-05-24  575  	if (err)
297f7d2cce6a15 Baozeng Ding    2016-05-24  576  		return err;
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  577  
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  578  	name = (char *)TLV_DATA(msg->req);
0762216c0ad2a2 Ying Xue        2019-01-14  579  
4f07b80c973348 Xin Long        2019-06-25  580  	len = TLV_GET_DATA_LEN(msg->req);
4f07b80c973348 Xin Long        2019-06-25  581  	if (len <= 0)
4f07b80c973348 Xin Long        2019-06-25  582  		return -EINVAL;
4f07b80c973348 Xin Long        2019-06-25  583  
fd567ac20cb037 John Rutherford 2019-11-26  584  	len = min_t(int, len, TIPC_MAX_LINK_NAME);
0762216c0ad2a2 Ying Xue        2019-01-14  585  	if (!string_is_valid(name, len))
0762216c0ad2a2 Ying Xue        2019-01-14  586  		return -EINVAL;
0762216c0ad2a2 Ying Xue        2019-01-14  587  
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  588  	if (strcmp(name, nla_data(link[TIPC_NLA_LINK_NAME])) != 0)
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  589  		return 0;
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  590  
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  591  	tipc_tlv_sprintf(msg->rep, "\nLink <%s>\n",
f2b3b2d4ccbf96 Richard Alpe    2015-02-09 @592  			 nla_data(link[TIPC_NLA_LINK_NAME]));
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  593  
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  594  	if (link[TIPC_NLA_LINK_BROADCAST]) {
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  595  		__fill_bc_link_stat(msg, prop, stats);
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  596  		return 0;
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  597  	}
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  598  
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  599  	if (link[TIPC_NLA_LINK_ACTIVE])
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  600  		tipc_tlv_sprintf(msg->rep, "  ACTIVE");
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  601  	else if (link[TIPC_NLA_LINK_UP])
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  602  		tipc_tlv_sprintf(msg->rep, "  STANDBY");
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  603  	else
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  604  		tipc_tlv_sprintf(msg->rep, "  DEFUNCT");
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  605  
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  606  	tipc_tlv_sprintf(msg->rep, "  MTU:%u  Priority:%u",
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  607  			 nla_get_u32(link[TIPC_NLA_LINK_MTU]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  608  			 nla_get_u32(prop[TIPC_NLA_PROP_PRIO]));
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  609  
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  610  	tipc_tlv_sprintf(msg->rep, "  Tolerance:%u ms  Window:%u packets\n",
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  611  			 nla_get_u32(prop[TIPC_NLA_PROP_TOL]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  612  			 nla_get_u32(prop[TIPC_NLA_PROP_WIN]));
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  613  
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  614  	tipc_tlv_sprintf(msg->rep,
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  615  			 "  RX packets:%u fragments:%u/%u bundles:%u/%u\n",
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  616  			 nla_get_u32(link[TIPC_NLA_LINK_RX]) -
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  617  			 nla_get_u32(stats[TIPC_NLA_STATS_RX_INFO]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  618  			 nla_get_u32(stats[TIPC_NLA_STATS_RX_FRAGMENTS]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  619  			 nla_get_u32(stats[TIPC_NLA_STATS_RX_FRAGMENTED]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  620  			 nla_get_u32(stats[TIPC_NLA_STATS_RX_BUNDLES]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  621  			 nla_get_u32(stats[TIPC_NLA_STATS_RX_BUNDLED]));
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  622  
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  623  	tipc_tlv_sprintf(msg->rep,
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  624  			 "  TX packets:%u fragments:%u/%u bundles:%u/%u\n",
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  625  			 nla_get_u32(link[TIPC_NLA_LINK_TX]) -
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  626  			 nla_get_u32(stats[TIPC_NLA_STATS_TX_INFO]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  627  			 nla_get_u32(stats[TIPC_NLA_STATS_TX_FRAGMENTS]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  628  			 nla_get_u32(stats[TIPC_NLA_STATS_TX_FRAGMENTED]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  629  			 nla_get_u32(stats[TIPC_NLA_STATS_TX_BUNDLES]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  630  			 nla_get_u32(stats[TIPC_NLA_STATS_TX_BUNDLED]));
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  631  
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  632  	tipc_tlv_sprintf(msg->rep,
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  633  			 "  TX profile sample:%u packets  average:%u octets\n",
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  634  			 nla_get_u32(stats[TIPC_NLA_STATS_MSG_LEN_CNT]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  635  			 nla_get_u32(stats[TIPC_NLA_STATS_MSG_LEN_TOT]) /
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  636  			 nla_get_u32(stats[TIPC_NLA_STATS_MSG_PROF_TOT]));
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  637  
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  638  	tipc_tlv_sprintf(msg->rep,
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  639  			 "  0-64:%u%% -256:%u%% -1024:%u%% -4096:%u%% ",
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  640  			 perc(nla_get_u32(stats[TIPC_NLA_STATS_MSG_LEN_P0]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  641  			      nla_get_u32(stats[TIPC_NLA_STATS_MSG_PROF_TOT])),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  642  			 perc(nla_get_u32(stats[TIPC_NLA_STATS_MSG_LEN_P1]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  643  			      nla_get_u32(stats[TIPC_NLA_STATS_MSG_PROF_TOT])),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  644  			 perc(nla_get_u32(stats[TIPC_NLA_STATS_MSG_LEN_P2]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  645  			      nla_get_u32(stats[TIPC_NLA_STATS_MSG_PROF_TOT])),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  646  			 perc(nla_get_u32(stats[TIPC_NLA_STATS_MSG_LEN_P3]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  647  			      nla_get_u32(stats[TIPC_NLA_STATS_MSG_PROF_TOT])));
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  648  
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  649  	tipc_tlv_sprintf(msg->rep, "-16384:%u%% -32768:%u%% -66000:%u%%\n",
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  650  			 perc(nla_get_u32(stats[TIPC_NLA_STATS_MSG_LEN_P4]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  651  			      nla_get_u32(stats[TIPC_NLA_STATS_MSG_PROF_TOT])),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  652  			 perc(nla_get_u32(stats[TIPC_NLA_STATS_MSG_LEN_P5]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  653  			      nla_get_u32(stats[TIPC_NLA_STATS_MSG_PROF_TOT])),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  654  			 perc(nla_get_u32(stats[TIPC_NLA_STATS_MSG_LEN_P6]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  655  			      nla_get_u32(stats[TIPC_NLA_STATS_MSG_PROF_TOT])));
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  656  
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  657  	tipc_tlv_sprintf(msg->rep,
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  658  			 "  RX states:%u probes:%u naks:%u defs:%u dups:%u\n",
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  659  			 nla_get_u32(stats[TIPC_NLA_STATS_RX_STATES]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  660  			 nla_get_u32(stats[TIPC_NLA_STATS_RX_PROBES]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  661  			 nla_get_u32(stats[TIPC_NLA_STATS_RX_NACKS]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  662  			 nla_get_u32(stats[TIPC_NLA_STATS_RX_DEFERRED]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  663  			 nla_get_u32(stats[TIPC_NLA_STATS_DUPLICATES]));
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  664  
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  665  	tipc_tlv_sprintf(msg->rep,
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  666  			 "  TX states:%u probes:%u naks:%u acks:%u dups:%u\n",
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  667  			 nla_get_u32(stats[TIPC_NLA_STATS_TX_STATES]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  668  			 nla_get_u32(stats[TIPC_NLA_STATS_TX_PROBES]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  669  			 nla_get_u32(stats[TIPC_NLA_STATS_TX_NACKS]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  670  			 nla_get_u32(stats[TIPC_NLA_STATS_TX_ACKS]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  671  			 nla_get_u32(stats[TIPC_NLA_STATS_RETRANSMITTED]));
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  672  
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  673  	tipc_tlv_sprintf(msg->rep,
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  674  			 "  Congestion link:%u  Send queue max:%u avg:%u",
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  675  			 nla_get_u32(stats[TIPC_NLA_STATS_LINK_CONGS]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  676  			 nla_get_u32(stats[TIPC_NLA_STATS_MAX_QUEUE]),
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  677  			 nla_get_u32(stats[TIPC_NLA_STATS_AVG_QUEUE]));
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  678  
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  679  	return 0;
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  680  }
f2b3b2d4ccbf96 Richard Alpe    2015-02-09  681  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010291216.cS9fNBBu-lkp%40intel.com.

--UugvWAfsgieZRqgk
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--UugvWAfsgieZRqgk--
