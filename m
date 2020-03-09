Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXNVTLZQKGQEAY4B3RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CD817E8B9
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Mar 2020 20:37:02 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id y5sf4976012vkg.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 12:37:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583782621; cv=pass;
        d=google.com; s=arc-20160816;
        b=1Ago9Ng579sgqkdiFJPA7hkvFUdgy4W2U7JmabP41sNMXNS1h0ybovIEJfrptxMHxV
         PpRPuQ7uayVGLJB+I5lNE4Zm2MyI4psAIni9tfKAD4A8Ir10rhtF11DR8v2B2SSZcyiC
         vtQaT01PDSoojNoOUlW/cyf8utfgPQZRRAoGpJYBCQI+WDalqWt7z+4Rtd05osNmB092
         ehUgfNClxiJOUOEHIPWWBOvDt8dsCofB2RY5fhxozqbNQdTkgZGdH5kF440VAlqBmZYh
         cVOrBjIgEfUwSV9H5YOQaXiTTC3JvVa2bQDwajzFhgtEifU8EuFmTDGc099FQGHNs1Oy
         LQYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=W7XTqU8MoBmkTnY6VhwbplQIG0eTXdBY/ky2614geuE=;
        b=awsAzp+Q/jXTdA4ZiD70Y452o4d+7zK1SWl5zeA2vAubSr7TAePnpsybIl6vvS4iBP
         uG+3IfroF7y36AzoZxeQ9g8lBPPn6wyPyw9yI7v7kYZ+Eo3Nurpl6XJw9CsmeVCQpnIP
         CE6tqd0e1JftXMUd2KJcDnxf2UX9LYTn7AeajM3pxtLqozd4nqLWHlKPyMfhYGKc6881
         7AW4MOrBK+ZkAPpmFiyOIHvsU7o67PCdUtgUo/sFATZ90y/k8MKg1cmvLvUEQNBPcuQU
         kvN3Xc1dcwH2VVlR5Fc0r2SUabzH14gaffMoZceXwglC8Z9ccTTmavQAvj46Itq3g0ir
         SCSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O4ebsCY+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W7XTqU8MoBmkTnY6VhwbplQIG0eTXdBY/ky2614geuE=;
        b=VRGKbSBSSBMQYRWgzmb3zejpJ54SP3RmSGCXSKk9EXhneqKen2j6c0H/8iY/0SY2oB
         Gaw7XN2NPWEgF1pWzSe7tanvjsIM9gvxNMWlsvEGkzFbu0+4x0Alfn39Hy5Mj91Z0t9P
         HvaYt+JuOY9Ec21VOs8QXum3kJ/b0WrQZr12DNOjnzypCnfErBaKa30oP55zGnkFuMQa
         G6PXcy/WK4+7cQ9/XouiFnyY0Dop4Q9qX9Ji8PhNIVyt8/JFCx3aMS0Ib8At3jDa0+0s
         me046tjzmAQtFNOdPKoANP2FKTy4+UTqlnnSf5Fwx558qzavYV/lTNbNTc+WZjferzlJ
         c5lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W7XTqU8MoBmkTnY6VhwbplQIG0eTXdBY/ky2614geuE=;
        b=Oy4OW/+7AWfn7tNrtZXj8ES6Tj/5XNb+XyMreImjoWcRBuygdEjbcReXCVYvIc+Rnf
         juwVhgS9+hQhz9o9JBqhvwEfr4GOuiznbMnbUBJGKZabTn1b5HZJv6u1Cn/HcQV/ELpC
         hVgvxGT8hYi4nVDdSa/ByDbFpLS5Y9CSNT+GGFlY2SGmpg/zl4rd1uTiigb+PnktHW5b
         AW5L8Hes9qS6EALKacF5+9iEUbKmfsL2XM1OYxSkSIMclz4drKroiie0ITV6rj0xRxAu
         FHbCju2cbhk1XGmrOAHgFSU+BH0sYK4+9ndFv1IV/o8OnbvOYVqy795qyKJRzL4lst4o
         zcJg==
X-Gm-Message-State: ANhLgQ01Hp04X7y9mntRbDIBtryIDtzSA9wh0BUnB27FhZarYzxxc/qL
	bwfm/lQnXK1R6t2mWjXoFuo=
X-Google-Smtp-Source: ADFU+vv13gehDADobDJeZzs120yKdEXvTRypWzWsL1aliXNU/Yn04kQuL9ozA/io1ktp+PVqdZWfrQ==
X-Received: by 2002:a9f:3733:: with SMTP id z48mr9416990uad.140.1583782621642;
        Mon, 09 Mar 2020 12:37:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:6184:: with SMTP id v126ls196959vkb.0.gmail; Mon, 09 Mar
 2020 12:37:01 -0700 (PDT)
X-Received: by 2002:a1f:e004:: with SMTP id x4mr2529323vkg.79.1583782621187;
        Mon, 09 Mar 2020 12:37:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583782621; cv=none;
        d=google.com; s=arc-20160816;
        b=jOEbAoqRSo+AIvnXslhF6rtPmCQxwNdKBDOavdVXTfKDLbMAYDwF7S9EIQuUSdMUFp
         XNcxb9OQgmhD9p1LwqDvYEGFRrlJzxJVMHVDpjKfc7ISsFxjkVNrT3jh34zA45vVNZQ0
         2yVUYG2JbvdHahlr9uiBJ/i/Ix+bYxO4G3PhOHuq0YwsaXf8CUtkJ/5HkS6GAHsoy0mn
         /ss38BfEqvSHyN6Am90EYion2H0qycJLj02Q6aHuGhnTLr1Pr55LhYQLJJaEJmiCQ+5s
         dM0J3aMau1V5WbFhkXFQ1It0zQqGj9j7TBbNoUHyka1KKFjeDJvPNTwGIRLx9cSsQoXZ
         Ccyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rITjmflNY+bq50oaknXGIP+wYS1ykHN9pumCvBYNG4g=;
        b=N8MOP2ynTailutPt/meiNcrlkF/+XSrCfG4HHAg5gfPoYQaaqgfX5o8an6EAXrSMu7
         lrTJgfyW8ubbyw9iFboJoHvP8UzFzKdeCFQfinInhM2LaqgL5gfaJ+1W8cdeqbgtURiB
         u8Ib0CzDmxuD+rAwgGsyJgB5p2aDMEYYmBVYyNdm+4k6wLrrYI/bjwbbOXJvLqaGAMBQ
         IBKq41SzBr+SWriUIRthTXIoJ6ZZ+MFQH6ZE0wKWmk3S03dnETuOzNNWZuCRQjD94jTY
         j2DQAQgAGR0JVI0ZvbtV1Olc4jfzKx4CJzIQOi454ojIyDu5YE0BmbSDRJ7/jmYGwX31
         9AjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O4ebsCY+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id o21si612955uaj.1.2020.03.09.12.37.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 12:37:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id x7so5174303pgh.5
        for <clang-built-linux@googlegroups.com>; Mon, 09 Mar 2020 12:37:01 -0700 (PDT)
X-Received: by 2002:a62:37c7:: with SMTP id e190mr18266676pfa.165.1583782619765;
 Mon, 09 Mar 2020 12:36:59 -0700 (PDT)
MIME-Version: 1.0
References: <b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com>
 <20200220162114.138f976ae16a5e58e13a51ae@linux-foundation.org>
In-Reply-To: <20200220162114.138f976ae16a5e58e13a51ae@linux-foundation.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Mar 2020 12:36:47 -0700
Message-ID: <CAKwvOdkzc3AtpkRcZU06yvAEzp_bjw55HkpGui6RsAcy=FhnJw@mail.gmail.com>
Subject: Re: [PATCH] cvt_fallthrough: A tool to convert /* fallthrough */
 comments to fallthrough;
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Joe Perches <joe@perches.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=O4ebsCY+;       spf=pass
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

On Thu, Feb 20, 2020 at 4:21 PM Andrew Morton <akpm@linux-foundation.org> wrote:
>
> On Thu, 20 Feb 2020 12:30:21 -0800 Joe Perches <joe@perches.com> wrote:
>
> > Convert /* fallthrough */ style comments to the pseudo-keyword fallthrough
> > to allow clang 10 and higher to work at finding missing fallthroughs too.
> >
> > Requires a git repository and overwrites the input files.
> >
> > Typical command use:
> >     ./scripts/cvt_fallthrough.pl <path|file>
> >
> > i.e.:
> >
> >    $ ./scripts/cvt_fallthrough.pl block
> >      converts all files in block and its subdirectories
> >    $ ./scripts/cvt_fallthrough.pl drivers/net/wireless/zydas/zd1201.c
> >      converts a single file
> >
> > A fallthrough comment with additional comments is converted akin to:
> >
> > -             /* fall through - maybe userspace knows this conn_id. */
> > +             fallthrough;    /* maybe userspace knows this conn_id */
> >
> > A fallthrough comment or fallthrough; between successive case statements
> > is deleted.
> >
> > e.g.:
> >
> >     case FOO:
> >       /* fallthrough */ (or fallthrough;)
> >     case BAR:
> >
> > is converted to:
> >
> >     case FOO:
> >     case BAR:
> >
> > Signed-off-by: Joe Perches <joe@perches.com>
> > ---
> >  scripts/cvt_fallthrough.pl | 215 +++++++++++++++++++++++++++++++++++++
>
> Do we need this in the tree long-term?  Or is it a matters of "hey
> Linus, please run this" then something like add a checkpatch rule to
> catch future slipups?

Just for some added context, please see
https://reviews.llvm.org/D73852, where support for parsing some forms
of fallthrough statements was added to Clang in a broken state by a
contributor, but then ripped out by the code owner (of the clang front
end to LLVM, and also happens to be the C++ ISO spec editor).  He
provides further clarification
https://bugs.llvm.org/show_bug.cgi?id=43465#c37.

I'm inclined to agree with him; to implement this, we need to keep
around comments for semantic analyses, a later phase of compilation
than preprocessing.  It feels like a layering violation to either not
discard comments as soon as possible, or emit diagnostics from the
preprocessor.  And as Joe's data shows, there's the classic issue
faced when using regexes to solve a problem; suddenly you now have two
problems.
https://xkcd.com/1171/

I would like to see this patch landed, though I am curious as toward's
Andrew's question ('Or is it a matters of "hey Linus, please run
this"') of what's the imagined workflow here, since it seems like the
script needs to be run per file. I suppose you could still do that
treewide, but is that the intention, or is it to do so on a per
subsystem level?



--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkzc3AtpkRcZU06yvAEzp_bjw55HkpGui6RsAcy%3DFhnJw%40mail.gmail.com.
