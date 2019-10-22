Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6U7XLWQKGQEHESL5QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 518F2DFD07
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 07:13:32 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id x128sf7135690vkx.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 22:13:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571721211; cv=pass;
        d=google.com; s=arc-20160816;
        b=EBiddc6TOmTv1/SltzYDIJKqGDlxo4H7ePa3GeJdE0GY2xkV1CvpO7yoQAe4CYIKe9
         2hKuXKGOEECj4GrT/ra96KiOY6YMQ1pd9nzhiQqSWk5QtXtGZ/afV5HOeIo0293gZP0l
         B7xGhay3Yjo9qadNFSPcW4+EGjZfFLnyIfMdVIIRf8FhsZ6CWp4/bECh+vjxPpkWO+FE
         E+1LdO+rC65N6mp5RpPsJFW0ZOeat2M+pBtKwvMZF5Ioem2IyZSjaGGsnHaveUVow3dt
         yXz8OwUk9hkitwEsRNhEOA+cOOvFe3Nr4TmHk/YxBIrKJgeb9KFtIHNEEyP/dZIzaL4Y
         BTpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=sO6t53/TTbecYjPBAL9zakLuZP4CVzIpwFYWKuHBNmM=;
        b=0QgYIxK24awI8oFk/yWMpP2RuiVWwpV1Y+V6hM3zVtNRuc1TP3vAd3R13qv46Z+5C/
         gT8mUJjZjhT1V15x1h+7q6ETv6dPu600uRfUOFxc7GvEWdFHXmbQG25Ui5AE0/4dZlxl
         odqISZoo9lsotTkiRPu0FL/dwmH0A3hD3ThnAMvJargKFmWSYhAfDbMKkwHYVB1OHHKu
         lmRth9uaT1IU/IMVQtX20dF/3Q4ZjKBtWPkURpNzlolOrrsGEN8ZSXGxpMxxdAspaohn
         mu96PFJ9Go98XF4QBKm0vYJPjGyP1lfFh4/yVR9xW56/83amU9/ktuheacXUxwtsB1+Q
         7uUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kKcjJd0f;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sO6t53/TTbecYjPBAL9zakLuZP4CVzIpwFYWKuHBNmM=;
        b=RaLob0hGc+TK8ngOZ/soD5dQ+GW/iW5Aa2NlvMdJIWium54LC/m29uurCUzg6badKo
         K+MJg1dcQvSKVZJ95QgKj8pzkxxyrSJFPByxYDpI4pv2Mfg5b7/Po19UZrjxi2BQWvBj
         /L63ICoO0gotiWj8odK3U/87BKh90W0Fciroz6Ce4hzFw7FJNeezsSB/+ZSS482ef/9z
         j5dYlu3tK2b7Cu9+jOxKtXQf4lKU9bDiToRTD5W5A9gekWjsMEiGkdMCXEEjOCpwyiXL
         XCuKQeLvdV8R0QtX1whwIqkoHxUOg16lF9/e3EGDhwUVXVPanL4aEOXzSMlfniRSfhMa
         Rt6A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sO6t53/TTbecYjPBAL9zakLuZP4CVzIpwFYWKuHBNmM=;
        b=NrPgXpENnKGIOmdOwEEZL/MHCiBkX87URi/6NpXw6oz4rDA99VNaKQaYHdydNVEum9
         bDF4P4QHxSarttNfBrKc+hrNeUFrOl7q3+NsktwYF7bPm4Yf6X5jOgtqVi9EmsIi3gXi
         cNkwl5FXRAtSjfSd5eJixD33of7QRo8HdFVstJZjtKPbQgCXVRdBnjbESn/78WXqzWBu
         z3f0PBe7pJuV0dYQ4C0LpYKC5zKMCeU1AZVZfUg0PpTAo3OSJCH7cnF9aEyxikcUr6U+
         UswSnUdk8zqf4ZM/x0igh+PpdHZWnlzHvmNmHNdjQLgWYmrERYmanZWqmi2Ox9vVLtfe
         Ko7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sO6t53/TTbecYjPBAL9zakLuZP4CVzIpwFYWKuHBNmM=;
        b=pmVqy6cFDIOaLu8lYG/rDOnn0Ux+zKitFZRBlnmRKIiAIHL7WObKhNrw8n5lwhiOWH
         b+nf7Fe1jFKT8ltQewTsIgnCDQJiYdAVVweR2y12IGLRttqViaBjPacYB8gikOrFGb61
         K4tdwoV+uZ416dMXBmDVuiMxIZ92UzRLYGfZ/5sAFoug7u9cTA+hKs0W/r6/WFSpx0Ve
         CFy0SQn2meBHtz7S1/SKkBjbkQqcfzNbwZU5YZX/5Kee0MUfetFfQblhT5ZCEXEpvs9E
         2X9VoHBXFxl1ac2E95D0DB6z75w7/I5EzMiV94UMM3Xva/jHW310XVKWrRcsHY/8MCXH
         GNuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVD7qzeiq3gYKfPUqElRggU6o5G3yRF3t5FtaGm0nnxUvOqZOnM
	vXVXQ0AzxHENpirOvhoV4GE=
X-Google-Smtp-Source: APXvYqwKyYB8X4xrok0GSsCBbwOcjwgrCGob7D/NyI5pqiOm+JmwjIMbEeYLa69XHvfFLS+M2KleCA==
X-Received: by 2002:a67:e44d:: with SMTP id n13mr770136vsm.46.1571721211017;
        Mon, 21 Oct 2019 22:13:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f916:: with SMTP id t22ls1532132vsq.12.gmail; Mon, 21
 Oct 2019 22:13:30 -0700 (PDT)
X-Received: by 2002:a67:b903:: with SMTP id q3mr847727vsn.38.1571721210446;
        Mon, 21 Oct 2019 22:13:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571721210; cv=none;
        d=google.com; s=arc-20160816;
        b=fwTmTPYjkBvu7JqthVdu3q7fI0tVPE/fI3UqGv71ccFR9Kyw6Q6OozAc0OHl6HIuhu
         6gs5/pKpZSPpMsm+DHqLxN5QwLHf4q/FqCZwtSdTt5O0FdDI9kVWmdFeBNTOqXiW25d4
         verGZDSRyjE1ob27FG+FZ4uxOWBDkrzzNbOFCsefyHgzEESzWyq1L1Ha30jYT6cnV34G
         8bPG5Z1BEqsTusxTtMUvqJNjghXTw6OoyU4wO5QS6a+U2YgowVSMeieppv62h6MHTbJ/
         cDYVDVd4vZ8pZDkCDysXJ/hWGJ+1Umiaq05Up5ynRgKAYEwWFau8iNAvlHNcuz9nGoP6
         21xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=XiijXXFGBbAwbvq6AFHoNcvYqhiv8gyhMqmb7i/efTw=;
        b=Rq/I1Q1xmzZsT7RXmWEF7vNNgtOEQxx2gbb7hCmtb6/TL31RFiyw47ZKLYM+aSpDxU
         atVPWtLA02lI2JhXccbejttGBlORrRJtLs5K+tMxsSeeJpUuJGtE6iUYzELVKri9TQMH
         slQ/YpXonBXH81Ep3xDa8Xi4NO14r2Utpl5B5boX1m58ALyddWmje5di01pexiBi/mAn
         aOIZ2mfNTpzfRoPLuEYkX6BIe8rJndyM+U/c8Q4srbbpkiteJ4yFmj5Tr8l4VeKDkiRL
         z3YktRx3RcBMceVag2z3Hs9kkfEVjc3P93R1YOda10fwcvXI59+SORCmWOp/g3LxyH8t
         kBUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kKcjJd0f;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id y14si699061uaa.0.2019.10.21.22.13.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2019 22:13:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id m19so13115370otp.1
        for <clang-built-linux@googlegroups.com>; Mon, 21 Oct 2019 22:13:30 -0700 (PDT)
X-Received: by 2002:a9d:7a52:: with SMTP id z18mr1144313otm.234.1571721209607;
        Mon, 21 Oct 2019 22:13:29 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id t18sm563455otm.8.2019.10.21.22.13.28
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 21 Oct 2019 22:13:29 -0700 (PDT)
Date: Mon, 21 Oct 2019 22:13:27 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [djwong-xfs:report-corruption 139/151]
 fs/xfs/xfs_health.c:484:2: warning: variable 'mask' is used uninitialized
 whenever switch default is taken
Message-ID: <20191022051327.GA8683@ubuntu-m2-xlarge-x86>
References: <201910200444.vyszgq2t%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201910200444.vyszgq2t%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kKcjJd0f;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Oct 20, 2019 at 04:52:45AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> CC: "Darrick J. Wong" <darrick.wong@oracle.com>
> TO: "Darrick J. Wong" <darrick.wong@oracle.com>
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/djwong/xfs-linux.git report-corruption
> head:   11bfe2874e3e739889e2b54728988d925760e1a8
> commit: 56d17379d670c5850249f56d475e4ed27d1a5a12 [139/151] xfs: report block map corruption errors to the health tracking system
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project b5088aa9442fb610f452c5a6c93c1964962c4159)
> reproduce:
>         git checkout 56d17379d670c5850249f56d475e4ed27d1a5a12
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> fs/xfs/xfs_health.c:484:2: warning: variable 'mask' is used uninitialized whenever switch default is taken [-Wsometimes-uninitialized]
>            default:
>            ^~~~~~~
>    fs/xfs/xfs_health.c:489:26: note: uninitialized use occurs here
>            xfs_inode_mark_sick(ip, mask);
>                                    ^~~~
>    fs/xfs/xfs_health.c:472:20: note: initialize the variable 'mask' to silence this warning
>            unsigned int            mask;
>                                        ^
>                                         = 0
>    1 warning generated.
> 
> vim +/mask +484 fs/xfs/xfs_health.c
> 
>    465	
>    466	/* Mark a block mapping sick. */
>    467	void
>    468	xfs_bmap_mark_sick(
>    469		struct xfs_inode	*ip,
>    470		int			whichfork)
>    471	{
>    472		unsigned int		mask;
>    473	
>    474		switch (whichfork) {
>    475		case XFS_DATA_FORK:
>    476			mask = XFS_SICK_INO_BMBTD;
>    477			break;
>    478		case XFS_ATTR_FORK:
>    479			mask = XFS_SICK_INO_BMBTA;
>    480			break;
>    481		case XFS_COW_FORK:
>    482			mask = XFS_SICK_INO_BMBTC;
>    483			break;
>  > 484		default:
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

GCC also warned on this:
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org/message/N63EWZJUJ5ARO2RBP43NFLH5MQN2TDNE/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191022051327.GA8683%40ubuntu-m2-xlarge-x86.
