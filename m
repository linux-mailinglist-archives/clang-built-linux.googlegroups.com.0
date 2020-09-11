Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBL53535AKGQEYH33N5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C7B266299
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 17:54:25 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id o21sf6355905pgj.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 08:54:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599839664; cv=pass;
        d=google.com; s=arc-20160816;
        b=q46nS+D2RrJjB6LqyZBF7eCbG9JMLJeSttaNOVdLsN1fzyeCRsJUg8BmyhUDYrtEbA
         npbenSqbZPlhM7cAeLN+HXRFtNwsvWBX7FPUW71jsI8ZPqpLrUi4J3bJj0laFOJi0TZa
         pYmZsqZ9q8Z/Nhj7MH7fDCIzrtrhZ0Ru1PG8v+CDCVYdOjml/7A1n8XuACOFAovlt0mE
         purJznEiZNpFBNSehrtucs21GvmzlR0HRPa10/AViKHzqmpY8M4dKCgv1BRpg7g6LS9l
         Hlj777OTaXrFHWy4zpHbyUt9Awvqk/kvp/C3hJ5S5xvfLj3tsjmbujSKqiF2BOOqZQZ/
         xl3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Y/8kE8OhYkAqQgt8WR1M2QRCI9i8fZObI29JQu+98dE=;
        b=ZSf0rUkMsZ5GKJgsR6Ptvpi5J8A2g3sXp1tjeHoR4SDONyGwZwONm+2tPf0eOrsoOM
         oPDKgqzUTgE2NViSQzmJXl5Joh+qvOdPzzzHgxvTWK9qMKk5OyKf89yhaSUSjphXpfeJ
         FaoOCNOtZeuLfxMQcPN7rS47d99MoU3rsz1dopPZfQKkIUbtU00J59DKt7PuCfcZthuh
         GMRicukzAEebMz0hsaoUhnd7790wH/HDHDcSo/ReVnhGDUTV+Lpq+ejD5hChjgAojpg0
         A9bbnMZp6KTYsSi+xyM53jx8qXe/I935Dt89WQNK6WPf/CBUCzMIcedm3EbsTeEDzqlc
         KL2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="higVLf/U";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y/8kE8OhYkAqQgt8WR1M2QRCI9i8fZObI29JQu+98dE=;
        b=BlccLHWmADpO2HoVY2gz+L9yjyZhfIlb82AsQyLGrEgNtOj1Ti2t00JjNh699dV9cf
         lk3y3B5ZEbFE+NCTg4dKFze+H4uvQGxHbzOSVK6MctPeXfPyF8YS67r50Y8IUuZlOn9u
         35A/ofZD5Qcfra07C/sqbknvPzzQHY+Ty4Nj3vZDmTYPbUy4nYfg1fTrjhmRUpMjl4lp
         fxP+r33HVvax6IFrV+hX5GE5qQQ/TZpemvV6xIH0cYFVdE43ipuYVA9WPIAiCRkCsAWp
         XSsk2Pn44yQKsyG1AEMCph/fnPcZccsdwPVm7V0XCHz5JfRqVKJKVbgro3cjuUxiCwGr
         JgbA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y/8kE8OhYkAqQgt8WR1M2QRCI9i8fZObI29JQu+98dE=;
        b=fBH0DaJBJamHVjwfy2pDfwsW/6nSOlgRV5/i3ycaKGDmOxQDMe3NhA8bDZAfeZBjaJ
         OS3TxyQbn9scjRLps7vT7SEWN5tAmEqxVoP99w4NmOJm92r6l6UGQSy9ShUVMsWV0As8
         2EgJ7b0nErKZvLHb7Iw94/vmR3Omy4tbRXMP7uazg2FCaf0abDpZ9ZjAzV6azJMmwq9A
         ozM9ogG1iIqOKEoeFZFf3wRDXq4Id5SPJl5j1HYQvYTla+kelXV8dXzBm7yPD9xaY8Nj
         xnZlgBWLWhKdtlbmV1/mNejmPbZF0/IMToeIEe5icvrrTLnWSa7/CYiW5h4joS304LCH
         RBaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y/8kE8OhYkAqQgt8WR1M2QRCI9i8fZObI29JQu+98dE=;
        b=oAAStQ5izv+NuFjrkOmAXII5dJ9YwaSH499NUasC6VuFjsSqkQAT4CJ/HB6K7gyzg1
         2boU40qapB5GZ7lR4dE3EYcx2Rsk+jqKsolDoLK/NG1O20l1BFWgnccW1WHfDANV+W5N
         wiqFKr2khthLNGftaAyYv7jO/wsWEFGD4ivyZyntRRAwodQ9X2jK2AmUEkIbjFmnYHuz
         lQ/XLFShl/A8FzcvZzd2bX5RxOWw/rzxEbLQ3nNoJ8cSqvFkcuiZRHUueg2TT4MeKecc
         lqWrOsJLPWJx9uo0AvNScgLl8lVSYZ72rcRI9Xd8jfWhMsepkYjryHB7TNJgyPgeIJBv
         LRpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532RAP3Ll4nPT/6uvI77DWho4mmH5lapQ6sYZdMrnMVra8C/S8cN
	aGHBZqGpL3wYa+UZSI0VWv4=
X-Google-Smtp-Source: ABdhPJwLPjWT8EhKN/+7ZoGEUr7+uZi3l4htSgAy6P8BEG/XvYQmUR5/re5tPjyus/sIMV93jeX1Rw==
X-Received: by 2002:a17:902:70c9:: with SMTP id l9mr2581252plt.161.1599839663817;
        Fri, 11 Sep 2020 08:54:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f158:: with SMTP id o24ls825805pgk.4.gmail; Fri, 11 Sep
 2020 08:54:23 -0700 (PDT)
X-Received: by 2002:a63:ca4e:: with SMTP id o14mr2139076pgi.213.1599839663081;
        Fri, 11 Sep 2020 08:54:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599839663; cv=none;
        d=google.com; s=arc-20160816;
        b=Z14XIFGLDuO8CXKhZ0DbqtfUl0zOeSItO83p0n5KNgvXQMYrD8iBU48UJdWPraM09S
         vOu/xoP0tsGvCPBHdxCEil7OvU0AQXpCFKWoTPYPjt+PLR0jasVGSr9arXazyL08fAIn
         /tSMHaxDDYSZxuhhjYJwGguFGa7nrXN0K0IUSSJHXxFz7/g6jy3W4ohfRVyhlb2djbKv
         9ZPUk+hu25KtD7T7xs+4Nd/Ibl+X0cFClXQjvKKyzQDge/pxtfoRLstyL8CZyVmCKq0w
         DGzIu9vpH/mQvMROwKqIC9qhahu1Z39sYkfsMXPZX+0k8UgdI93ZLYrh+asSQYQgdAaw
         BytQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lfET8gjdEOQtE+MvQcCRm4Y9jFPpe51Z/Vy6g6mu5vI=;
        b=K0uAelrSfCxxLTlh4T9ur/UF0eRqk8s8JY7ITjjMni+7QPl4MColp6bVIDYBuc0ooQ
         rKFUhj0AcTnItvDIeVMvXTzB64IhjzQ+nXtnehjwcdCkgh7R2CFc82ntbLBenJQ/I+MV
         yZP99kuL2Tqadwk+a9ps5GUaCHFH+TRTvAmiBBY5ChttzmbdpWpL9/lo63QnOFcOF2yr
         b6eCTruxok9Bf2C9LW08aRHj1tFjZchsrhYQHSXJIv5BLWomkOWlv2tnKYn3F6xwis3e
         ZuiNVSbu/7C9Hhj+biLUNyxPW+eKiHAR5GKokwM05f64fYn4uL9eiXz7gQ41ZzdmzEhw
         08/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="higVLf/U";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id b9si150761plx.0.2020.09.11.08.54.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 08:54:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id 16so10318050qkf.4
        for <clang-built-linux@googlegroups.com>; Fri, 11 Sep 2020 08:54:23 -0700 (PDT)
X-Received: by 2002:a37:606:: with SMTP id 6mr2122824qkg.177.1599839662075;
        Fri, 11 Sep 2020 08:54:22 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id n203sm3227052qke.66.2020.09.11.08.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 08:54:21 -0700 (PDT)
Date: Fri, 11 Sep 2020 08:54:19 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [linux-next:master 4238/6654] include/linux/dmaengine.h:1576:
 undefined reference to `dma_request_chan'
Message-ID: <20200911155419.GA3933165@ubuntu-n2-xlarge-x86>
References: <202009101830.GfC9Ewv4%lkp@intel.com>
 <b2bfc310-481e-92c5-9426-74395b24c4be@ti.com>
 <7ccb1302-940c-e731-0d90-24421f6aa735@ti.com>
 <CAHp75VdAAQ+gKdmkU5vzQc6JpoVRN_R9DtfnDHRbxt4MgV4RBA@mail.gmail.com>
 <f99e1c36-d514-1d1c-169c-8144fbf81d25@ti.com>
 <20200911122151.GD77521@vkoul-mobl>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200911122151.GD77521@vkoul-mobl>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="higVLf/U";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Sep 11, 2020 at 05:51:51PM +0530, Vinod Koul wrote:
> On 11-09-20, 14:16, Peter Ujfalusi wrote:
> > 
> > 
> > On 11/09/2020 13.00, Andy Shevchenko wrote:
> > > On Fri, Sep 11, 2020 at 9:49 AM Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:
> > >> On 10/09/2020 14.18, Peter Ujfalusi wrote:
> > >>> On 10/09/2020 13.46, kernel test robot wrote:
> > >>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > >>>> head:   7ce53e3a447bced7b85ed181c4d027e93c062e07
> > >>>> commit: 7547dbd3b198f309aaff54e3528898a8a196faff [4238/6654] dmaengine: Mark dma_request_slave_channel() deprecated
> > >>>> config: arm64-randconfig-r025-20200909 (attached as .config)
> > >>>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0a5dc7effb191eff740e0e7ae7bd8e1f6bdb3ad9)
> > > 
> > > ^^^
> > > 
> > >>>> reproduce (this is a W=1 build):
> > >>>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> 
> see this
> 
> > >>>>         chmod +x ~/bin/make.cross
> > >>>>         # install arm64 cross compiling tool for clang build
> > >>>>         # apt-get install binutils-aarch64-linux-gnu
> > >>>>         git checkout 7547dbd3b198f309aaff54e3528898a8a196faff
> > >>>>         # save the attached .config to linux build tree
> > >>>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> > >>>
> > >>> I'm not sure what is wrong, but can not reproduce it with GCC.
> > >>
> > >> I have tried with clang/llvm (10.0.1) without luck to reproduce.
> > > 
> > > ^^^
> > > 
> > > 12.0.0 != 10.0.1
> > 
> > Yes, I have noticed that.
> > 11.0.0 is at rc2, 12.0.0 is only in master w/o tag.
> > 
> > I _could_ install sys-devel/clang-12.0.0.9999 locally, after all it
> > would go to different slot, but I would rather not.
> 
> This bot has toolchains and you can install them and use to check
> 
> -- 
> ~Vinod
> 

For what it's worth, I can reproduce this failure at that particular
commit and I see a Kconfig warning along with it:

WARNING: unmet direct dependencies detected for DMA_ENGINE
  Depends on [n]: DMADEVICES [=n]
  Selected by [m]:
  - DRM_ZYNQMP_DPSUB [=m] && HAS_IOMEM [=y] && (ARCH_ZYNQMP [=y] || COMPILE_TEST [=n]) && COMMON_CLK [=y] && DRM [=y] && OF [=y]

However, at tip of -next, the config is fine. It appears this is fixed
with the commit that fixes that warning:

https://git.kernel.org/next/linux-next/c/3e8b2403545efd46c6347002e27eae4708205fd4

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200911155419.GA3933165%40ubuntu-n2-xlarge-x86.
