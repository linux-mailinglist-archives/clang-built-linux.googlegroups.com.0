Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDMV2XWAKGQEXUXQSBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 73891C9612
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Oct 2019 03:10:38 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id o4sf468614otp.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 18:10:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570065037; cv=pass;
        d=google.com; s=arc-20160816;
        b=LYR4R/qU7BZzaHu8AH2Jute2PyZ3NXC7GIperEQSilOvxhQWZOLQdIo9y2ixX81ym+
         Ri74yDVMngumMzA1h0bsBlXkgCD1CxyBI++5j858qpKw/TIEBJStIWT4uU/VfRhlcQ3o
         TDok4W/iDQIUOHu2ufFZ5nbh0JrqDReezbnZM6l+RiDWMo6RzuOqQ6azoCtLUph8YIgt
         4O7n4JSvKPu3JPH1bOwSHiYQ1qJB/pfO2vto9EahfNeriJDTcHd2yopQP4Xk4kfqzAaY
         UK0yzOQSMuV1BhyELmx1t19APfAa0lMBODKYSip3CKyfFhI7R8m+Dy4Yq1quZ3IMjRaQ
         uHNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Qh2YAaXSuUEQxnLYDMRDy4F3kqAUi7EZiZrqPmOrcso=;
        b=M/hsDfFKNq83Rv6kmyGUbVXj9N13lOC0ry4hPtjkT+isFCAlGTwLoysg53zDM90Uhe
         E2fG08MjTv8DL1b7SeLTMmShu25zrIEtMh+Zkdur/wGxHWyvT8RJMyKl7i67almaPPiG
         XR8X/wYmbsNDirapoE33jPTI47ReO5XRl1ne/g07zs1SsMNqSFve6LTDzlJF4ZxhDJgX
         GV2yxfX1W73k8S95SBY+JyOFdw+Z11O32Cwxn4lhnBed/+JNCsI0sjUS7sGMpKzezw69
         NS1yPhYlmRa6pz8eTTI/k66GikxpeAM0VTCo2Rz+otZ1rCuZs+QgTiVAj95KqZ90aSJl
         kqww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Qh2YAaXSuUEQxnLYDMRDy4F3kqAUi7EZiZrqPmOrcso=;
        b=amCmimBRsvotZzmShhlGJg5oMUOPVZq8n4MCTbzU/P0uG3nuW+5hkxWSBDD6Aispwy
         aRsda2SyxOkAMAAhhmzsZrtri7zKOkOi60InpTTQv/ErEW5om8PZTE0gBQ+/+arirBIA
         ysA+oCV2ezRjSGPIIpvusBwkSC4CJHlIBUtAZlLLV2qodNJitUWOKiEeEVlCslFhU3wU
         i04IzaPmJU39HJORjfWUySIRrSaEesvMSy/K/rEjmhjIo25bWDoXEZRpMQpTQTy5vmNf
         rVWN79DJ3kUzpWcxp6z9+7fsNvKgBFamx0DFcur8HPxjQFuH+mzxX/veXwLDJJmzbqvG
         YskQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qh2YAaXSuUEQxnLYDMRDy4F3kqAUi7EZiZrqPmOrcso=;
        b=N12EMiGF+LtQS4t3m2sRlRugxosqJKgaHigkP9EOGzan52qrgGNpEl386Eefr7VdQm
         klnQy7enopx+GUjhwqH/d6iS1H/WA5EZLQHANBtAYHAZ3FOqGOMzWyoIYl4Bl8ZRoEoM
         SBtFCiyux8D914FWViJrSse9lqFG7Aco0atcUkn1602rV4IimAUzb4daUeSMaw4nsevX
         XJxzw19JKffWhpQy3Q2c3Jx303IhTf10vCzem1a26nGfFqNaYug5xO2WmMExurkmSqPr
         NZkXAegVO+ngyLVZzxdUz58voIlbJXlNYuo0RQz3sUZ8psiTS36k6STzkwtaD0wHMkVb
         6JyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWK27cYfUpSTaLaEn0UoKbEAiSD6MKu2ZVy1iwwpfkcm3Hz2TG7
	QwtDs/fobDkBfTHmY4p4Ib8=
X-Google-Smtp-Source: APXvYqwIMqB2YEEDYOFtNc27GizJgCGSzA6uuqv/Gz+wuSUx+gpc2j9Fpa1nqM1Q2LL4dpxciw8EQA==
X-Received: by 2002:a05:6808:28d:: with SMTP id z13mr706147oic.97.1570065037206;
        Wed, 02 Oct 2019 18:10:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2c42:: with SMTP id f60ls820446otb.8.gmail; Wed, 02 Oct
 2019 18:10:36 -0700 (PDT)
X-Received: by 2002:a05:6830:154:: with SMTP id j20mr4699012otp.123.1570065036886;
        Wed, 02 Oct 2019 18:10:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570065036; cv=none;
        d=google.com; s=arc-20160816;
        b=Kjd9Bnj2v6BK1r6vF3Ht8hKzAqAKmmgoLTLq/xBKd9Z2LkdcuC0950zuUIJ3i3+AWL
         e/iM4/QrHNpdvmZTc6rSlRtKpQMxJ2tELgH3ZE8apmBKj0YlStItou2UK3zjD6mLnOzK
         tff8e57MAV6NYEU3UG+hNaj4TafuiVirdFui80tEwsrobVyu8Va8Gpxv0cTvXS9dG0KX
         7hkA/gpHUpjCfFN56oMVMrtRgRjvlNQOPYyovEWT04wH62aNnNfplUdH15h5SOp0tRJm
         TP3rjxthOqYmEe+JFw9DXd+jr5DvibKlso//DdssnpIbow6C8QkFjBarr0prEyIeE5t8
         OYww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=CZk2aD13cs2IPf0f7KBnlcUyKY98ie9SNxr73Iv/rHA=;
        b=aE2xqoIDJ5wHnBROk0Y7QqTOqtaYhXNQb+/CuQh/8SuITKekaN7s0+ZuqTtUomy1E1
         fRnSNhERMY65JokxM7lmiL0KvUKJiuAbOJpQeDXcY54UsBytQboyeEYROTF42lw4uYax
         jp3Oo1rjOJHiWJKccKqj2I9A1+clyjL07ogTUsr3ol/RgT7a69Je4xA7CluU8C22i/EO
         +Ny7istb3OvebA2Zeq4QkSTaeJZ0vLt/5TMzfTuwHU/UL4cWW0zQFxoaR78PnOnZHu9P
         LNv5t9zNrByZXrvwRg543B7VkBYOdou5ccxFL69yocm+igZl2MKgpGS3v1g3mFvc5wzO
         m75Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id k61si27901otc.1.2019.10.02.18.10.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Oct 2019 18:10:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Oct 2019 18:10:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,250,1566889200"; 
   d="gz'50?scan'50,208,50";a="216639692"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 02 Oct 2019 18:10:33 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iFpdZ-0002jo-CQ; Thu, 03 Oct 2019 09:10:33 +0800
Date: Thu, 3 Oct 2019 09:09:57 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH v2 16/45] tcp: clean ext on tx recycle
Message-ID: <201910030948.YTVDxYB5%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="34fcgzabxyysfrra"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--34fcgzabxyysfrra
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
In-Reply-To: <20191002233655.24323-17-mathew.j.martineau@linux.intel.com>
References: <20191002233655.24323-17-mathew.j.martineau@linux.intel.com>
TO: Mat Martineau <mathew.j.martineau@linux.intel.com>

Hi Mat,

[FYI, it's a private test report for your RFC patch.]
[auto build test ERROR on net/master]
[cannot apply to v5.4-rc1 next-20191002]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Mat-Martineau/Multipath-TCP/20191003-074736
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project a77c3ef03c821d448296ba2abb658288800494ac)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from init/do_mounts.c:23:
   In file included from include/linux/nfs_fs.h:32:
   In file included from include/linux/sunrpc/clnt.h:28:
   In file included from include/net/ipv6.h:12:
   In file included from include/linux/ipv6.h:87:
   In file included from include/linux/tcp.h:19:
>> include/net/sock.h:1473:3: error: implicit declaration of function 'skb_ext_clear' [-Werror,-Wimplicit-function-declaration]
                   skb_ext_clear(skb);
                   ^
   1 error generated.

vim +/skb_ext_clear +1473 include/net/sock.h

  1464	
  1465	DECLARE_STATIC_KEY_FALSE(tcp_tx_skb_cache_key);
  1466	static inline void sk_wmem_free_skb(struct sock *sk, struct sk_buff *skb)
  1467	{
  1468		sock_set_flag(sk, SOCK_QUEUE_SHRUNK);
  1469		sk->sk_wmem_queued -= skb->truesize;
  1470		sk_mem_uncharge(sk, skb->truesize);
  1471		if (static_branch_unlikely(&tcp_tx_skb_cache_key) &&
  1472		    !sk->sk_tx_skb_cache && !skb_cloned(skb)) {
> 1473			skb_ext_clear(skb);
  1474			skb_zcopy_clear(skb, true);
  1475			sk->sk_tx_skb_cache = skb;
  1476			return;
  1477		}
  1478		__kfree_skb(skb);
  1479	}
  1480	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910030948.YTVDxYB5%25lkp%40intel.com.

--34fcgzabxyysfrra
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--34fcgzabxyysfrra--
