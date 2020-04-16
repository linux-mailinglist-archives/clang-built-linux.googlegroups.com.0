Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIEK4D2AKGQEDMQSFDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id E11451AB967
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 09:11:29 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id h9sf17770756qkm.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 00:11:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587021088; cv=pass;
        d=google.com; s=arc-20160816;
        b=h1jZltIkXgGbPlQUNM3+55PubITh80Sq4PbdRECf2ZnBNSZa5Vdo5oBJPCRlMhHYVN
         ZRWYakOlG5xUg4wjnk+HEEG9SKDbhMlKIJwjAsBRCPxTlF0V5716sBiF7cE1xD6Zc9Bp
         Igriv4tEKF3enidWpt+sOEhQBTVXuB3oxg61FLiDcvX2hVJSYt6GX51UFCmGupMb9T4f
         ulZu2A0BSSRD5+GHziODJtD3ZGgfdHPsNwqTriy545NEtj2R98h4zynGqKtfp6iSULq6
         zH5c5iX7MoYWdL5km5pPN2z1LvtAhtrTwpyj4SzoaaiF7YOqbY+jof1GDqcHS5jZzZGc
         kSNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=22GPbcXnN+rHD/dy7IcuPRpFp4NdU4DjHizYz/AA2tU=;
        b=y8AOF1enn+hwfx/uCvQWae4unAXwL9Jcyd3ZeEDUWFn5J0uu9bg80ndVJp10xcCZND
         Ek29dYFrSn+TGlNAj5nmUJfzn++YRYCoNCirk6gJDnsd0YctziA4maEAKe9Ffthoudty
         xhLjurcK3XPQueppsHLAuuCMk4NUiQuxDF+HUrDBWoA2nN668rM5VFeO6vbK+z4rw0X4
         vxtw/FSI4GIdE0ooNTwATuLhy+75Ed7tTr3Sl3FVhehTa0vcYxFjLLyzhtIVitwBfBbN
         hMVxzKkPeMCUbzyLCHPOXIZwlYJ1CKM72EYMGZeCq/GfdgNMs4yf14tgdPJoJG2lLZji
         /+jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hf88zcBv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=22GPbcXnN+rHD/dy7IcuPRpFp4NdU4DjHizYz/AA2tU=;
        b=JNTs3y4uyQxCxUDXRMY2tYU3HBoWHS6pOcfSKI378Fjd1AqicaaV1IqO+tEVcw/duZ
         fhx907axro0r+eAizqj682YvrktiYE8+PhRWt6cEpZWn2XqrVGfKwLBq5zqVWwl+pHKi
         B8WdTEzRS09TSrXfkL3ptq4S+PmFDEaH0nIiInF0wybv5aoYW6FrKrkyOg2uBl9CgClC
         fC+gJbVILw+XEoprq7WkakJBYIEpvc+O/WOHxAOB2ptAA7554lf+vyAoPhCpbW8ExKwK
         p/5LVndsSyt8Wwuizj7p1th0eqXUT9y1aZdxrSqUFd8x0Sa+g7tabAu7AGVC+gKQ+gNe
         t+MQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=22GPbcXnN+rHD/dy7IcuPRpFp4NdU4DjHizYz/AA2tU=;
        b=gxN+1fQt+NN3GiSZmUA6rz2P3uOdVKatx5egBLOWUGTJhvMZypoLyhD1L+/gt/Hld6
         BusaC9t3fgU+Z8QIgNB4XaV7GOMcTGRJO3FSRL3jlYZm3+ozyOu6fd0uhZBFLtCfLD6Q
         pLTH6iYj++6c2UFQ1IridmUbvCsqtG9to4n1xSpX7B3Jax4Hc1I3wvN8QWHjUKTbP5Zs
         qFNk7mJoGRuNls7ml4BpBStcyYSA/QMCSmkoLB4shGrahAW8qWxmFskd64dCkzHHqryS
         OUYMRA5mXTMrIrBDK1WIetBBYNXHFGwTGR84StyP1MkJFKnF5kem04pRHi9rOyvMhf1T
         SRpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=22GPbcXnN+rHD/dy7IcuPRpFp4NdU4DjHizYz/AA2tU=;
        b=bbHXNcwqLF79XjwtgDL7ReslirxfbTzr1wOYVcEVPajFIO3QM5wocdkuEDLqLsQFKN
         iKt7sksU8Z0v6sVLVeV+etaNQTYmfPTs8FIVRa7NS785fjngAOyBP3yLApB/zmWsffqH
         pSDcUT1kcbJZcIFdUYGpTYfAaEGIFamFodkVeSDCDlopjHNtlhpEhY22bRVFmUi4wIbz
         m4ulD3iH6OPdo4/688DRSo3I1C1hyHHAxlucHgXPCIXlCemi+xKIUeeJv6M8B9Zuh3Xc
         OaaSG/L/JCXM0+noWieu8KuYf8fydf9uuiKPY8qEhCP0GBMPhaqz9Yeobyc5OvXRkTYe
         s5kw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua/v7xAeAnsz4gy+ovGncYyiw5nzEbf7hDIS1vje1ap+8zs+hyv
	ntgWyjCbI4cvAtoMf0qzrrU=
X-Google-Smtp-Source: APiQypJCML4qJcUvawArKq+rO9TH9dYN9VPv2dgbi0d/9D9102TZtCxqkCFs+Rh/cRlJztU+ljIJ+w==
X-Received: by 2002:a37:a046:: with SMTP id j67mr23249620qke.286.1587021088388;
        Thu, 16 Apr 2020 00:11:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9e17:: with SMTP id h23ls6442584qke.7.gmail; Thu, 16 Apr
 2020 00:11:28 -0700 (PDT)
X-Received: by 2002:a05:620a:1232:: with SMTP id v18mr2838162qkj.429.1587021088073;
        Thu, 16 Apr 2020 00:11:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587021088; cv=none;
        d=google.com; s=arc-20160816;
        b=pL9djdkEwUncfCiq2efMufJ+In4/l2rnOUR2H1RuV7M5vVH7MpZowU/+Al74tqMc0k
         CkWHyeQBVLeoicjWdak5N1N3T0Zhu4z99KZeSB1OaCuYLv6l5W8zSq4j6lflOJAD/UkY
         TVFps/0TmoD4GJrIFutLLJzJ3K+m0xOZ3DZBEa84b/80g6pUpSL7ZMUyUdjDQy3ztgKO
         6sIFFxbC5HU9pKKUcR9RPYaAa54OvGKTnDy0QgcaNSLWCWgTsN4O6mbQWOvwhpIMfPbA
         N1VxUtrH0iynLCuSMvcTRz/qQW3U9LiWn3JfjLkmqqMHQu+XtpOLs60T0z/882sTiNSv
         PpkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=u5XVmjeleYB4CIixMMJ956rWByedQOwVbLgs3LYRM9M=;
        b=fKPS4LjO7t/JSPttBflulCmHLJP33PS4uJhA6Juwiwi5HBqjAOzdyVdW2aTCBMmW61
         kNK3YbEaVeknTbNrPjTZjmMDIurVFvVtRd4yYWHeoOkJ90v18e3wvhLllKdJHQjqrgSD
         Ag5/YcV+OCrneD6qpAAJbgmL52b+RkAl5Ub0zs8JQ02EMPGR+tKGV90Vz0doNXu7/h6M
         68MYuv1+oT/OLzFomOKyAMjmrLEZdEw66KojJk4qdUo0HnqyuJdP7Jx3tWh6vMFVydb2
         I9Hr2r5Yet5dvNksyQp7I6b6lx3GuTR9LPxB+9qc0ooIKFMnk3jQtXUj+0Nr3OyfgHJD
         WMAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hf88zcBv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id a3si641490qkb.3.2020.04.16.00.11.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 00:11:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id t199so12418546oif.7
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 00:11:28 -0700 (PDT)
X-Received: by 2002:a54:4716:: with SMTP id k22mr1966809oik.131.1587021087469;
        Thu, 16 Apr 2020 00:11:27 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id j21sm6830002otk.54.2020.04.16.00.11.26
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 16 Apr 2020 00:11:27 -0700 (PDT)
Date: Thu, 16 Apr 2020 00:11:25 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Philip Li <philip.li@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	kbuild test robot <lkp@intel.com>, Dirk Mueller <dmueller@suse.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	David Gibson <david@gibson.dropbear.id.au>,
	Rob Herring <robh@kernel.org>
Subject: Re: [linux-stable-rc:linux-4.19.y 9753/9999] clang-11: error: unable
 to execute command: Segmentation fault
Message-ID: <20200416071125.GA9046@ubuntu-s3-xlarge-x86>
References: <202004161215.yWleVNqS%lkp@intel.com>
 <20200416070249.GA372946@kroah.com>
 <20200416070726.GA22887@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200416070726.GA22887@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Hf88zcBv;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Apr 16, 2020 at 03:07:26PM +0800, Philip Li wrote:
> On Thu, Apr 16, 2020 at 09:02:49AM +0200, Greg Kroah-Hartman wrote:
> > On Thu, Apr 16, 2020 at 12:17:18PM +0800, kbuild test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
> > > head:   53a9f76066d0832721801cd2fe2431facf1b8cab
> > > commit: 621f2ded601546119fabccd1651b1ae29d26cd38 [9753/9999] scripts/dtc: Remove redundant YYLOC global declaration
> > > config: powerpc-allyesconfig (attached as .config)
> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project bee6c234ed28ae7349cb83afa322dfd8394590ee)
> > > reproduce:
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install powerpc cross compiling tool for clang build
> > >         # apt-get install binutils-powerpc-linux-gnu
> > >         git checkout 621f2ded601546119fabccd1651b1ae29d26cd38
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 
> > > 
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > > 
> > > All errors (new ones prefixed by >>):
> > > 
> > >    PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace, preprocessed source, and associated run script.
> > 
> > Why are you reporting a clang bug report to the kernel developers?  :)
> sorry for the noise, this line was wrongly interpreted as error info, and
> start to bisect it. We will blacklist this, and report to clang side if
> it is a valid issue.

It is, I've reduced it down and reported it upstream:

https://github.com/ClangBuiltLinux/linux/issues/995

https://bugs.llvm.org/show_bug.cgi?id=45568

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200416071125.GA9046%40ubuntu-s3-xlarge-x86.
