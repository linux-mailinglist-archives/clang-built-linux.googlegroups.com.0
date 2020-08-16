Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGEN474QKGQEX2WJKOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F083245A1E
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 01:51:55 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id oc8sf9712376pjb.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 Aug 2020 16:51:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597621913; cv=pass;
        d=google.com; s=arc-20160816;
        b=hzPuFmdRCagfJOxVMscp8mzTAMAd6/kAGutOGYZBncSfaEKl2SdBmjsnHmgEJWYGjb
         mzkp8KFDLA5Cey60RUmFciDKMOdxbgxBGoQMXe6UbtOBkzKp9UBiSaNyqm9w9vdFKjMp
         J/PisS0u/OlPgV0H31pP1Eh/8YPagJ8DEoJLmWqoPN5HAnntme4laxq328zJvkKyiHCg
         ZOGIAfqSa8oU+Rc41fATsbXWAJ5mLTiWbesYAGthSUMCeL9EnlMjEBGwBp2dPkR3sU3u
         S0KWO6WPr4wEVUft/OV56/LrnBuSczovCP+OZ6jJkT/BMgF3nibznL107iFVxq+kZra1
         HARg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=WZjNSZ+UwufLwDlYWIP5u5Bsw/w5luVTo7ePUaHCv/4=;
        b=vjnUdaB1xEhc0SiwffiV33B8IWBb7YCXij+87n4ZPuN13QOv6wLzzHzG5zvRYt8004
         0ORztZdN/mklAZlUVdr0Jrn/cPD8PKG2JGC4asNK1E6OKhsGjQrHsjRhARX1QVfsPSJy
         sZDDCohgcRoW8wgNunMbEitqBaavPPQEVcBTMv3hN/TE0XbqP4Q9KN6edCZHhc746cAz
         K4z5liIj5OoQe92TtdWsN4Ha7o0hJGw9mdeyb6Cjm6+unSkrZLqmujfDZolt6xTs0Iu8
         qnAj8WIv+na9ZxbSqxa67DXmbo1qMAVb43ghhBPhhDDo8lLPBzCDAfRoOpciZYbCw6Fh
         tUWA==
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
        bh=WZjNSZ+UwufLwDlYWIP5u5Bsw/w5luVTo7ePUaHCv/4=;
        b=dDCCsRPOK9sRMFV9sZIQiPK0JzPGGf8ZsJtOhbAFjnRA3R8RBO7ZEcQuYWuCj+swHw
         xh9ENyFxNENTMOt7iWo/U1qAB25yG1Pnp4VeT2F29u9bEkS4cg4WTQJnRAzNYCTvwlTK
         7ql0xH9XvXoB9Jv86vzaSmBWUzVtD04iWNAsnqPY1Bf+9p73hTwCA1+Nkj7YPWCsV6zi
         ncF0zSSpaWgmOOfAB5h9Q02hwBwH+tCT4/hDm9ILbFjfJOMH+2r/fBkT7Rdq0AHQGVZ6
         0GY3u7veDUvuNHIlVktFquTwBaNO2M3TzMlmt16a7mr55yTXDV+8R2ArWkFiUM9XGVNy
         bcfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WZjNSZ+UwufLwDlYWIP5u5Bsw/w5luVTo7ePUaHCv/4=;
        b=Kv491DpD0xq9LTLhBmLRU60LkXE8nH0y7k6Y65iXWts7avBU5Z+wfAmMPi8iF4g3p/
         v+Uw/NZrVe2RCoTAadTwD8lK3VeOPX1rGo93SNz69wFGoZ1dyZaAQ9bssZiROFsAzVJu
         c4gRX+65vh9x3VSXCwbMCAMbd5shEUC7B5y4ZeXSu7Jc0B0e2n0KxXQOvUFTqa1Odibf
         n4TOrLn5hADigqOEzQMCU1Z3hgPRHpoSMw0Ezk41KJqoei7iM5QeZuA2Jbs7u/sjOjaD
         1/aYdIHCNqXtGiHyPbE/oJQeTs3aHdw14H7l766llC747OI46puM2Fi3us+QXqkzcMO6
         X9pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/iZEg53k5vkmX0L+LrAcQyiZGiluVu7b3xyqHvU14Oi4fUjDb
	2dMy5SCnjlaL3xq0H/KF0H8=
X-Google-Smtp-Source: ABdhPJzjhEQdoF0PMCYxQt6jbLWSNtQfU1canXElUGnWmm+k3VZTRiMGj+yAIx8dgDJHLDjIVuwFpA==
X-Received: by 2002:a63:5623:: with SMTP id k35mr8681024pgb.325.1597621912987;
        Sun, 16 Aug 2020 16:51:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:79d3:: with SMTP id u202ls5078619pfc.1.gmail; Sun, 16
 Aug 2020 16:51:52 -0700 (PDT)
X-Received: by 2002:a63:6dc2:: with SMTP id i185mr8387251pgc.190.1597621912511;
        Sun, 16 Aug 2020 16:51:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597621912; cv=none;
        d=google.com; s=arc-20160816;
        b=vNl+K/rWkfmm9vBfl+v+/4URFXt4nEq6cqUcvVd7IM+CPw3yAPrEXKzEmvHm/iMFEa
         jqLaKOMjrHymcPEsiw9I4sVKSwatpSQCQJ3sYuwv9kD+JC8uYfvapHIRBQB3b9vFG8X0
         +USgKpEz10lxNlPjRKQ9V0prlKNS4HJAx0F4Za3OHHTtTusm0IzuEYXSYo4wsOjbNrHP
         oZWtfd3og2t2tjzTps2nUKrTozXYy/FDWQgNVY91CmWSgC0xr7gsXGHYvC8B10c9lOUE
         1N75KutprkdWQXJYYV7pnHkAJHebfS87qhO6OKdBnZez6e987vno5EVi6gsH5vGG8Swr
         6pIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=FfOXt5shytqHVuph13HoSCMmQOP/Z7MhU42GMzHXZ54=;
        b=WINqXzsbKWQZ0jsw18on5yhNM25o0vfkrIDgOrkasRYCNNoKpoZYzZWJOXiWDkxey7
         Y0a7jiHaajxI1aoAkZ/tVKtLnXpJ/5PWGNu4jYpqTDLJW0Cs0uTqqstohfJ2OsuagglF
         akCBHixndLUeQ4q2RsNkF2XE5UU33VaAByhvO+cPLR15+elVgq+W6RJiS0ZcGL6GuE/0
         QUnJU54SF4jsgNe9nQ/G4soyflBCaa4JY4oIhkVrm9n8ZSSIfiYYmi9XqH6NXDBuSMkW
         Zm51W1+kurBTDHGTjJ7oyw+DYqEDpTTse960ChdWxnhwrwwrWZPdUQTpoj9gpaE+UOaa
         LV0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id cp11si1081996plb.1.2020.08.16.16.51.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Aug 2020 16:51:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: PMR1ooASer9ZidlCRFDZr+1DkikbTFiW+MAEUFwasxUidi2FRGVrF1biZGJME9OseY4HmlvuU4
 D8+1e9Q1c/Vg==
X-IronPort-AV: E=McAfee;i="6000,8403,9715"; a="142444458"
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; 
   d="gz'50?scan'50,208,50";a="142444458"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Aug 2020 16:51:51 -0700
IronPort-SDR: 8UJgve2y7beO63XK4/u//LNkxuWFcbHyLM6KXPVuLB83lqgbzs0l3dcfYjUCFiMoKRy0xWjkNA
 Lg8Ta98Pqirw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; 
   d="gz'50?scan'50,208,50";a="336120044"
Received: from lkp-server02.sh.intel.com (HELO 2f0d8b563e65) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 16 Aug 2020 16:51:49 -0700
Received: from kbuild by 2f0d8b563e65 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k7SRI-0000Go-Jc; Sun, 16 Aug 2020 23:51:48 +0000
Date: Mon, 17 Aug 2020 07:50:55 +0800
From: kernel test robot <lkp@intel.com>
To: Joe Perches <joe@perches.com>, Jeff Layton <jlayton@kernel.org>,
	Ilya Dryomov <idryomov@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] ceph: Use generic debugging facility
Message-ID: <202008170700.CUWNBOZ0%lkp@intel.com>
References: <d67377660a317c826a7899e6ffcb5bf686733ddb.1597615399.git.joe@perches.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="n8g4imXOkfNTN/H1"
Content-Disposition: inline
In-Reply-To: <d67377660a317c826a7899e6ffcb5bf686733ddb.1597615399.git.joe@perches.com>
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


--n8g4imXOkfNTN/H1
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Joe,

I love your patch! Yet something to improve:

[auto build test ERROR on ceph-client/for-linus]
[also build test ERROR on v5.9-rc1 next-20200814]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Joe-Perches/ceph-Neaten-debugging/20200817-060623
base:   https://github.com/ceph/ceph-client.git for-linus
config: x86_64-randconfig-a012-20200817 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ab9fc8bae805c785066779e76e7846aabad5609e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> net/ceph/ceph_common.c:227:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("parse_fsid '%s'\n", str);
           ^
   net/ceph/ceph_common.c:227:2: note: did you mean 'dput'?
   include/linux/dcache.h:374:13: note: 'dput' declared here
   extern void dput(struct dentry *);
               ^
   net/ceph/ceph_common.c:342:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("destroy_options %p\n", opt);
           ^
   net/ceph/ceph_common.c:430:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s fs_parse '%s' token %d\n", __func__, param->key, token);
           ^
   net/ceph/ceph_common.c:726:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("destroy_client %p\n", client);
           ^
   net/ceph/ceph_common.c:779:3: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
                   dout("mount waiting for mon_map\n");
                   ^
   net/ceph/ceph_common.c:802:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("open_session start\n");
           ^
   net/ceph/ceph_common.c:864:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("exit_ceph_lib\n");
           ^
   7 errors generated.
--
   net/ceph/messenger.c:204:5: warning: format specifies type 'unsigned short' but the argument has type 'int' [-Wformat]
                            ntohs(in4->sin_port));
                            ^~~~~~~~~~~~~~~~~~~~
   include/linux/byteorder/generic.h:142:18: note: expanded from macro 'ntohs'
   #define ntohs(x) ___ntohs(x)
                    ^~~~~~~~~~~
   include/linux/byteorder/generic.h:137:21: note: expanded from macro '___ntohs'
   #define ___ntohs(x) __be16_to_cpu(x)
                       ^~~~~~~~~~~~~~~~
   include/uapi/linux/byteorder/little_endian.h:42:26: note: expanded from macro '__be16_to_cpu'
   #define __be16_to_cpu(x) __swab16((__force __u16)(__be16)(x))
                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/uapi/linux/swab.h:105:2: note: expanded from macro '__swab16'
           (__builtin_constant_p((__u16)(x)) ?     \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   net/ceph/messenger.c:210:5: warning: format specifies type 'unsigned short' but the argument has type 'int' [-Wformat]
                            ntohs(in6->sin6_port));
                            ^~~~~~~~~~~~~~~~~~~~~
   include/linux/byteorder/generic.h:142:18: note: expanded from macro 'ntohs'
   #define ntohs(x) ___ntohs(x)
                    ^~~~~~~~~~~
   include/linux/byteorder/generic.h:137:21: note: expanded from macro '___ntohs'
   #define ___ntohs(x) __be16_to_cpu(x)
                       ^~~~~~~~~~~~~~~~
   include/uapi/linux/byteorder/little_endian.h:42:26: note: expanded from macro '__be16_to_cpu'
   #define __be16_to_cpu(x) __swab16((__force __u16)(__be16)(x))
                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/uapi/linux/swab.h:105:2: note: expanded from macro '__swab16'
           (__builtin_constant_p((__u16)(x)) ?     \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> net/ceph/messenger.c:309:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s con %p sock %d -> %d\n", __func__, con, old_state,
           ^
   net/ceph/messenger.c:309:2: note: did you mean 'dput'?
   include/linux/dcache.h:374:13: note: 'dput' declared here
   extern void dput(struct dentry *);
               ^
   net/ceph/messenger.c:320:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s con %p sock %d -> %d\n", __func__, con, old_state,
           ^
   net/ceph/messenger.c:331:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s con %p sock %d -> %d\n", __func__, con, old_state,
           ^
   net/ceph/messenger.c:344:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s con %p sock %d -> %d\n", __func__, con, old_state,
           ^
   net/ceph/messenger.c:358:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s con %p sock %d -> %d\n", __func__, con, old_state,
           ^
   net/ceph/messenger.c:375:3: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
                   dout("%s on %p state = %lu, queueing work\n", __func__,
                   ^
   net/ceph/messenger.c:395:4: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
                           dout("%s %p queueing write work\n", __func__, con);
                           ^
   net/ceph/messenger.c:400:3: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
                   dout("%s %p nothing to write\n", __func__, con);
                   ^
   net/ceph/messenger.c:409:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s %p state = %lu sk_state = %u\n", __func__,
           ^
   net/ceph/messenger.c:477:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("connect %s\n", ceph_pr_addr(&con->peer_addr));
           ^
   net/ceph/messenger.c:597:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("con_close_socket on %p sock %p\n", con, con->sock);
           ^
   net/ceph/messenger.c:639:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("reset_connection %p\n", con);
           ^
   net/ceph/messenger.c:668:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("con_close %p peer %s\n", con, ceph_pr_addr(&con->peer_addr));
           ^
   net/ceph/messenger.c:692:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("con_open %p %s\n", con, ceph_pr_addr(addr));
           ^
   net/ceph/messenger.c:722:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("con_init %p\n", con);
           ^
   net/ceph/messenger.c:1237:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("prepare_write_message_footer %p\n", con);
           ^
   net/ceph/messenger.c:1293:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("prepare_write_message %p seq %lld type %d len %d+%d+%zd\n",
           ^
   net/ceph/messenger.c:1346:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("prepare_write_ack %p %llu -> %llu\n", con,
           ^
   net/ceph/messenger.c:1367:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("prepare_write_seq %p %llu -> %llu\n", con,
           ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   2 warnings and 20 errors generated.
--
>> net/ceph/msgpool.c:20:3: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
                   dout("msgpool_alloc %s failed\n", pool->name);
                   ^
   net/ceph/msgpool.c:20:3: note: did you mean 'dput'?
   include/linux/dcache.h:374:13: note: 'dput' declared here
   extern void dput(struct dentry *);
               ^
   net/ceph/msgpool.c:22:3: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
                   dout("msgpool_alloc %s %p\n", pool->name, msg);
                   ^
   net/ceph/msgpool.c:33:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("msgpool_release %s %p\n", pool->name, msg);
           ^
   net/ceph/msgpool.c:42:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("msgpool %s init\n", name);
           ^
   net/ceph/msgpool.c:55:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("msgpool %s destroy\n", pool->name);
           ^
   net/ceph/msgpool.c:77:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("msgpool_get %s %p\n", pool->name, msg);
           ^
   net/ceph/msgpool.c:83:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("msgpool_put %s %p\n", pool->name, msg);
           ^
   7 errors generated.
--
>> net/ceph/buffer.c:29:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("buffer_new %p\n", b);
           ^
   net/ceph/buffer.c:29:2: note: did you mean 'dput'?
   include/linux/dcache.h:374:13: note: 'dput' declared here
   extern void dput(struct dentry *);
               ^
   net/ceph/buffer.c:38:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("buffer_release %p\n", b);
           ^
   net/ceph/buffer.c:50:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("decode_buffer len %d\n", (int)len);
           ^
   3 errors generated.
--
>> net/ceph/mon_client.c:53:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("monmap_decode %p %p len %d (%d)\n", p, end, len, (int)(end-p));
           ^
   net/ceph/mon_client.c:53:2: note: did you mean 'dput'?
   include/linux/dcache.h:374:13: note: 'dput' declared here
   extern void dput(struct dentry *);
               ^
   net/ceph/mon_client.c:123:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("__close_session closing mon%d\n", monc->cur_mon);
           ^
   net/ceph/mon_client.c:165:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s mon%d -> mon%d out of %d mons\n", __func__, old_mon,
           ^
   net/ceph/mon_client.c:188:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s opening mon%d\n", __func__, monc->cur_mon);
           ^
   net/ceph/mon_client.c:228:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s hunt_mult now %d\n", __func__, monc->hunt_mult);
           ^
   net/ceph/mon_client.c:243:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("__schedule_delayed after %lu\n", delay);
           ^
   net/ceph/mon_client.c:267:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s sent %lu\n", __func__, monc->sub_renew_sent);
           ^
   net/ceph/mon_client.c:327:3: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
                   dout("%s sent %lu duration %d renew after %lu\n", __func__,
                   ^
   net/ceph/mon_client.c:331:3: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
                   dout("%s sent %lu renew after %lu, ignoring\n", __func__,
                   ^
   net/ceph/mon_client.c:353:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s %s epoch %u continuous %d\n", __func__, ceph_sub_str[sub],
           ^
   net/ceph/mon_client.c:389:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s %s epoch %u\n", __func__, ceph_sub_str[sub], epoch);
           ^
   net/ceph/mon_client.c:475:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("handle_monmap\n");
           ^
   net/ceph/mon_client.c:513:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s greq %p request %p reply %p\n", __func__, req, req->request,
           ^
   net/ceph/mon_client.c:550:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s greq %p\n", __func__, req);
           ^
   net/ceph/mon_client.c:570:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s greq %p tid %llu\n", __func__, req, req->tid);
           ^
   net/ceph/mon_client.c:579:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s greq %p tid %llu\n", __func__, req, req->tid);
           ^
   net/ceph/mon_client.c:606:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s greq %p tid %llu\n", __func__, req, req->tid);
           ^
   net/ceph/mon_client.c:623:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s greq %p tid %llu\n", __func__, req, req->tid);
           ^
   net/ceph/mon_client.c:645:3: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
                   dout("get_generic_reply %lld dne\n", tid);
                   ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 errors generated.
--
>> net/ceph/cls_lock_client.c:71:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s lock_name %s type %d cookie %s tag %s desc %s flags 0x%x\n",
           ^
   net/ceph/cls_lock_client.c:71:2: note: did you mean 'dput'?
   include/linux/dcache.h:374:13: note: 'dput' declared here
   extern void dput(struct dentry *);
               ^
   net/ceph/cls_lock_client.c:120:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s lock_name %s cookie %s\n", __func__, lock_name, cookie);
           ^
   net/ceph/cls_lock_client.c:172:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s lock_name %s cookie %s locker %s%llu\n", __func__, lock_name,
           ^
   net/ceph/cls_lock_client.c:223:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s lock_name %s type %d old_cookie %s tag %s new_cookie %s\n",
           ^
   net/ceph/cls_lock_client.c:276:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s %s%llu cookie %s addr %s\n", __func__,
           ^
   net/ceph/cls_lock_client.c:364:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s lock_name %s\n", __func__, lock_name);
           ^
   6 errors generated.
--
>> net/ceph/osd_client.c:115:3: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
                   dout(" skipping last %llu, final file extent %llu~%llu\n",
                   ^
   net/ceph/osd_client.c:115:3: note: did you mean 'dput'?
   include/linux/dcache.h:374:13: note: 'dput' declared here
   extern void dput(struct dentry *);
               ^
   net/ceph/osd_client.c:119:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("calc_layout objnum=%llx %llu~%llu\n", *objnum, *objoff, *objlen);
           ^
   net/ceph/osd_client.c:485:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s %p (r_request %p r_reply %p)\n", __func__, req,
           ^
   net/ceph/osd_client.c:510:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s %p (was %d)\n", __func__, req,
           ^
   net/ceph/osd_client.c:519:3: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
                   dout("%s %p (was %d)\n", __func__, req,
                   ^
   net/ceph/osd_client.c:558:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s req %p\n", __func__, req);
           ^
   net/ceph/osd_client.c:604:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s req %p\n", __func__, req);
           ^
   net/ceph/osd_client.c:1249:3: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
                   dout("get_osd %p %d -> %d\n", osd, refcount_read(&osd->o_ref)-1,
                   ^
   net/ceph/osd_client.c:1253:3: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
                   dout("get_osd %p FAIL\n", osd);
                   ^
   net/ceph/osd_client.c:1260:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("put_osd %p %d -> %d\n", osd, refcount_read(&osd->o_ref),
           ^
   net/ceph/osd_client.c:1274:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s osd %p osd%d\n", __func__, osd, osd->o_osd);
           ^
   net/ceph/osd_client.c:1295:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s osd %p osd%d\n", __func__, osd, osd->o_osd);
           ^
   net/ceph/osd_client.c:1313:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s osd %p osd%d\n", __func__, osd, osd->o_osd);
           ^
   net/ceph/osd_client.c:1352:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s osd %p osd%d\n", __func__, osd, osd->o_osd);
           ^
   net/ceph/osd_client.c:1408:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s osdc %p osd%d -> osd %p\n", __func__, osdc, o, osd);
           ^
   net/ceph/osd_client.c:1421:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s osd %p osd%d req %p tid %llu\n", __func__, osd, osd->o_osd,
           ^
   net/ceph/osd_client.c:1438:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s osd %p osd%d req %p tid %llu\n", __func__, osd, osd->o_osd,
           ^
   net/ceph/osd_client.c:1505:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s picked osd%d, primary osd%d\n", __func__,
           ^
   net/ceph/osd_client.c:1535:2: error: implicit declaration of function 'dout' [-Werror,-Wimplicit-function-declaration]
           dout("%s picked osd%d with locality %d, primary osd%d\n", __func__,
           ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 errors generated.
..

# https://github.com/0day-ci/linux/commit/ab0413062c34a692c0480a3237a04534f823e02d
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Joe-Perches/ceph-Neaten-debugging/20200817-060623
git checkout ab0413062c34a692c0480a3237a04534f823e02d
vim +/dout +227 net/ceph/ceph_common.c

3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  219  
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  220  static int parse_fsid(const char *str, struct ceph_fsid *fsid)
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  221  {
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  222  	int i = 0;
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  223  	char tmp[3];
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  224  	int err = -EINVAL;
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  225  	int d;
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  226  
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06 @227  	dout("parse_fsid '%s'\n", str);
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  228  	tmp[2] = 0;
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  229  	while (*str && i < 16) {
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  230  		if (ispunct(*str)) {
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  231  			str++;
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  232  			continue;
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  233  		}
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  234  		if (!isxdigit(str[0]) || !isxdigit(str[1]))
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  235  			break;
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  236  		tmp[0] = str[0];
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  237  		tmp[1] = str[1];
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  238  		if (sscanf(tmp, "%x", &d) < 1)
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  239  			break;
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  240  		fsid->fsid[i] = d & 0xff;
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  241  		i++;
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  242  		str += 2;
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  243  	}
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  244  
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  245  	if (i == 16)
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  246  		err = 0;
4c069a5821ddc5 Chengguang Xu 2018-01-30  247  	dout("parse_fsid ret %d got fsid %pU\n", err, fsid);
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  248  	return err;
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  249  }
3d14c5d2b6e15c Yehuda Sadeh  2010-04-06  250  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008170700.CUWNBOZ0%25lkp%40intel.com.

--n8g4imXOkfNTN/H1
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--n8g4imXOkfNTN/H1--
