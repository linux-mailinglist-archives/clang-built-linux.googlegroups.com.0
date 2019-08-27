Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSG2STVQKGQE2FX2WKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id C77D39E8DE
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 15:16:57 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id g1sf11888591otr.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 06:16:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566911816; cv=pass;
        d=google.com; s=arc-20160816;
        b=bXg1QXuK/DkdU8UWrNIuTUjEAwsjrCKLR+p4b+dCrxK7Kbf9E81ZxPnpnhYzLrr3zJ
         KvyVexonMG0qLayu6ezm7fB94Slh8+Epl6uTlUYDlebcd90tT4l+Z1QLaSD00Uj6wFHj
         l74k8RyjtdCfBLHoMm8o5ynp009jJTVGPV1J7kHJ5WiNaB2TuE3KzshvA3luyLD6MNiX
         okV17IZ5OMLJeG1Bxb0u7wfxiaQ5z2oMQqz2v9Zu2HZlSL6zI8JCiSR8RT9rJ90TelWH
         q0sJ2YISAAl1CFPZMBqLkXLKGw2DviAkDwqsmziAljPdtbYsUTUoUfWb+YTyCWoapqmK
         jS3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=E86Sv/YQlBb9xIq3k7tefOcbhwj774RJHvbIokOPpHU=;
        b=FstyXXYVSl9FQLTwsoUtTg3Y4nLejxKSDEcCBGB6g48IqKpxGwOxp1tsZZ3HL+KISU
         4GZoIzSpAtPStT4jcUywoMDJrJKV4sFmZ0sLZxGaif4lGJOwo8BlQyYtSCjnKn1qW9RI
         woS7BKfRAFQvVl+JbbTXXPFVBQUQzxpSj8Cb3XsYMizwgI0O2lzqKViiXjvu3hL1ip5V
         FjEzR126SP5XlFxOClkZkcrM2jU6e7UNy2+WoFilmzc/Kb0yaZph+B9Q/J7iUyfTadxq
         sMhgD2HpkyW0tR1i5oh4FBsN3ik90+h4qkEx2f9qiZsZU/V8s0ECdW6iOBLJnN5PrO4c
         95kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E86Sv/YQlBb9xIq3k7tefOcbhwj774RJHvbIokOPpHU=;
        b=THLDNPiVqCdCSPgyyFedurc881PVSMVNBWLHxvEsicKYMdGC+0CC6s9AYD1HFue56m
         lLxHCRjitXs+oUWHpRW9WV1vG/LajWUvgbSlOUYfCXs/2LZMexwPBDlP0xjgheiEbd4X
         YITIlPnJdXKUisE+xim9FY7udLo2lxaXmKgl+qR8q+d1OdyLzq8ftkO6e6qlnJKNZ6EP
         fosFr2bRaZfagYhnqo+R5QGFShh0QWGxzkOuhpfkMkF4PZ7MQWE2DV+x/9lo4DD32gHi
         pvl/MhjtMwb+qLMIR3fAGLxf4zWPzZF9bunte29j3RdNA66eSwPCDD3O/gVRCi2jpgr2
         xAnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E86Sv/YQlBb9xIq3k7tefOcbhwj774RJHvbIokOPpHU=;
        b=uRo5H3a4anzbQPz7GoMEsCDkUMw4/2F6sFQjeAJrqJVxnFv6k0jJJTQksnHhN2cA5B
         b+I4ZaQkuU3oxA3aLM0K2SgliicckeUVxO48j93hLLJRt5aLb4n58iuSQyUKP6t36Ct9
         Gj7/J5DoYxfehnxT4HzEAv63Zi/LoIR/gfLVbY8SSa79AIFfX+ggGTLzif0RP4LY7/je
         LSN1FSazMHrJHgoi39WiUDD6joa/9EnRiyXkcA4gqUFoDOxcBVEGeyKqjWaF535/Ypl9
         WgMnlP6/0WLqv7jLE0jEzQ5MJZONh/uDhT+vm4qum8zx5UiuMborKEEzUQV0odCHijUH
         bkKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXyYwa3PobeqweWanvPzkvJ6EPAHwbL+HcHWD8F1h0rSDuTWrL7
	Ad7eyrEen9wp8WU9+yBgyAU=
X-Google-Smtp-Source: APXvYqykxjabdgMJrYt8L0aRARsQV3pL2tBKVGx49RmqzGm5jKcwSxuRehstDECLrChttl7jeFdVhA==
X-Received: by 2002:a9d:876:: with SMTP id 109mr19288862oty.319.1566911816639;
        Tue, 27 Aug 2019 06:16:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:961:: with SMTP id 88ls1027051otp.8.gmail; Tue, 27 Aug
 2019 06:16:56 -0700 (PDT)
X-Received: by 2002:a9d:6652:: with SMTP id q18mr20226870otm.162.1566911816323;
        Tue, 27 Aug 2019 06:16:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566911816; cv=none;
        d=google.com; s=arc-20160816;
        b=PUH2eeIh4pm1/qZ9b94yapYjm8apH7p9QyvM3cVLIGN4IUrL1xlBu32WTcy6b0nsVX
         XtN8HLyFnHBM3+TyvGzqEAijyY+etrNA7LkWKFM00WG93yxvfn41Ay3Tz8/MHlY7LMxT
         nBHr6ltHdnHc+5ImwkGd7ORPjbW8pb3vqLS5ATS7hUOKhiKSwQdPuDG0r+d/McJHl4kc
         xJeN9hPxhWvp3m34rmyFm6LPl3a8VyOVBy/YjXoSOkbP7BSERjY5YYpUPh1WxEyidUPE
         9XJlL8oJ0iemLenTk6VzyAE0Vz6WUmhzB6XAdMjKIJ4iwQCGEv77Z6XczjT/Bo6IPjgW
         4aAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=+hs6t4YafHmsrHwyGnF+gPy37uqA/K+fJ32GS+7qIag=;
        b=N5Tqn/mcx2CE2RWbS2CH+D/E7g7DJ6tuWFLTHAULg61VUAM7/9odN8tewUBLATZ7jv
         UApHJ0EcTOmHEMCjYwI/ckEPI9aPnbn/oSXosgIvWcmFpp8kOq0wGKRZLFRxS/kQdMtU
         hgVyOOYGjmJWxg5xvuvavDDQAEpwSSt5U7MRT6+81DPrEafvDb24YxkZNrSxAOOn7kay
         ESNnNnM9ocKbcsh7aCq2xtZxoY/MKWGx1g9u3M3nTGFla0Vm9F9Vyvi9/43tnbPdKTrD
         TpnM3wbmmuysjXwnBAW5jjv/tFazDdH83xchKToH6PzIVofcVsB++uX9c2R1QEJN8JNf
         P16g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id u18si765553oie.4.2019.08.27.06.16.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2019 06:16:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Aug 2019 06:16:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,437,1559545200"; 
   d="gz'50?scan'50,208,50";a="171192597"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 27 Aug 2019 06:16:53 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1i2bLA-000EmQ-W7; Tue, 27 Aug 2019 21:16:52 +0800
Date: Tue, 27 Aug 2019 21:16:31 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [linux-rt-devel:linux-5.2.y-rt-rebase 138/263]
 kernel/time/hrtimer.c:937:33: error: use of undeclared identifier
 'migration_base'
Message-ID: <201908272128.94yS48UO%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="hynuahzod3gg6h26"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--hynuahzod3gg6h26
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Julien Grall <julien.grall@arm.com>
CC: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/rt/linux-rt-devel.git linux-5.2.y-rt-rebase
head:   fecb7da7a944b4987059ffec17cff062cb31f6ce
commit: a6188f4dee69def151fc7e52608f0c1d6da8e02a [138/263] hrtimer: Prevent using hrtimer_grab_expiry_lock() on migration_base
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        git checkout a6188f4dee69def151fc7e52608f0c1d6da8e02a
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/time/hrtimer.c:937:33: error: use of undeclared identifier 'migration_base'
           if (timer->is_soft && base != &migration_base) {
                                          ^
   1 error generated.

vim +/migration_base +937 kernel/time/hrtimer.c

   932	
   933	void hrtimer_grab_expiry_lock(const struct hrtimer *timer)
   934	{
   935		struct hrtimer_clock_base *base = READ_ONCE(timer->base);
   936	
 > 937		if (timer->is_soft && base != &migration_base) {
   938			spin_lock(&base->cpu_base->softirq_expiry_lock);
   939			spin_unlock(&base->cpu_base->softirq_expiry_lock);
   940		}
   941	}
   942	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908272128.94yS48UO%25lkp%40intel.com.

--hynuahzod3gg6h26
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICEkpZV0AAy5jb25maWcAlFxbc9vGkn7Pr0AlVVv2Q2zdrMhnSw9DYEBMiJsxA170gmJI
SOZGIrUkldj/frsHADEAemhvzklsTffce7q/vkC//fKbw96Ou5flcbNaPj9/d57KbblfHsu1
87h5Lv/b8RInTpTDPaE+AHO42b59+/jt7ra4vXE+fbj6cHnhTMr9tnx23N32cfP0Bp03u+0v
v/0C//8NGl9eYZz9f5zV83L75PxT7g9Adi4vPsD/nHdPm+N/Pn6E/75s9vvd/uPz8z8vxet+
9z/l6ujcfFpeP66vLm4f/4J///hjeXH3+fZu9fnz8u7yj6vVX49Xq9V6ffH4HqZyk9gX42Ls
usWUZ1Ik8f1F0whtQhZuyOLx/fdTI/544r28wH+MDgGTBZNRMU5U0nYS2ZdilmSTtmWUi9BT
IuIFnys2Cnkhk0y1dBVknHmFiP0E/lMoJrGzPpuxPupn51Ae317bLYyyZMLjIokLGaXG1LFQ
BY+nBcvGRSgioe6vr/CE6yUnUSpgdsWlcjYHZ7s74sBN7zBxWdhs9tdf234moWC5SojOeo+F
ZKHCrnVjwKa8mPAs5mExfhDGSk3KCChXNCl8iBhNmT/YeiQ2wk1L6K7ptFFzQeYe+wy4rHP0
+cP53sl58g1xvh73WR6qIkikilnE7399t91ty/fGNcmFnIrUJcd2s0TKIuJRki0KphRzA5Iv
lzwUI2J+fZQscwMQAHjnMBfIRNiIKci8c3j76/D9cCxfjJfGY54JVz+JNEtGvL0BkySDZNZ9
P14SMRFTbUUgeIbrWNBjRUxlYl7A2kBoVZLRXBmXPJsyhQIdJR7vzuQnmcu9+lkKUyHIlGWS
I5MWm3K7dnaPvd23yiNxJzLJYaxixpQbeIkxkj5Kk8Vjip0h49M2FVNLmbJQQGdehEyqwl24
IXHMWvtM21vrkfV4fMpjJc8SUfEwz4WJzrNFcFHM+zMn+aJEFnmKS27ER21eQOdTEhQ8FCn0
Sjzhmg81TpAivJCTUqzJJCUQ4wBvXx9IJrs89XUOVtMsJs04j1IFw8fcXE3TPk3CPFYsW5BT
N1xFGJ6lZ6rz/ioTmeYf1fLwt3OEtTlLWOfhuDwenOVqtXvbHjfbp/bIlHAnBXQomOsmsJ5K
gE/TTEWmemS8GnJJ+Bi05LS89NKlIE/yJ5att5e5uSOHlw/zLQqgmcuHH8GKgkxQFkxWzGZ3
2fSvl9SdytjqpPqLTfXlsaxNtxuAbtDC3nuuMk9TsOuyiPOIFSMG4MHtaA/NNWOxAqLSw+Rx
xNJChaPCD3MZ2AYUsbq8ujOPwR1nSZ5KWtcH3J2kCXRCSQcdSD+SaiNozvVYJE/GQ0ZL8yic
gE2aar2UecSpAT5KUhAe8cBRoeIzhj8iOJPO2+mzSfgLdbOguVQIN+/yVGttlTGX9yx96sp0
AjOFTOFULbUSGHPaCGypAGOX0Ucz5ioCFFbUCpNmWkhfnuXwAxbbVFSaSDBTlBY6qQO4wAl9
9rnlGXb3T/dlYL/83LbiXPE5SeFpYjsHMY5Z6HskUW/QQtO2wkKTAWAVksIEjZ5EUuSZTUEx
bypg3/Vl0QcOE45YlgmLTEyw4yKi+45S/6wkoKRp/OZTT0U/dnQm2iXAaDGYSni7HeUn+Rei
P/Tinse9/nOAOYuTUTek5PKigzC1Cq4dtLTcP+72L8vtqnT4P+UWlDUDxemiugaj2Opmy+Ae
B+GsiLDnYhppIEYah5+c0bBcUTVhoW2R7d2gk8NAw2b025Eho+CtDPORuQ8ZJiNrf7inbMwb
SG5n88GihwJAWQZ6IKHFucsYsMwDmGR7E7nvgwVKGUx+ArgW5ZH4Ihy8hvrku05lcwS3NyMT
Ys61/9752XQ0pcpyV2tij7uAoA2gneQqzVWhtT14g+Xz4+3N79/ubn+/vfm1I/JwgNWP978u
96uvGDL4uNIRgkMdPijW5WPVcuqJhtfjaWMcDWwOTs1Em4UhLYrynm2N0PBmsVfApjVevb+6
O8fA5uhKkwyNxDUDWcbpsMFwl7cDZAxIfpQhlPfQ7vZWjAoCcRva5DlFA58OnAARc21ECQ4Q
CXg2RToG8VA9ZSG5ylN8uBU2BM+nZYg5AIWGpJUNDJWhsxHk8cTCp6WUZKvWI0bg7lYeGNhC
KUZhf8kylymHg7OQNZAKcpgljTx4HCwjOfThslBzAtBqWR4AxRdexK6N2IP2bXVnGxSrFRxs
Tr9AG1uu3V3DmfLB2nOWhQsXXU5ugJN0XAHLEJRbKO9vegEmyfBCUbbx1rhb+bRaZ6f73ao8
HHZ75/j9tcLXj+Xy+LYvD5XX0N0orVQiGvnh8/c5U3nGC4w3SEJpIk+UapfY1J3jJPR8IekA
Q8YVIAkQUuuslYwD3MtoW4o8fK5AMlDazmGdCuEmEVypn8EeCg2KLfY9WIDkAkoADDrOewGy
FiNM7uj2VNJxlwhNOB1LAuXYtQl9bZDmXW2s1x6Drq2fugyEr+5vTZbw0k5T0u2O50bp3A3G
PSWP/vm02wJKTUR5pG/GZ5EIF/e3NyaDfhSAzyOZdf3ixOUST1TyECSX8hJgSHg0em9GXKJp
ZpE3bAwW4yQeNrsADVhu2KEg5aoCoB2EEgliHbFWWhItNSiUER+DHr+kiSB4Q1KNBQaEtgFW
GKJq7wZy9KVheLVgqejdDyDaurEj+xkHd01V3lIdBx4liUJnnUZE+gpdPoB8JvJ62W03x92+
CiS0F9iCPLwKeD+z/uupIYVlrO4imvgT2JA81KqfRvJ3NHSLhAsCBfJv36Wk33atVgSNq5D6
SWtfi47zRAbSW4xHqPYlYVhBn4NYuNki7TiZeGQGyYb8q6BixcgIM3giN0LWo+u31cR2MZpp
PCQRhnwM0lVrPgwW5vz+4tu6XK4vjH96Z4URBEAqiUQXJMvT/l11xBFDqWC+khlqhfa2VEZf
hl70GUSMg0oATVai1hVFHokfsYB++xFHdWi1ZUUsMuEL+hVJ7iKCo23HQ3F5cUGFjh6Kq08X
pkxAy3WXtTcKPcw9DGNmCubcFudnEoB13l1o85yDhRSoawBOADq++HbZv3zAluhVoBSe6w84
dRxD/6tORgwlzV30X3kHGvRZMJJK7yPyNJIFzUajAJBz4S+K0FOU420i21BMeYrxNjMMeA46
DZ4387yCevrVc22EKEhUGub9cF/NI9MQUAgC1VTVocNKB+/+LfcO6M3lU/kCzq9eCXNT4exe
MUfaAXI1IKY9PgpKdDEpDttRTzgNKeq+GBgLUJ+Ovy//963crr47h9XyuWcrNDjIuvEJMxBM
9D4NLNbPZX+sYXDfGKvqcLrMHx6iHnz0dmganHepK5zyuPrw3pxXSFaMcvr9Iw1ANJpku9pa
SH9ELtoyd7WuzXa5/+7wl7fn5eDOBfgnP7CXOPP8+oqedzB25200WHOcp41E+pv9y7/Lfel4
+80/Vcinjdh5tPCBmxfNwP/Cp2DT3OMkGYf8xDoQMFU+7ZfOYzP7Ws+uKU1ahmZoyIN1d5PA
06ifBMlBiz0MTrWTdceoxOZYrlAv/L4uX2EqFK/2aZpTJFXQxTDfTUsRR2IIRP8EJQ2QcETC
Dj0i933hCox45bFWuRivdxFS95QMhtowAa8EYEE5Y/1EuwAnBMMQhN8/6TuqVSu6aRQhSen2
ehisSPCp0Lyfx5V95VkGuFXEf1b2tscGB9Vr0fvTIwZJMukR8T3Cz0qM8yQnMpfg3Go9Uqdy
qZAIaEa0I1UulWCQvIFWFmINDqPBoVcrr0o7qmhZMQuE0oE+IlABPsQCHG3M1erMg+7RGzLj
Y1DjsVfFA2pZQI3U55P8i+0CsDTE2jGYgUvBWZU96tEiMQf5a8lSL6fHhIFu9PHzLAbjDkcr
zMhgPyxN3DdGQNFAgrvk8SrcoXtQgxDzN5HnrD4iRELUvbSP7zxVR9sUIIjB7VfSWkjm88aT
7g9VP9n68hFB9DjqfpUHaKF5Sd7xCdpV1oi0DuuRHHgGIVxYP9jXDyc1drcOOXXIg3R3l3y2
VmQmVAA6qboLHYPpXxg+Xz5X+olPOtlSTbZkq/v6bZin7gtvMtVxQot2idHJ4nU8kbgoK1+R
5uSYOi45tSgFmfhab6jFYJVe4/NxF96OERAAUh6CgkVVz0NfyyVxCnwOMBNeuS6rwVMntJbu
rv2vTpi4XV8n9N1j0BOQ6rTbq42m19ecLhplqML+oJV81IUsQ6sAexUVij6F+FsOnbbQt09t
Ba/gdBBGJqlpPZeNg3cr4N3WZVnZzAi6nyH1u1cXZ+HJMAOSx52oQdM2yNIONpfCwQA6rJ02
ODfZgLixm0x//2t5KNfO31Wa7XW/e9w8dwpFTqtA7qLBKlV9UJsrOjNSF0qC8kD/R8Sy0//n
oFQzlE5PS8wa3l92nD0UfuIwmmehMo4hiGSSdwr6RmhKiG4irvIkKSinPEamuqarS9fiWtHP
0ci+swxsva2zSez27rlsKkFEAJCZQHxfcp6jeYFN6HIwO0s2oxi0kDZp5mLEffwDbWe3Is7g
rZz2WcbSlJ+yEPxbuXo7Lv96LnU5sKPjgMeO3zASsR8pVDx09rwiSzcTKR13rzkiYQmz4w76
QY+TCNoWqFcYlS87cJCi1nkcoPuzAbY2OhexOGcUpa/km5gTl9wEWUYYcA7ibOqzljStPKw2
Utha5T6PTXVgkYGWO51KqEyUWQRhxDKoRHkVyNBBjCrCfWNeQ5Qy1xIsxOgRhlKyQvVzzdrK
qwR9b3MxE0kFNZpKWH0OVaGhl93fXHy+NcpOCFNtU/UV+FYBWISO59TJZk467qMLmCrWiRZL
8IrOtT2ktmjWwyinPesHOayg6Dk5OqvYuHjEs63Sf3wqSP8miEByBTplncwNz3RaRTFFR0PG
gM9HPHaDiGVnjWiqeIVmWMes2J9dO0fMqZB5hUKw4OZPLUL6FXvlP5uVGbLoMAvJzM3hz7aB
U7cTIsNIDV1p5bJu1VsbN9is6nU4yTCEl1cVLAEPU0seEm5KRalvCUIrwG0stEVNQafo4U/x
GF2VP1jmKVTyvFuu6yBLPYI/AyvKPEuWp9/RiCWCkM50QSCtik+bw+y5l4FDZdu9ZuDTjNMn
UDHgFwz1MGCIEdyfT6TqMkdLBTqSp3mIVQIjAcpN8CGAGd7pKaK41qJ3MCNVZrPxZGJpKTxT
9NtPfNvDisQ4UI3AgmOZ1dUurSBUTYObj8E2OPLt9XW3P5or7rRXdnFzWHX21px/HkULhCx0
SV/shonEmgFMCoHGsYgxeIK05rwil8053F3kHIyFNxNqSvH52p3f0sa/27UONX5bHhyxPRz3
by+64uzwFaR67Rz3y+0B+RzAt6WzhjPYvOJfu3HI/3dv3Z09HwEJO346ZkYUc/fvFh+T87Jb
vwE2eYdB8s2+hAmu3PfNF1JiewTgDUjQ+S9nXz7rT6/aw+ixoPR5TfRU0yT4kkTzNEm7ra1/
lKT9OHhvkmB3OPaGa4nucr+mlmDl372e0jHyCLsz7cI7N5HRe0O1n9buDULE587JkBk3SEhZ
6ch817X2Tt8qSFeKmsm4g0awgYgI0VQgVAfj8TNXxCrBpJ1WZ9Shv74dhzO2GYI4zYdPJoA7
0BImPiYOdulmkvCbip/TLpq1U97DIt5/pafNUtO2t0NspFoVPKDlCp4HpXGUoivQwUjYaoSB
NLHRcD8s1KbKmupJI1FUtduWWqHZuQR2PLWpNxhzXOXWdTaA5FEu/JvS/RUP3b5H2+bFBodo
xBT0agEW51KH04ZCduWSsnVF1+6a7Ab3Ne2dSVueMY1oQtD/nqQxa+nweaQqdVbPu9XffY3I
t9rlA7cDv2jDlCAASvwwEz0RfQGApqIUi2SPOxivdI5fS2e5Xm/Qwi+fq1EPH0wFM5zMWJyI
rTVr41Qkve/qTrTZJb1XrLUp2NTydYCmogtJO8wVHeMIIf16gllkSSeqgGfgdNBrrb9joxxD
OTIrNdtLllS99Qh8JJJ91HOeKjDy9nzcPL5tV3gzjQZZD/OTke/pLx0LS3UE0iNEt7R/FigE
U1K419beEx6lIQ3X9ODq9vrzH1ayjD5d0LfNRvNPFxcaPNt7L6RruTMkK1Gw6Pr60xwr/Zhn
PwH1JZrf0Wjp7EEb6oSPMSFtKT6PuCdYE8Ma+kj75evXzepAqRvPUsgJ7YWHFX7uYDgGXQgI
bjZXfG7qvGNv680O4Map+uP94Iv0doSf6lD5U/vlS+n89fb4CMrXG1owS00A2a3yK5arv583
T1+PgGNC1ztj/IGKX6lLWXv4dPQMs0DaqNtZG9flBzOfvKL+LRoPPslj6iuXHBREEriiAB9L
hbqOUjAj1I/0QeE+NraxCtczVUUuhx9KYpuG4OsuXsT29Ov3A/4GAydcfkcrOdQfMeBenHHu
cjElz+fMOJ2FAUryxhbdrBapRT9hxyzBRMdMKOsX2qMiD1NhRS/5jLYzUWRRCTyS+M0ojWX4
rAi5R89UpZGF9poXxI1zj7lNCFu6WW4U32vS4LYzUMBgJrsNkXt5c3t3eVdTWiWk3EqeaZWB
en7ggVbBooiNcp8ssMJoOGZByLvv9TPOIZ97Qqa2TyVzyxdrOupJoP4Og0jgguIhYIs2q/3u
sHs8OsH313L/+9R5eivBJzsMnfsfsRr7V2xs+4QOq4yaavuCONrWhw/A4eYnXtvHdmHI4mR+
voA/mDXJjcH+XY3C5O5t34ECpwDthE9VIe6uPl0b6e1wMgq9U2uLnKmxTBdNhKOELiUVSRTl
VluXlS+7Y4nOLaVtMHClMDxBY2yiczXo68vhiRwvjWQjNPSInZ49jT0TRFGWhLW9k/pbaSfZ
gouxeX3vHF7L1ebxFBI76Vj28rx7gma5czvLawwqQa76wYDgqNu6DamVjdzvluvV7sXWj6RX
QbB5+tHflyWWIZbOl91efLEN8iNWzbv5EM1tAwxolbc1T2++fRv0aWQKqPN58SUa0/iqpscp
raaIwfXoX96Wz3Ae1gMj6aaQ4G+RGEjIHFPB1q3M8SPEeTF1c3KpVOdT2OSnRM/weLRWGlag
NgZnrqzgWee86KO2qO50Fg1OAmOiK1jlMCoEYLQYgw2MGNxaphPbxm8O6fQxpk6xJsJm5LXn
p4tnAC/YwhR+NMTL4Pt2ftVC66LW4XBkIEGkGxWTJGYIQK6sXOhap3NWXN3FEbrxNOTocOF4
pHR0l9rzbV1LmWnkDkEh8XEKZSfPsRknz4aIgm3X+91mbR4ni70s6X9w0qi0mt1AK4w2L3E/
xFXF9mYYa15ttk+USyAVbUyrLx5UQC6JGNKQIwxZkwEcYTGLMhSRNbqGH6LA3+PeF2EtgKg+
76YxWDfRV6ezQDdXUmJAAK/6EG6WZEbRbAutml+a48tCJ87pF8TnaNeBp8qYJ5bfuKELZ5DD
Bp5ghPojIFsRt6erJS1aqKIV1t9X4bMzvb/kiaKvD5NivrwpLMnGimyj+lhfYqElAGkBDffI
lZAuV1973rEkMukNMqu4q1d8KN/WO13C0V52qxQARtmWo2luIEIvs/yiG/27PGgIWn027FPF
R20BlRizWKHyrEoHDVHGP4hDbFTOcE+GKhOy8kZgdYpbgPT/VXY1zW3bQPSveHLqwc0ojpvm
ogNFURJH/DJBhm0vGkVWVY1rxSNbM01+fbELgASWC6g9JeGu+AEsFgvgvZfCo2bRFumYKtcf
41oDRtV5+93lfHz7zi2KQoyotpYrP7nWSgROSYh4C/r6egiglIoGnYpyzHUwnWEQwqCRgMMB
cYW22Je1107c+Ch28N/8qzcRdK0BRo2P7s0I1riUoVkiC7+ZiXz67vv2eXsLx30vx9Pt6/bP
vfz58fH2eHrbH6D53zlaHH9tz4/7E6TkoVdszNJRTlHH7d/HH2bvygSdViaUw1fmuZowTlEj
UAEuKbDXMo2ETFzcBn000fRg3rwv62ikWYMF8mM5yhjZ8esZOCznb5e348nNHVU0yrmknJEx
WcQyRhZwTAx9yLAEpEuWFB7rIi2M3IHCLFmDu56nIWROFaewQLRROb0IXTkG60BCtRDh6zpZ
TMeAnQWovKF8UZWlLqMkrmWai9PGM63W8YdPPsum+TCZpzw8D8xp0268t6Xco8Hy6d5n8Rr4
3fMsneGDfKzHmOflq3Ovj3eA4VtQ2cthlfIHiJiw+UZAT7kQPrgEVQGlfAjYcyLwMYEbURsZ
XctmRWxg0DjkhiKzkGjGQuVEl5ZKxsLe6gIqh4LG8MXF3LOSBF3GkkUZDwAugBQ6TJHe1Goe
CWqX4SROcayQS7ooc8DXMEsUS0+P6CwxGvNuXtw9KSAzXn05y/z5hAd8j8/718MYwCn/ECVW
aEukefdE6l+9Hg9tmjSWFge1JygBVMS/T3/pociyKWAaGz3lfvgu77uqpKaEcH9GtTxZ+Oye
XtF1pwVyudlZ4aFAOpYvYDVFFc994eSZ6WqljdFFdTG9m9x/dnuqQoVbr/AVoKDxCZHgVx1t
IdManF3ls9JTqqhPYCusVQKndUK9uh1EvWYcAqp9Zbe6s9DUbllP5ZFvW506YXtsyiLjNrYZ
vgL9mhJlP5NobSCkfH37X3vcqgoj2EqQJWHNSYGppytewvitKH7aribm+6+Xw4EKQEBAo9iK
8C5cXEEcf3lXdoVn+aKINKWs/K70ZF2CSupIv5h4lTMgF7LhhKRB1UQyrWlmFPm5sYQiCvu/
FQRVTLy+eCnZOFkoH0VEHb+FNgRur6HaULT5PhUfto6Efcymq0O8asoRj1V0sia3KXb6MtJp
JqOicIig0ceuY1tTZlA2AuKJkuyqHJ0T8A+1/4oAEDUIWD7/Jvu2e7q8qGG02p4O7gFPuWgI
u5Btu56DOKB1ECxCFxiBe1mvDEa5kJSTHlA7WafugcVWWPse/LfZg0iu+ID6VZJdCs5udEBc
I3xm2TZTSxBCSSipeActrtEcQnoGbrFOkoqMY1XIwylLHyQ3P73KVRBCbG5vni9v+3/28i9A
i3//3hJrx30XvPcSq4b+yNBe3X8J777gPaDMCoUUc9BEBxyIYwZhyV2nnEA+sKsiutfm+OJL
+VOmcjKHp5ls0iv3gtaBKtDUVfx74lNlpKKulzePDt8RLNL+R386y2nN4eMfDdMusIzaQsgq
GchLfqSdTtgq4YfaJw1OGNUVuwjNSYblHIqLuJZfUjRplI03xECQmJ17QekY6czebgKPq32J
Tt7mRjnlB8GtHSzBZCuz04jXaumbmilyzGpHtxDl/nu2MmEPhfUxFWXP7vaIPbp8d3Si7Oje
uqyjasX7GDo+q2fgGpHnzNHRtTlXhM46gS0Dyn3VrDr0VMR6ehMZOjWlCsf6brnhj2oj3MaT
KBeBMADSdK6iCH5NIQdD9Znk3kjD2qtAIXuPbNSQBORcyhM6rbplOXeWufDvUEHVzrA4kTNZ
AwsDw2M1UQNWLprwV0jVzx06nlWowSEM/O8gSHKxZXZV78paZJHJOolrc5Q9S+pZKVDLqPHo
bCsOV0DyGdEXzRVeTccfxigFAb9WrZ65sxmu4319kudp6RlwaakESxHZtJn89nkyVBbUllji
ea6tVaKnd7wV9yo/jmz4MHsLczB4VHR7D/W8sA/Vp+pbTKcp+xXtsimuotB2DDY4jurQxJKn
V7atjPLiZuFm3n7p3aWFXD5vZIJ2hoK5fl0Us3cFSUz+CINsyvwL0Ptx3S5oAAA=

--hynuahzod3gg6h26--
