Return-Path: <clang-built-linux+bncBCVJB37EUYFBBZ7RQH2QKGQESKWT4AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id BADED1B4B3A
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 19:03:37 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id q43sf3329854qtj.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 10:03:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587575016; cv=pass;
        d=google.com; s=arc-20160816;
        b=BFn1fyKgVOt4/ilFeutXKs0ofnUiqngwXilK+E/fYpoS3xz6neigKc/jscyKKF34+a
         5NMKmEyHcXVt8q/sCnc+uy0LyHZGZxvP9BNEXGHugBpQ5ZF0zEgeVUdBKujsh/XDUUTt
         m9M0V4GHWPjYtNvucgOQ/URiO7R/FdhiIP5qvReACqNTzjx8DSWh1QK0sz8ka6aohCsC
         AaIC9+abAv+19ar7sbS+TAwgD/cK4D8m40WTIp9c4Ixz8EGDRoi4ctvT40igMIsPPMnW
         11TUaw9PJW4g5JR1BcG974f93c6sTW/wPxUDtAAmSuizBwVKFS5X5TjVstnSHgIJUG8l
         GheA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=iRSgcrSbV76hL4IcW3kEsT6mzCsEpp0mpDPJTNrx4oU=;
        b=mrTq6v6thkMxQb67/3YmxaHVRpvlY7PNTiV9Fe5Rm87bzCRek5ckA33TZZ5EVtGj8x
         F6mMACDZSvsFWqkSjGd33LtmjL/JXNB15Ew3rewKuQ77hI7XAmYxcsUMxdDv6PwVkfM5
         OSwO+7C6EghRranjtEEDYgWpbMONVr/Ryq+HT9K2Bp5UrBYdEyDtegB+/vXek7cdlvTv
         XeQnZs2Mp5FJeJI3v99nyIJN79Gc5hERacCanctyL/xab+javCkSRXpvTwBI0KzgerTc
         CD/UqN/MKRfnT1CgWCTY0+A22/o85sCPY0uXqXb+9BnmNWVN0HAhdDbIvu514vzA05XE
         kJ6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AxpNiQo8;
       spf=pass (google.com: domain of jakub@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iRSgcrSbV76hL4IcW3kEsT6mzCsEpp0mpDPJTNrx4oU=;
        b=WjdjhwdkFUt5aumjD+ktzMTsHKvDs1QVMqVygrxcl1I/L+L9h+2sMWtTAhaqOhuKgi
         rXdGJfAIwtYoWkyKJ68PBs9U5SLioRIfFYipuPLphiwhJuVJ6ohG0LU4xDcHQmUclf6v
         VGNUkzImEQ92AGvDCIbpn80VVJ56OuSAkDE/GvCzDhxflmOzyNNve82yJ2NFO+7uti0M
         8pQKqbn/K5dNTZQ6f6p9zipjBjVXah6JqhzlMw+ootCUNGZpS5v8pkoycLDOOwiwp51E
         /dqHcLruH5FZmMYr3IaUfGAla0/htnnXPqHz+Q8VEHBugD167/jRbzw6nAVKaMBf+JNq
         vZIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iRSgcrSbV76hL4IcW3kEsT6mzCsEpp0mpDPJTNrx4oU=;
        b=ivybzkG724JLndrG8wShWzTYKMpQ1S//5rr83g02aTPOmBgVb+emdl3+7KS8vrK5Bp
         aAjDB28JW0kG26lf8fWwzX9QlPHOugDEdrjOB5IIPI3DdDrEpMs1WNdfv7UFAK+WQaHG
         Uewgzsk515l0QmwJ6IYXCKRyyiH8EqZVXhmNeD8IiqreuUsexiJin13Z/Se3zaMF4A9W
         7LgtKSbeezJFrtksDlgI0uVIDdCJDQjV5lzsslaJmYzC6eg+WA7wvbPjN39AYcgY7VF4
         3tjAG6O7sv1bRkpNT3RMIhI64C3/8qEOCmGWvvUXe770Fvavo2JIAQzQS0AnG27w2FRU
         IDoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYv2KkkKiUX8PxD02slUMDiQwgYQyAe+szdKGd/ZMDhW749uuLi
	5/kht0V12bdTetDKFfDSfSg=
X-Google-Smtp-Source: APiQypJgzmAtt74zl1QzbekcZ+I0ozhWZVyMT//nK9HFI+C5RHYGy5OWm+Vu2IyO9rZyk09mXUjpOQ==
X-Received: by 2002:a37:cc7:: with SMTP id 190mr27748485qkm.44.1587575015415;
        Wed, 22 Apr 2020 10:03:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:9ba6:: with SMTP id o38ls747398qve.8.gmail; Wed, 22 Apr
 2020 10:03:35 -0700 (PDT)
X-Received: by 2002:a05:6214:130c:: with SMTP id a12mr16097130qvv.192.1587575014904;
        Wed, 22 Apr 2020 10:03:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587575014; cv=none;
        d=google.com; s=arc-20160816;
        b=AinTwbbepqDFDpXxXZZ572aXgZMf3ub81I5yLFkYEsVkVkvV4SVF8mNKguMM1yiu1x
         fzm44H+FjIDcrJQzGxJ6pwivTqpPdMV6PY9qkf+YVa2iShLUI46Ct/7R8M/yR9WMQ0ER
         cIZ9pTNuMJe3/WqGUP7v9SBTrP6qXiTiCK0k6ItiHNuDwO5TVBbGsbm279E94yMnKeJ3
         P48Mrd9F2fPtTpDUTYShwsua423oL4ZyfHaRfULqgdp4jcxEupVzIKV5HlsoJvH+857B
         ENVZf4dyuI7NzuNepLOiTuqlmhCSfDN2X19rh1uFG98x9BzcCe6jGFlYokRCTpqpruu7
         gDxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=K+Vw95hzbBrvACE7p1+DGBuatgWYBdD+qziGcMPXbJ0=;
        b=N6OegSIDxzxJBrSdb6NHo1rt+3H4HqJILCQmlKpmQxEfaU90KIGp3u2AmzfpaMHZ35
         pNH9mRfIhfZ65t5G7aeW8yZc6APJGso5zheKfsKOpWoJ0Tiw9++9wo19RW/9ZFIgRE3m
         DJmVeldY9ScqYZX14wD1/8S/ZduNo6RNew/z4rAYwmkmiApuLlDhCvrVuD7ezqsQzP8C
         E8fgDQejUZyFP/zx1280g/M+qxvWUDZwbGgbWR0G8ev71/mTMbtbIOF6ziw6385Pgf0q
         s1tdl2Dbujczel1uV9+e/haMOI2rY7OU8QHr0pE/8ctgZv1QgOYazb1fdxtDzg66tnOR
         s5Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AxpNiQo8;
       spf=pass (google.com: domain of jakub@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id e7si429806qtc.5.2020.04.22.10.03.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Apr 2020 10:03:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of jakub@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-87-HYUCnAmwNdGbaFJx3Q681A-1; Wed, 22 Apr 2020 13:03:28 -0400
X-MC-Unique: HYUCnAmwNdGbaFJx3Q681A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 88DD918B9FC3;
	Wed, 22 Apr 2020 17:03:26 +0000 (UTC)
Received: from tucnak.zalov.cz (ovpn-112-104.ams2.redhat.com [10.36.112.104])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 231BE10190D6;
	Wed, 22 Apr 2020 17:03:25 +0000 (UTC)
Received: from tucnak.zalov.cz (localhost [127.0.0.1])
	by tucnak.zalov.cz (8.15.2/8.15.2) with ESMTP id 03MH3AfF003682;
	Wed, 22 Apr 2020 19:03:15 +0200
Received: (from jakub@localhost)
	by tucnak.zalov.cz (8.15.2/8.15.2/Submit) id 03MH2pcI003681;
	Wed, 22 Apr 2020 19:02:51 +0200
Date: Wed, 22 Apr 2020 19:02:51 +0200
From: Jakub Jelinek <jakub@redhat.com>
To: Borislav Petkov <bp@alien8.de>
Cc: Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>,
        Peter Zijlstra <peterz@infradead.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Michael Matz <matz@suse.de>, Sergei Trofimovich <slyfox@gentoo.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        "H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] x86: fix early boot crash on gcc-10
Message-ID: <20200422170251.GQ2424@tucnak>
Reply-To: Jakub Jelinek <jakub@redhat.com>
References: <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com>
 <20200417190607.GY2424@tucnak>
 <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
 <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de>
 <20200422102309.GA26846@zn.tnic>
 <20200422114007.GC20730@hirez.programming.kicks-ass.net>
 <20200422134924.GB26846@zn.tnic>
 <20200422135531.GM2424@tucnak>
 <20a91f2e-0f25-8dba-e441-3233cc1ef398@suse.cz>
 <20200422165339.GE26846@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200422165339.GE26846@zn.tnic>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jakub@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=AxpNiQo8;
       spf=pass (google.com: domain of jakub@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=jakub@redhat.com;
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

On Wed, Apr 22, 2020 at 06:53:39PM +0200, Borislav Petkov wrote:
> > $ cat asm-detect.c
> > int foo(int a);
> > int bar(int a)
> > {
> >   int r = foo(a);
> >   asm ("");
> >   return r;
> > }
> > 
> > $ gcc -O2 -c asm-detect.c -S -o/dev/stdout | grep jmp
> > [no output]
> 
> That is a good test to run at the beginning of the compilation I guess.

If it is x86 specific, it can work, though I'd suggest -o - instead of
-o/dev/stdout and being more picky on where you want to match the jmp,
as you don't want to match it in comments, or say filenames in the asm file
etc.  E.g. require that jmp must be preceeded on the line only by whitespace
and followed by whitespace.

	Jakub

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200422170251.GQ2424%40tucnak.
