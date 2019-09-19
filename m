Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBXMMR3WAKGQEVYJY3SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 117EBB7AB8
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 15:45:03 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id o73sf2281740pfg.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 06:45:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568900701; cv=pass;
        d=google.com; s=arc-20160816;
        b=FY5x3AClqDYWwlyhyi+RvtSulx6hVQ5BmMkhL/rPUabvda5FhtPvbauv2ijcU+9lf3
         oNpnF+oiKjHS3nDgnMIvI33r8x6JdyG2nwmSWWPlXol3b4UbQt/7oHG4qDlQaEIoutei
         OTr2WudLKHgqhFz8neSmw1zQnXP0xkNL6sg1pnKT1XlVKiQmDqhVSH1FUoqq73Kbueiw
         YZRuEyZJpJk1YQPM4hn21jrBmfBVsuV6Xa/dQNnJuEkj2WtJMUlqYLtpB1zyg6gLV0WT
         boooVGqh/F9SawhTiv99FBXrL0d/QlJzoiAaTLkMU0ms1zWHANUzbFzRz5U+NtSqg5Lh
         O5uQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=GoKtM1iA3d1/OSkO6N9z/Ro5JEkSpV4xcYlyLR75QjA=;
        b=d+HG0R4B9yjK+BPvS4sGRDJXjkgdv1WODZLe58FQnaMXclg5oV5yWWRjfWGGcTwLYu
         t9HG5gPnpi0Xre638+9ZoG0DiqAJ+QHnI+YKVaSxcpQv/YP8qrBL1pvJ4tDRxqMD6WZB
         L/+w4kU9svJnoo63JqDwKyFcPZJ3UsyZKD8CL2RH54EnxGeXesqejOdR0dkdjrNiKR/b
         lfw4uYxgDETIeRxXjiim1FRh/rqbipRqdm8GXSgyxwvGs/8pYp9FyvWJiWxPW87WsY6r
         rAghL9MuPuc9lS8el3ohT3dg8Swfe8sWgfj95GyW45wJt8aMq3memGG55eJumKzo0Ir7
         QCbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GoKtM1iA3d1/OSkO6N9z/Ro5JEkSpV4xcYlyLR75QjA=;
        b=T3f+AubfgvsA2Zo5gG5T+ivgSwsKjaL+JQAev/2TdkKO0jynKLG6kbSfj9V8GLNQT8
         hVYpEct8bUu/ZP+5SnnqRuHTQfcOt25DZdY1BQhDCgy/lBFRKDKejttAjA90XF699q5Y
         RwNQ1Ps7gSLtYOkMJ7dC/UbdTyHJE5uH74oX/kQmgqTNnmDPIKUx8BwMd873aUFjurml
         COPtxCvk7y0AtWVjxWr6iTNzQp8MD5pV/EspMuQoY7fkm2YGhnn/S+wQOS83nU5t6VUo
         jLo8gcrhKWd9SMasjk1sx+wVTwLBbwFhPiKlrkmpI9bACIl35NhuF3FCqqb3+DW/6CO6
         9zyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GoKtM1iA3d1/OSkO6N9z/Ro5JEkSpV4xcYlyLR75QjA=;
        b=aNx+MXxZs5nyuwqtm4UCB41A2MT5FLewm8F2uiPYjEJ7A1Ns7xISne1A9Ed7+WV7Q4
         gKwva7T6PnGAdeAfmchsCWewjlaIj3IQU/2mNCYx55yqhdjbRmEpY9g8lCwdtPk330YJ
         oON1+BheXWkhv3TvnSVx94oUvqQ+Uc0abGVfT3eSaXu2KmwLXgGPhnjfjwKPLcFicxso
         gFcJKiydz9IXV0dPduB8zS94HAJfCziI1YXYvrfzZJxAnsX/jkAOfu4vlRGY0nz3P4In
         ndmk8kC3sUR7kx7joboJyblb/CSucQK2d4obSjLCXsJ7VZvdP7+ILL8e4sASeAk0ePXw
         EbCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVzR23JbjEdP3/nLMAhSKZ2qzxo6+tOg+JH/us82K+OFUMTHa+0
	76z4E7gJLrMzldGgV2HJgOA=
X-Google-Smtp-Source: APXvYqxcmTUDdu81j7Z+lpf/K8rMwLXxyfPRzLwb4jJ1yfLNKMAqiUwEH3mA+A1KddlyEWJhPDUXdQ==
X-Received: by 2002:a17:90a:d356:: with SMTP id i22mr3687873pjx.24.1568900701383;
        Thu, 19 Sep 2019 06:45:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d705:: with SMTP id w5ls1029370ply.12.gmail; Thu, 19
 Sep 2019 06:45:01 -0700 (PDT)
X-Received: by 2002:a17:90a:2687:: with SMTP id m7mr3694622pje.25.1568900701039;
        Thu, 19 Sep 2019 06:45:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568900701; cv=none;
        d=google.com; s=arc-20160816;
        b=0Rq9HP+g5ZsbbUab7C6Ui6M/JFNttxVKVwSPfviT3gtc6sj5lsXXIT725rEsZW0t5S
         q1iwi1CAzJcQgOHJnRcE9Z6sgxXpaxjsmKSk6FZ9ZCdaf84ea/Tn1RhUEbGftyBeVu+F
         64Ithc1OgRHRLiQyb22hINKAhzvQPdyMJQ8NdkBJBI4j1PLyDS7wdI9u7SoRfL59ahI5
         pojm2dejBKIUjFbNnT/M/S4JaWudfQSLmFI8rGR53DC55qr5MCkGdbQAk4giqznmLN0b
         g5bkxTeDDfGY3+jdu6YrwI11AUbONiFqpL5neYQosEB/Is7bsTKoGeZX9RVI4J06y3Wx
         8mmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=z/5NdMQKx5zyaLUr+AbOfIlTBJbdPgHXSqwmK629OI0=;
        b=s7HpBAxhwRISAHHLzhxxp9K55LTY5h4nEbwcjsJlhaykPJ4AVhsR6KFviBeQKIP6jf
         LMaS6kzzaQ8ibKtiwmfe05HDDTV6IYDsV66an0yjBc6tVjgA5SEmZBQhMMFp0DAgEOEV
         cxt9evPpYNOBCbfJ7iFbwFcwMXrFZUUM9EyD6YfRALRhBx6FSWsWA7wJXZaL3YDZ5ZW/
         GPJ3TYZXRKMgGfiaKMval3TBV6w4EYA9tvzfZblHmIGSfVaWNmUYrVAMNZ0lYR8RXrWP
         y098inXR65IfbiZ+ZEyl7uN8+lT7g3B1I+5hbjopgQSbEnn+m4MIptPrBO7ZhJXuZAv2
         Oovg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id x2si913319pfq.3.2019.09.19.06.45.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Sep 2019 06:45:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Sep 2019 06:45:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; 
   d="gz'50?scan'50,208,50";a="178053149"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 19 Sep 2019 06:44:58 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iAwjy-000EbX-3V; Thu, 19 Sep 2019 21:44:58 +0800
Date: Thu, 19 Sep 2019 21:44:29 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [linux-pb:lkml/sched_access_methods 2/2]
 kernel/sched/sched.h:1032:13: error: expected ';' after return statement
Message-ID: <201909192126.u9jvOHD4%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="azq6d4w32ixfw56y"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--azq6d4w32ixfw56y
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Patrick Bellasi <patrick.bellasi@matbug.net>

tree:   git://linux-arm.org/linux-pb.git lkml/sched_access_methods
head:   82f0d1d9a5c54daaa520ebca120dee51cadfa29d
commit: 82f0d1d9a5c54daaa520ebca120dee51cadfa29d [2/2] sched: Add {cfs,rt,dl}_cpu_of() access methods and root rq's checkers
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        git checkout 82f0d1d9a5c54daaa520ebca120dee51cadfa29d
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel/sched/core.c:9:
>> kernel/sched/sched.h:1032:13: error: expected ';' after return statement
           return true
                      ^
                      ;
   1 error generated.

vim +1032 kernel/sched/sched.h

  1026	
  1027	static inline bool cfs_rq_is_root(struct cfs_rq *cfs_rq)
  1028	{
  1029	#ifdef CONFIG_FAIR_GROUP_SCHED
  1030		return &cfs_rq->rq->cfs == cfs_rq;
  1031	#else
> 1032		return true
  1033	#endif
  1034	}
  1035	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201909192126.u9jvOHD4%25lkp%40intel.com.

--azq6d4w32ixfw56y
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--azq6d4w32ixfw56y--
