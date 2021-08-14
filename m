Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMGL3SEAMGQE7RHOHNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 679A53EBFA7
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 04:08:50 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id a186-20020a671ac30000b0290289c309d3b2sf1854909vsa.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 19:08:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628906929; cv=pass;
        d=google.com; s=arc-20160816;
        b=vjJ7f23itDefZXi+gOjB1rW3y84clLwjjQg9q0GSXkIP1n9D5Wh5rOoHeaQNVG1vTt
         qw0RfUouSM9qkndHgUSsWz+WepLDwtt2uJ62IlfLfvE8u7Lb8zCmjiP5ja10egKQr9qZ
         P8VZH7pCA7o0fdesERKTydgTC10NFvZGXvjZHhhSXGCrdaeOLQ0A34NWjVxssB1bwUwp
         bUjKn8MQ7bJ5B/vU7qcysm7e/XOb5Jp09r32QTdQUIDbi5gLFVaTXolT607uVi/yYfiz
         oUOdieLHpEBSKam7ktRh3LeM/qeTVgUf1m2B1KkMjuCApMylKVyrqQ53iPuS4PPu0on5
         YlKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=mUYxXDmoYF5lv5uWoUHuAzIuxp4ccR1kfKPQ9iny6nU=;
        b=Hi6CfsOswcWmcAfesTHSh8VMt/6vzK2T+EjulKS+Ams6mFtz7+T1eJKLwgFhCaY3Zt
         hEL8PkTfRsl3UvMgS7YCuEWSO0ZkC2HhuPfrAI/6LuW7q9H5sydwTxQZdm404Ya8zi3X
         5nkVnp7IPtpU8R1jq3H/BHc2LZoAObQ84HZ5mhJ/1N9Uwk7tfmQ4qXYviQw+B9vKy1Eb
         3XJvKtMwugSNsWxuBbMZNAGgi0h2nTzzVg/1M8AstyGYMlPiUp1OdygyxFltAOpYyMPC
         94/sRhXcP3ZnlHvtDeKKcgbxsr0vH/m3HeUIKODnFWQJmR3rGUU4LxK4X0MVykiOsxEg
         /yug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mUYxXDmoYF5lv5uWoUHuAzIuxp4ccR1kfKPQ9iny6nU=;
        b=fIaA4ONtnkGSlLt4T5kIzeav6td/6hQicVagbl85a2Lp+U0jRo4WQkuBd57kqHicHz
         KDb/d8ARe/YkQsvvwzYZaeZO7ZEFCDygv7e165OGrCG5qoiKJRvqXLMvxo4Qv5vXqWOk
         36xlfzNtsjzlwszo+rwaEBXcgOQA4DS4QAED3RBMUBfPNZ2frDQldJ8Pg9Lm4BRQ9bha
         DDyaO5aCyIWVUS5jMerZ0o2+t+uwqRi5wljtiPFDhoVGCN+odWYCw8wzqYrXHwuJP9DS
         UmWVptcn9AIlMGUwAZQCI4NFhECb5fG3cn3e3XoEkRGi86JQhnBEpAUtxxJjacH8mrce
         SDtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mUYxXDmoYF5lv5uWoUHuAzIuxp4ccR1kfKPQ9iny6nU=;
        b=lZyvtR7Qafai4PEgb99x5CSKKh+Yeozf28+wkPpwXTzUxJBa9m2+i1d5O1CtinBolp
         dK99zQqwjqfdYhDcz9dIyDQnqe1Yssdp2Ii41xperyu+SU/ba1k5DYf+vI88jQmt1jow
         ISJ+LYNU0fLVmiVtf7RuIotOH5ezAt3E2EZwieLiF/aOYk7Z67+89Yl+9b/JDx5e/nfQ
         mfPqh5iCD0jLkixFn5YzBgiynyxcKjrjk2QASDm/gUqZg7y45MRBTTPGpqFqskMUm1Wt
         55AvPGjKsCOd+4c47Tfarmw9ln+YPisVTBqbhl6Z3MU10P76FauyjsW3MjCrrB3tsod6
         55YQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HxtmnZHkgDG40rFPKyJc2x8zvXEeBQ7eYXwUxt5dgH+G32vnr
	pAvXH6BUqkDRLFlaA0HgVX4=
X-Google-Smtp-Source: ABdhPJyAZ66uoKRUMRJIfcuaFZy491WdOubrJlwGA5zfmnqR0guqgp2iPtd44fn7d6NiAYMjrIbJ8A==
X-Received: by 2002:a1f:20d4:: with SMTP id g203mr3968528vkg.23.1628906928832;
        Fri, 13 Aug 2021 19:08:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2401:: with SMTP id f1ls329990uan.9.gmail; Fri, 13 Aug
 2021 19:08:48 -0700 (PDT)
X-Received: by 2002:ab0:6311:: with SMTP id a17mr4161601uap.51.1628906928109;
        Fri, 13 Aug 2021 19:08:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628906928; cv=none;
        d=google.com; s=arc-20160816;
        b=eQDT2MTRZiLqeEphYk2M2jCSHSKFBZCSgYhqNzqgsvvlhE7sqWRjQp4LhjrS5R6lc5
         EuPuaqIZLf3I2L9wcHKoY+s7+/QN011LVdV7kkfqGxeaIxYoDezS6FNIYfu+tWR55R0/
         eA2NWT4dOhudO/RVfjEaY/GrHD6oVoQczgNOan5clcQEY9LMyp1Pr5CAic3xVJdau0Nj
         hzFKCvROeAyrKMpkljNBVLn3yBTNCKHZX52StE8mdLnA4ZvbTOz58mbsiBI0EOMwsXwj
         xAhrvtdmTMSjpZatzI3yY2gzHmNe4W/dw2qVPKDy+Ns+/287TDT2heQ6rLfgFOv0sfEn
         0+SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=IqarD9NEp8tLByjxqekHd5saq7wqqviR2kcptCD/o7c=;
        b=PFE5qJeafIXAq6zZFqYfwObmkDlFP8UiqOtl3QzVrUlurOnnOcuPdrzJCaG+7XBSSi
         hY6VspUIalI2skbYhOuJEjpfBqsnNrz8njTMr30W60s/O+r5KSxJkWTCFCVNJhvyZlyK
         lRtee3KyCN39DKX+tMSYEmzX7YOYwyl8mnSQ1R+1o0dDQEOp+97FWJjIE/Nin2I2AOp5
         nKQfbbs4bChSmYTccvmyJRiulPuwTPhTY8NyyLXEyBVwNIrVCVAcrSb/5vJBsPPELYru
         LhbQbPBZuEVowAyLo7zQ7nQFj3TQjOOABxvm2OOI6ejba/bvePObyqMy1ugvN34rcgiV
         Ph/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id m184si182257vkg.1.2021.08.13.19.08.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Aug 2021 19:08:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10075"; a="276682134"
X-IronPort-AV: E=Sophos;i="5.84,320,1620716400"; 
   d="gz'50?scan'50,208,50";a="276682134"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2021 19:08:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,320,1620716400"; 
   d="gz'50?scan'50,208,50";a="674662567"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 13 Aug 2021 19:08:43 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mEj6I-000OJX-Ah; Sat, 14 Aug 2021 02:08:42 +0000
Date: Sat, 14 Aug 2021 10:08:39 +0800
From: kernel test robot <lkp@intel.com>
To: Ronnie Sahlberg <lsahlber@redhat.com>,
	linux-cifs <linux-cifs@vger.kernel.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Steve French <smfrench@gmail.com>
Subject: Re: [PATCH 2/3] cifs: move calc_lanman_hash to smb1ops.c
Message-ID: <202108141014.0daU8a9w-lkp@intel.com>
References: <20210813195644.937810-3-lsahlber@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="7AUc2qLy4jB3hD7Z"
Content-Disposition: inline
In-Reply-To: <20210813195644.937810-3-lsahlber@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--7AUc2qLy4jB3hD7Z
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Ronnie,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on cifs/for-next]
[also build test ERROR on v5.14-rc5 next-20210813]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Ronnie-Sahlberg/cifs-only-compile-in-smb1ops-c-if-we-configure-CIFS_ALLOW_INSECURE_LEGACY/20210814-045731
base:   git://git.samba.org/sfrench/cifs-2.6.git for-next
config: hexagon-randconfig-r041-20210814 (attached as .config)
compiler: clang version 12.0.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/2a89ec2d759f8c3c9035498c5ef1bf66a8f8b07b
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Ronnie-Sahlberg/cifs-only-compile-in-smb1ops-c-if-we-configure-CIFS_ALLOW_INSECURE_LEGACY/20210814-045731
        git checkout 2a89ec2d759f8c3c9035498c5ef1bf66a8f8b07b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=hexagon 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> fs/cifs/smb1ops.c:51:26: error: implicitly declaring library function 'toupper' with type 'int (int)' [-Werror,-Wimplicit-function-declaration]
                   password_with_pad[i] = toupper(password_with_pad[i]);
                                          ^
   fs/cifs/smb1ops.c:51:26: note: include the header <ctype.h> or explicitly provide a declaration for 'toupper'
   1 error generated.


vim +51 fs/cifs/smb1ops.c

    16	
    17	#ifdef CONFIG_CIFS_WEAK_PW_HASH
    18	int calc_lanman_hash(const char *password, const char *cryptkey, bool encrypt,
    19				char *lnm_session_key)
    20	{
    21		int i, len;
    22		int rc;
    23		char password_with_pad[CIFS_ENCPWD_SIZE] = {0};
    24	
    25		if (password) {
    26			for (len = 0; len < CIFS_ENCPWD_SIZE; len++)
    27				if (!password[len])
    28					break;
    29	
    30			memcpy(password_with_pad, password, len);
    31		}
    32	
    33		if (!encrypt && global_secflags & CIFSSEC_MAY_PLNTXT) {
    34			memcpy(lnm_session_key, password_with_pad,
    35				CIFS_ENCPWD_SIZE);
    36			return 0;
    37		}
    38	
    39		/* calculate old style session key */
    40		/* calling toupper is less broken than repeatedly
    41		calling nls_toupper would be since that will never
    42		work for UTF8, but neither handles multibyte code pages
    43		but the only alternative would be converting to UCS-16 (Unicode)
    44		(using a routine something like UniStrupr) then
    45		uppercasing and then converting back from Unicode - which
    46		would only worth doing it if we knew it were utf8. Basically
    47		utf8 and other multibyte codepages each need their own strupper
    48		function since a byte at a time will ont work. */
    49	
    50		for (i = 0; i < CIFS_ENCPWD_SIZE; i++)
  > 51			password_with_pad[i] = toupper(password_with_pad[i]);
    52	
    53		rc = SMBencrypt(password_with_pad, cryptkey, lnm_session_key);
    54	
    55		return rc;
    56	}
    57	#endif /* CIFS_WEAK_PW_HASH */
    58	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108141014.0daU8a9w-lkp%40intel.com.

--7AUc2qLy4jB3hD7Z
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
h2of/AVW7O61qH8BAA==

--7AUc2qLy4jB3hD7Z--
