Return-Path: <clang-built-linux+bncBD4LX4523YGBBGX7XLVQKGQEUITKTTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB35A73AD
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Sep 2019 21:31:40 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id i13sf24117986iol.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Sep 2019 12:31:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567539099; cv=pass;
        d=google.com; s=arc-20160816;
        b=nP+xXmGOCPMP641wFagdm1j9O9cBs2zPbUmKysvW1b1ynOfu59cG/OiX5fkdiHI+hO
         jWBF1pirDpoOiK/FOAJePMwCoy+on8FzdpWi6V0PJBzIdOO2qU++xJE4WGz8E8Onmt4e
         QyTAgZ9nrvi6fy9+HeYx0cit/ln4BCbHbSkbgoKuOF0Ef1LEdKxAXFesNJObrEB16Z+W
         HVyCfMWIcB0IN06u2EBLXFDJhgFo/B2hDxUQNlDOf+ZYXTVdN3Ok7zLTxAWJSfGO8QAZ
         IH0WnhMIhbzgbc49/51L86usjuFcVrkVHclOYlmn5Ici/TyQS13nHjTHjx7Aas1OzLJs
         zxXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=PdSS8YJNa6baNhlDMoacbauXtlO0rcKl9rk0l66dmSk=;
        b=WQbnMlSZmPQtXA5niQofiItVSNwkVEybrADDceWGln4mA7g5yxCep6QDK1ddd11a1N
         n0WnbXEvrx+LFhSTVz9OmhOxerg3eeWUkQb4rUNism9BGTWPt6jWNv/j2jWiK+iwiTbq
         klQ49xhf5TDHfEKkohH3/WfZZ/K+BB8/bmGYjhG8uT5MaPQPVU5NsHc37J5sk8dOomy1
         fq4UgxS3nIV3VvJwyy2Wuu4u/xp3Mvv4TvkT0YZXqCA9KqSvl5XJ5Smy6T+FHSABtvM4
         BaY9nwCoYUqpwrbgcK5hL3mpv7Ba9Wa8oRDkyCIWIj8QryYRsAJkdjd0Pici9yrX6V3l
         gfGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PdSS8YJNa6baNhlDMoacbauXtlO0rcKl9rk0l66dmSk=;
        b=FqfrYDNswsW4l1I8NyW3zTE88jzVwzmhsiGSjBk8L4BgAzmX3MLUTjEK2yS9H0kq3b
         UNTTHHHFtluCUdxzJSyBYqjAktsV74ShHuahSlBMAd5mXZ/Pc6hWErzqFkirHQrKMDsV
         nxxlJTgVupbkmTyL4RQHTwDRjlDa+KUpQnC+WYWZsxw8r9TRgUhXPgkKov4lTx4/0icD
         qUy+p4Uirush9Xt24pPlRx6gKv7oE4zfGI2J11F1e0JRSdk1lJaDVGU6tyichazGUxnO
         4IQSFz/wYcDT8jfwpXbnOaOfStrjuGf8CqZH1WupJlsvPTr7Nzi/DiweB0Gtl2Y218Eo
         cGhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PdSS8YJNa6baNhlDMoacbauXtlO0rcKl9rk0l66dmSk=;
        b=D8QrMfW/QXKzoYcWA117xthgh8vUmQ0RHdAgcgvuHqMFYdVVgPSPONzmstF8YpXJhZ
         cm54SOUnwRF4Y/7Wc7zX0S9+uZl+8FRJNSgaRhZSp/J2kCiJAvz8srqiTATdbygWzstu
         pBuObB+vd8eJ9hI2w/0/CSuUhanFtYsVmY+fdTP0GjHuO/wBcuhsJeyBR9f1HIDXfcyr
         bQ3XHsDp083BHPOJxWea/Coqmz2dgorPkYVQdxXKjzczIaIquVwtTHMO44YjifDoyNQg
         O552FYHBiy9LwwyKJ+Wh/ItXBBneD/ANi35KfurJn6M99Eko5Wle/KwJqatn3kABdHrN
         oGRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVaF7WLX2APkZx8pdG9OdsFh7FlbbKIi6hOrl3nP/LdGaN+RwpJ
	Zp4M3/oxozrj/y64Hp9vCTw=
X-Google-Smtp-Source: APXvYqy2Ih68zCMI/do03qgBnx3V0SFcj7awh05SQueqGDBcQKSQceboBiAVSJgOOhQSFvllLaLCgQ==
X-Received: by 2002:a02:81ca:: with SMTP id r10mr5082983jag.62.1567539098878;
        Tue, 03 Sep 2019 12:31:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8506:: with SMTP id q6ls2091236ion.4.gmail; Tue, 03 Sep
 2019 12:31:38 -0700 (PDT)
X-Received: by 2002:a6b:b714:: with SMTP id h20mr4797964iof.302.1567539098647;
        Tue, 03 Sep 2019 12:31:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567539098; cv=none;
        d=google.com; s=arc-20160816;
        b=wbL77g4TsQ/6WIWxVxiJqivKxfd4UZQIJZ/0gf+5WrdFyfFl8tV14A+qNGy7aZsXbU
         qGYKdzOGrVoahZ2fsdcjfx8FQs6VjwCSreu/nrXcPbBGTIVrrYBmEcQh1Rih+15qjewJ
         wWtmlX4A2E7WSjGNRkMtABvpnd5VnFnRz+J4WF0NDpph/ezUxwQvTMF4NJPk3Xe5OgfN
         s/+klZMNwSRi0elOq8a9CyqP3xZU9WD8MpENDibGVz7JkHF4IfmjyB/7HuPM7pQMBb0t
         f7eLQopIYga2ScSbqS8tFZ8gdjQyIVvvJnIMdplnIgjS5PsP919dJb2/GR2wZ9GpV8xy
         gmWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Ep49Yg6LqarOp6Q8+3UwfuTn+Y6FKAZMpwXLkLC7kp8=;
        b=sbLsPZR69k2avQQmwLw+UMWO08lC4hSc0g7DztgeWQiwbObRRdpeDGsvNVfA3WI83C
         te+M0Oa1p3TbkuHGvQH+g94TysHD0cdWZt5FwcvPwbj/5pvum5XiIDhAXqj9TpEoNCl3
         gspxvJHGzvlITA4e/zO0ie4jqPxg6eeOQYwa+HYN/K9RC13XivxEsoMGq/NFLabYFMQx
         1yYxBC+8wETBsCJbHXRng7ub9XAUIzLqK1IJJkpyMvB24YLZ1/u0B5WsdTFg7l/X3GwC
         M/HypFreCuMQv4SG5hG8FkeyZEQ4a4jScoem6YxNw2rxmjBcRbUER5MW/YaNSVg7MxMv
         ZG3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id l124si757987iof.1.2019.09.03.12.31.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 03 Sep 2019 12:31:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x83JVTV8020900;
	Tue, 3 Sep 2019 14:31:29 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x83JVTPO020899;
	Tue, 3 Sep 2019 14:31:29 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Tue, 3 Sep 2019 14:31:28 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: David Laight <David.Laight@aculab.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        LKML <linux-kernel@vger.kernel.org>,
        "# 3.4.x" <stable@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Paul Mackerras <paulus@samba.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
Message-ID: <20190903193128.GC9749@gate.crashing.org>
References: <20190812023214.107817-1-natechancellor@gmail.com> <878srdv206.fsf@mpe.ellerman.id.au> <20190828175322.GA121833@archlinux-threadripper> <CAKwvOdmXbYrR6n-cxKt3XxkE4Lmj0sSoZBUtHVb0V2LTUFHmug@mail.gmail.com> <20190828184529.GC127646@archlinux-threadripper> <6801a83ed6d54d95b87a41c57ef6e6b0@AcuMS.aculab.com> <20190903055553.GC60296@archlinux-threadripper>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190903055553.GC60296@archlinux-threadripper>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Mon, Sep 02, 2019 at 10:55:53PM -0700, Nathan Chancellor wrote:
> On Thu, Aug 29, 2019 at 09:59:48AM +0000, David Laight wrote:
> > From: Nathan Chancellor
> > > Sent: 28 August 2019 19:45
> > ...
> > > However, I think that -fno-builtin-* would be appropriate here because
> > > we are providing our own setjmp implementation, meaning clang should not
> > > be trying to do anything with the builtin implementation like building a
> > > declaration for it.
> > 
> > Isn't implementing setjmp impossible unless you tell the compiler that
> > you function is 'setjmp-like' ?
> 
> No idea, PowerPC is the only architecture that does such a thing.

Since setjmp can return more than once, yes, exciting things can happen
if you do not tell the compiler about this.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190903193128.GC9749%40gate.crashing.org.
