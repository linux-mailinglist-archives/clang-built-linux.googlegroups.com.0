Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBH5MVCDAMGQEZ4DZPTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D5F3A9ECB
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 17:17:52 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id eb2-20020ad44e420000b029025a58adfc6bsf2284789qvb.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 08:17:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623856671; cv=pass;
        d=google.com; s=arc-20160816;
        b=hlnpqBmKUla9opPgbmCu9T6ukiHIE5SLf6v3ECw0J2xnyCU7Vud6D1/K4yfrDiiDuP
         WumxWou/9bJhSPSvYRocK7FatmKJH3iqJQAEDnzA6RevMkh2tYoFG4fwbH7Rxe3cL4U7
         xxJ6IpIB4py+QLhbfX1zIuGISJeKM3ZKgEMiHUyecSD2EfNjRWLvRPp6KD8/NvzH5vtC
         IQ2VSbxQRByfjF0WJkxkov/+GaL1IeB6HJaotjFQ0TXlxXp6FyFsJbQeZCsOVnHKFetF
         gA5+nB3bFgIawlDYSoZ2yQu7SOcIe2571a/x5vMF1wy098rUveu0w8swXXHBaftN75xD
         0Pnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=249SHT4xzC9HfHHjy51i7IpjczvbSbs0NmCSMiLIMPI=;
        b=BFYmsSUAJlw8bpE4A8/hNQ4HLqjbA15GrK94CAs7CGwfLdTpBNtKzCOi80kXAX0HkL
         GasB/4upZHeh9ldPfvLbP7EhWqgek+PckwgUkpRGSuIRQELd4cPJEg6CMqJb+mcOMbI2
         3FltwaicfL0xpKVtJkWSNr8+KeA8qQVkrFPdHzEFM/BPDEAATrHvUInTV11gDDjiWxCG
         PVAhOIbu1+qbmojWOb+GG+2r8y72/gM95kF68hGnGiIN6A+XgZ5dFwKxX7Mp3JerXnYX
         BqWYOuSBxRwo1yaaBAqE7v/hkiTum5ifIG2En14KvAsIRqx3BASDSEfzFWpZcrQxzKQa
         jujQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=249SHT4xzC9HfHHjy51i7IpjczvbSbs0NmCSMiLIMPI=;
        b=iHCIJjKDEWZ2RClgGhlN1x3peJEzo9VCuimbifrOUb1fimPzaSqZyEdRJyzRPYcICK
         hzCnikBOniavV0QcPaRoJBcnPgG8rTeOKuJQs4lhqSc9e54ZMapr/OIyBA9DATZsxHkJ
         SqLIBGkvJ30JUAFm5agshshhFivcMB8nT9F0pPVFo9ZR5Zh5eQDYHueG93mGp8Qig4En
         JXMI/JNxRL9sZRkfk4B2kCeD4frojf+eKV6F5PVbTgNcsbjUl0o4cjII6v3GCQqfBVhH
         x2RQSSnRCG2I9nw2kogr8FjGmZe9BUrO76mpd2+8JMIpnJd2K4ZsATrJHEARMjquO7q/
         4voA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=249SHT4xzC9HfHHjy51i7IpjczvbSbs0NmCSMiLIMPI=;
        b=JAswDGNDKBkha5Zzu18GsEQowmYOGJlps1Bt1GY/deThCpdJQJH3p+0NTMgvbYWoYH
         8c+2THAiSCPab/qq+6s65AAhrghhKNWjRd1EqQzzIn0TdmPxEsnxHpHZLjS+XpcrrGiH
         BjxQy/K5KsOFR3VRytUaPFkuaTZRlsESr0zt5vnjO81EfVLQXBPpQugTnhjDdAQ+rXdd
         OK0ANouuFCHhmu720MJNk9HX2/RXLr2Y1hYaaYlTmYE75ty0Xm3Z9AsgYyxihlsGOLv9
         fgh0kgqwuh1Vw4tlg3Jk1yytp4GX/BuLS3WOwfBz4n4ZR59SjQC9HYOABjDZyLDuxj+P
         odJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZuHxgAcUgpqqx7bIx68N/7jPQlAgOb1wJ57q9pGsg/DoN5D08
	m+sjZLPQuevzUGIODDwrEX8=
X-Google-Smtp-Source: ABdhPJy8JDDTFvg5mdTcnEahtj69P+vfdseqZ/Vvm9Q8kR1J/W90ZczdRqMS+8bEIGjs7pX9CenyEg==
X-Received: by 2002:ac8:5cd3:: with SMTP id s19mr358661qta.241.1623856671629;
        Wed, 16 Jun 2021 08:17:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5193:: with SMTP id c19ls970930qtn.11.gmail; Wed, 16 Jun
 2021 08:17:51 -0700 (PDT)
X-Received: by 2002:ac8:4e4e:: with SMTP id e14mr369237qtw.61.1623856670978;
        Wed, 16 Jun 2021 08:17:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623856670; cv=none;
        d=google.com; s=arc-20160816;
        b=L7slMuL/2gSCOF3H3CDQtJJND9ov9f+LaPvWUCpoZPjB1WNYmC3F9X5LKukExqEhrJ
         KAh6MA0JhLvUi1tVTNykIUtYR07kT0Tr/AaAtxqdxUveCTvaQ3tFpu4CW6sy6Lo3W0tS
         1BIXAn5gixPkw8i2QT1HzhZvVLFzzV6Xnpuo7RRi22Aa0cqP4fVvu2QDqrv58HIJLlpk
         +DmDc4mmo+IwbnXxzot7Ge5sZml2wBzhGIMNmhDjXU3AseBDSJa6hEFYxiCMRcxtEQ2e
         Zu92WwR0Q8t3BMMZeVwOTqfAflSqhx+Ej0m4kfFDfXDBjKJEd38eheR7fsPzGgdo7gTN
         cNfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=OLpKjkHmpZ8yDxBP2Zzo+8Wquw1XLydRaXay7oanUh4=;
        b=X81a8tYa8C6ANhSqnVVgUzBZUwt2cS2Xxzcil7oDXZ16bDySyws+dIZTF9QJuRzIYI
         WYvYRGkyi5cUE3YUztS2cByk0oR/5N9uj8Ba/xM8dnH95AogMf2qAqx3mY2J4p8kTFTZ
         px3qeYc8X18Zq2/Wt/cMwm0A24mnVO+dBfmwZldFH1D37Bza/C5hb95ZzeDil94SW3zV
         DwWN7xRVvuqKK/gND1GkQLl+x//Qc8iHqB4hG2RxgkwoxnbMmpzK7bnRsyf3RqDjIkhg
         yuEG77qXAQqPv1XB6SfPt9eldrKFtXwPYGPYEQRWOb6LaIO4/uov07KN7otUFe+AWz3W
         xDYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id w16si170637qtt.4.2021.06.16.08.17.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Jun 2021 08:17:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: 1PT7sYbsCMO/HrDuNVRnNcskJIcVm9diUeRsrOC9vdY37AofmGapRtwHz5vLg4p4E5rbxsMoXj
 KnHjZK7in73g==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="267344839"
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; 
   d="gz'50?scan'50,208,50";a="267344839"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2021 08:17:48 -0700
IronPort-SDR: IGaDyBSbD7y3kD/F4H40MgZDO12GUUoy5X3Qo33I1U+Z9KmsQ6imIHyFbpxoAQGjidivy1+l4L
 1KR5SixexM+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; 
   d="gz'50?scan'50,208,50";a="452379662"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 16 Jun 2021 08:17:46 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ltXIX-0001H6-Cx; Wed, 16 Jun 2021 15:17:45 +0000
Date: Wed, 16 Jun 2021 23:17:10 +0800
From: kernel test robot <lkp@intel.com>
To: "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org
Subject: drivers/media/test-drivers/vidtv/vidtv_mux.c:379:13: warning: stack
 frame size of 3120 bytes in function 'vidtv_mux_tick'
Message-ID: <202106162302.B4qt0VEL-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="NzB8fVQJ5HfG6fxh"
Content-Disposition: inline
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


--NzB8fVQJ5HfG6fxh
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Daniel,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   94f0b2d4a1d0c52035aef425da5e022bd2cb1c71
commit: f90cf6079bf67988f8b1ad1ade70fc89d0080905 media: vidtv: add a bridge driver
date:   9 months ago
config: powerpc64-randconfig-r026-20210615 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f90cf6079bf67988f8b1ad1ade70fc89d0080905
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout f90cf6079bf67988f8b1ad1ade70fc89d0080905
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/media/test-drivers/vidtv/vidtv_mux.c:18:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:5:
   In file included from include/linux/mmdebug.h:5:
   In file included from include/linux/bug.h:5:
   In file included from arch/powerpc/include/asm/bug.h:109:
   In file included from include/asm-generic/bug.h:20:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:29:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:309:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
>> drivers/media/test-drivers/vidtv/vidtv_mux.c:379:13: warning: stack frame size of 3120 bytes in function 'vidtv_mux_tick' [-Wframe-larger-than=]
   static void vidtv_mux_tick(struct work_struct *work)
               ^
   2 warnings generated.


vim +/vidtv_mux_tick +379 drivers/media/test-drivers/vidtv/vidtv_mux.c

   378	
 > 379	static void vidtv_mux_tick(struct work_struct *work)
   380	{
   381		struct vidtv_mux *m = container_of(work,
   382						   struct vidtv_mux,
   383						   mpeg_thread);
   384		u32 nbytes;
   385		u32 npkts;
   386	
   387		while (m->streaming) {
   388			nbytes = 0;
   389	
   390			vidtv_mux_update_clk(m);
   391	
   392			if (vidtv_mux_should_push_pcr(m))
   393				nbytes += vidtv_mux_push_pcr(m);
   394	
   395			if (vidtv_mux_should_push_si(m))
   396				nbytes += vidtv_mux_push_si(m);
   397	
   398			nbytes += vidtv_mux_poll_encoders(m);
   399			nbytes += vidtv_mux_check_mux_rate(m);
   400	
   401			npkts = nbytes / TS_PACKET_LEN;
   402	
   403			/* if the buffer is not aligned there is a bug somewhere */
   404			if (nbytes % TS_PACKET_LEN)
   405				pr_err_ratelimited("Misaligned buffer\n");
   406	
   407			if (m->on_new_packets_available_cb)
   408				m->on_new_packets_available_cb(m->priv,
   409							       m->mux_buf,
   410							       npkts);
   411	
   412			vidtv_mux_clear(m);
   413	
   414			usleep_range(VIDTV_SLEEP_USECS, VIDTV_MAX_SLEEP_USECS);
   415		}
   416	}
   417	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106162302.B4qt0VEL-lkp%40intel.com.

--NzB8fVQJ5HfG6fxh
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICPj6yWAAAy5jb25maWcAlFxbc9u4kn4/v0KVqdo6+5CJLN/i3fIDSIIiIpLgEKAs+wWl
yHRGO47kleyZyb/fboAXgISc2dQ5Gbu7cW90f90N5pd//TIhb6/77+vX7Wb9/Pxj8q3e1Yf1
a/04edo+1/89ifgk53JCIyZ/BeF0u3v7+9PL/q/68LKZXP568+v042FzMVnUh139PAn3u6ft
tzfoYLvf/euXf4U8j9lchaFa0lIwnitJV/L2w+Z5vfs2+bM+HEFucnb+6/TX6eTf37av//Xp
E/z9fXs47A+fnp///K5eDvv/qTevk6uL69n06fL6a72+Wl99fZqenz/V9dPF+vL68mz99WYz
3Zx/vZie/eeHdtR5P+zttCWm0ZgGckyoMCX5/PaHJQjENI16kpbomp+dT+GP1UdChCIiU3Mu
udXIZSheyaKSXj7LU5ZTi8VzIcsqlLwUPZWVv6k7Xi56SlCxNJIso0qSIKVK8NIaQCYlJbCY
PObwF4gIbAqH88tkrg/7eXKsX99e+uMKSr6guYLTEllhDZwzqWi+VKSE7WEZk7fnM+ilm21W
MBhdUiEn2+Nkt3/Fjrv95CFJ27378MFHVqSyd04vSwmSSks+IUuqFrTMaarmD8yans1ZPQC9
m5kl7pmY3aQhRTQmVSr1iq2xW3LChcxJRm8//Hu339W9xol7sWRF2Hd0R2SYqN8qWlF7QmHJ
hVAZzXh5r4iUJEzsiXVylaApCzxz1mslJfRNKriZMC7sYtoeK2jI5Pj29fjj+Fp/7491TnNa
slArkEj4XT/NIUeldElTP5/lX2go8RAdjaTRnCrKGUwtj1JautyIZ4TlPppKGC1xJffj4TLB
UPIkw9ttzMuQRo3WM/tGi4KUgvp71L3RoJrHQh9UvXuc7J8GOzlspK/cst/8ATsE3V7ARuZS
eJgZF6oqIiJpe2xy+x0Mou/kJAsXcB0pnI11sZMHVUBfPGKhrVw5Rw6DQ/DqlGb7VIrNE1VS
oVdVOrswmljbpigpzQoJfeaOfrf0JU+rXJLy3juTRsrm6X0Ii+qTXB//mLzCuJM1zOH4un49
Ttabzf5t97rdfRvsDDRQJAw5jGUOvBtiyUo5YKucSLb0741PHA7MK4saoxWgl/XKBSKClfKQ
wo0HUenfCsFcerPz/2Ar9JaVYTURPr3J7xXwep2BXxRdgdpYeiQcCd1mQAKXIXTTRns9rBGp
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

--NzB8fVQJ5HfG6fxh--
