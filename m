Return-Path: <clang-built-linux+bncBAABBXVG5L5QKGQEP4MIQSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF4F282F11
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 05:30:40 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id z75sf4512872ooa.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Oct 2020 20:30:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601868639; cv=pass;
        d=google.com; s=arc-20160816;
        b=baQpnuR9zMY+bc9j7BnpTCFLvHN0wH82eBhO2gg7LYwAhYmaGUQV+jl4b+7cM52UqH
         DSWedzOZewrZNOR3MKjrW1s9KUkaB+nBUwIYSdmMi4EUARWHmjIuP2sCbH7CXsRzjqZx
         eAAfGSsqYwwDk9ZZL57NHt2uqLCy/5R1+qXAw5lqk7FVmQpfrMVXGvAyUnoyWXtqVPHI
         bZBbBK5I56j2RnJf4hPUOpuVaHOq9/v3JcI+8meemCp5j2uYBOvjeZ8i1gVf9wtRcEBF
         OCMMa/gTeU6AmhsYKMpuz0Xwo7nY7CdVZAab3o2yVWKv+MKo+qNg/3n1hioUyHdtMINt
         Mq6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=gV1wo5WTNGE+rEgSSTGnr3esf2gYKNpzbIngw03zv/o=;
        b=WoPcPh6zCAfcQi7An2kSVOPM0nYQj93HiO9QPAwqSqa5zx54SGfNNH+XGOa+zbdJl8
         h8wZ9vzW1alEwOu9akhi70x/syMNXBV6r/yZojZrwNM7YkY8EfJ1tfAaEqO9eEL/ByRe
         scZulXbubr+Mx7MKbITNS+W4zk4U9oQ2oN3xkZzs3+SBloKWf7UNT1Thtly+rHBW2kOn
         bBGmp5wp4zmkiciAZ7xGFZuP2rImOMkt2HlvvSzNkudOzqtw0UFYfMP1NtbTwqyNT25Y
         r87Crm2iBs4pj8q1O3qj8UbtCjL176xGCo43Jm8hysu4eOgRNhpfXt0Rc6SYqhJNO+Cj
         XkRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=jarkko.sakkinen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gV1wo5WTNGE+rEgSSTGnr3esf2gYKNpzbIngw03zv/o=;
        b=afnCMIR56cmFgLkI0Dk5qytWdOkj3P7pqJAEKn/fec7iyqMCZwZEPZucVbDxYR1fY9
         AOJnBKg4SRQk7+TwbbcmixF0K2nWv5D9EkzhqIbvq3Aflz5/QEBiAjAbLKjTJprsJ90D
         vGSKhBw3BD1Aqr6K0s4RE27PW+PbqbJLn1q/dCJv5PNnV3Bm1UNnpuB1GvUSdez3eADC
         MJmBpx8HQXShuQ8w9KCH2Rh8py8rxF8Yy8wwrJ6sUB9PwoG3SuP+Dzw9XtN3ao8B9uG3
         SY0i4+5WJRdkVird6a4Yfm8knegTCWa9tSs2cjROfuLXZUo/jCR4BW/J+UqXCQDRMEiP
         e4sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gV1wo5WTNGE+rEgSSTGnr3esf2gYKNpzbIngw03zv/o=;
        b=EkhBa4NrzkR9FubthES3lU6vFyEa9IuIMcjfcvfV7FUR+IgWUy8s14f5ezf3StC85U
         hGKgrepgqERubf3NinQsf95sMmPTDOrlxIIgc6lSGkHFEqn2yG3mJav20PofCkXF7qiZ
         YBKg+/xa1QmyVCRmuPyn4QLMy1zLcPtmY6L69l+Cp0JINSqLGjnmTW+F50ACVLA3mgcI
         aWLnLwSejMcaio1V9Um41JT8xPAfTMbOcRigFq8e6mhjMbyfR/A5GBc4OHUAoVgsE4I7
         gUX8ulg2qf/i2XQMuQfyMckbpnkXVEqoW8DojnFpyELgStWXH5b7iEa1gIv92eofpyxs
         oagw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530H5TnddZ/l7BjFHlnNYQLvAzjfxWG2cuVjF386LKjHhgxQh035
	yMPNvmEo5s3X5e/aw9rBSt0=
X-Google-Smtp-Source: ABdhPJzNPFA2exwjlkRidmYB/nzrx03pY3NuufCuodgcQBDdIevpBKZFqfNRwpw7iQPyUpKZfhQYEg==
X-Received: by 2002:a05:6830:1091:: with SMTP id y17mr1114423oto.160.1601868639001;
        Sun, 04 Oct 2020 20:30:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c0b:: with SMTP id o11ls1912238otk.2.gmail; Sun, 04 Oct
 2020 20:30:38 -0700 (PDT)
X-Received: by 2002:a9d:5910:: with SMTP id t16mr10620921oth.155.1601868638642;
        Sun, 04 Oct 2020 20:30:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601868638; cv=none;
        d=google.com; s=arc-20160816;
        b=BJ8c959trG7Nvp7Z5lGaT3YRr6YBACo8m5pJGPiPs3uwZlcHIPOGjvGNRqXsvMNVgj
         PrnqZr1sZ23T3k/CS6kT/7VBsMOzyCbXAwWzdaF9MfNetTvhyOOm+YQWSE+h8MXXa2yE
         qBHTOqcdy73OUlFR61Dl5QDsokaVm5xEvcJFDafKsiLXT8FeFnkhr+z18zry1pFq3dxl
         yVye0EPWXi54xyHtoiB+JYrmzXFleavgTslKgzE4u6TaNds22GF1L9OdRVnYymGnOAwE
         W/WAK5LIsGRktJR2/tCy13UoqpnctB4AwYyOcNxJkHarLgsjwAGAGHtsck+XwysQlIy4
         9CCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=a0eux2aty36zWoKlPtW16IYup87Et/RsNeQeKunH1Ko=;
        b=aOABG1jG0iY7nklQUMCf0/rfCJwFw4W3HB5V3ryqgE2G1ajXwiINCe7e04CyjDcjjE
         gq3HTIT87/ZW8QWDKAyyLkkaW5RDVMWPOlhfOPLOxUh53C0RMzd3oKArSUXy2VDN0Ias
         P0MKqmncAzKuiG64+w9x1zib3B38Hj2BOy4GNt/rpcXJJmBkgSuscN9BhfnfqyMICP+a
         NQ8ATBadoFDgV76xzTsMUhMzSNfSG4vY/tEgZGAJ2SquVOL7zgqTHTWzQcqtSr3U/KLp
         eMMt8REJulZtzcIRWioGVC3nV8WnQW6mlYzmyxaoSO/2m3b8Zm3sb8Jxhc/L+PGivG65
         Q82w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=jarkko.sakkinen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id w8si278751oig.2.2020.10.04.20.30.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2020 20:30:38 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: GGHr7fYkFmTFq5oUlYNIDroSgJDa3dgui7rCJuWtaOKvykryh/4PHb/PQEdz3j0iAZLsjDOeTa
 zWUI8AbtY5Ng==
X-IronPort-AV: E=McAfee;i="6000,8403,9764"; a="151107942"
X-IronPort-AV: E=Sophos;i="5.77,337,1596524400"; 
   d="scan'208";a="151107942"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Oct 2020 20:30:34 -0700
IronPort-SDR: wgZ/mIv7rzj/ovD+4S+MIid/eyJTwqehy3S7dVa69ROhLiD4lGc34CdoC0wkSWVEI2iU30n4U4
 yEUSS17pj6Vg==
X-IronPort-AV: E=Sophos;i="5.77,337,1596524400"; 
   d="scan'208";a="523307956"
Received: from sidorovd-mobl1.ccr.corp.intel.com (HELO localhost) ([10.252.48.68])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Oct 2020 20:30:29 -0700
Date: Mon, 5 Oct 2020 06:30:27 +0300
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: kernel test robot <lkp@intel.com>
Cc: linux-integrity@vger.kernel.org, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	stable@vger.kernel.org, David Howells <dhowells@redhat.com>,
	Mimi Zohar <zohar@linux.ibm.com>,
	Sumit Garg <sumit.garg@linaro.org>, Peter Huewe <peterhuewe@gmx.de>,
	Jason Gunthorpe <jgg@ziepe.ca>, Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 2/3] KEYS: trusted: Reserve TPM for seal and unseal
 operations
Message-ID: <20201005033027.GA144802@linux.intel.com>
References: <20201005002659.81588-3-jarkko.sakkinen@linux.intel.com>
 <202010051054.nSqmgsmE-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202010051054.nSqmgsmE-lkp@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: jarkko.sakkinen@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com
 designates 134.134.136.126 as permitted sender) smtp.mailfrom=jarkko.sakkinen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

I'll fix this this and send v2.

/Jarkko

On Mon, Oct 05, 2020 at 10:42:00AM +0800, kernel test robot wrote:
> Hi Jarkko,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on security/next-testing]
> [also build test WARNING on integrity/next-integrity char-misc/char-misc-testing linus/master v5.9-rc8 next-20201002]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Jarkko-Sakkinen/KEYS-trusted-Fix-incorrect-handling-of-tpm_get_random/20201005-092710
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/jmorris/linux-security.git next-testing
> config: x86_64-randconfig-a002-20201005 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bcd05599d0e53977a963799d6ee4f6e0bc21331b)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/ef36c0cd07555d658f81aee66abb02bdbe1c37b7
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Jarkko-Sakkinen/KEYS-trusted-Fix-incorrect-handling-of-tpm_get_random/20201005-092710
>         git checkout ef36c0cd07555d658f81aee66abb02bdbe1c37b7
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    In file included from security/keys/encrypted-keys/encrypted.c:22:
>    In file included from include/keys/trusted-type.h:12:
> >> include/linux/tpm.h:423:16: warning: no previous prototype for function 'tpm_transmit_cmd' [-Wmissing-prototypes]
>    extern ssize_t tpm_transmit_cmd(struct tpm_chip *chip, struct tpm_buf *buf,
>                   ^
>    include/linux/tpm.h:423:8: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    extern ssize_t tpm_transmit_cmd(struct tpm_chip *chip, struct tpm_buf *buf,
>           ^
> >> include/linux/tpm.h:426:1: warning: non-void function does not return a value [-Wreturn-type]
>    }
>    ^
>    2 warnings generated.
> 
> vim +/tpm_transmit_cmd +423 include/linux/tpm.h
> 
>    397	
>    398	extern int tpm_is_tpm2(struct tpm_chip *chip);
>    399	extern __must_check int tpm_try_get_ops(struct tpm_chip *chip);
>    400	extern void tpm_put_ops(struct tpm_chip *chip);
>    401	extern ssize_t tpm_transmit_cmd(struct tpm_chip *chip, struct tpm_buf *buf,
>    402					size_t min_rsp_body_length, const char *desc);
>    403	extern int tpm_pcr_read(struct tpm_chip *chip, u32 pcr_idx,
>    404				struct tpm_digest *digest);
>    405	extern int tpm_pcr_extend(struct tpm_chip *chip, u32 pcr_idx,
>    406				  struct tpm_digest *digests);
>    407	extern int tpm_send(struct tpm_chip *chip, void *cmd, size_t buflen);
>    408	extern int tpm_get_random(struct tpm_chip *chip, u8 *data, size_t max);
>    409	extern struct tpm_chip *tpm_default_chip(void);
>    410	void tpm2_flush_context(struct tpm_chip *chip, u32 handle);
>    411	#else
>    412	static inline int tpm_is_tpm2(struct tpm_chip *chip)
>    413	{
>    414		return -ENODEV;
>    415	}
>    416	static inline int tpm_try_get_ops(struct tpm_chip *chip)
>    417	{
>    418		return -ENODEV;
>    419	}
>    420	static inline void tpm_put_ops(struct tpm_chip *chip)
>    421	{
>    422	}
>  > 423	extern ssize_t tpm_transmit_cmd(struct tpm_chip *chip, struct tpm_buf *buf,
>    424					size_t min_rsp_body_length, const char *desc)
>    425	{
>  > 426	}
>    427	static inline int tpm_pcr_read(struct tpm_chip *chip, int pcr_idx,
>    428				       struct tpm_digest *digest)
>    429	{
>    430		return -ENODEV;
>    431	}
>    432	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201005033027.GA144802%40linux.intel.com.
