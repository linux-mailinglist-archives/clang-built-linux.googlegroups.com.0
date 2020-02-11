Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBA44RTZAKGQE2FHWL3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 366E7159A7D
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 21:26:45 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id o1sf7998031pfg.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 12:26:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581452803; cv=pass;
        d=google.com; s=arc-20160816;
        b=sgGPr2n9iBdktOqZAP1ZYFQR9tnxC/J7YhJXTqxGRCrxobUr8oIVL5EMRHtkH+K9QC
         C1ZR0ry+oqkKOsn2taMG2eUvhUu/0RQYeH1P40Ze8VIrEeqxFDQYlJrfHnHJnyv0krVO
         TeOezhvNK1W2m+pSv85CgS7yLPd8E0cmLu2Tx3D9yt+/ttjHnNCFsqsXeAK6dYznGIyF
         6uwfJ9+Pi7yOmTpyrRjUaB46U6lFKf9DGO6CciY+meZrjcrnL2J2sUlGCjbU7gzF+8bw
         zbJ1YZThjDkpmZmp+b5LtcGOlTqez468ZyxKfrbx1bJgKEkqfkxUsLDtEIR0QCLKNcDp
         abfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=Gh2BwKSLCyaNhkxVIHuo7BpgTIyFWGlsbLZks+hPxfE=;
        b=e7DjNc5PikF15iNCTaPVvxjO+s/45mKSc4498ljFhMlkxf9MrHtRBU9fP2O0xIpTSc
         TeJNhbzzxAQeZWnQhzjyfzH3Ud0mZf8uNaeiSPcUbRy7iPLoFLOuz8KMD6CB5jZFDMeq
         w7+hCCWW34YzrTgneSMct/0BorpcxTcjirVuZJ6zsENZNVbJHF6ipz4NgwrDNVXT1foX
         YuQd6HqRq+ezVmBhmXgeGmeCaYPX6h1IHIS7Qa5jsdXHp0IcL73XE2WAYyzBOFUq8w69
         K7UxwZEbLv43psNNlzvXcYRA4bcK880fR3QavPCKWrLQ4/5PmLb9SMCc2i4Lkg+LYdax
         cBhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S3vxb9w3;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gh2BwKSLCyaNhkxVIHuo7BpgTIyFWGlsbLZks+hPxfE=;
        b=J3zFxn0yLknU0T3bPiI/YOxdmzEGgpKQQEyRCqGoubr7wZgKNGbL+Q8pyJKE5rLUyn
         M/RjLQVOVYWWdHZ82uQluMB/XhniIw56lXp0vN2tg4ZnDNW8SPDAkOKNHG5Sipn7DfDb
         ZDED75rcB1bhWV5Fc0sXsfKTqX25tUBhpo5vS1zj1NMrDPSqa1XgC8XKWl4LPDYlj4P0
         ZujkZaG+ea5myTHtK6midJmDkUSiAaDGrtZ0L9dURCxEnc37thifvNSjW1cOudUOvyow
         ohqFwV36o1A9gMjGJUTO+6yeDfCXwl+djnEnBheJ9ufS7xti5bAZyq1LbwNxiIu9wn3r
         nvrw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gh2BwKSLCyaNhkxVIHuo7BpgTIyFWGlsbLZks+hPxfE=;
        b=DIfRigVU89pxIfrVjbcOH4B/Op0holWyeC9lG7lb/I5eJ0uFlRQygQviopZLCPkjUH
         WUhxSN3rgG36PxM+8fR1sIHPzv7pcPEoXh8GohhHvutfUvOPa3YYzst1ljPX9KzAw+5X
         2WIrMGuuKmvjUunC9QKwOwh1ZSlGFAZsIyu076InXpHlx6+zugFkwbtwz1Z1MVSLlQ4v
         H1Wa9SGpvMaGeUqK02eitoqT3++WVvQSY7MlFr9XWJinDRGBzhbmK1wgc5AL4NM1XuNL
         qywwWuMwTMyh8UkCxwz295f2WGsvxH3Vwr6aBmAz4tx9MV+6UcOZvnUEDnoyyFtuRsws
         SR3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Gh2BwKSLCyaNhkxVIHuo7BpgTIyFWGlsbLZks+hPxfE=;
        b=QPYzvK63ip9F5VufDRCKsKjOesfu6v2ePV3PJrxMFsSUQcTwB6eM+Bd8kLNhg/4UEj
         K3Cai6NVXS2Q/NqlCnpBXipcxwgO0L0YfUS2H2hrGb5GI+pYUk3u1DVUu6uLJOwc2Z1c
         myfGQS1HEkTGkfb2RKkPPeSv80tiZXQFt2NJ9Eckx887j02SnEu7hQgNXelEs4/xJFPm
         Lot9IY2ZSPRlhEY8WUoZmbUKEj7xRGlDcYDy8vHsOoVKqt9gDovFBPuGh8NHH6Z2wulY
         QsbcOsxojqUnFTPFdqG0olJOQLyP/HPGpOejNzfMEWp6nODRBaluWhkS8rn8oaGc5gNs
         3Dpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUvueqn/GnUtoV3c4jd7lbsCppAbeoP8J1OogqErPCsyedTszVq
	4ylhPmB4th6luT7q4lh3t1c=
X-Google-Smtp-Source: APXvYqyFtLDhV1lLcrUdgLWgg6ZytyYC+Zj+GtySq+0PXjhPOtVKnTgspaltg0M14kXLWygqCDlkbg==
X-Received: by 2002:a17:902:224:: with SMTP id 33mr4698576plc.246.1581452803617;
        Tue, 11 Feb 2020 12:26:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8547:: with SMTP id y7ls5976847pfn.10.gmail; Tue, 11 Feb
 2020 12:26:43 -0800 (PST)
X-Received: by 2002:a63:ce4b:: with SMTP id r11mr5041682pgi.419.1581452803147;
        Tue, 11 Feb 2020 12:26:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581452803; cv=none;
        d=google.com; s=arc-20160816;
        b=MYgRcLrNobSljLjPpnjbwMKk4SHEwgwRoxsd+W5tW545FeYJ/SnAetrykPUrRMBydf
         9i+lct4BkxO5EJZVs4VNB0zMo8LGCO9UEKv+Vz7+JbuwYBi7XDKEN1mvkXIjBBSTnbcd
         JEQ5m2poiGhWO/zv2nzsH5NWJIlgR5tnJomjnpE2IvSMfJoGcIIMZQ0fh7pfyU6ESSnQ
         my1wBway2x15eFkhWtRIW5a0E/uvLgxcMZJo9ORReCUs4p3FKNvjEeDtQmWOLLHNfQVz
         qYBxI8ixRzAz6lC7humLRpAHH14vUoq15U0i6shvu+XOoq/r4k7mumjLqVSdAAs8wwss
         0MMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=8xXHirnYMsfW42qWffCZKCgeTYoQTR/f/eFrssIvcBc=;
        b=Lh0t/AuF5bn3KT8sDmV1tstzLmTQWgC8f4xaWZXVPVdHqUR+YT1TSBgjKee1kcNT/M
         6+Pg7hShsFxZPseOvOQECqmsOKOLocHd/eRcUbU8rBCUquMuBs59YHMHm7i76CsOlEXi
         SykIin7ETCYjR2xdoHg1A4Lcia2a2Nm9ozWftfwORK1TJLBGpMrQ+3u6wwJjttl6o3Ww
         kWRGDz/DbR2+Bs7YEimx0LHAvh26eQlK+N+p2gnelmnByGowLDEEAlD1U2am5EvQYQzn
         4JlFkvwUHsooPrpzJ4Cl0mmYaTJ0ig5SJ4dA013sDwIVkCvm8HSs29Oo9gGrEfUaRw9k
         m+vA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S3vxb9w3;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id 8si264186pfn.1.2020.02.11.12.26.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 12:26:43 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id l9so14101205oii.5
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 12:26:43 -0800 (PST)
X-Received: by 2002:aca:cf12:: with SMTP id f18mr4119986oig.81.1581452802362;
        Tue, 11 Feb 2020 12:26:42 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 17sm1567260oty.48.2020.02.11.12.26.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 11 Feb 2020 12:26:41 -0800 (PST)
Date: Tue, 11 Feb 2020 13:26:40 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Vasily Gorbik <gor@linux.ibm.com>
Cc: Christian Borntraeger <borntraeger@de.ibm.com>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	linux-s390@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: -Wtautological-constant-compare in arch/s390/include/asm/page.h
Message-ID: <20200211202640.GA12483@ubuntu-m2-xlarge-x86>
References: <20200208125714.GA9164@ubuntu-x2-xlarge-x86>
 <1f54ae4c-8748-496b-0833-80749d8d4f6c@de.ibm.com>
 <your-ad-here.call-01581426089-ext-6170@work.hours>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <your-ad-here.call-01581426089-ext-6170@work.hours>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=S3vxb9w3;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Feb 11, 2020 at 02:01:29PM +0100, Vasily Gorbik wrote:
> On Mon, Feb 10, 2020 at 08:55:46AM +0100, Christian Borntraeger wrote:
> > 
> > 
> > On 08.02.20 13:57, Nathan Chancellor wrote:
> > > Hi all,
> > > 
> > > We noticed that you all added support for building s390 with clang,
> > > which is great! I have noticed a few warnings for which I will send
> > > patches but this one has me stumped.
> > > 
> > > In file included from ../lib/crypto/sha256.c:16:
> > > In file included from ../include/linux/module.h:13:
> > > In file included from ../include/linux/stat.h:19:
> > > In file included from ../include/linux/time.h:6:
> > > In file included from ../include/linux/seqlock.h:36:
> > > In file included from ../include/linux/spinlock.h:51:
> > > In file included from ../include/linux/preempt.h:78:
> > > In file included from ../arch/s390/include/asm/preempt.h:6:
> > > In file included from ../include/linux/thread_info.h:38:
> > > In file included from ../arch/s390/include/asm/thread_info.h:26:
> > > ../arch/s390/include/asm/page.h:45:6: warning: converting the result of '<<' to a boolean always evaluates to false [-Wtautological-constant-compare]
> > >         if (PAGE_DEFAULT_KEY)
> > >             ^
> > > ../arch/s390/include/asm/page.h:23:44: note: expanded from macro 'PAGE_DEFAULT_KEY'
> > > #define PAGE_DEFAULT_KEY        (PAGE_DEFAULT_ACC << 4)
> > >                                                   ^
> > > 1 warning generated.
> 
> This warning only shows up for the decompressor code and purgatory which
> have separate set of build flags not derived from top level KBUILD_CFLAGS.
> For the rest of the code this warning is suppressed by:
> Makefile:
>  740 ifdef CONFIG_CC_IS_CLANG
> ...
>  744 # Quiet clang warning: comparison of unsigned expression < 0 is always false
>  745 KBUILD_CFLAGS += -Wno-tautological-compare
> 
> At the same time both decompressor and purgatory Makefiles include
> CLANG_FLAGS into their CFLAGS. And this -Wno-tautological-compare is
> clang specific. So I believe this option belongs to CLANG_FLAGS
> rather than being included into KBUILD_CFLAGS under ifdef
> CONFIG_CC_IS_CLANG. But this raises question about other clang
> specific options inside that ifdef CONFIG_CC_IS_CLANG. Should they all
> be made part of CLANG_FLAGS?

Hi Vasily,

I am trying to turn on -Wtautological-compare for the kernel as a whole,
hence me trying to deal with this one now :) That flag controls a bunch
of useful subwarnings that can point out potentially problematic code.

I think that it would be worth adding warnings that we want disabled in
all code to CLANG_FLAGS but as of right now, this is the only instance
of this warning that I see within the s390 code so it is probably just
worth silencing with an explicit comparison (!= 0). I will send a patch
for this later.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200211202640.GA12483%40ubuntu-m2-xlarge-x86.
