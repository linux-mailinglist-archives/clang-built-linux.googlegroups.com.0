Return-Path: <clang-built-linux+bncBDIPVEX3QUMRBG4GW35AKGQE3WRWDVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 3938025844F
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 01:09:17 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id t3sf1507546pgc.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 16:09:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598915356; cv=pass;
        d=google.com; s=arc-20160816;
        b=QE00YZpBbUTE19HkiQY//Pe5ijlXLU8rRohm4FVW6ph7TPiBx4UvvIxfLjUHhJgI1l
         cKFF6n0xHkbQaqAp3BkL6LZwbRQl2qKCxOkRNFjQ3Stu7Btmn3gX157oEQ++afPfGRrc
         xnDDmVbLP3Qg2TIB4USNkF2ReIqHKT8fBnovhyjqErYG+m7Py9LGyYJDa6oLlv/E3wsG
         Z2Z1AIPaF/L7lddH74BncpHDpsRqUOu7e1KLzX5XX/KswvAuKeP6YKuWv7I+gZp20ZED
         NcvuUHOdsRFVWHSh7bOl4Szzqh9eqFSbsopqbPkmt6N4xhvf9Huvlp9u7xTYqn6rozpt
         w9xA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=s2GdwMiNdz4w249rUspfbLOfFoCOJHmMyoW5Wvl4kCI=;
        b=Y1ukRu7nO57NNrFjLEQ22o5t1qKAhZUglJ58j85f0FnbnNCG0610KguEymW6FMrMah
         biH1VC6Tjbi91tTXX4Be4348C6PEvsgd+CukdzwErLhpaL2PiiJFexOz93XZ3rrclJiB
         0R3wH2SGK+m56pwZhxXeWqMIJPxL0Geyt3YJlvAH+jg0uMQ0zra/SP6Oyf+GjfdIjb8t
         E3f3i3f5wf3SunXqC9d6EBQGo6s+w8jnWoLGSy2uiXsuAWC+CnVPEQ9pSe11l8kugEsH
         GDdbBb1Xsi5I3zBGPnuN+5YCnaOkBom4fRVIKT2plqOnCQ9PfieJw5UxLCkRYNMtxg/S
         a5AA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s2GdwMiNdz4w249rUspfbLOfFoCOJHmMyoW5Wvl4kCI=;
        b=oaoWUACekbzDAUQ4l1xeRN4L4/UWDjF/Ib/shdnkHgyxTOFNOOW200wTRZLqCrVVo0
         DMtmQYmhu/5sqHgGpNlMSg1DOvII7MKCBt1KErmH4A3Xu5ZXKkDHfO/f/pD1m3yQ/w25
         AE4AXdtxZLSmWuJCJUIaPBYpl4KF+YYLqxH+/v2+yfwwkxuCgpkycXiB1A1F4f0f6Ffz
         yj3lRGMG6B0V1DGkDweo9pp5gQoqWNLlpWVNPsIu2aMFMH041nqYuy+xNppQHPXkawAK
         dIyb2MPNW/eKiRx/kD1klkHXQphrIdinEVVxt0cY2l6COnC8yTmVjU2VSeeD4y7pifmX
         eLsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s2GdwMiNdz4w249rUspfbLOfFoCOJHmMyoW5Wvl4kCI=;
        b=U1ZPVwtDMq9G7OcAI8Ytzr7P8vSGYxhGn9GSusPLFn6ITveQ48EiCNgqflgTvw7Dxt
         6poEdZzt9ep4ttnOwOTy2R6BKLSN0fAFhqQ3oZPf67RUx49dH/pXnT9d/2pnwwI0ylGc
         mPqL3hYz9PtrMNTkSHI4pp4sNy6BZ68gXUkS0HRLQNc08UUT6D+PGWBNs33D9ZnLBXvr
         kcwa7O4Ihl/zQYCZu4jYHlnDR6N0BA63aWzk5qLEjbCSWsqsHY66d48c0+jonpxmxea+
         3VB0KSbL3Q7VGEDKD8zyoN9lUnSrtZyDa9ecCEOLnPVIzgH+2v0Iuzqw6PMYlGqNYIwf
         rpbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hof2T+CTd7A9O9OxZTwsAcOWsPFk1VlfKOseJBVpOVNBAT0bx
	PLAQIyAdtmPjR78iIOy2pqQ=
X-Google-Smtp-Source: ABdhPJxZIcfE/2/1DMcLPbD7Yb7j+Wj7bHyC+Z3PcNGKowXDQnEKRpgztVfMocSh+YxliQhQm3wWwQ==
X-Received: by 2002:a17:902:8ec8:: with SMTP id x8mr2817030plo.217.1598915355964;
        Mon, 31 Aug 2020 16:09:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3502:: with SMTP id ls2ls435315pjb.1.canary-gmail;
 Mon, 31 Aug 2020 16:09:15 -0700 (PDT)
X-Received: by 2002:a17:90a:f298:: with SMTP id fs24mr1543866pjb.4.1598915355483;
        Mon, 31 Aug 2020 16:09:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598915355; cv=none;
        d=google.com; s=arc-20160816;
        b=Jkxd8cWKPUP52s7SZnj0RklW8HTSLp8JV+KBPJUMbgKOVDzn/laSqmGJDxMiF9kcWH
         VVeJ9HGS2yvY2uxvAHfvBXHs/Lzsn5w2hwaNDw+07HTx8V+1azd/0ijnnmrkwk6wbXRN
         4i417+Huru4XwtkVBPutzUAA/vtt1zaQs8uRPMV8/v2V3l26xW0N5dsnS7Hwh+ebzfx6
         /VB7VO17k1nFof9u2/XTWLb+8eco3/wvxgdfhKesR/0h5+r7a/Z3lihE3cDFur2mbshJ
         YEbX4YL+k/MhoSeyYn2EpU80meEpatue3kGfheOuJhczzlN6JuTVknLhDPj7fSjNp3y1
         wMCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=LGMV1YqY3VfSpVCKiTkzKQGCt6BRhqJu+lkB0dI4mNI=;
        b=k6XgUBI8xVPrTyqYJTG0n6R0VCxYFaiQa3QLAGTtizlVvDzg8+0dglB31DmeLYguWk
         bpAx6CbsKpZ26WNJgmvfdWBIhcwhnfPfLyR2Ri9AnRINNG+OzBemCIH+rsUTdlRvoR9S
         rNIWo/VjuMayZYiwuCSsaegdFgLAGrwkdHk7i1Rg/4kt4EZr95tm8qWMeOsAK98eZQjS
         YDxFPWapn34fbC/buUtQnrX8XAPJ0UixiiC4IflZG8gYuKxyGFaRyHPIk2T1bxsMDom3
         GXqVGpC4ijChGj+5XYn2CNQmkAhulya2cOcOiSnUwaA7h/EWuVWZxfmZsKz7ulQZPaB7
         Qlgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from ms.lwn.net (ms.lwn.net. [45.79.88.28])
        by gmr-mx.google.com with ESMTPS id kr1si77728pjb.2.2020.08.31.16.09.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Aug 2020 16:09:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) client-ip=45.79.88.28;
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id D4A4E2D5;
	Mon, 31 Aug 2020 23:09:14 +0000 (UTC)
Date: Mon, 31 Aug 2020 17:09:13 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] Documentation: add minimum clang/llvm version
Message-ID: <20200831170913.1a47d446@lwn.net>
In-Reply-To: <CAKwvOdmAoQU6PVF-gRaw-WjmyiQj0dMa-T3AmPaS+rFRJBk_Mw@mail.gmail.com>
References: <20200826191555.3350406-1-ndesaulniers@google.com>
	<20200831163048.0cbeca5d@lwn.net>
	<CAKwvOdmAoQU6PVF-gRaw-WjmyiQj0dMa-T3AmPaS+rFRJBk_Mw@mail.gmail.com>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: corbet@lwn.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted
 sender) smtp.mailfrom=corbet@lwn.net
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

On Mon, 31 Aug 2020 15:56:54 -0700
Nick Desaulniers <ndesaulniers@google.com> wrote:

> Where is your tree? MAINTAINERS lists git://git.lwn.net/linux.git but
> https://git.lwn.net/linux.git doesn't connect.  Is the web interface
> simply disabled?  (I try to track which maintainer tree patches get
> picked up in, and detect when our patches hit mainline).

I never set up a web server on that machine, it's never really seemed
worth the effort.  You can clone the repo and see your patch there, though
:)

Thanks,

jon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200831170913.1a47d446%40lwn.net.
