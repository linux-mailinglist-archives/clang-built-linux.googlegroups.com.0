Return-Path: <clang-built-linux+bncBCALTBOXTMIRBL7A43WQKGQEAK6BJ7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F2CE9F6C
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 16:45:52 +0100 (CET)
Received: by mail-vs1-xe3d.google.com with SMTP id v72sf377835vsv.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 08:45:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572450351; cv=pass;
        d=google.com; s=arc-20160816;
        b=n6CHnwhavEJi19TP2kq78WrG9ip2P6gOqlCyYhwwZ307KrLbkYbpYAZnAT97QBf88J
         8zNznoDmOGOXJIZxVBaX63CdItqcafvc5J0ykNvv2cAu48rHz+/0ttBSqVu1RWNEYL72
         lKuLT4XX6wvk9B7jNBZGLwV2Rt82JSuG+N8nsQa7jrrPSpl0OnF9opURG0fBoHsFCTXy
         P8Md2fs7/moGgPjWyIJ9W6o1lImtRg5tx9yP/uEBcb7MkFAl6ub8gaux6Z6PJ0wnceKI
         JmZxOtohd97Oag9hfmpuwMMAda3wka3w8GGxIqF6ZVemAzViL9EcO/O8q6DWjETxr6EE
         9C9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=dkE+5QuuE1QWj+6yripA8ff6w7haNG5KjrIO0vtSzlE=;
        b=sjxgSOv0QqgwNdtPf9FrF+0iPz4YHefevz9NsNmF2p6QWSum61ZmM7bjLvjrbifmlB
         O/Vk/+T7hpWvvAbr8vu0Q78mElrBdbboj6U7ftgn4mQXLZU1hqRJOdCRgstp+PHBEG81
         YFhSypWROU7w9sJ/0xDpEHQ/FQPpcEQkKBedW4P1LdBvA1HH7OCCC7XGly+mkBp5tHgB
         A/lrxMUdoA8iwEL+6AkyT0wS5ZySlQpojIE/ayiT2xPZ8Aho+UvmnLGM8MX0ejh6l3OG
         d6gaYP6nDtn0KyjZFPoiqNDRCZbF+bW+ezBrUbA3ZUDh6PNug+CTNRk6NW3e52sWzCTy
         xMSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=Nf3CxzQX;
       spf=pass (google.com: domain of darrick.wong@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=darrick.wong@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dkE+5QuuE1QWj+6yripA8ff6w7haNG5KjrIO0vtSzlE=;
        b=SCOBovyB/Vom1NKllHhkO4ljf+yG0p8NDbnVZL5OmbKedB+lIDk5qChxezx0dzvp1z
         x08wmj0bHwLoEnTalmxVKYcbdsoweFBNUFVo7nvJKdbo0FI+fBEbaxdogmdXtkIq+hll
         B31r74hoA3UW9bIKOJqh3vmqsCCkv6ZNs/W1aVFTVJB+w/yQmvrmskKKi5NuQZhZQOPh
         wC2+KaGKvk7QSaTtc3aLZBpDcBQPX7oy96xsbmPMdiQVSDxIQr2MrWhBTiccjzEA1gVC
         vxp9kG5HQ8JfnT8vYEgMH72cvX3AUpX538cnhZljGICu82rXfCaC5mtVWIRL/54RYJc0
         nBGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dkE+5QuuE1QWj+6yripA8ff6w7haNG5KjrIO0vtSzlE=;
        b=ZiNYTSnnHOKQL0/zXnZb1GTJ1cUEFZ3Akq8zqyrfJch9WTpNhWyrjczaRJwJMeN8dD
         bC5WPMyvPZkWm3gd0sMoazpO2/TqyWEF1RiMn6VrN7wqP2H/Nj9R5gN7dFDMU0GRsNUX
         WBwNdoru2vGk6dM8wsUP+ICWMWBNEk4i2BrPQ7nWgZyn1Tvgc5O4rVjJOW1DueBDuobZ
         DCGL07gJw4abn2OT0KWmuYBVRtqnahruBWtPEE0edyz3/NAdcdwIXxUedSQVry1JR5wM
         dyvnN5ixExJkysa7C6YBobgWznK5C5yZ1MA650yGFucip/t8Asu6oZ59W956fkIsReX8
         UxkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXYT0+36RB8oA8YOoVZ6LUShUY25zq9E2WKIWRGKZuRFGz4JyQS
	EZCuYaevGGbUQH2XGuuZ2hk=
X-Google-Smtp-Source: APXvYqxISNoHkDdPTNkA227cIr7Yw6KHlA8KQJmi+kT4K1ud7eS9qoTCQBhOkzm9HaCDTnMKcP4Fng==
X-Received: by 2002:a67:ef0c:: with SMTP id j12mr35870vsr.201.1572450351775;
        Wed, 30 Oct 2019 08:45:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:604e:: with SMTP id o14ls316896ual.14.gmail; Wed, 30 Oct
 2019 08:45:51 -0700 (PDT)
X-Received: by 2002:a9f:350f:: with SMTP id o15mr152236uao.123.1572450351316;
        Wed, 30 Oct 2019 08:45:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572450351; cv=none;
        d=google.com; s=arc-20160816;
        b=b8K7JsA12I4i3RQYeIYWhLIRBpW3s/jwFYMI1UMkVVPmqJG+e1BTMIGrjoVSSMYXJL
         S7mSnr2g+fXP/TJnK3p2qr25858FLkTi2jCi/nb8zJOwkRu6kq+C6DA+00eP9ZcEVS0A
         00bYSxD+JwPplEn5p7l8QC7ESxDpHmSYbM7L4y9AaIqJPVAazOBS3VeWPjUcnceVGwrj
         4jAZlGLE0RPg1r6x/rYcDS1yuUrHHds6tuniPBIb+4rMFBfhR8xD16R9mZFVNASggzh+
         uZ0A7nhHXTZHFeSGuLmV5XSo8ObZRBcgf3IS5WIggm0N63NppkSLvTb7mhQcXPwNYnNb
         ht5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=HMUMvR5rSGpx9tf5PjrzHfWQ6zOaZmBBpl12ivMHr/0=;
        b=b2sFfMPE8i9jxf5fviVReeXkCsINsAm1tqFesB5jzMyHIihpKBnL/pYxGNbrtrKkJS
         5zqVXNo+9h8TeOteNCv+1QYudsggtlKr4yw+i7uGEs7paQsq80RW6IyripOTbljfv3CZ
         S9s1leqyZGrKTTCAwYlDJU3PZenyr7I4+uRYZj1Y7I09nXfLDveLxytRo5xQE41jIhd1
         zoox5Wjg68GenjJt2ny7yUddJ4ZC5PkjxBfIiuzycJNiKA6MiWJHQ4kQQM9biM02YX9q
         3YXj/NOrZO975CHvZzk0Y5fWEP8qnWw11Zs2G0BmnBhmhuwxbfOeVkRv5HxLBMRqi684
         vUPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=Nf3CxzQX;
       spf=pass (google.com: domain of darrick.wong@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=darrick.wong@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id y8si63512vsg.2.2019.10.30.08.45.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 08:45:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of darrick.wong@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9UFaKMv034612;
	Wed, 30 Oct 2019 15:45:48 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by aserp2120.oracle.com with ESMTP id 2vxwhfd7uy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 30 Oct 2019 15:45:47 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9UFeRL9081736;
	Wed, 30 Oct 2019 15:45:47 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3030.oracle.com with ESMTP id 2vxwja6k54-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 30 Oct 2019 15:45:47 +0000
Received: from abhmp0023.oracle.com (abhmp0023.oracle.com [141.146.116.29])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9UFjifK002165;
	Wed, 30 Oct 2019 15:45:45 GMT
Received: from localhost (/67.169.218.210)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 30 Oct 2019 15:45:44 +0000
Date: Wed, 30 Oct 2019 08:45:43 -0700
From: "Darrick J. Wong" <darrick.wong@oracle.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Ian Kent <raven@themaw.net>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, kbuild test robot <lkp@intel.com>,
        xfs <linux-xfs@vger.kernel.org>
Subject: Re: [djwong-xfs:mount-api-crash 91/104] fs/xfs/xfs_message.c:23:40:
 warning: address of array 'mp->m_super->s_id' will always evaluate to 'true'
Message-ID: <20191030154543.GF15221@magnolia>
References: <201910291437.fsxNAnIM%lkp@intel.com>
 <20191030033925.GA14630@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191030033925.GA14630@ubuntu-m2-xlarge-x86>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9425 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910300145
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9425 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910300144
X-Original-Sender: darrick.wong@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=Nf3CxzQX;
       spf=pass (google.com: domain of darrick.wong@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=darrick.wong@oracle.com;
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

On Tue, Oct 29, 2019 at 08:39:25PM -0700, Nathan Chancellor wrote:
> On Tue, Oct 29, 2019 at 02:45:40PM +0800, kbuild test robot wrote:
> > CC: kbuild-all@lists.01.org
> > CC: "Darrick J. Wong" <darrick.wong@oracle.com>
> > TO: Ian Kent <raven@themaw.net>
> > CC: "Darrick J. Wong" <darrick.wong@oracle.com>
> > CC: Christoph Hellwig <hch@lst.de>

FYI, It's customary to cc the patch author [and the xfs list]...

> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/djwong/xfs-linux.git mount-api-crash
> > head:   e35c37b1b9987c8d87d91dbeca6c24aade2a3390
> > commit: a5a36409da3a608c815b38b0ff2eb5bcfc1adec6 [91/104] xfs: use super s_id instead of struct xfs_mount
> > config: x86_64-rhel-7.6 (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 7cd595df96d5929488063d8ff5cc3b5d800386da)
> > reproduce:
> >         git checkout a5a36409da3a608c815b38b0ff2eb5bcfc1adec6
> >         # save the attached .config to linux build tree
> >         make ARCH=x86_64 
> > 
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > >> fs/xfs/xfs_message.c:23:40: warning: address of array 'mp->m_super->s_id' will always evaluate to 'true' [-Wpointer-bool-conversion]
> >            if (mp && mp->m_super && mp->m_super->s_id) {
> >                                  ~~ ~~~~~~~~~~~~~^~~~

...so, Ian, I guess this isn't necessary ^^^^^^^^^^^^^^^^
because it's a char array, not a pointer. :)

Good catch!

--D

> >    1 warning generated.
> > 
> > vim +23 fs/xfs/xfs_message.c
> > 
> >     13	
> >     14	/*
> >     15	 * XFS logging functions
> >     16	 */
> >     17	static void
> >     18	__xfs_printk(
> >     19		const char		*level,
> >     20		const struct xfs_mount	*mp,
> >     21		struct va_format	*vaf)
> >     22	{
> >   > 23		if (mp && mp->m_super && mp->m_super->s_id) {
> >     24			printk("%sXFS (%s): %pV\n", level, mp->m_super->s_id, vaf);
> >     25			return;
> >     26		}
> >     27		printk("%sXFS: %pV\n", level, vaf);
> >     28	}
> >     29	
> > 
> > ---
> > 0-DAY kernel test infrastructure                Open Source Technology Center
> > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> > 
> 
> Hi Darrick,
> 
> The 0day team has been doing clang builds for us and we've been
> forwarding the valid warnings along to developers. This appeared after
> the commit listed above. That check should be unnecessary, perhaps you
> meant to check for something else? Thanks for looking into this.
> 
> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191030154543.GF15221%40magnolia.
