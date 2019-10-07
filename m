Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOP65XWAKGQE37NIAXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C27BCEB75
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Oct 2019 20:08:59 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id h20sf4570856qto.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Oct 2019 11:08:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570471738; cv=pass;
        d=google.com; s=arc-20160816;
        b=BKevLIU0cXi+Q9VlUsoY0y3KkK1MuJVztgTZidpflnEFWz3suBowhFAzAjQKO5laAC
         MZ813vvPgtYZwQboACtk2Gde0qVEYfO/yyIKJnf0BaVVcVoSCvFrw1rS+RQYYST+LbRM
         FDEjF1rIo0moBa0i+1VVd7pfCzeB6zdWMLQBWLxYTL6Uswfu7R9XyVIPBpOQmQYxQufb
         U4cE2QPuT/goj6so4C5yMuHGRYIfJ9zuPblPaxKeviPO8cz5/zCV8gRPVeLc2kYqCtqP
         KMn4ISRI4cCquE0foiSjXabOZxszM7Yic8UJPlYmrLi931S9L+8K8HFJAdp1g5dOq75v
         l9EQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=7Tt3QszgLWNyhEv5iO/2gWFY7rbt0qI8y8qYCkfYbRo=;
        b=sbChxcKhmaq8i0aTNNUNgZwLpRtYzyKgFPMT0IYZRoa6HloqT36hcFvpaTe1b5DU/K
         yg+Pn/2H+D/2BFMQeUJaj3A1VpBBdfxkbr+bPHc0islXNE0YFvYXyQn9DBsRFkd/xsy+
         vOdD4VLGhlt/0ej6RHYY6zRZlXCm4n7ONp4qPHNhrZ6W7ecTteghj5+3w/OCVX3RbIxg
         SHRzeqCVugIH8CDlVayR09MpBqlohAwp+MJiGzNCXcvR3cPSTGD9kIxVp6xjcuSxDPI3
         rWReLk14c7Sb2HTayfGRYMdWoPLIXwjx9bewWMotlaejpXIfzLy/FnGkUuoQMFTRnpPT
         bMcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="uRm/bFYP";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7Tt3QszgLWNyhEv5iO/2gWFY7rbt0qI8y8qYCkfYbRo=;
        b=kXVu2VBCr8rEMty+yDL9U8NWbhXHMt1M0AB0E+m2WsvoYuwEL2JVHfeg0irv0kOKZe
         umsLeJOEa8LRgEL8XZQ9IrtA9XbU0XGHWpgrOimkk3rs/xXKYbD4JPQ3Mocjmt1qlbmj
         amf9TQldSHFJ8TwnG+8hnXPhDQSPel/FHPxnoe+x37D6J1R9uklDYbfzo4FCEgfhz6ry
         lfoTW97X6zSi0mOpBjAKC6DSnEfXxFAyh1gdKoTwJVeEqKuzzcoXcoRbN4+Xadqptnig
         jhjfs0qOFGFYyh5FGnSOanBkI9o+zh4LqVPhBz3XtE82et51Y/mogdwMPyPgeQJJUvvl
         nC2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7Tt3QszgLWNyhEv5iO/2gWFY7rbt0qI8y8qYCkfYbRo=;
        b=CK7MU0G0d992s53D0k/jRE9Hf7xG4JpKjTqxeaqoj5WoxfCo/EIzIwxixODK8DosYN
         r1n6dep2FWM9aY2NQdalg7UQ2/TfMI2jG83MI5cwnQbPMOhy4F20LZm7TsXqFz7+2Pur
         fkdbF+uSAWq+QGQyyMbXhbo2+nI8TN7YLpOn49Dr1Xx8ZFVl4UcHRDh7MVJ35Se1o8yX
         xPHPyqmKpc31Qz1/ezUKhC7waYJYFqyWcvv9aRnI0WHSpmW1e21oYxQVi2Wfv1h55Lja
         jeSsDK7Z6UEEsefRDNFmD8RtFptllaMDcYOpgQYh2NJMBsHMwr+gjU55OjCAO/Ef4KFM
         pyJQ==
X-Gm-Message-State: APjAAAUo2iggJpE+QmyiVqhyU2bhM+lLz6304jaIm2onP44SlPfx3DdC
	VMPs9cDzkiWibrq/G4DAVgU=
X-Google-Smtp-Source: APXvYqyiqnAl8/76FHifXj2gNZIb0SwOiE6gjE28EzGx+OEI55uRoPAg2ERZ9F70cHxeEU7EgAKI5A==
X-Received: by 2002:ac8:6982:: with SMTP id o2mr31379036qtq.143.1570471738012;
        Mon, 07 Oct 2019 11:08:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:e409:: with SMTP id y9ls277524qkf.1.gmail; Mon, 07 Oct
 2019 11:08:57 -0700 (PDT)
X-Received: by 2002:a37:61c9:: with SMTP id v192mr24189168qkb.262.1570471737705;
        Mon, 07 Oct 2019 11:08:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570471737; cv=none;
        d=google.com; s=arc-20160816;
        b=LuZ1hftDkRQ6HII+rWmUPGBTfUtmPX5j3QggR1u3G6nk5CY0NRx757VHJIVe0H+pG0
         RfONTvjKQUY5yCkKnvFybRUQgYfb9c8b0S5UuffYQCI0aY2pTX1kdPsSVysu5R55+QR1
         P0ZGTVl+Hplk4Qb2KzRRODvoSmd40sJEcUL8/GtvBoW8CVkUjQd037DtgwUwZf3ZNNGK
         Zx+xQ6ABozB+mz9GB958HEC41NkBzFa1t+DwPxt+Zt2HeMCwLAb0RbQXC9nDjUMzMWEz
         z5LGwA8rUooxBZJe5LwL72cJ8y2106lTQap3Y3ybWTlaDozuewsb0k7E2R2qZF5wZ2ml
         IRnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JwC6F2GJvmhpWHGCr7xF/n4f6KLR7+2yf2OOH5GEsgU=;
        b=hgz42BV5y+ImbnCl8bCsEAApFxg3aNchyUdXZg9MJn/rAy6gW5bWNUZJfEPJtmgJ6c
         yFdIwakQrKEkCcUtu5KOhKW9ctWNM1CNNS1OtlSTYJBzuDvrbLX/k6zGh5+yIqcvXbOZ
         8fGta3lbEANuoPV+JhIX2xWDP3/XYpUoKWzGtl8XrNP9NeoaFo/0dEZOKwndphL18FqF
         90ic6c3WMXjKLESagH4jQKCR2emiFKQX3/3/3h9RK3xqF2kHU0VOHPGAKtUYqafnFPZ5
         2DiaMiJRHTqIu7YBmyJaUEyB2QHb+Q9efijD1k9APGkMnjr0MvbDwEBPGSMVvwHcyYhj
         Dxuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="uRm/bFYP";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id l189si955332qke.6.2019.10.07.11.08.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 11:08:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id w8so7237643plq.5
        for <clang-built-linux@googlegroups.com>; Mon, 07 Oct 2019 11:08:57 -0700 (PDT)
X-Received: by 2002:a17:902:7c08:: with SMTP id x8mr29403977pll.119.1570471736235;
 Mon, 07 Oct 2019 11:08:56 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570292505.git.joe@perches.com> <2e0111756153d81d77248bc8356bac78925923dc.1570292505.git.joe@perches.com>
In-Reply-To: <2e0111756153d81d77248bc8356bac78925923dc.1570292505.git.joe@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 7 Oct 2019 11:08:45 -0700
Message-ID: <CAKwvOdmtfUfpGhKODa=UBtq7AKDaJa9cndf7fkjJw1R37SsR6A@mail.gmail.com>
Subject: Re: [PATCH 1/4] net: sctp: Rename fallthrough label to unhandled
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Vlad Yasevich <vyasevich@gmail.com>, 
	Neil Horman <nhorman@tuxdriver.com>, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Pavel Machek <pavel@ucw.cz>, "Gustavo A . R . Silva" <gustavo@embeddedor.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Kan Liang <kan.liang@linux.intel.com>, 
	Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Shawn Landden <shawn@git.icu>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	David Miller <davem@davemloft.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-sctp@vger.kernel.org, 
	Network Development <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="uRm/bFYP";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Sat, Oct 5, 2019 at 9:46 AM Joe Perches <joe@perches.com> wrote:
>
> fallthrough may become a pseudo reserved keyword so this only use of
> fallthrough is better renamed to allow it.
>
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
>  net/sctp/sm_make_chunk.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/net/sctp/sm_make_chunk.c b/net/sctp/sm_make_chunk.c
> index e41ed2e0ae7d..48d63956a68c 100644
> --- a/net/sctp/sm_make_chunk.c
> +++ b/net/sctp/sm_make_chunk.c
> @@ -2155,7 +2155,7 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
>         case SCTP_PARAM_SET_PRIMARY:
>                 if (ep->asconf_enable)
>                         break;
> -               goto fallthrough;
> +               goto unhandled;
>
>         case SCTP_PARAM_HOST_NAME_ADDRESS:
>                 /* Tell the peer, we won't support this param.  */
> @@ -2166,11 +2166,11 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
>         case SCTP_PARAM_FWD_TSN_SUPPORT:
>                 if (ep->prsctp_enable)
>                         break;
> -               goto fallthrough;
> +               goto unhandled;
>
>         case SCTP_PARAM_RANDOM:
>                 if (!ep->auth_enable)
> -                       goto fallthrough;
> +                       goto unhandled;
>
>                 /* SCTP-AUTH: Secion 6.1
>                  * If the random number is not 32 byte long the association
> @@ -2187,7 +2187,7 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
>
>         case SCTP_PARAM_CHUNKS:
>                 if (!ep->auth_enable)
> -                       goto fallthrough;
> +                       goto unhandled;
>
>                 /* SCTP-AUTH: Section 3.2
>                  * The CHUNKS parameter MUST be included once in the INIT or
> @@ -2203,7 +2203,7 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
>
>         case SCTP_PARAM_HMAC_ALGO:
>                 if (!ep->auth_enable)
> -                       goto fallthrough;
> +                       goto unhandled;
>
>                 hmacs = (struct sctp_hmac_algo_param *)param.p;
>                 n_elt = (ntohs(param.p->length) -
> @@ -2226,7 +2226,7 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
>                         retval = SCTP_IERROR_ABORT;
>                 }
>                 break;
> -fallthrough:
> +unhandled:
>         default:

Interesting control flow (goto from one case to the default case, not
sure "fallthrough" was ever the right word for that).  Thanks for the
patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>                 pr_debug("%s: unrecognized param:%d for chunk:%d\n",
>                          __func__, ntohs(param.p->type), cid);
> --
> 2.15.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmtfUfpGhKODa%3DUBtq7AKDaJa9cndf7fkjJw1R37SsR6A%40mail.gmail.com.
