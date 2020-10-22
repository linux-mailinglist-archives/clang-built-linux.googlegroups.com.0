Return-Path: <clang-built-linux+bncBDY3NC743AGBBYW6Y76AKGQEED4IENI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id D3110296623
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 22:45:23 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id h65sf1300212oia.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 13:45:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603399522; cv=pass;
        d=google.com; s=arc-20160816;
        b=BWuKX26mi26Jg7HlCE4dVt6r4cHefKqKI87kLOi4JiUrC6/CQE1bhkN2qgvgqevB2H
         9kkm2AuBRaPBDKt95epnHliVs9IqptkR+D2ZUuTMPgMPBn0HMHNcIJJq7Un2j9VuUKhf
         ZekE949Dv1oV3BzMO0XsFrdGqnxMReORsx7yQsjz6Nq7IQgi3jF4aPJcezmuXnYBjtNt
         iDYwhjXxBJc1G8285SWsIiz330Rwx6TxDkhACAFf9Q/fqZ5yJ6lcp9QuEf3D1gQD3/F6
         i5GEev5G42/wJPQR2mWX4H7OmfcFFd7aYcHqjN50oZN4XTz4DhWt1PSUdHidPS0MZyYU
         TZgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=mrd/IrGov6rvtwwQPObuwCIHPgPDB33VX02ixy2WD4I=;
        b=HiDokfMU6OHRxkYIEWFvKlYb4Nkpd1JvEHvXj5/z/bYNh4J240Ov8MpJ57/cdsBk02
         IL5xJgmKia4zmUQUymCWmpca8828EH10hm7FLN6NGM6PxtGbm37H+9R6GBzus8YLpDue
         y9SUTieNwbVoJO97zq9kmYXTD8OuDEI0XDEZ7FN2ZElGFZhvkTxzPo3ZKsuT9IoN78uR
         sEXARZhuhLYSKSsNOcwb5LmC3rQ+nGSTM/fFEb4w6sNpD4fqJ3dDY+F1wwbkx0/j6BJW
         Rtuc5b6EG+R4EO7tyxQjKxSAWQPN0Fw9Da6q8A9K36zD+IKzcbOW2l2F7g1GvaRwEA12
         KFXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.73 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mrd/IrGov6rvtwwQPObuwCIHPgPDB33VX02ixy2WD4I=;
        b=qrAxUzFElkP02Yff2cktwc2uzWCS6in94m8ZzAv8DiPNWAWdK7/XdiqmGd2UigIL1i
         Vqji2wR1yXBZCfBXmlix3uLgZtIYKmiZKxfLJMPle8Y6/FwVxtUE8P25BWxZjrKjwmUM
         ZR4GcPVPNdNM1K0a4+yauiY+a7+y18KVwiZcq+g4RaqQhpFNY1YqRgsxM+60tiNzFWet
         a1wbj4Y13jke/NnTzdF5eimKmz65BTYt51VVW/VhRn7hxH1/PvF/JRCvTpNacyXIfA4I
         D0l9MbMfL6DaiozKjF1Yhxkp6B+vg54rwZuYgW08L32f6DqXwGjIlCq8BnbpMDpdXVHD
         3Ehw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mrd/IrGov6rvtwwQPObuwCIHPgPDB33VX02ixy2WD4I=;
        b=XNV1vQp/HGsh0gWg7Yx5EPyDMG4tG64luBnadtiTmCnUp5pmd9dfiEbGFlQK2Shcsw
         Z3MT+6XnkejKpweamRWsszVCfDycoovmXZ/lWL/JkPSYsuLd0uj3G2NHeigFsJV6r23W
         g6Jeug43ZuZuVK2yOMUHa8PbtHxTmZSV3KUF4xK2Wzx+L2K1M1sNR8RVos3xCVcKFYHR
         jNlZLZMcCwcUMvneKvrrMInZOGZq0vgMGE9QTa78UYfoczhDO+TX73FuxVOc98lfaBYS
         ht+sSMv8gkBUh6tIVRH5FiP68rAKFPpgRIKPhDXY3L03DWLQlfrdtsgIQ6n7RHwq/DPa
         ULfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ybVzSB2AaiSl33SKR/7i+24xFANiPk9psI9lPq1b98qTcJeH5
	iBA9TycCBYWHXF7VEnh9L9w=
X-Google-Smtp-Source: ABdhPJzDiTj/noPfjD72JHnT623iOe4ncPQatl9rCVGHl5j5Yzz1q4fkHIvfLV5iCWseolO/SzlkFg==
X-Received: by 2002:aca:1115:: with SMTP id 21mr2993990oir.158.1603399522634;
        Thu, 22 Oct 2020 13:45:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:95d1:: with SMTP id p17ls186852ooi.0.gmail; Thu, 22 Oct
 2020 13:45:22 -0700 (PDT)
X-Received: by 2002:a4a:d815:: with SMTP id f21mr3295368oov.44.1603399522310;
        Thu, 22 Oct 2020 13:45:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603399522; cv=none;
        d=google.com; s=arc-20160816;
        b=tfV6htMlHdfw/+51ZIamkr5XaJrTAr71QmZtHWB4y4yysL7NDpKIlDq0Knx5KXWYwU
         rYVTTxOhSCsWXcJVWduUXq38ekfD9vlAKYxi4MLhO+kqsu4o278S4RxJOJGJeLiUmvuj
         SzriCeOWGXslyZe1bYIZsuUjz8iKwQYAYZOPcKfkCvbclYnBjMPerwLno+8eav5Yf7fa
         5u/BK3rrPJSVNpb1Pqsrp8MqN290RCQ4/FXc1HT6SKkrRghzjkUa7BH2FwqBjyAIFNs3
         qP+VhVgkfa2uTQYlg0jbhy6AFtrssT0/zSxyfFhg4juxatNmZ7r5ilyJB/ZLb3dk28u4
         iUNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=II/E1zUHRnxALzxizU4Xx6/ny47c6KGS8H+IVA+QRHA=;
        b=svnYWYoNNVr0uC2gIj6t0I9hbbM0+BZX6snD4gSQkljNCHar5caDuHzusg4/nWVEyt
         +CDVLCmPqGOSH3omx+6JZr50yZVmM3sdeT2PoCV+aMbl1hnyicOv4qbpCfuwqE8FIHYr
         uaEItIVfABZ3VPqpjjvTOSWR6MwM5oF68iN05qihpEE/G58GBdawqFC1amKVGaeJTMq+
         vRFgRRxlpTYiM2DUTY1NCRry0sQk80yoDoIEtfev9LfAjUXRtNsh1RkMCzXeJ38SoyyM
         1WR2CaQs8KliG7Z+XDMXy47+PYT0P6ijuZkUDy8tzD/aPq5h+WqPrMYXN6WH4LzY2Sq9
         NsGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.73 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0073.hostedemail.com. [216.40.44.73])
        by gmr-mx.google.com with ESMTPS id t11si220073oij.2.2020.10.22.13.45.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 13:45:22 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.73 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.73;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 9E644181D304D;
	Thu, 22 Oct 2020 20:45:21 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1537:1567:1593:1594:1711:1714:1730:1747:1777:1792:1981:2194:2198:2199:2200:2393:2553:2559:2562:2691:2828:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3874:4321:5007:6119:7903:10004:10400:10848:11658:11914:12297:12740:12760:12895:13069:13255:13311:13357:13439:14181:14659:14721:21080:21627:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: tree02_40096f527253
X-Filterd-Recvd-Size: 1501
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf01.hostedemail.com (Postfix) with ESMTPA;
	Thu, 22 Oct 2020 20:45:20 +0000 (UTC)
Message-ID: <cdd73bbd6360a72b1fd41ee5fefc6a3b4a4e7688.camel@perches.com>
Subject: Re: [PATCH] treewide: Convert macro and uses of __section(foo) to
 __section("foo")
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, LKML
 <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, linuxppc-dev
 <linuxppc-dev@lists.ozlabs.org>
Date: Thu, 22 Oct 2020 13:45:19 -0700
In-Reply-To: <CAKwvOdmUPA9XupXwYHy_qT7P+LrUc+wseT79K_oqw=3y6bwLfg@mail.gmail.com>
References: <fe8abcc88cff676ead8ee48db1e993e63b0611c7.1603327264.git.joe@perches.com>
	 <CAKwvOdmUPA9XupXwYHy_qT7P+LrUc+wseT79K_oqw=3y6bwLfg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.73 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Thu, 2020-10-22 at 13:42 -0700, Nick Desaulniers wrote:
> .On Wed, Oct 21, 2020 at 7:36 PM Joe Perches <joe@perches.com> wrote:
> > Use a more generic form for __section that requires quotes to avoid
> > complications with clang and gcc differences.
[]
> >  a quick test of x86_64 and s390 would be good.

x86_64 was compiled here.
I believe the robot tested the others.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cdd73bbd6360a72b1fd41ee5fefc6a3b4a4e7688.camel%40perches.com.
