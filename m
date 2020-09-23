Return-Path: <clang-built-linux+bncBCIJL6NQQ4CRBQVMVT5QKGQEKA2JJAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4851D275498
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 11:32:51 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id s8sf8569395wrb.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 02:32:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600853571; cv=pass;
        d=google.com; s=arc-20160816;
        b=YQaIiTNtsE4TseLKNO3bHE0RCFFPbNujpQEpDVga3BHzVauFpC9kesC6k2x5PyFwMm
         nIy4odgnNHT18OwnznWtIo7LV2EN4bUj2LODZXEyoxyT02NikvdsktHnDs3yxPKrngEi
         mJqrTx2Z+Crk2hHI8m9xLuCuNSGn4QAkE1PKKhX2/BXl58KuTLmRatVJI3KHCLCiRw3r
         7OTyrxGeIaPFnEDSEUB4na/lwhtFKSPlo3dMWD3lA9OPjd9et8VwNIRSrgShuRMdiln7
         O+YfuKORHZd51BEJY4KnSjjukuiaXG+6lCG4GoqN0ZD07WVSR06Kaapjz9oM0jZ5tfH0
         y99Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :reply-to:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=pqUzw/kWFRxThTdqXAOYYU9P8tkW+hW9ri+hqmnSDls=;
        b=KySIz6BNQ4XUAW+L8l/cTHbZuXbhK5U+lyCdLk5vBWr/L44O9YtvUZvJocCB0oF0ev
         nXd1FH4tCi8dkOiQBiHqI/GR692tcXi8/KB+qaA0fU72IdeoHVhwqtfved1T+rwCCsKN
         wdmePUXvC/Aw7KXSj4c7B6q/xpaZybdjaMoi0Qv92zkkBx9oBxEeGwRMkOJ09AO2vNXu
         fe3lpV/q+Ju3c5mzfWKGDcqAXaUVR7Lc6OLjvDYcPPioDPOPfB8Lw+Kv5j8OknCkFwgD
         1DuwL4q1FVX0VH9z2Uzm9Wuao+/8mIIlLO1hV7n3W7+ewNNrFjwyJPqIn92Yo3IW/01q
         g+TA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=dsterba@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pqUzw/kWFRxThTdqXAOYYU9P8tkW+hW9ri+hqmnSDls=;
        b=TRWvm+xrfoTt0GLaadNoG9V0BHUxzW7RHxeK0y5JN6bxIbZZBaHwISkJlDzKZI0QC2
         uqUV2KOiW3kR6EHrYxK9Fa7wtQUHKdrdUim5sL7u9gb4vCs76T7ayj7SWnYRCY9tPOVh
         r6KzXh1j686fjK13EuEWrIkIyFqaSx0yt3FS+ICKNnbS+yKlMz3BRUf6PlT0bR6VoMrk
         HCkKHGc6Ddsf3Fazj+41bXTWgKoOtI7iFLDt8jn7pxnW1YSfi1VYysJkkmOLyyRDVQ7F
         7HI/E6g9yEDFiunyYQBBnYes7D4W1ERO3q0TntxzIlXH+3LgguK0g/e2Jtp9vwGftA4m
         2ywQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:mail-followup-to:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pqUzw/kWFRxThTdqXAOYYU9P8tkW+hW9ri+hqmnSDls=;
        b=DlDIR72gPeVxHCmqzKHYgSvMB9TD742tcro8H9r64IQt8ywW9KZShma2o6W9RLeH1h
         9sgagTtIYzSrbLwG9gxge/K8RWr0XxkR3s+VOGNSilNV6zdKgfg57Jdb5poJeyGGi3zr
         49cp2ADiUwXOffaMrEQNUSVtXfsxXX3Mzx+M97/ZAAKv6v4Pm7pCNa27yq6zQrzZhqjN
         7nJLX9MjBDcdsvhbqItXOmfEOuuFVpC25YGkxHjM4UtM9adag+FiQjjrX8BK2eZ6dqGn
         SFemuW/y7kkS4rg2Qke98tdQwXBrY8FmyDtMILzqTyzP3YimyqlbDzMLrsIZxCzcL7k9
         Keqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532w45BFArc/UMrd7+vB0m52YbEboudKsBS5EPObvpd5Ci6xhHIy
	kntnTgyhuAQX2F5q9voNUQk=
X-Google-Smtp-Source: ABdhPJzpv37aW+oCyM6kyty5SqDRlXTj67VaesVdgX7Pe4I+GM9jayXpYJyvrlEt5J0ftTD9fxW9EA==
X-Received: by 2002:adf:ef4f:: with SMTP id c15mr10859905wrp.390.1600853571029;
        Wed, 23 Sep 2020 02:32:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4154:: with SMTP id o81ls3002431wma.0.gmail; Wed, 23 Sep
 2020 02:32:50 -0700 (PDT)
X-Received: by 2002:a7b:c241:: with SMTP id b1mr5415372wmj.98.1600853570136;
        Wed, 23 Sep 2020 02:32:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600853570; cv=none;
        d=google.com; s=arc-20160816;
        b=sKHDra9ZdacCP0AeZKWUMc3EHXqc2WqH1/w5SWnUC1uJZ9XxyeoWK825fYmLLLvLEW
         x76eO4PaZKwCfIyGwbbtC7ckOSrX+CWQAgUXe++ueaLXWy1UO8GX/fWDUrlMSBOuX0gQ
         Slzraw6gUYQ3ArxIilJtdARippldJvShDA9GpFSOW2knOOc7BkT6D5IF0xl4T0/lDjWk
         gUMl30b05CyAPdqVCX9/EE28ZDWG1zdO5kvvjv0UWnbguhl3m1ICRWAD2yjFcCLLP1K8
         n+pL98SEDyYp0HUWiF9C3TpeG9zA89iG74uNDiCiGFXLFK34tN43YUkWDCUKlb/Qx+Bb
         3pjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:reply-to:message-id:subject:cc:to:from:date;
        bh=VYGFpQf068NWXkyeVwQM5ZXl46nSMieblqtiOv+cvoQ=;
        b=qhrNxfvMxAI3DLmv99SAF3zQiKpnzlgNCUt1m3yU5GZumCkPRKhJSFxrj4IicpOZ9b
         2qAYpcbUSNEBjusHRIe/QKgEDfvFfU6w+YR1FuMhLDCRH2ngfqF1bSVd4Jmt9j29wpgt
         AXhBPcnsiH9r2B3+hxzRUpWgF6GT45T0GMdjCB2ohiuFY9qPb+bubRZkV7PsEvKKpCg9
         eNKrHLw2NZp9nXQgvC5CrAAl+b+KiuvJPUNyIMEPteA5kiBkQYVeiHwWYfOPaZmUonsc
         C4Fe2LcqygKFUHvofv30dxzm5Ya+n7vbRSLofIPy09Wo2ftm35J/7CZ0UfjvpAebMmem
         rMRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=dsterba@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id h2si176727wml.4.2020.09.23.02.32.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Sep 2020 02:32:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 03928AF2C;
	Wed, 23 Sep 2020 09:33:27 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
	id ED70ADA6E3; Wed, 23 Sep 2020 11:31:33 +0200 (CEST)
Date: Wed, 23 Sep 2020 11:31:33 +0200
From: David Sterba <dsterba@suse.cz>
To: kernel test robot <lkp@intel.com>
Cc: Qu Wenruo <wqu@suse.com>, linux-btrfs@vger.kernel.org,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Martin Steigerwald <martin@lichtvoll.de>
Subject: Re: [PATCH] btrfs: fix false alert caused by legacy btrfs root item
Message-ID: <20200923093133.GJ6756@twin.jikos.cz>
Reply-To: dsterba@suse.cz
Mail-Followup-To: dsterba@suse.cz, kernel test robot <lkp@intel.com>,
	Qu Wenruo <wqu@suse.com>, linux-btrfs@vger.kernel.org,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Martin Steigerwald <martin@lichtvoll.de>
References: <20200922023701.32654-1-wqu@suse.com>
 <202009231428.5CFBSt9U%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202009231428.5CFBSt9U%lkp@intel.com>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Original-Sender: dsterba@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=dsterba@suse.cz
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

On Wed, Sep 23, 2020 at 02:23:18PM +0800, kernel test robot wrote:
> Hi Qu,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on kdave/for-next]
> [also build test ERROR on v5.9-rc6 next-20200922]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Qu-Wenruo/btrfs-fix-false-alert-caused-by-legacy-btrfs-root-item/20200922-103827
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux.git for-next
> config: x86_64-randconfig-a014-20200920 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 6a6b06f5262bb96523eceef4a42fe8e60ae2a630)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from <built-in>:1:
> >> ./usr/include/linux/btrfs_tree.h:651:19: error: unknown type name 'size_t'
>    static __inline__ size_t btrfs_legacy_root_item_size(void)
>                      ^

u32 should be fine here, we use it for all the other item helpers.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200923093133.GJ6756%40twin.jikos.cz.
