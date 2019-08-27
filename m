Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK7OSHVQKGQE45L7GJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AFE9DA8B
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 02:19:57 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id i70sf14358203ybg.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Aug 2019 17:19:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566865196; cv=pass;
        d=google.com; s=arc-20160816;
        b=uVWZsZmO+9UIDeGcrJMhhnj1YnNILgVY0sjTxhQ1PJlKj9/r+53dEOua7jsZROwSeN
         DqBxH0rXoUAA+ABCYzao2djKLPKuI8vTHC+4+YRhBQNSSEDRp7NWftpKBocHWBdLnHek
         ksrvV2MkLMTELUKJtXxT9YQksekGwkEoXqpXSj2DoBe5zuN0T1rF0+lgN4Cs7rButYvx
         /FmQ9gkj76rZWE4LC88sWTi2G7EwfA/P/DjWEggp75bS6wZBq8QeVfdo3QJbZ0SmIol7
         vLyydCV9dAd5WATNPekqY2v2MNwSFXk0+XvfMsAjCOkC1JV0Sxbhd5CZ3kHywzg6iv76
         QG7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=I+brMq1NWP0YRNQDDUyoJHkIXR/TNR2TU5jMVbQSWdk=;
        b=tmVLho9waEu3CK4BdBqxZiGhuSo0J/mvHs2JsvRMmbrnmIhJXKdLidTztS097YQkLZ
         2REPhfmlU8JmEoTKb6TfmVvWw59c9/NA0bZu7i913jsmTRzFh9B3jxVUmUXZOYjmfa4r
         oXV+a3GvBIcSEeD0TCMF7Cy+bKi7WmWcG+EE7SkOyVATxm0qZda87dXJBYLat8ku5TBO
         NlDzMT9m1NDa3cAsIwO30X0lZmA5etnxQyYAOsH1X0ojab4qhk5VG7QWpo3cKWXccSuc
         jzZwOwujKfYcFY5PkndrUj2oiCqSwWoYBX5USYV2iBZtlEAL9s0yjGzMNZSXOP3YDlcq
         8rqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rlLf2ah1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I+brMq1NWP0YRNQDDUyoJHkIXR/TNR2TU5jMVbQSWdk=;
        b=BiubTf1VAgDBc1s/XDNmPU4fOsY/P5pMN48o9FRFHwPbzTUkxOYDIiF/rhrRwGDUCw
         iyiT+B+NR+GT1tDTWrpSOcKg9JMxl3nK9HyqmaZRd+40VRBrCVR4Zp6rJhOJeOzKOkfO
         p8d7nmA2YPjNy3yCc3jw7Nm32gbLXy7fqea9Hcvo8iIvsj3BNm1Hu43clI/LCEzFIcLZ
         1g4ND1UPS8kq1jZagxf4Ib8Xfc0EKqCrHrEL3Q1tQOxOHrLERDfhox/yvWWHy8aAFOJh
         KdoWz7gf0c0b7ES8R8aTeFF9ePnGSDFB1t5fOukB4VUZDFuySrcWpES7/naPK8Zagg6c
         ec7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I+brMq1NWP0YRNQDDUyoJHkIXR/TNR2TU5jMVbQSWdk=;
        b=LjdWTVm//Z7HYApiEVihgG2RikOzDwzHe03atLAKPt55GU50yBvWRHTyBapbj6fWXP
         L9p7kQfcWr6qRGFJY9b7qi0oz7lN7L1BNf68s65g4Uzx092gubUfEaG43XNqo0+WdEhh
         hOunkP+6QDJnsPEfPiK/csmTd/WYiF6TwluHvdtewFxRKrvRgvCdzBkOYJl+kh2ucm2M
         DgYDFsnW47sYd49RykrLgxwPZSJZqpH4k0EY2igBEbErkDcAHVg0oQNOyg13Phyv9Wlo
         ru1T2m5ivwx+Kp0DAST23WkNq4F16QPrIAca2OgHk+2tyJAkcPZwr2WTJew6Ikdr3mY9
         33PA==
X-Gm-Message-State: APjAAAVxCrjyRC8IsQFUNKVEXjqobr0KDIIWEP1ysdjKTTR8MRccOhYh
	FMdGvAgZCzqTk30IE1wiRww=
X-Google-Smtp-Source: APXvYqz/+QL3vg6lBCxggqXHgLRfvs6O0MGz4R/QnG0G/tbqGqCA8bIF7s+ZGH1AvvbDL6aJQOr4MQ==
X-Received: by 2002:a81:87c1:: with SMTP id x184mr15284755ywf.241.1566865196152;
        Mon, 26 Aug 2019 17:19:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:b288:: with SMTP id q130ls4628362ywh.4.gmail; Mon, 26
 Aug 2019 17:19:55 -0700 (PDT)
X-Received: by 2002:a81:8747:: with SMTP id x68mr15362658ywf.74.1566865195807;
        Mon, 26 Aug 2019 17:19:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566865195; cv=none;
        d=google.com; s=arc-20160816;
        b=CxUQZ6FoI5RSQoDh3Lj4TdNV8Oaqhdl/187Z0iMq76Jij0vV3duvS2c2YVdgoDB9LR
         shw/iPy7+kG5zy7JCzjSklnrf9hzeJvbmlnbPV+mFh25Be1kpHh858RlQIJOEWgV2E2E
         R4QBNOHdeVxrOkn5b+eT4coy15uFiPamautNbIQayWRKxwaK0RWQrAvabq4D57Kh62UW
         WG09Hmuaawvr575gB1YV5/ZvZJUE7c7XtzYNOSop0SernGqxMucuyhBJvCOr7Ax/x7wP
         /RPOM5E0F6LcAc+npb9EKsGTVXV84ONCYRWKQoKr829UaNHOfVY8ilqXoLxs/zjf8zBK
         GB5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hEEzzkdeRsczZgOxP6fZZQbk+BsAjtf5i89GMJdNvlE=;
        b=XAK4h/eRh1Do7fKvlaQ0QUhUVLDw/dxpsSt0F/kmgQeCHtxB5F6PEz8gmBcVZ8Fm+u
         9hklW9W23PffZkCbti1BDvy1E+9irUAQ6npWuxMQ61CCBLmoDC2kMQKx8D+sw3vNQC5E
         Ujxc17PjP4Kq0zqYm4JYvT5QhtYV2wcDHqRKtVn6DLHrmrL+DgwfD0h73sNBEUdPWuX8
         sAYUBCqxK7e+4C/tvyeAJ8L8R1q2QinU5uQZl57H1UTvTHNbQj/2aoI2lT7RCz30lZh+
         58gQclEpFQq3JMqxA9pCNaS7uDZYGSC+8lCZVhafrYbi1Wk9Y15Rgi66qixoF+TZJlAC
         e+lA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rlLf2ah1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id r6si640441ybb.1.2019.08.26.17.19.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2019 17:19:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id e11so11575090pga.5
        for <clang-built-linux@googlegroups.com>; Mon, 26 Aug 2019 17:19:55 -0700 (PDT)
X-Received: by 2002:aa7:8085:: with SMTP id v5mr21870548pff.165.1566865194432;
 Mon, 26 Aug 2019 17:19:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-8-ndesaulniers@google.com> <20190815093848.tremcmaftzspuzzj@pburton-laptop>
In-Reply-To: <20190815093848.tremcmaftzspuzzj@pburton-laptop>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 26 Aug 2019 17:19:43 -0700
Message-ID: <CAKwvOdm4PgZten24afX5yiccYPjperVaW24bDms4ocf6ROdPjg@mail.gmail.com>
Subject: Re: [PATCH 08/16] mips: prefer __section from compiler_attributes.h
To: Paul Burton <paul.burton@mips.com>
Cc: "akpm@linux-foundation.org" <akpm@linux-foundation.org>, 
	"sedat.dilek@gmail.com" <sedat.dilek@gmail.com>, "jpoimboe@redhat.com" <jpoimboe@redhat.com>, "yhs@fb.com" <yhs@fb.com>, 
	"miguel.ojeda.sandonis@gmail.com" <miguel.ojeda.sandonis@gmail.com>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, Ralf Baechle <ralf@linux-mips.org>, 
	James Hogan <jhogan@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	"linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rlLf2ah1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Thu, Aug 15, 2019 at 2:38 AM Paul Burton <paul.burton@mips.com> wrote:
>
> Hi Nick,
>
> On Mon, Aug 12, 2019 at 02:50:41PM -0700, Nick Desaulniers wrote:
> > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> It would be good to add a commit message, even if it's just a line
> repeating the subject & preferably describing the motivation.
>
> > ---
> >  arch/mips/include/asm/cache.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/mips/include/asm/cache.h b/arch/mips/include/asm/cache.h
> > index 8b14c2706aa5..af2d943580ee 100644
> > --- a/arch/mips/include/asm/cache.h
> > +++ b/arch/mips/include/asm/cache.h
> > @@ -14,6 +14,6 @@
> >  #define L1_CACHE_SHIFT               CONFIG_MIPS_L1_CACHE_SHIFT
> >  #define L1_CACHE_BYTES               (1 << L1_CACHE_SHIFT)
> >
> > -#define __read_mostly __attribute__((__section__(".data..read_mostly")))
> > +#define __read_mostly __section(.data..read_mostly)
> >
> >  #endif /* _ASM_CACHE_H */
> > --
> > 2.23.0.rc1.153.gdeed80330f-goog
>
> I'm not copied on the rest of the series so I'm not sure what your
> expectations are about where this should be applied. Let me know if
> you'd prefer this to go through mips-next, otherwise:
>
>     Acked-by: Paul Burton <paul.burton@mips.com>

Thanks Paul, going to send this up via Miguel's tree, if you don't
mind.  Updating my series now.  (Will probably avoid running
get_maintainer.pl on every patch...too hard to cc everyone on the
whole series).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm4PgZten24afX5yiccYPjperVaW24bDms4ocf6ROdPjg%40mail.gmail.com.
