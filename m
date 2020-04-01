Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYVHSP2AKGQEMLBD54Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CE819B4E0
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Apr 2020 19:48:19 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id 5sf857820ybj.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Apr 2020 10:48:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585763298; cv=pass;
        d=google.com; s=arc-20160816;
        b=lKrUSSE7gUcfo3LgJv/zoJrXYOBJTGq35IoF0bNJCMdrteB68oOvSBzATFo1AN/ISS
         AYi+RrB47EdB8a9bihdI0N1cgpPFt9K7AkM7/EGzEMvBlPJEy2MsNKa96FerkUo5DxFB
         eL/C/QOvyqnxnEcUCCSd9GwlwbqAh8zDd1X75BhhGMQUp99A2e+dJ13S1Vx1cHB2RVfx
         LMNDznpJJUJNB7iEXB5aS4HMZ58UssIHajI+pMDdD1Pt/AxGaiDwWc03o47BUSnL66Q0
         gHzsbEmKG5lByrowd0TVw9sA2ifDfXRi952u5Y5FRm3gg/qcQZTpFkB6a0SWp85Lx+1K
         6p0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3jNLZROoWxV3bLx7OHEt2lpBt9WxIcAhlZqXAehEHU4=;
        b=trU22KoldMZRqxpqaMqRD/TMcWd/ULN7Re3lkUgrUahenAzrlgR8yIs853zU65cUqv
         zWTpGXQ9r8qAWekD2iaRhK8WJI+dLkD65ZXcQW5LfxKcQTJ5iTbT7Zi/nYxBbJnxjGSK
         86DguuUtdsClk/HVgjE9PFJPX8mZhJNPPBZvnkkqGTNs4KJlTIY3MS8Kn52brLJba2+J
         smnZ2uAV+WrLKDCC069RddpUrBGMMVgbdV+usllp2SdUamEHzGuinS9HWCU98QhRijBX
         K9yQh2J1Pie+BhUYxt9wvBnE5o4fpLLpTCUI2WTkd5b/B0jTKRVaV3mjeNok/1fCFHET
         JuNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k62PxZvf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3jNLZROoWxV3bLx7OHEt2lpBt9WxIcAhlZqXAehEHU4=;
        b=KQCpX6KHtiOS7M2uM61kJcwLxkU4reF/LkOknu+/thtny5ccQdBuB8zxS+F9zwlASQ
         gu5f7Y0woq+eh37g0yZD+5uIbUKhGdjjTxNQ9ccCriBWcuIX+D2fM7JSeeznl9DWX9Ya
         9gmZ0g2NgPOrZcfDJEBqO7p/MCwy0ZfQvf2eU4S1rp1SPTSMcl3iXcA3ZOjg/e2FL6BW
         /KXS+PqJ6qY5SKwS/og0aIs40LuZjeSr4BCc9p/fHxdpzDKstkqA7zaeACKOnXLpyZmf
         o5K6opvwKDQqX2Yn1/Y0SeufElRbJIhS3JAsApkJxsHSuyLB1z4ZQIQp3oCrH9xv7dd2
         Wwjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3jNLZROoWxV3bLx7OHEt2lpBt9WxIcAhlZqXAehEHU4=;
        b=oAO5xMEHl2rLzifc6bggKyh83KAZIDBfisol5E6OnvhkNjULkyuWhlt/YTfigtD/5Z
         DiRkAkU1VlpEB3RlpJhLGMMeViXhiyw+Q/znK3xjksbAZbgQCgtwvnCEKiNk2bkydTpj
         C8S2nucAWIndpA71kYXwMigggLhTmkKI/tK69aoBj0cUTwi36YzrJJt6j6KPK3vMO91j
         affBt5O/yVcdIrPHVDffiOiphXkVowNUBmr/bARRV5OYD38hauBuQybhdQwD5ew36KLQ
         BQKJTdxRxgI9yu2Bi58x7y/oSxrtT9VLorIrBSMe6jQlCTBahT//510e63ueu7tFRcbs
         ZzMw==
X-Gm-Message-State: AGi0PuarBweH31XqnVfGRjje0kcobi+pcGxTEAdB60jKgHbWnKnJTmnz
	geh/+RV1kybhGn5a/saxKDE=
X-Google-Smtp-Source: APiQypLrlVt+Kpr/DCD6l/F8TKizgQHcnjo0w1gWGRT1v2EExMGxvsnpbC4ythRPKzxLQhdB6uSeCg==
X-Received: by 2002:a25:9889:: with SMTP id l9mr8943145ybo.106.1585763298471;
        Wed, 01 Apr 2020 10:48:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aa0c:: with SMTP id s12ls84584ybi.6.gmail; Wed, 01 Apr
 2020 10:48:18 -0700 (PDT)
X-Received: by 2002:a25:b952:: with SMTP id s18mr19106442ybm.50.1585763298125;
        Wed, 01 Apr 2020 10:48:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585763298; cv=none;
        d=google.com; s=arc-20160816;
        b=JAIctD7NFzvINhZ4XURXTmxUrEr/YaHLE4RQf5JtTlOMs/r6Vl5y33XIdMIMILL0b4
         dHaDJq+ADMnXUX/ALZKZPXq0echXldCIX55/5fcWv398C2JiXy8cJxwVjsFgSn3uCTA2
         zSBuTvPvsCCsNXiODbM+Ra4zf5AYDdGeLzFn4ZUagxBKOYUYOW45uyV72iTz3iPQN3Zq
         /cacwcSpRvkH70RehYx0cSlggwEi7HCZosfz8UDL20JEvFWpPfYnbU7ZC62Sq3ir5GHH
         Vy0KJPwDg640xiPdlFUh9y/5772ke2UXsoI4FcUffZa+MKWI4lenQXyUEvaszx3nMq2S
         LxkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=u6vNzmCXYSnlzwS1NEiJONpT2HwlhEUPd+tMh8UpVM4=;
        b=tuoY4cX/XixTzENOaphUxXtSNGMOaHRQGOLWZh+UF5zUhb1gebO522SzeTgeZBV+Ch
         rFmLo8606Ia1VKBIZ867F1tGA8FM6+Kdc9nNVImLkYQuZaPk0A3MG/6/ZUlySj7hHZMP
         1j5ZNJuZTV666ovMI6GNfXaQ1Fdf7KUrIQL3WNunvhbPcGR1rJWG1abo+9kF73MTlZAm
         e60US9nm+08Fscstzpb/EouqWkPVqPcyw0KypQFs+yJns7iCtPaY26ymdOkXtALT3oE+
         aD6UaWmMU1PyTyzSMlMC4SCzp7GUzl3gt5vqmosw9L1F60GwaMjz93ox1ularzsoYOo1
         xCew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k62PxZvf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id y140si211745ybe.1.2020.04.01.10.48.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 10:48:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id k5so458979pga.2
        for <clang-built-linux@googlegroups.com>; Wed, 01 Apr 2020 10:48:18 -0700 (PDT)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr24330185pgb.263.1585763297080;
 Wed, 01 Apr 2020 10:48:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200317202404.GA20746@ubuntu-m2-xlarge-x86> <20200317215515.226917-1-ndesaulniers@google.com>
 <20200327224246.GA12350@ubuntu-m2-xlarge-x86> <CAK7LNAShb1gWuZyycLAGWm19EWn17zeNcmdPyqu1o=K9XrfJbg@mail.gmail.com>
 <CAK7LNAQ3=jUu4aa=JQB8wErUGDd-Vr=cX_yZSdP_uAP6kWZ=pw@mail.gmail.com>
 <CAKwvOd=5AG1ARw6JUXmkuiftuShuYHKLk0ZnueuLhvOdMr5dOA@mail.gmail.com>
 <20200330190312.GA32257@ubuntu-m2-xlarge-x86> <CAK7LNAT1HoV5wUZRdeU0+P1nYAm2xQ4tpOG+7UtT4947QByakg@mail.gmail.com>
 <CAKwvOd==U6NvvYz8aUz8fUNdvz27pKrn8X5205rFadpGXzRC-Q@mail.gmail.com> <CAK7LNAR0PPxibFVC5F07mytz4J2BbwQkpHcquH56j7=S_Mqj2g@mail.gmail.com>
In-Reply-To: <CAK7LNAR0PPxibFVC5F07mytz4J2BbwQkpHcquH56j7=S_Mqj2g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 1 Apr 2020 10:48:06 -0700
Message-ID: <CAKwvOdnYXXcfxWT6bOZXCX9-ac8tb=p2J53W+T-_gOfUu9vvSg@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile.llvm: simplify LLVM build
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Sandeep Patil <sspatil@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=k62PxZvf;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Tue, Mar 31, 2020 at 11:11 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Wed, Apr 1, 2020 at 3:39 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Mon, Mar 30, 2020 at 11:25 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > Having both LLVM_DIR and LLVM_SUFFIX seems verbose.
> >
> > I agree, so maybe just LLVM=y, and we can support both non-standard
> > locations and debian suffixes via modifications to PATH.
>
>
>
> OK, so we will start with the boolean switch 'LLVM'.
>
> People can use PATH to cope with directory path and suffixes.

Sounds good, we will modify our CI to use PATH modifications rather
than suffixes. We can even do that before such a patch to Makefile
exists.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnYXXcfxWT6bOZXCX9-ac8tb%3Dp2J53W%2BT-_gOfUu9vvSg%40mail.gmail.com.
