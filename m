Return-Path: <clang-built-linux+bncBC7457HKSMPRBHVQU2CAMGQEYGMUMWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-f185.google.com (mail-pf1-f185.google.com [209.85.210.185])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A5436DDFD
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 19:15:11 +0200 (CEST)
Received: by mail-pf1-f185.google.com with SMTP id s23-20020a056a001c57b029026369efe398sf16602109pfw.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 10:15:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619630110; cv=pass;
        d=google.com; s=arc-20160816;
        b=kUk2JMn8f6RWVmHG/qmA8MnqyMCVP11ETB5apITHZJlerlZpn/EMp0/6oE1q/9EddQ
         e2t/D/zMrTDG0JvW3RVbxbaaJ7sWec4z765+NinXUqNJ4TwMinJUzhkgU2ni/CCSLcO7
         6HFlwr+ckIrXX3ijsQiFxUlnftm8zQlZAHkbqcDGuU7+m3ODQyJLuFVgunEHD/NxaPg2
         WPWXsPMhIf44dTWbvB5ZCh9KGuA2O/VeUibWh2PNW1cEgMQ8Nf9G9fV9nkJe7OV006Oe
         O6czMrY+Pxt+by+V8WyB/ZnFGbE2wkcknwbh9noxom6+r7jLaw/X6+nN6q5caEZcEccP
         s8lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:thread-index
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender;
        bh=ykZEhU4NQDyl6UCasrJ9Ke2hqiDqbnzie3BlIciHu5A=;
        b=GwewIcCsz0GxME1a0G5zUia56rpoB9cBvhIKN8knMGb//s7Uo1h9VJPdDYhJ2E8iTV
         zlYpYJXihuQ19dRES+wZICUJTNRPcEDC5gxBatFC7FEKFXzg7vRtnZcmHFg6k59gwsQv
         oXaOg6Hhq8gjG7mLSF6pCPz/ZszWD0xmXowtPoWvlDDIKjIYJN81gySDz8/osX7K/7lI
         QfIfmdBusAMPuuIWe2K9eho7UG4HJ6OjDlnWIidPtbTPC1m5fUZC6BDl0HzGeMC38O+6
         g0y2RF/d6QHDbsHLBI9XyOX7hPczUhlHeGW13LODOM1wnmYx8aTLWCIxMT0famOKmDgi
         AaSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=cOFJIIat;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :thread-index:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ykZEhU4NQDyl6UCasrJ9Ke2hqiDqbnzie3BlIciHu5A=;
        b=CexdUc0GzrtxnHmuXRZnxruo2/qmK38tvNb/chw+H7AZFc9EHiROa+iQPV43B7Jksd
         10aelkFBFYhnPA8mcoIXAqHWExeAvGhU5wl7M0+JDz4+kRMCBRIZHvqzXLcAnK6gVxZz
         gXeiSzKpfXZNpw1JsUjQBIFpjyptqHP6Yg61lJxnm2diABqCxP2tpKlFSWMuWvYvViOf
         ok6Y9yJCZwZtAqPPF/uV4nCCN9tnFTQReIs+UQn26et/F9ZGOnURHuqUiLZ3sZWyuPLf
         VK/oejgDnR/9xv+7QNjqwvlngA3dER7U79BuMzlerZWTkrKLhpE052X5Rg3U8x9Pjl3l
         02zQ==
X-Gm-Message-State: AOAM533G/lyl4nBjfLp1N0KGktO6N5ZyM97w4y3+2gXHARRTSPDB7Xru
	/L3AdY1OvFRANfpJvVFupmY=
X-Google-Smtp-Source: ABdhPJxXbEwx4AVl40wC8e8cOKhIBL1sBqEIFJANk1FcKqDr2QudHKdGnbbVWcBkwj83/T1ELGNyhw==
X-Received: by 2002:a63:135d:: with SMTP id 29mr21136745pgt.83.1619630110192;
        Wed, 28 Apr 2021 10:15:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b710:: with SMTP id d16ls249998pls.3.gmail; Wed, 28
 Apr 2021 10:15:09 -0700 (PDT)
X-Received: by 2002:a17:90b:1184:: with SMTP id gk4mr5190742pjb.129.1619630109652;
        Wed, 28 Apr 2021 10:15:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619630109; cv=none;
        d=google.com; s=arc-20160816;
        b=pN/p7/mmVVuWfuga9ecUZ4zBHldGF1YHMKctpCQIvwi3nIBoKLkDPi7PIbNs+ivFBh
         JTha4sCB2Iye65obQ2uVEz/2jfW4xRqyfza8I+mgRjUcbVdXxP+MlIIk2yPVEvZpvKFr
         l1Uo5VFBRJ4GgtHF6ajgOKVmF60SKUG0Vlyb3yJF9I8GrCjZGo6OoZqFNa7PJCExDSeW
         gLLbSgsdDsCszOMOwnYBIeEJ4P7mAR1YY/YOdGkuIUObgdw4ln+TXHQVCyYG1UhaSWU5
         s4UoqZqvTsBNQLNK260ueD8UWv4pK+jAooGN7dIXMBCuOHOdjYLtf6Yhgz3C9X5Rx4JD
         hsXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=FFYWQOSa7CZWM1VVRFUV/mxuFAYPWKq5i579gAiLrkA=;
        b=vtdMbQdyX8Q1l0hdK8qajhPae1Jr8uNtI6s3P6BRHgI1GxtWZ7IaUY9Wnk6Tx1WQe2
         62///5DqAjgXjqbCdWSDqxFAn7CcSvURUx+G9FlM82SV+aViRZ976Tl2dLMCy3M2vCWH
         Uu+q2YpNrRzObEBizNPi02YWoBJPuio2a1Nephzd/LvqDh9iKhWLL+Dp22PZXOOWqpUY
         OaLxIIyV97XSl+/L7pTWAWEJGkS44T/XYratXQmiOMkIj6/cGywZ1SpD5cTyh3ex+L3M
         cCKuA3yZZSd77pA7CAyHlto0egvMnktv+0lMwUqEc+kz3A9PrKg4ulzNy60eZQ7iMm+Z
         gt1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=cOFJIIat;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from so254-9.mailgun.net (so254-9.mailgun.net. [198.61.254.9])
        by gmr-mx.google.com with UTF8SMTPS id y17si53564plr.4.2021.04.28.10.15.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 10:15:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) client-ip=198.61.254.9;
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-west-2.postgun.com with SMTP id
 6089981b2cc44d3aeaeac570 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 28 Apr 2021 17:15:07
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 4F56DC433D3; Wed, 28 Apr 2021 17:15:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	PDS_BAD_THREAD_QP_64,SPF_FAIL autolearn=no autolearn_force=no version=3.4.0
Received: from BCAIN (104-54-226-75.lightspeed.austtx.sbcglobal.net [104.54.226.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 38EABC43460;
	Wed, 28 Apr 2021 17:15:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 38EABC43460
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Nick Desaulniers'" <ndesaulniers@google.com>
Cc: "'clang-built-linux'" <clang-built-linux@googlegroups.com>,
	<sidneym@codeaurora.org>,
	"'Manning, Sid'" <sidneym@quicinc.com>
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com> <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com> <025b01d7386f$78deed80$6a9cc880$@codeaurora.org> <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com> <034f01d73a9d$fc4ed420$f4ec7c60$@codeaurora.org> <028801d73c48$d6bd21b0$84376510$@codeaurora.org> <CAKwvOd=7oHJKyb89OJ0xU22krAipZOhase8EovdvgqMqzPp=3A@mail.gmail.com>
In-Reply-To: 
Subject: RE: FW: ARCH=hexagon unsupported?
Date: Wed, 28 Apr 2021 12:15:04 -0500
Message-ID: <02a301d73c52$08f1fb20$1ad5f160$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHA6GaHPKlqiI34kZpdCyOyqmKBQAItWAQVAr2ClWoDAPOEXAJITqGjAjip4FACC4XbUgHAlM/wqnUKGqA=
Content-Language: en-us
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=cOFJIIat;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

> -----Original Message-----
> From: Brian Cain <bcain@codeaurora.org>
> Sent: Wednesday, April 28, 2021 12:00 PM
> To: 'Nick Desaulniers' <ndesaulniers@google.com>
> Cc: 'clang-built-linux' <clang-built-linux@googlegroups.com>;
> 'sidneym@codeaurora.org' <sidneym@codeaurora.org>; 'Manning, Sid'
> <sidneym@quicinc.com>
> Subject: RE: FW: ARCH=hexagon unsupported?
> 
> 
> 
> > -----Original Message-----
> > From: Nick Desaulniers <ndesaulniers@google.com>
> > Sent: Wednesday, April 28, 2021 11:50 AM
> > To: Brian Cain <bcain@codeaurora.org>
> > Cc: clang-built-linux <clang-built-linux@googlegroups.com>;
> > sidneym@codeaurora.org
> > Subject: Re: FW: ARCH=hexagon unsupported?
> >
> > On Wed, Apr 28, 2021 at 9:09 AM Brian Cain <bcain@codeaurora.org> wrote:
> > >
> > > > -----Original Message-----
> > > > From: Nick Desaulniers <ndesaulniers@google.com>
> > > > Sent: Friday, April 23, 2021 4:40 PM
> > > ...
> > > > We'd be first in line to help build test such a patch. Please
> > > > consider cc'ing myself and clang-built-linux@googlegroups.com when
> > > > such a patch is available externally.  Further, we have the CI
> > > > ready and waiting to add new architectures, even if it's just
> > > > build testing. That would have caught regressions like
> > > > 8320514c91bea; we were down to 1 build failure with
> > > > https://github.com/ClangBuiltLinux/linux/issues/759 last I looked
> > > > which was preventing us from adding Hexagon to any CI, but we must
> > > > now dig ourselves out of a slightly deeper hole now.
> > > >
> > > > Is this patch something you suspect will take quite some time to
> > > > work through internal review?
> > >
> > > These patches have completed their internal review.  I have pushed
> > > them
> > to my tree at
> > git://git.kernel.org/pub/scm/linux/kernel/git/bcain/linux using
> > for-linus branch, up to commit
> > 43810cfdd2e6af9c57c0975e1b920f2b18c484b6
> > :
> >
> > Are you able to link these with lld? I see:
> 
> Sorry -- I used " KBUILD_CFLAGS_KERNEL=-mlong-calls".  Sid, since this seems
> to be required maybe we should add it to the kernel build config?
> 
> >
...
> >
> > (Looking at the builtins, I'm curious what are `:endloop0`, and `if`
> > like
> > statements?)

":endloop0" is a packet attribute that marks the end of a hardware loop.
See PRM " Loop end " (8.2.2)

"if (p0) jump label" is an example of a conditional jump, " if (p0) r0 = memw(r2)" is an example of a conditional load.  If the value of the predicate register is true, then the jump/load takes effect.
See PRM "Scalar predicates" (6.1)

https://developer.qualcomm.com/qfile/67417/80-n2040-45_b_qualcomm_hexagon_v67_programmer_reference_manual.pdf


-Brian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/02a301d73c52%2408f1fb20%241ad5f160%24%40codeaurora.org.
