Return-Path: <clang-built-linux+bncBDYJPJO25UGBBI4FVX4QKGQEJ2CYCBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEF823D434
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Aug 2020 01:37:09 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id z8sf20363833oic.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Aug 2020 16:37:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596670628; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y+7PCUWP9fTf4wQLhSoeqUMKj3eArlI+cn9TCrvFI2/Pk9OVdynmKZKgA6zGXS01XN
         YSOjvpfDmm9AUauq6/lsHa78Tzg6LyvXQ3ja9yovS1Sn5fc5ynyZlAVOKZSuAJMXETue
         QJtG8laX0WJ/dcD0VSfP6F5X8FGW+oIsITQxKRcucfjJZdzM2kyP2UPsbwc/nf4UzreR
         5CkLPyRSQEJOlUxc8BFD60+fbiHs9p3KHWb8p9bZSmzgbPESvseV2pAcj5XxzDcJgyDr
         E4K83cbjd2ypxfPPwZJqqNOYVzZiGBjShMdLQ0vX0EMyXZvzKDvnVqH/PshDCVUCcf1O
         WOuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=TDBTP6sDIQNAxEBm3HLkv/Fh4kfCBKhcYFJ0BqKJFFk=;
        b=QI8n8T8ObBOcXA5FId2WUL7EW2wC/F2YtICnaZuuNKPJQWTmoKIf1NEWQOVmAAWcOn
         sr0LjtXy7qftJYRP3M5SFd6YGDPoTCzMSN3xfX8daXSAvNWwqbEDvF8+NL08tXhJfEhv
         dHPj1e6J9gEUFgSFXyE0GSEp2QtXQCuoBeogijFQ4TaPQKi01Fuw8OuKI5K+Xh6hGSqO
         3DL8GdE4KQU6VVkKqZ323+K+12Qg+kbyNL3H6jTibfUXjwbydz0IhR8/xB9Aw5DPdsbb
         Fr+nnO+gvRaBTbUpkLCz0V/xtlCG1bsgEn2XSoaq27310UmXvuX0iNEsmcvtWhRLr0Fx
         UNxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="asFvMB/D";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TDBTP6sDIQNAxEBm3HLkv/Fh4kfCBKhcYFJ0BqKJFFk=;
        b=V05sTAWlGIIbs+ZQL1bJvw5yJTTp7N/Ii7kjNfRWPJcn0JBupNoqAVJfg4jAqdfzNf
         iw0sfdgBoZEMxmat2gBxg2DBHqITepZcnrtZUhwAF8o7oxncOQLlNXQKRMS/xAGLYjO7
         51f8YcRJfJqd26Eb33pEr9yWK5TFf8CwbK0KbbdtckcdF67sY4ARX1yG2CTHcAudZx/M
         u7g4NQPDhgnnP5iLLUC4f5a0jyyN4pX8e4ORPp2NQxNUbzcO+4RhabCGeoXe1ePHS7rc
         VyCH6xL/eBIwU9emTKY+iIH62TA9srE3PkQWJEktyC049bya7Lln6X6HtlI0/3yamj+c
         DTMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TDBTP6sDIQNAxEBm3HLkv/Fh4kfCBKhcYFJ0BqKJFFk=;
        b=PuYiFtLW8Xr1FQqBR8eDhI2Ao5JG+F3YrL6XzXMwuPIk22epctsgDHZlBvCq/yVwK5
         cMpGnGbpfaH5jfI5OahX5zBHDyH38wsC3zCxHVojyZzMIbhId2RL1B/uM2DAH1YfjxUn
         GDIx3yn7Ha/yZ6DC3gbeO6FzsKWCM1/Ko/2OQB/m9CwXA6RsTpfgFpTPNd+pHAjQPlkN
         Rf2gW7vLXaHxojWCNrIpBnQuB5htd/Go/EokL9cXIS7mlOYq3C21sWXRmW5ScuCiQZg1
         hcGEd0ZM0ij0rXboetGo2SzqMtuxM6pAAyUrOGzoIq+jb6wbH1en7zQ3su4eefp7RFoh
         XeSg==
X-Gm-Message-State: AOAM5307pOIlO1Gj39JTmDANi7jCwaPCYLyuUU3X3ZlPn2fZeDQzsdpk
	i+3GvZM2S3kMoKSJ2XoI5kI=
X-Google-Smtp-Source: ABdhPJwKpqJxPrBXKWK4Dkga+r0NmGgkUv+vnvX4Elmwwad6XdjCmecKtB8f3V/hZ+2PiHE33SFRlQ==
X-Received: by 2002:a05:6808:abc:: with SMTP id r28mr499281oij.0.1596670628047;
        Wed, 05 Aug 2020 16:37:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:ea21:: with SMTP id y1ls258817ood.10.gmail; Wed, 05 Aug
 2020 16:37:07 -0700 (PDT)
X-Received: by 2002:a4a:95c5:: with SMTP id p5mr4289496ooi.83.1596670627759;
        Wed, 05 Aug 2020 16:37:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596670627; cv=none;
        d=google.com; s=arc-20160816;
        b=XH0MQw4ZseAxcBcgBb2fIVYT/tbxURGJx+zbFaEPTGghwO49afB1wyx3Iilufr2zEz
         oAky9Xs6eu/s9QPfXydA+JoNboAqKkRRbliod8BUBmQEtdS8XXOXJTyUDkFgo6e3QN3K
         OYo/++oaiq+IzS7sc1BSzgLhQpOKR8Dzj/x6KMrCzDvK6ZtwBEaLH8iD0IDeN6Y7J6tJ
         vd6nxVz2bZ2amVRRBC94q1h0L+vHQvwl+6X8h99/qjz8ev+P7I4qDvf4xDFmyD+sImgM
         6INffs14maL5GDE3ksWsXSi4c+Yhwm1ZxmCawP2AHxhEKzSumo9O9jqyo0bWmVy1cCjE
         2wXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=k2m6lbLUxVEiAyFBqPyXkxcdNre2OXfB6q5ATriEFaY=;
        b=qYZfRWBkP9RHbp+LsAzRy2nJR7OR/AUZdGKCMZOYifuEC7zLzhobXphgRIU2HTDM65
         aCO3U7wdj1taGdVIfoxjDacOe4oXY+8fk6yu8QtcpFh2/NdDPTP2WMTNMwJRaN1WmwbX
         fkUeGSoEy/0HCBZY4zFb9D32FmPArsZwNur/vmGEDttSv2LYq7RTRn3Pba+67RqyUEFZ
         +3ofzFxOyFchwSryvBdSLxqx7zNRWjqbqM362erWpzuC6X9F/qTtVZVc+F3X1/yx18Lt
         8L+3I3zjG86ljieLntH6jYsSGEcJAGeWEVAwOcYAIFrMSMcj/KPsUYTOu/ZLOXf0wq7k
         vWKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="asFvMB/D";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id w28si256925oti.1.2020.08.05.16.37.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Aug 2020 16:37:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id d4so5505360pjx.5
        for <clang-built-linux@googlegroups.com>; Wed, 05 Aug 2020 16:37:07 -0700 (PDT)
X-Received: by 2002:a17:90a:fc98:: with SMTP id ci24mr5745524pjb.101.1596670626555;
 Wed, 05 Aug 2020 16:37:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdkqB=shsVhPJx-iiLR14DLkmbk8GmMGgmwmdS9YMGgvWw@mail.gmail.com>
In-Reply-To: <CAKwvOdkqB=shsVhPJx-iiLR14DLkmbk8GmMGgmwmdS9YMGgvWw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 5 Aug 2020 16:36:54 -0700
Message-ID: <CAKwvOdnH8Dak71EmAyVJpZejODy9cMWN22A-hOs2e4e8A+2Qbg@mail.gmail.com>
Subject: Re: light reading
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="asFvMB/D";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d
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

https://yarchive.net/comp/linux/gcc.html is pretty good, too. Some
interesting threads from 20 years ago archived there.

On Wed, Aug 5, 2020 at 4:07 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> Found this while searching for another email thread a colleague asked
> me about, maybe a fun read for a rainy day:
> https://yarchive.net/comp/linux/gcc_vs_kernel_stability.html
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnH8Dak71EmAyVJpZejODy9cMWN22A-hOs2e4e8A%2B2Qbg%40mail.gmail.com.
