Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBL4UX76QKGQE6KAC5DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8352B2D0C
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 13:14:41 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id c79sf6994073pfc.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 04:14:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605356080; cv=pass;
        d=google.com; s=arc-20160816;
        b=OiS5wQf7Y5tnDFT07MTEM7Pt2QP02pui8E1HgFIDriEWaUvaydsWHNBAfA7omT48Q+
         1tCbBSCWVEj8N7auWTqhUkiotezJLhrKWCfwHY+X0pXPkvllyenXOq6R1f/VZojOx0CU
         gwAW6owDi2GWax31VE95jye9x975ay+Yc/u0D2ttSaOLzhXzZE+zzyKOMMrnppU2Bx8Z
         sgjbQgyyhUiHaIIHpneh3LAhkZ3v0Tpzr48Ib58VxWPnh9svWf7SXNg2QEqxYZAXE/X5
         OBY/GOlHbNFbOiFffX4lF9UO2sf+VjwDqLt4VYjIrzeazeX3IKzPPIMNDcfKgoXroSqQ
         VflA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=p7p1Fe97q3MUgYsjKQJ9NkDxu209UKSHdG8Chb8LYZI=;
        b=mB0b3afyn3u+rPZUk5+EIOACQ37KWV2M2yGv+ykvVrdQ+f46OgsJJuBVZLxv+bWD2G
         wNCLLGzQdVCutM6FOW4nbEqwr6i0NLnT0Cf6Wb1f/YYwzab6jq9FpArjuJmEHQZgJW8d
         XjgkGS5Pm9xEbT1RzevEUSm/dCBHLXWrbf++w68TlXC0TJ9t/YE3y0zTrYxIRh49obKu
         k28qxXurnzu6TSeuN5ktSsiGP00qBC0JXOj5ZOkGtOo0vtvQXt1Tuf0qa8dPMzayWe3y
         f7+8DKtILMdOp8X2mmni6D7oaCN34SEvP8L4JeW3ivHU1b8si9nov49Gj9dyYEOY2qE0
         z77g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=z7Z3V2hq;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p7p1Fe97q3MUgYsjKQJ9NkDxu209UKSHdG8Chb8LYZI=;
        b=hny+c5TcXeY5Adv7gL9ME3PEqh5d3RfLVssT0BPoNn9XRF4nwn9SG1rpXcaP/GZayO
         FfuKnSKG4FQC8jhCYjQtbcIyKPLLbosJx4lFJk5/9rUd/cxZu7eByMNBcL7efBDj73MM
         +mKksqsKo3FHrixSJINSKRzJY62T/rvMXrzB5xE9bdiUfwYYySK8DpOO6kmYz9Jt8V8D
         YJUbRvsb12cXwaFVjEgR/nz9ugKDlWJP1+h5sEXcI1SisY/V4VgXeB1Co6MHiDstk8mC
         IrhhyaJ7HYjombh6Yy0nADkkr8uxXQNIhl5Jmn8Wr3Ru5+uQJb3aiuy3os6Ii608wh64
         olJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=p7p1Fe97q3MUgYsjKQJ9NkDxu209UKSHdG8Chb8LYZI=;
        b=PxTpywL7Bs03oy17A3emmRMGx/QLRz/bl8p4hFCsQoAr16+b4Wp7T2y1rpFG7ipTAp
         bkq1Poy9VChQ1633WYO7ZpCczl+kecTQXKKR8Y1CyIwIdWnf/lV/1iYxVHLyoDw5b+vG
         tWBQZOvyDGjU7UqmDAabwWaOjTsOjGAaEtDJiYIfBWDIlhuLDfXg7hihd2GE5/O42RKF
         qiRNHccRHph3sSduSwLlVZJk+k18AdYxoLatzEjt0Ue+R+LH6NNow/HAbjH3z0nE+otR
         f5IRNMbiivV9a6/sk88GlZ/6e+Sl2fCgVx7YHiTGVx/yV+qEbulqiqT4qiHB9vAqnkfv
         ukVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533n+qm6yl9RSdtoH/RK8aIASwzqT4OPlCo6+VdJoAzHY8S9ecEm
	d47wj2zqNvxVgp+c6iIe7hA=
X-Google-Smtp-Source: ABdhPJzWhbv4/jd02c9if93cqAy6KE7WSLrb0t3UtOlyoSRF/1EYAl9v1/z3C+JemoF2nlsU+SdX0w==
X-Received: by 2002:a17:90a:fed:: with SMTP id 100mr8007594pjz.65.1605356079910;
        Sat, 14 Nov 2020 04:14:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3712:: with SMTP id mg18ls5083770pjb.2.gmail; Sat,
 14 Nov 2020 04:14:39 -0800 (PST)
X-Received: by 2002:a17:90a:4f06:: with SMTP id p6mr8107197pjh.227.1605356079311;
        Sat, 14 Nov 2020 04:14:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605356079; cv=none;
        d=google.com; s=arc-20160816;
        b=T911mNBkexNVNXMEvI24NWV0FmYXUFvx1f1qS6GfvJa9Cn7y38Xbx6UXnTM4BNEXR4
         e/bVkT61R04Y9aadvByHjXUI8YK4sweovW6iQDEYxvCIiC0po29qA+LE5yNyhaGOuEV6
         Y1ZNsgTnv5RkCL4yEP8F2guXSZKv/TRY8VwzqO92jz5IEVQuDXT/eRlnHbopBH5T4Qcu
         IzRX9TeAEDUraUzFMBPMZYd1ic3cJvsk0hPuaJmSQ73ojw7Gtd8yYM7DOvTkKsLT3zs9
         9bJeQA2Sm/zUDIBL+cIsJ5Mi+PCzlR2RF2E8+PxoqfuZKnXHRAaP0Uj6Av2sNERNDex1
         TNQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=g3EOe6klRwGMoZsi5BswlpuKgxXQBaa643cXokv9lwY=;
        b=bMZvWsBkdv/5rK0aV2NCMX9c2r+zo2ubnuauOzZpmf1XSmU/VD1XrWCEazMdzs/yjn
         LvAnDVPm1ELp6s4fu0qPo72PlOnUzcsYxYC2yv25kpu7ZJIIAVp2bUkoL8FoTcXJCZgU
         /kOnS9t8BmXMKxu0gsPDBwpXBj1Rz5NPKITazMXz8w6jKlWLejltek7zitYbgYqa+kdz
         EmRX0cKKQXnLuu06N1TxiKQVFnXW2IkzIXz+1Lwon+MktF9BY9uKUli12YEr+5apowTR
         UYflOhGMFQX2QYRso1OZdJOx+SpdkqLnOU2P9pRToUUmm4tRIACdApbErQdZ8ezdrr83
         9G9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=z7Z3V2hq;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f14si584971pfe.3.2020.11.14.04.14.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Nov 2020 04:14:39 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 91B0A221EB;
	Sat, 14 Nov 2020 12:14:38 +0000 (UTC)
Date: Sat, 14 Nov 2020 13:15:33 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sasha Levin <sashal@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jian Cai <jiancai@google.com>, Ard Biesheuvel <ardb@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"# 3.4.x" <stable@vger.kernel.org>
Subject: Re: LLVM_IAS=1 ARCH=arm64 4.19 patch
Message-ID: <X6/KZamOEdcnxb8h@kroah.com>
References: <CAKwvOd=x+fVo1_mMJUGHYXpmGf8UM5yx+uWD-Ci=y=0oFX2ktg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=x+fVo1_mMJUGHYXpmGf8UM5yx+uWD-Ci=y=0oFX2ktg@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=z7Z3V2hq;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Fri, Nov 13, 2020 at 04:27:02PM -0800, Nick Desaulniers wrote:
> Dear Stable Kernel Maintainers,
> Please consider cherry picking
> 
> commit ed6ed11830a9 ("crypto: arm64/aes-modes - get rid of literal
> load of addend vector")
> 
> to linux-4.19.y. It first landed in v4.20-rc1 and cherry picks
> cleanly.  It will allow us to use LLVM_IAS=1 for ARCH=arm64 on
> linux-4.19.y for Android and CrOS.

Now queued up, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X6/KZamOEdcnxb8h%40kroah.com.
