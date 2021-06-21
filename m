Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDHDYODAMGQEQ6MK3EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBBE3AF6A5
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 22:07:42 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id e25-20020a4ab9990000b029024aa2670b1csf11843145oop.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 13:07:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624306060; cv=pass;
        d=google.com; s=arc-20160816;
        b=RbRfVbP2+p1YX/haj0MFvLDi36U3yo5eoio7GpQfzeWabrofqmzVxqeIwaJeHjucN3
         LtuPvdhH4Bb4AAD1E3oOn7+bCw1J7YifOzOv5WufT5wj97Fy6+VQej09Xzjl6QuxZ5xG
         j7p5qqgeK6PNYAZ4XP7tyGweSyCE/7xQtD6hnTWVkv9pehza8pZ9ilQKzOYw/3TkWLQZ
         d9zpg1F4SyIXlaOVePEDTehlylw7JyYRHPI6rTXCU4tIT8wsyMJ83wDxOD8QY7KDKFo8
         ROUAP3WAK7tlgvvZpGPOtUNa3XzT3fNJLw9p7INR7pk+wH3IP65bH5fyoJaRnwNIEQgA
         Jc6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=3gcbbg3lBX7kk3j+DF1mwM+pFHTmQPd2DWuCUMFSLHI=;
        b=Tn0O8Eqom62jcd69sc6xfynuRFYMAAiHccEtVJ2Cl39cOenl4uJSUtr0c2JGnnXmwc
         S/5EJFbc+Za0W/Lw92vTb1/kjFECMTDKfNw6A9KK6tcGj+84EeP5UQnMWFyToMMOqVlD
         EVswi17Rip/wLaCZWXNgE1vk/epCttwHRfRgnIGUnGiuQfMVGbTDGPTCQ3N1noJmM6E7
         wGfnuHbUqQ9viHy5FvmNu8d56Dgc8cJn+3T0T7/z+hxAYWii0v6xJLnjCCwSVlcF0+14
         HkpscoH7lPjnc9l40tqUMjnpUL1OsDhw+v4esiC0lD4QDjUgsf37kr0eEKFQ+qazQmt7
         cU0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3gcbbg3lBX7kk3j+DF1mwM+pFHTmQPd2DWuCUMFSLHI=;
        b=hPc8R4hspb3Wq+aKclW5KmqbP6bYuyWhYbPZsVLpJdrwvIkKHZzVdYBeZ/v/Wgz3GD
         7rryYcaHhjRfcP5JZGRAyKJxiuuduL6BxZi8rNrlBn5+4SZig/41RNazodSelkxovBh5
         KJ+xWV5UG6mri3L6TL4Q7cCJ/rIqO19QPpSEGTeP10SN3C+JWY1gU+N45ab+g6Y0u0z+
         vTE+fBhPeuFhsKbdhJeEfat44CO9ksl8J4zZg0IWSVk+swjP2022JawH+VLV/caj0saw
         g57HAm5DWbgVk511v27Su6uHmSAPB8QbW9ls6pRZAlDsi6V3HZnsfHAuVRyzW1TIitQi
         1Gpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3gcbbg3lBX7kk3j+DF1mwM+pFHTmQPd2DWuCUMFSLHI=;
        b=Rr4cG9sd83uiuiTGMM6tlL2QHgau/+KF0P0X93Hj8gtVVjCKSpLRtO0kj1Xbq2mrvJ
         rWvmMgou5sGxe94EtiBOzhQe0L3cHZ1Sk7Jva1/cxGTQPZWnA+sixPxjZ41415duc3tx
         53zsatlXIc6GGMGKrY0+mZVhZJxBx6VFExmNaWQ0o7jP2oeEa2oNM/fYOw7W7gUiMw82
         BTAEX8SXjU9zHXApw/Bf2hP/W3UQK58sMlou3XGKFAW6QUL0yghqtdEWFFsWYvzxxh00
         1kYS8ocnEj0g3h5fveMV8zR9rCpOKIS6MK9Qze2bvl82kcoD3pM7RwKOPwRTRZpjiT6J
         r+8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RGpAds0zC4gg0n/t65sAtH3dNw3Ml/7iVnqlbmpZeU4Sp7SoL
	QDIGQZ5+3uorvMxIRrboTKw=
X-Google-Smtp-Source: ABdhPJw96LLCDQFDXbPCQ2KymJnXsuV/aT4URKENzfWCIBR4LRtc6Joff7kGnIaYQBRDnZMnljLrjw==
X-Received: by 2002:a9d:2c67:: with SMTP id f94mr146645otb.353.1624306060507;
        Mon, 21 Jun 2021 13:07:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:30c1:: with SMTP id r1ls7193787otg.5.gmail; Mon, 21 Jun
 2021 13:07:40 -0700 (PDT)
X-Received: by 2002:a05:6830:1bcb:: with SMTP id v11mr158191ota.251.1624306060014;
        Mon, 21 Jun 2021 13:07:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624306060; cv=none;
        d=google.com; s=arc-20160816;
        b=z2N1ctQFjTcpGaUqywdSrWZx2dCJCxjIRJGmAz/jV0p487KMgm4Ls5nhuiDtK8wktX
         gyVwIvMTrXjqf1PiHoPx7D40asuLczaOuDe4oYBfQqRaKTVb/DSj7m2cOr68JN//U0CV
         ODtu/wobQFnj4lzsDBfCbVofkOpMatC1pWMYBFZJzsn4d5QgZr1NUsohYMYrNE39uB/d
         jgxGlrPEFwuKwO2/PPi1KKTV/0tfmXPlybP9W3o73On28wicUqmmPO119oIw9EqkSZQj
         +ClGKrdNzrvOa97goE850UntFKrBUbRXf1zQvAAViO2DjEaw8yRFdDXUFtABBrDLvRiA
         Jeqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=KXPjLXSvjOjs4TOxzo5cjrXN6q1bfxVMfFYdhpZGcjE=;
        b=DJ9NGlqMaLFGkTGkOx62YGTshcrRo0N8AdIAxJ6407NY19xkIaP9sfD3JrAPIo0MeB
         pfaibUHiQyD9BcosuotNUV5OcBiDhnry2nww2nNmVemQHXqKiIBK2sSa5aTOjW28Z4ty
         kO3A1OT921EimsxzuQsZyeXhW/W/CuBbX4hn4O1i9Rcci91CmOwVsASymyiH4y4zVUsi
         fCO7BjqCzKHuDHmY1EN2BSlzr/lOVPwB3rLOhPcRpPYlePhYv1UWXq/WRGR00R0GAvWr
         RZMjatmmbrm+WtoD+0VMFXXcG/aP59TLICCBnyOVWF0kXFfgjl5DO3WYVSu+dUL3Ftiy
         YW+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id b21si15896ots.4.2021.06.21.13.07.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 13:07:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: vuBtf5KjOhzB+NyAcTNrimd5fFZNhp6GudwhpjnCx7W3r3L4NAQkCKp4X+6WV6Vcum9CVTb+DT
 oxZqQC24gsSA==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="186615456"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="gz'50?scan'50,208,50";a="186615456"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jun 2021 13:07:35 -0700
IronPort-SDR: f4S1EfEFue4hX2RwCYPO3SoszesyQP5tchOJ8M8mMTMJxn3EXrtTXZSCGlTNSMWCiMJk22zquX
 tp4MVVcGa0Kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="gz'50?scan'50,208,50";a="556359619"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 21 Jun 2021 13:07:33 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lvQCi-0004lQ-HD; Mon, 21 Jun 2021 20:07:32 +0000
Date: Tue, 22 Jun 2021 04:06:51 +0800
From: kernel test robot <lkp@intel.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Sasha Levin <sashal@kernel.org>
Subject: [linux-stable-rc:linux-5.10.y 1965/6131] ERROR: modpost: "ioremap"
 [drivers/pcmcia/pcmcia.ko] undefined!
Message-ID: <202106220445.RdF1kOjI-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Nq2Wo0NMKNjxTN9z"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--Nq2Wo0NMKNjxTN9z
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Nathan,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.10.y
head:   c00b84692b513471386cc0db08f8ac9020f88659
commit: cf1cab6edb06b223520bebfca4e351256000b816 [1965/6131] ubsan: implement __ubsan_handle_alignment_assumption
config: s390-randconfig-r025-20210621 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e1adf90826a57b674eee79b071fb46c1f5683cd0)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=cf1cab6edb06b223520bebfca4e351256000b816
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-5.10.y
        git checkout cf1cab6edb06b223520bebfca4e351256000b816
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: "ioremap" [drivers/pcmcia/pcmcia.ko] undefined!
>> ERROR: modpost: "iounmap" [drivers/pcmcia/pcmcia.ko] undefined!

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106220445.RdF1kOjI-lkp%40intel.com.

--Nq2Wo0NMKNjxTN9z
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
nM4AAA==

--Nq2Wo0NMKNjxTN9z--
