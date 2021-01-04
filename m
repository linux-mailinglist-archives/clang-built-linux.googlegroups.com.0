Return-Path: <clang-built-linux+bncBCALTBOXTMIRBPVOZ37QKGQEG3ST5BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CF22EA008
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Jan 2021 23:31:27 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id z24sf14625186uao.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 14:31:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609799487; cv=pass;
        d=google.com; s=arc-20160816;
        b=eVcNWsWO8sabvYitRUkdpx/4iH5vXRt/XVwqBfmv2Eu6f+87cAF0kGuJMu9cUsOucf
         CX+lZNv6XLzWUpsGdXNfX/eBK/bOOv7RUTZp4gI9ejxZjjKCe2o0KuF5DWshg3PvBgnr
         t9ZAfm93yQAJyCqM5ATEiCqzr6qn7zDgTiniq4Ehph6cEyX9rVCPvj5pbkc2hks/5+iV
         nHUlN2lPUPIxP4Q7HWZtJSB+KljytPbFNx0E++jAmSne0WAsmn/BjVaT6TUedrNlQkMJ
         MigerH8Ti3rJ7+I0CM124ibAQBpU3emtceUGcO6ikuoZQ/VQXS7tusdPOuv4gYVy8eAR
         u71w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kiffDSTdn5au5HSBGGA5r0MXbUXZ3T5tOraKPiQ7d2E=;
        b=nylZctiq8Lsuo5j8Zlqo88PtJKwwFoTv013vyJlCnfRatLHayVUxvg+ns1/CuRxO1j
         gWw4zHRSMkSSrvqLHhjvcnwrIj46tOAFcjhfNpuLYEIKMJHje8405p/r1ToNnputxrdZ
         uCT9GrKV8C9im/dT5dE8FCZW45yNcdTTU3jT+RWlEnsX6BCaL62sxekazka64B9Ob6+Q
         AiksAKx3B6rn19eifxb4IX5AfPbTc/+a7dCXS5kugKm6MazL3WF+man+CzgCxFeqVF84
         oxPzXIDtsdxEziiUZxpJ0qmC01SOIwow6mkn4iV41do1+FMa/+jT4jzBVzHcjXFimpJo
         lrlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=cBxXgA+S;
       spf=pass (google.com: domain of darrick.wong@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=darrick.wong@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kiffDSTdn5au5HSBGGA5r0MXbUXZ3T5tOraKPiQ7d2E=;
        b=s5Z7dELFJcDJxH7PO2FjyOZdaJ/sUrdLSztYUnlo2zQgXKjarlwmfG8O+4qv14qvcW
         ycWAv/3TKPxUEac33y26bh4OlrwOdqXt9vtFYdevlqQkCuh9KAP+aXT98y5Xn/wJLXYb
         +KW+LDgeQwqeHpI3XkhxlpXie5G6OQ3Wkly4nIISDSTtEQ3XV3u4csBgdvaXll0pwWKo
         xq4kt4r8LTaU0n0FklgMkE1AZc6FltmJZ7L5bO/89tYgX/3hhFvVTuk0zkwS6OItWGvk
         G+gfhgWu5f67RzxBgW8f2BMuuHEeC7ilHWoL3qMDo/z6AqX6mVpPDkmjHCC2fv/C1g6F
         YUVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kiffDSTdn5au5HSBGGA5r0MXbUXZ3T5tOraKPiQ7d2E=;
        b=rMKwGN3lOZ7wwQfjl3h3jOaZhD5VO1P6LBgY/Kl9ERP6totU2ynj3QR18ZbDI57dc+
         4TJuH/UvZ3IdpJoLIpUR5nZ1/jYOBYbD5V7zmJiYziemWronnvxHghDy/Xy/PduIcScf
         QEpZvHZC7LJsnwMlHPwBLv/LMAhXKvMkkbkmJ0byKglFLqbUafAFAB7dJrrNB+GMWOz4
         olAQTXz+fNAGdVnICXIqgXsC4iHtyEe04/LawLMLPKhkj1Qbk2dSwWe1yNdOenCqy1u9
         nd5VltJL6+XGaW3p3GCEzJh+mXf/4mGnOcPbbbqBkVnkTPiaS8Fj8q489HUHheORTJnn
         IK5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bdy0S6wDq7MVALeQkj6Kkwa4h84r58kyxkUrD03RdpbmHWqPt
	KcygLY6NJ9FtNb59UPWwYBM=
X-Google-Smtp-Source: ABdhPJwkMyjFirErKzOkC2LLs68CNW8GHmedG6CxOcG8/hYPfva8cgJpSy8LtvmPVidXPCI7x5cAJw==
X-Received: by 2002:ab0:39c8:: with SMTP id g8mr45675013uaw.120.1609799486857;
        Mon, 04 Jan 2021 14:31:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c4ed:: with SMTP id b13ls4084092vkl.0.gmail; Mon, 04 Jan
 2021 14:31:26 -0800 (PST)
X-Received: by 2002:a1f:48c3:: with SMTP id v186mr46373691vka.23.1609799486303;
        Mon, 04 Jan 2021 14:31:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609799486; cv=none;
        d=google.com; s=arc-20160816;
        b=bApFHCe427+oXzDdIIbN30W75nYfWBGOatj8f7iq68erB3HPkmnt9HJGFuQHbq34eB
         TYsdZ82NIDas5uOAz6N26onvKwVMYHpD7kY42cJ5ei7abcIbysv5iAp40ebuwMGZus/Y
         9jE3PDJnv7OOYpaJBALerw0H/TrWSJLXhpCfUjiFBuXlXBXn/+mo7zgSFTkp5xXbMctB
         PYBcEyeXirVjz3vUrmv6tovcoSnrAMW+xuXPMFkxGHQoh9D4x+JYrMFZgBOzKc72qMnT
         dxzuJRrFiAxpE+yB/fn62UJB5kZlGe8NjQZdudjDI7pd3OqovdWeGVMvzLC2tQyih91L
         gVYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bsaWlh7XuhjGN71OfXSYux1OZW+haFLwZ6NkXIwMLi8=;
        b=yFTBAIHVyT8jfe4kQjj/PNElFKFELlWDjJVxjiBdf1EZA+zFxaCwoM2UzzsYdAnMb/
         3+msrycFHW34VO4hSWeoNhR4a5XOXVx33IEhlOEDLfOSIs+/q2CyMJlgjdsoRJVjSVGm
         CbYWMlY9xLcIEh5BKTdsYx5YhJGujhQKW0z5GYe+DH/WDWG9pIdOOI0GCx24lENuH8O1
         hlxN78M2Jjvs0ru0/y4UN5UA0b/ihq6Ibno58arrsnJLV1uz5FfcXfPOmoiiEzgXSASc
         SR9c248+g/HrQBABTLmclRi12fP3Da8fEyTpAumKCaaHzPsQjRQvv78Uhl+ijybz5eEZ
         b3RA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=cBxXgA+S;
       spf=pass (google.com: domain of darrick.wong@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=darrick.wong@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id h123si2975037vkg.0.2021.01.04.14.31.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 14:31:26 -0800 (PST)
Received-SPF: pass (google.com: domain of darrick.wong@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 104MTJs9074199;
	Mon, 4 Jan 2021 22:31:24 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2130.oracle.com with ESMTP id 35tebapj1w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 04 Jan 2021 22:31:24 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 104MLJ4D109830;
	Mon, 4 Jan 2021 22:29:24 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userp3030.oracle.com with ESMTP id 35v2axuksq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 04 Jan 2021 22:29:23 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 104MTMdO001226;
	Mon, 4 Jan 2021 22:29:22 GMT
Received: from localhost (/10.159.152.204)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 04 Jan 2021 14:29:22 -0800
Date: Mon, 4 Jan 2021 14:29:13 -0800
From: "Darrick J. Wong" <darrick.wong@oracle.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
        clang-built-linux@googlegroups.com
Subject: Re: [djwong-xfs:realtime-rmap 245/249] fs/xfs/scrub/repair.c:2202:6:
 warning: variable 'is_free' is uninitialized when used here
Message-ID: <20210104222913.GK38809@magnolia>
References: <202012220357.ypoONHum-lkp@intel.com>
 <20201221221921.GA3388751@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201221221921.GA3388751@ubuntu-m3-large-x86>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9854 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 phishscore=0
 suspectscore=0 spamscore=0 malwarescore=0 adultscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101040133
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9854 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 phishscore=0
 priorityscore=1501 spamscore=0 mlxscore=0 clxscore=1011 bulkscore=0
 lowpriorityscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101040134
X-Original-Sender: darrick.wong@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=cBxXgA+S;
       spf=pass (google.com: domain of darrick.wong@oracle.com designates
 141.146.126.79 as permitted sender) smtp.mailfrom=darrick.wong@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On Mon, Dec 21, 2020 at 03:19:21PM -0700, Nathan Chancellor wrote:
> On Tue, Dec 22, 2020 at 03:22:03AM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/djwong/xfs-linux.git realtime-rmap
> > head:   62eb0024d510607ecb04789e8b4f8c0975efb08b
> > commit: f4188e5ab1984e1b140433a80f223ab4644801af [245/249] xfs: online repair of realtime file bmaps
> > config: x86_64-randconfig-a011-20201217 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/djwong/xfs-linux.git/commit/?id=f4188e5ab1984e1b140433a80f223ab4644801af
> >         git remote add djwong-xfs https://git.kernel.org/pub/scm/linux/kernel/git/djwong/xfs-linux.git
> >         git fetch --no-tags djwong-xfs realtime-rmap
> >         git checkout f4188e5ab1984e1b140433a80f223ab4644801af
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > >> fs/xfs/scrub/repair.c:2202:6: warning: variable 'is_free' is uninitialized when used here [-Wuninitialized]
> >            if (is_free)
> >                ^~~~~~~
> >    fs/xfs/scrub/repair.c:2189:16: note: initialize the variable 'is_free' to silence this warning
> >            bool                    is_free;
> >                                           ^
> >                                            = 0
> >    1 warning generated.
> > 
> > 
> > vim +/is_free +2202 fs/xfs/scrub/repair.c
> > 
> >   2173	
> >   2174	/*
> >   2175	 * Check if any part of this range of rt blocks is free, so that we don't
> >   2176	 * rebuild things with bad records.  Returns -EFSCORRUPTED if bad.
> >   2177	 */
> >   2178	int
> >   2179	xrep_rtext_is_free(
> >   2180		struct xfs_scrub	*sc,
> >   2181		xfs_rtblock_t		rtbno,
> >   2182		xfs_filblks_t		len)
> >   2183	{
> >   2184		struct xfs_mount	*mp = sc->mp;
> >   2185		xfs_rtblock_t		startext;
> >   2186		xfs_rtblock_t		endext;
> >   2187		xfs_rtblock_t		extcount;
> >   2188		uint32_t		mod;
> >   2189		bool			is_free;
> >   2190		int			error;
> >   2191	
> >   2192		/* Convert rt blocks to rt extents. */
> >   2193		startext = div_u64_rem(rtbno, mp->m_sb.sb_rextsize, &mod);
> >   2194		endext = div_u64_rem(rtbno + len - 1, mp->m_sb.sb_rextsize, &mod);
> >   2195	
> >   2196		/* Make sure this isn't free space. */
> >   2197		extcount = endext - startext + 1;
> >   2198		error = xfs_rtalloc_extent_is_free(mp, sc->tp, startext, extcount,
> >   2199				&is_free);
> >   2200		if (error)
> >   2201			return error;
> > > 2202		if (is_free)
> >   2203			return -EFSCORRUPTED;
> >   2204	
> >   2205		return 0;
> >   2206	}
> >   2207	
> > 
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > 
> 
> This appears to be a false positive. From the config:
> 
> # CONFIG_XFS_RT is not set
> 
> which means xfs_rtalloc_extent_is_free evaluates to ENOSYS and we never
> actually make it to that if statement evaluation; however, clang cannot
> see this because it is doing simple static analysis at this stage of the
> pipeline, not seeing that it will never have to use is_free in this
> configuration. A simple reproducer:
> 
> $ cat test.c
> #define func(a) 22
> 
> int main() {
>     int error;
>     _Bool is_free;
> 
>     error = func(&is_free);
>     if (error)
>         return error;
>     if (is_free)
>         return -117;
> 
>     return 0;
> }
> 
> $ clang -Wuninitialized -fsyntax-only test.c
> test.c:10:9: warning: variable 'is_free' is uninitialized when used here [-Wuninitialized]
>     if (is_free)
>         ^~~~~~~
> test.c:5:18: note: initialize the variable 'is_free' to silence this warning
>     _Bool is_free;
>                  ^
>                   = 0
> 1 warning generated.
> 
> Obviously initializing is_free to false will avoid this warning, which
> is probably the simplest fix.

I don't mind making that change (and in fact already did), but uh...
shouldn't clang be analyzing the C source code /after/ the preprocessing
step?  I bet there's a fair amount of #define soup in the kernel that
clang would /love/ to sink its teeth into. ;)

Insofar as one doesn't need teeth for soup.

--D

> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210104222913.GK38809%40magnolia.
