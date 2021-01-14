Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBCE2QCAAMGQETRJCT7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D4C2F5D25
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 10:21:13 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id i13sf3905521qtp.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 01:21:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610616073; cv=pass;
        d=google.com; s=arc-20160816;
        b=opkzjmHyr+GD1gee009MsZgZtgYPvF/V1KY8rS4u5QdrU19xHCV3QuUi6CJJkWXKht
         meVIPsRm2fsvTdn0elfZdXzD3iPbxfOypnjJEP3vI997Wz8mkjHGR3XGJwsg8gb5m51l
         /kHpZec3p9WmBw+e9aSpaSUpMs2lmYTYhkEr3yNKyd7h/3NZ9eY/r+ZZsDlYxhpA2/S/
         PGfY0KtRvdpuSCJPM5m5yy6wVwDC1jNEc+OaQ08/tk/f4zbOux9hFIHaSHIU29iK5uTj
         Xydey98JH3DwPwbK4H31+pviwx7QG/aW793p7CusVj+eoKaLrhvFNMScCFtAkb02Q+gI
         XMlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=EdAfX8wmiq3ZqAMHNfRmDz9+O6CCDfZvQIhKhDHhUdw=;
        b=ldNx9X5boOEBU0QIvOvJIc+seZCdVT6+QkuBM/J339Nf14MZNnPoA23N2V8mPUG4kw
         /Rb3TEeapkDI6v1U7gHB7t8diPTPRAVvbmeQIde6Uqh0Np1FbhX445mm4h1rp4AZ1k81
         DQeFsyCI8Z7nQ924uaP8okWiaKBJcwE+/Mf6beWWe7E/gcyMHd/c3j3T2Yk0CVmSiiAr
         LHJbWNiGtDWSe3Lk+/EdUgglo5RE9Bljlqci0aTJcIislFGyJeN2JZuRhDJ4/DzpKdxw
         adlsnZdYGdVAh/eTOnLL1CPdG0b847qdRp1rSBo2Pug/4BKZ3H4TnvZd+U48MfEDimul
         d6zg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ZwBVEYtV;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EdAfX8wmiq3ZqAMHNfRmDz9+O6CCDfZvQIhKhDHhUdw=;
        b=mTRrMwSd6wcJA81Ee+rZK5wAweTFWje/IwLN2rjWJETSgXfjpInmmFAOB8xBMvfZRL
         zMTwX1o/eZ97RVOHkF2swVJ4/FT45LlZEOU9K54tSrNzjfRTAf6FVbDtSz7D6v7d7AVP
         somVATQTkDlJjbUzWDyndHH7GFd0I0knH2XoVe51/ZluESRvC2XnN0JnzZcgkNnL09WF
         I8kTvR0zlPp+xFFNxGuikCWdgR5c0tHsJb1n+H1PsQDOa0cPUi9N5x6fmTljGt0ba1Sq
         Lx/vwrADVyRqmFcBk5T6Ia6B0ttqsTrCnDfaks34L4+SvepNAWAcO85lPSDAdYbnOpzE
         MXkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EdAfX8wmiq3ZqAMHNfRmDz9+O6CCDfZvQIhKhDHhUdw=;
        b=jY/vp5y23RJVQOuKz0pK3XIK6aqs1geARw7PbFlUshmMccJMxd2PxHeilK3wxPhhFg
         fGsXRbanUbX36v7og9ArLZe9CdHCeMeVR3Nb/gqbDoRHBKEMjp7+2HZcntYzLx3AS3qX
         cYngzngnB1xk6FQikgiGSiXTsNY0Z4/pZjlBbZNACts4eaYIsSk9ZqykAtTTWN6ZJRUg
         hd0kryK2DBmgQREqFQkRErEWugxd4dWtQ35rYvLziCgVFsHCSutGLCMRHEuH3PrNEVjX
         qoRfIbvgJ0k8un8GGEwBaVE1Ct+ZNOBy7/zwRVSyGldo0+pmP9dCJw1nKJ8Qjb8DTIXq
         sFmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qJPloG/Ug1ugig7+gIWmAKz1U6WgsmCIdjPD0DagrLnGaGzo/
	Fwr74z31EIq+73WP0uH9AMM=
X-Google-Smtp-Source: ABdhPJxsF1lwVxGp00vPY63k2DvvTlNG6QnNGv0h26DcjBeqK2W1GLA7eg40ukCha1acFDvMdEi0rA==
X-Received: by 2002:aed:3b13:: with SMTP id p19mr6160022qte.302.1610616072922;
        Thu, 14 Jan 2021 01:21:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:702:: with SMTP id 2ls2462881qkc.11.gmail; Thu, 14
 Jan 2021 01:21:12 -0800 (PST)
X-Received: by 2002:a37:aace:: with SMTP id t197mr6154270qke.175.1610616072582;
        Thu, 14 Jan 2021 01:21:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610616072; cv=none;
        d=google.com; s=arc-20160816;
        b=fOAMtgQ1vgevZ38UAvV3C4p8yQQ1Y8UhGQVJn+UXVovMjA+41GUXbQ1dBfPhkO5YrI
         y9qr+cwKrKnWrQW4x0XHH3nahFrcced2f5xgEUfDz2fFoISjigsG4Zera9FJh6g6QUit
         J5IcJiDpdebkLiNJ/C6rYecn0gGvSY9L+7pl8qGNgortCMk5JioMjO2LzUeoS3s2KXsf
         j0Ws+u6B2OVZYyeoJu4hFQuhFuF6uAgHrgZ42D8b970yDUSYFOJF/6viIfQKXJo6+z1j
         JJtut4Xtz4tqYkl/lkWg0OfXrDxMfGdyMEGWWHRc7d6+kL34Zs414HRpq5CI5Q8Z0PIu
         Pscg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=GIb0FR4aAJ1kV0/4W9xH+1ZDMIfRJ13sU7o4iHJooWs=;
        b=Tj6MshovMSElIuHqYkku+ikJtO68foAZll4QL8PO5ltx1D7rK+rb91r7IDS9LcTYLw
         ezavnplx1W6cHwQPO+GCLSE98kSrG0W9XEkMRGXzD/sHPKPlgEuboxkOr4lq9HgRyxWY
         4pjhhTbE7wKpMYbTGmWyQJvFOXBkOdw6SL0phwxWDG5yO6/NvntEBXn1VTIguLRUtfzi
         X4Ls7N7mlHQ0vECGT1J++oEP3kGElRz6nC5cYDI9Qj7yVpT6G27hw7/51+0U29pYwg4x
         uMzs/Xotf4kZv/aKqI7YUdtS4Q/v31WQNh4HQ5PAo4X96FFV3LZHuRZ53UBLXsiyrdKd
         jiAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ZwBVEYtV;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id z25si388174qth.3.2021.01.14.01.21.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 01:21:12 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 10E9KquD024645
	for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 18:20:53 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 10E9KquD024645
X-Nifty-SrcIP: [209.85.210.178]
Received: by mail-pf1-f178.google.com with SMTP id 11so2998343pfu.4
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 01:20:53 -0800 (PST)
X-Received: by 2002:a62:820d:0:b029:1ad:d810:6805 with SMTP id
 w13-20020a62820d0000b02901add8106805mr6554390pfd.63.1610616052534; Thu, 14
 Jan 2021 01:20:52 -0800 (PST)
MIME-Version: 1.0
References: <20210114042420.229524-1-masahiroy@kernel.org> <CAHFW8PRr6kjEE=7BSzWo7itSZgAhy_dhmnSe1yq5wMfDwEyJ9g@mail.gmail.com>
In-Reply-To: <CAHFW8PRr6kjEE=7BSzWo7itSZgAhy_dhmnSe1yq5wMfDwEyJ9g@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 14 Jan 2021 18:20:15 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQHA7FpYfdDaOuf+t+nMCtLH=Z7cdoK+3z3ScZ3Fn9Xww@mail.gmail.com>
Message-ID: <CAK7LNAQHA7FpYfdDaOuf+t+nMCtLH=Z7cdoK+3z3ScZ3Fn9Xww@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: check the minimum compiler version in Kconfig
To: Ilie Halip <ilie.halip@gmail.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Paul Gortmaker <paul.gortmaker@windriver.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Will Deacon <will@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ZwBVEYtV;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Jan 14, 2021 at 4:55 PM Ilie Halip <ilie.halip@gmail.com> wrote:
>
> Hi Masahiro,
>
> > +       #elif defined(__INTEL_COMPILER)
> > +       /* How to get the version of intel compiler? */
> > +       ICC     0               0               0
>
> According to Intel documentation[1], this should do the trick:
>
>     ICC     __INTEL_COMPILER  __INTEL_COMPILER_UPDATE
> __INTEL_COMPILER_BUILD_DATE
>
> I don't have the compiler installed, but I tested this on godbolt[2] and
> looks fine to me. What do you think?
>
> [1] https://software.intel.com/content/www/us/en/develop/documentation/cpp-compiler-developer-guide-and-reference/top/compiler-reference/macros/additional-predefined-macros.html
> [2] https://godbolt.org/z/E5PE6f
>
> I.H.

Thanks.

The following is the result from godbolt
(except the beta releases of 21.1.*)


version    __INTEL_COMPILER  __INTEL_COMPILER_UPDATE
13.0.1     1300               (unsupported)
16.0.3     1600               3
17.0.0     1700               0
18.0.0     1800               0
19.0.0     1900               0
19.0.1     1900               0



Presumably, the version string xx.yy.zz corresponds to
__INTEL_COMPILER=xxyy
__INTEL_COMPILER_UPDATE=zz

The output from 19.0.1 does not make sense, though.



BTW, when I tried ICC a few years ago,
I could not build the kernel with it.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQHA7FpYfdDaOuf%2Bt%2BnMCtLH%3DZ7cdoK%2B3z3ScZ3Fn9Xww%40mail.gmail.com.
