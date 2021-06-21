Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBBXCYGDAMGQESGFL6YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id C36AB3AE7C4
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 12:59:19 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id v5-20020a05683011c5b02903cb28b38d0asf1991900otq.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 03:59:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624273158; cv=pass;
        d=google.com; s=arc-20160816;
        b=vxJfYcO5HeY5iNsuow2cV1AGBg8o24BvSRIWq1MUG5N77aFpvVXz7PmWvJ1oVuFJ5L
         kxbjlohncRNqy2RIlxJL/3pf6thc9CGKCASDNEpCcU5LrH7LN3xpVnPwtCx2azIZW0Aa
         UmE4gGp6LvBQcIFLuY3wA7mTWj/kIffsi5XF/EDrHUVj8ETVL72RoXW4J5V5SX4ud7jz
         Sgqnipy86jecRDktnwms68v+Wcif/jpxi5pmkQcnPJSpZtOAHNP79Mes/Hlb2nZr2sEk
         j1puEQKBVtaPZrnHF0eSF8d01tRmjHLfLJUFL1SCfIVN7wuG4IiMZgXDMO5agOBfkbu1
         LUMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=mje12yFSdGAhSaQV+PXbLtBRZUbdyPcy65FC6xjBwg8=;
        b=yWbjZKV37Dgf0HlaRKO9PPTGoNgboNia7CWiZQdXlDHeZoUg/hUAXpuNkVzMqPO3yy
         a9LJWzWaH/Hpg5ZxTIOrcj0RXm7+61xC+ROzshJJTyu+UfDM/5HD/2xMkaLtqZxBeY3S
         Yuvc19rV/6tABuhuwAQZZn0/arGgrpTVcKGwJtOmldJnN7noh/mOURbELbyCZCgfheid
         MyQD/SjOwVgXdzoDYy62EvUn0QbyUjUUPnIRVBXdeIbGMKg1S59Zdfy//D5LKVvMIOYx
         xHGq61kqH7Dh1udM+gxBjcoOc0sqdhoYNQTYnf07ciMFP92Z9S/JQXu0qo0SxxwMFytp
         J3Ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nmMrjXbx;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mje12yFSdGAhSaQV+PXbLtBRZUbdyPcy65FC6xjBwg8=;
        b=Zh3hpWNpE2fU5U8XZ1X9LIefrHIXPTdaStLYAFyx4fxGuop4KW4+OPMJFNJ49j8pg3
         6Zqed3L+HBjcR+PbXtv3OTIEyclo6x1ZOqo1Mfz/u8CwshJE4Odj+Efmkce9/jT1u7J2
         jvyRk5T98c15ZQw33Wyc3AMBgqW1z3T0H2DTBY6lN4Q4npu3tUGF3FH+YwUZvkFcfA2z
         lSZpq0dCVfV0C/Yem68aZlf4gOisvr17Rl4FEbEFaC30QJjdKHDbBzpoUhxeQV+H2IEP
         9FEv0PYoZzxDxTs0QRmH48pQVZH/1qNX3rlKxunHK13k+hbNh/mRQPPLkwFQPnFgCZuT
         FgAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mje12yFSdGAhSaQV+PXbLtBRZUbdyPcy65FC6xjBwg8=;
        b=ulg8sRY+Fitnye1ygbBpe1KicY+elQb8hH9i+SisTxWY9Xz+sqfWJlMaS5fs7q9inx
         bj6hSNVU7gIRHiQSvIU5gZlsJR6HEWBhPoJKtMWbYuSAeOA65uVsgM/NC6JJu23Qmvhb
         bsIlwJiXzPS5Rvk29hRyJOnQKyDZxZgfUTWIcVIS4s7d2QhEng6UnU5G14LK+uMChpge
         MFBPl+tpQnvKTT8rrcFp6Fxw+cc4kYr0oBxVO5ZQXYxf/JfoB5ohzyocosFfQO2uZdkz
         k3SdRhXnn7ULJzPhREtlfFeCC6hNTp3ULvPfXIjcC/OrL2DEMyHui6QJpEI2pteWobCC
         F8HA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fX3B3KlDwXsd88ZFaYsbYQVCq9l2UdGlabrBU1ZhKQNZSeOql
	NGVi61XlYyDsXs517Sywz1M=
X-Google-Smtp-Source: ABdhPJwFM453s71bT+onVzUwA3cz8+rJohZD6htNqzvNnkEp0wvobn3FvMfCnV8rMQ0MfISh+qq/wQ==
X-Received: by 2002:a9d:674b:: with SMTP id w11mr12834378otm.260.1624273158699;
        Mon, 21 Jun 2021 03:59:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4116:: with SMTP id w22ls561671ott.9.gmail; Mon, 21
 Jun 2021 03:59:18 -0700 (PDT)
X-Received: by 2002:a05:6830:1f0a:: with SMTP id u10mr20540942otg.181.1624273158343;
        Mon, 21 Jun 2021 03:59:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624273158; cv=none;
        d=google.com; s=arc-20160816;
        b=isEzhILu9ovJtsSf/VqivkUOIHHB+saovQHzUu6wM6sSkAnyBkFf0wZ10n8UN7BZTi
         7wwo5GE9TAPuLGhwB4KNPH3xK83fsKmqGVwxABuARG4SEvWIZCTc2til2Gzjv+ioJ/CL
         Gqc9Y1dwUdZsftWqDCTN+2GO6jMWIMW6lT3BxEuO9Fm7rbo6tKKnJNEY98bPS2ICQkrL
         lfUWaWi2eRM7F8gwu/PFO88/U78e/qlfE/2+PtGjZ1Vp1QysS3HOuA4C9tuVzRs1AHrr
         8ff24oizZQVM175W2CtKWJA8WUdj8v73qvZ008CeQJMJjx0miVJm54Y0OKXDpbqjGhCJ
         jkTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=D3R9nifq43Ley0/WnPJd1ORWo8E6TcoaDxhgG8eJrfU=;
        b=RPp0BFbrerZp3C3VVX8jj2b2vhkkE0j7Emaf02LXMWMm+NcOM4q01yCeaXS4/jfYcD
         LjK5wOC5Bvw1TbN3q5cI0NQqNXfsB/D+0eRsrS9rEH+pcNlrLzpfK++IkJje4l0rp5xe
         jBSOHBd9cx89KfSB5rhEsKei8/Bj6WHmUPM9Ay+A1+/pE761mZjbf92WGupFBxg/TT2g
         kMEBAGrrClr0tQ1LEorQT8/K5vQR/A8auqDfhQxvtbBokT8O4sGdqAtEBQ+sppF2iUiC
         W7K1bqXXveJjEz1OyMmg+gSb+6tddRh0gZwLxNxdG3iPwu6zQBEvMLJ/xDbTIOMnazRP
         hJhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nmMrjXbx;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u128si1738728oif.2.2021.06.21.03.59.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 03:59:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9F2FC610CA;
	Mon, 21 Jun 2021 10:59:16 +0000 (UTC)
Date: Mon, 21 Jun 2021 11:59:13 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/2] arm64: insn: move AARCH64_INSN_SIZE into <asm/insn.h>
Message-ID: <20210621105912.GB29072@willie-the-truck>
References: <20210609102301.17332-1-mark.rutland@arm.com>
 <20210609102301.17332-3-mark.rutland@arm.com>
 <YMv2B6HCnDReOFIr@archlinux-ax161>
 <20210618151835.GC8318@C02TD0UTHF1T.local>
 <YMzPi0Ckyd9wqO5d@archlinux-ax161>
 <20210621080830.GA37068@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210621080830.GA37068@C02TD0UTHF1T.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=nmMrjXbx;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Jun 21, 2021 at 09:08:30AM +0100, Mark Rutland wrote:
> On Fri, Jun 18, 2021 at 09:53:31AM -0700, Nathan Chancellor wrote:
> > On Fri, Jun 18, 2021 at 04:18:35PM +0100, Mark Rutland wrote:
> > > On Thu, Jun 17, 2021 at 06:25:27PM -0700, Nathan Chancellor wrote:
> > > > Hi Mark,
> > > 
> > > Hi Nathan,
> > > 
> > > > On Wed, Jun 09, 2021 at 11:23:01AM +0100, Mark Rutland wrote:
> > > > > For histroical reasons, we define AARCH64_INSN_SIZE in
> > > > > <asm/alternative-macros.h>, but it would make more sense to do so in
> > > > > <asm/insn.h>. Let's move it into <asm/insn.h>, and add the necessary
> > > > > include directives for this.
> > > 
> > > > I bisected a CONFIG_LTO_CLANG_THIN=y build failure that our CI reported
> > > > to this patch:
> > > > 
> > > > https://builds.tuxbuild.com/1u4Fpx2FQkkgkyPxWtq0Ke4YFCQ/build.log
> > > 
> > > Thanks for reporting this; the lopg is really helpful!
> > > 
> > > > I have not had a whole ton of time to look into this (dealing with a
> > > > million fires it seems :^) but it is not immediately obvious to me why
> > > > this fails because include/linux/build_bug.h is included within
> > > > arch/arm64/include/asm/insn.h.
> > > 
> > > The problem is that with LTO, we patch READ_ONCE(), and <asm/rwonce.h>
> > > includes <asm/insn.h>, creating a circular include chain:
> > > 
> > > 	<linux/build_bug.h>
> > > 	<linux/compiler.h>
> > > 	<asm/rwonce.h>
> > > 	<asm/alternative-macros.h>
> > > 	<asm/insn.h>
> > > 	<linux/build-bug.h>
> > > 
> > > ... and so when <asm/insn.h> includes <linux/build_bug.h>, none of the
> > > BUILD_BUG* definitions have happened yet.
> > 
> > Aha, that would certainly explain it. I figured something like this
> > would be the root cause but figuring out header dependencies is not my
> > cup of tea.
> > 
> > > Will, are you happy to take the fixup patch below, or would you prefer
> > > to drop this patch for now?
> 
> > >  arch/arm64/include/asm/alternative-macros.h | 2 +-
> > >  arch/arm64/include/asm/insn.h               | 5 +----
> > 
> > Looks like arch/arm64/include/asm/insn-def.h is missing from this patch?
> > 
> > If I add one with just the two deleted lines plus a header guard, the
> > build passes.
> > 
> > Tested-by: Nathan Chancellor <nathan@kernel.org>
> 
> Whoops; that should have been as below.

I've queued this locally on top of for-next/insn and will push out later
on (once my LTO build has finished).

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210621105912.GB29072%40willie-the-truck.
