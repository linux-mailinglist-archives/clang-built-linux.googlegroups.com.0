Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQHF6XVAKGQE247PZMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id C438598038
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 18:35:13 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id h3sf1774554plr.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 09:35:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566405312; cv=pass;
        d=google.com; s=arc-20160816;
        b=QK2mLfLjI/MssfG5YewV6ABmrktt272f64TOIfZjXcIXwHc7ra9w/kHFuiGHrJVk6G
         HF1piJZOQpx20dfTOcB9I2hFY0dIjjyG8ZjMnkbMh3Z+tdut6uio1i1t6mx+ZQ4ihVPm
         3vKXeEr9I5p+GeBmQDW74a0dDMR1gpkAOdYNqx5TiP90TMKYTZhprPQNL7Q+KDrzgduD
         c0fruKqIY2zgBPweM0F30hnE0xQVymQ33ewxIJ+IWgtzpJXep0hMJb8us0Y1i//QuYca
         aU8hhQiQkuSmkEbZuIx4CXzkBELWl1n39eW38ibtIv5u8pXcDKu2jWFqmc3wn6elsfFD
         PlPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dftRO0bwyvR+BGAcD0zCe4N+x8j7y7pvxI4N3o4D3eY=;
        b=hrLNN5Rs2VcUsJuxfal8ccJ120jT9I7biCBNkHCpL4cA0metQg+yGTJDruoiFnQu8m
         zCZ2TcuSpmtDaJiH1MB2jmMkgqX4Zks5sikQGQT1PM4sp6MWBoRba2e/f1qpR+P8mGHn
         NWcR0DNgXlydOORGd6TgOPk/x/j5YLYpOqjC9W11xVsYjbKzGhVKfWUy0/u8iqYrm6qg
         /kCsci5y7q89ZPfgtCfvgos6MR+UBIfkkIOXMMqyFjiv5lxIzO+PfXZf/ixrzTlnbQON
         dFFPOvJ/rCELfVsRF04gezD5CMfBlTiC275lH7xf+/yjxyOUiWGbPAgTj8QLAWliY5PQ
         xZRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fN5DNexW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dftRO0bwyvR+BGAcD0zCe4N+x8j7y7pvxI4N3o4D3eY=;
        b=MPbpw0HPa7amNUtsPOLE8AYp7kCcrLStIn5yu3HPbgjv1rkXPBkiFUPv/AY+Wl76PF
         S3tDTn3t4XZIN6s1C4WG/xWNbKr/sV/c7HlPstGOhO2NdFH4NSQ/5FCNSc2lHsHGntjn
         wRdrkDEzCIAzuMX+YEvUYL+ZYNGfiSHTkFvV2ueXuYRqewlsMWL09t/SaET28x/+XwoD
         6waw/Y0t/hPoiYGihrgsdBOsJSL4826AimfKoCydXbZoMNn3CO1gHA+Cx+0xyD0JGT5B
         oVVfugsvFhiYBprzfhN2KRd12APUR4myWKkAkdcLff6h9bdkPtiY8KWy/gZ6x9R7Fqdh
         etOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dftRO0bwyvR+BGAcD0zCe4N+x8j7y7pvxI4N3o4D3eY=;
        b=UJDomj41DJFUH+Ss2n7CIG8OfmIZpqPTZPGsbLQG2/cFMWzm7KIpKid6inIy1paew0
         3D+bBo9I8KieBoQO0Faav6ykW71sIvuT5KRfdiX2KGDfYO0u+ySuxcuxEzHa4f9ZeK9s
         YolOec77QzIXNlRmgzTRFfskcJ85d4Dro6+2LvXHk6n+DEuR54Id59bAMmYcQs8vRjO/
         1Y87TyjSSYLHNRNtMb6zsNPSXe5z0qKwuUlbErvUjCEAF0eqTDzG/koQ2tlhbpJBcHmC
         ADOYyBfZ3untVtrl5yyZ8yuY9pKkE/osHEQUZD8IcOnytYJr21OUQJ92Qx9ES+hWITbV
         I2iA==
X-Gm-Message-State: APjAAAXUz4ZTRE5pMwcJcOcKFJ/YCseM8VNvoPOg2pQl6xncZNZhTyAQ
	HrSIhlV5SHwnbA24F5fXBfQ=
X-Google-Smtp-Source: APXvYqxH4xK2JCAfA9u4Hknhd81C7VNPfK3etXtbCNlW4Xs6jryH2ZCFsbAcp7Mj/pYEsLcJEQ1vbw==
X-Received: by 2002:a65:6281:: with SMTP id f1mr28168111pgv.400.1566405312347;
        Wed, 21 Aug 2019 09:35:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8d45:: with SMTP id s5ls744300pfe.8.gmail; Wed, 21 Aug
 2019 09:35:12 -0700 (PDT)
X-Received: by 2002:aa7:8a97:: with SMTP id a23mr35951585pfc.117.1566405312078;
        Wed, 21 Aug 2019 09:35:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566405312; cv=none;
        d=google.com; s=arc-20160816;
        b=bblnw5n+9Mc2e/XlS1+t/PeslvfL+v2rMmRvmihtwpJWzTjru5qPK6BN6Aa+58HMhm
         id6aLcF7OCPjc3rTi1yoRbhAG6P9urvc64QqQ6jptE6jnJJhiH1FQ4fkdZxQcX8B+pBN
         L8jwoCMECjMoOHPUlUoWmlyQC7W3ZjinTqJZPM5b8UrfpSVv22RqqcWZ54EJMNNl7raU
         T2dr7vHgO2HNYx41U0mBqI14f5vD1q+UtoAMK6uP0no4YgFlgTWygnLQb/ya3iJ9uPDe
         GDbKnIMEfVfT2cKIvEAZCvGc9qgubA+NngYReHY0bRjDZLh+2ersKWKoVAEejNg0a1Bz
         J6AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6mtupgrdzpXl942zMldSxIiJ33SoQTEB2T0bVkiGR9k=;
        b=ssD6Far9fwSbkMvwcEXI088UuQT09zS+wPN1N4E6HlL6DWDQW/7xtDjelA/LGUmnfg
         oarrIbqvrzaPEAgfXETXXnrGuPdsCT7bDprujSPSRr/Vd75SRVBaVFlnMQJf44qLeZ1k
         y1A6L84suus4r8SkHLlyWoAm/CLzwYTAWwvDAa4Dbwi1DCD7kem+KeM9R9nig8OiSL1Q
         ToFxGhh04mLGwnLxzVVGxGGCcWHHSFYy/lgOIIIu6nvSeaEpuUyc4sCeOJoqGv3P4f8I
         QZy6Y+Iyv3oTFsECaNmzYSZoKtXiWTjYmaP1SFfpoerG2mc0mv+Zv2LI9aFQa70gqM7a
         WDLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fN5DNexW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id w72si1122557pfd.2.2019.08.21.09.35.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Aug 2019 09:35:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Received: by mail-pf1-x433.google.com with SMTP id o70so1773682pfg.5
        for <clang-built-linux@googlegroups.com>; Wed, 21 Aug 2019 09:35:12 -0700 (PDT)
X-Received: by 2002:aa7:8085:: with SMTP id v5mr36958442pff.165.1566405311346;
 Wed, 21 Aug 2019 09:35:11 -0700 (PDT)
MIME-Version: 1.0
References: <831EE4E5E37DCC428EB295A351E66249520C9C9D@shsmsx102.ccr.corp.intel.com>
In-Reply-To: <831EE4E5E37DCC428EB295A351E66249520C9C9D@shsmsx102.ccr.corp.intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 21 Aug 2019 09:34:58 -0700
Message-ID: <CAKwvOdnhfiC57RrbJ-3NNwqFswjxDh3n--1R0+yZGjZPxDMnFA@mail.gmail.com>
Subject: Re: help cc kbuild-all@01.org for non duplicated clang report
To: "Li, Philip" <philip.li@intel.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fN5DNexW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433
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

On Tue, Aug 20, 2019 at 5:19 PM Li, Philip <philip.li@intel.com> wrote:
>
> thanks Nick a lot for helping filtering the reports. Want to ask for one more help,
> if the report is valid, would you kindly CC: kbuild-all@01.org (as written in mail body),
> which helps us to statistics the report from gcc and clang in future?

Oh yeah, totally.  I think *all* the reports I've seen have been
valid, I just refrain from commenting on reports that look like
they're obvious bugs where someone didn't try compiling their code
before pushing, and reports that look like they'd be issues when
compiling with GCC as well.  Certain warnings I have a feeling for are
Clang specific, so those I usually chime in on.

>
>
> > -----Original Message-----
> > From: Nick Desaulniers [mailto:ndesaulniers@google.com]
> > Sent: Wednesday, August 21, 2019 12:44 AM
> > To: Huang, Ying <ying.huang@intel.com>
> > Cc: kbuild@01.org; clang-built-linux <clang-built-linux@googlegroups.com>; lkp
> > <lkp@intel.com>
> > Subject: Re: [yhuang:autonuma-r0.2b 19/21] kernel/sched/fair.c:2646:13: warning:
> > comparison of distinct pointer types ('typeof (nr_page / 8) *' (aka 'long *') and
> > 'typeof (10240) *' (aka 'int *'))
> >
> > Hi Huang, see below:
> >
> > On Fri, Aug 16, 2019 at 8:39 AM kbuild test robot <lkp@intel.com> wrote:
> > >
> > > CC: kbuild-all@01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnhfiC57RrbJ-3NNwqFswjxDh3n--1R0%2ByZGjZPxDMnFA%40mail.gmail.com.
