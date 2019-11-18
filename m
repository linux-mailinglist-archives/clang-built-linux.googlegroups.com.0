Return-Path: <clang-built-linux+bncBDV6LP4FXIHRBO6FZPXAKGQESTM3LTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E5A100B76
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 19:28:12 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id r12sf12805578qtp.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 10:28:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574101691; cv=pass;
        d=google.com; s=arc-20160816;
        b=IR2pHN6G+DZ8m5Umw+NmlqQHzo9I1LySiiqMnWWhQi/k5RyJ1NfyWj520kJqGZYkBx
         A0hvCTixl3Hf5NzFRD1UpHRdHqtSSU+YWD9xY5IXi5EZ88FQw33GqDOtctMuclCExXYx
         QaFKhsJdXBOUWva2hegvtMW7VqryAeFN6v11kVwZx5WzNHyBWpNLuhCOnCBK3wWOd9JJ
         a6zaRshOx4ZbaVxDI08/r5xciPJniRYzqlj/eJ+i8EKLfNtTWQvSmi9VEl9S6CeBRT+6
         humjNtpNXfeFlLtYktjxmb5/G1MMcp7Jeycjn4RdLrmL5k6JK0NInmYD3LQcx3BHyhYW
         vVdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ii2DCGrtuoZamSX2cVPpsuMo5VF+5C/NH2IZCekkXqM=;
        b=XJ22klZ6UTGUBMnLZDEs8FhRM9kFXkv+zIyKlB+uYVEbdfowj5Y5CiCWvraPx4vQm/
         QaImUW3SiRJr3VeMsWBTpBnEKDsWX6R7fEQhxfRcuTjBMbPaDdXqjndj5NaXjWHkn7ci
         PTBNyzmlMauwS3u8vrxkDZ61y23mkjgd3jjHhVKG3CjC+SSq5UxNaZ/x0MJjR0f+YMNn
         dPxKLL3+saLlsAA3Y3FDgT27eYTe6o2x3qOvR6SsA9yg1zZ5rAL8ieQ0WfMipATTc08j
         MSdz8G+LEHrtWjAgs43BAs6iXAaQ2jB/lQ5lILSjnEfuf+cR+ibU1VrL2i2Z/j5r1Nj6
         YG6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cmpxchg-org.20150623.gappssmtp.com header.s=20150623 header.b=ig9Ko1Es;
       spf=pass (google.com: domain of hannes@cmpxchg.org designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=hannes@cmpxchg.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cmpxchg.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ii2DCGrtuoZamSX2cVPpsuMo5VF+5C/NH2IZCekkXqM=;
        b=ARqlFNkJiQxC8hxBBec08AHdUXRXe0xfiHp3aashSACr52s2L1VBgVJ4gW85ZNw0oD
         U/Kr/RvK91CSTvXfjfIq2qvHck/LUS8GxmOLCkxQtcgwE1iTVF4H+58wLXyAZvS9fCOZ
         Kmz0yzPj66+6zlXtgv50Rfi0Dq99Y5/sTMkOWVOqPu2QCF/564QTMMLFIlE9oKW8IYCp
         3cjtz7zcriYA4VbcdJGzaxekcutSKUT5EtDJMtWr+m82JsUcrnWYhSKB4ogOyu0OPUGG
         CTOhoW5F8dXFURrRlUX1+yhdd0GmGfex8Iqz8yzXgs9m8ZOjoEXT8SsfEjV2bSD4nXEI
         GrxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ii2DCGrtuoZamSX2cVPpsuMo5VF+5C/NH2IZCekkXqM=;
        b=ZUzKhcmDDSYwpumBD2V0dMpS4kx8fJdHT+I1CFZ6JhPA8gnarcXXremjMRvzQcXcRr
         QJLVdtAHV1L94dbd6BJaDzowGZTP3qwzS+PbEt4EYkgy215VkMyvB9gIowwR4kUSqKhg
         i1Ej+MNQaxxHgKT/gLG0dPyXa0fIrHJ6ygNRm+dHJ3UOA1b7FD7pJ4Rt4w+JPnxXbHae
         HroC2z5BHRHzzB2R+0BJOGX8xmzaJo/KgGnTisSlAXFxI7C87mTy+iDpfVj+Y6qfY8xK
         SXcKiZ/fhGxLcst8uHfq/njis+Vn2adZrZHF6zEa1orK92OgdbuzbCLgaeDb8joeGiWl
         lJTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVI/9+jPYqPXPKLayIPdTBCBiagyxbUFw0aCAUUjJd6NDCSR0Xd
	vK29URcz127Ebx8O/yrsq28=
X-Google-Smtp-Source: APXvYqzy+u20XUy2Uaxmi7hM/SXOq3iSAHaX/T4XnxJKA6Ch5U5AVUYg1/konRn43BC1F/EjvPG9AA==
X-Received: by 2002:ac8:3447:: with SMTP id v7mr29099778qtb.306.1574101691518;
        Mon, 18 Nov 2019 10:28:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:22e1:: with SMTP id g30ls5201857qta.0.gmail; Mon, 18 Nov
 2019 10:28:11 -0800 (PST)
X-Received: by 2002:aed:2722:: with SMTP id n31mr27293305qtd.98.1574101691057;
        Mon, 18 Nov 2019 10:28:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574101691; cv=none;
        d=google.com; s=arc-20160816;
        b=jhixjqZ0AjujKWhMYh1x506qndX6yXi+7lb6kOONYqYrYRVtPiLtw+EEEwtJbg0+Vp
         d7dMmjp+Ic0iOEMz+Ab81iTW2LiXC+lPsmBNL/nfv+DHvmMQlMGpms9DYdxhWWkbsVpO
         6GrdDC/K3+km8hM7pH2QskgYPtGR2Cd4mCBsKqOqjDKE3vH56syFgQepr2z6jRx5aBFq
         xqFHJ9aZJeXUqJiT0jt+UsWfZ2D74+J0b2RRZSA2UUX7osyg6Sl9oVmxL9JO8w8OALP4
         Wm/wk3S3mQUUgKyKQ6HMfPMajIT35YxamglR7I7dEaR0lKuVwfE6CJ67N3QOy9kJ/uy/
         g0XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=P530iGaGJTGabTkd7U5Ayp5UIuGpPeh+6ztPJr+I6u0=;
        b=zsWK3dmam8u8T2jQxeBeyW1+kDTDq+qcsQEklFlbNy3oQUcZuZno4aqfRQaaipO/t3
         XJUEwV2qqEdnGajeQllXeZsvH5hDI95Emuyj9fIJz16Rn8MS03AM4y4P+caNttfzUHTn
         9AYNaP4WQ28BazPfg+xsKI65pdi4Tr8usOTP0TkzGkf6D0CK1Aal4Rfnn/96j+kH+uv8
         /cdIiwoOs4Ao0CI+PcluRhPWEAKTTzmgDTwFongCmgKtsONJsAyzdGUGCMN39q8kRUhW
         LYNkb2v/KSc9wZB6VLOpcG0IfAuqMDrDbQ9Ef+rmMiNoy6dSCfZnWdbnvz2ZB0I9IWxg
         WJbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cmpxchg-org.20150623.gappssmtp.com header.s=20150623 header.b=ig9Ko1Es;
       spf=pass (google.com: domain of hannes@cmpxchg.org designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=hannes@cmpxchg.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cmpxchg.org
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id r28si905257qtu.0.2019.11.18.10.28.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Nov 2019 10:28:08 -0800 (PST)
Received-SPF: pass (google.com: domain of hannes@cmpxchg.org designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id q19so6961473qvs.5
        for <clang-built-linux@googlegroups.com>; Mon, 18 Nov 2019 10:28:08 -0800 (PST)
X-Received: by 2002:ad4:4042:: with SMTP id r2mr17015301qvp.196.1574101688524;
        Mon, 18 Nov 2019 10:28:08 -0800 (PST)
Received: from localhost ([2620:10d:c091:500::1:1113])
        by smtp.gmail.com with ESMTPSA id x65sm8871285qkd.15.2019.11.18.10.28.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2019 10:28:07 -0800 (PST)
Date: Mon, 18 Nov 2019 13:28:06 -0500
From: Johannes Weiner <hannes@cmpxchg.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild-all@lists.01.org, kbuild test robot <lkp@intel.com>,
	Suren Baghdasaryan <surenb@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [linux-next:master 11878/12136] mm/vmscan.c:2216:39: warning:
 implicit conversion from enumeration type 'enum lru_list' to different
 enumeration type 'enum node_stat_item'
Message-ID: <20191118182806.GB372119@cmpxchg.org>
References: <201911160531.VrqGMTij%lkp@intel.com>
 <CAKwvOdk70dd5F7JjZW5oNaSkQKh8_3P9D8VJ7aPpgx1vYw8Uog@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk70dd5F7JjZW5oNaSkQKh8_3P9D8VJ7aPpgx1vYw8Uog@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: hannes@cmpxchg.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cmpxchg-org.20150623.gappssmtp.com header.s=20150623
 header.b=ig9Ko1Es;       spf=pass (google.com: domain of hannes@cmpxchg.org
 designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=hannes@cmpxchg.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cmpxchg.org
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

Hello Nick,

On Mon, Nov 18, 2019 at 10:19:52AM -0800, Nick Desaulniers wrote:
> Hi Johannes,
> Below is a 0day report from a build with Clang, can you please take a look?
> 
> On Fri, Nov 15, 2019 at 1:44 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@lists.01.org
> > TO: Johannes Weiner <hannes@cmpxchg.org>
> > CC: Suren Baghdasaryan <surenb@google.com>
> > CC: Andrew Morton <akpm@linux-foundation.org>
> > CC: Linux Memory Management List <linux-mm@kvack.org>
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   5a6fcbeabe3e20459ed8504690b2515dacc5246f
> > commit: 07976d367592d6613370c93706795b4ebc0850f1 [11878/12136] mm: vmscan: enforce inactive:active ratio at the reclaim root
> > config: arm64-defconfig (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project f7e9d81a8e222f3c9d4f57e0817f19bbb795e5b6)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout 07976d367592d6613370c93706795b4ebc0850f1
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> mm/vmscan.c:2216:39: warning: implicit conversion from enumeration type 'enum lru_list' to different enumeration type 'enum node_stat_item' [-Wenum-conversion]
> >            inactive = lruvec_page_state(lruvec, inactive_lru);
> >                       ~~~~~~~~~~~~~~~~~         ^~~~~~~~~~~~
> >    mm/vmscan.c:2217:37: warning: implicit conversion from enumeration type 'enum lru_list' to different enumeration type 'enum node_stat_item' [-Wenum-conversion]
> >            active = lruvec_page_state(lruvec, active_lru);
> >                     ~~~~~~~~~~~~~~~~~         ^~~~~~~~~~
> >    mm/vmscan.c:2746:42: warning: implicit conversion from enumeration type 'enum lru_list' to different enumeration type 'enum node_stat_item' [-Wenum-conversion]
> >            file = lruvec_page_state(target_lruvec, LRU_INACTIVE_FILE);
> >                   ~~~~~~~~~~~~~~~~~                ^~~~~~~~~~~~~~~~~

A fix for this has been sent out and should make its way into into -next soon:
https://lore.kernel.org/linux-mm/1573848697-29262-1-git-send-email-cai@lca.pw/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191118182806.GB372119%40cmpxchg.org.
