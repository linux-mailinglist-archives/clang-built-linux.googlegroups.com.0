Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZGYTSBQMGQEGMRILBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 08725352B52
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 16:38:30 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id da16sf5298393qvb.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Apr 2021 07:38:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617374309; cv=pass;
        d=google.com; s=arc-20160816;
        b=ggNsyflvBLXA3x+dM8Xmwh1Kzifbjd+yJovrEWdyQ7yjacp3sxXHrBE2ob6h7lB+dz
         tToP2FwNidTcr8Eks6YkBONI50MpoHy7gxof6nQMQV4JyQCQnNo5WMTr+hOFKttgMSNI
         XFvTkB/Cn7Jh+uDLMjD8bFvaSNhUA0k8dakX2G+FejNKeuRYspC+xhRPvns/7lt7Um6S
         duoRf/7XA1txBD1hTnNAwhLzB1oCFyWezgXvTHryciDnlZlDec/7iIxU2spK9e/TvW4G
         0mNAFvtxcMpTLQ8XGNowXA2V3jS7U03q2qd3gDV7aBj1fYXUy6B8IZcV05u++6Mhtlcw
         0cKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=fVh/Pri0eyTGVY7o3Uie4dBsOhAee5qBJ64tRhiWjYg=;
        b=ntiqWYpYLc87u5w73rpY30vGaoFOvLC3sKvjNps0iYc3GXQG0ifMxtjG3CROHDiTnO
         oUIGr97M7cinqvBGYqflqyYeowpPhe2551ELvGNH+lEdJADVvbWryOhk53x7pg1PhGFK
         xDL/OSjg+mVhHDd+Eaec0dGNpkDXCTGo7+LuvDLydzL0OhkJKRMWLuxah0dwCuSXLiKW
         +TtJzQp60TLkfTIX58foHO2vc/InH2WUfstxH1c0EL3kbqgsttIlmMayiS+qCVQGn4Wd
         gEyKQHs1cpD62YIMtdXTns8N2jAAaDjLXwISJ1t/zagI5k06vQfEaE8BMgtgLqKsbRCe
         74JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fVh/Pri0eyTGVY7o3Uie4dBsOhAee5qBJ64tRhiWjYg=;
        b=ZUjCabo3mVyfpEK+Qjk2NAZ0/nWc5NFRz8/6EyEijAb08Qk+gCddoW3ogJm0WkoRDQ
         d/RrRHYqNeQo7CTIr5WU/SA7mQuT2NpmvyC0YziY7kT7kHWaZHms0Udq2f6hPS9KlQW9
         gyjqX/Cc4Q1vhH2ddLTQ8T0FM9UfNU02Sx7dpXn1lszXHQZi/QfDZzuGcOmIlJLQDIQ7
         h+YUMYlTaDLxg6ctpbYW3Hwz7BbHwVLfz4rLyMaQ1tHYgkF5pBkUSwmAl7PERge5LJ6N
         aZ9eXMZsqiqccvW8reDmJ6iMpIq8Fh5TxjjYhcENf3e7xzD8DSaemaYOzhi6YT1wvn9L
         jddw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fVh/Pri0eyTGVY7o3Uie4dBsOhAee5qBJ64tRhiWjYg=;
        b=EVOrFZS4FTPXr5izAS5DWqUB92H/cwxiBzzw76GYelnnRX/1MaEg0w1ZDlPlCyNtav
         HnK4AGn+VzErxuSkl+NTLrI1D1/DJ+WeApcQ2wphsnYiacqqti1YbsxvNF3fgeF/fjWx
         i2J4WZx2WAkR7GPR/O340VgYOMgaMAHSqgU6wWHZomBlu/DeunXL5VAASwMIo1W/KR51
         KV9406/a3zAeBqqLBbXQOhOOSdTSTWIZEk7AB5/CwwcRYKxmurV805H+UPszyYoBWDdF
         NbC7gQPayyI9NtwVcYs1hgVyClTPtSIW0mOSEa44KlSE1JPxNl+yN/AENc/xPlbqSP7s
         KydA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319o9KLoynZ+GF3AGLWCY21R/m1CrFJIv4vSpv8It6isM+P2mGE
	mxnZRDFT/GRgr7sUyk8TLn0=
X-Google-Smtp-Source: ABdhPJwvEt2cW82i9EF8AZKbpGFbvqMTGfevqFrPWd8cW8nR1Q6Zs8cOk+d8xd4raHl2sX82HVJDlg==
X-Received: by 2002:a0c:e2d2:: with SMTP id t18mr13045511qvl.61.1617374308815;
        Fri, 02 Apr 2021 07:38:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:c207:: with SMTP id i7ls5105510qkm.9.gmail; Fri, 02 Apr
 2021 07:38:28 -0700 (PDT)
X-Received: by 2002:a37:a281:: with SMTP id l123mr13896260qke.218.1617374308290;
        Fri, 02 Apr 2021 07:38:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617374308; cv=none;
        d=google.com; s=arc-20160816;
        b=QbUF9S00br/y43UpprEIuzqlti5y4SGLO6bwB2CK9z89WykUDq90uSZy2v5BpIltqi
         1z2Mtqz8jPotwsQQ//c336YbMZzqf5IC8sOGkAv/UZrHwsTUYjmGyUzz+uGey0fuVLm8
         1ssrjjv5Tr7/ZpBjHzoNStGH1Wo0hsUGXVabSd1AzreXnrCQwaVC3Adn8RL2sO7ZaKDq
         3JBnR6At1+w/bME6SxPAxY29/YryBR9RRmQxYsWhwDdI4+Or/Zny/PGeQm0bC92sUOHp
         nHzfjQOentJCuDz4jnQHRqgG8djaEbUJNus+ef0SlY/5rZb+ZCkhOYzpbkpptZ8cm0WE
         ZgUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=I5gzMgBWSeOU6KWbihs5Cw21qD+ebszaNny9SABSa7A=;
        b=XzL1FekmuySYp3dEufGwlisqfazSVWNuuU/iFaH+k09/RRM4Sq0UsWewhtOYXqrLZI
         zl5Hu6gIeTow6l27vejTVN2/hVIVOQW1QZQkWCedSrE6cLdAR1lHbOLA8k41AXU7ftYq
         e+tFdYNtnvG0h9jO73RI712sOKpflHPzA+h9BByhxIbQ+DJNQINYsWYfoR+/tDf6fnK7
         ydHXQ4I1zsHVegv4uKTE1daTZ3OcvxAy20T/eAIzAMX4wgtmcZAdNBQdBen/m+L1WKIe
         Oeji1vmjXDoU0LFzx3kKbBnLbUcGt/uRoiB0Z/EkAJ+PNup6wHgi5Efixr9hJXkpoHqs
         prbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id a15si1504949qtn.4.2021.04.02.07.38.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Apr 2021 07:38:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: Xx07MECXOz/DTHCpiT9jB5ZwoNDACsCoL5q9WGqKKK0FlzYQbt3o1A5ODMzFcUIpelYaxfcSfn
 8ztaFDQJeB+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9942"; a="179607008"
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; 
   d="gz'50?scan'50,208,50";a="179607008"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2021 07:38:26 -0700
IronPort-SDR: QUL2WL1fbM8Z/BcbNsWi9WysU1BC6IJ4Fnv1PzKhTg3eLqcXr4pD7SfZ10X4oBgs3nhqIL3qSl
 4htToV5VS+Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; 
   d="gz'50?scan'50,208,50";a="517791857"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 02 Apr 2021 07:38:24 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lSKwJ-0007Ak-Ca; Fri, 02 Apr 2021 14:38:23 +0000
Date: Fri, 2 Apr 2021 22:38:00 +0800
From: kernel test robot <lkp@intel.com>
To: Neil Sun <neilsun@yunify.com>, akpm@linux-foundation.org,
	linux-mm@kvack.org, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Neil Sun <neilsun@yunify.com>
Subject: Re: [PATCH] mm/vmscan.c: drop_slab_node with task's memcg
Message-ID: <202104022243.X5525JzK-lkp@intel.com>
References: <1617359934-7812-1-git-send-email-neilsun@yunify.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="LQksG6bCIzRHxTLp"
Content-Disposition: inline
In-Reply-To: <1617359934-7812-1-git-send-email-neilsun@yunify.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Neil,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on v5.12-rc5]
[also build test ERROR on next-20210401]
[cannot apply to hnaz-linux-mm/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Neil-Sun/mm-vmscan-c-drop_slab_node-with-task-s-memcg/20210402-184123
base:    a5e13c6df0e41702d2b2c77c8ad41677ebb065b3
config: mips-randconfig-r006-20210402 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b23a314146956dd29b719ab537608ced736fc036)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://github.com/0day-ci/linux/commit/73abc13485ec57de137f60535b5b2495c0bac570
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Neil-Sun/mm-vmscan-c-drop_slab_node-with-task-s-memcg/20210402-184123
        git checkout 73abc13485ec57de137f60535b5b2495c0bac570
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> mm/vmscan.c:705:11: error: implicit declaration of function 'mem_cgroup_from_task' [-Werror,-Wimplicit-function-declaration]
                   memcg = mem_cgroup_from_task(current);
                           ^
>> mm/vmscan.c:705:9: warning: incompatible integer to pointer conversion assigning to 'struct mem_cgroup *' from 'int' [-Wint-conversion]
                   memcg = mem_cgroup_from_task(current);
                         ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 warning and 1 error generated.


vim +/mem_cgroup_from_task +705 mm/vmscan.c

   693	
   694	void drop_slab_node(int nid)
   695	{
   696		unsigned long freed;
   697	
   698		do {
   699			struct mem_cgroup *memcg = NULL;
   700	
   701			if (fatal_signal_pending(current))
   702				return;
   703	
   704			freed = 0;
 > 705			memcg = mem_cgroup_from_task(current);
   706			do {
   707				freed += shrink_slab(GFP_KERNEL, nid, memcg, 0);
   708			} while ((memcg = mem_cgroup_iter(NULL, memcg, NULL)) != NULL);
   709		} while (freed > 10);
   710	}
   711	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104022243.X5525JzK-lkp%40intel.com.

--LQksG6bCIzRHxTLp
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICEohZ2AAAy5jb25maWcAjDxdc9u2su/9FZx25k470zSW7TjJveMHkAQlRCTBAKAs+wWj
2EqqW9vyyHJ78u/PLvgFgKDTzCQxd5cLYLFf2AX9y0+/ROTluH/YHHe3m/v779G37eP2sDlu
76Kvu/vt/0Upj0quIpoy9QcQ57vHl/+8fdg9PUfv/pid/nHy5nD7LlpuD4/b+yjZP37dfXuB
13f7x59++SnhZcbmOkn0igrJeKkVXavLn2/vN4/for+3h2egi2Znf5z8cRL9+m13/N+3b+Hf
h93hsD+8vb//+0E/Hfb/v709Rl9OzzZns/PZ+cXHdxd3d6cfv7yffdx8eXf2/uLkw+327v3Z
xdfbk7OL337uRp0Pw16eWFNhUic5KeeX33sgPva0s7MT+NPh8nTMBGDAJM/TgUVu0bkMYMQF
kZrIQs+54taoLkLzWlW1CuJZmbOSDigmPusrLpYDJK5ZnipWUK1InFMtuUBWsAe/RHOzo/fR
8/b48jTsSiz4kpYaNkUWlcW7ZErTcqWJgGWxgqnLs1Pg0s2KFxWDARSVKto9R4/7IzLu5cAT
kneC+Pnn4T0boUmteOBlswgtSa7w1Ra4ICuql1SUNNfzG2bN1MbEgDkNo/KbgoQx65upN/gU
4jyMuJHKUgZ3tr0I7Knaq/cJcMKv4dc3r7/NX0efv4bGhQR2JqUZqXNllMPamw684FKVpKCX
P//6uH/c/mbtu7yWK1YlwTErLtlaF59rWtMgwRVRyUJP4xPBpdQFLbi41kQpkiwCk68lzVk8
bA+pwZd1xgGmFD2/fHn+/nzcPgzGMaclFSwxllYJHlvGZ6Pkgl+FMTTLaKIYqAjJMl0QuQzT
JQtbpRGS8oKw0oVJVoSI9IJRQUSyuLbVskzBPlsCoHVfzLhIaKrVQlCSMuMFe3Ha80ppXM8z
6Yp9+3gX7b96MvNXZbzQCvYdDD4fLzoBT7CkK1oqGUAWXOq6Somi3Qap3QPEidAeKZYswX1R
2ATLbZZcL27QTRW8tBcHwArG4ClLAjrSvMVAcpYD5iWGK60ESZbMCRgeppGqPZrhFxhnweYL
Lag0UhLSvNJKdbTQ7p1KUFpUCniWzhgdfMXzulREXIeNrKEKzKV7P+HweifupKrfqs3zX9ER
phNtYGrPx83xOdrc3u5fHo+7x2/DBqyYgLerWpPE8PDUyeyPiw7MIsAE1cFmhPpotCrMqKeL
ZYrGmlBwCkCqgkQKTFEqomRIIpI5Apasd3EpkxhY06BB/AuhGeGKpI5kSJHLaw04e2x41HQN
GhvaOdkQ2697IFyk4dFaVgA1AtUpDcFRyWk/vXbF7kqsrVo2PwQmzZYLcDmN0ntmL5MF+CTj
GTo9lLd/bu9e7reH6Ot2c3w5bJ8NuB0+gLWiwlzwugrtL8YoWcFyrDnUSupS2qKHeCEAFNIP
lja0HT+qnGdYRrKsOCsV2rjiwrHXZpWY+5gJhvb1WmYSVA4sMwEXaKUUPkavTh1toTm5DmVU
+RJeWpm4LSx25pkUwFLyGl3XENNF6qVZAPCyK4C4SRUATC41zCf18xAbce6R+knHYNCco3ua
UChIkHkFfoHdUHTA6N7hv4KUriv2yST8EPLMmM5B+pmCksKYYAsQhYimmAKXRDE3mrxKGMqL
U81FBbEZchpROvuaqBwsPaGVMgcktDYrr6+y4aHxB8NzAY6JobZa/OZUYbKhh/hrp2K44Q0i
MMesSR0GZk1+ZkWqPnCAhi/DO1aHXTPNM5CVCKdxMZGwNbU7qR6b1RBrA9OlFffWx+YlybOw
KplVTOBMNjKBkwtIL4MYwkIKzriuhZMskHTFYH2t3B1BAuuYCAFJXIDTEqmvC8u9dBDtJFY9
1IgRPQGmnY4KhbQBweBNck5CCT9qlQl8mX2uSQrnQCMk/RzamCKmaWp7L2NbaJ7aT/wMEAbT
qwLmx604VSWzk/MuGrT1hWp7+Lo/PGweb7cR/Xv7CCGWQEBIMMhC7tQkMBbjZrRgyP6XHPss
pWiYNcmSZw8yr+MmYQ6fUuDITBSct8MmI3MSh2IBMHUH4WEyEoMeiTntUhX3JcBmkOflTEJM
AvvmYWV2CRdEpBCapyyizjI4YVQExjSbRiDSBfNLnrHcsQXj3UyAdFJft0LRuzdWyU4Bis3t
n7vHLVDcb2/b6tJgRkDY5xLNQTY4c0NHcgjDRThXJuJ9GK4Wp+8CKwT4+4+OUdlTCfu6pDh/
v15P4S7OJnCGccJjkofT2gLOvqABCaa2XghyaT6Rm3D9wGBht2iJGRkPTz8nkH5/nn4/57yc
S16ehSscDs0pzX5MdBEuVxiaCnQV/mfhgoeRGHgVFS6mtByS12a6Euezqf1AfAmKTMGmJiYp
CGh/2OjN63AEzxVdaqHC+irnTEPiFZ5giwwrbIv88Ary7OQ15MSYLL5WVCdiwcpwKO8oiCgm
jHDgwV/n8UMCCanUhDdrCHKmVE5lLV7lAl6dy7COtCQxm08yKZmemITZYrU++/iaBqn1+SSe
LQVXDNQjfjexHwlZsbrQPFEUy7gTNlvmhV7nArJpcOuvUFQhitZDj/2vf4ZbXFE2X1jZaV/T
ASuIBRxawD3BKcXKVc15iBdMQeSBk5k2gcHOZk3+L4hVYkvoCiDnVjEtgZOvC2lcJR4mA2Uo
rJZpWVcVFwpLTVjbs/KRtCBYZ0n4ggpaWqsBRqYcT4nIr9sM2B8SU6pPzC7hVzUqjwYfwYib
9Q9zCBEYfrICqXiwfAbyBLlBFGaZunzXF22cyGgNj2+dnWpxOjH6Dcr4NZyuiVAYy4uxMPwB
7IJIQFUGcldECLMnqAikM0ozScBFri5Pg5M7O41BcZpo77L7AQkmN+A5aFNd7pMRO888fn/a
DmI0bJxCPmSD8zrcADFZER4x9fnSyd8GxOxiGQfNcCC5OF+Gkj1TZgTHsdY34Bs5JGnicjaz
1467All9RmFprlQ6c0zrotIqd+ZmVCurOsmFztrAAYysVb7mdQtVUppKLHrKArTFsIOTdsES
UJsmi/PmmDLKxlDB1gGovC4TzwyIZGlrAidjBGyXvPwQVAmsv8Kpa0LhkcXsYkKbCkk8N5LB
UQuYgfViadArNp+GcwLAnIfDMmBmJ+GgjKiJYI4jvZt86/TdxStjnQQ22mBOzycERARa1MLu
m91cIr3r0xcCa792Q2xNE6cmI4hcGFWcTt04eJWsujh/RSvx4MizkSaDHpKqAp8KU0lVyJAM
GdYkbLoRH4g8k4y8xLxIsUMLcYwX/44SiDRdY/Y4NT2HJ3piPKqb6BjmiN1TxcoAV//Qa9xb
X5mCOJnS3vatjYfcetkUf0e4at60mXM4FOcSPLTxnvHLc7R/Qpf/HP1aJez3qEqKhJHfIwq+
/PfI/KOS3wbXCkQ6FQz7wsBrThIrPSiK2rO3oiCVFmVj4LD4cjDyEJ6sL2fvwgTdkfwHfByy
hl0vy3+9WOvsm7Y1qj7eVPt/tofoYfO4+bZ92D4eO46DhMyEFiyGIGYOdliUg7TULtO1KY1E
RbXRQ5La4ELRqnBCVDGuYgyoJF/axFefYawrKrDTyRKGtZG2ABFUvcmV9glMQ1H0FIDocezu
fmuf+NExY7NuqhvTvmBDRuwNv2x3ePhnc9hG6WH3d1NC6mItE4VJE8DDgz5YeS3nc1D9Dj9C
YJnTJE6KONvUooEdACR/FdUzcdqzDdWqcnayaZJuvx020dduMXdmMXbDZIKgQ4/E4FTuIN+x
54EduxqS+pupYneTqYL5kFLjCVivUskvvdsomwOcKI6QIb4ctm/utk8wk6ABNKEi4bakTTzx
YBIyxswulvapfT/xT5j65CSmoeq3sSIMKJ0fjeF8aW37UlDlnxaMdBhMAx0GIJWHWgZfmORU
FsyDmEkZH7zgfOkh8awCz4rNa16HumqwWjSSttnvOQzMrCCfVCy77ppAYwIcAgVblybx83k0
CTbPMu2vHG8tFTxtL/z4CxV0DrkEeCsTY7BXa1q2lb98LDCHqsj4fghuOncNT8wtQsIcdMBb
yxUBD8aqBLJwgfXo9g5TgIWkCQaGV1DgHHLlhuoWM9V4MpNGDaKJ4nY/x4cPDB0MPAoe7K/n
inc3B+wBk8nLDQYNagFvLfwLUtPNescixv16jwJUoxVYRROW2f1pQNU5lcYUMUMT7tmtZU/X
qHhlczkGJRFQXvO2KXnDkSq0W06+4BGYAYKG4771YaxE3ZUBxauUX5XNCzm55s7tvpxjzgYz
hyCS2iekJudoTAulGJp5ewtPaOuQZwoeVpPCX5FsFLutiOhShAxgqk9pCxX9bjvN3qknfPXm
y+Z5exf91eSYT4f91919c11kiGBAFijQ+2MYsqZ7QHXXtupaBa+M5CwXr39WeT1nZbDV8IPw
07ECdS+w/2j7atNnk9ivupx5Wusk5wbUntn9NptPVZcTjbigEx17V5+fFEl/2XKir9pRsnDX
qkXjPgvwzuGp1c0G8SuI+ZB3ltYVC80Kc2a0J6cEK2CpYNqpXmLPcpIrXjuhKDa+rJ2eY4xq
HlIeWc4uH/qDYdlcmQWlh0iOwh15CPQv5mZhaoiQQk6TiKuOwOgz/c/29uW4+XK/NbekI9ND
PDoNyJiVWaHQXkL3MhqkTASrLKfQgkGWie0QBG2jWa/FU+M3vbLtw/7w3Up1x0lVW7kYBkEA
OPzUJKHayXeNNWVEKj2vK09CSwonR+xiuwKWVQ7Oq1LGJUG4kJfnXjs0mUgdTQlMUNQcJ2qY
wAORLK4dhVrKIsCkc8DG8cLxTpM0FZfnJx8vOgqsV2HKYGLZsrDdMiVNruOUK9wLuS30puLc
ik03cZ0OGnhzlnH7gviNbBvcDwPbDoYRLNzVM+mbkUkXp0Myo8IUqvBSm3NeqKvRNe2hoD+p
JIOMevdebo//7A9/gY8dqxLs5ZLapQHzrFNG5o49rt0n0H3nUGFg+FJggeu0wuYGsHXWZ4FH
bw4ShGWEex5U4RV6TMwKIkIuBW93VarCzwPAt2VWaaJ7t1pcmxANood47N5+BJomCwz2jYtB
GvCAbVU6QKSyj5tEWE+F/RALls6t95pnvQJubQbq2FCLDrDQSWbZgHn/w8np7HMIpucrm4GF
KBxEShPUoAf3WQvIguwWT54nzoPVBiCKuCUHvMlGqiqniAhu6jrYps9JZdWrK+wrWgrLKKW4
gHfOtbQBqsu8/cHcv4LtLmH8sLINLzWKGYpvJBmPhpIxpdMg2zQJ1TDTUuItQ45fVdjJiSoI
erxVCNb9GEaWTo3WQkzfbbGI0ENNXPHtjPfBh3huogdD3K8wN7ZQEAAYD7FyEd3N7wfLVk0N
wow02FGVe/c4EaLnkjtv6lIuBsBCWoL+LJQYUPgEOWFqu3cDU3X4LoZBFgs24XfEGkPdtW7v
uHXS/mw/9N1G20dHx+3zsUu7W18/QnkI268PUb8QJGV92aba3P61PUZic7fbY8p93N/u7+06
JZie5dPgSacEqwc5sS+jwdqwk2hJSXDplPHMaGT9B1jyYzvvu+3fu9uuaGWNGVefqVpQaxti
cg37r7EMkKXrIHwRgMPJaASjVTXArkkz51Zur06vTyWIc2MUi2GCXE308Uu8/BPquwFmfuXz
+TT7ePZxkhOTXFUjkQImSpuZDrVO570VkoSnsFoHVgPueILc+AvEs4Q6p6/AJHqx23kw3paj
qXAgIkPTdolKWtm61IJ0kejJ2NvRYOmED4WaAbtwkgwA+GVmG5OGjjCAKWRmPnW0Gbef1Dgw
CecDzNEcYEaJqgVtXugMML5/2R73++Of0+YAc09YrCSa7YMLXcFfB1aIVe6JDkEaX55YklrK
xiEMPZCpOfXHChZr4R+Mr5igefhIKbIlsx1e86znFeOut/5Y+c9tIPCjKiCmehoJYdkgE3zq
JW7DgAtoskdYy9iWXpmFPiqqJKSFuev9NMuo/WZ+BREiXA+ZC64TmtuBKiMs5068Bweo4BjS
hTm/yucFiZED6GaaJMR8HzD0gkwza+RFquTN7eZwF3057O6+mW8yhqL+7rZlHPH+kDDk901l
akHzKmiWIGJVVLZ1dBBdtN8n2aXPMiW5dz2sm7hoRur7N+ar0k4AfaPjfr+5My2STrJXuu2v
PoxA5gSWAiPnLj7kO0MTaPh+YnjLVKObBduzDxLAzuY5ZjxBVzO8EirHjLs47eL6aGwqNJg9
W7WEXsrGVZserJtrty4cRgtuF6LRc7XvQipacDvSGxzBuxsdRfMdZS/e/n4YlpNrxb3PLAWd
O2WI5lmz02Rg0cJkzgosDIzgVcFGwKvZCFQUtnvpBrK/nOwYgiam6L7GQyVJbJ11MPFZgF4Y
pclse0VURsuE9l96uKXJsRH1rfXGx9oOXySFVLGeMxnj1QwrvTUXA1I7XEqGvggbuY6oIAVt
AUPlrwGFsn6r993NpneLHNyY27zAb/FGN/7npbSeCuWkzPBoFEeOHc/mcNyhQKKnzeHZy17w
NSLeYx7nX/e3KLqLEiMqi4ZnDdoSEEBhI01H9xVUClqBq79uKpSXb2bu4A4LXZftxXkarPmO
6LENwcv82laXsUSMSOpnbHPv8eu45lsGddg8Pt+bX8kQ5Zvvjt83S+aV9PcAR2VYogMNLoj0
MqnmW0ZSvIVU/m12v3n+M7r9c/c0zkiM1DPmSuwTTWni+QKEgz/wXUT7vjlecvN9lFvrbtEl
x1bt9L4DSQxxoL0zHOrBdWS5RRYaaU55ASeY0Kd2SIKeICZw2LxiqVromaPnPvb0Vey5i8XB
2SwAO/Wn6eX+Pn2pIPdaq4CMi1SOjRExEG5D5c8OXSuWezZBCg/gHvmMucZ48TroXV7RrPZb
kKcnPLK2QCx+N1SbW3BIvvpxdHtrFC9W6FzXgwU8iVHGV/8G3Da5JtbeEfEsyNN0kAnIhobR
c1qwkk3gIN9titYuOidKuCfRH8mi+ZZ2e//1ze3+8bjZPW7vImA1eYbAYWQ+2sBqMQLBXx8G
z1pxRXJzidUpuLdYKkzvDLGz0w9tTrp7/usNf3yT4LSnT6g4ZsqT+VlQZ368xKZIAomju1iE
NDdJnNWB50NMEIg7i7cmrgRTdGR+Lc1r3wDZdJ65BmlO1+gY5yDAqWBBrnQ73cY3b/55C0Fh
c3+/vTdrjr42tgQCOuwB6m+5GSaF0XLPWVsInaoADnOQsaQMqlizJAA2hznP4AwC1Rs/4J1Y
ZLNTkAXj971jtgRUi5QBhHF5Op8XnXSK3fNtYPn4D/6ejdDUUiaXvMTf1TGKgzRJQAm/mY8j
Xp6e9odjgDcQuabcQSHSYKmtcAr1EwRaFomvbjZZ7P72k6FZGJhhXwFEgzDryCvwN9H/NP+f
4mXG6KHpEd2FjbF5ITTgj1nZK61jT+cAoK9yc/lCLrCJ5jkSQxDTuP3tRKcn7rwQi+3KYjLS
I8U8r6k/8OIaTmJOdpwqa9/cm8aQKdYlUxO/Bwmw2FLFJrbNoP18JIha8viTA8AAQO1kGWDO
qYRn2ulkcLwtA2fKFWZttPBmi3WD8G8JgGzPu97bADRZ/5eyK+lyG0fSf0WnedVvptoEuIGH
OVAkJbGSlGiRUtJ10VM71e18k4s7U9ntml8/CIALloBcc6iyHV8QayAQCARCjMVJpPkFBoir
78BdFDfJuOmaTb7pY10s2ml1zNKn0qe1aR900jykYX/Km52ighSifirkB9z6ixgpZSmXWZv4
tA08gqpbrlSqXQtONxg/cFti13ZN3ibMoxDAqxbdVjTxPB/5QkLUU9m53dPu9u2p41gYYjH4
I8dyQ+IY/Va0JPGwZ/GbOov8kCrD0ZKIUa0UYyeZr8/guW5/avNV4cjYdGzSbYn5ujLaKCnH
igIeDCkKcR5ogZzSjmLiM6BDKPizQa7TPmJxaNETP+uVVxsDlZvRJ5ZsmqLt1c4PaFEQzwtw
fak3fgiw/XF+X5Qv79e3j2fxTPz92/mNWxpXOF0B3+IJFOwDl9/H7/BXPfr2//21vAZ5ul7e
zotVs06V2N3Xf7+Ag2fxLA55i1/eLv/8eHzjpz2+CpTYenhbuk/Bem8U+7zINjvNgFQXnOY7
LPMpB1ObteVoT1mbHIAQtaOeTbEPFCfofDMw08Zw3tkDBcsYk5HPIvhY9dTB512hWqMjBRpW
QKq7NM/4nuBi2INjh589y63m1dV5rNfzKFsqsn6BK+/QuAsDd94yrSBXietxKNys4/fHbZFp
Q5cN8eR6bQP1lH/ZpjW6ZjmTfr8oIh44RUSH7vlfVM9Vd9iejmKiRNY1/YnBseiw1GvD5azc
pdTnpnjc+KY8aTEDEBoxPA9RwwJqKRtqf6X3XrLiCh4uCl2xIPzcVZXoO6Gct15Kq2KeAXGp
RlyPbHz3VSwKwVZ2S8g1qRqVgp5BIFzJJxOffuABQ9nVprrlNl9dlrNRC/c29cfTleuPyw9p
rg0e+9Z52uPYqef/UxUCwq8MVFViRlXTKI5a/g/IxCVCpJ9VYl6A3VPonHakNFDrpkF9+wBB
0hv9qoOTd1pIDRDUpwHVZjJFNq/v11/fHx8ui0O7HHWTqOpyeYCkp/wADch4Z54+nL9zJYxt
ZffGAp0BdOEqwSGjTD8j2Cq9K6olCm3u5flEWa3KhZBij+Ra/TLP4cv3j6utw5U4qebQWV9t
zm8PYtMpP+0W8IkiPC1k09ONE04AC/Bu6cgcIhj4Smtaipo9AMNz72edNOxk/CsT4SSQB7sV
6T473aolbZZIccLvotEPVi/XaV2YzxGnxYON15Q1EZsBOQXcGDh/BSmbLd85ZrbDc5VAw9JK
3OpwXYSrtb14T48uJO1Ks2zqckgcqUsS0IXFJ934mFQDi9SQ4qS9X6V6+i3B0GJxLhJpxSWs
zi5eZuc7R0SfaBQ8Pdut8AQinGNptQkzle+HTV25NR1JMmFUuYNz1LONLtPAJ2q7Z0juebeq
O2VZt9feRExIXzZ8n0rVknlHXCmoOHTnwrqM/9dg9gq38qsv2v41UuCIq2wFtlyOH4xjtD+0
nf42VSobmtl2onZG4/+Q2SbK7Uq5ewPy9LJApYmMREdNUDi5PuCpMwAb7lUdqYaBox0uDacm
p0//eH17vH57ftdazfXPegcpAJ5NYpOtMGKqDqJR8FTZpCrgMm0erHn8RGrFxd/gqm1w7v7y
zDevpz8Wl+e/XR5gs/o0cP36+vIreH3/oml0GDeYVNOO0DjyAp6kiovyG/434Czq4kjNGXDY
KACV9VofnN9+D2Lm6bS7om6qXKft4CTQ6jQ+qFP7dGR/5/c6hW+SXWHImjzZjpNd/OBC/XJ+
goH+xMWAj/F52OctG0nUPjhIhs9312+cc/5WmSP9u1VbmqKATrs+pm13wGxRAenRdBNpONUa
4yAQcFCBo8qcOXmDb+bksxhAojV1PiHWrqP00jzzlb4yHxlErnLKcLOoeCruUXJ7zHT6bCaX
TSmgTVbim2SDbTx6XMCm1f+h6SVpBfHtS3edz+SnRzjPz9MOBYC2Uo1RPXlig9ysS0u9acfy
MAutEVltxEPrO7E5ofv6xDPLrI0N8VRTrUPO/9c3SxM1XcPb9Pr1f2x9DqHxJGRMz9tavIhX
KcOJClLhuoLlF9dX3vTLgi8mvvoexFU2X5Kitve/uuoBtw6jje8rHbMYMu2OzO7D9GW55Tsx
kqR6AE4yk6xy0ii3fM9B+Tn9tDpss05/qgUl8b/hVWiAXFVWk8ampH1DvUSV/hHJ08SLMFN3
ZKizhvqtx/Qt2ERtBB506W6FCenqFeZ8HPEhjZwm9wO0y4pqh2bOGdsDWWPgquXUqnK65zL6
fn5ffH98+Xp9e9JuJcaLYweLVQPYKqnd36wN4soP7bEXQKJc2EPDtJzyA0FcPHDrZTPcTYRk
Sl60WxlhjOMn5f6zngReCoLNLBO4GrQMzCL10c9IPB0JMsgCtnJCC2qd9rHvTXvk8EDo+fz9
O7c0xD6PXASJL+Og70UQFaqD5WW2OMLdwCGTohserv1cHcrv5QsP/aNVB394BHOxq+MwGxZm
Ceu9w74R6Ka61+IlBLHarcvsiHt15DAvWdTG2OKRc5zWaZhTLnq75UEJlhNYudIyuw7EXW/L
SaY+XRfE+yxP/KC3GiwtoxszU+enleNm8YaMTHasoF5+fOdbgWYfDTEOTcg1t9HPNN82Bml9
f9LsREViPYxKe4PKDcgk9O3uD3RYhe4xEEyxU474MYCFsVlj15QZZcQzLUBjQORiW+U/Gah9
+ftumxpzusx5s0h9f7S6Je1qV4Orxk8C35bdhsW+UzJNrTkNdhyFnlVW17RRmBBsW5L457pn
kVHaIVuSgE+ocpOAjIwYsePj2/WDmwuGYtLGbL3eF+tUC0mUjd5NzvmhFrS08Zt7okWvE/CO
W8Yb+fXfj4NVX5/fr1pr+CfSdj3lLQ2Y4l5SEXKv+CFmYAiXsOjtulTHCalfbVf7dP7XRW/S
cDzYFHst5mFCWsOzYOLQFy/UmqwATGuzCohgxqVM2WDXCjwEu0rVS4mcH9Offcy8EO0vfOxI
iqrzYPuqzuE7RsX3T9k+c4HM1acQvehVOeBcjZYaM4IDrPACV32sIDGq73VhUmw7kQgKYg9Q
w06gkEOsUt7QqlTz3UWTpxJXWygCygUVu37eQM7IvdhQvEgJ8V6mHV8tX+BajiVBmNpIdk89
oonEiMD4RZjWVxnUkdfoxFUkw5TiyNAuFc/H2CuNOHIuP9O473t1iAwI7P0bVY1cm/wz1lSu
2knsBbf6P7BQu3ECoaS3+8IRlni+DcDuQ2ObrhvCczHbdK17A6aCOj8K8TCPmSULSESxVzdK
O0kQxjFWQ14MWXcEU+RIsqiUJPbIG5XxqQhIiIyWABIPB2iItg6g2MceQiscoau6kDmqCxPm
AKIeKaqtl36ATKcwDCiJbZlZp4d1AVNDkwBdPPsu9HxMvY9l7zu+xEO7zkPWEs+jSOvzJEnC
YAb227CLCBu0j+bfrx1Z1cUO6ngQjl1kDFDbLvFkfS3m/FtmdYqyL43cFNKchHvgv3+8iPS7
7ljfVW7kUAOKoihnPxvQu7qoTquq6DM0CmLm2VRZnumF8laGiaeKiaAq5qtaCng6eoymOzCA
PhmlWlsl1VR/Gos40hNskUyo8ATYH7HwdqEJttBnlOojI503ZgcE1XfWw2GC6hMAucVbgMMN
XrNn1shkxHfvDIKjoRFN9FHelFFAyampVafBpgPHeFtmvs5cfm4jakzf5ObXGsNYUzM0C+2M
huZ8T1pZp46nEIsqDhmGdAA9cQ+v3KJi1wB1kR+ZVXFaEuszWxfbFSXL2pqDfdEdnHXzsyQ3
YFAtN5yOkDUrFaNVzx3zmKMTg54zP2nLII56162A4KhDj1ifAdEZrwIMd18YnzdFA6fLPkT7
YjovgNbB8xTfD/tT12ZpbuiA6TSrf1HViv8Edh3ihdr5X+xEhnvIAGNHan6oQTCwyNFje5sb
myUO2eYIDkAYuZXLUKJrRscDt1HhQLU1531FaOybTx9gOGs/9M3hNE7rQiWbLgmFOFRnK0c0
6lM0pw6JZ+hGoBHPpLHEXGmCxkxlLaiu6oQD2xgQxUE2Oh9u7aOTyVCsD1VqZGeciM7X5zPH
quzhB912VcctWryQIeUqeB7aA371MzNDzIpMwTayK/bNxMXV65pFmiDOIBgBLMJ2R53HNBQU
NA/9BE9ZrjAN0lLlO+xQbTPyDQhOjPggSRvhJ1WOlsjP2EbT5Cd89t0LzkQofiDRmCjqqjZY
CDaZq3Qb+qFq+hoYU233GdPPVjNdbvhu5Bj6HoaWbZX4HtoMDkU0JimGcZUT+Q5RBO0e35YO
wUJdn/NTJeY+0VnUGAIdwQeVn1J8flJyQVEcYZBtvehYqBsrGug6QmpMLArQNgkoQkVAGDvq
zmzWylxdiWPmub9jFP8uawjviGO26ibk5/KfrJS6YSxMbg8FZ4nQKa2bz3FC8ZHgRhy+vAQS
OprMMdTnqLOEzFVw5LkLTjAjdGaBe4kgRDvTrFjvOZDD7/D4AcWOXFG4GiRAdlsGBU/iKuAe
OzjO+GeRo8lM2qCCB35oPpqpHgaGfdo2y2K//9KUp253yDZtti+KLfwueLn9grdoMINvtmrf
BUw3eVXM9EigTPWR3h422z5WsGodwo91oBj/zIscWzAHGQ1u6z7BE2/xArjxGJLIx9yVGtNo
WaMY9XG9I+1n6jurdpvfBhv5Ey3UTXED06xmxejSAzEMUazSZblU4rSzMSP9bFQWeZkKuvX7
GYJ5E/uUmuwjq2o8qwCS2MpiXOb7owh8bIuqyOyo7vry8HgezVn4MRDVKSQbndbi7ZDZbomm
27Ta8SPS0cWQl+sSnoG7OURuORfY5nsXNF7Vu3BxSTBjyk211WVlKL6+viEPm45lXohnHdaU
7uzXMflxOU6/UalW+HB3+XB5DarHl48fdj5VWesxqBTRmGniYPUHQodZF+kxSxOeEjhq73UE
JE8edbkV6nO7Rl89iuLroqaQGVgbDYGsKvh9hkr8fnfatiZ6D0mF9atWu/PaVIxxdsrQGBI+
jz8MO3bCM9n2xeeDyEckhkdGtj1dzu8X+FKIxLfzVUSiXUT82oPdmv3lnx+X9+silSGFai5Q
NQbJ2Ysh18E/Hq/np0V3tCceJEj/pRFBSXs+g2kjfnOWRCo0POyS89fqn+UFxKO1hQhHO1Xi
wdZurfNA8u5ZMIb2Iy1UdYbpQ5breGrgHzod3EmeFZ070GZ1PvGiF78S7oo0jCPVUy+/StM4
9qKNXV5XrLjpiu4MApf+D3tpQ/ZQJdmM6PzX1+dncADIxEz4kl0eVtTYAGY6spwFnS8pmX3H
QuYf90DLm5JJD1Bbt3wE0+3uVOfdEdUcXbPWFuesS60ndvKrMdcCTj5lbUn3vVmVinYWyk20
oshNKoRUGqQpXhuhDjW35riNsN5RFTl2mT4Ek1rDR2DWeuIZSZWqmSdgCbmHEPYwBJVrqc4+
iTyLoL2GwHP1YRXMpXhRuNeVrZpvzWrrsawza95L/idKBAvELgEAUDhcy7f/HQVWBbS2C8u4
fs/0UcGbCQj/qDvaW6Se3keQzi9fH5+ezlr6Cd0I6eC3f8chTT8gL+3D5esrhAj9F2Sohfw3
ENEMMcjPjz+0ImTju2N6yPXXXQOQp3GAWpUTnrDAMweDk0mSxJbYct0VBSS0pkfQ9eQAg9y1
jR+gFyPDImt9X42wGamhH4QYtfJpalVeHX3qpWVG/aWJHXhH/MAyQO5rFseh3Vyg+9iBfJCR
hsZt3VjD0u62X07LbnWS2Jxd90/NpQwKztuJ0ZxdvjVEMrZwDhBW2WdTzFkEN51iwpAJkgC2
W814wGz1x8mRF+DlcQBWJWrZz1wscIvlsmMkMevkxDCya+TkCLu7kOhd6xEaI4JZsYi3NMLc
EtOox4RYS0OSe2SpgR+NLzb3Wjs2IQnsNQXk0F6Cxyb2dO/SANxT5mG3ASOcyKAU6zNOd48T
wHZnj03PT3ZAVmQMRPesSTYisDGxtUfW01AqG92GRiX58nKjbDW6RiEzS2cI8Y5dch9j9wIz
7qt3cQo5Qcmh6nHTyNgWleaJz5Il0rA7xgjm6hjmadMy6iFjOI2XMoaPz1zj/Ev+KAa8qrMG
89DkUeD5JLXbISGGJylzFT/vYJ8kC7c3v79xlQe3TmgLQLfFId20lt50liATeeT7xfXj5fI2
FTvHneTCcUuN6Z1TehifTul6Lnybfrm8frwvvl2evitFmzMQ+54lAnVI48RaQMbt4dDnTrz3
yj2Ktu9GU2Q3z8+QS+X98sJ3EjvF0CBG3O7fgpehslZh1mLkTRmGkdX8mg8jouUFHX/lMDOE
mDdyhuMAqy1B1iqn+z+rzffdKhHgENntd0ePpuhN1YjTyLaNgBpamxNQsf1V0PGr8JEhjNDQ
RAW21JqgWjpQUC1janeMInt7AV5MLwq6Wy0CnKBDGdMQu9ua4Jgieyan3+58LBtpFYZNC0PN
A6Cj978jnEQBOg4Jfks1wsRnIbO/O7ZRhIYGDFqiS2rPszYKQfYtMxXIhBC7Fg40Hhq+PeEd
Xk1HCGJTcODoEfxiV+Hw8fvhmYPcLKPde77XZL57WLe73dYjgsfWr/Wusg7KXM8nNCaQisOE
9nma1diZRAK3Grr/LQy27tFtw7sotY4hgmptC5waFNkakX2OhMsU+021SU/bHxUdK+4Yum3g
24LMiMhp2Ju30RQJGcVjh0aTJPZv6IT8PomJpcyBGiELhNOZF5+OWY32QmuqaKtMnuva5nK4
hEXMXYj9QSPeJzgKItXm0KuRNkZTmpbAbESYmH6m7w5bEawiR/vj/fr6/Pi/F/BFCsvD8gEI
/iGzuX1jIlE4lDOKR0vqbIyqlogFqpa5XUFMnGjCWOwAhVPT9aUAHV/WHdXDaQ0scvREYL5r
rDhK0VOhwUT03Ccq+rkjrpA6la3PqEfRUDaNKfQ8z1VTnwUeHjyqNraveBlh6xgNgcadA82C
oGWe5SMeULCVo/C22BE8AkplXGWeaw+x2PCNxGJzRLbarcNcCSpbEWj3znpF3FJ1zk3N2L6N
+Md4vjWtKYc08RxZOfVVTkmIxuQqTGWXECO4UkH3XGGj2bx1kfA9sl/hvf5ck5zwIQ6se1sF
X/J+B6qSxDSZquLeL8ITvHp7fbnyT6YEEyL88P16fnmAn1z55f185Qecx+vlL4u/K6xDM8C9
2nZLjyWKlT0QIy3cQxKPXuL9QIjE5owIQVgjoh7dxV0VX079/IBcb/1XkRfiPxfXyxs/mF7f
Hs9Pzn7k+/5OL3pUshnNc6Ml5bAM1YZsGQtiihH9sXmc9Gv7ZwY162lAiCbqE5niS01U1/no
+gLs94pPiB/p7ZNEc/LCDQkoMnmUMbNFMNG4Rpw+smVDTC4mG1aHYRP0UJ/nOEGexyJr2hiN
iFnUsWhJ7wjAF58Nizkn7v5IHjk5PtZWGuHRI/LjFNaEo2hZaITOOMFU0CwP1qiBeDqiTUVD
Wr4PutqRt75nLlxIH5ASe5h5b4QJMsl2t/jlzyy1tuHWiSkAQOt1Gu8ejc3GSCK1+gxC6zj1
DMvb8UOXHKz4EZ1hp4i5o3oWA6Bv+84UfXMxhu72wMrzQ5dk5+USpqFempWOAPaSZsBjwPUx
G6iNRU2suR56ay30IiM3+grL10c99HLKcsq3wb05kZwakMIg/54TvhlCMMEuV2UrG9S5LlXW
EmdOyZY9owTrL/URbZfEY/1p1/Lqt69v12+L9Bl+MOn88unu9e1yfll0s8B/ysR+k3dHp+hz
oaGeZ8j5bh8Sam5sQCS+sZ8sM35YMnVntc473/csAR3o2HFQwnwTM1chrCLPUNjpgYXUWnCS
euKddZQ/MByDCl2rDvtz2NOjRFs6MrNHm99WMXolCXWtaC74DFdy1JuT80Ft+mb9Hz9vgipZ
WeKFFDMIAn8yWMbQF6XAxevL0x+DyfapqSq9VOkPRnYu3imujt1LVOHSXwvKA3SRjQFE48la
pKUVFotlKPlJ/+U3S9y2yw3F/acTjLuGB7hxTpgALQmE6P7AKd4CNVe7JBqLHQ7h1m5erVu2
rtxrh6O9teLSbslPIajXbNA10f9RdmXNbePK+q+o8jRTNbkjkaKWW5UHiovEETcTlCznheU4
SqKKbbm81EnOr7/dABcsDXnuw0ys/ho7CDSAXmaeJtUmB8cbe3s9K36acS7tL368pC2TEdwU
1Y65vtZQFhS1E+lFbaI0ys14uIFQQEpgbj9/u707jv6Icm/sOJM/ZVUzQ1OiW9rHy6Xx3Zf0
M4rtSMKrUZ/P9y/otw2m5fH+/DR6PP7H/tWLOAxxRJZj0/Lgmayfb59+nO5IN3ih6qBS7AlA
k13ndg9iEllcij3fPhxHX96+fYPeCvW7sXjVhYgbnh2Blhe1Evw9VjxN9WEm4RRI+dvBTOG/
OElTDBA3TIIWCIryBpL7BpBk/jpapYmahN0wOi8EyLwQoPOKiypK1nkT5XCAzZU2r4p6M9CH
xgKSrFuA/BhijMpS12lEMGmtUBTfYlRZjKMKQybKJklYoh9s02S9USvPvegLH69MqyLG3MLG
1lo0cnMK/OiccRpfDmSzAxFGeeEFWlFGOfdOamkXnP7RvFodAN1iFgd3lTXrQz31LGtKjKpS
3OTPBmMYuiIvMjp8ABbLb0Ut9WQo2M2Vi1zq0+A9trq9+3l/+v7jFSP6BKE1DgRgQgW4c5j/
ICOm89Z+XC2pBnxbh456Wz1gwlqV7ISBSTM8ITi4Sv91GtHnkoHPD9GyiPaJovDIZyqltjN3
7FubMiPVqCSWcuHJphYDYlqQDBjlcqPDVPdSUkl7zxnP05Ku6iqE4zN1xJB6oQoOQZ5bmqp3
dBdY9PJc60rZhFkif/RpsS7I/IyNpMuBR3KVtDXxZ4Na0noUEhXB6MIwWxPKjokpGeah8CCu
ksogUwlh5kf5mkcl1aHKv86SMFGJ/wi/WRIFqhZlu1SpMwZfSw4gYhZklO22JojqyVoyfK47
qBXtVr7jM5zQKhyb6jKuaq9batkZvRRpqJo2MBGGb1WwSLi513pFcyjVk7pEKhTUabP30yT0
Ue3b7PEmyf9pVemJjPetY2KtKxnaHOQBaayNuB8s543QnlXr2SvOqv1lCYfDs0qLolRzyerS
3xuTomYz6pVdVJfHE9hNZp7qzo8nLHda5Cx5LsAIZX7uHKZ6Mt7E1tGXvzfF2k34kSstyUJb
T5OL2KBDMJBsUOldhI+cTfX5XlonUaH1MBBE1RQn+B3SeQW98GkiW12UBaw7N8awY+Yh6Xa6
QzPsmZJMCFDwuQn9uTNZZoflwvXmGPGHiq2jpalqVHnhzMN6zgeBO+VhRaCPDibOkm1V4CdU
kG7ykW0VZDOXu4xhzfUmYXWqr2qSD3lgUkuX/cvzbhRH3HPQqvniwTZ+Ph5f7m7vj6Og3PWv
H+2ZZ2Bt7S6IJP8rKc+3DYtZCmesimw0Ysy/NEQ89Q52mYPamj5169idgsowodQTZB4QLBNz
RiECKyKI9zQWXWrPIdjbFhpkSbIDb9DuIBv7XBwGtRwc/U0ycyZj/NNSEnr4n45FgQ6jqppk
pC+sbjbW22ZVB3sWmt3Oihi/uTTaR0T/IFrEVImItK61Mbi0fUsbmKGEoox6G8QLFWa8TDGl
6+x093w+3h/v4Dz+iEIHkFxnBHyt4u+LGQHx/5FKL7u1abF0dItyAwc86WXch9qFpnSx/3D6
mv17qDEInfl5i6GGRQj/LpOuM/i2Zp6qlMWX2PrE2unveExpoiTEJq78sKcjqp8bBZ2rpzAV
m00sLrFkNq5ZTlZ4Ppks6GIRaTbXF0C6xtspneV2OlUV6CTE86YXZzewzEgTO5lhSvXu1nPl
pz2J7nlULdPAm8lXex2wCp0FAsTWt4IzTGDbg5AhYK6Xug7VdgHRp0CVxyr99ByevQDaMcXA
M3XSKf3KpPB47801zjV36YpMHffyKCMLqbopM8wNEa9H/k3tDgdi1FtA196WYHdicbAr80xt
cmbPsKTKRisnulEHOMiSLmA6Di5ukd0d0oETOzhi84k7NZcEoDvTiVnLiC1c9V1ZRpzFOz2/
rrPZmMg2yfMC4+AoKgX9nuqDGDleEOPFERAwfapCHPRIixmFZTa3pl461A2BWvqcWCQ6xDaR
epyF1+8WsCTnhKg6GXu342DZYjmZoVew1t8BmY/E1To9uDi/QQSezMjXbZljviBmeAvQ2wUH
l4Sw2gL2VIqbHA2wDQDA7ng2fme2Ihc01iez54i1VugKzjc/K444vyxJnF+2+sKn4ZLKhj1D
CpsS8WFVNSxYC5xnZLZw4ppQ2pIyA51ta51AZunRD3Myy8J5Z+5XtaKroZDb5pjQhKwqkO0p
PAuZTsHWdeqNqYrBGTHzQ1baEXquiEtuOAKXaRIn+rlU4lCi9vQYl3WpMwPLHPqxXuaYjQlR
qQUs1WXZ1JNVenug9pWQFTLdvI0RSAJn2MunmdpnjueRQTBljhkpUyE0n10WNTgPGRdD4vDG
lOiIwFw1CFUgUnVE4gA51bhu4hCablvMnnqe2F8uLOFmep7BPPqdda7ndCcHuj09g3OYWp0S
m9yXRJaWKwwOkynxPdXM9R1nHlGIENMsiOwLuwO4NbhL9jb3menSigYKz5RWget5soVn0RqX
WSzqlgrL5RmLLKQLM4lhPiEPiohc3EW4GTyxhnI68dEjnZISke4Rg8rppJjKDfMvn06QhQw8
IDEsxsToCzq9nqGL1TEhwXE6PWEAmb070Mv5u6O4nNOq9TKLxYKwZ2G+bjRs8HzmVyjLWelc
6jsUJ+fekmow9/1Hq1cpLJcmFjAozhs7eu7vFi61ByPgUesCAosJuaFw6GIrBQe96pb+DEQl
/1LytMRXXuh0vKOuCnM7Fgz7DjcqL/Dq0ONGNQRH3XLQ+i3KzZRShJAUAr8K2/un3xZYBcQV
27ryy42Gmm8M6L+w2ASJqiQhX4cgh/3eMcukG7PyumLRVRNlsuOXltjaRP2WEnK3LN0FnXBB
I7zQYEj0UTCoEYWmyRsmNxwZKygLtRiccsprtSIhBvOq48ygrtJdBGKcHOirRaLDTV4wI8Em
cefLRbB3xmMD27oqSVxOq7QdVDuZVUWq0YMraI3iUBqIG3ZlaWAmPz9mUQbCWUBQ+sdDKcAe
ez3d/aR83LRJdjnz4whj6+yyiEpqH702qzy6xvd2qfPwl+6tbaAJj24kgrHWk6BIi0qDVxU+
6+cR8GyuMbpGvo7Crrb42G80kCfz/Xqi2a4Leu6OHW/pE90tcObOlFg+goqBfFwjM/5+RW7c
A6xeqXI6VyyhJIUBdbQK6J7TO6Jyp9oTl7LA31PHqkzM6aaLWRW3ON4XeaJz/KleEBA9o06l
p5gUdkTvcGjdohGYrNQ5EI0+AKJ6ymjJC89i+dXh9CUNR3lQPk+vcEvVPFv30Mw1ElxnGmVw
6K5N8tBZjIlW1K63pG7VOVoHPjoy1bKq08BbTozeNuNY9POKq6pq06ILMGErG/WmYJppuSXM
ncSpO1nqpbeAM5hwDV8ufyD8cn96/PnH5M8RbFKjar0atWo8bxiXb8SejneoMr1JwiFiOfxo
6k2SrzMlNrnozzTJt5QmjWhdeoCB0KqIru31ruSRHiwzFD8zve+RqLjRENkQASI4wNaZO5ma
WtrC8hm9+tTn57sf2iqn5lHVcLzxjCwwSf18+v6dSlPDkrqOVM2YPtUKR0JbTHl3KlpRPbVJ
11Q/+0EQYUShBKSRm/5p/ul4+/PtCfWKX873x9HL0/F490N5s6Q5ulyrOmiU2LhIyILJdLaY
LExE7EOyQ/8a43nXBbuhnpkRBaQGKUrNpyV2aoQfnl/vxh/UXK2hGADL97Dldn0AhNGp07VW
hgZZk7yORSxeS16cQcTlJajNLgHBT6hsyZWr9oqEhvcEWA/T5WbL7K9W3ueIqQ6UeywqPtMX
HAPLYUHGFewYQtbriJJIE0R5vatuLpaCrHPqEUFimMkPuh19cwMn9ZlrArBGzjTrRAni/uov
1qhiXuDOSb+gLUfC0okju9dTAdX4QcMul30AFjKoRovzQLIOOaIc0mJCUSzuzJ7cElFK4SEN
PPsOnk5qJZCEQm+uw9qc06sr19maSaoAPa8vqboykKKWY0r46zjiDF8SiUxhSk9ouqfGY5RT
OJeGJMpAFCW/gmrvai4MSBbaOXnPsFiMyQFjIXxiC2PxRwca1lWBUMRAftyj3l1NQgYiJvEd
wqRwFMdxSvOXAZGkOrQ2xa2f5dtXEB4eLhcfZIWxCbTLg0PGWJIYFBdyMt0jlg9cbxZeE/tZ
kt5YSrS5nlJYyAAUA8PcWXiW7OfT9/OfL/4FD+kKcmBwpmqI1x6xB5frZ1+9ncxrnwyM0H/z
i1oJDSLRXbLpiNBxOzoGls2cqUOtIdMFV70xv7DSC0jF1I4BZ+nYzPHzTX6Vld1+f378GJS7
d2ao7g25X4xq+Gs8IQrRbxz6dopocdSaMnfV1gg1WZComXBQdLGK6yIN44Rt5I4KMRYiSkSm
IAnQahdTbtbZTR6gmRFtXCLSNVmxj1rjKKL/WyZNXbqlsiiNUdZhWk0R20R+qT1rda7J1fr2
UuzuECasTH3JRgvje6aBdBW3CafT+WLcHROkYluEaEKSrdFML0kaJSv4IWvBlX7FVdRLP5cV
E/nPDvw01shVgb37yVPJ4t4EznWMiUhgCroqirrHPnzQmgqCflPEsdwyGaGttSQOfulDdELX
rOGCMinIvPYxeQmBZkyUy+qq5ufzITmn4Jl2R+USlqqzTfiNd5wU66ZAT5GQj5I9pwYV2jaI
S1c4Hq394Mb4Krg+5sv52+to8/vp+PxxP/rO/f4TypvvsXZVWlfRjbgGHr6w2l9r5mnDXWNS
Msl3uPn19pzdB090wwZjeQepdAsJP/D0kRbFdicZC3SMqF8P01Wadq0vfJHJMGd6Kilvk1zL
qexjVsJY4rnyE5gGeVZI9pymIlPlgULFyKdqiSUIg2g+npFZI7Z06GYE3Dq4CUpL0f4hwX/X
EWUPKfHhXRTd1fuAjOc8MLShPDIlVvYAr2D683VPnC0fvx8fT3eo//1ibicwL6M8gZP5ejes
lwSmb2865niKpawOk4OhMy0s+R94RCQLtHAJqA52/VRuv1+yG7p0XciAQFlHNtcgUedpEWyN
hSO4P9/9hLzenqlgy9wYClXUf6sUrpROdZNhPaXh7IbBmJrtFERpMYFFL9gkZVMm9Wy6IndW
supSHn6Srgr6oTSBCbKjXqzERcrx4fx6RAfu1N1YFWVFHUEPBGStiMQi06eHl++EFFRmTIlx
wwl8j6PkQw7mcsgSTpF2pq4aSnEdN7cLvE54uI/WpOXt8ev16floGpb3vNzMtE8Azf6D/X55
PT6MisdR8OP09Cfepd2dvsGcHJ5xhIX7w/35u5iqSk92lu4ELIx3n8+3X+/OD7aEJM4Z8kP5
92ARcnV+Tq5smbzHynlP/5MdbBkYGAcjHopnlJ5ejwJdvZ3u8aa57yTzVSmpI0nRi/8USsBF
H7LpQUN3qypaC6Oy6VClf184r+vV2+09RomxtZDEJXEA39AT4/M5nO5Pj79seVJof0f7ryZX
L+RxMSOuoqtuh2h/jtZnYHw8K04lBATCx757FC/yMMp82f5VZiqjihugiNPTIO/LLGgjqJsI
kpx9cNt3OVEXICGMDrumEc/cQz800T7KqRf46FAH/J1BTNFfr3fnx/aLp3IU7LYXuhY1w4IO
gKv54G6Rss49OgR8y1DVi+Xc9YmkLPM83Ye6yoE6CHqNCR6YsvB/l9TUw8BGlXK/InbzJo8y
Wv8tIXtISETDD3HvrpKM4GZIFFaPGzjdBFbz/4GvDqgwYoijbV1cS0+ESISTodyxnIRR78lL
S0R7UUlJIwKXW6vG3ysX5rNRUl1x77mmCwZAcKuXNFCg8on0UIKXAZWPfEOD4Ic4cgTljhRE
QHDCIqkt2qhKn2mJZtNKpE6/CjZw2sD3VRbVZBC99xC/3syXyhbPyasqyFi9wl+BRQFfMGIU
p7RZX19gQbVaHoHe6PZyczNib19e+KI69HlnLgzwUF2JyIMWNKECr4Ks2WI8a/h+HJ5ymF6Q
oouhVRdVBauQMtUkGPOk5pvEwpKoqiRNegXz032hQjjZk+ywyK6wZiqGDgVSqTFKjcuD3ziL
PGs2TJ5uCoRt1ZtSBFFa1Gh7HlqOuMjFhx3Tk3NQHZe+aNxRAl+xsg7rkl4IsmBFTwnfvDXz
H78+n09f5UUedr6qSGiPFh27VAufenXr3h97Nk6wPjO2aJnBdA19aXkSQCU9Zm6uR6/Pt3en
x++UOyVWU5co4kOpJS2gjtKsSWrGdvLY9vSyppTCetgIP0hUdsgVTVCJ3GLVGBt+cp0nvOzA
4JN0ikY4bdD8n0jAZrci6X0IO6VAWDGofuTQKoqTWCukCCSdPa5WBXLUYXB+zp3nPt0ff1Fu
vTC0ox+u50s5qhcS28YM8xpoeCVAzkyqCEkgLErZo0RSHNRfuLZrncfSJFNWfCQIzzo8kq4y
ayr4O0cnVtJtxQ7pSs/WkH7nh2FE6bgMR1vYvmFZK+udEn5XOR5n/P5PhC8dbpRVuU3odZxQ
pYEvJrLffOEdJILBw0tdJu9NSCpYAmMSSBfA0QFPxLFy69fRmhXeIEAX02se3g03yKHdEA7l
wQJe3ZSqsxKFDDv/mqmTFF2fJDW1Y8Ss93E2rFLWm/1EIEIXZyjdN/O42hU19cFiaOKYTRtZ
kBM0hRRDCQoh2DHlBNHeGcd0LxZ7jNh4o8Fi7bu9+6HqdcQgOQQb2lVdyy2EgJfj29fz6BtM
kmGODJsVzMeGXK85AnM1DWFHH1q0japcbqEm3Yp/um4ZdjyzEsM3wcTLDarDRJmUV8ED/Iq8
hnMGny9KJ/ek9q0B5uAA/hPHzFFy6CjtUj426Ncw6QCKY3m2DCg++eDElD3sCZTtsszXzhBd
soNf17RrIcECa05ZoW7TEMuVGBTB+1lRSRI07rtoIO5WSddxwztIS8NwZXi0DUWhRDE9Z/q5
MPPUyh/IrA6VdxcO+FixCwrifXLeQ0S2LAp2lVD3IpqyqzcgcCYB94NEXThXfqYuaVWR8bS0
8MZAhKVP6nlUXxfVVp6rlJgja+HDD3QS6MNu+enD6eW8WHjLj5MPMoza/aW/jpqpO1eEKRmb
u5Rdssoy99Rye2Qha2dqiCLeahh1fa+xzG1Fzsb2jGfU47fG4lgzdq2dtCAdRWks1k6azWyd
NFtai1y61EuSyuKNLySn1CFUlunS3pMWmyNkSliBk62h9CGUTCaON7b0CUATtVP427LenK4o
27B2uKPm1ZFdtfSOPLUVY5uWHT6zJZy/21mUpofSQpduwsRa2YmtttsiWTSVPrScSr0mI5j5
Aa5dst/Tjgxn0pqfYpXcBAIS6q6iLqp6lqqAxVO16emxmypJ04SSZTuWtR+l8gm6p1dRtDXJ
CdQV710fzMKSfJdQO4TS+IRqP4jRW6FFIgG7Ol4oe0bOIz9T8mHRXF/J4ooiUYunj+Pd2/Pp
9bcZSn0b3UgrPv5qKvSjh8I7CmjS3UJUsQT2jbxGtgrEFFXUFqIwbMuYCTlZAWjCDfp0rXxD
RBgOyO2G2YQgD/FborpKAjquTcd7ESTlQ/4Kv/GrMMqhyihaozPfhju846YI0nu9xqQ8Txo5
xJAF+t0ky9SZcaFipeILGMQMFPZZsatk5SdWQ5cFPCV64hWOeN+BIft68+nD3y9fTo9/v70c
nx/OX48fRTiwfhdvN3ip233pc0hZ9ukDPlZ+Pf/n8a/ftw+3f92fb78+nR7/ern9doTGnb7+
hZrb33F6/fXl6dsHMeO2x+fH4z13+Ht8xNuFYeZJFlWj0+Pp9XR7f/rvLaLDtAwCfnOJhxQ4
ClbwcSWo8YMutaTOIrk+R7KtIydB78DpLy9y7eG3h2DMutzpu3KVFYsgD2rAxY+C6DWx61j1
NV9wxLC6qAySn26yYzrY3q/9S5T+rQ+yJHyfRXdLFTz/fnrFuLXPx9H5uQ0SJw0AZ8ZTreIG
VCE7Jj3yQ5JosrJtkJQbeQ5rgJlk48uLpEQ0WSv5EDXQSMZexjUqbq1Jh0jKKQLYlqXJvZVv
droc8PBissIWAUuC2Skt3UzQXgoMKiwKfxMmzF+lETd0oJdbLUF0qCvfZFeZ1/HEWSgGFS2Q
71KaaFac/xMaHShORIHBzi012qlbvn25P919/Hn8Pbrjs/g7eh3+LV8MdKPL/EuNDilFrhaL
ArMSURCaExDO76Hqt7ybyBklH3fN31X7yPE8rpEv7rnfXn8cH19Pd7evx6+j6JE3DcNJ/19l
R9fcNo77K328m7nbady015c+UBIdaS2JCiXHcV48aerJerpJM7Ezt/fvDwBJiR+Q231pagDi
JwgCIED+94AvrxyPPx4OhCruT/fJQs39K1PdNDGwvIRdXSzed6reXnx4/5HhHSGvKowCn298
L6+rG+ZLCUWDiAseRTFRERTvgtvPMW15ljNF5UvugNAhh3SF5EPPTE2WwGq9YeZKnauuwybG
jHo79Onql9uNFl0Cb8txuBN+x9DIYd0kCHSm3IxHCpj6NjN8jUgZteSAt1w3bgyle49lfzyl
Nej8wyItjsDpsNyWQTKzBWe1WMlFOhsGns4cFD5cvDe3BUVMze4CHjvzCDpxTcVqccnA0lKa
CjibTuPSEdRNgU8JpSzcl4IzKifs4uOndPcrxceLBV8alyk0ypoPaVEDaBmZSjfCTfeRXlc2
AvPw8kdw2DFKgZ6VDf2OPWEa51NtKCI+ZQCDmPJGkxUvGgnGGue/HinQKonyTj3cR7bUfuBz
xNwewL4tYZFL+ptWZoXojHQ1vMZsCFJ3fJDLOIuXzJgPGxXHHLv7ml9e98djqDi7Xi1rMcik
5cYjGtfwmU1sGT+5ZIq5LFOJYD2oJmbw/vnbj6d37dvT1/3ru6v98/41VvEtR7V9tcs7VNji
WgqdXbnAcgZjhVwyoYTjg+t9Em4TQUQC/L1Cw0BijES3TbCogNmr8uOWONRPWjOS9XNa5UjB
qbU+Etj9pjvXEtTFz62GkVC2pDeqrFe1HHiX8ihnxDllETsPhs8ytjz+PHx9xYeIXn+8nQ7P
zM5WV5mVQinc7hsu7uMcTap6m7gYsP+RyizZlMNH1Nk6zn09anhjCalICAnPLEKgG7cyTbGT
i7Pdmt0Qg5LOdW1WZZn67amRHNG4xcW9LvmAINFvG3xmp8rJVTRsO+Zhrv3rCUMqQRM2F9Mf
D4/P96c3sGIf/tg/fAeTOEyswpMOZAV8CaUfXVf8ueMvlO26mVWt0FvzFMbScXY9y9L4yJXQ
OzoS9KPpBJ05T4Csgk0bU3c814+LbWrlEN+TlCtdBPE/Gk+r2nWTBdk/xt0mPNOsVVPIVF7t
KkUpVY3o0moNnkVFYFDawA4BaRmALj6FFKNe53EFFDWsd/zOiFrm/4KfYzpbVAhi6iqX2Za3
XTyCaJ8ljNAbMSvpkCJj/buA+xRokXmwX+b+dRhVNirTftlcc60i7Z3XF9WQLljgqEI1/piM
KDznRMFLikAIderB5Oe7U+MZbggtJAe/nKifPGiZs6VcsqWgusCQE5ijv73bBRfYm9+728+B
iLFQCkfrOM+/JajEp0vmO6H5iLUJPZSwvM7R9B2I4vmKs/z3pA/hxE2d313d+dGlHiIDxILF
1HeNYBG3dzP0HveCxYA3u9Uq0LF9KDr6/SUd4KBYH5f5T6OIvld5BZIIdiihtZ89ik5ckCWy
iUGpVEJ44XewxfoBgmSkinhcPUbAIp7iIpDfsuDBQUQV+MaURmRJih5TAmXoIu1SaXflCV8P
pvUxJSGqVa1D7JomipUEPCpe87e+uU5mMAOg+2ruiKG/qo372av42pP7V7UKcsTw9yg62MOr
MKzBSX4xKLCFwxWEcc2gD9RMMSBzlv5dFaoq8NYn2JC1F9hKyour4aboVVrvlRwwIEMtC59/
lgoG1MZoeGF/CP38l8+QBMLjAuhyEAtHvv1CdiqGGfUVtllQyxfvJxQqEeE+ZJWIRAeIu0Bq
bV/WRfUh7Z9F6llkfQ6ZN13he+V93HpEhuczTmUi6Mvr4fn0nS6w+Pa0Pz6m54XwBy0CfAGO
XoYZnef/maW4Xldy+HLp8DajOi3Bf2Bq22QKduqd1LoV8ZuLdqRnGztax4c/9/8+HZ6s+nYk
0gcDf+XS8M2zNWircEF7Ghqy2wjdfrl4v7j0WaGDOcPQ4SaM1AFbi4woQLILupSYHQByrgVW
Y9eNaVBvn0Jrqr4RQ+4pBTGGmrdTbb31RT2WAWIrl7vlus1ttCI+RPphEQgDn3IjxQqPfDFJ
gVeWf3V8aYDJAXB4cGxX7L++PT7i8VX1fDy9vj3tn0/h/ZfiyqRcau4KSNvQPulkT8Jvg/8y
HevpOIQIGox9ncloCkrCQ0MuotJJ/HXWixZ0x7YawCizFVsiwkU/d4MOVObcKyXDtMV+Bklb
5kTixZJNn7LxaYjGQ+06Kd+2vayWQ1piUd3MnXMagnULDA5GYFbL9GuV4ft9lOTHjrJrteKz
RwxagiEzW3005OOnKI8NCcu2v8SIIVdhzKhk+AlDPxP71B7fjuVOkpOCkuTtINs+CCO2b2UB
Nt64Q4RzySSnlVSw2rT+sSHBOlX1qjX2ZdR2wmu5PLMEzBSyL4/V68x4fXy97Ea68QJFrgbx
kdbqMPOSjrbcdXgbR5+XqGISSrZgMpQyZwq/4XjFzhQlx9HpO9tiKhvDl5ew5OMJmEHaxbkS
yIypH8VgMeISFYVWTexaFNasiY/8J56JuwZLNJSD5rgG6d+pHy/Hf72rfzx8f3sxEri8f348
+nxHWeqwJlUXuB48MIbbr+WXixBJmtYaL1OZNma1HDBQft1B0wbgD8VHBRvkrlxD5wfRr1ii
zTXsV7BrFYqLuqeFbOoKUwjO9dpEO8F29O2N7ub1luEUIMGg4xHHrq+k7LgXrbFWT3D84/hy
eMbzTWjQ09tp/9ce/rM/Pfz222//9BxAyl1HfEWao1VW/QRFjff7zGchUAm46mIGRRNpPchb
meyH7uqEGD6RR93ebAwOlrjaYPTQ7JLSmz6IdjdQamMkxhAGmjVHyoCNYQH1S9ml7bOjY7zl
7k6jubEC3sQEFWdcT2w3dnLe7unzZfi9r+H/jfkfmVkLUKpgFS9rcZUMWwonoUMfTTDS7TD8
aN32YPTKwjp/4tJWRnI7Td8smO9mv/t2f7p/hxvdA7o1gyRzGt8qHCq7WSD4zE7Rz9irhKQs
lSq6V3WkoY0GlA0xCHRm6nUXB8JHC3+mH2E3cg3D0w6VIF+pOY/K19ymPMcjQL7D3FaDYRgE
CaKPPQzsrN7nIS6aVQTJa5fO4V+DEbQ47CBITqOma22ziJ29rjpTgY42ulHzP481t+qzNO79
6GXUAVOAYfCGcsqg++iYjkgwyxe5lyhBNWkT9SG3H5pSJqRpDibnx4Nnas1DGUemeZwAQ9cL
EH3gb4c/IAlAUd1UaD7FHfeKsvZAv/HV905L2QDL6mu+W0l9ziKPK7KE3r7grE7X42nJKEU+
EPcNZ6rOTfbcPE9rNphkPlnOlWEvVWPfOCVlLa4dhgn0h2UCNwpe2phyU4vBwrlemtm3fNUn
/NK3outLlTKSQzj7NprUDMQq8ILtXhI26uCiBdEmMODZfMDGEazouiHDfb7Yt8Mcw3nqftsO
ZQI1vTd8bZ5LD8ygkR15f+Ek6TwWP0/pKgRLEt2Q8XWF4ayYlYx/1jq0d2YIzIUwF4vP3Nr7
aWnp6YdDDAKEdJcI+EkehDQ/HaO/RTxmsdKCLWQ9CD5ZcRQjQANmvlU50vlHARJhfRab0P7V
d/ha29w7zBRbjw5tsJESTffpAMo1t2sG2gynzEqha3s6yll7eVPgiSg5ADxhbKB41+J0OmYp
0QDTFZv/YLbEO5SL3pqxqm+0AZusU/NJmOMZ9dV3kg774wk1PTQzcryf5/5x7zurVuuWz/yw
qg96MZW2i7QKb8PsGp6MK04OJsWeIQ8yjymqfKztnPdqlSvv0nRrtIKpCmA7yV1wVon0nDIE
2zXtSDDWyP3xZZD1qhh4F6gx8vBgvo/yK0OSpmrpotJ5ivj7YHX0xl20jbghc0o2yY9UCcww
gm5WA/QPvuLTaMq4R0l5rgTYfnD3CZezO1lhRBr1s5S3xboJbCPTf3MkYTI/+MXu6Pq84/LM
Cb0C/ODfPUBQG+bwFACzamhEcAOj8b2tw5s5fNytOfgLy0l9KwTWePIyWPdiMALBuTiBQMgm
7ajZpy5cy1UYoUfgm4ZM17mvKDaKEoCiceiSkcFwk1KRs+4mWJpVW2DtZ8/wqIhlpRsw+GQ6
vLRDzH1m84AoqytsE8j3HLSpLho50tTIMZaQh+4y0yrkZkpamhBAOS6cMEmFl5tJJos5gfo/
kMj+Cxk9AQA=

--LQksG6bCIzRHxTLp--
