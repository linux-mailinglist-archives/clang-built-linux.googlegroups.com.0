Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKOFXX5AKGQELEFSB3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 013A425A870
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 11:15:22 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id d23sf1259044vkd.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 02:15:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599038121; cv=pass;
        d=google.com; s=arc-20160816;
        b=k5c8opOb4vFIP8HWuDMqlKgClv9xIyZ2jxrc1Mg1fvbUb3TIsknqXOmTxHIaZYlT6W
         VnnBY5/OFOQRsbWm5TkYoGKdFu7vVFZYv+CA/bL7nEGE5YJ/k4hQLHzGHoWUO9dvOpko
         L5BT0MNTIUO3TAwKskKzDlqVv2w0aG9rUzYM2kJe8+QutIbFfy8QtIBmMew7g8QUQfeY
         3gboiKb0y50B0tRZjJJSFJF39c71s2CFv5o84cRad9ilzNvm6iBXmvS5Ch4JQqe+DYpu
         6eUzkJCkUK4lbDhYAMnl1A/cTLS5+kgohiAQmq+Y4VGCWFgeILggTcBnJQ3xxPqpAf5J
         lkQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=mc3zsfRFqQZmW3XgnYc/7hrh3v5b4DgNiTqPufwayXg=;
        b=Dj6XI42d9iShGLgP/IG9m4WCYcg1z2XdELgcMQuDb/UVwQwVe40VZpm0RPRjd7shqg
         MlqUZ8Zt99RySF6WDWVwHhQ93+w3SOrdP6GkTLryo19ZzBo1kN/UiXvXDSxKmve0UwJO
         I2ENJAe0ms8SKEEAd0JG5+odaQ0fXNhhHGeNnDuqeXgoCuTnROe2Flzi/1cUrreayFHk
         j0mJoQtaUnh6Leh1j3ysft2wez/dkbnWjKtRjJ0HLr+rD3hptYWuI/564CzCkDz+gc9j
         QuAdAZ15psnJ82Wzd6KRD0aJsdNVQSnx3V5gXD2D+OxaTxDI335A77HUBpW1BwaeI7Fj
         S/nQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mc3zsfRFqQZmW3XgnYc/7hrh3v5b4DgNiTqPufwayXg=;
        b=qjmbRoOpr1XnaWX+IahM9Dza2cMSDIWvJfYEB/c2YM1ymBjsLCvNpqeQ4ZSt2WRKag
         Ri/MUj8HWQYCgicwnDcP2W77xRKKrcHRRpwX4RX3qdnKUHqxAmoRBGColcVCj2wiXjY1
         3QxRW+grWeWcBjL89c1fA1o51oJNWALmM2N8bR5w1iH0njRkJSCM/cLbD8jb0GsZJIDW
         jYguK6DmpJ4mzcHi9A6cCJJcXaNMf6KZ0ABnstTAwNaeUA6FV4W0pyKc25WCbNDspz9p
         Kci62fJEyiPa3QO5JRyLxWjk27hfuohT5c069cequQCFFAuPEkZG2na0dHkOAAMpjjXN
         St4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mc3zsfRFqQZmW3XgnYc/7hrh3v5b4DgNiTqPufwayXg=;
        b=ZI6bjpdObXlT4GJfV03RWJm8Sr/or0r2yAb7O1z23Hj0shNzt389ExuACrHFcfKqkK
         P9e7o/HdSXCJ2WqLbEJTzoYxI2NlX+nvSe7AXLUODuK3F0x+beXTEW7NhwKWqXwk3gcJ
         hDI23JXIh3PYE45bhNvr59E+lpCYkTJprLB08598w7PrrgZt9OWvPHsmYGnYdVeHhn68
         J1ZIjLVtYgreEY9q54XzjMNKiLlHtnepiaOzIudvTjjv8EhhteDsDm1j4/lQ9II6kgPt
         rMD8EvTKuIx2BS3VCpz7CU5GYMz/1gwfQGFd3EWc9MtyBqVHkV6edUaiAJyWU8c7BfN5
         KvcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532psAjMVRlWtLKWELbhqu/lWq6tDqYHhNBLnb4PvliUTZwbmSiK
	u/76pBy4r4roHQkO0zN72VQ=
X-Google-Smtp-Source: ABdhPJydhf0QBkpiGELelYawcSurXSyWUR8jPBmT8L5/cf2kiMBBJfgZETg2yywyg3Sip4sCAObz6A==
X-Received: by 2002:a05:6102:3c7:: with SMTP id n7mr4570871vsq.106.1599038121533;
        Wed, 02 Sep 2020 02:15:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:1bd8:: with SMTP id b207ls85156vkb.11.gmail; Wed, 02 Sep
 2020 02:15:20 -0700 (PDT)
X-Received: by 2002:a1f:7cc4:: with SMTP id x187mr586581vkc.1.1599038120694;
        Wed, 02 Sep 2020 02:15:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599038120; cv=none;
        d=google.com; s=arc-20160816;
        b=mSEA3XJjXgZzwV3gg6myz7yZc9p0TqA5OjxIWiuUfFA39AmSFlejHXF1PBXRDmcVji
         VhQ7CtP0ub6pSZk81Ab5iDfRg1xrBzlzPi5eKn1oAY8te6zYnHv0A13JJlSFQCxejhvI
         ErmC/3ateq0Q89+s6tPCF9+doAe3jD/4HrwY/OAVucL9twp2HrISqF4Q5a+szV453Amo
         4sTlcVHfb3P8NClCEmvcw9roTU/1ElU7H+ffP+4h93z95oIk1i6CNfxSdHpVcDlikCwY
         pnZZm58tqerdInq/qziMCnpYxLHBtpVzBTnES970g/F4SgyLh6Y01KX3+OEWVtfkEMRy
         1yTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=F0I7fU+/bbMnCBecxPgGQiUo2G871gI9pRAp3DjZVEY=;
        b=xJfh1yeGafATMX3BTal/TrU1js2LDVn0ElKG6MCa7AdwTLgLpQw57YR4upkrBz+/Q/
         AJ9TtdfEnNJKn230toSxl3JRUIR6KbgS+kIFUN6Z31gyY7ECrZC8YlVQgh3N8pdbvB/W
         kxYg4IwVgAaGCk8/W0GkqEg4y1NPPmotScyP1LzCOaSNWluueQdJfEe1GYiKU5nIuHx5
         59ONE0tx1ZkY+E+DkCVxkM9MV5hsMR38Ita+jG4QxU2FVAbRQLi+8EyIbZqytZj51c1B
         2JXkhDHVQ6CWpOaX+wTtf19bIXRdmx02KdN/2vFfBSn3g4mAEiBQx9ints0pMqLcVJPW
         VO8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id q10si105829uas.1.2020.09.02.02.15.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Sep 2020 02:15:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: VLy1Gco/KZtu6Xn2O9uQZEJOhKD2112T+yfvS1ua5V6UNKx+FuGbZ0XY06bO4ndVs2FEGrb6ov
 0r4YLcYqF5hA==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="145041776"
X-IronPort-AV: E=Sophos;i="5.76,381,1592895600"; 
   d="gz'50?scan'50,208,50";a="145041776"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Sep 2020 02:15:16 -0700
IronPort-SDR: TipAOj2wDGF+cshHI+IgJ7SMpb4qEg6Sa7Du0QcqpG0TXyXD/52AGxZfEtmQ8VwQPRMSCorMQk
 r84yN03Auo6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,381,1592895600"; 
   d="gz'50?scan'50,208,50";a="331367555"
Received: from lkp-server02.sh.intel.com (HELO eb469fda2af7) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 02 Sep 2020 02:15:14 -0700
Received: from kbuild by eb469fda2af7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kDOrJ-00001u-Lq; Wed, 02 Sep 2020 09:15:13 +0000
Date: Wed, 2 Sep 2020 17:14:41 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/2] powerpc/vdso32: link vdso64 with linker
Message-ID: <202009021739.NN47IDEv%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="k1lZvvs/B4yU6o8G"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--k1lZvvs/B4yU6o8G
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

In-Reply-To: <20200901222523.1941988-3-ndesaulniers@google.com>
References: <20200901222523.1941988-3-ndesaulniers@google.com>
TO: Nick Desaulniers <ndesaulniers@google.com>
TO: Michael Ellerman <mpe@ellerman.id.au>
TO: Nicholas Piggin <npiggin@gmail.com>
CC: Benjamin Herrenschmidt <benh@kernel.crashing.org>
CC: Paul Mackerras <paulus@samba.org>
CC: Joe Lawrence <joe.lawrence@redhat.com>
CC: Christophe Leroy <christophe.leroy@c-s.fr>
CC: linuxppc-dev@lists.ozlabs.org
CC: linux-kernel@vger.kernel.org
CC: clang-built-linux@googlegroups.com
CC: Kees Cook <keescook@chromium.org>

Hi Nick,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on powerpc/next]
[also build test ERROR on v5.9-rc3 next-20200828]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Nick-Desaulniers/link-vdso-with-linker/20200902-062746
base:   https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git next
config: powerpc-randconfig-r022-20200901 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 224d8153b53b16cf535ea1a55afdfe1ec5b1374f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> ld.lld: error: relocation R_PPC_REL16_LO cannot be used against symbol __kernel_datapage_offset; recompile with -fPIC
   >>> defined in arch/powerpc/kernel/vdso32/datapage.o
   >>> referenced by gettimeofday.S:37 (arch/powerpc/kernel/vdso32/gettimeofday.S:37)
   >>> arch/powerpc/kernel/vdso32/gettimeofday.o:(__kernel_gettimeofday)
--
>> ld.lld: error: relocation R_PPC_REL16_LO cannot be used against symbol __kernel_datapage_offset; recompile with -fPIC
   >>> defined in arch/powerpc/kernel/vdso32/datapage.o
   >>> referenced by gettimeofday.S:82 (arch/powerpc/kernel/vdso32/gettimeofday.S:82)
   >>> arch/powerpc/kernel/vdso32/gettimeofday.o:(__kernel_clock_gettime)
--
>> ld.lld: error: relocation R_PPC_REL16_LO cannot be used against symbol __kernel_datapage_offset; recompile with -fPIC
   >>> defined in arch/powerpc/kernel/vdso32/datapage.o
   >>> referenced by gettimeofday.S:209 (arch/powerpc/kernel/vdso32/gettimeofday.S:209)
   >>> arch/powerpc/kernel/vdso32/gettimeofday.o:(__kernel_clock_getres)
--
>> ld.lld: error: relocation R_PPC_REL16_LO cannot be used against symbol __kernel_datapage_offset; recompile with -fPIC
   >>> defined in arch/powerpc/kernel/vdso32/datapage.o
   >>> referenced by gettimeofday.S:243 (arch/powerpc/kernel/vdso32/gettimeofday.S:243)
   >>> arch/powerpc/kernel/vdso32/gettimeofday.o:(__kernel_time)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009021739.NN47IDEv%25lkp%40intel.com.

--k1lZvvs/B4yU6o8G
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
eJEBAA==

--k1lZvvs/B4yU6o8G--
