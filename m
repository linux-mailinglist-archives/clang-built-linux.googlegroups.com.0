Return-Path: <clang-built-linux+bncBAABB3HXU3VQKGQEOKKEPVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D05CA4140
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Aug 2019 02:14:38 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id u24sf5055578plq.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 17:14:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567210477; cv=pass;
        d=google.com; s=arc-20160816;
        b=0kRmMHU3IaRILfR21F/B1/s6l1E7xtwsITkoHXnE56ctfpXHYTpcUlLJPyTaINZwLW
         9XhH07upyFjDe0RL+YgDivCKK/9Ff4keRmwWy+pD5dCyxPC2YNm6kvCCP6hHYQ3ZiVF2
         FwSVqsdp/t4jZzI8QtIr0C7Nh0GIzvTNFnvPONsCuYywF0WNwPeYuP2nuF9YZysV4M8T
         /dK9MQglJHd1HNA3rFpbO2S5JsFpb1lGmMTBJ9Ty4cA9DRH34w4VW6k5+9Uexu8dq1d6
         mI5gpgE10elmDfeAayc4jV2qbSXIuQ0POmWIX4c3p/dlkDVt3h9gDcG5MjXm/w5gOA+A
         GC/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=iZXqcqHmdNofoegIgId5ZQ2URK1d/E8ek8wb34inH8I=;
        b=PHJ3uGy9bX6J+BFUHoc+QvUb/dVke0/RQ2Cs5xrvRP1/evMYW4C52xuAXyXkbrcnGn
         6B12RkSzPpId4z/+80UaLJBdvf8LGUfYfJth9gfTM8iMsxJ6bBlKSd4Zk3ctYLni22vG
         mYV1yRqQfZTQ0NP5ByePptLUlzPA6YbceW7RXqOcex8lSTb9AAFK9Di+UGNpNoLbMpEW
         5N9++JMyvjT8CKSwrYZ/5IGWz/26SigjI6pvlLHXkC9Stty/sc9ur0eSqijVu31Nf7jH
         2AxklUSEqezoj+MvsDtHN1eYqH3k6WGCfyJa0D/qzLaUISzxXsujM7MiVSenBhj/+W/g
         bvEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wolHikVM;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iZXqcqHmdNofoegIgId5ZQ2URK1d/E8ek8wb34inH8I=;
        b=NgMT4h2zG/8/1gc/XcB7dt0CAQWZZrSi/613msiD11IM13MYyq57zt3F/qr91CAzgB
         y9RfntW0uJdWW5frM8i4JQMPhJyj2Q+MtjAguhZKZF7Q52oCwRSxa/LNl9U39oUqmrmo
         rqahExV4A44NfK9DXshn0qIuGF30spQR+3XaLyn7jW9xq2wFY90+8+GyCvD1kiGvyovK
         xr61nVt8ndRpcx/0bVKK1QHqoElcfWwiIc4xRtLzcGWKTDWPlHPedL5Z3KlkeQ2ju5ds
         rxn4Y2M+kzaZr7BnxOv4TanM7gatOuXJFreyczYNcGRPqUiHmEvqOEHeGcvv7VXBKvtI
         klDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iZXqcqHmdNofoegIgId5ZQ2URK1d/E8ek8wb34inH8I=;
        b=kgXBPVShHFvCo0lw9pq3l37SRyYnCDHh8DrZtIGC8dpGEhX+CS2dyKq4avZF/ujEPV
         +Yrpe95IWOhB5nZnJmVo+qNF+YVcF1DhvmPkntn660F3cxsgJLNygXcNSOMEKmJ0Erac
         ULSDPUB8SlVsw0FCR4UqjCIRB/Fyjpk4RFClc0vsVhgvvvddkjTh1SR/Ephf1lwaqmC4
         wLmkOM/AK+cT0Wg2ZnWx0nQ3i8Q4dZrQHPKiAnKEuJ7DqlOqRnWfE1ls4GLDMIMFvLwc
         YqdUpVCqKwa/35ZgSzVq9GADQED7TS7CMEPNif/0xTxV8jCFY3PZ6RLSt8ONT623Erj9
         b/ww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWMBSuxy+BHo6HxXF44zebfSnV89SaLT5abyv/qK+9y51f9L7uh
	DcWQODVNhoAm8aHszmiRepw=
X-Google-Smtp-Source: APXvYqzaon2wOGCAEkuk/V9Iz0yCUsWaA88yx+hufobgCnAaD2U5xUKtRAeQvvULDze6qObOxVtfpQ==
X-Received: by 2002:a17:90a:c305:: with SMTP id g5mr1213138pjt.58.1567210476849;
        Fri, 30 Aug 2019 17:14:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9e81:: with SMTP id p1ls2564388pfq.2.gmail; Fri, 30 Aug
 2019 17:14:36 -0700 (PDT)
X-Received: by 2002:a62:e915:: with SMTP id j21mr16844035pfh.239.1567210476641;
        Fri, 30 Aug 2019 17:14:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567210476; cv=none;
        d=google.com; s=arc-20160816;
        b=ljP2tdLOwCz3upP1qq6SSzDP82vmy5rOwPkscw9A4d4LfRvCpp8Km3l9OIgvELd7tL
         /Svr07S9OKhn5LYvZWJ1lan6TdyqXeUVoWqzUJFt+5GmuHxDrHwYu9DZp8Om+BMcFG2H
         PJHdSrQVA5rqHHVD59uJ880fWRoVp8qyTi6+lk+oB5D008Y9L4L0IJwG0O0nWZxRjPdJ
         g8vw7QqT5Z3KDXkpUrpIbCht2qlJkzSGQiawxchvmE7flIhDmN0YUieHBT1DLoqd7rYM
         ceBhFSWg+jn9LR+lZK19DB3gVgoTlAREOLALJMGYOPef8rE/hykMXDTEPZeJUMC5C2fS
         q8bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=i9Jmx+QzomPtXy1uEt4AwpqffcJza50WEodrvvnjVz4=;
        b=Hnws09s3WigaCRvuN5pbGRobdS5WRcSfjo5dxfqNPw/QhP8rKnuRtIdil7I4foA0+9
         UpZMjY0Cf1O1Ua0xO76lgSZUln/mrLUd2oZUXX7r2KdLsCb0HR6Lb1Yo/q3GxckLY6Xq
         5S4x9/dvmjb1l92iDTH1vz0iWJQztHsTRwf12fvgrZqHh/uvrHOBuh27EhN+xWzq1YS3
         zFriCD/nDxODhIeOfC9pXMa/tgiGxDFf6485hLOKw0GMUC0zZQm8Dcqm9Kz55mIk8yuA
         nTReTm2wNcTNdggkITPAoPM9zhJrW/WXZZL4YPpYXskOt5jELjhUTjPLxk+KIW7ZgJ8a
         8Thw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wolHikVM;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id az14si400473pjb.0.2019.08.30.17.14.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Aug 2019 17:14:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from zzz.localdomain (h184-61-154-48.mdsnwi.dsl.dynamic.tds.net [184.61.154.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 31BF62342E;
	Sat, 31 Aug 2019 00:14:35 +0000 (UTC)
Date: Fri, 30 Aug 2019 19:14:32 -0500
From: Eric Biggers <ebiggers@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>,
	Andreas Dilger <adilger.kernel@dilger.ca>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-ext4@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
	Theodore Ts'o <tytso@mit.edu>,
	syzbot <syzbot+0bf8ddafbdf2c46eb6f3@syzkaller.appspotmail.com>
Subject: Re: WARNING: ODEBUG bug in ext4_fill_super
Message-ID: <20190831001432.GB22191@zzz.localdomain>
Mail-Followup-To: Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Andreas Dilger <adilger.kernel@dilger.ca>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-ext4@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
	Theodore Ts'o <tytso@mit.edu>,
	syzbot <syzbot+0bf8ddafbdf2c46eb6f3@syzkaller.appspotmail.com>
References: <0000000000006fc70605915ac6ad@google.com>
 <CAKwvOdkAaFKr5gDw31uRzGoEC1JaJGNnrnAX_ysx9kH7dKx19Q@mail.gmail.com>
 <CACT4Y+aiSbZr=m0E1c2eHe6JvyNeKUDxEb2NTLxk77LsBXGVVg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACT4Y+aiSbZr=m0E1c2eHe6JvyNeKUDxEb2NTLxk77LsBXGVVg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: ebiggers@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wolHikVM;       spf=pass
 (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=ebiggers@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Aug 30, 2019 at 12:46:21PM -0700, 'Dmitry Vyukov' via syzkaller-bugs wrote:
> On Fri, Aug 30, 2019 at 12:42 PM 'Nick Desaulniers' via syzkaller-bugs
> <syzkaller-bugs@googlegroups.com> wrote:
> >
> > Dmitry,
> > Any idea how clang-built-linux got CC'ed on this?  Is syzcaller
> > running clang builds, yet?  (this looks like a GCC build)
> 
> syzbot always uses get_maintainers:
> 
> $ ./scripts/get_maintainer.pl -f fs/ext4/super.c
> "Theodore Ts'o" <tytso@mit.edu> (maintainer:EXT4 FILE SYSTEM)
> Andreas Dilger <adilger.kernel@dilger.ca> (maintainer:EXT4 FILE SYSTEM)
> linux-ext4@vger.kernel.org (open list:EXT4 FILE SYSTEM)
> linux-kernel@vger.kernel.org (open list)
> clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT)
> 

CLANG/LLVM BUILD SUPPORT
L:	clang-built-linux@googlegroups.com
W:	https://clangbuiltlinux.github.io/
B:	https://github.com/ClangBuiltLinux/linux/issues
C:	irc://chat.freenode.net/clangbuiltlinux
S:	Supported
K:	\b(?i:clang|llvm)\b

So, clang-built-linux has volunteered to maintain every file that contains the
word "clang" or "llvm" anywhere in its contents :-)

$ grep clang fs/ext4/super.c
	(void) ei;	/* shut up clang warning if !CONFIG_LOCKDEP */

- Eric

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190831001432.GB22191%40zzz.localdomain.
