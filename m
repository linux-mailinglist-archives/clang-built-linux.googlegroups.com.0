Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB4V3TX5AKGQE5H7QRQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C482253ECC
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 09:17:07 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id v188sf2283125oie.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 00:17:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598512626; cv=pass;
        d=google.com; s=arc-20160816;
        b=EXeRo6aoOV2YC0XuDPQ1H5rLrfw0uoESF+wK/OwTS5VdPuep7k8PcbICQA+AdH7bJj
         eD3SExUJQKmLcN9zqk4QNuEdRUPqt2XDGUPfoBAB3voQrw58N6+UEz0GlScwKkDp7XoA
         6Ks/QRgcK3juMSBder0aPCe0JuTeGvSkU3Kzkca/ukv/8p2TzjMfDfE7xrwDZlVj3PQP
         XE5Cop8jIumVukZYNdrHuDj1VWuAd/cIFJ5S+Ike9z06jWGNyV2Z6JWBaJcLVaSh1+lz
         5JL0n2nPReZ3oUh/n21WvhNUzCyWWxuLwcdnSbvR47yhYk5GvqDX0+uErAFg9lKu0tIK
         vGTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=UV3lEnbuM9lJp0k7vrzPW5TCG7DcN8BGz/s73ffQeH0=;
        b=EgiW4zxl9Jn4ihtcWpCqgeP1kItDF3I07pJIaeRKuD5mPd/txe3gyLpycFys/c3N/s
         hJiUEq90vBBYIITrrRdBe2zV0aPEyh7A59oD6GFIcvAlPlnjfa/hlycQA+57MzvG7T4x
         Yq6e1Aqwr0CcBUfsLGod1ChYb82yMFHvxR8t8EMZJnp8XYSlcZpCPR9/AXSji6hXGjDJ
         GL0XmRdVZIsj3pV8vB9xr/Vs//De7/EMq1EI9eXdKGGrmgtCaMYPFpMyaB8Lgg773Bo+
         8qCO91xSgvv9xhaFxxumajTqIScM1QR+xMXFaYBywbnTb3XpLypY/mBTJdx/iSTnsf5D
         MtDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="b1pIiM/0";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UV3lEnbuM9lJp0k7vrzPW5TCG7DcN8BGz/s73ffQeH0=;
        b=c9mGoOCQd+54xDRcM6AIYLN5IWpwMiXVrD3EP/AiaizarLJFbvWEtJhWIc4qQgKxvx
         gDmsT3vIkY9k9FlzHFmdkuuCVmGFQBjRgjIGRYjqAZNYnE9cJ2UesKb4eD7Fg6qyAcsN
         OY3az4HPuJkmE0fY7fsf0nOsgG4SPUXUTbdnLnKg8lHPjhneCCKpEvCRc6GBdUP9FtH1
         HDy7fhKJGtPRLhTNBVKd/0XmvtWTVGtrKUu4CIjs189wQsD1m3ATJFqdw/zHp8+q0e5V
         FUNdsUzbE5Nqutss/M5RiJ479oAh2uyIaff5UhsYPcQ7BOTRAkT9Ems700rtx8i32Ain
         hmzA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UV3lEnbuM9lJp0k7vrzPW5TCG7DcN8BGz/s73ffQeH0=;
        b=NLr99rWCc/R74vnpA0maDOqLXbNgSSXRWjerPLBbW1M9lB/ie2fgw2um7hzWp0AbmW
         2vTd4lVubnvVk5RiG6QfRprOkOvSC1R9i948vJh5nVL9IVIVO4ChRk/yy69MMOa9aWkw
         YE5fH6hgnTr09P/0aACsr1hpEdLALwXWmWxglzIULYtPffmcOf9KghmLWVNoLZ5sM9Mc
         pU7Mz2Rt6Ck2ORBlYZudLKn4UfNfAR6srosX9HcSbPLi6+uYzCKn9SE+cvvIofle3esf
         01Xe3G+OGRSCr2z52P1knYgI5s/UuBj/pc0Jm9s+bloT/6HRK2De8vt+f/I5HpBRc9Vv
         fruQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UV3lEnbuM9lJp0k7vrzPW5TCG7DcN8BGz/s73ffQeH0=;
        b=jwaDZOB9LtQbPlBW5ukIhn0y+BZjA4eXqpEWKpOb9uq9AVLk2DOgDgmshBkBxFHJ7A
         yJRlXwKhVDPW0wWrv8h0vjtf099CpjRvXLmyqh6B14B7uvBI8TVG9op5PJBTSMRE0fL5
         iTqhjwOorR1nNipMk5fJSVYtSEc6rkYMQuUIrc/0wABlF/aLerrtfGkaerDfT6Sja5zt
         Yy7B07T4VRJ0yYIZ3/sfmO7RjjCtne7vZVynDTgCURRstu/Y4LCrCrLtLs70edLXVlKY
         BAkCyVRCASm/W1CUS0VF2y/ZrQ4qKHVhvDVoA9zNHrvHuuiq4s7kajFmkjhb0HRcUNMV
         RPVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cRgerw/Ur7LlOWUotl6VaBr6zV6UZ9AkcZQe5yrysbqxIjQF6
	/eP4692RvdTY4f1137Gzlxw=
X-Google-Smtp-Source: ABdhPJz17OiB9VkYu/0qEmgTNUiPKUB4T0WdC2PwRhcI+VXTZFocCDMid5C1YfBEu6Eo51/PeIOlmg==
X-Received: by 2002:a05:6830:18f6:: with SMTP id d22mr683397otf.251.1598512626125;
        Thu, 27 Aug 2020 00:17:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2231:: with SMTP id o46ls362905ota.11.gmail; Thu, 27 Aug
 2020 00:17:05 -0700 (PDT)
X-Received: by 2002:a9d:4b14:: with SMTP id q20mr12242332otf.128.1598512625806;
        Thu, 27 Aug 2020 00:17:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598512625; cv=none;
        d=google.com; s=arc-20160816;
        b=Qe7gIKvmd2iD4l/7H+8LHvxDMR8hrl9ZLTmttSu0uauseQnnzu0+s/RHuojFoY+Kd+
         4J15bdAoWjXfe1KFkEYcExRDyCUUKzp7EEAWJm9O2G0Y1rS0E8sunqdCHOjaZ5eESRn6
         vp6GAakdL3SoQfaZOp916L0sJrOMzID4Ldj8AOhtNrKc3aAj5AQVBtFayj1a0X3Xghtj
         Ux/n8WCTfF7jBIclGH2d4uJR3OOVErTT8bP3IUvr39oAUi5SlwzS8H9BVxBcYVLX0BrS
         GQKRMr6LVZwSQ2+v9t1EWT+QnCtt6g21fuEE0gti8bqcIAjtyauI1ZRPnEluVjHWaam8
         QBWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zNOXVAGO16g0kovdlJNyDoGYPK7lUFG4qEghaPRGfks=;
        b=koZTpWHxNWDiwVIUlNGFo5ThwqDaaLVBxj+6oHN0Tctj1y8JFxvzVZhgAb7ef17Idv
         BF3P1dJEyx2Gm6GeKBhEJECrQvgxSGaPPBcP/2OZpk3/CrjIj1cqCjqlQoY0jVdmi/Zb
         SvCJqkzuTDQcv+nv/YlKjxr1sIQ/noQ0bGBMGl374BGIsIt+eY7WH0HF1E0bS9FzFZta
         cx2U0rGtJk00v0P/sJpW0CWAlXmpbPGoia+UGB8dREb+buCTgatALf2dN3jAJT02BJl0
         DdU7rbnghDjVQpd1SZtgZz7FSFwvBy9C1zR74uw1AOrQ7dlJA2Ke9MJ7hemSVQDHpTAo
         2enQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="b1pIiM/0";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id i19si64546oie.3.2020.08.27.00.17.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 00:17:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id k20so3640654otr.1
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 00:17:05 -0700 (PDT)
X-Received: by 2002:a05:6830:1147:: with SMTP id x7mr13199188otq.28.1598512625531;
 Thu, 27 Aug 2020 00:17:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200826201420.3414123-1-ndesaulniers@google.com> <202008261356.B31349A@keescook>
In-Reply-To: <202008261356.B31349A@keescook>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 27 Aug 2020 09:16:54 +0200
Message-ID: <CA+icZUVhw6Pry-N3dZNHKYz1UqEg0-ePOYepoe7rn15+S5zGgA@mail.gmail.com>
Subject: Re: [PATCH] compiler-clang: add build check for clang 10.0.1
To: Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Marco Elver <elver@google.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, 
	Ingo Molnar <mingo@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="b1pIiM/0";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Aug 26, 2020 at 11:01 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Aug 26, 2020 at 01:14:19PM -0700, Nick Desaulniers wrote:
> > During Plumbers 2020, we voted to just support the latest release of
> > Clang for now.  Add a compile time check for this.
> >
> > Older clang's may work, but we will likely drop workarounds for older
> > versions.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/9
> > Link: https://github.com/ClangBuiltLinux/linux/issues/941
> > Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  include/linux/compiler-clang.h | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> > index cee0c728d39a..7338d3ffd240 100644
> > --- a/include/linux/compiler-clang.h
> > +++ b/include/linux/compiler-clang.h
> > @@ -3,6 +3,14 @@
> >  #error "Please don't include <linux/compiler-clang.h> directly, include <linux/compiler.h> instead."
> >  #endif
> >
> > +#define CLANG_VERSION (__clang_major__ * 10000       \
> > +                  + __clang_minor__ * 100    \
> > +                  + __clang_patchlevel__)
> > +
> > +#if CLANG_VERSION < 100001
> > +# error Sorry, your compiler is too old - please upgrade it.
>
> Perhaps a bike-shed suggestion, but I think we should make this message
> as specific (and helpful) as possible:
>
> # error Sorry, your version of Clang is too old - please use 10.0.1 or newer.
>

Agreed... Information about the required minimum version is user-friendly.

- Sedat -

> Then anyone seeing this has several pieces of information:
>
> - the kernel build was attempting to use Clang
>         (maybe they accidentally poked the wrong configs in a CI)
> - they need 10.0.1 or better
>         ("upgrade to what version?" doesn't need to be dug out of documentation,
>          headers, etc)
>
> With that, yes, let's do it. :)
>
> Reviewed-by: Kees Cook <keescook@chromium.org>
>
> (And likely we should improve the GCC message at the same time...)
>
> --
> Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVhw6Pry-N3dZNHKYz1UqEg0-ePOYepoe7rn15%2BS5zGgA%40mail.gmail.com.
