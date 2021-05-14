Return-Path: <clang-built-linux+bncBCJZRXGY5YJBBWVC7OCAMGQEN25KG6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id B869E3810F2
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 21:36:59 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id d3-20020a9287430000b0290181f7671fa1sf681824ilm.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 12:36:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621021018; cv=pass;
        d=google.com; s=arc-20160816;
        b=GMoK7Muvh8nXBKmfGKThPiG9oYEa5zdzfdJhR81hhObeDwp+a119wcr0557SJ8wCDq
         VeRMz01cOtyTnmmj8uALSZkd6dukoW3yIZqQF+SvXKSwnZD0LHSPQ3Lv8EgGYZ/zTDhc
         JJVZ0yURKZwlOkhDzCZTA/uo7JUwlsqr/FU07JQsg8zAxhbfC971xqp/TBUeKDswcgJ3
         kRKQ4X5Ir/Sh1rDrbrIqEAlHG4Mvu7olICpNlU6vt8C2T8t9hgqzgHh8KgRFCotkPJdQ
         7Iia3C9wbCH2+I5PQflFg5E+uZeILqXlWMBSbldR2Ph1VN2EaDWxL6TtortMsN2FfJX1
         P6ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=nZbBxKsoT2Stuq+S6FCyYKJXTX8QM19DUxEC3oEFW7A=;
        b=uBU05xTs+Tz3A/Ic0efQhVG9ywes4fPwbatMJbR2ncSjGmanFiwgxasJLLayHSevUF
         3O+UX/3bWyMWXionuDqL597+mJTMom2DMGzPpWjRrMojq3OOjGeSzZY4eld9GQQv9bky
         gu9ImstzG+NxJPqA3tQ4Z7lf1QUpyUTEv9posNeLQKtVRpxtBOFViB82tJt8pzpaW2lR
         Au+VFc/fQb4lQ+nlmkcNL2on8De0w4w7OIHXIRpG89uaDPEIGbTUFBmZIoyirV5yW4EH
         SfkRgEcNCdaWlLX8mGP+DCweBQVYx9NnFiVDBi02BMLqV8HU6WR8gyDHRC9XvBYNSWSu
         0aIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Nw1yr7gm;
       spf=pass (google.com: domain of srs0=/njc=kj=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=/nJc=KJ=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nZbBxKsoT2Stuq+S6FCyYKJXTX8QM19DUxEC3oEFW7A=;
        b=pggW4Crtb5WSV8GzxDiS60EWW8c9GDpGMMelEY2T4pQyS8zj91Mnhj4zI5TaU5/6rJ
         R+MUfUK9QXsaQ0BI8xqWozcGnV7DYR95MQM2VEnlDUoQ71PDdUq5Oc5ErQW1/HWbis99
         wgwpwU2JxKCB2rCcoCxANsFfsO2/kZF/Vf3hp4Rp09K4wRv+VNhNRawa7wwMxKSREEjB
         lNF86B6G+1jJRvSh8fdOtdtwjGVPaJJm/M8USlQ0u0EV7ibSGuXafojnmssqjZaCjB1c
         PR6SDGjMb2FTCzrTTqSYBdnIdwF92/lmIvFTN081lnxf2CanNNW8K4u1XLenoJeRHGU+
         dpWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nZbBxKsoT2Stuq+S6FCyYKJXTX8QM19DUxEC3oEFW7A=;
        b=Q0v+afSFZDiWFHnjpfXB0VfznT81gU0nVWBZ4eWiauOotNSZha9TWiP7V2H2x35hT9
         n59aqN2jOS9uRuy97Z3kXVvybMibH+93u+dz0V1YJerCewUCHq+hUCmFVCQ3A+ap3m5z
         gjN75BeKD0YLraUgcUYeNxQCMPjkKXVP1mRyJoxTwURE5kBPBlYIAyFlGFds9SzqMAeP
         WC82SnvGR855E4o7QEoUvee4f+WXPrW+B0nfEpd9u0Sl/uo7HKnx8UX2xlmeQrD0ApWl
         Q1pb0zBjRIehkAhFE5Bwtvftscb7nzvyDTfRkHajFIOwXnPjzx12SLk0/HV/iXZ7UIjU
         8Bcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tFLNDW68d3NsOkJSIPi0b3ih8JO8rJjvz/KQsXNtk86wkLLI6
	mXrRtX3zE9uLY7pqL0fIpF8=
X-Google-Smtp-Source: ABdhPJyv+Tp6oLFnhFin2t/MzEFXgV88WAFeXV+9PbeW1zC1+ZyQ6yYr4D4GrcBG5Tmo1YaB2Jon0A==
X-Received: by 2002:a05:6602:2b0a:: with SMTP id p10mr35187339iov.129.1621021018531;
        Fri, 14 May 2021 12:36:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1d19:: with SMTP id i25ls1517272ila.10.gmail; Fri,
 14 May 2021 12:36:58 -0700 (PDT)
X-Received: by 2002:a05:6e02:684:: with SMTP id o4mr14258337ils.149.1621021017993;
        Fri, 14 May 2021 12:36:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621021017; cv=none;
        d=google.com; s=arc-20160816;
        b=q2rEvTz/KLCUu6/+EThapelKyBKt7qOsO1RUJihDeqAXWIqaX+WG6KYUsLF8mn2PsW
         E3yqLYrqTv8SO19BNNaOpK3C6is90q8Tbtou5yoiLzvQeZAPK/I57vvqQKtVj/UYz+Vj
         VRPda2xSqz4cMJhrGFV7wy3w5Yot/aGXRMzig4XHidUxGxsR95qlTiFZOC1a0WIyot8S
         Om+U6aCGVPG0XOmQTU8Cs4gv/atzv5H7nclOF2LACS5hh3GWeyhgdtWRyywA/5iuwE7y
         dVvXCGk9nzOKdRGPAPL8FtK/08vP3CxzSxtgRYIma+kzdCaqcW4fcjN3KGIlOx/PDeLG
         9+wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=BuSk93p/Y6Y2CEWVCz7dqF1P83kLBzvJOTXHq1YUWec=;
        b=SmKSJcMKuFBvQpdgJXBfmqPxvwuVzdoGsUnA0fiyo+IoMlCL2xN7Y54vfKtBP5KNBC
         +3nK93jikHMlk+rLeMRCGA14TcymAaKNKxQAFeMwloDxehQXqFqmf8FpXx3q4lCJ2VSj
         IGrl4/LyyU07j9nagpx2DVd0ktCh2csNQPbYTHuw80r3awpuHCaiS44dYScW8nQOhD5/
         LFkI37wpv41bUOG/zTL0TtwcP7jph+l+RXnkoPzarV7+W3Mpaf5k20nxDkR8Pxt+A7f9
         W9ywRORxCNA6FT2RRUWYj9o2O315ZaPSwC99zK0zn+YThUCBV1CGfsaUgCjCza02SRy/
         +5EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Nw1yr7gm;
       spf=pass (google.com: domain of srs0=/njc=kj=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=/nJc=KJ=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r20si294721ilj.3.2021.05.14.12.36.57
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 12:36:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=/njc=kj=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3A854610F7;
	Fri, 14 May 2021 19:36:57 +0000 (UTC)
Received: by paulmck-ThinkPad-P17-Gen-1.home (Postfix, from userid 1000)
	id 0AE945C02A5; Fri, 14 May 2021 12:36:57 -0700 (PDT)
Date: Fri, 14 May 2021 12:36:57 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Marco Elver <elver@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Arnd Bergmann <arnd@arndb.de>, Dmitry Vyukov <dvyukov@google.com>,
	kasan-dev@googlegroups.com, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kcsan: fix debugfs initcall return type
Message-ID: <20210514193657.GM975577@paulmck-ThinkPad-P17-Gen-1>
Reply-To: paulmck@kernel.org
References: <20210514140015.2944744-1-arnd@kernel.org>
 <0ad11966-b286-395e-e9ca-e278de6ef872@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <0ad11966-b286-395e-e9ca-e278de6ef872@kernel.org>
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Nw1yr7gm;       spf=pass
 (google.com: domain of srs0=/njc=kj=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=/nJc=KJ=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, May 14, 2021 at 11:29:18AM -0700, Nathan Chancellor wrote:
> On 5/14/2021 7:00 AM, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> > 
> > clang points out that an initcall funciton should return an 'int':
> > 
> > kernel/kcsan/debugfs.c:274:15: error: returning 'void' from a function with incompatible result type 'int'
> > late_initcall(kcsan_debugfs_init);
> > ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
> > include/linux/init.h:292:46: note: expanded from macro 'late_initcall'
> >   #define late_initcall(fn)               __define_initcall(fn, 7)
> > 
> > Fixes: e36299efe7d7 ("kcsan, debugfs: Move debugfs file creation out of early init")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> For the record, this requires CONFIG_LTO_CLANG to be visible.
> 
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>

Queued with the three Reviewed-by tags, thank you all!

Nathan, I lost the thread on exactly what it is that requires that
CONFIG_LTO_CLANG be visible.  A naive reader might conclude that the
compiler diagnostic does not appear unless CONFIG_LTO_CLANG=y, but
that would be surprising (and yes, I have been surprised many times).
If you are suggesting that the commit log be upgraded, could you please
supply suggested wording?

Once this is nailed down (or by Wednesday if I hear no more), I will
rebase it to the bottom of the current kcsan stack, let it soak in -next
for a couple of days, then send to Linus as a fix for a regression.
Hopefully some time next week.

							Thanx, Paul

> > ---
> >   kernel/kcsan/debugfs.c | 3 ++-
> >   1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/kernel/kcsan/debugfs.c b/kernel/kcsan/debugfs.c
> > index c1dd02f3be8b..e65de172ccf7 100644
> > --- a/kernel/kcsan/debugfs.c
> > +++ b/kernel/kcsan/debugfs.c
> > @@ -266,9 +266,10 @@ static const struct file_operations debugfs_ops =
> >   	.release = single_release
> >   };
> > -static void __init kcsan_debugfs_init(void)
> > +static int __init kcsan_debugfs_init(void)
> >   {
> >   	debugfs_create_file("kcsan", 0644, NULL, NULL, &debugfs_ops);
> > +	return 0;
> >   }
> >   late_initcall(kcsan_debugfs_init);
> > 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210514193657.GM975577%40paulmck-ThinkPad-P17-Gen-1.
