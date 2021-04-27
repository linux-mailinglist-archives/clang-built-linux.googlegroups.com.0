Return-Path: <clang-built-linux+bncBDYJPJO25UGBB66EUGCAMGQEVNXZ52I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 0045E36CB84
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 21:14:03 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id bi3-20020a170906a243b02903933c4d9132sf66055ejb.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 12:14:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619550843; cv=pass;
        d=google.com; s=arc-20160816;
        b=WVKuNE7nhNroNYtTjVqWM0zX/C/mvSAfgd67KQZgNNRUyE0HhN6PQwlCg97DwBDD/V
         jrISFhrWMig9ygcSqi0p4lqm9zBa5VpNywmMw2+5acxOyosVhOOg0R39Hj8kbjqBrzh3
         V99B9aY6fuLdQex7PcYZEFJFP5oeRiU9LTmrnPE4ZRQt3rOUXHGjKiZRs7n5LzimS1uT
         ONkJ8dUz2fgLk8CjwSrJs+iVIikRwuxCLSrkEfreyAApGtqz4+K1U38JipZ3htq8+8/d
         5FV9am7xw4aMdB/cs1xDDsSQn9QpjLoBaXXo3ZsHTldkzJWGVrdRnv6GF3WYvELtE8eb
         cCIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wuVxV+A1Vq610oKGyMzkCBgCctUObSt4z0fEeB9llNs=;
        b=GZK+IJAhPIR7tU7d7b3P0nL7svj2TYTsm0aKZwPRuGJiAOLel9izQSdIZWhMMbIQAX
         CsE28naUANe+pI5DDMBS718mDZePhQ0RZZiiaEAt5b8xy5syVJF+yt42uUXs/fogipgt
         laEjHKrvQeD08aIso4dQy85vO7MXoitBPJe4wbvHtD6/kjUlYhwFRxdlmZgjwKWLYW7s
         VfazNiso/M7L2c6CgFL+fa+COsI9mgiNFw/ePSleS2aJr+cOLjsJ2SvTgl4PS3KoBjqy
         +78tdqC8jdrjkX8PGZCKWUG8b1qroU/ACUntAGMHIQZK0+VpU9iaksch8ba8Zv1cQljj
         fRgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I8zIhzF4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wuVxV+A1Vq610oKGyMzkCBgCctUObSt4z0fEeB9llNs=;
        b=NA99vW345DQdk4uw4Twyl4lDCPVrmFEyf0CmOtkvIL4Onkv4TBp6IugNX6I9+nLHEW
         FCRTVlWsCEn6qM6iH6n2ihyBsJ2ncXGMMSjaOKAgm6rxj1Avty9gJxfVeVE44CH8KLCw
         TLD1F4f0WDdapCXazOHApOsA76ZGF3JpHEHCy+MfkwUS3usemTZCtQw2wjt9MYXaH8X0
         8GJhEi0u/5zO2Gd7f3prxdbwrR9agKb1Ww6fN17DfpJfxSTRBotGC8jVkbtIF4+9M10+
         IXn57E/OOPqyTL9YAVvfgOHpXoK9u6Rm7neohjoF2b0ldGrAJ4PyjjG8vaLdfD7mSgiL
         MjQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wuVxV+A1Vq610oKGyMzkCBgCctUObSt4z0fEeB9llNs=;
        b=Y9g6iJerWdtM3SkZeKX0IfQqG4AsIgaPtbS3B2t6E7yX6R/TVcfPLaDLDe8koUjWrq
         QRYUrhqB+0HTiuID/a4wYM5/Cw+BsorGvNDj9Kw4UeuZC0ThIkNENqrl51w0blXTVgAx
         MdGxhC3XUFyhAnhUjjFPfcyt/AadUguQ2uMFgWDTE7ta2c5G7m1Z/iWbRtNt2jG0oBxu
         bWwYC2CNBRLMzlVWCVVDzwZqlXeTvwYV0B100/y9TNf+HBH+llbAstYOAfTDn9b0Bixy
         YJivQwg6YOTlwJ8psuRdFiZxqPhIutjlvrI4ic8xEMv6LyL4mZeUBjxt0ZSJE9Yy1NQP
         iEDw==
X-Gm-Message-State: AOAM5306QDBpynvEsLa7khyINoLpZqPd3f7as4o8H5u9rm/rLGyf3u02
	NmXoQJQr8t+TX25REFgsbaQ=
X-Google-Smtp-Source: ABdhPJwdyJW8MUCntQlWb2lCsXKqHWvF2RiypcfQvUvfU5J9TQEZbQLsXPuj+RhqcBq9kbD6pP5mhg==
X-Received: by 2002:aa7:c2d4:: with SMTP id m20mr6158924edp.193.1619550843764;
        Tue, 27 Apr 2021 12:14:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:b216:: with SMTP id p22ls9637914ejz.4.gmail; Tue, 27
 Apr 2021 12:14:02 -0700 (PDT)
X-Received: by 2002:a17:907:9607:: with SMTP id gb7mr24000537ejc.380.1619550842841;
        Tue, 27 Apr 2021 12:14:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619550842; cv=none;
        d=google.com; s=arc-20160816;
        b=rrtunZoBMXThbKz0EA5cGFetPyTrOTTmHF7PY3yE0wAP2htMHrNaiV8tRzEAftFxdd
         umT/1hsfoxodhkC0OuC8MdxcAg8E8M/zfK43fFshHmuv7UYlSq/PKsl3BlGTBQ5b2YOX
         Wd6slO2FQ+4StYrBaYV0/vsvUnIbrE5q6vq9QQ7oThuMotzK+VYZSxdUOWvWQ5vCGgBL
         +8uQUOJHJcjodIsQmwwo1vRFkotakFOgOG5rOmMkTMzsNykd2C/PcVWOJRMz8PfliTr2
         WbDfCmZPzTAIxTR03/BkSER4H3i2U6N9cUdZ2Dppowcen+gtnr/ya+Ba49DCP/je5Ull
         /EIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AB1V5oTeJ2WhmRUJ2GQVF15rRhUULVDZ8xbuGavAGZA=;
        b=mC7/qRIMqb2haI2ZWk+9Mxa+/Fa2tCpOVuWkd5QFjTVeuc4B5rBi3DbQ5iRuU2dsu2
         7qEztnr6GBaxpfIa7OsnwkoyCAsmNa4iNzZSwnuMR2IYd3kA2wjgAgR0H4qKdRqd+PFk
         rlBWB9rq6UOea4nTPwAGZQke3P0xxmzWvZdKNfK+Yjtk98+cVEi4ZT0FLnNultO58uoZ
         rnuPDBOqyGf3kq07Gu3ZJPm7qHfAtFcTJwImlUaA50FNwocas20mcGKIQnpZJFbqIhE2
         MHJ28enRFnc04S96uFSRxqaAMrf7hBJ8PQW/eQ01lrOo9ApUnbcu7+VHHZ30xK4uqRNU
         ul6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I8zIhzF4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id y16si1832558edq.2.2021.04.27.12.14.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 12:14:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id h36so41184557lfv.7
        for <clang-built-linux@googlegroups.com>; Tue, 27 Apr 2021 12:14:02 -0700 (PDT)
X-Received: by 2002:ac2:46ed:: with SMTP id q13mr17241394lfo.543.1619550842376;
 Tue, 27 Apr 2021 12:14:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210427183755.2790654-1-trix@redhat.com>
In-Reply-To: <20210427183755.2790654-1-trix@redhat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Apr 2021 12:13:50 -0700
Message-ID: <CAKwvOdmj5YvWZZWwcq1G7JgRALwPbqwiROiedMeEbBst2sGeiQ@mail.gmail.com>
Subject: Re: [PATCH] samples/landlock: fix path_list memory leak
To: Tom Rix <trix@redhat.com>
Cc: mic@digikod.net, Nathan Chancellor <nathan@kernel.org>, 
	linux-security-module@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=I8zIhzF4;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129
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

On Tue, Apr 27, 2021 at 11:38 AM <trix@redhat.com> wrote:
>
> From: Tom Rix <trix@redhat.com>
>
> Clang static analysis reports this error
>
> sandboxer.c:134:8: warning: Potential leak of memory
>   pointed to by 'path_list'
>         ret = 0;
>               ^
> path_list is allocated in parse_path() but never freed.
>
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  samples/landlock/sandboxer.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/samples/landlock/sandboxer.c b/samples/landlock/sandboxer.c
> index 7a15910d2171..4629d011ed61 100644
> --- a/samples/landlock/sandboxer.c
> +++ b/samples/landlock/sandboxer.c
> @@ -134,6 +134,8 @@ static int populate_ruleset(
>         ret = 0;
>
>  out_free_name:
> +       if (path_list)
> +               free(path_list);

I don't think the conditional is even necessary? By our first `goto
out_free_name;`, `parse_path` has already been called/memory for
`path_list` has already been allocated. `parse_path` doesn't check
whether `malloc` has failed.

>         free(env_path_name);
>         return ret;
>  }
> --
> 2.26.3
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmj5YvWZZWwcq1G7JgRALwPbqwiROiedMeEbBst2sGeiQ%40mail.gmail.com.
