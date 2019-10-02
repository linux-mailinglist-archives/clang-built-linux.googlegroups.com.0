Return-Path: <clang-built-linux+bncBC4LN7MPQ4HRBTNP2HWAKGQETCFGS3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id D68E8C48DE
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 09:54:53 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id x13sf4551511ljj.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 00:54:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570002893; cv=pass;
        d=google.com; s=arc-20160816;
        b=cURzH4QWhmn+iYtwKphZ93rgLJfa2LHA5z08vf3MmXNPE5tOLhMotnQ1GBlgq9m6ji
         AK/GTil3oohjCP/ab7DOPiqMpySkYfI03mOkgWbSwAZSaNil8McmGbCd5ujOUGLN+tSK
         NY+/9ohhbhMl1/X/Nwrrlfyl4/a2M+OuLOGK+CwCXvypdl/3B+nF9bSMZFbp5riBP6x+
         NOo0Ok6CF+39o8B97DQMYvKDDg7mbVqmBsrHjSOdNdGH9WEvP5pIubrnGJaEJ3zLEYBn
         RZQbmWM1T1aGH2y4iVz0lxfGHbLt/vcfeoTStY4ag5cbSvZT2yUOOKD4115sRfvbt5bh
         6gPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ZvnpwxWcWoqhUvB/Css3hQ+BedOkcRMMPlx1iQhl3Fo=;
        b=XZ50SmP7k/S1/wmbt01k5M+it2w8cZFajXflG16dWwKkF6Ecq5LDkmXruylxnNFA1W
         CHPEe41LsaZwY70Y6yw66o60iTUPghvjtxUyDzl3GpL0NoPe7aYNkFr4Z7UtJEoHfWxs
         UXsMhgKsYvODZDQeM3EEP9ChZUZE1vKH6+qndSV/Qgb7gXcbG9h3na0qbR4Za9QAOiDO
         FeGwsUABodDKFSMQhLK0LyhYD4MdVdQz5iVIOwziiQwcyx57E3diKZXNzadawuqTxIV8
         pax+alqI/fhLffgNAYymOTCllRpAYaQwWsPBd9SrZO5YO6LjqwTCgnryqTkcnJY8NaEG
         5lKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning mhocko@kernel.org does not designate 195.135.220.15 as permitted sender) smtp.mailfrom=mhocko@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZvnpwxWcWoqhUvB/Css3hQ+BedOkcRMMPlx1iQhl3Fo=;
        b=INp9M7eTBKc57X5ZkEzcSIl0KHq8FZSlvTDsLzb9i0qkWWlCFdLwxXLHJW3HwzdPU2
         NaH0LCR04ywhJNUiQZuLvw3eTaFSOgoexHkZhvgzWtQsXUD6C4y9i1Kg7GoxZ4EzTSWR
         pJGVMEchD9Zy3lXrj9cX2Z4DcCVaB0sgwBTr4cvi9U5vXGZbp6RnSXqFYSOHuPVLMlXB
         r/Cxy3QtM7JFvWF+EyRvudZwE5l9ZG9aebmztw1nfy3VgxI1cFVmTgYsYGdMka+XrDn+
         KqnIVyzzJ0wqnu9Vj5pWehlyhsWYPsHHR2ZCGZr+QBNclBLmJfbzLnQpQjPHGJs+j3+e
         SLQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZvnpwxWcWoqhUvB/Css3hQ+BedOkcRMMPlx1iQhl3Fo=;
        b=Aovmmc4Hzk/pI4JeP4piDvdE7Wp2fpSv+2fVCNd8buSNU4rv8TKPrBd8MD/iHenToL
         df5vvinGRFL3hyhPKx11AqkjqaxGfEmrLOhhpV/aXOGfR/OQB7tI6IcJi0cnl44PWOW8
         yQZn62YVW05R2IcEkSAKKR9VRKtUMYb0Fc1Z8Mu3TV7POGlxDdPGvGIdD2/iotOHCI/i
         YHdrkf6qItAUm5Cfv1Nd6DUNMKFivt2H+VUdw6PAEItCd1k1TD7Y4D/uEuzqKR6GtNBZ
         h13PUiixzYHi4NuMIuux2yVq6tD26AzkrpHOowija+e9LqYwyYtakEy/Zb1tz3J1NLJO
         Pf0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUeEUghDx8f1BRyY1cvmNEdhab6K3CaVrNW2kOCCFYGBZmhLGU5
	cAcdbV438C8VVkYQiGUycs0=
X-Google-Smtp-Source: APXvYqybZSksn+AnHS9AEOf3V2c+p6tp6b5sgSmlKemMyopDgfsyfrhioFg6b54rdAqGhpM8UhKcbA==
X-Received: by 2002:a2e:9d4a:: with SMTP id y10mr1390021ljj.181.1570002893407;
        Wed, 02 Oct 2019 00:54:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9bd0:: with SMTP id w16ls170063ljj.13.gmail; Wed, 02 Oct
 2019 00:54:52 -0700 (PDT)
X-Received: by 2002:a2e:5418:: with SMTP id i24mr1423131ljb.126.1570002892946;
        Wed, 02 Oct 2019 00:54:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570002892; cv=none;
        d=google.com; s=arc-20160816;
        b=YipOaabGVzec/qZa/qIJbk4MOzUQGGDbiSJHGGGme8iXKE+buGQtEXMCaE9Fo5HfVU
         xkoEuwTGrgZrGqZSEc96QgDwlO4ddD82cR/DDTdo+bJHVhXdXcgEzPCuyIMEVwpr/Cx+
         zJJ4IiXx8SjzhmfK5rbwH5lsG7iVM+zrfXw9f0JJzyIlqT7T65ziRsx2th1joutgSlfa
         yP38KSjPIxKSaQQR4flzGhtSJAQ8hTtfbKGglNuPY8nOVN4LUTmBMuyzz7bK+zlzrTqK
         xxTsfAldIfonVH2bd9tMz2FrPs8jAqvpLQyFLusn/hRO1LPlonqcOqTMOK2Y0nem/ivQ
         w2fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=8t5sCh6Mps1Wq4XvTFUTjHSR8AEfwmOuUzP58cgFUAs=;
        b=h8jFzTqfX1o5J6Ht0oZhpBpaZpBsWCx29xA0CepWjvqW555G3VDgqDFgFLB0t51iFD
         BUpf4GsPMZEQtGVOyNueB6h0UJHQCq0lEPlt0Ot7eWbbs/ckeSLAb4fC0y5P+twUMk2m
         z9aU2tnx+Pv5fI9+RuByQsl28rOjxNZH9NxkNJvWyke0gxILzw/I3fCxCwiOAMepSo0a
         4kGRtqSg0OcPRxRqlAD3In+/pVnOxpSZBaB1na8B9N+E/iRADcGIJreUyVNU4bOvGcyS
         XMdrA1/9TmMUb4jGi/N750qYkKTH91cTlWp8PCaVD11zRQ3J3oSpH4DYJ2+0mjrBsolF
         /1vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning mhocko@kernel.org does not designate 195.135.220.15 as permitted sender) smtp.mailfrom=mhocko@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id o30si973836lfi.0.2019.10.02.00.54.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Oct 2019 00:54:52 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning mhocko@kernel.org does not designate 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 21148ABF4;
	Wed,  2 Oct 2019 07:54:52 +0000 (UTC)
Date: Wed, 2 Oct 2019 09:54:51 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Johannes Weiner <hannes@cmpxchg.org>,
	Vladimir Davydov <vdavydov.dev@gmail.com>, Qian Cai <cai@lca.pw>,
	Andrew Morton <akpm@linux-foundation.org>,
	Roman Gushchin <guro@fb.com>, Shakeel Butt <shakeelb@google.com>,
	Chris Down <chris@chrisdown.name>, Tejun Heo <tj@kernel.org>,
	cgroups@vger.kernel.org,
	Linux Memory Management List <linux-mm@kvack.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] mm/memcontrol.c: fix another unused function warning
Message-ID: <20191002075451.GG15624@dhcp22.suse.cz>
References: <20191001142227.1227176-1-arnd@arndb.de>
 <CAKwvOdn7J6bvF=58UkeXA8LVAMt-g76EDFT+j5EWc0LdsyX_CQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdn7J6bvF=58UkeXA8LVAMt-g76EDFT+j5EWc0LdsyX_CQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: mhocko@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=softfail
 (google.com: domain of transitioning mhocko@kernel.org does not designate
 195.135.220.15 as permitted sender) smtp.mailfrom=mhocko@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue 01-10-19 09:36:24, Nick Desaulniers wrote:
> On Tue, Oct 1, 2019 at 7:22 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > Removing the mem_cgroup_id_get() stub function introduced a new warning
> > of the same kind when CONFIG_MMU is disabled:
> >
> > mm/memcontrol.c:4929:13: error: unused function 'mem_cgroup_id_get_many' [-Werror,-Wunused-function]
> >
> > Address this using a __maybe_unused annotation.
> >
> > Note: alternatively, this could be moved into an #ifdef block.  Marking it
> 
> Hi Arnd,
> Thank you for the patch!  I would prefer to move the definition to the
> correct set of #ifdef guards rather than __maybe_unused.  Maybe move
> the definition of mem_cgroup_id_get_many() to just before
> __mem_cgroup_clear_mc()?  I find __maybe_unused to be a code smell.

Agreed!
-- 
Michal Hocko
SUSE Labs

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191002075451.GG15624%40dhcp22.suse.cz.
