Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFPB3DYAKGQE7YM3KPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 899A6134B97
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jan 2020 20:42:15 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id l17sf2489323pff.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Jan 2020 11:42:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578512534; cv=pass;
        d=google.com; s=arc-20160816;
        b=aSFBQ/7yuK8X/HDj594WvDk1M2fABsWeM1mh23r5+ovJ0VHeaXB4mJ1i/WwkOgStvE
         mI+ETPs58sOtd1MKV3QAsaP9piMrcI2NjFVvp5nqB7tOANAflQ05v1iaBKhItxwNd3/j
         DJQM2RCo1QxlCQWoq4V/qttCEa1eoTS4791oT/quFK+5v294teUX3IRQLTY+YCcIiNWS
         aPIfBgu3ujTY8l6tU0laKHXSqrIsv7F/yogl+mZS7MBpU3uTgqbWDUE0yFqM3bj6oj1P
         7BwUnqXbpyr2MYrABphHWJK9dtaqh++N86wqlUCxabaq6blcVdnipFn9eRPMcMro61Jt
         16FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=r9rpmIvZuPYKw1779q1lxlUgjuKb7380UDg1Gx981c4=;
        b=MOgMwPE0oAGU9XbsazrtpDXMczDkFT92m5G/Xzh7xp3Yng3mws0HwnAQmwTP8e7nZG
         152pEHBDRkRvQhbHzluVjHFszGz8XQe9H0GMrV86TtpYTSfhsR6wBiffmHRM2d5zkWdf
         e9UtEDUrf2dqo3p6UHNA9R8Jv8fMocfeXv33HNSmJHqL0TT3zFpkcTh2fEO1Tq7vU8ed
         sR74FEm2Kk4t9Mw/gnnqWJ+VxeI8/1SGbeaa+oCsQqcBotEf50oU1SA4H2bHyTDrC+qt
         T9c4qZSBvQ8qN8q2he4vg6cN5aS05k/Ortz4W+tzkn4KAOEQ78mMbXjm6qkQPDgeqVg+
         fHDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="eQVH85/G";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r9rpmIvZuPYKw1779q1lxlUgjuKb7380UDg1Gx981c4=;
        b=djchpuc1Kg598/AQxISIwM/m1FpQlC+sCceYpKOUzpyJUK/nS8vIG4F/1H5UpqVqq6
         FHwlvDM1s/AKJUxE9tTkutJX6mT8zCCykXbr/j8loVfWaR3oDrmjmNuQUpE9Zr1QNfLe
         nUbDSWCDUMb++o8x3REatkJ3DR8Xos3nIMULxNch5NKsl9aZLyl9Km8j75CKvHCVo6ZU
         Ag/jMZhQBtiyuncp50l5Uy1ol3gwk/vuctXMlxNRJRFIDp7qFWfbVtYP8nb22XDOsven
         dCvGWn7/1Zx4AeVW5G4SmHQwN/Nt8w492hmQLzxBuVqBhVNn+ZYe68qfMaNkC43zwU7l
         zQbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r9rpmIvZuPYKw1779q1lxlUgjuKb7380UDg1Gx981c4=;
        b=qejYQFqehHNTEKXjzA29vzRYuwZ4gKgu0h0BXXGKXEkqtpT6xAPoPJXdPRONyg1P8D
         g4bhD4Gdp9b+jWd4aTM7/RkDaM2oz6I/Kluu8aQrbfvwSVr8j4FhJiSm2z7wgVuvYA+A
         bk9ukgTZVgZJWSr8D2/Mt233xPPSyJoCeAzkp8kQY4m2418gxX+vhAjaydDPUxUFj8Ot
         jLsBpIQaPfW8KtVBq+tnkj6G/qAltPA/sblMtJut+C9Qr22u+qT7pBZt79x4POrNTGA7
         UZWq4bNhKykY3vcbjuJnSH82Y7YPPPo4uYwIvD5046emut8zOIHRQeRexrwjvxABNQJI
         BbTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=r9rpmIvZuPYKw1779q1lxlUgjuKb7380UDg1Gx981c4=;
        b=YFVHiDY4DieAIaNCvHcCgyRWIC3T3hKX/eCH1OMJFP8bEvKiX4ycF2BLirgtIpFAxQ
         e2S+HV0o0ioosNrf06kLZQYKpiIK0k5n7xjbblXd+MOwWX3pMtUeAczpE9A8e9qmENZw
         KbmCIrJZ5HaTCeuSzT46yk6T2Im5kl4+5SeACkl6CKMecNQmB0MjMS8BdUD6YFPOcsD6
         6U2dtoBXfzyS+HGuJ2vFzf7RlFdeT+6zNcEsYCnRpnvPtS/JDlBUdxg1JLn82oyM6qE+
         PyiSUlg9e303+wRk82t9neePH8n3pDjm5/D2fQsrQzSTX8+uQ/xy3Fbmo4Ds+EtFEP+1
         MjAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW/uZuAuTCliwSwqix4RMlUpm8tlIrv3Tzb+BsQpTNmtYWMHnoK
	kqiVC105Im2Ew37mCWxmOIA=
X-Google-Smtp-Source: APXvYqzAt16vz/qtAspvvm5cQJD9vdlsxnECYTcmsfDL1GGypBPsRencIKyBpjzao4rmJrIagSjeew==
X-Received: by 2002:a63:201d:: with SMTP id g29mr7170117pgg.427.1578512533744;
        Wed, 08 Jan 2020 11:42:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:28f:: with SMTP id az15ls1486368pjb.3.gmail; Wed, 08
 Jan 2020 11:42:13 -0800 (PST)
X-Received: by 2002:a17:90a:a88f:: with SMTP id h15mr321316pjq.32.1578512533374;
        Wed, 08 Jan 2020 11:42:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578512533; cv=none;
        d=google.com; s=arc-20160816;
        b=d15bTchgcaDdSku7wTmcloXhjkVnLOlvuSq4HCHvWsUAkrhyS+Ab8ATE4nhpvX0Iea
         VVCNRIMD5+WF4aIRJDV4W97TtFbceqzzWznODlVX7eJ8mqDBTwon3Yjk3u3CVFgVbjsO
         K9Mn4EMW2cx6QI0OQTj13mZkz82jPwgS2vm8NQsbb9mdbTgqs8opCAk+IVesV1Cp2fFB
         wbtO56OC4AFXcSrH7kBlWagl5iD8/nUsUYuSo9P7upx5GKNtWNasT16CL1NcFYbjgSdj
         +ZDK/SdMEo1CDv0MZRdYF+TkPECiIv0QcB1irmEFO6rf0eRQ5D0yWHv6uSBx8mjB1o5v
         Fwew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gBFQsbgiS1Jz6r0ApypER+mGw3gypTSA5ENy61xfYxs=;
        b=JluHLVtzRlGOdK3p4F0NT4xanjB/8BXt3zlckobo1x2HQ7foZBN91P7VRZdoy4H9S0
         5OGDikqOiPTkoYjtIqNsp7XHBC8ha59ijv7wtwmbe0R1u+n6BcoEPXBwNQ8cz7JtZtgn
         BrKtVXmEJXlj9jMI8hEG2kYa6o/3WwJBtpp2z2at03+k6sj9t37LPOs0vDojjdbGCWe3
         o2NxKmp7aR5p/GfaRl0u5X30HAaZJZ3Cg3tyOPnG7A8bbCttMsUntYYpv04SEtR9BQnk
         RJkJoSp1EINGgpoz7JYEpjQqornOkQBc9GzwKEp37nMcC8PSJzI6hjCWKxyil3fECV1c
         +IjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="eQVH85/G";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id o9si191370pfp.0.2020.01.08.11.42.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2020 11:42:13 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id h9so4714124otj.11
        for <clang-built-linux@googlegroups.com>; Wed, 08 Jan 2020 11:42:13 -0800 (PST)
X-Received: by 2002:a05:6830:ce:: with SMTP id x14mr5611525oto.105.1578512532796;
        Wed, 08 Jan 2020 11:42:12 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id p83sm1379869oia.51.2020.01.08.11.42.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 08 Jan 2020 11:42:12 -0800 (PST)
Date: Wed, 8 Jan 2020 12:42:11 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Current status of building certain defconfig kernels with
 popular distributions
Message-ID: <20200108194211.GA21285@ubuntu-m2-xlarge-x86>
References: <20200108073928.GA51655@ubuntu-m2-xlarge-x86>
 <CAKwvOdn2OqDjxF7KEua9PMKg8Du07x+LEpVkptB7S4v9g4f87A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdn2OqDjxF7KEua9PMKg8Du07x+LEpVkptB7S4v9g4f87A@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="eQVH85/G";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Jan 08, 2020 at 09:09:51AM -0800, Nick Desaulniers wrote:
> So looks like anyone with clang version < 9 has issues. No issues with clang-9?

Yup, that is a good TL;DR to me!

> Thanks for all the work that went into this report.
> 
> On Tue, Jan 7, 2020 at 11:39 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Hey all,
> >
> > I decided to test building 5.5-rc5 with the version of clang that ships
> > with various distributions, such as Debian, Ubuntu, and Fedora. I think
> > that getting the work we are doing into the hands of actual users for
> > them to hack on is important and I thought it would be interesting to
> > see where we are at.
> >
> > I have published the results in this gist:
> > https://gist.github.com/nathanchance/7127341d89914d335951af20b8bda67a
> >
> > I will eventually run these on the 5.4 branch since that is what most
> > normal users would run if they are using an upstream kernel.
> >
> > If anyone has any comments or questions, let me know!
> >
> > Cheers,
> > Nathan
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200108073928.GA51655%40ubuntu-m2-xlarge-x86.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200108194211.GA21285%40ubuntu-m2-xlarge-x86.
