Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7UQW35AKGQEEUGT5SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2941C25846E
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 01:32:16 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id m16sf1543904pgl.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 16:32:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598916735; cv=pass;
        d=google.com; s=arc-20160816;
        b=YUxZ+GpbOdbnlUAjpLTsmpR1HqlER/HaZNcTNTP3px8J/rweQ9v7/6LKTLGfhkbp0w
         +Bf9iEXca34P3LWBKdERKWT0GgD2jIekMam+kzim54uqjF2t57kayNa5Jp9cymrWddwL
         QMvZr63CLP/ov+rca5ziFDWjGxIptlLfFT4hesTMyFLhI1BEW7nAzvr+pm1zM6ul+R+a
         0ah3rxyj76aiGs7qVuFvMOa2aDn3pX8oNp5NVps++m/j8+vvhKnwtnK5PgOZtFPpF6hR
         3OUBy9Dr4F6I/zfpN9tyv+PZ/WvolWtflVMh1CVlb03zKyE3/HcOzUP1YpOKrM+kVRY6
         Su9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vyVmi5+noinAPtN8F4Z+nosjLVDQ8u/ZDWUTG/WmFq0=;
        b=eDbFJYVoz7Bl8k2gj7o3fUHWhp4bmrpxITQSwFpj9IALP4tCMhgOdx3/PYW/x0NzN2
         oEPIYexBGtYVGOEjSzzxXQQnFvBOTQ9tbSG4fZjyvvPMA7kVuf/8//Yk4V18Il9m/8DN
         Kbf3eSkBbjrH+i7Y1TGAz70JfZvEHlmhFKIXoyUscUAWYQlJRydTkHdQgDrxeJb1BnZG
         rk4K3XFguQ00LDZ/dpJJ5E/pilvm1CM2q5tc6R1b9tdTpRZj3LC4XpmrRHaA7ctt56aG
         HbjAw1HUsUj7mwXXa6h2rTR+5F9QvI6p2U/8nx5gFUjyFDbVbYrcPFbIwd3/3SMs6fR3
         3ifg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZvjSqQzD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vyVmi5+noinAPtN8F4Z+nosjLVDQ8u/ZDWUTG/WmFq0=;
        b=BsXbgq+NqyBIFZ8Oov5U/gFcHyZrYnYRTyOxovV9Xvv3+5YbELJ9ZhJ6N2Fcdlpgi4
         Y6BIhZd74WuWzKq2HjuCdXHwZyrE5AAtcSpDFoM1XK1Ly7LRlwb5h8m3rF9sJBakHQb8
         06AyrqdbWIcKd0Ns/RTp2OifsIuU16ver8EAEfFYgz02DcNj08BYhYUoG9BlkPl88xyN
         tzN56ZSRWPgDe+nWTXjZOwcLJLk5NCc5dF3dTqAtlLn+UG6UkOse0sBNzJSJp33YVZTl
         HXV1BUBaQhmGrBesOxA0pcibF0terzJHbTbKwfPR4qhTSsG2GnrjYLeIdhFc7LeG2gkB
         Mc+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vyVmi5+noinAPtN8F4Z+nosjLVDQ8u/ZDWUTG/WmFq0=;
        b=YG2k3hs4GBR//r62XVLcEHUZaMKCZhjORKIXU8mo+g3EaKOsMxoEhkotq3qtCoW5V+
         2aFpEzORQlYMEsd/2304xjiZVr4PIZfJdbbpJU/Ae08nZbIFEBXhd53b9Bqf8x75IeHj
         18/QYYZx+BFNqK/eStDXftURnvqUBipte+1TrhH/hwHQnGRA0i3gZDIDqcclgpMkaohz
         RvtuXYit9kOrr5WMsAEKKVuZdQEOg68bLBC+ZUTIHxG7T3C2kR56lVejZKBh7DwoY0LD
         T60eEWKsuuXDTrQjrM5q+DsAVXXb/Sj9QdBxeCttSb+YrTiifubAhS+Npvmm+7y4CIF+
         58UA==
X-Gm-Message-State: AOAM531ffGSXtG/mfGyIYGylYOUcAIcVZQ7x6UDxouJ80phAcbQLWB/8
	niBnZ9S04A1bjFas07rFokM=
X-Google-Smtp-Source: ABdhPJyWJCB7Ah3iGuzaI3p4r1Kb/GpCgiowAVbhie36eSPHN2VT9bVkoldqkSnOI4mIwbYtZ0CJaQ==
X-Received: by 2002:a63:5653:: with SMTP id g19mr3027716pgm.151.1598916734848;
        Mon, 31 Aug 2020 16:32:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2c47:: with SMTP id s68ls3047039pfs.10.gmail; Mon, 31
 Aug 2020 16:32:14 -0700 (PDT)
X-Received: by 2002:a62:4dc4:: with SMTP id a187mr3154292pfb.265.1598916734410;
        Mon, 31 Aug 2020 16:32:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598916734; cv=none;
        d=google.com; s=arc-20160816;
        b=OLynbyOM8nTX0g98ajP5ehmgHmbwN5BXB7RPKTEWw0pkxi1dlpwHVEp6ZQOuikg43D
         6rCdMVqh4r7jmpanRrXSs/hYPvhfsntQX/OWCzIm7d+/XOXrO0i1TJuPCwZWsSS0HyTI
         QKOJu3rvUUrp1RN3OfXkDtXCqj4spKlUQxXx55AV0Rm/5hkhakrUFCuFPffI38LID5A8
         g3Go1aYWoreZo85ZnVwP0WNZycRl+8bhuvjZkrTgJAoR7LZSqK8cQCXpDeoeS+4fJdwW
         BiHttLcI4jw9WHpMu1DFaavI1g9fcO07w52Bqfg8kBx1Xs4iwCMQksFdEo5oSvLlShL0
         DSpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iQyI5jnqhxLR4xdjLE0c/+hNgZMrXCOgjD35+oUtjqU=;
        b=gJBR5GEwRVyMJWarnRGbdYOHKELhN4yPCAHYA3wscyu0awY4TCM/CEis+Fle1ncGlb
         PY53uzjUvFDuN375oO1S/o3JzE9DzgjQ0EDqJnOilZ/rn/1hDF/bfZVWVbh0kJXNeM1G
         k5JJVTujR6Ds4keFm9WAzYNNLuoHiej6m9ynmoqT7oaBe9F7ClBCjg2D4ZEi17M6/R2E
         fKa07RjZWhtFnDdrM0SwMgFH7pS1i0WIOu8iu6a5fhmqfJWmB1u9ar3JM7r42akuqL8F
         I7EP3dPjDMno7JND4xKdClOg+bf+VY4OLVqELlXNHtTZWfHQdH3eIpJ9msobYH9T5mh4
         BdUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZvjSqQzD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id v62si342779pgv.0.2020.08.31.16.32.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 16:32:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id 2so737084pjx.5
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 16:32:14 -0700 (PDT)
X-Received: by 2002:a17:902:8f8f:: with SMTP id z15mr2890617plo.221.1598916733887;
 Mon, 31 Aug 2020 16:32:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200826201420.3414123-1-ndesaulniers@google.com> <20200826214228.GB1005132@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200826214228.GB1005132@ubuntu-n2-xlarge-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 31 Aug 2020 16:32:02 -0700
Message-ID: <CAKwvOdkTN4BbVvwh8MPrVXERdHjQusmp9yAo09uW=698_fi0Fg@mail.gmail.com>
Subject: Re: [PATCH] compiler-clang: add build check for clang 10.0.1
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Marco Elver <elver@google.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, 
	Ingo Molnar <mingo@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZvjSqQzD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Wed, Aug 26, 2020 at 2:42 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Wed, Aug 26, 2020 at 01:14:19PM -0700, Nick Desaulniers wrote:
> > During Plumbers 2020, we voted to just support the latest release of
> > Clang for now.  Add a compile time check for this.
> >
> > Older clang's may work, but we will likely drop workarounds for older
> > versions.
>
> I think this part of the commit message is a little wishy-washy. If we

Yep, you're right. I'm still in denial. Let me rip that bandaid off
and send a v2, with your and Kees' suggestions.

Sorry, the docs patch already got picked up. Let's follow up with
additional patches to docs separately.

> are breaking the build for clang < 10.0.1, we are not saying "may work",
> we are saying "won't work". Because of this, we should take the
> opportunity to clean up behind us and revert/remove parts of:
>
> 87e0d4f0f37f ("kbuild: disable clang's default use of -fmerge-all-constants")
> b0fe66cf0950 ("ARM: 8905/1: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer")
> b9249cba25a5 ("arm64: bti: Require clang >= 10.0.1 for in-kernel BTI support")
> 3acf4be23528 ("arm64: vdso: Fix compilation with clang older than 8")

I'd prefer to see this land in mainline first; otherwise, I'm worried
about this patch "racing" to mainline with those patches if they go
via separate trees.  Thoughts?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkTN4BbVvwh8MPrVXERdHjQusmp9yAo09uW%3D698_fi0Fg%40mail.gmail.com.
