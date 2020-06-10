Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMW2QX3QKGQEHEFKWWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 284B81F5EB7
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 01:31:00 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id i7sf3090827pfk.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 16:31:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591831858; cv=pass;
        d=google.com; s=arc-20160816;
        b=Of0eEaUnruPruOpCKnMeFCETxdN7LUmxBYXBbm04k+hYp2LnDuSNLZFX8sS/ZShqp0
         giuoKx+LqytE6ur/20bJYLEhf/Hnw3lkAZeIn1AuBvfOqg7Tuf4cKeiCWza+7dQGmBZA
         8J1e9RkJzuhVMnCcZLRlgbt7dC/p2QJuCqu8BkaUg8ph0eu+SgtAS1pTBa8qbnL2hsh3
         eohNA469Pw7Q3nySk8dXbdUe9N/4P11rK35OfYileQgwVh0MNTUwTMtJ2SXWhvyY8P5L
         Tgyy8/IJThuMi0xmeI5y/+864BF9FDD4YMb822g2yWMFlQkKzA17Cza2PzJvtk+BbN4i
         QDFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PN7KMua8+YwCUeUXxWLfTOy4uGFeP0pPf4qvQq0K5w4=;
        b=f+7uXnYxfkQ/UCSuGeO/+IuOPXv1mpEFPt0lu9z1KI+8aC3yvOgASKsUVb161KTIwJ
         +2gyp9Ce1yaXggCE9mpg/KyEyH/LgLr3pHw+01Lk6j+LLKJiRVLx8W1pdLF0+0W3wocA
         z/AreJTxXMhSjNFIpTqdb//70c58bJaRiqNasWWqIZkqA+7pds3AePoYC13UYebDq6dH
         5KdvMLXBfvQTGLX5IBn7mvKlm4+6z716Cxcsgiv/t2JsUDGTfh8mB6W/o/Lau6EVf83w
         JHXtCxITqthD4LevEHXwxNTFVZ1S5cbWoYU+lxz4xntWyurfq7EoB23hNbjyKkSIfUI7
         bi7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GJLhpWfp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PN7KMua8+YwCUeUXxWLfTOy4uGFeP0pPf4qvQq0K5w4=;
        b=UT7f3spczMwOBreqk7cAYB9Zdbwm2Ipj6/2Okd5kxUoIrj/bD1fvXGLlXnOfAQZ/YZ
         81CvEoqMfoiyWnBjOtFL0HbjZ8I7/lLzkg82Cwcj8TfKnNbzY/XTGgcGJ3tymzfwDXX3
         +WD+xiwOu/lh3+DccievKdshmbl6oO15HSVgz7V/a5d7HHv4LQ1NbhrKOqNZWbivMd9C
         HSZJgLssu/HT/ZLL2SLp0gEo2X+MmwceUWbo1jyFjzh4mBHru/FTQHTo0/vBcnCChBII
         LDofJBHMW8QTg9F6uSVNcK9GcrvBhRIzlmBOZLstui1jpf87QGDp7qwVHGrogYgqr8dx
         VAtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PN7KMua8+YwCUeUXxWLfTOy4uGFeP0pPf4qvQq0K5w4=;
        b=BmULTE5VyFI9VE5BSAQ6jyUe5j3JF8WoXSsTkCB1N1J+/7+lxkjdHRdpx67EBrigTl
         IN448yPNVUQBS2eaPVgIGbP+DC/6aQNALXt9+U/JXhEp4i9nVM4TOgXI8+YcoSAhLP9D
         tbghn2uFsopQT3DgTVdg1GBk6SYfAXVADrg2XIwgKxw0IrRzMDH/vl0RBhGe9pirSDi5
         ZRNEsv7H45Yp1ua8fxDUpXvZEOHK1AEJb40Jts4AtGEinCirvvRNwTRyGbXvvHEOgqt0
         T7W3Nirc75Z20BNLAEievmd/nxhBGJG04a8CSM3PtJ/iOWkSZTo5hS/Tuil4Fvab7TDV
         SZBA==
X-Gm-Message-State: AOAM530DHxGa6U57ABznoEMpe5E1tXKxYQviVjUgtOEdaqSeTfa20fC5
	FlTv1tioj6ThqFNvmcsRbuI=
X-Google-Smtp-Source: ABdhPJyDeIWpVwNt5fetDMXTqZ/3aJGmxdoPiOi5zx3tP4YOrgAFcqydv7KaeADONGEwrgivQ/srSQ==
X-Received: by 2002:a62:5f84:: with SMTP id t126mr5097906pfb.124.1591831858593;
        Wed, 10 Jun 2020 16:30:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7143:: with SMTP id g3ls124293pjs.1.gmail; Wed, 10
 Jun 2020 16:30:58 -0700 (PDT)
X-Received: by 2002:a17:90a:f993:: with SMTP id cq19mr5556494pjb.154.1591831858184;
        Wed, 10 Jun 2020 16:30:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591831858; cv=none;
        d=google.com; s=arc-20160816;
        b=Ehh+ZpezURcY8R9PwuLbhRy5m43q9NWKbvbxqu6UKbHIzp7ElZnVAf7nITmmc8FtIr
         bOFxEOAsiUO06ct/X0rwTsksetRwKhbIz4LkIJF636iQD0+jPoX82W40XbzjfgBBJinj
         dPqVM0efoWaCkYA41399xET3JrSRd9Q78SIpt03HAQpxFS+hy95kmoJvIKAeBpTO/53l
         GIg73s2wVOQQKQzdAle+ZCEZD+WEVwQzL47Z5yRZgOyyR3QyuiqCpTGGkxkdDOSEzGIJ
         NWFSYlfEyRuBR9E+Em0IEf0+H/4k4HiYi84CRLV1R3/yZqRKmUx8A0znlO1GQ8eMLCkJ
         RnnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NJdOe1rdR4Bwf5XcYpBbjj4+rwchCUllw94bPyzr+pc=;
        b=umYeC9wHEnA/pUGF9oQz2JTShfYMGl4oEa9lDt/6bqYIPu4qvzN2+PVmbwWYArNS4j
         XjsvX+97d+QS6PmvNEEclNJumyag6JbGc4ho1PytWVKuJ66EA12fIdlHBDY75eQ/R+sd
         KIxeQA78yKZDrcdBQ7wZOnjg9QJC0R6HwJ/q+krEl+DSue04oJmkeIHafCjf80rVc1a9
         M18Z+2/S71Fi1airupjX8+Vh2tGX7XKPtYpdJe+MJbnifGLXHQ5grEam1Qbjb/egYNjW
         n433870wskD8E4HKvPc7KPXy0N6YWGxjX5w1BZsC7QU4vaf9NbYDwPdRWVA2MXdoQKgB
         I7lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GJLhpWfp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id a1si125520plp.2.2020.06.10.16.30.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2020 16:30:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id n9so1586204plk.1
        for <clang-built-linux@googlegroups.com>; Wed, 10 Jun 2020 16:30:58 -0700 (PDT)
X-Received: by 2002:a17:902:341:: with SMTP id 59mr4657658pld.119.1591831857580;
 Wed, 10 Jun 2020 16:30:57 -0700 (PDT)
MIME-Version: 1.0
References: <202006110336.RmmT7Cye%lkp@intel.com> <CAKwvOdkn4S_BtizLrur_5S-QT4LWrNn4mOfvw+H9Z2rR9f9nFg@mail.gmail.com>
 <20200610230437.qjbgzv26rcwczyxs@google.com>
In-Reply-To: <20200610230437.qjbgzv26rcwczyxs@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 10 Jun 2020 16:30:45 -0700
Message-ID: <CAKwvOd=pCUmhhCazgg5bM5QHxeXo40NAwkTqer9MweGhCXkK7w@mail.gmail.com>
Subject: Re: [linux-review:UPDATE-20200603-033008/Nathan-Chancellor/s390-vdso-Use-LD-instead-of-CC-to-link-vDSO/20200528-140859
 1/1] ld.lld: error: unknown argument '-fPIC'
To: Philip Li <philip.li@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>, 
	Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GJLhpWfp;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Jun 10, 2020 at 4:04 PM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
>
> On 2020-06-10, 'Nick Desaulniers' via Clang Built Linux wrote:
> >On Wed, Jun 10, 2020 at 12:43 PM kernel test robot <lkp@intel.com> wrote:
> >>
> >> TO: Nathan Chancellor <natechancellor@gmail.com>
> >> CC: 0day robot <lkp@intel.com>
> >>
> >> tree:   https://github.com/0day-ci/linux/commits/UPDATE-20200603-033008/Nathan-Chancellor/s390-vdso-Use-LD-instead-of-CC-to-link-vDSO/20200528-140859
> >> head:   b19361026b76f9167c9206f654b12f53023550d1
> >> commit: b19361026b76f9167c9206f654b12f53023550d1 [1/1] s390: vdso: Use $(LD) instead of $(CC) to link vDSO
> >> config: s390-randconfig-r021-20200607 (attached as .config)
> >> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project bc2b70982be8f5250cd0082a7190f8b417bd4dfe)
> >> reproduce (this is a W=1 build):
> >>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >>         chmod +x ~/bin/make.cross
> >>         # install s390 cross compiling tool for clang build
> >>         # apt-get install binutils-s390-linux-gnu
> >>         git checkout b19361026b76f9167c9206f654b12f53023550d1
> >>         # save the attached .config to linux build tree
> >>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
> >>
> >> If you fix the issue, kindly add following tag as appropriate
> >> Reported-by: kernel test robot <lkp@intel.com>
> >>
> >> All errors (new ones prefixed by >>, old ones prefixed by <<):
> >>
> >> >> ld.lld: error: unknown argument '-fPIC'
> >> ld.lld: error: unknown emulation: elf64_s390
> >
> >^ is this another inconsistency we have with emulation modes, or is
> >this completely unsupported in LLD?
>
> LLD does not support EM_S390. I don't know anyone is working on it (or
> is interested at the support).

Ah right, Nathan confirmed no LLD support for s390. Philip, we may
need to not use LD=ld.lld for s390.  Not sure about the second error
message.

>
> > ld.lld: error: unknown argument '-fPIC'
>
> There may be a build system bug.
>
> In GNU ld, -f --auxillary is an option. -fPIC is not:
>
> % ld.bfd -fPIC -shared a.o
> % readelf -d a.out | grep PIC
>   0x000000007ffffffd (AUXILIARY)          Auxiliary library: [PIC]
>
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DpCUmhhCazgg5bM5QHxeXo40NAwkTqer9MweGhCXkK7w%40mail.gmail.com.
