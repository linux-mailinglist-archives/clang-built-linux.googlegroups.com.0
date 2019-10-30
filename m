Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBS7B43WQKGQEDQZUG2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id EF766E9F75
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 16:48:28 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id x8sf1807475plo.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 08:48:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572450507; cv=pass;
        d=google.com; s=arc-20160816;
        b=w7f/uAHcSXwp34V2qQEvOhkWQmDTp5M/d54PXKXfCabLu2Xha44CZ6vBytgGKA6HSt
         Ouw1g2oUNU4UQt8LcVJHHeCM6h22G8Xa1+cC3bOPUnrG1ECu+LJ6qCHSFZrw4mbLMqqy
         Gzwk2W/iS1YP4Q2BM5H149tL2R2Foy3kU34eQ2p6XLUu8VhvxLqs3+jQfaHXk4AtYP/x
         SzwIfoE1DAj+GQ2M43usr39eE9MZSmBGljcGj8MWj4nYaejvwSWZ/3xx+t3D4HCtVHEI
         /IY3X6WnokzjTi2Oaiu1JydOeiM9IWFl7OzZIV/uyE7HZQ9277yKtI8xkQo+tS680IAu
         e4Tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=M3pe2yDe0NBwNlhZaPIBCt7Sitagsi7zbt73OA0eWTo=;
        b=ffowNTnnS/TN1AtN0hgGeuEC9KDC8+xI8rQSpatp+tH8BNOLKEK9Qdenfp/Yk1fbdb
         212wqwNdwRg1rF5R7ur9/7eUb9GuPdhCJDvB0kEO2/IaEyDfuJK/rj8Jz0D/WhLEzO4U
         Vi5MvBxhHxypstmLkFTDjaTBj30RXWedJzfhFdbyjroGdDicZxrq9+RmD0oOAO84nxe0
         f5/grnCQgKxcpyv8aduPdokwk3zwGocnGODOzwgCLLdYBVyyuGW/NODPD464t26QB0gi
         otnrWLo4TQIXzdfSdL59IhYcsT0m0Rv2V/6AloFJN9Li5RRAbiopViyS32RZ1oWNMNs0
         uCXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ReOfxv/Q";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M3pe2yDe0NBwNlhZaPIBCt7Sitagsi7zbt73OA0eWTo=;
        b=H9c1OulSajJw9F7w6ZqmZFl4A4J51fVDggcR579sV/pmpaXcJBJdDFNNJxSFekLOkT
         y1hE4yxsS9UFJ+lShFA+htTxpZZxYLtaWnzeoIdJUFC/fqf1/6qnyEANjPys5vza+geH
         XY3/jGj3gLYB7RSiy1D6JXQ6+z/B30buZ5mMQiNe0q2CuFEeuPQvWBOq/fEOkDj/XkmN
         S/Lv6TxhEyNwB85lDGg0++Qs00aW1tx2bRF+T15uHWI86LZlFfek5IejrzHmyI5fb91N
         EyIIoVIgZdDMSto1vthIyKrkHbeGcBHvt1kKylKMIDVZi9ubtjt7qVqt76N4qgtvtnFh
         DQXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M3pe2yDe0NBwNlhZaPIBCt7Sitagsi7zbt73OA0eWTo=;
        b=Gcxc7ZgSaCH51YhXb2QLod2laUZHghlGcJGrPpfP9TZwPM5Bid7iXCz4GFk2iJNhge
         JXvKqxd1GAmhuwK6nCBshJIPAHjQGwTagrL3XVpxuNGwPmskPSvJvfsUGa6452MLMFmk
         724rAofM/WYOykMR/XcthQkBzEAE13VtJakpJSTYZruT2cQMvuVkyTtzO/K8uwSornnh
         +fUNkvO3Qx3vMC46ei+xzEObv3FCvFWCuX4/wJJtOaTYgqVxDKFZNDhz+FdP8qFUtNfj
         AwRhpm/aOxoPJY4EslOqZM9HZXkzA6PKEZRvMHL8ok0oZ7WFsubRAakEc129dnNMn+mC
         0tbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=M3pe2yDe0NBwNlhZaPIBCt7Sitagsi7zbt73OA0eWTo=;
        b=OKRXRS4aR56KdIzC/MK7agJ77DfV1jKTSO2QvAMKYt3PRqErFhwiK4SkPaJaToTD4k
         hF/2KtyMnFH0tTPbSJb1mJjcbOeR2s9Ue7Q3ee4iUpXuIl0VrQe4Jp4HzoGaJ60tnRqM
         IvCPzXm+1cDcOn6dcUTYBwiVPEbwuHmz1t6gR85awGzrVfHLJfqNY77/QAlOSi+dDWbh
         xT42DFBvbSNAfwWe9n9akUyA1FDtKUpx3M9kPWzk0t3IFzGPM76BOIBOlTXdkjZ6uVD+
         7DeYK4huoqIeZCpnGbnpFjssjto1DhybX7qfxU+RMAXxh6tun3xM9UVJSRQO6W8NW2Cl
         mzYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXqTiiCStFbjmh33rdh4zhwOE6eupmzr4whN0bgDBw/kOEhut7S
	YQBfOWhdabclOnyqGaUiEiQ=
X-Google-Smtp-Source: APXvYqwAjT50kWPa8iI9ZDrSL8SC6zusee8/WQqwIlYpP/meWaYfvPHNRsGx1b2xpLrPR5rlo9OYjQ==
X-Received: by 2002:a63:4c4:: with SMTP id 187mr35056761pge.425.1572450507195;
        Wed, 30 Oct 2019 08:48:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3687:: with SMTP id d129ls7928059pfa.13.gmail; Wed, 30
 Oct 2019 08:48:26 -0700 (PDT)
X-Received: by 2002:a63:d651:: with SMTP id d17mr103026pgj.106.1572450506496;
        Wed, 30 Oct 2019 08:48:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572450506; cv=none;
        d=google.com; s=arc-20160816;
        b=ceg7TyrqzY2P6+qUGFDT2LoYedD0yF9fM0V0mergvcdGpVHxzFd2Pzsw/1Q22bOwpn
         8uH8rW9zJvgvDbeI9PzwzxbqpWkiG8Q+c5iO57KmtKPtNcvWkk2UR5aDsz07jefgJyiv
         J9A8SaGKIb8tJDWnQdWJ0x1uLFyxlw/KDSDnd+SYxetgS+Z1PBPzRlSwlb+JCqaW7H7v
         xfEv6FMNBwf/+sS4OVCalNvnceG7Scl+qOTCC5boys7zPKP+NaR0MWDBTJlEbTnPyNLD
         E509nFka7cXeB3JknTnzwnyg1KybUpmXp0ANsHlZoJDtMlUrH8Me+KE9KJNs/lpa0vrE
         kYQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gj9hCTVviCIZQiNm0Xht1ZF+XXxGcESBre4ygleGi3w=;
        b=RL7ZwmWrpoaJRSP3IlJYqNA8GzC0fgfmVj+QD4dgPJ5vMb/Emc5W1tg8H83885p4MQ
         gENbhky4FQ6iGexTU89Is7fRh5UwSwFbSHUtysHD6aeVtfsLX006x/XtbeMRUquyGcqe
         eT937bfY7cGaivnCHGjCKMtzmsVH34847bhD61cVQJzcaqWyZQpETuoZhzf0X489aO/i
         4XXgaI+CLcwWM8yyszZQY7QZkGKS8PhJ0MBRr+Dt6y95lEOcktqQAM9bYFOhfyZWNbSf
         pZMiOcEpbqV7b+YeUnIRHnWmhR7CE7Fwfjk2CM/s36jVT/0zADjaOymSXQqPLBOO1qlM
         O0bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ReOfxv/Q";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id x10si140414pfi.1.2019.10.30.08.48.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 08:48:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id r27so2366995oij.7
        for <clang-built-linux@googlegroups.com>; Wed, 30 Oct 2019 08:48:26 -0700 (PDT)
X-Received: by 2002:a54:4499:: with SMTP id v25mr9529384oiv.17.1572450505567;
        Wed, 30 Oct 2019 08:48:25 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id y7sm142421ote.81.2019.10.30.08.48.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 30 Oct 2019 08:48:25 -0700 (PDT)
Date: Wed, 30 Oct 2019 08:48:23 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: "Darrick J. Wong" <darrick.wong@oracle.com>
Cc: Ian Kent <raven@themaw.net>, kbuild@lists.01.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>, xfs <linux-xfs@vger.kernel.org>
Subject: Re: [djwong-xfs:mount-api-crash 91/104] fs/xfs/xfs_message.c:23:40:
 warning: address of array 'mp->m_super->s_id' will always evaluate to 'true'
Message-ID: <20191030154823.GA28650@ubuntu-m2-xlarge-x86>
References: <201910291437.fsxNAnIM%lkp@intel.com>
 <20191030033925.GA14630@ubuntu-m2-xlarge-x86>
 <20191030154543.GF15221@magnolia>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191030154543.GF15221@magnolia>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="ReOfxv/Q";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Oct 30, 2019 at 08:45:43AM -0700, Darrick J. Wong wrote:
> On Tue, Oct 29, 2019 at 08:39:25PM -0700, Nathan Chancellor wrote:
> > On Tue, Oct 29, 2019 at 02:45:40PM +0800, kbuild test robot wrote:
> > > CC: kbuild-all@lists.01.org
> > > CC: "Darrick J. Wong" <darrick.wong@oracle.com>
> > > TO: Ian Kent <raven@themaw.net>
> > > CC: "Darrick J. Wong" <darrick.wong@oracle.com>
> > > CC: Christoph Hellwig <hch@lst.de>
> 
> FYI, It's customary to cc the patch author [and the xfs list]...

Ugh sorry, was in a rush last night and not paying attention :( will be
better next time and thanks for adding the right people!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191030154823.GA28650%40ubuntu-m2-xlarge-x86.
