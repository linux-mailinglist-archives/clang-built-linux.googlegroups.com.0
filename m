Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKP24TWQKGQEZHMEHWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id CA946E9737
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 08:35:07 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id a3sf1076180pls.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 00:35:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572420906; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q3b2gVhd/o5ZP9n2G8uoXsbvSreZr9NOI0McG850Bz8UbraDXkowsOa28gw08L/4zI
         nOp3p8KCF0sDHdg9Sxd9WxSgqyKLh1hbzO6r084VdFBW4q4w3GGa+8F/Xl6jKJeWpVkx
         o62U2H/XgB3Q3+H2Z3fUA2fg0fCGwjp9Ti50oQiv+5+2GLVdAOng7hdYWmH11ZYt42hc
         xjXVEz+r3dxx+sED4PB7Hiiizp7em4/PKosK+UvNi19av16UEr/M1Rz+S4b0vcv/WMeD
         abF6AfiImihqKmDrUL/cBbtpeTDtqjfwTAEoE7MpRScCWG/4uUPgoszqTE0NmmrgCqhd
         Pbug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RdFtXesVSOIX9M7Zyvp+6AtVmcOkRrq+83yP5Tk7HGc=;
        b=Q5mD0YX2TqsfDu1lAOppforn9LeSOgk7LJWxvE0KoNEa2h8RfHk3mS63TKalFH+hsY
         /iRhie0Zvf82KFyDZ49ZQUod/1A6FxZJm8fwOGmYiVsuz/Psb5D+Ed5dF6wumluEHNsB
         33c+x0Rsl3DtbR95AzeqLZXgtgWrRqrJ3OxdfIcfeim5L/z+LJNa7zlUcEmZ0dzRE/A9
         P+SFHE1GJR5qIDSC9UJYiw7gy/5Z7prQNrAu8Svt2LblOQl7pqK3ua+NKvYopAFDhbVP
         tXSHvvuf/dBkGJtRR6UM3cPZahMWZ0rB+r/J9YWOWED5yUZfLRw8JsVZnyZxi64xr4hx
         nQ4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RdFtXesVSOIX9M7Zyvp+6AtVmcOkRrq+83yP5Tk7HGc=;
        b=C2/4HkF6D0f+ybSu498qWR3r/Gnm3+16/iUHGQykvoLaUWjA8NFtpUiS/PvKJB8enK
         ZUY5AtKQUv7IeTfvHmMtirv01ZuS6S+lrSGb+54JR+nwX74siru444ybBsV1uKXhwJi1
         NQzBrhSSgCQCFBozRPN8Dc2IcxNHv6u+aHtfN1BGEv/ArYeoyldblSCyRuE08tGiqMz7
         4PqddLnIbQsR3vYWuOUXWtITBbSun0iJFFjwb8psw1DcD78NS4/MYQDurGyC0N7304w/
         uy9PGGKyceem7VqABRUhcZ4fhtcL8cFKBipEZVZIPssEoyGmO9PT37CnOzfjky8ELwsc
         2GJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RdFtXesVSOIX9M7Zyvp+6AtVmcOkRrq+83yP5Tk7HGc=;
        b=mJjMSxTS8ShlvudQmgFuCTXkwoGdNA2/G5XRNiFHKZUfUQXQjHUACJL2fxx4HW/oYF
         Z1nr3kTexaLJuFGc+KPFscpSlBfXIU01hho65S0GUs9dkil0SmCLTygSOL19M7yQxSmY
         6NoBzO6bjXJ3KOOQ0o6rrUQLie4rRoTU5yZA42sFlf3LVE5y8/0iK76fqg1b5xeoeL0f
         +UkqBw86gy1yf4SwRzVgLdU/2FmigP+JZTJbYzsRWg8SxSbb+fqlAr3MpKeDZJEueuuC
         /RjwM3SAIw7jJyi0395rfJt7dexNQO0BchDscqxOn6uLtJbwVReIXe22bStBPu9sohHu
         73FQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXx5SXD3UMhgmnceZWaBdeDvEm2MqCdlih8BvCuKk+f16WIDZiO
	cmFiSNPjibBhPvC9jYqdbgY=
X-Google-Smtp-Source: APXvYqy5KZBEwH7oci4whqVERZl/I4kbSaBxtE9hmHqq5OMjOO6GiChWL6oL90DRWg4Ngnfn/nHS9Q==
X-Received: by 2002:a17:90a:a45:: with SMTP id o63mr12133255pjo.45.1572420906078;
        Wed, 30 Oct 2019 00:35:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:215b:: with SMTP id s27ls3430364pgm.7.gmail; Wed, 30 Oct
 2019 00:35:05 -0700 (PDT)
X-Received: by 2002:a63:3281:: with SMTP id y123mr5745527pgy.252.1572420905487;
        Wed, 30 Oct 2019 00:35:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572420905; cv=none;
        d=google.com; s=arc-20160816;
        b=gMfqSzXjEOK/KAbVTLOAeuJ+qN9vpCtgisGgGR/y4w1LTMYbK3LkzPv37U5JKrmQrD
         f8u8I70xENt4fRWU+gAIopIwHsA1u5rI+Hdr8SCd/vs51QIcMPHgfB4bNw/WMTgYstyH
         DU+no0zX70mR2bxlHJXlzp0mUYrteyjpV9UUXTzBgpEOFGI4n0abjqwabJ2H3gvEQu6G
         UeFnxiNdbny4W+AWq/cez7yVBtSuquJZwrnOfOe9Nthm6TxwUhktVKe1gwR5UChwJf9c
         iKnsf+cAu3MllzIG+4YivcCU16jll3LMVNtB4NW6M1EtStmrtw/oJNlt/7jr8esxS3WV
         6Uqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=0is8sfWLIZUPY94GAQxTYfQfb7Fy21oMSn/tjeXzuX0=;
        b=eu8arQraqR6nTEUY6BgSEOpIvOVsFyTEYk0IM4npL8/qA7BkjVaXVO6Ku3+w1zOawS
         SGcOrI/1EUxLT8JTtdyuT4IVKymfGa+IbWwLvvtCthn+dzsHFjLKEzUtk0AlyVl4ZH0g
         80lnvbHVdSIpngAiSXomfwt09Shl45Wa1HEBHnhxb5eUmprbmPQCbScHRtC3obLpwRnj
         wUT6FwISu7aSfkGI5FpcG+BnwAG52E6pfhmbMRd1tr4JbSL5ev5aERmBXr2rY5MUs4E4
         Zchu+Dpz91NGD2HSelgnE+xLVZKEucnEg81GT52+W2X3Bs7fXKKbCkvIpj4JHifqf7ay
         1oOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id c11si137474pjn.3.2019.10.30.00.35.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 00:35:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Oct 2019 00:35:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,246,1569308400"; 
   d="gz'50?scan'50,208,50";a="199151247"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 30 Oct 2019 00:35:03 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iPiVT-000AHU-GU; Wed, 30 Oct 2019 15:35:03 +0800
Date: Wed, 30 Oct 2019 15:34:36 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mm/sparse.c: mark populate_section_memmap as __meminit
Message-ID: <201910301552.BQ4Z2i7A%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6wp5jjzbvektkuh7"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--6wp5jjzbvektkuh7
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@lists.01.org
In-Reply-To: <20191028165549.14478-1-iii@linux.ibm.com>
References: <20191028165549.14478-1-iii@linux.ibm.com>
TO: Ilya Leoshkevich <iii@linux.ibm.com>
CC: Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org, linux-ke=
rnel@vger.kernel.org, linux-s390@vger.kernel.org, Heiko Carstens <heiko.car=
stens@de.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Ilya Leoshkevich <iii=
@linux.ibm.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, linux-s3=
90@vger.kernel.org, Heiko Carstens <heiko.carstens@de.ibm.com>, Vasily Gorb=
ik <gor@linux.ibm.com>, Ilya Leoshkevich <iii@linux.ibm.com>
CC: linux-mm@kvack.org, linux-kernel@vger.kernel.org, linux-s390@vger.kerne=
l.org, Heiko Carstens <heiko.carstens@de.ibm.com>, Vasily Gorbik <gor@linux=
.ibm.com>, Ilya Leoshkevich <iii@linux.ibm.com>

Hi Ilya,

I love your patch! Perhaps something to improve:

[auto build test WARNING on mmotm/master]

url:    https://github.com/0day-ci/linux/commits/Ilya-Leoshkevich/mm-sparse=
-c-mark-populate_section_memmap-as-__meminit/20191030-113800
base:   git://git.cmpxchg.org/linux-mmotm.git master
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project eb535d23418c72=
59cac85bdb13197263b2cee056)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=3Dx86_64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> WARNING: vmlinux.o(.meminit.text+0x2356): Section mismatch in reference =
from the function __populate_section_memmap() to the function .init.text:me=
mblock_alloc_try_nid()
   The function __meminit __populate_section_memmap() references
   a function __init memblock_alloc_try_nid().
   If memblock_alloc_try_nid is only used by __populate_section_memmap then
   annotate memblock_alloc_try_nid with a matching annotation.

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
clang-built-linux/201910301552.BQ4Z2i7A%25lkp%40intel.com.

--6wp5jjzbvektkuh7
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICKEouV0AAy5jb25maWcAlFxZc9u4k3+fT8GaqdpKHpL4Hs9/yw8QCYoY8QoB6vALS5Ho
RDu25JXkmeTbbzdIiiDZUGbnjNGNu9H964P+7ZffHPZ23L0sj5vV8vn5h/O13Jb75bFcO0+b
5/K/HS9x4kQ53BPqIzCHm+3b90/f7++Kuxvn9uP1x4sP+9Xdh5eXS2dS7rfls+Putk+br28w
xma3/eW3X+Cf36Dx5RWG2//HWT0vt1+dv8v9AcjO5cVH+Nt593Vz/M+nT/Dfl81+v9t/en7+
+6V43e/+p1wdnfLL7fXt+ur65vJ+9fvV7R+r5er+9sv6y+X15R+/X91df7laleXF7d17mMpN
Yl+Mi7HrFlOeSZHEDxdNI7QJWbghi8cPP06N+OOJ9/IC/zI6uCwuQhFPjA5uETBZMBkV40Ql
LUFkn4tZkhmso1yEnhIRL/hcsVHIC5lkqqWrIOPMK0TsJ/CfQjGJnfWBjfU1PDuH8vj22u5r
lCUTHhdJXMgoNaaOhSp4PC1YNoblRkI9XF/hsddLTqJUwOyKS+VsDs52d8SBW4YAlsGzAb2m
honLwuaEfv217WYSCparhOisz6CQLFTYtZmPTXkx4VnMw2L8KIydmJQRUK5oUvgYMZoyf7T1
SGyEm5bQXdNpo+aCyAM0lnWOPn883zs5T74hztfjPstDVQSJVDGL+MOv77a7bfneuCa5kFOR
uuTYbpZIWUQ8SrJFwZRibkDy5ZKHYkTMr4+SZW4AAgA6AuYCmQgbMYY34Rzevhx+HI7li/E8
ecwz4eonk2bJiLc3YJJkkMy678tLIiZiqq0IBM9wHQt6rIipTMwLWBsIrUoymivjkmdTplCg
o8Tj3Zn8JHO5Vz9bYWoRmbJMcmTSYlNu187uqbf7VuMk7kQmOYxVzJhyAy8xRtJHabJ4TLEz
ZHz6pjZrKVMWCujMi5BJVbgLNySOWWunaXtrPbIej095rORZIiom5rkw0Xm2CC6KeX/mJF+U
yCJPccmN+KjNCxgKSoKCxyKFXoknXPOhxglShBdyUoo1mdaAYhzg7esDyWSXp77OwWqaxaQZ
51GqYPiYm6tp2qdJmMeKZQty6prLpFU2M80/qeXhL+cI8zpLWMPhuDwenOVqtXvbHjfbr+1x
KOFOCuhQMNdNYK5KOE9TTEWmemQ8dnI5KOhaKlpeetlSkKf0L5att5e5uSOHFwvzLQqgmcuH
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
2mibMVQTfOUnUHWuCYxpAAA=

--6wp5jjzbvektkuh7--
