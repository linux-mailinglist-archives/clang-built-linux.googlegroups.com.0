Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYXG7T7QKGQEL3CFP2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE8E2F5173
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 18:52:35 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id h18sf1991029qtr.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 09:52:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610560354; cv=pass;
        d=google.com; s=arc-20160816;
        b=WqHzmIy70um67k3BTjwRKi0D3gjZSqUxibC/sPCKlzr8SGBWqlQ0WEEqUx7HtJmpVQ
         /wm1tcXkpyMzxCzSbg+6YsyPxN33L9jjKwNRRSS3gA+5hrqEsp/SpoqwT3d3c+W4rN6w
         Eg+pH3zb7RCON+EpfndGLWQwlXuUSfROFplEs0ZvKBDDCd1gF5jyyKL2AIB5u8iofXzI
         fSF+Qdp1jlXjRqJBne8lVi8ONVxNEqnTqMjJ/EcLe3bS8g/fQBiJzVraSJcpux2g9ofq
         k1MvD8eKNxhN3VKr55iRmxFIswnMMD/Jfk5y60xgK2PW28mb+/5tmFYmzLRoqVy+KKdl
         iJGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WMEBI1NNPVKFTTiC8tdOybZ4+9so5Qhf+DY/ARfq/Jo=;
        b=gvFq/mWDzyCevSYxVqYdeeWsJnIHkT+wT8TT7FrCzZ8Sdr+GamYu0aSMYHILvDQZoE
         1c+Uvk/pb8hQfuBTOv2HuBJl9aSVNn3biJFiqQhXfy5zCERAgu0Ujz+0t9nbC0TEgZS6
         808sFb/LZ8irB5ql33CynfW7jLarVRekOLEyUgVfZAqfYa75ObPQa767QgljGjIwrQ3B
         3Whs+HxwCGMOETtSblPY+7h/JipHSqGo427fs/mvnKheum3AGHKgYY7g3eMexPjKGctk
         s/Cu0WGW37ZUqgMdbOxf0WjdalL3HAEoBsNF+AFheBJJunuFjWG9aNoJWgumdfiIdj0V
         bxLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qubSX7cD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WMEBI1NNPVKFTTiC8tdOybZ4+9so5Qhf+DY/ARfq/Jo=;
        b=EJp7lg4cJMmHbSoT+c44SOgBMP+6S+kXkeSw0MGmtgPPrw1SvYvcnzX1ETLZKUDP5O
         g/Mr07JyISYlbB3+J5DMyXM8JKgXnWlk5DuZAySHBafaDXCO7u0UMSIbwxzH/uFmXdCn
         dJUWahVsWK5HNN3ytMMIwsRNCdbg9cfe+mvGZUgDZtJBFnf1CQbSKM+b9Wu4hranKBwD
         ogohIKYDMpkboF6AYvuR/VhHMhUOXMWRuoCK5tGVXXZWI+lBPbNQDVg61Nq10wqjdZur
         bYqa7ATszUzplH/tn6EKgrKanbbbzVXQYdPO+2pCQzyaoPApDspJ4b+sAVRtbwc1xv/y
         us/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WMEBI1NNPVKFTTiC8tdOybZ4+9so5Qhf+DY/ARfq/Jo=;
        b=M41YomrCN79mT0IfVXMCGJ3wcjP0UGUcp4AyEKfQzZQMVQaX4QjHuDf5tJtRUZQ0OY
         edvJY4FFD1cH5+57/8wrx4uaArovCIUb8Ws2ooy9JyBP57p6uB+XRsz68rEL/GIVh6BL
         SJxEtJk3JrygeTlUUiBOVhZG8F/G5Q8TGEl4jaX/8pCgyIiLa+mWWWKNV3LPnk9WrwDj
         5jWDOOZeM6ql/+cwze0rkwTXYhCOCGtzUy+bqoe1lT3KDyDiS1i+OeaiXf7TCBtzpkPC
         aoDRCoK2HuBQWRFcg0kBwb7Y1GvEFSBqQAy+kWn2F3c8jeQLig+P/a4V+i5skKM/S1fQ
         EhSQ==
X-Gm-Message-State: AOAM531yAcf3Jbck76wMbZafHHl0cGU9d+0CzEheXshUTW0dBV2cljgx
	+QtvKWNIyvR8uMwLVrMJVWg=
X-Google-Smtp-Source: ABdhPJwg6pG52RweeYBFONQHWeJaCdL6H4FZQFKV21V7Fw7c3jcTeOd85UQY+WuTbvw2asrAuHvkfQ==
X-Received: by 2002:a0c:a525:: with SMTP id y34mr3268887qvy.37.1610560354639;
        Wed, 13 Jan 2021 09:52:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4b77:: with SMTP id g23ls1120885qts.0.gmail; Wed, 13 Jan
 2021 09:52:34 -0800 (PST)
X-Received: by 2002:ac8:5cca:: with SMTP id s10mr3252561qta.227.1610560354303;
        Wed, 13 Jan 2021 09:52:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610560354; cv=none;
        d=google.com; s=arc-20160816;
        b=ByUrrVMzMLNj313AA7HtjdD1AgcWAFEsGIk0y3O3+XKoCYSdjcCDhXLKWPh/bTtw6F
         yRGbShhl1JHygGrL87ELZieqP2cS5jHv6FITInWMLhputTyuVtZxEtqBI3ubrqaeh9n9
         r2NS3pHzzDlM4isaLcfpQPcT3v/yBkANDAPu3ccFjV2/JIVSM90YPXAkfNAilapRkkz7
         iFyVx/PNXiesqTaoznFp9OLuUJtmTtxaUBfOMLfKRYLWAcGJdRIvXsjsqno01LhwITMa
         q5NKP38XDpbyaq1EPnXsxJvbNmox0bSQ3cbtQrzlndeq21p0+muDzQEytifdlT4D2oxr
         oxOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BvDgCJak6ZgPn1fa2qI7ptrYswK3YsCh+hZ9/LQdaCM=;
        b=bqTaBnz9TSH1FUQGog3/wtIBK8ZpeYBatrNQq3lij76hahmY/1jIAsNMuGjx+qNQcN
         vMwvU4exIjoSlXvmasQgTUkfkHHWFccysizylWu+ZTZdrbhdMcmTjUhHyaNVFYnbwDml
         zrLdYe1KZyBfbKV/c3xzmlaLbHqNtOcEQ/mqiR9FB7tCL+JGhr5q6qUkdPYVishX3Oyq
         5GKYwGC63XqzPpYjhzgpzc9fI9l0MxAB6xDV59dAFn9e/jjHYhXyvqjnb6YxrOcvidxh
         uyOO/1EmFkd2mSn7Ptnl4JzCfXkWeRjZqMZAsD474TKx8mxxaA9Kw1gDT0GNzfEyYPs6
         8VIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qubSX7cD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id p55si241841qtc.2.2021.01.13.09.52.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 09:52:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id r4so1478475pls.11
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 09:52:34 -0800 (PST)
X-Received: by 2002:a17:90a:31c3:: with SMTP id j3mr417597pjf.25.1610560353726;
 Wed, 13 Jan 2021 09:52:33 -0800 (PST)
MIME-Version: 1.0
References: <20210113001320.qreaohq2hzzmlxxu@jug> <0fd95437-74c4-1ab0-d53e-41fd6fe4f759@redhat.com>
 <20210113162845.xugh6v5p6talrm7h@jug>
In-Reply-To: <20210113162845.xugh6v5p6talrm7h@jug>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 13 Jan 2021 09:52:22 -0800
Message-ID: <CAKwvOd=Z8HYcz1zdccUHUWcQkgh9cFfpVRjcAfPF+ug4_NX5iw@mail.gmail.com>
Subject: Re: tuxbuilds in kcidb?
To: kernelci@groups.io, Dan Rue <dan.rue@linaro.org>
Cc: Nikolai Kondrashov <Nikolai.Kondrashov@redhat.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qubSX7cD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Jan 13, 2021 at 8:28 AM Dan Rue <dan.rue@linaro.org> wrote:
>
> On Wed, Jan 13, 2021 at 01:00:11PM +0200, Nikolai Kondrashov wrote:
> > Hi Dan,
> >
> > On 1/13/21 2:13 AM, Dan Rue wrote:
> > > Hi Nikolai,
> > >
> >
> > Just want to make sure it stays (relatively) stable and is recognizable.
> >
> > > I'm not sure how to represent the result of the build (pass/fail) - I
> > > used "valid".
> >
> > Yes, that's the right field for now.
> >
> > I'm thinking about replacing it with "PASS"/"FAIL" "status", to match tests
> > after all, but not sure about that yet.
>
> So if a build passes, i'll set it to True. Otherwise, False.
>
> Note that sometimes users do somewhat foul things (i'm looking at you,
> ClangBuiltLinux), which cause builds to fail through no fault of the
> source tree. Things like setting various binutils to llvm variants, or
> building configs which don't pass with llvm. In other words, these
> aren't necessarily curated expected-to-pass builds in all cases. But I
> plan to just start with the production LKFT builds, which are expected
> to pass in pretty much all cases.

Right, theoretically we can have build failures that are regressions
on the toolchain side.  It's still probably worthwhile to record them.
For example, while I'm using github actions for orchestration and
reporting/visualization of results/reporting, I envision having it
just send results to KCIDB then having some interface or query to see
the results of my build.

We might also have builds that are "not regressed" in the sense of
they were never green to begin with. That likely happens when we're in
the process of bringing online a new arch (like s390, csky, m68k,
riscv) (new in the sense new for us to support) or config.

Otherwise, I'm pretty sure we're using standard Kbuild invocations and
not doing anything "foul" per se.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DZ8HYcz1zdccUHUWcQkgh9cFfpVRjcAfPF%2Bug4_NX5iw%40mail.gmail.com.
