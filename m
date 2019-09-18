Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIGRRHWAKGQECZGEREA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A622B6907
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 19:25:54 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id n62sf244757ybg.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 10:25:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568827553; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z89eyNbynUOyTZSqHSS/BGL5rWxcevGGsIYWucJxL2zD31NRitZNy1eEp5TDjzzOp3
         Jf6Uql6tWQ740UDuXOPCMMOrRg4ouBwKOZJPqIZOQCriSNa93AJqQXozhgF1ddU1z+ap
         BQ5qs+C310awZcLU5I85zRoTgXsNhpYicHzyiQKWUo5HeyusMm+coX/zelILUay22YuY
         VnPtRwtQmcGjl/uuLrLFEdEJKNZDQL7zi1uATyflBRYrOaTMTsjkIt2/bPvBHwGCJeQ7
         F0GADC089D+TEf9NX2/x/dS6xkZFWw/8SIky9FVTRbeGnPynUxaC2wd1nmKYEZ7dyB/6
         QGsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=3R8MFWDipoxhGtek4HmmUNCo+xOVSnpRbESOMnUDE5s=;
        b=aAruUUrF32AWzUX6G6HrrIh+3GLI4FN+x4CDzpCZ/MAfcqKyISenJDu9C/scsw89L4
         J2NutVins/i8GsKf/mENetD7+wC0+yFjH3xil11DKFcbeLwwyzsld9e7vKKZicHTm7ix
         B8JNjsulnadhuOLQOBXwHK+p6RQmHmMMndxwxoM8ccqDG0eVFwgVg/CNBpF0U8XZxgZ+
         cB+oc4rJUGsykj6JqQBP4gtdaLbMn/FoKVetGUoytMclGRESQgmubZbv3tnfyPESpluY
         +iq/P6eYebpsqSHbsBzawfROI/qU0JSpLhMsESqvmfhcPNtN4JCAcRX2ZmPPPFWPwtIY
         MFeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3R8MFWDipoxhGtek4HmmUNCo+xOVSnpRbESOMnUDE5s=;
        b=eYih07P3OFxEVsOYcuWW5JjFWbSFA0Rg2hr2zIRrKdNzsOwZvUR0Zf3VZKhGgN13eB
         y8e0kP2KxJiPb4cjEj1u2p7s4ql2MP4dH9rcakCPDQpvuDaNtNF0uSzF8Zct5vr4j+hi
         wjLzaqJmWLjwWLqImJ/wQBGrD/kN1EQeO71goddvQyT7aG5oKWTA76sV3p8reiLZvA4+
         52JlHNtdMB64rJ67YlTvuyJRvPT1SsvDOyoDBkhSK7ZxaTX7+NAiRNbQTA5erQ0hjuQB
         jaqsDmXPoHgycQwM8EoN5CxIlaMsoIN9BPNqN7jT3CPpQUmzvvNV1nLxhHjGwzWywOjw
         NZ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3R8MFWDipoxhGtek4HmmUNCo+xOVSnpRbESOMnUDE5s=;
        b=FLT0w0H98JUuX/AxMqiosEMy7DyLj464ELxT3UomAj+0flOcFZXsaL0lo8LUxVvd/m
         upj+lDgvSa8ll1rSgXDLoZLQQD9h/04AxbbtFpVkQwlsBeWp02Ugc5NOnWhWUSE8RZdd
         2Z9dOCw/n+P80PFSnXx06J5iIMDMVZpimuEAG35UJlS7s4jAPAv98btmhWXPZfO6yIMn
         JFy8Qa1HlQYpwsr2Whsjx+5vor1NcdWq0IPZhW/5j888y7BAhzWiIGqX8PZKVZHcQ5WX
         OKzujbjsN/OeBv2IQf6r0D9rov3w6tP3B3/iKp+ghrSiNVe/bw1fRngHJoH9kWSYPE6j
         SOmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUhtPNFRgzxvaOEoyRi6F+UGMi2vux/4Ous1cD92aIItKJGP0Jb
	H/+ece96183Ki63wBzhZpd8=
X-Google-Smtp-Source: APXvYqwZAOG8WbGGDTqxpnvfRoBQ4tHzS8DVp0HJ/VSPWGggD9cZsBLFqmRx5YOrqIUAryltbtGHKw==
X-Received: by 2002:a81:2404:: with SMTP id k4mr4124469ywk.296.1568827552624;
        Wed, 18 Sep 2019 10:25:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:48ca:: with SMTP id v193ls86084ywa.12.gmail; Wed, 18 Sep
 2019 10:25:52 -0700 (PDT)
X-Received: by 2002:a81:2ec8:: with SMTP id u191mr4661553ywu.236.1568827552310;
        Wed, 18 Sep 2019 10:25:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568827552; cv=none;
        d=google.com; s=arc-20160816;
        b=ADGr1vcJlLlf5O9jTYo33ELPVp2stE4D2ejx/DCeesc7gCfJD4Kgyl/5PVohQ0DofP
         9BHSMBFypVLFuT6yjLFfdktk3xRVQVsI+Zq/toeiBYwGjG/k92Zq4inkEmSnrZtm2Gor
         J3XN8B1ChJeWx+HaQtSUYMjfat0Axg0nsnpHMcLd2aplGcn0wmDtTDo27GbOXiUDcGUb
         DV1PbObXnPX0tx99QqT+dXU/mLAXM9jj0mNo9WriyptJmiTIjDn0KD0OH0SCV4TjGb5Q
         lzBqVfGATkWGFl7MgZYGXWjlC1+MgxV2uS2ThIKffuPM7nmRABH+OwrA5WyaO4xtJqol
         NmtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date;
        bh=Ca3LF1dcF6cGJD49YpKc3lHLpvqgG3V9UFiFyorT9vw=;
        b=VTz7WYZUfeSUHZ/ybFL8tgSAEJwMjgdb3ZXqe7h+Ef7+AwWjHjCb/i97mdIaKisW/i
         V7AAMJ6d1TFRoWG5RYXuEEXg3jLSNhA27FOaS+LWIOhAomfXUZ+WA/I6HKTgRJVCY8En
         p8GMTeRnqT2dGdBTJ69ZLN6N6vqbQY0GLN9xQU7XmOweH7jRxDQghT+OEY3KPzxSLYZc
         SX8KKicYAclopJlhlxdcDaxjOr+LXdU2Jc22UAxp6G8W+Aya8zfeNuWWKXV5oMdhBZWs
         z1RqtctEcRe49sVPOrhcvdp2+YpQ6b/MBPQpLyjIsuehK667oAz9DV9xmMGQsCDNeswB
         0CQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id a1si881155ywh.3.2019.09.18.10.25.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Sep 2019 10:25:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Sep 2019 10:25:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,521,1559545200"; 
   d="gz'50?scan'50,208,50";a="211929115"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 18 Sep 2019 10:25:49 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iAdi8-0005aN-W1; Thu, 19 Sep 2019 01:25:48 +0800
Date: Thu, 19 Sep 2019 01:24:53 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <201909190140.TYXpMguX%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="esj4kwgvhffpn442"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
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


--esj4kwgvhffpn442
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@01.org
In-Reply-To: <20190918131914.38081-4-justin.he@arm.com>
References: <20190918131914.38081-4-justin.he@arm.com>
TO: Jia He <justin.he@arm.com>
CC: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org=
>, Mark Rutland <mark.rutland@arm.com>, James Morse <james.morse@arm.com>, =
Marc Zyngier <maz@kernel.org>, Matthew Wilcox <willy@infradead.org>, "Kiril=
l A. Shutemov" <kirill.shutemov@linux.intel.com>, linux-arm-kernel@lists.in=
fradead.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org, Suzuki Poulo=
se <Suzuki.Poulose@arm.com>
CC: Punit Agrawal <punitagrawal@gmail.com>, Anshuman Khandual <anshuman.kha=
ndual@arm.com>, Jun Yao <yaojun8558363@gmail.com>, Alex Van Brunt <avanbrun=
t@nvidia.com>, Robin Murphy <robin.murphy@arm.com>, Thomas Gleixner <tglx@l=
inutronix.de>, Andrew Morton <akpm@linux-foundation.org>, "J=C3=A9r=C3=B4me=
 Glisse" <jglisse@redhat.com>, Ralph Campbell <rcampbell@nvidia.com>, hejia=
net@gmail.com, Kaly Xin <Kaly.Xin@arm.com>, Jia He <justin.he@arm.com>

Hi Jia,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on linus/master]
[cannot apply to v5.3 next-20190917]
[if your patch is applied to the wrong git tree, please drop us a note to h=
elp improve the system]

url:    https://github.com/0day-ci/linux/commits/Jia-He/fix-double-page-fau=
lt-on-arm64/20190918-220036
config: arm64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f=
77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        make.cross ARCH=3Darm64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   aarch64-linux-gnu-ld: mm/memory.o: in function `wp_page_copy':
>> memory.c:(.text+0x5310): undefined reference to `cpu_has_hw_af'
   memory.c:(.text+0x5310): relocation truncated to fit: R_AARCH64_CALL26 a=
gainst undefined symbol `cpu_has_hw_af'

---
0-DAY kernel test infrastructure                Open Source Technology Cent=
er
https://lists.01.org/pipermail/kbuild-all                   Intel Corporati=
on

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/201909190140.TYXpMguX%25lkp%40intel.com.

--esj4kwgvhffpn442
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
HtZnkLieDyD48DIulml5w4aiWW4yvj72AqpgT8CMzpodZYdukNhdIonsoafhMI1UiJM01xH2
KpA1Xm9iEQpjZxb0KdZ+HNiT357BuqbA0dOTb68vux87+GX3sj07O7NuWCM3HZU9I80hDGoA
JWox7axTCa99NLVGuKNgf7Fhxu1kJtByadJyi3oJ2jovhfQ+him6U4VRreX9VDHpzOCugD5/
oyzsPlQPjfLFf5u+ClO5H9qJG9/Ghk5qcv9jwB0/jr5QgP80imzMER6qDswLTCeWI8X1bq6k
wbQwgH+LtL2quzTciBHGaWp/fYPeTckzcvTmUjyL4olbaGiF91eE/le8a4mV24i6RAhP4igS
LpMw1BaLTrGELjcbxMW5V4g4WnT/1E3H2STWXVHWbu+vKH0r3LplFChjZeoe9NHKBM86OrdY
HntOHKG2qGk+JNSROmujZs7zJKsqwqWZedcnqQKUoCoVzg+Yc3XrX0pjUuGJk3RMH74r1i+q
UqxgFHhD2CuziZFCUKhSTQR82w+hGpXPtBRnFKleFV2nh76wdpDPR7qobAoWsNlSO2aJcxkN
/j2lTw1XpFOAMOvRbDCQRsZkQSrzunqLMMZKwbCnbBe81ZNSS1MnVNIAdWKeqZq10qlFjrdy
GjivPJGw+xUMqYHbJOivOss6IahRrxP+2E4LCWyaVpyFA7o27TCIlV2hnun9Hz7jVlfDdQAA

--esj4kwgvhffpn442--
