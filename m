Return-Path: <clang-built-linux+bncBCIO53XE7YHBBS5OQL5AKGQE6CW555A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E29D24E4F8
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 05:55:58 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id m10sf1059180ild.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 20:55:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598068557; cv=pass;
        d=google.com; s=arc-20160816;
        b=J1N+frVuMoHSG7ViRD1CXUiRafGwjuX8sM1M8+SBKfBa+prMdcioXHK1vaVoPUF7d/
         Rmob/GBI+fAD2K77SnXaYVxY/V1/jjrO1Yv0CVlEuX2/o9Xgajt8XoU+nlhFUaF70gZA
         Pl805Jjy9W/SFaPnGxbBKoTUyh19Rz7oRPw2anXwaPIBgIocfQrylm7sWwlVNkDr/mql
         +QhJ5BvRiN/QZACdeDY4zLt9F653ZF86YZok5e42c4FNQi5BA6hnVocIyMwGub4iYUUL
         TQggg98eov/bMpJC/8ZGrjbL7bHn59qRpbBmUZ92iFJ7fZHmP8sOOpja2+6Q2Qfr1xwc
         8Ptw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=MMU8P0Vsb2kqDkU9PRQ8/GDoUjPiDns4+46wNvd2Bjc=;
        b=UOjYAClTG0sc0VL/Nigt7E+Abli9dghIGoGDDNYYAniZmyOlWzSoZcAFNPJoi0/NMw
         daRQ6T6n8KX6pAhwcjSWado3rDtQAmh3ooMSRFWmCHNfXMbrn4eYGpBM1lQHkzA/dMUJ
         2r+dsba21Q34eBEhWVyeJU0bO8Rj2lVNpcsjucWxJooyHgXxJkOCbqmQM9yvrAcQzsHY
         St385uP8C6ZpAbfVy5zFNRAP6ADZvX4byenCMYip3xG3fez/uaVLtQ65QCreZtspQ0yj
         FcjzfpK76lmRf47eunlSHGIQX4nugaQd18V9uQCSPlTa2kaWl/19y6at4MyNcau4StU5
         d47Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XDd+bpkQ;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MMU8P0Vsb2kqDkU9PRQ8/GDoUjPiDns4+46wNvd2Bjc=;
        b=LCISf9llJ9IWCb0TD9UtG9f47EuV5aPH+YCL767yk2XqMwRYC7o3c+7tIzTQCeWRIl
         pAO4F7rv/VY8/JNptJ9sbGLT4DKoDKEZIUHsppwSJX5+FzQDtylw8BedmoWtDpwpUc8G
         3uAKPJEoF0cr3V/vZfYJtMAYNKT8L+Yxcqi6Gd5hOrAJD0bvBW9PS0kR+BPCJIBgQWNg
         bhdMNSTDrWnEYt3l7eAo2T+54CCBJZUzfeIdUtqUwGfCmTv3F9VZsxBmBSugMTFItQCe
         VjVOZJY5WcIxIAISYYb2JX54+k/GBzLuHs+MObHpCmYIZMgupG1i0rm79PEyKwjfJN1t
         XPuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MMU8P0Vsb2kqDkU9PRQ8/GDoUjPiDns4+46wNvd2Bjc=;
        b=J8zSF3+Bluo25STE8kmop0/4Vi7KXA9OPcdLVle1OgnxS3a4BpnrQ2hD8cxIR5WgmW
         0iGEZKS3Gg9cRdFV8esVPRsgp32qjmjJFrHPeUKpAjfUDDoaXKVH92ikezdF/5xKu24L
         TPWDApDRN+/8yGx/V/RaNmFxaxK3qzsRhTxUXKKsZd8gMkEiyYBynxS+pQNU5XZE6cXt
         9g+TrTHHSOzBr0nwj87pQXCwtgoL3/nIvbfp4HVT0Y9BsQ+EUn5qc+w6GMxN7ZIsABuv
         Lrk6Y0Lo2KV4NH4BK9oyFWRTsDwSnx2XSS0ixcoFL1aDOcxpmI9KXN+/QBWUSdcZJ6XU
         Sx0Q==
X-Gm-Message-State: AOAM533OV8vmKl6mee1daQjfRASwVUg4Ya05J7hcaHzRxZffSRMlW8GJ
	kOywokKdWHzeguqWm78ePY4=
X-Google-Smtp-Source: ABdhPJw9owaQaxglKpykKCN4EBlPbPKW0HzPxcIOjUPt/Ny9HA9uaZ3SD+4PHln3YKcrm3kOndYCjQ==
X-Received: by 2002:a92:dd04:: with SMTP id n4mr4968449ilm.70.1598068556091;
        Fri, 21 Aug 2020 20:55:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:7807:: with SMTP id p7ls522230jac.3.gmail; Fri, 21 Aug
 2020 20:55:55 -0700 (PDT)
X-Received: by 2002:a02:3b1b:: with SMTP id c27mr5534032jaa.6.1598068555763;
        Fri, 21 Aug 2020 20:55:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598068555; cv=none;
        d=google.com; s=arc-20160816;
        b=xKmtkeaM3slGVLuVMC1lpSDtUl9oJ1xYB/qHjtw3n4XVj0fWC24bkNeRkUXLA08P7r
         QX5BqNpWzW17maTVrcen9YQ3JMvUmhU4Ulbl/gQ1YSY3XxeDdwa3C5Pk3xvt5CzJ+rDF
         N0FWwwu6vakWJvfOun4aD4YVTFSDsZeGiVPQVbz7wmBwYxPxWGrUDlRS5VnvAl1iAZYL
         V+2FKWF/fk31Kl/9atnXCzRAGG17k21WPqjApi5Yq6HqwuPOd7px9Tk/XH+ZO+xgkxwN
         aOBdt7QdnsCmVod7NZxEWZeEGwfkYCoKLIImhMfQEzw+E2CAunkKvUd0RGC98csOHnN7
         ls2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=sis1RtWjjJmCniMLQ4buZziqruFCYDRbS5Oahbaa7xE=;
        b=BXyUxZ3wLda/weGktZ2cGHYCj2zEbh+merdcqcMRUo5eV+udWPobup5QFe4noIdq97
         yjn2ljItA22p9PBZ3lds9RMTJhaBsNR8B3hsBqJGlwc9ury78tuG+z8xDn/CkZImVdr0
         nU5kVRhMb8Vhn0JtktzwT0XLaWoThgo/3brrSkR4vCe8RlIxWu5u1sFVXou7+Fd9Ri+r
         J0j3DNhBiq2gEcRHckJ633snPUyGjrHbY53x5dkVGPCeTzApStYUDCye9zDWJ8Jcr6NU
         672xsHaq6HwzSj8F+QSA0reHOKYr+MvfIeIvWrNrAbJsNcdAoybAQHm/xYUdVCKC0ghC
         eqVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XDd+bpkQ;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id m13si189222ilf.5.2020.08.21.20.55.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 20:55:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id t23so2712902qto.3
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 20:55:55 -0700 (PDT)
X-Received: by 2002:ac8:1adc:: with SMTP id h28mr5386850qtk.153.1598068555057;
        Fri, 21 Aug 2020 20:55:55 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id q34sm4396912qtk.32.2020.08.21.20.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 20:55:54 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 21 Aug 2020 23:55:52 -0400
To: Thomas Gleixner <tglx@linutronix.de>,
	Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Zhenzhong Duan <zhenzhong.duan@oracle.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>,
	Andrew Cooper <andrew.cooper3@citrix.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
Message-ID: <20200822035552.GA104886@rani.riverdale.lan>
References: <CAKwvOdnOh3H3ga2qpTktywvcgfXW5QJaB7r4XMhigmDzLhDNeA@mail.gmail.com>
 <87h7t6tpye.fsf@nanos.tec.linutronix.de>
 <20200813173701.GC4295@paulmck-ThinkPad-P72>
 <20200813180933.GA532283@rani.riverdale.lan>
 <875z9dioll.fsf@nanos.tec.linutronix.de>
 <20200820130641.GA536306@rani.riverdale.lan>
 <87zh6ohm03.fsf@nanos.tec.linutronix.de>
 <20200821230435.GA56974@rani.riverdale.lan>
 <CAKwvOdkoB+fT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA@mail.gmail.com>
 <87eenzqzmr.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87eenzqzmr.fsf@nanos.tec.linutronix.de>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XDd+bpkQ;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Sat, Aug 22, 2020 at 02:43:08AM +0200, Thomas Gleixner wrote:
> On Fri, Aug 21 2020 at 16:16, Nick Desaulniers wrote:
> > On Fri, Aug 21, 2020 at 4:04 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >> On Fri, Aug 21, 2020 at 02:37:48AM +0200, Thomas Gleixner wrote:
> >> The gcc bug I linked to earlier is only fixed in gcc-6 onwards. Is that
> >
> > (based on https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82602#c14)
> >
> >> good enough to remove force_order? I can test gcc-4.9 and gcc-5 to check
> >> if it would currently have any impact.
> 
> And that test tells you what exactly? That your particular build of
> those compilers does not have the problem. A truly scientific approach.

More that the current kernel code doesn't have that problem, but yeah,
it might creep in later.

> 
> > I think checking the disassemblies with a pre-gcc-6 would be good
> > enough then; that bug isn't specific to this particular case.
> 
> What? I clearly want a statement from the GCC people that this won't
> happen on pre gcc6 compilers and not just some 'works for me' statement
> based on a randomly picked compiler build.

Presumably also from clang that the compiler does have protections
against this, as opposed to doesn't happen today.

> 
> Thanks,
> 
>         tglx

Cc Segher.

Segher, we were looking at gcc PR82602, where IRA could reorder volatile
asm's (reported on ARM). The fix was backported to gcc-6. Do you know if
there is any reason the problem couldn't occur on x86 on older gcc
without the fix?

Thanks.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82602

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200822035552.GA104886%40rani.riverdale.lan.
