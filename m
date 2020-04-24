Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBMMJRT2QKGQEIJDLXMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D5A1B797D
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 17:24:36 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id k1sf10653044iov.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 08:24:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587741874; cv=pass;
        d=google.com; s=arc-20160816;
        b=jOnFhKml1z2swOk/jBb1FcDkzoz9x+rWixbE1zn5cxt4dpebDpJFLkJi7qnB7UigpQ
         qB0KwIrf51Eg8oHylMjAcA1YwagMyGLTITmrZ58V5FCnClXPYlrckzz4C4a7dgtfZN4j
         UKkvHxYAtKRX5xX36V5HvQUaF85VVeGuTThU7U1EI/77fN8N1GcIodzM7Ex0fktjeahk
         izROp2lD2zOnq7rF1W8kGy9S35A/7bW8/cSKLr92TwVm3cdauJrJ3CZRr8eQZxn/Wh5C
         8pb9cUHVaLvzfN9XHMj6SKEmBX93dM3HUOwYQSJaxxmHXDg27XC9YcKw2L2CNVz4U5GC
         uH1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cKzh61ze8fROSFly9fMMlBoo/NzeIPRCgAe0JskgkZY=;
        b=x6UqS7YgJ0x+SaK0Cq19leQTE+LvkDgPv7oUCBUDwPySscH/9uxkZEtdTXMS3ZW1Xq
         n1Td0GbUpMhPX+nsiC6RdPuBDKz5CmLkH+L5eTgegSLdhPMZYZil1jKQn2s1icwGNkuu
         elAy/u+8aAIfIpwXC+BzgNbN8IRMOUAv0dKmESO0VDgjSD6a5y8+1zJcm5GyeXi/l3nl
         DFPy2BOdGKPm9ZljW7mLaH3qMhlAGC6PW+GhtGZdP8HxaGH1ZmfPnY1fk0FdptsNzf26
         tGMgvK90ui0vPqIjVKEwC7CZnBeGDFGdmhnJjnnt7/vm06w3Bs0fhpzn/xwJcmN69PmT
         4t6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eKG3Hdym;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cKzh61ze8fROSFly9fMMlBoo/NzeIPRCgAe0JskgkZY=;
        b=dMBt7LwO5KpZ51zL8TW6kHAe3z9OSh9G3vG0wcAj3wqwfG5rI5uNb60zr7ikNBAWC6
         chFYxWwm0c2jmxVmLiSNI3PDD+6YK3JSmkP65KYl87b+I2ynQiSwobISrEG2U0I8OJmI
         hoYoR4i8RU3UUVzfUMy53nL/7Eybxw7sx9I+x4IsI3ET1LUVpLUFzkwuf1tohVj3ShgA
         sT3mB96+3TSQ9nAyaO84TjF1187OUcN236l4p/ct+MNq1Wpri7QMX+8yMYsfnz/+pSJY
         NMoQhRtKwCvpY4IFT1B6QZVG+sy+DjEVCXgF39sbkh+NrDE6hjUpP1XmokGaQ1ezL+lu
         kzHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cKzh61ze8fROSFly9fMMlBoo/NzeIPRCgAe0JskgkZY=;
        b=ZDMYVX5ouSngSYqDt3GEr/KmKjBtGOqR3MEdBO/CRL7+oYc3nHwa9DYbyGjHuGcnhA
         09IbsBFRJnoPQhgeV5FThhxqeEiu+tcR9PYqozIkoc5+TNj0UxHYlWLzTTCWXTxfLaPI
         CK77oCrOC0ecM3Rs1vatYh3DpGTEtVP9iN4fEIedBcA3NbNJIebny3iKuFEBSHUyev5F
         l0IBd+RZbP46zmnkXU/LIRiKXsetFMruuygw5ykZdsk4cte1jvgD+Sq7nZBSBbAIEe42
         0NwBl0/+gCiyw+U+n7fgrrJkj0pNmxUM34dM15vpvscCXN5xmGrx9KRdGcaiBhDb/QYi
         Y76w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuabejxiDX7l1fuFtLBwl7tMjVbyiQHpiBQ6OMrsewaCCQNwehH1
	8ewuMzNUShZZEpIVRmdZpN0=
X-Google-Smtp-Source: APiQypIOJheJyslgqS8BmLf/mkjB0sjEFASljLMwpaQGy0pcvn0ksB6rGKK6eINjnY6eRoKci4KOeA==
X-Received: by 2002:a6b:8b05:: with SMTP id n5mr9193451iod.68.1587741874010;
        Fri, 24 Apr 2020 08:24:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:ce88:: with SMTP id y8ls2434048jaq.0.gmail; Fri, 24 Apr
 2020 08:24:33 -0700 (PDT)
X-Received: by 2002:a02:a517:: with SMTP id e23mr8505072jam.56.1587741873362;
        Fri, 24 Apr 2020 08:24:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587741873; cv=none;
        d=google.com; s=arc-20160816;
        b=BgwPKRbF/aDAA6ZVqByoJlZAZC+4N6ctdCJNSsPtYIK/EEmQc+VqqmtLD6f0S4RN8N
         cMu3y96v08kRUnWsWVbHlUXNr9v5dwpIXaCOzIfhSIybsaA62JezxRgo7y2xo0KEJWhC
         g0AVlELh51/gmcczKzc5A8U8sTlbUoCn2J4B2Vsf+ebsLBxx3+zJGBF6W633JcabWWcn
         owwj9b3FjC4Q7AakcUifCQARIof2XKsTjX7T4kwAUXsR/cdKwjOZrZD6AOgnSgxWhbvb
         4r2s9tg4sp/f6fj3UsL4CA7KA45Mb4uSkBPFPFDkBZIsXSQ96/rDklwXzu5Npk8oRikn
         C3oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=E79cAaOa1jAIKhm0eolCD7xppP0uJP83S6lzC3NSZOM=;
        b=cZ/huvBoRrHMEY+Nx+4gjAF2+Uardq8gTzgmyE+TkJaut0yU4Sas3qM96FsJblxFfz
         0RV2ESNeLjMJXvExoOS3rnlFHjKz2mlDF03iaUP9LFjP6bsvDSnxA5IP9fZH0WESNpTC
         kBejtg9Cuaww8zRfQNKJGVUmkLvSD0etsf7R3pj6F3Xke0iMUIYmFcIVXtEmHaDASKKh
         9HnH2R3aSB5wGBUSOw8qhB2LbaRLyslDlC2szJr0TrFbh14ExxRPl+E0ei+mHsK/G/qF
         BtSsM7DZpAdtFaP3EIS3aRldrgyc9qSKSFbEpv0oLkgHY/4S5uV+qG4V/FeSbxZjLFfF
         ewcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eKG3Hdym;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id t16si411464ilj.3.2020.04.24.08.24.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Apr 2020 08:24:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id n16so4766023pgb.7
        for <clang-built-linux@googlegroups.com>; Fri, 24 Apr 2020 08:24:33 -0700 (PDT)
X-Received: by 2002:a63:1854:: with SMTP id 20mr10113175pgy.257.1587741872728;
        Fri, 24 Apr 2020 08:24:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r128sm6390567pfc.141.2020.04.24.08.24.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2020 08:24:31 -0700 (PDT)
Date: Fri, 24 Apr 2020 08:24:30 -0700
From: Kees Cook <keescook@chromium.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-rdma@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: remaining flexible-array conversions
Message-ID: <202004240824.F042AFFBF@keescook>
References: <6342c465-e34b-3e18-cc31-1d989926aebd@embeddedor.com>
 <20200424034704.GA12320@ubuntu-s3-xlarge-x86>
 <20200424121553.GE26002@ziepe.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200424121553.GE26002@ziepe.ca>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=eKG3Hdym;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Apr 24, 2020 at 09:15:53AM -0300, Jason Gunthorpe wrote:
> On Thu, Apr 23, 2020 at 08:47:04PM -0700, Nathan Chancellor wrote:
> > Hi Gustavo,
> > 
> > On Wed, Apr 22, 2020 at 01:26:02PM -0500, Gustavo A. R. Silva wrote:
> > > Hi Linus,
> > > 
> > > Just wanted to ask you if you would agree on pulling the remaining
> > > flexible-array conversions all at once, after they bake for a couple
> > > of weeks in linux-next[1]
> > > 
> > > This is not a disruptive change and there are no code generation
> > > differences. So, I think it would make better use of everyone's time
> > > if you pull this treewide patch[2] from my tree (after sending you a
> > > proper pull-request, of course) sometime in the next couple of weeks.
> > > 
> > > Notice that the treewide patch I mention here has been successfully
> > > built (on top of v5.7-rc1) for multiple architectures (arm, arm64,
> > > sparc, powerpc, ia64, s390, i386, nios2, c6x, xtensa, openrisc, mips,
> > > parisc, x86_64, riscv, sh, sparc64) and 82 different configurations
> > > with the help of the 0-day CI guys[3].
> > > 
> > > What do you think?
> > > 
> > > [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=d496496793ff69c4a6b1262a0001eb5cd0a56544
> > > [2] https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git/commit/?h=for-next/kspp&id=d783301058f3d3605f9ad34f0192692ef572d663
> > > [3] https://github.com/GustavoARSilva/linux-hardening/blob/master/cii/kernel-ci/kspp-fam0-20200420.md
> > > 
> > > Thanks
> > 
> > That patch in -next appears to introduce some warnings with clang when
> > CONFIG_UAPI_HEADER_TEST is enabled (allyesconfig/allmodconfig exposed it
> > for us with KernelCI [1]):
> 
> Indeed, I've tried these conversions before and run into problems like
> this, and more. Particularly in userspace these structs also get
> embedded in other structs and the warnings explode.
> 
> Please drop changes to ib_user_verbs.h from your series

We might need to make the UAPI changes separately (or not at all).

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004240824.F042AFFBF%40keescook.
