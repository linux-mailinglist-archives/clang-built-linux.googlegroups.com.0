Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLEQ5L5QKGQELWC7VZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D791282EEB
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 04:42:54 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id t4sf1441638qtd.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Oct 2020 19:42:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601865773; cv=pass;
        d=google.com; s=arc-20160816;
        b=L57OGirqEl/GLAtbHdc9QbGoPMUMfWdugiDvuiUn1X2QpUjTTSkzytjrIEtdrjMwF2
         10eGKdjmXNIuBUofB0xViMNsJla2eOQUnWkvorHBdwMkCe2zrvSWlfHc9GIGA2KA/iQL
         pSmNNJURbp9FFZqL65Nj/ZIYcTdDSurjl1iMAuhHk7ZftLOud62vcsoskAYs7Orunerx
         OygKl5ZB3j32fbe1bqfsr327hesXMOEc4lBQO8Ir/1AS9D9p6Pdcl+rH/0bfApBVVz/D
         7jSBIPEmKjXebiyLI+Z39nd3YJLWMz4bMKAmANwaC6sh8xA4PWestlg70FmK56abpEzr
         xHFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=aJkJFTxrCJOV3Xy0IG5dnUUfVtLKMNfeKkIDYygNplk=;
        b=k+gAgxg0B30CasMRrguYtLVR5W7SYg0L9bhb5FCvmDjeAXYCT7KlH8/odo41FB2VV2
         xtPIdOceHRw+8QC3wPH2P5MfwCcuMo4v6BonkYPk9JUqqQXXfoluOAj9ah7pYu2EiRJf
         f4G1IsiNBz6nA3WSLP7Wsg/26aVQJHVzcC0dXEcZWMSWP5qGALgL5QYgsP86fDI+dt+m
         GWMDWalFmrjJFgQ9Vd/i3jNnC3jK2AovT+1VfmTd9rkXBLcDwaUtKP69seAnQu3LZzIf
         xTLXyUJMl3Scx9jEylibxLCHUA57xVrPHLIeLEOcaDthHz50+7Fu7DTvvwnB8nqc/tkq
         7p8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aJkJFTxrCJOV3Xy0IG5dnUUfVtLKMNfeKkIDYygNplk=;
        b=TaisaYGiElOF7qB3GgRhW2oZGtROi+S2MRsCBLnP+ydKMFxGkq4CZkuD+lhckfHK48
         pkP/KuowVIdfO2MU4J77lySXY35z67YdsMcFceBCeCBgLoQWcoMWxsyjvcDhAlCIYBl1
         fp0frZpf6wscnPO8bIV5SdYFjQnxx6HV/qyARidOrpUxx7RQY7hAyqJQjenHEYw7tXkl
         ZiOGc38Q9mGcOSRim2uYtESye1aKP5a52kJd4IIz42GUYEgPWGue/0p3AvSGMqQt+avJ
         lmtUCxUGZnH7ToO1IpbJNhdur4NLjltrXhCLwBBx5jjkNAc2GldwsmMHLGC6ofu4OABq
         AuZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aJkJFTxrCJOV3Xy0IG5dnUUfVtLKMNfeKkIDYygNplk=;
        b=XJC2rMgmwrO+QA0TeqtQXUTv9na1F4mgW6Mqcb/MaEFjHF+Q0t0gVyZXt2ORJyhrGF
         JHBYWBQc6sMiB4V3szxqoqXQl8S7OeXjJQUot3ntoo8ILbf7i1SQ1U4iSqBvw/E174vL
         v4YBoPhf7o8+UlK0fC62HLOTILRB0NzLvxypeNebrJr4J2L+hAVe5M3Yb1tVfuK7T5Pn
         12W7DYizTmTVs/BL6+qVJ/vxFN7C6sDKE6F0bi/pZxxTqOkmoTcujRncVZyRyRIoyB1c
         cspvbNdHvyd2JwqacxJZTXv0RUT59lJKQ4EYpN2gDqryq2mHjlBGrlVb0d+7GWHtkfx4
         qlaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532U+q/oBKZBa2lpFeMMkJlKqsG73CWXK3Yzg2bbAD+UpvI9xSFZ
	3jcCjNfaijd9c02lyF1foMQ=
X-Google-Smtp-Source: ABdhPJzLdNfwGWH8yZJTI12Yv7lDlY5wsZSVW7wlzkEVODbQLzpiINm0wP0UgGNH4yhd1Jvg6VqJWg==
X-Received: by 2002:ac8:cc7:: with SMTP id o7mr12724288qti.9.1601865772275;
        Sun, 04 Oct 2020 19:42:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4c91:: with SMTP id bs17ls435577qvb.3.gmail; Sun, 04 Oct
 2020 19:42:51 -0700 (PDT)
X-Received: by 2002:a0c:b902:: with SMTP id u2mr11828173qvf.7.1601865771623;
        Sun, 04 Oct 2020 19:42:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601865771; cv=none;
        d=google.com; s=arc-20160816;
        b=vFLhO1dE1qBWoWw7xYp1biMvVTfj0RB5vuPa1nbRvkyRr2i2bhpPjLdbyXiES9PCDy
         fjDU2waEy7aISlvmf5FQ8yIVdJFq8UMJ49Liva6sIsuNbV0Lg5L3HLRDvg94Ma6DAlsm
         aHDhVHGYoHnErF4C9pg+jkBMRmeNe2RRs+a5m8OHsKqVslr9krNR3jgc3HGCbz8sU8IU
         85LEAkKyYcce6i1e0JabYXVeOjfPHxi+gydEW4hwndHZBBtk3rQDEHzxzfoVKc7biH+S
         WuK+ww4nFaUBppFkPJ+B/Rkxerm1vY2/Ywoi+GzEuVXYi4XnyQ112gbr3HiGKM613f1T
         OLtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=99Tc5ejfqMGYfcUL6h6N3bsbKQyXmeaa4LUXuvShXWk=;
        b=ctoQUVP9YLGyL9glCQq5x7f18rzypHwMbw7pBb4pEHTcKUBvR75LyMHO0ZHk3pw0sj
         QTnVXbauEKn/fQSUx2nkM2ARsVjsc6vGakx4ydnmMrYYQmyTpTEPDf9l517w1NHoMIvS
         bnJE692TRwJWNrMCca5LXX2U107uxmFtkwp2ZfbqyBwatUqUdT79cND9PUr6WW7ql/88
         jGk8EetiSPCqSASWtSJLSFxkrBIL0gz6Knw159GuKrMuGv6IsYEHGK8KFnhq7WL1XkCL
         axxZh+GtwnJz+pVUR3lNBUZfTV2Y8QChr7HPTBBksew3NoGCKGKwO05NiGZHjcDegjNx
         01og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id s76si401949qka.5.2020.10.04.19.42.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2020 19:42:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: v4dy7GSo5ueOiS0+Z40XW+qs93815/YyGl9puhT/nR/a9vmTXWFIXPo6vMKF9ascp6T4Fv3TSb
 87MZbm3B/UtQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9764"; a="164169752"
X-IronPort-AV: E=Sophos;i="5.77,337,1596524400"; 
   d="gz'50?scan'50,208,50";a="164169752"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Oct 2020 19:42:47 -0700
IronPort-SDR: voxbHMUc5s53vuiWbhl4IjhkicWNPO/6q+RM2lryTNGsB1PLP2jd1oNBPYkLmxBNmDdU/5AebG
 dBHbqr1LM0YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,337,1596524400"; 
   d="gz'50?scan'50,208,50";a="352991022"
Received: from lkp-server02.sh.intel.com (HELO b5ae2f167493) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 04 Oct 2020 19:42:43 -0700
Received: from kbuild by b5ae2f167493 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kPGSZ-0000eH-81; Mon, 05 Oct 2020 02:42:43 +0000
Date: Mon, 5 Oct 2020 10:42:00 +0800
From: kernel test robot <lkp@intel.com>
To: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
	linux-integrity@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	stable@vger.kernel.org, David Howells <dhowells@redhat.com>,
	Mimi Zohar <zohar@linux.ibm.com>,
	Sumit Garg <sumit.garg@linaro.org>, Peter Huewe <peterhuewe@gmx.de>,
	Jason Gunthorpe <jgg@ziepe.ca>, Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 2/3] KEYS: trusted: Reserve TPM for seal and unseal
 operations
Message-ID: <202010051054.nSqmgsmE-lkp@intel.com>
References: <20201005002659.81588-3-jarkko.sakkinen@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6c2NcOVqGQ03X4Wi"
Content-Disposition: inline
In-Reply-To: <20201005002659.81588-3-jarkko.sakkinen@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Jarkko,

I love your patch! Perhaps something to improve:

[auto build test WARNING on security/next-testing]
[also build test WARNING on integrity/next-integrity char-misc/char-misc-testing linus/master v5.9-rc8 next-20201002]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Jarkko-Sakkinen/KEYS-trusted-Fix-incorrect-handling-of-tpm_get_random/20201005-092710
base:   https://git.kernel.org/pub/scm/linux/kernel/git/jmorris/linux-security.git next-testing
config: x86_64-randconfig-a002-20201005 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bcd05599d0e53977a963799d6ee4f6e0bc21331b)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/ef36c0cd07555d658f81aee66abb02bdbe1c37b7
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Jarkko-Sakkinen/KEYS-trusted-Fix-incorrect-handling-of-tpm_get_random/20201005-092710
        git checkout ef36c0cd07555d658f81aee66abb02bdbe1c37b7
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from security/keys/encrypted-keys/encrypted.c:22:
   In file included from include/keys/trusted-type.h:12:
>> include/linux/tpm.h:423:16: warning: no previous prototype for function 'tpm_transmit_cmd' [-Wmissing-prototypes]
   extern ssize_t tpm_transmit_cmd(struct tpm_chip *chip, struct tpm_buf *buf,
                  ^
   include/linux/tpm.h:423:8: note: declare 'static' if the function is not intended to be used outside of this translation unit
   extern ssize_t tpm_transmit_cmd(struct tpm_chip *chip, struct tpm_buf *buf,
          ^
>> include/linux/tpm.h:426:1: warning: non-void function does not return a value [-Wreturn-type]
   }
   ^
   2 warnings generated.

vim +/tpm_transmit_cmd +423 include/linux/tpm.h

   397	
   398	extern int tpm_is_tpm2(struct tpm_chip *chip);
   399	extern __must_check int tpm_try_get_ops(struct tpm_chip *chip);
   400	extern void tpm_put_ops(struct tpm_chip *chip);
   401	extern ssize_t tpm_transmit_cmd(struct tpm_chip *chip, struct tpm_buf *buf,
   402					size_t min_rsp_body_length, const char *desc);
   403	extern int tpm_pcr_read(struct tpm_chip *chip, u32 pcr_idx,
   404				struct tpm_digest *digest);
   405	extern int tpm_pcr_extend(struct tpm_chip *chip, u32 pcr_idx,
   406				  struct tpm_digest *digests);
   407	extern int tpm_send(struct tpm_chip *chip, void *cmd, size_t buflen);
   408	extern int tpm_get_random(struct tpm_chip *chip, u8 *data, size_t max);
   409	extern struct tpm_chip *tpm_default_chip(void);
   410	void tpm2_flush_context(struct tpm_chip *chip, u32 handle);
   411	#else
   412	static inline int tpm_is_tpm2(struct tpm_chip *chip)
   413	{
   414		return -ENODEV;
   415	}
   416	static inline int tpm_try_get_ops(struct tpm_chip *chip)
   417	{
   418		return -ENODEV;
   419	}
   420	static inline void tpm_put_ops(struct tpm_chip *chip)
   421	{
   422	}
 > 423	extern ssize_t tpm_transmit_cmd(struct tpm_chip *chip, struct tpm_buf *buf,
   424					size_t min_rsp_body_length, const char *desc)
   425	{
 > 426	}
   427	static inline int tpm_pcr_read(struct tpm_chip *chip, int pcr_idx,
   428				       struct tpm_digest *digest)
   429	{
   430		return -ENODEV;
   431	}
   432	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010051054.nSqmgsmE-lkp%40intel.com.

--6c2NcOVqGQ03X4Wi
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--6c2NcOVqGQ03X4Wi--
