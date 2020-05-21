Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBW7LS73AKGQETPBBDAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id A18651DC5A3
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 05:30:36 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id y17sf4245614plb.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 20:30:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590031835; cv=pass;
        d=google.com; s=arc-20160816;
        b=GqsI2BzBs8VGe0dijOXww9ipACLBUQSLVVrWNFYW7Wd/yXcTEgh69Q+0LnA+wge5Rb
         Ps7YoN2SvE4hntAhGJG7ug4BlMwTyLxj3Xbz+oeONSCovbtIkT74SJo93N4cd8haOTsf
         f++S6cCMSaT67TDz7PPuME3ZLXcIxI/Chbr5L36o4G2/XbixgJIzDF3XHZ/2WUhCbf/I
         USEtly6aWKUG4VDUfOSELfN1lbC7BgqVWL2/UJJMifiBnT1cTKqSgbo4KCJmHCnm22Xd
         Y/Y7QKgokSaguff4h4uxbeDZy8WvQL18xOqp7HYJwBDxtT9DWBCZTH/ZeDlWl6HuusPV
         sGJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=/8TwX4sxh0UJAc20yX17BhQgG1A36fyP9RGKhU25gnU=;
        b=RLI5YlZccEFYVpPhp7Phm7sJEY+a7eYrm9vKOJrXMScbTGRUz1v0teaUiiegXNSx+H
         Y+HQ3045vJ602odFLfepzqDA3Rd9DqzlXDBdholVeEaese/o/+OaWuaS3SyUT9V15QrI
         An4wZuIwoOH6VLca7fLetZNl82pHBK1fuTFdublEexmphzFfZ434dMCqOLwrJI7UtAjj
         55ulIRdFtrUAijU4ADoqy+VPQ8BPlmZSoV+8un3NEFsG07FceEOwnxxuGiqxMWxUHlDH
         f+HTZG64yqPS0Il/BDmNPI5V8rbo8VoN6V8CcC6Z8TouKNohj+UAttxpAeimFDdLy1tU
         ZlsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AyO6SeGG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/8TwX4sxh0UJAc20yX17BhQgG1A36fyP9RGKhU25gnU=;
        b=b32OM+stvoZSSAWJCR6hO8HwzBgrrzpPhqpVeq9H0HeaUP/JzFa0RI490R6PRyZ+Fv
         gM+NPhHiytTG34ihbCdQdZNzTBNPkD0zlTP2QO7GM+2OScq6kYJTeklq0oWt1KEpmq3g
         yDrPLHB+L7n+zz2qMV/1h/HbzVpxpZBETMiONiOxgtHu4BWCPIdYSQmy05UcH8MSaIRP
         ZD2qhAro7GxTMXf1XT1ssHfjtAD4MqLU/k4jVTXK76J78ExfIIC1ncTpJtvzJUfiw/4Y
         qVe49FiJncdhANtV3elKB5BoWaJtcL256cXUuj/WD9nx0R/NLiwU5twbeyt/Ua9vu93Q
         vBkg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/8TwX4sxh0UJAc20yX17BhQgG1A36fyP9RGKhU25gnU=;
        b=b9Jbizwe5OjX7gjoRjawCt0c5eTcripak9wv7K/hBmTu6i+ekUqHnD45Z1qyWwyji1
         HTy8iSoLNqbRUtXHChcpe1pJR0eFnq+JL7Omr4KshgrIkR8H+44qw6k/LAHPtLqEev5+
         J/fC7IW4OkXJaHHnchyU7CogeU3mTBtdzwebLWcettaqUgW0VzYUavRBmbmy07uUI/BG
         BO9DPx+uT1jSlEUsPxgvMueF0IrQtDJ6uzlUvVid9tVrAdbJKXBcXLO9jWizoTGBW6uK
         OsjYuPJMswNTXXQqB2EwxWCljoJq2zYIpL6TuX9OcVkiPyQ/v/tFUmuDXcEROkkcXVbx
         vJSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/8TwX4sxh0UJAc20yX17BhQgG1A36fyP9RGKhU25gnU=;
        b=YMuK+u1H4M1cAY/seM8oU2DXdfwJ/AxrxmSNMCSoUvtux7N+JlNtkITh1YBHfyHK0c
         6yeq0VsPaP6l2uA9mXrE8qRhvLBtQR2KDOw1YAUXJZBFlZfpy0Lh3/x8emsyk0kkJBlP
         zBte/xAiwC7lC9owx3j5464oTjePaSUclIpgbfFc/9nvKe8JHzr2YCY4HYL/FFL9R+2Y
         GUMAso1kI5eX31qCbQAIGTq2TxJCx+bOlsBhOlOnld0uRKtrRlSKIg0VlozOhj8Rn5rj
         0s/bd/5ZfU5yhOJTlqjSDCcIrCv9YHBMPt2Dx0TCZhuEv1Sxst+P0mgR/um0eRKi7u0Z
         c70w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YGin0nJshgsS5iFcl1/RE3CayD47ensjuZOxN+FjxDWj5OpYu
	JEbWQhu1NMxKoQZHqY5xKsA=
X-Google-Smtp-Source: ABdhPJyGg9jOjKeOo5IyvjU/GNk4vYiIT3cjZdpqO1RXc+OnSnhus9242Z9wZfrAj0ffF+b6vX9LKw==
X-Received: by 2002:a65:5bc5:: with SMTP id o5mr968631pgr.233.1590031835258;
        Wed, 20 May 2020 20:30:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a717:: with SMTP id w23ls311431plq.7.gmail; Wed, 20
 May 2020 20:30:34 -0700 (PDT)
X-Received: by 2002:a17:90a:20ae:: with SMTP id f43mr9161589pjg.29.1590031834875;
        Wed, 20 May 2020 20:30:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590031834; cv=none;
        d=google.com; s=arc-20160816;
        b=h7pGU2RYfatwLQbyTKT843nb1q2v0Mx6aSJBtqdq9vw3pn4t7s0X6GNMeNDViSZPga
         J7ex3wwlNNnuHdmRFB7V5TQRsh3r6NpUU+eZ1dRj0J6fZaVLxNTT9gzi/QroFQ3rkeg2
         hH2K/VYj806cLn1U9oP8DL4eihhdEdCULFMxPjBppOq8js48vYM9qinA0wY+WxC13Wc9
         s5iJCkPJRltZ8Q3bqLfaX9FBnP1ph97Oss3ILye6eMkBlcj7x6zt+y9ueg9iMWtYuzh6
         b2+j1Ii8uKmEVX2wN+S8ETXrZg3ucDVltcCR5bxJW7Ns5oSaltXpOIGPurg9FPJdGml9
         JPhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=uDIiEcjy80gA4ps38HoROvYan2sQOUFT82jQPB/2UNw=;
        b=OYxlbPpF1B9UqL+QfQLtZ8a2Vt+e5PhKbCD3/aFS9cUUcdrUF6uudXl7kvmEBnQEX5
         KJDhmmh4q6Wm0xDSD4Zm+hrNGFOye8su/IIiyvg+Cvr57ZcYae607emWOriWJEUxN4W2
         QoRmQbVyEy+aBlVFakEdxywETSV9aXZC5sOunjyRjmEpdlPGPg7KwDlug/YhMijJCJ2R
         oUM5il0LSBm2jtHPfN8x1Pz7vwCZKCIw+WUij35OzFsxl69Yv19hd1+Hr04Mtp4Z1O82
         tjeaWlrJ9yKTiRCAd/UnhcHgUZqG2T+cF3VUIE0/gA4qUNAYlIQnNIK6LI8kgulI3kPl
         42Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AyO6SeGG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id e13si354600plq.3.2020.05.20.20.30.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 20:30:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id q9so2338404pjm.2
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 20:30:34 -0700 (PDT)
X-Received: by 2002:a17:90b:8d1:: with SMTP id ds17mr8432440pjb.76.1590031834534;
        Wed, 20 May 2020 20:30:34 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id w21sm3479771pfu.47.2020.05.20.20.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2020 20:30:33 -0700 (PDT)
Date: Wed, 20 May 2020 20:30:31 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Borislav Petkov <bp@alien8.de>
Cc: Will Deacon <will@kernel.org>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>,
	linux-kernel@vger.kernel.org, linux-tip-commits@vger.kernel.org,
	Thomas Gleixner <tglx@linutronix.de>,
	Marco Elver <elver@google.com>, x86 <x86@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: Re: [tip: locking/kcsan] READ_ONCE: Use data_race() to avoid KCSAN
 instrumentation
Message-ID: <20200521033031.GA3590594@ubuntu-s3-xlarge-x86>
References: <20200511204150.27858-18-will@kernel.org>
 <158929421358.390.2138794300247844367.tip-bot2@tip-bot2>
 <20200520221712.GA21166@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200520221712.GA21166@zn.tnic>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AyO6SeGG;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, May 21, 2020 at 12:17:12AM +0200, Borislav Petkov wrote:
> Hi,
> 
> On Tue, May 12, 2020 at 02:36:53PM -0000, tip-bot2 for Will Deacon wrote:
> > The following commit has been merged into the locking/kcsan branch of tip:
> > 
> > Commit-ID:     cdd28ad2d8110099e43527e96d059c5639809680
> > Gitweb:        https://git.kernel.org/tip/cdd28ad2d8110099e43527e96d059c5639809680
> > Author:        Will Deacon <will@kernel.org>
> > AuthorDate:    Mon, 11 May 2020 21:41:49 +01:00
> > Committer:     Thomas Gleixner <tglx@linutronix.de>
> > CommitterDate: Tue, 12 May 2020 11:04:17 +02:00
> > 
> > READ_ONCE: Use data_race() to avoid KCSAN instrumentation
> > 
> > Rather then open-code the disabling/enabling of KCSAN across the guts of
> > {READ,WRITE}_ONCE(), defer to the data_race() macro instead.
> > 
> > Signed-off-by: Will Deacon <will@kernel.org>
> > Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> > Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> > Cc: Marco Elver <elver@google.com>
> > Link: https://lkml.kernel.org/r/20200511204150.27858-18-will@kernel.org
> 
> so this commit causes a kernel build slowdown depending on the .config
> of between 50% and over 100%. I just bisected locking/kcsan and got
> 
> NOT_OK:	cdd28ad2d811 READ_ONCE: Use data_race() to avoid KCSAN instrumentation
> OK:	88f1be32068d kcsan: Rework data_race() so that it can be used by READ_ONCE()
> 
> with a simple:
> 
> $ git clean -dqfx && mk defconfig
> $ time make -j<NUM_CORES+1>
> 
> I'm not even booting the kernels - simply checking out the above commits
> and building the target kernels. I.e., something in that commit is
> making gcc go nuts in the compilation phases.
> 
> -- 
> Regards/Gruss,
>     Boris.
> 
> https://people.kernel.org/tglx/notes-about-netiquette

For what it's worth, I also noticed the same thing with clang. I only
verified the issue in one of my first build targets, an arm defconfig
build, which regressed from 2.5 minutes to 10+ minutes.

More details available on our issue tracker (Nick did some more
profiling on other configs with both clang and gcc):

https://github.com/ClangBuiltLinux/linux/issues/1032

More than happy to do further triage as time permits. I do note Marco's
message about the upcoming series to eliminate this but it would be nice
if this did not regress in the meantime.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521033031.GA3590594%40ubuntu-s3-xlarge-x86.
