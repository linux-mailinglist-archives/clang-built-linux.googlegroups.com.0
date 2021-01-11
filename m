Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUVR6L7QKGQEIMJE7QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 2152C2F1DF8
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 19:28:36 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id w135sf461713pff.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 10:28:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610389715; cv=pass;
        d=google.com; s=arc-20160816;
        b=rhS4hbA5xXgDctu0kee779evSP6e/qsFNvRCEDu8PI5Za+7dyJTHQKJuoWah0PMmtB
         twJns2jMLQwxrNfEhqW8Q0vXBDU6ZMFoLGfmHdyDUMzzq8QU6BE0qvGVrtwc6F+5RHxu
         x5znhkDIcWsOHW823CigYE7SDS9l6uWofBIlI8jc287FocqFmiDZmnVJEOr5ZfFSXfuO
         GnfhtqSkpFRBtAQlfpd09b3WVqjlUJ7ppqyrGsCmvudsHUk/o8vmcJ5fJvlyPecQ9d/t
         USFSmf2KM7+1YEva6S0za3+NsYu4F+xOE3hcggQtOOjqaO4q0aJZxJdr+rq2gc3GImDc
         5sHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=BsdlLHeznjZgfG1eYlARHVTXbsGGM3AiZXmYbQL9JMw=;
        b=B3fLQuxrgHmymbD8hvAOJjLByWWdnsgifhm+qHSD/aZanzvWQIzp6XltEK03vVeCHO
         k1NWyhy7X1sU/vDO3OnciCYd5rrV5PaoYdcxHQ68Lkvktd98nFlvvG2JFCuoln2I4YLG
         YfkRy4iVxjmcIn2s6jEqSeVKsrEDHENhOAeIUJT7VXEgh+FayMHQ+3rvnIEq7GX8Tb/Y
         QJG/lvfYpBSuOCWiOscwpVmRMkJ6+IjX/zsIQg1gIv9/I/8q3UfgYALiaBz1paJvNEoJ
         2iz0Of0TtNu8oxdM5V4WkXtLom8RvqshrpP9EJ6823UTbVUaRnyg5St37HItO7u+J11O
         J25w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YYffgrEN;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BsdlLHeznjZgfG1eYlARHVTXbsGGM3AiZXmYbQL9JMw=;
        b=VDa24QmL8+cuzdOlQg1Ab3inpKgj/yQTe6aYx1sqMmwDwcRAEC7HaZfSyhlCGa8hLT
         Fiptqt2p1gzp//+bSFIfenZemyNRgWvQnNHKovH7wcByiG0mr54rk4GDe93iy/1j0ESr
         g/F7zdnEsXzDTP/ds7Y5qOM9Z212eAXawxHbw30XvKcCIWbk39Or/by4kJudUEQcB9Zc
         9SVKxmZwSixlF8H2JNgoJZnMvN2VIgiEYNKb25QTnPA/7erA/Iq4a9HpWNaXTUaAmeNp
         xIfzCJ/DsrklxMOjGtO8U6UCJibC2JOp0M9ZfC1FTfXZj/G00PB29BWND4J6HR7Mw1R+
         MFrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BsdlLHeznjZgfG1eYlARHVTXbsGGM3AiZXmYbQL9JMw=;
        b=qzBmDWDpnnS0PwexQwR9Hm0VOwsurrJcMjbtDwN8jf9ElHoUsHYqvnWzmmngBJVCjr
         yst2lHgCt13VjDvss81t+BAFxF9y/WpNPbUvyctfY4dsI5TmEKwsJrBINvlC/+jrs4wV
         twPaytbXL/pIDL6N8QkfGA9NS4KhoxX3IJqboo/KsVx0qEx7hOQidypiYkxLj+QGPv+m
         o1VFRf9LDCkDeiwm0O8DQrxJtKtHJHU/LgW1PZh0OyXsh6JQ/a1TFpa7a/rJahSJuBlc
         a2t4c+oiy0auW+pCjiNx4VtCYnU3SzF5oKzq4rfwyjuiU+Ej8Ovnes1AuuGerhj98XPs
         C2PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BsdlLHeznjZgfG1eYlARHVTXbsGGM3AiZXmYbQL9JMw=;
        b=VhQrZVe7Zzx/1Mdtj5LV/7pQ7iGNNoOwBITTO//EYsiGQZZKPPLXX4RMcckq6/sxBW
         4/J5jwnW+YM6fxCpHs+z21cUer3CZfWQhP2yY1k9PASt8UjMmKR7VhnUI/34JvQbuxPr
         gRUXjXNgCcG30MKTfFGHCE0L01DL7dEr+k/NUwUJSV6ivaTE3qzc9zm+g6WAyrAQBK71
         JNXM8/ZMAhttai8tII4BY0Lu12N/IlbcldwRMHAICJTxOtI2/EkNHbdaxpwXd9uHcNWS
         lQgIdtfhWSo6exi6kWN62EDL8UGb+2/vXbTD7sf1XhpfZHas9nzxzrLDwUP72wYjLzdB
         eSkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533g1LVrWAuzxrriFjWGwY51FfaZAC84RSmzq8LqQH1OqOSzd8P0
	MZhsLoP4dek+boxBL9fCL5Q=
X-Google-Smtp-Source: ABdhPJxRe4SkDnCWFNPgtY/aBwdTBoTWIEecjiOWuWr2zOuTS9fwXlH0ePuZYNZaOexcvGESjTu0mQ==
X-Received: by 2002:a17:90a:d502:: with SMTP id t2mr132598pju.131.1610389714833;
        Mon, 11 Jan 2021 10:28:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:959d:: with SMTP id z29ls120195pfj.2.gmail; Mon, 11 Jan
 2021 10:28:34 -0800 (PST)
X-Received: by 2002:a63:751c:: with SMTP id q28mr779460pgc.231.1610389714164;
        Mon, 11 Jan 2021 10:28:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610389714; cv=none;
        d=google.com; s=arc-20160816;
        b=PDKs9FVAajNr5MmbKgJsjHIZu47U1AzWKxhgS61G/lbFzgijHSHqSO/UL5y7snTPzO
         GofNU8TwK/oAlsfeuy74PpXO3eP5hV/Uuc0OzwZ3OFxlm8XF0CHfcIAX3cKRYuaPub/L
         eir0Fwj1/s1HO824qzauCl/AI3tKuDTRzWTP0RWQCywkSljOfp8wYjBfvy2i388+wZ3y
         CA+HAhriD09zAOPV/lI5081st6Rjt7GEr1mrxZmEfJ6HI5Yw8B9/bmOV8kfeIRYbfXvQ
         Mc/9FCNJDzmu0LoPKSIdpm+2LvgGn15xbR6kMoDljC+O0NSvnf7is+soUntYl8pUBhL1
         rk/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ExTGI1xPKNq4svVK8CHLz8qefNJSyDheErjNSIGWfZ4=;
        b=X7jURYvLHV0KqM5oTm6DX2lT+wR4ecmXtnkjlpBqMakBocUhb50c12jNbhuIj/KqEk
         BkAorGleo6QReMEMuke6px2d6pRCaIEX2j0M4Odi+0U0djNkAEQAoa/fHtt8YHSji5YX
         xjzXMusLdrL0CYVdzvw50AQX7WUZit2MjCMwx9rOruIOIGoNg+Zfg07+aWpimwb4rfCf
         Z6P8J/Ec2JvSdDSx2wf/ZYl1tN1fGKlfGPLuaphTcuCP1+fKiz1s2DfQ6O0+/yxwT+HY
         d8tW1RFrR/aDVPOIjnR9B2OFpiPjFbkLK4t6NXiG8jNcZ9f6VIP7K3Kvs28bw4uWrJrV
         qBjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YYffgrEN;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com. [2607:f8b0:4864:20::72e])
        by gmr-mx.google.com with ESMTPS id z9si42147pgv.2.2021.01.11.10.28.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 10:28:34 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) client-ip=2607:f8b0:4864:20::72e;
Received: by mail-qk1-x72e.google.com with SMTP id d14so343856qkc.13
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 10:28:34 -0800 (PST)
X-Received: by 2002:a37:b985:: with SMTP id j127mr606560qkf.85.1610389713257;
        Mon, 11 Jan 2021 10:28:33 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id g26sm332942qka.76.2021.01.11.10.28.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 10:28:32 -0800 (PST)
Date: Mon, 11 Jan 2021 11:28:31 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Bill Wendling <morbo@google.com>, Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>, linux-doc@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <20210111182831.GB758023@ubuntu-m3-large-x86>
References: <20210111081821.3041587-1-morbo@google.com>
 <CA+icZUUUTEdRNbmORy4X=UqMHLMEfD186o2mh23v_mXGBM8Anw@mail.gmail.com>
 <CAGG=3QUHWkuF0Q-=tNO5PztqtxuKYgyQy_EbBLyL0xNQ7TjgoQ@mail.gmail.com>
 <CA+icZUX0dtfOFLqyG_NOHgFnbwnOKEBP7Fo+RxgjhzuL3FPA9g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUX0dtfOFLqyG_NOHgFnbwnOKEBP7Fo+RxgjhzuL3FPA9g@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YYffgrEN;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::72e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Jan 11, 2021 at 10:57:35AM +0100, Sedat Dilek wrote:
> On Mon, Jan 11, 2021 at 10:17 AM Bill Wendling <morbo@google.com> wrote:
> >
> > On Mon, Jan 11, 2021 at 12:39 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Mon, Jan 11, 2021 at 9:18 AM 'Bill Wendling' via Clang Built Linux
> > > <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > From: Sami Tolvanen <samitolvanen@google.com>
> > > >
> > > > Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> > > > profile, the kernel is instrumented with PGO counters, a representative
> > > > workload is run, and the raw profile data is collected from
> > > > /sys/kernel/debug/pgo/profraw.
> > > >
> > > > The raw profile data must be processed by clang's "llvm-profdata" tool before
> > > > it can be used during recompilation:
> > > >
> > > >   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
> > > >   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > > >
> > > > Multiple raw profiles may be merged during this step.
> > > >
> > > > The data can be used either by the compiler if LTO isn't enabled:
> > > >
> > > >     ... -fprofile-use=vmlinux.profdata ...
> > > >
> > > > or by LLD if LTO is enabled:
> > > >
> > > >     ... -lto-cs-profile-file=vmlinux.profdata ...
> > > >
> > > > This initial submission is restricted to x86, as that's the platform we know
> > > > works. This restriction can be lifted once other platforms have been verified
> > > > to work with PGO.
> > > >
> > > > Note that this method of profiling the kernel is clang-native and isn't
> > > > compatible with clang's gcov support in kernel/gcov.
> > > >
> > > > [1] https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
> > > >
> > >
> > > Hi Bill and Sami,
> > >
> > > I have seen the pull-request in the CBL issue tracker and had some
> > > questions in mind.
> > >
> > > Good you send this.
> > >
> > > First of all, I like to fetch any development stuff easily from a Git
> > > repository.
> >
> > The version in the pull-request in the CBL issue tracker is roughly
> > the same as this patch. (There are some changes, but they aren't
> > functionality changes.)
> >
> > > Can you offer this, please?
> > > What is the base for your work?
> > > I hope this is (fresh released) Linux v5.11-rc3.
> > >
> > This patch (and the PR on the CBL issue tracker) are from top-of-tree Linux.
> >
> > > I myself had some experiences with a PGO + ThinLTO optimized LLVM
> > > toolchain built with the help of tc-build.
> > > Here it takes very long to build it.
> > >
> > > This means I have some profile-data archived.
> > > Can I use it?
> > >
> > LLVM is more tolerant of "stale" profile data than gcov, so it's
> > possible that your archived profile data would still work, but I can't
> > guarantee that it will be better than using new profile data.
> >
> > > Is an own PGO + ThinLTO optimized LLVM toolchain pre-requirement for
> > > this or not?
> > > That is one of my important questions.
> > >
> > Do you mean that the LLVM tools (clang, llc, etc.) are compiled with
> > PGO + ThinLTO?
> >
> 
> Yes.
> 
> - Sedat -

No, having an optimized LLVM toolchain is not a requirement of this
patchset. It will make compiling the kernel faster but it does nothing
more than that.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210111182831.GB758023%40ubuntu-m3-large-x86.
