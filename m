Return-Path: <clang-built-linux+bncBAABBSGJYTVQKGQEQ5I3U7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id A58E5AA6F2
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Sep 2019 17:07:53 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id z4sf2860697qts.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Sep 2019 08:07:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567696072; cv=pass;
        d=google.com; s=arc-20160816;
        b=oyuqGQYICBvCHwAavjgj2YhzyK3XZokaH3dwcGvGoAIywUhjhU+1xnt9HX5ml4mK71
         lx/QcDhehh3l78Qc9ijpT+ivTqBDqflFadLtm9OzSz/sgWi9jUH4Pyznn9FLy5G3iITG
         L2mnInTu8EbnNEOsMAkJdseIVy9bPljUsy/C5E7a0YkLyIZ6nqkGso9AghUN8DCrgy4j
         HE9eao+8tbMIgdKmps2vgpdKGgXmU0vj0hI2CO5CkG0Y7bN2UIvddMq0o5Kb/wQXfmHk
         tZyy/4J5EAQTlpeMHfqkLgxGpVz0TI87QQ901R36MOqR8N4FoQsmcLDOQxRZkQm1fqNe
         pd+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=NaUQx5s/nnjH4wyv+vmZAwzHkL6IyneysPEGBFCy7pA=;
        b=0rMtqRX1ewB2bVa0ktYUeh0AOa8rpCsabr6/n9vgktoXmhm+/HNGSrrpj6JPNJZbT9
         YOQLF2hXzJIf9DAAFLn+CnWXOx1AP0B5ULjfiuwgEYIBGdrrsEvOkZwGxXlV70oBhe3o
         k7eLIuW1+PRSJq6VoUWDq1Ln2bESgveyQhQ21ayRj3K/mDQ+XEwNIXHsMcKbj2t4uJlz
         bQagjoD6oziW4V50EvYxewssjCyHjue+ybzHbdzdJvnapDgSzRhjjcUohwY6eEpLvG9Z
         DNmOJNmRjks8NWiPvWZ6od3H5boG9EXxIRCyCRV6uJdQMTMdZRcA7sxHzM3W8it4JReU
         WIqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of prvs=0151d7a294=steve.wahl@hpe.com designates 148.163.147.86 as permitted sender) smtp.mailfrom="prvs=0151d7a294=steve.wahl@hpe.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hpe.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NaUQx5s/nnjH4wyv+vmZAwzHkL6IyneysPEGBFCy7pA=;
        b=BBqT028xwdb0VlMhrNJEeOA0pc4A4tFRZQZU7N/Nio+Dr6BAUHDd097gaGT99l8u/2
         3vmu7bCy/WJelbnfOzGM0krab56B9rdnJ+b0F+vYdFK8KFkKRnfbmK7dQ5e1SLzVVdCD
         Ga03Bd65bcmeQLpquf8FLeEnj65VgX8Mffz49eGqQeBpnK1kth1SYXWiypn9cYWSM2gU
         uI5X0vJ0zXE0p+hCC57HbmdgO2JYEFdjif7EJhEaIl+dPxR12YxCsKHlsAg1poctXYPT
         qvng7sT02U/LpYsQROkPkNKQpLsAx62nE7wNVlel/clPADF5BlNo1ZeaskxRWcX12sKk
         AA2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NaUQx5s/nnjH4wyv+vmZAwzHkL6IyneysPEGBFCy7pA=;
        b=N5lAZI3xMTuyB1tQ3pCROvwLEDshXmPQHDygocQK3dyu5Z6zSipa6GWpBbtoZroKqT
         cjiOyzbqaKDD4B9hkZUHGln66j1iOjmS172uswF8cWn2Tgrw1MJO0a5Zn/5dEc9suVbb
         w08LfJZXpxc5ucxtaG1P9ytO68fp7LE9rxkHcfwfshLZ6x2abR3VAgC2fcsJUJ1x8JqV
         jtCld7ZhTvGEqqRMNoJOCL/ZN/MXxTfVB4KSmJJS9mbPbCtoqGlsxtoVeHZHzdUJ8D84
         jty/iEvQSx22gUxUgf7E6blqeuL7pQz6Z9F9ZNnl0Jk5FpPKjyhQgOJMTiJlrnoNR6Av
         q9xQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVmMr9lN3eabgNa3yWAU7mJ7+JTRUgdNGe29yZN351VqTYg7yuH
	p2FVGqsCzvPhypZnWEcRsmk=
X-Google-Smtp-Source: APXvYqxU5qW8/ytjUnV7K44tmVCwryz68fE5eY2zw1jbfZg44t1MTevmTQWrWM3eIwf3ZspErTTN3w==
X-Received: by 2002:a37:e40f:: with SMTP id y15mr3194010qkf.233.1567696072520;
        Thu, 05 Sep 2019 08:07:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:e315:: with SMTP id y21ls974325qki.12.gmail; Thu, 05 Sep
 2019 08:07:52 -0700 (PDT)
X-Received: by 2002:a37:6ec5:: with SMTP id j188mr2546074qkc.26.1567696072209;
        Thu, 05 Sep 2019 08:07:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567696072; cv=none;
        d=google.com; s=arc-20160816;
        b=RF5+7wtR0FLJQ9Nrm8TcYdp48JFEd/59pgkc17zA2VSAsZfrgd5H4SgvOB3f/i7Qr7
         Ag+WJzzVRcJ8Yb8lKdQkhbwZrNWS5Bd/PyjdKm3N7hw49oVbN+sv0KPb88S4btIEKxVz
         sF4/gVGbTi0qH+5NaCESCYElGSj8I5T1nzKizmqACrJkEtST30/CQQytn/piqj3YlYpd
         /JzsFDIDWn9YfGelZbxeBFZvFzOa8O7bExoVN6VB7j65u1mMut5VdK67WkIh0G3hxc9o
         UbboZH9XIHB0zsh/xLJAbXDUIRvAcq+i0Uhd+MDyOC8J4FKEq3OgxuSDyPR89TVaqST9
         jGnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=P3cu13O7rP6ClyF031gai/uS3310+F7ZnBsFGes7TPM=;
        b=MQIwGE9SQzkMu2xX9rbn02l7gBWzSdF66a6Jg2zae9TS2+N9NqfB3iD96Ji28JVoHU
         SK2eGPskE9EkFc+2ar75Mu0JAXwRXyARmfsTsKHS9TE21OKTsiVOKUAvWUsQiZBOURhe
         dp/EL1O9WHmgUGepucsvzjjNhHUZ3L/ShWLOlPhMC/BA2KCGEbnQxiuP2UNcVP7tXQBA
         aNwjZKc9E7sm/8iQRM9XBjo1+PO+FEvsttCI+WT4/YS1+FejZE3xuZiSoaK5q883ikFM
         ji57pNyKMkGjPNjNflRimBQAtpnMpThOuRM248GTab6iXMr7D+ApYSzGuLZCeCNnfRO+
         zDyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of prvs=0151d7a294=steve.wahl@hpe.com designates 148.163.147.86 as permitted sender) smtp.mailfrom="prvs=0151d7a294=steve.wahl@hpe.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hpe.com
Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com. [148.163.147.86])
        by gmr-mx.google.com with ESMTPS id k8si173620qkg.7.2019.09.05.08.07.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Sep 2019 08:07:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=0151d7a294=steve.wahl@hpe.com designates 148.163.147.86 as permitted sender) client-ip=148.163.147.86;
Received: from pps.filterd (m0150242.ppops.net [127.0.0.1])
	by mx0a-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id x85F78fS007860;
	Thu, 5 Sep 2019 15:07:40 GMT
Received: from g9t5008.houston.hpe.com (g9t5008.houston.hpe.com [15.241.48.72])
	by mx0a-002e3701.pphosted.com with ESMTP id 2uttq6mv5y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Sep 2019 15:07:40 +0000
Received: from g9t2301.houston.hpecorp.net (g9t2301.houston.hpecorp.net [16.220.97.129])
	by g9t5008.houston.hpe.com (Postfix) with ESMTP id 2D01E62;
	Thu,  5 Sep 2019 15:07:39 +0000 (UTC)
Received: from swahl-linux (swahl-linux.americas.hpqcorp.net [10.33.153.21])
	by g9t2301.houston.hpecorp.net (Postfix) with ESMTP id 8454356;
	Thu,  5 Sep 2019 15:07:38 +0000 (UTC)
Date: Thu, 5 Sep 2019 10:07:38 -0500
From: Steve Wahl <steve.wahl@hpe.com>
To: Borislav Petkov <bp@alien8.de>
Cc: Steve Wahl <steve.wahl@hpe.com>, LKML <linux-kernel@vger.kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, vaibhavrustagi@google.com,
        russ.anderson@hpe.com, dimitri.sivanich@hpe.com, mike.travis@hpe.com
Subject: Re: [PATCH 1/1] x86/purgatory: Change compiler flags to avoid
 relocation errors.
Message-ID: <20190905150738.GD14263@swahl-linux>
References: <20190904214505.GA15093@swahl-linux>
 <20190905091514.GA21479@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190905091514.GA21479@zn.tnic>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-05_05:2019-09-04,2019-09-05 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 bulkscore=0 impostorscore=0 adultscore=0 clxscore=1011 suspectscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 mlxlogscore=708 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1906280000
 definitions=main-1909050144
X-Original-Sender: steve.wahl@hpe.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of prvs=0151d7a294=steve.wahl@hpe.com designates
 148.163.147.86 as permitted sender) smtp.mailfrom="prvs=0151d7a294=steve.wahl@hpe.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hpe.com
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

On Thu, Sep 05, 2019 at 11:15:14AM +0200, Borislav Petkov wrote:
> On Wed, Sep 04, 2019 at 04:45:05PM -0500, Steve Wahl wrote:
> > The last change to this Makefile caused relocation errors when loading
> > a kdump kernel.
> 
> How do those relocation errors look like?

kexec: Overflow in relocation type 11 value 0x11fffd000

... when loading the crash kernel.

> What exactly caused those errors, the flags removal from
> kexec-purgatory.o?

No, it's the flags for compiling the other objects (purgatory.o,
sha256.o, and string.o) that cause the problem.  You may have missed
the added initial values for PURGATORY_CFLAGS_REMOVE and
PURGATORY_CFLAGS.  This changes -mcmodel=kernel back to
-mcmodel=large, and adds back -ffreestanding and
-fno-zero-initialized-in-bss, to match the previous flags.

-mcmodel=kernel is the major cause of the relocation errors, as the
code generated contained only 32 bit references to things that can be
anywhere in 64 bit address space.

The remaining flag changes are appropriate for compiling a standalone
module, which applies to 3 of the objects compiled from C files in
this directory -- they contribute to a standalone piece of code that
is not (technically) linked with the rest of the kernel.

(Fine line here: the standalone binary does not get any symbols
resolved against the rest of the kernel; which is why I say it's not
*linked* with it.  The binary image of this standalone binary does get
put into a character array that is pulled into the kernel object code,
so it does become part of the kernel, but just as an array of bytes
that kexec copies somewhere and eventually jumps to as a standalone
program.)

kexec-purgatory.o, on the other hand, does get linked with the rest of
the kernel and should be compiled with the usual flags, not standalone
flags. That is why changes for it are a bit different, which you
noticed.

> Can we have the failure properly explained in the commit message pls?

Is " 'kexec: Overflow in relocation type 11 value 0x11fffd000' when
loading the crash kernel" sufficient, or would you like more?

> > This change restores the appropriate flags, without
> 
> You don't have to say "This change" in the commit message - it is
> obvious which change you're talking about. Instead say: "Restore the
> appropriate... "

OK.

--> Steve

-- 
Steve Wahl, Hewlett Packard Enterprise

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190905150738.GD14263%40swahl-linux.
