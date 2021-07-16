Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBB4J3SDQMGQEX2X3WCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D83283CFFFB
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 19:14:48 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id c5-20020a0562141465b02902e2f9404330sf19880984qvy.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 10:14:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626801288; cv=pass;
        d=google.com; s=arc-20160816;
        b=PJ538Xn2/QZ8LYkIuqNq0BlMu9Qofft8hwKOFaSkohIKkMRq/MaRwyCLn5KG4j22TJ
         XjlqIsDFqDgCUfy7OFVkpAU1shTT1INqQ4F+I6h3vLD8lSC2XQ0zf65s2XOH0pB0z0O+
         6S+rTdDIwtZdpDCJSTz6XqccZ87o632jUDSQVRbT+qmiynW8kxVwR28tMxw1z2yO0SXe
         MNWDX9ZP99sySBqKW09L6rrOkFwJWA3RjjQjvrdgBWaKZzI7xjUHTKbukZN2tjLDJm67
         /kLZGMi65glP81X7S0GUg9rQ0kAm6/xtJo0cJyAXXi1Q36gOT2hlNK5zN1cfm7NVvcgN
         BI+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=VUsEVjY3UYvDoKkBtDXsoYLw1og+D/e23w6I0q5rsjo=;
        b=jCJj1EOSgrdJcEpuHqZbtGGWzoP58BKct3dfMw5R/bxjqBol0mtSNxIFqKk71r4IAm
         gXsMgu1ayfnGBG+cDcDr4sul47zkGoQp/x/5V4sdQpAK6Yb2TX8PDumyCn+dFqs+POhX
         1nD1xWZEoPe6Wt83hF+V4QHRO+gMQI5y8eBgV0KHEOyiFU6yv0PrzNIWxt42OVhkk4ny
         uTBDHWzv0LYkG9x3W4fo+KWCkbr2DbylAAu1+k9IhRyOqFkJ4/XyTOTUlj/Q3tLiK7J5
         paLrIxu+7BDhnOZV+G7Gwyphdwrm6mv5JqvwtXmwOsL7ClcnkYykle67feTj8kNXc3S0
         jJtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning andy.shevchenko@gmail.com does not designate 134.134.136.65 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VUsEVjY3UYvDoKkBtDXsoYLw1og+D/e23w6I0q5rsjo=;
        b=qqapKchmSzhHdmqFPRfJpGO+gVkQ1V4CYzr6TPB2DQj8zJqmdG6zBfxyN/aqxXEdLI
         QYqN3YWxdSkkXP0Ix49s4NcieJVHJX6jyTvZmwkDvJv666tWPpx9BBYyNjlGItXtjIjk
         y3z8TM9NUFGMNxe6+6QLYak0acv6W62zRWOdmRDEkJWSkrl7xPDrh6ecq7cy/WcShDHk
         ToGEitRKsTktlaDQd0hl03BFtwq5iH/DLkQMsrClMF8nBLaQbZZHkkkThHGnp53FTe7Q
         TvzEI1S/u7STxuyP5Ho74F7eUIR+qQybw7O2PVv3Wbp+U0/5v9aWYSkdh2ixDE+mYFwK
         HxKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VUsEVjY3UYvDoKkBtDXsoYLw1og+D/e23w6I0q5rsjo=;
        b=Aw271ryTW3BrJEwb8yPE5wgI6Hr5vAZygXFs+jwt2al/GpkdFcLaMZmUrxG/xl/jd5
         DXAHa0GZG3GAHwTpVJaHs5+EaNtyhFddRYDUU5JiouIgdcgB7CqoXQyqri15rf743XVw
         OX0wj7BusQVJkIQiwdoPrCBciWu9rlUZtoMNPvx3UiTq79+Begse8+Ww7TTk+cBfGTet
         E/3bqG9YZXLyi+OEtIntkeF8IxdMMJY2YVxDjyK4/3uleISMSeNU9NMbKRDHFEw3WGlE
         eTOJ+YsnN7yGgD+wwftdbn4KPXQSBe7ThO7lEJm15H9KQcg6Cw9FIIT9N5uSkOfgAvl8
         DhFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+S44c0b9BWR+JvM3AaxAXd4VEC2YFP4bgNVIWKrVUSyzQywIq
	AVuYwF5pcqTawVU41HoIr5A=
X-Google-Smtp-Source: ABdhPJySk8kC1ltESITqtYCxrV0AudQWid6j7xoJRIx/KCy7KzwpG+BDtJptlo8ueEm7dN5uqyTlIg==
X-Received: by 2002:a37:ac14:: with SMTP id e20mr30338247qkm.362.1626801287776;
        Tue, 20 Jul 2021 10:14:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1305:: with SMTP id o5ls8545433qkj.11.gmail; Tue,
 20 Jul 2021 10:14:47 -0700 (PDT)
X-Received: by 2002:a05:620a:12c8:: with SMTP id e8mr14456894qkl.142.1626801287510;
        Tue, 20 Jul 2021 10:14:47 -0700 (PDT)
Received: by 2002:a05:620a:24cf:b029:3b8:f4e9:368c with SMTP id af79cd13be357-3b8f4e9399dms85a;
        Fri, 16 Jul 2021 05:13:37 -0700 (PDT)
X-Received: by 2002:a25:e681:: with SMTP id d123mr11920331ybh.472.1626437617671;
        Fri, 16 Jul 2021 05:13:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626437617; cv=none;
        d=google.com; s=arc-20160816;
        b=FfNUpB+kjxvIC/l8mSrbOTB1qNavk6N0eQtbFJgLcjrlL/a6sinzgzpobqItLXwvKG
         AK0Ee7AhikHPgweTchkKKMZoAhMAinWarhM+Fcnr8bKNupR6teSKdSai0W/wnzxpYCxG
         Cbtl+WmK0LDdrIICPUj8GEQSGgJtFcsjzNJS5AJIPy5UFShhu5ZxQ9lzAqCZdJcLEJGN
         LK/AN8yaVJt0MM9wupKmfgJ039bcwhMu2Rr+CmESBezywbj2RO8RNe6YK3ogLSrUlU24
         G9LZ2eGrDzBYUX5riKqjhi3U+BwCnzWUMdxc7XY3AsGG9ZZ1f1siSwHRlQ0oZDFmWSz8
         Ww6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date;
        bh=u4v41GoLZk3LbFuOakdr68NrY8yJ+iPApliGGmS4v2I=;
        b=ItLSeVolbVxXuw6w0ZOxqMsmhhI7st1YdlfxkB7GEft30FivcVblsRlwfu0ueMafpz
         SRBrw3VlQ9Y1ztl1HAFg5+yR6Sy33IUUI8tA3ONatfJGpPMyGjUDVoSp4GeK41mdma7r
         yIIlfSS3WDcNoxyR/pwerDjNW5OtLy8SHOKD3CNIDCdl5e4/8E70txOjGknzrO0jnCo2
         6LcVOCKumkR6gZhrqMZHsbMFHvY0dy8dzx5HiHiPqsznGFOiSqHyzbiu6EV+JBKxcl+o
         a7V6bxTjw3hrqH7LwAcVdsa08zGdekEGQVBsH0WP9GkXuRtkOy9KThL6HjRlZvLlXc+b
         smoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning andy.shevchenko@gmail.com does not designate 134.134.136.65 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id o187si924672ybo.0.2021.07.16.05.13.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Jul 2021 05:13:37 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning andy.shevchenko@gmail.com does not designate 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-IronPort-AV: E=McAfee;i="6200,9189,10046"; a="210770219"
X-IronPort-AV: E=Sophos;i="5.84,244,1620716400"; 
   d="scan'208";a="210770219"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jul 2021 05:12:20 -0700
X-IronPort-AV: E=Sophos;i="5.84,244,1620716400"; 
   d="scan'208";a="631056040"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jul 2021 05:12:18 -0700
Received: from andy by smile with local (Exim 4.94.2)
	(envelope-from <andy.shevchenko@gmail.com>)
	id 1m4MhP-00EDdj-Lk; Fri, 16 Jul 2021 15:12:11 +0300
Date: Fri, 16 Jul 2021 15:12:11 +0300
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: kernel test robot <lkp@intel.com>,
	Nick Desaulniers <nick.desaulniers@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild-all@lists.01.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Petr Mladek <pmladek@suse.com>
Subject: Re: drivers/media/v4l2-core/v4l2-ioctl.c:303:28: warning: taking
 address of packed member 'pixelformat' of class or structure
 'v4l2_pix_format_mplane' may result in an unaligned pointer value
Message-ID: <YPF3m01nYlt3On7V@smile.fi.intel.com>
References: <202107150148.RpWnKapX-lkp@intel.com>
 <CAHp75Vfu1rhUV+SOq2ikFWd2G6x9j3BT6OLPhPcf8VZE5Umeqw@mail.gmail.com>
 <20210716114105.GF3@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210716114105.GF3@paasikivi.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=softfail
 (google.com: domain of transitioning andy.shevchenko@gmail.com does not
 designate 134.134.136.65 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Fri, Jul 16, 2021 at 02:41:05PM +0300, Sakari Ailus wrote:
> On Wed, Jul 14, 2021 at 10:45:26PM +0300, Andy Shevchenko wrote:
> > > >> drivers/media/v4l2-core/v4l2-ioctl.c:347:37: warning: taking address of packed member 'pixelformat' of class or structure 'v4l2_sdr_format' may result in an unaligned pointer value [-Waddress-of-packed-member]
> > 
> > Why is it packed in the first place? Is it used on unaligned addresses
> > in other structures? But even so, why should it matter?
> 
> It's packed since we wanted to avoid having holes in the structs. There are
> other ways to do that but it's ABI dependent and is prone to human errors,
> too.

What holes can you think about in the above mention structure?

In case if you are going to extend it you will need anyway changes somewhere
else as well.

-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YPF3m01nYlt3On7V%40smile.fi.intel.com.
