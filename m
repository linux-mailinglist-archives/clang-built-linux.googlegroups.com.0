Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB542S36QKGQE3W74IVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 049DD2A9B3F
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 18:52:57 +0100 (CET)
Received: by mail-oo1-xc39.google.com with SMTP id r13sf1031137ooi.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 09:52:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604685175; cv=pass;
        d=google.com; s=arc-20160816;
        b=qEm3R16xFznjcShiq2MtSCNuP3S7whZCp337PDz5m0xozVIs6LJuGq9HM5OJXaswur
         SgkwZp63nn0mKpunSJaOsV6DUbFoLV1X2r44fIn1bWpyzcsE1bAIeabRfGi/hvKqMmkE
         Cvb0yDmZtxkk2YOkshZkCK7Lo/GV0i7l0tvjxvCg7SBX//LqIV9XBHzOqtZTzWycA4st
         XWMI8fIHqa2xJCxX5/oyRaCixk/aT2UKrOpK2qyFjYVG2rpnpEOFAjtXps8Xn/Gl1/Ss
         CzjD5eeccUKpuYzh24ab8ZZpy1wYI1Hyd10wOGhkx8YKvwasHh97pOFkvi2iBmrxAMHk
         MSrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Ysjg/HvBATaEnBjst9Dfdlml7gsN99I3djlGC+aHDbg=;
        b=Z5hf+LFtWAlx7tRgWs6jGm9hxx8jDt/6xWWRCY6S3Z0JIp3BC5HpNGQQhQ+kO2fkQ0
         K7kzDVyyGQLgxBc3oxpvzw4ADDys0fZjU3IYGsK7RNNjbJ4roIqERqNjP9zzYXmkpDF4
         ArAKpI03MHL6pk6bhNKnY4Zbpmd8XhS94QbftfACebaAQZw4KF1QJwA+u2zusr1byKTd
         Ye+AyIWvvZDLD0sTOcKpsUjbNX2pmqdSjQ825rTHmqOzxyxtbcy7TXsgsgOvmMcU3UCy
         ALUENh6PxD3gVNlzKwynyVpmwymG2PCsUEIoY2CkaoHBLB7QCaTWuvuRSHbNR2blYBpY
         NNWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QVj+oUZv;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ysjg/HvBATaEnBjst9Dfdlml7gsN99I3djlGC+aHDbg=;
        b=UkRfLFSEl56hI21DRXBf1vetoY7XUS5emuLOkoP9jz2eyYXJPYCF8X7Bpjx7HXj4R3
         wERUctzc262QFd5Uj+83y8IkX2OqOZptjmaPlnf7ve5Zo7r4H7zTPG7Ss/1U2xkhv+cw
         03jSRBB6lZ6p3YDrxXMz47QCqGKMmVifNXzofx/GxG6iATrQXWEe+IuJG0UuT1BhG3zQ
         2trM5NLsDAij1dXAVgbwYPh8R5mveSZID4dg16Yu97vlL19QfkpEDn5ev7JLVjSwUUB3
         G+FBVxtggw83B0pBbtaRtnCvOQybgAb/2deX/kQUgVZQnpbH2DJ4YTOggaLuTNVyt8D7
         Gvgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ysjg/HvBATaEnBjst9Dfdlml7gsN99I3djlGC+aHDbg=;
        b=quv+AqSoMiP9Xm/ICCsZjcRt8oUvjJEfO8HdS/Ns0pT6hSNDfOx24RAXgi7+mwaPTW
         +zDr7kptFsNJH7oqotQOiwJv05diKRAfd5zQ/n2v3BHQwG14v99euSehhdaE/2VPaipf
         AB4CTkHb8XrGdGyc4sC/tvDI98mWtWs9WA907QyzwMBt9DDaCVi+yCCVfkdMilC6nPur
         Ci9CSnefICURkHLwORZrGPvZ1Cz5q449TnMkCOroEf5Z3D6ackq1V+M92AbNbb+MlIDI
         sG4mkZo91ziYYSMhcESINaWxaLdPAVBz6eqSjLWYRC1trGr197oxp48ZIMsONBiQx4IC
         pSTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jHqPgL94Fw9Uh0hLdnRRVH5yv4g2V6h18C48sSNOIjMW8SvFm
	H+N+62pw0AXnc63F8RGM/M4=
X-Google-Smtp-Source: ABdhPJzBOYyigym045it/I24JYkXL942BuSMO4U3tD7R1CRRqUxPFBdxiiPAf6cY3kxYVomSyKRg8Q==
X-Received: by 2002:aca:cc84:: with SMTP id c126mr1449650oig.27.1604685175750;
        Fri, 06 Nov 2020 09:52:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:d498:: with SMTP id o24ls135458oos.6.gmail; Fri, 06 Nov
 2020 09:52:55 -0800 (PST)
X-Received: by 2002:a4a:96b0:: with SMTP id s45mr2055315ooi.33.1604685175388;
        Fri, 06 Nov 2020 09:52:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604685175; cv=none;
        d=google.com; s=arc-20160816;
        b=iBVUJhDeBisCbCuOPQxp6t5bhfFEidF5edLoAYeRRx8bDG0Kbz7wcya6OzTRXRyy39
         f6chqld681xaEeA7ao1bI86EyrVrCiDzeJ2Mjiy2r/tEi5UWNTkfmaTBaHdyEBrML6Ou
         usKssDyqOOBOFlMSvtkDPcdr0jSNk/rOg0FRFb3MZSwwabPDNPT5PdwC8oBz5PYkwhvA
         6iwpVCEKYzxEJYG1HUypa1qxhONokQGyc3BHYhjhfcIUo0bOVK/04HCJVBZUGWOr5MSi
         Z13ezVWA1uwFZ7AOsfdTl/i/4aV/ZjUa7XSHHYtDXvnSn1NIV7ObRAzKAFSBJ2FR5tL9
         v/yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gXUD4PEw11l15dp1gG3X4hb7MCsDOoZml5dxfjumYcA=;
        b=LUuE4Vx1uSpptoeD1v9n7WhsksZYe7vfQQ7qWOl1ydJ2KJjqwBAf9ONZJOb+3GaDnO
         o7KUyglBgRztoz/ih09Hw5QZ9j2Wy/RbfFZT0r1q48kt8Y6GZ0Q5vI9acuP0F1+Z+Afq
         o8zP/LJ+srLAUejFcKkB6nMx0ccfy/PZY04jDQAuzsRyIpWB4xk6FBZqCb46Du7eccwQ
         4O7BS5p4Hs1h2TkM4GML++QvMuflOk62+X1D1eabjx1AaMX3xU0gRWWwhfaZHhxroLIi
         Is0zphJc91ZYbhrvqcecf2aHcnVw25meSetrA88BgiPKGH2D+AW9Wy+vynmCcax/DXGe
         wtLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QVj+oUZv;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id i23si193294otk.5.2020.11.06.09.52.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Nov 2020 09:52:55 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-575-zFZeb4IgPLe8zQAoK78mDQ-1; Fri, 06 Nov 2020 12:52:50 -0500
X-MC-Unique: zFZeb4IgPLe8zQAoK78mDQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1907F803637;
	Fri,  6 Nov 2020 17:52:49 +0000 (UTC)
Received: from treble (ovpn-116-174.rdu2.redhat.com [10.10.116.174])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90AF75576E;
	Fri,  6 Nov 2020 17:52:37 +0000 (UTC)
Date: Fri, 6 Nov 2020 11:52:31 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Masami Hiramatsu <mhiramat@kernel.org>
Cc: Vasily Gorbik <gor@linux.ibm.com>, kernel test robot <lkp@intel.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Borislav Petkov <bp@alien8.de>,
	Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org,
	linux-tip-commits@vger.kernel.org, x86 <x86@kernel.org>
Subject: Re: [PATCH 1/1] x86/tools: Use tools headers for instruction decoder
 selftests
Message-ID: <20201106175231.f64g7c6f47gq2mty@treble>
References: <patch-1.thread-59328d.git-59328d9dc2b9.your-ad-here.call-01604429777-ext-1374@work.hours>
 <202011041702.EIrDb4hS-lkp@intel.com>
 <your-ad-here.call-01604481523-ext-9352@work.hours>
 <20201106112413.80248e44fef68d9acf932dec@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201106112413.80248e44fef68d9acf932dec@kernel.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=QVj+oUZv;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Fri, Nov 06, 2020 at 11:24:13AM +0900, Masami Hiramatsu wrote:
> > Right, this is expected. The patch is based on jpoimboe/objtool/core,
> > which has extra commits.
> 
> Has that series already submitted to LKML? I need to look at the series too.
> Or, Josh, can you review it and if it is OK, please pick it to your series
> and send it.

I believe those patches were dropped from -tip because of a build issue.

Vasily, can you repost fixed versions of those patches, based on
tip/objtool/core, along with this new patch?

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106175231.f64g7c6f47gq2mty%40treble.
