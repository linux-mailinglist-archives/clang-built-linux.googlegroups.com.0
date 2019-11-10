Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBHVPTXXAKGQEUTILM6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E470F61E7
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 01:19:43 +0100 (CET)
Received: by mail-yw1-xc3b.google.com with SMTP id l123sf8415691ywd.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Nov 2019 16:19:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573345182; cv=pass;
        d=google.com; s=arc-20160816;
        b=DlbDgupt+SUwi06u1u29rRV6EJyGmF3ODx/sv1J3SFyOdj5kjA7wceyFhX1zPf8CKQ
         N+qxjAsESmvDsykXWfxQUsh3toxCXdxkgd3LFBVqdC149MM2alNYuWtH7x0LDHUY7tY5
         YwuliKjS2L34HfQ2VfM4zufWRn6jtmsPNjsFrHuDT8TERur8ZNaqyXFQgJLQnmB4TGc4
         SeYRx4qBhXjS7PKbfqsCZiqhcowoVyVxe2GFjrDKXzcBIQHxVmsqA1szfB22QircUTET
         LrCu5oVqJD3kouRIHhANrlHHFHbuKjbqgnBZiJpKR+b73UCjWJ3fghr0MxpksnwADHUq
         bG9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9Lb1fwSb2eIrtTtetzFGaBtANV6j2CKqsqZ+fuJsJdM=;
        b=xvqa/WryQv9FAtiMNUVjMzVdlR4G1lckBaozjzKaRF6vemDxZ7tOOM1k7/k/EOvDY/
         QvH8jF+7BUTOR3eYFr1425YLxRGZocXU4sfo9FeJHg/piUCPsGpnbmaMuKkoCojBW6xn
         Rgz40qLJvJVKP2xQpDgZPCGXd/lmaZrSzI/zPJsZtfz4Y8YLJQxXY2Ma1mkypIfuiUeB
         8rXWd3KZRBXYFdMjgxKyiwXdcNAWwvhoYrvLe1LSqE+JCUNr6mvO7eRz5t+8POCCC532
         NByuzQK5FCQLBvL4p8RhwLxjeg1Vn/uqN9MRWvzjNon7ZVcepmJd/Zbm3Vo9zoJ80TEf
         BFcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9Lb1fwSb2eIrtTtetzFGaBtANV6j2CKqsqZ+fuJsJdM=;
        b=i/WNNYrMrrwxMTkR0DpB7c8Ztaz1EQpkz8c8URvWAG61qQ3kGmNakQjCj70RlWt9Tm
         UFJZ2PcTFN3xGXMcE6G2yxNjWb5ef2X6MnqCYKI0e+LcnoLdYd/7mpR08HLifWxjESut
         QYX8yQT/4mKNuEkRIXZhWrW+H1MoEu6V/eB7a4YBZEMhj7QXs5Z+Oy/DYiAteaojkqxr
         6Nf4FSrX36fTNTIF5MDvfjFOtvCffQGwCVrlT63/HxDtMM9kT48DhJWXSHtBiHPD647s
         IXYA02eJpd6wc2uKSS+HheVZUQZAOdbBV4+56X5yyRwvojX47WxRFJHEdYus/Ru6FPRF
         sVZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Lb1fwSb2eIrtTtetzFGaBtANV6j2CKqsqZ+fuJsJdM=;
        b=NGDK+X2W4QMFv8Tt6AQcgrvdzr3++yUAgfLg8EmyiZ06aXYOqjnQfHcFb66FutUxZ+
         0a6Tn1DjQNWqebaoAd08rlLrrPrBRBb7MAGgJwgV+ajIeHx2TQxJv43BBF5xEflE76mH
         +EYKvCusNBVrQgqzzZC7nYy9GlQuRqTEmiaG+JNfPp4SXfAo07KdT8RIVRnp7tLalZxI
         qBiIIpfRIuvlt82nw2BE4epiNh6BP/BibMlBUEZS45Zxz73YKL16lOHETt1jONNJBtNQ
         W7dxuAgfOxUocqgFR2lqQtIvcqE1RMUTTpYBX58hvT5FR+d7djfNowozhcc8BVp7ync7
         7cVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWzkrYni+lDC9dpmBQiWkscwOOYjTAy3VhGIDQI3RpfixcAMmOp
	sC0HwBItxIgIPITlK3vjuKk=
X-Google-Smtp-Source: APXvYqwfIh6VLD/bZvQV/Rdi0Y595X9rkyh1LghzZPHqbSpURV7rtnTimyAnZ7w8akSBTZcCOO5uRg==
X-Received: by 2002:a25:ddc7:: with SMTP id u190mr15454186ybg.518.1573345182210;
        Sat, 09 Nov 2019 16:19:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:62c3:: with SMTP id w186ls2232626ywb.5.gmail; Sat, 09
 Nov 2019 16:19:41 -0800 (PST)
X-Received: by 2002:a81:7546:: with SMTP id q67mr13220630ywc.28.1573345181559;
        Sat, 09 Nov 2019 16:19:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573345181; cv=none;
        d=google.com; s=arc-20160816;
        b=TB77B7IO6uXwYpBWa9hRAoCXgPInySUgyWYvj4U8L+ili4WoFe3NIQjcsEAsL/oUC3
         zFTPVA5B4wkJ1fk4NgLBW1RsI2hmmO9NZJfR/7XiamyoXQhe/bAsquFaQdKD5H5Vatok
         fc8Kl+UhLpTZreEwsX1u2FcySiQfmG761aqUe72bWLi7U96hZeHDA2I2327p1jDaqHzW
         I7slqqZ+NpY8PKLXJrhd3KTX8i8TVbYZXHsRdrr0P2VBuhzmeccKxMjS8MiVRRoLxQ7X
         2WfWEbHHR8WxUbH5yu5xCy91ywWyepKA45wOjV76gj7jlXRpVQvZvnm8W/SnDyBhX9+e
         wo7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=cOMGJfHxTXznwaRC6fzX199Af57vOZ3GvvyH6Qx7rAc=;
        b=es651moxHKtaFUs8Ngz9u8om76IvqV9KnFZoq1kiZo1JeGs/vlkGrsrKHb8oEvz621
         wc/5xNk2+I73OJ0axIgbAwUAuCm9mkWXGRNAh1LzRsrtVbdnE4rOQ0trUQnX/QLfTTfp
         MXxXl9fLZDI1U0M+k+D5T5YInCIhdZySHXGNYlS59Eh1y/w0kgT8xoAYHcUpODVL37Z3
         jOAS9lQcGb8qdAendBR+X9xhGaERdXFTc42LytVAPdtcOlynoQ9oJpP+CYC1fC0Rlb0x
         aOXBYDt8JgnloISUidEsqVlSMatlLTpGWpBTpn3Z7RzxRkxQ53P/Bz9PfXu9h0dM55E4
         wyhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id c79si522261ywb.3.2019.11.09.16.19.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Nov 2019 16:19:41 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Nov 2019 16:19:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,286,1569308400"; 
   d="gz'50?scan'50,208,50";a="228544090"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 09 Nov 2019 16:19:38 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iTax6-0008Gp-RY; Sun, 10 Nov 2019 08:19:36 +0800
Date: Sun, 10 Nov 2019 08:18:53 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mm: fixmap: convert __set_fixmap_offset() to an inline
 function
Message-ID: <201911100816.no2ped5M%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ez7areyvnumzba7w"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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


--ez7areyvnumzba7w
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@lists.01.org
In-Reply-To: <20191108124133.31751-1-yamada.masahiro@socionext.com>
References: <20191108124133.31751-1-yamada.masahiro@socionext.com>
TO: Masahiro Yamada <yamada.masahiro@socionext.com>
CC: linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>=
, linux-mm@kvack.org, Masahiro Yamada <yamada.masahiro@socionext.com>, Arnd=
 Bergmann <arnd@arndb.de>, linux-arch@vger.kernel.org, Masahiro Yamada <yam=
ada.masahiro@socionext.com>, Arnd Bergmann <arnd@arndb.de>, linux-arch@vger=
.kernel.org
CC: Masahiro Yamada <yamada.masahiro@socionext.com>, Arnd Bergmann <arnd@ar=
ndb.de>, linux-arch@vger.kernel.org

Hi Masahiro,

I love your patch! Yet something to improve:

[auto build test ERROR on mmotm/master]
[also build test ERROR on v5.4-rc6 next-20191108]
[if your patch is applied to the wrong git tree, please drop us a note to h=
elp
improve the system. BTW, we also suggest to use '--base' option to specify =
the
base tree in git format-patch, please see https://stackoverflow.com/a/37406=
982]

url:    https://github.com/0day-ci/linux/commits/Masahiro-Yamada/mm-fixmap-=
convert-__set_fixmap_offset-to-an-inline-function/20191110-045158
base:   git://git.cmpxchg.org/linux-mmotm.git master
config: powerpc-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 6976a0e826623b=
0490280b546ed9c5c2ba7ece26)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        make.cross ARCH=3Dpowerpc=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel/bounds.c:10:
   In file included from include/linux/page-flags.h:10:
   In file included from include/linux/bug.h:5:
   In file included from arch/powerpc/include/asm/bug.h:128:
   In file included from include/asm-generic/bug.h:19:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:19:
   In file included from arch/powerpc/include/asm/bitops.h:243:
   In file included from include/asm-generic/bitops/le.h:6:
   In file included from arch/powerpc/include/uapi/asm/byteorder.h:12:
   include/linux/byteorder/little_endian.h:8:2: warning: inconsistent confi=
guration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
   #warning inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set
    ^
   1 warning generated.
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:11:
   In file included from include/linux/list.h:9:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:19:
   In file included from arch/powerpc/include/asm/bitops.h:243:
   In file included from include/asm-generic/bitops/le.h:6:
   In file included from arch/powerpc/include/uapi/asm/byteorder.h:12:
   include/linux/byteorder/little_endian.h:8:2: warning: inconsistent confi=
guration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
   #warning inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set
    ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from ./arch/powerpc/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   In file included from include/linux/thread_info.h:21:
   arch/powerpc/include/asm/current.h:33:43: error: unknown register name '=
r2' in asm
   register struct task_struct *current asm ("r2");
                                             ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:445:
   In file included from include/linux/atomic.h:7:
   arch/powerpc/include/asm/atomic.h:138:10: error: unknown register name '=
xer' in asm
           : "cc", "xer");
                   ^
   arch/powerpc/include/asm/atomic.h:154:10: error: unknown register name '=
xer' in asm
           : "cc", "xer");
                   ^
   arch/powerpc/include/asm/atomic.h:171:10: error: unknown register name '=
xer' in asm
           : "cc", "xer");
                   ^
   arch/powerpc/include/asm/atomic.h:187:10: error: unknown register name '=
xer' in asm
           : "cc", "xer");
                   ^
   arch/powerpc/include/asm/atomic.h:262:10: error: unknown register name '=
xer' in asm
           : "cc", "xer", "memory");
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:15:
   In file included from include/linux/socket.h:8:
   In file included from include/linux/uio.h:10:
   In file included from include/crypto/hash.h:11:
   In file included from include/linux/crypto.h:21:
   In file included from include/linux/uaccess.h:11:
   In file included from arch/powerpc/include/asm/uaccess.h:9:
   In file included from arch/powerpc/include/asm/kup.h:30:
   In file included from arch/powerpc/include/asm/pgtable.h:18:
   In file included from arch/powerpc/include/asm/book3s/pgtable.h:8:
   In file included from arch/powerpc/include/asm/book3s/32/pgtable.h:149:
   In file included from arch/powerpc/include/asm/fixmap.h:75:
>> include/asm-generic/fixmap.h:78:2: error: implicit declaration of functi=
on '__set_fixmap' [-Werror,-Wimplicit-function-declaration]
           __set_fixmap(idx, phys, flags);
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:15:
   In file included from include/linux/socket.h:8:
   In file included from include/linux/uio.h:10:
   In file included from include/crypto/hash.h:11:
   In file included from include/linux/crypto.h:21:
   In file included from include/linux/uaccess.h:11:
   In file included from arch/powerpc/include/asm/uaccess.h:9:
   In file included from arch/powerpc/include/asm/kup.h:30:
   In file included from arch/powerpc/include/asm/pgtable.h:18:
   In file included from arch/powerpc/include/asm/book3s/pgtable.h:8:
   In file included from arch/powerpc/include/asm/book3s/32/pgtable.h:149:
>> arch/powerpc/include/asm/fixmap.h:77:20: error: static declaration of '_=
_set_fixmap' follows non-static declaration
   static inline void __set_fixmap(enum fixed_addresses idx,
                      ^
   include/asm-generic/fixmap.h:78:2: note: previous implicit declaration i=
s here
           __set_fixmap(idx, phys, flags);
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:87:11: warning: array index 3 is past the end of =
the array (which contains 2 elements) [-Warray-bounds]
                   return (set->sig[3] | set->sig[2] |
                           ^        ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared =
here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:87:25: warning: array index 2 is past the end of =
the array (which contains 2 elements) [-Warray-bounds]
                   return (set->sig[3] | set->sig[2] |
                                         ^        ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared =
here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:103:11: warning: array index 3 is past the end of=
 the array (which contains 2 elements) [-Warray-bounds]
                   return  (set1->sig[3] =3D=3D set2->sig[3]) &&
                            ^         ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared =
here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:103:27: warning: array index 3 is past the end of=
 the array (which contains 2 elements) [-Warray-bounds]
                   return  (set1->sig[3] =3D=3D set2->sig[3]) &&
                                            ^         ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared =
here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:104:5: warning: array index 2 is past the end of =
the array (which contains 2 elements) [-Warray-bounds]
                           (set1->sig[2] =3D=3D set2->sig[2]) &&
                            ^         ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared =
here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:104:21: warning: array index 2 is past the end of=
 the array (which contains 2 elements) [-Warray-bounds]
                           (set1->sig[2] =3D=3D set2->sig[2]) &&
                                            ^         ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared =
here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:147:1: warning: array index 3 is past the end of =
the array (which contains 2 elements) [-Warray-bounds]
   _SIG_SET_BINOP(sigorsets, _sig_or)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:128:8: note: expanded from macro '_SIG_SET_BINOP'
                   a3 =3D a->sig[3]; a2 =3D a->sig[2];                     =
    \
                        ^      ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared =
here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:147:1: warning: array index 2 is past the end of =
the array (which contains 2 elements) [-Warray-bounds]
   _SIG_SET_BINOP(sigorsets, _sig_or)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:128:24: note: expanded from macro '_SIG_SET_BINOP=
'
                   a3 =3D a->sig[3]; a2 =3D a->sig[2];                     =
    \
                                        ^      ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared =
here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:147:1: warning: array index 3 is past the end of =
the array (which contains 2 elements) [-Warray-bounds]
   _SIG_SET_BINOP(sigorsets, _sig_or)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:129:8: note: expanded from macro '_SIG_SET_BINOP'
                   b3 =3D b->sig[3]; b2 =3D b->sig[2];                     =
    \
                        ^      ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared =
here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:147:1: warning: array index 2 is past the end of =
the array (which contains 2 elements) [-Warray-bounds]
   _SIG_SET_BINOP(sigorsets, _sig_or)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:129:24: note: expanded from macro '_SIG_SET_BINOP=
'
                   b3 =3D b->sig[3]; b2 =3D b->sig[2];                     =
    \
                                        ^      ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared =
here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:147:1: warning: array index 3 is past the end of =
the array (which contains 2 elements) [-Warray-bounds]
   _SIG_SET_BINOP(sigorsets, _sig_or)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:130:3: note: expanded from macro '_SIG_SET_BINOP'
                   r->sig[3] =3D op(a3, b3);                               =
  \
                   ^      ~
   arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared =
here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:15:
   include/linux/signal.h:147:1: warning: array index 2 is past the end of =
the array (which contains 2 elements) [-Warray-bounds]
   _SIG_SET_BINOP(sigorsets, _sig_or)

vim +/__set_fixmap +78 include/asm-generic/fixmap.h

    72=09
    73	/* Return a virtual address with offset calculated */
    74	static inline unsigned long __set_fixmap_offset(enum fixed_addresses=
 idx,
    75							phys_addr_t phys,
    76							pgprot_t flags)
    77	{
  > 78		__set_fixmap(idx, phys, flags);
    79		return fix_to_virt(idx) + ((phys) & (PAGE_SIZE - 1));
    80	}
    81=09

---
0-DAY kernel test infrastructure                 Open Source Technology Cen=
ter
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporat=
ion

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/201911100816.no2ped5M%25lkp%40intel.com.

--ez7areyvnumzba7w
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ez7areyvnumzba7w--
