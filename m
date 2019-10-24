Return-Path: <clang-built-linux+bncBDYJPJO25UGBBL5XZDWQKGQEGIPSP3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id AD013E3E7A
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 23:46:24 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id r19sf224528pfh.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 14:46:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571953583; cv=pass;
        d=google.com; s=arc-20160816;
        b=oHNrq+CY4374A7nxLOwfauJ/mSRVQkg23OuyAW/6RrcT/pEFOaLKQcvFd8Tg6EXFNb
         1fct2MuN4vq1Im5Zi3GaTOXyGdoS9BclKle6cC+fUDvzV2G5eNiX8DJ88YB1kMHXzCrc
         udQS3cQxa75A10DHa7XgpBKoZqtW8J8ReMgFkN+Z8zZzLIQi17xdqlTlvIkowUiDWUGz
         9zTxFbKDJzE6t/N5rmGRQ1Ib0JwtjF6MbSetwf7kx4t7nUZWTzaqBQFv/vfoOeZCI3x/
         ADlExahd43IlbdfDwxlzT1aLpHTphsMh8yyYQU0lM9YKwIEWOYdHP9xwjTT1Kie74mcG
         BUqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pLoCst1laa1Uf+KaT90+ZWFtY0kI20rrn+UPpn6xqlc=;
        b=fGuUN/zgFBSpBlkYaKdczSep6AqMFN1upEbwdWxQF3gdDL5m1AwFzNBmCFy4H2G9dj
         2Sl60a26Id5CHPPLB1OprOnXsCLn2+syDzmlPc25DHr82WV2RpvXsQPQkMr9MacKrcX0
         EiCra1EwMC5wOnPx1MaDKsiykegwe+ISZT4uiCkYFQ8vxd5t4+iX13BVsHCz8AfUTCrc
         NnLg3lnjDuPBQ/JH9+28ezZhgUzcTTEOVkoDW2MHNJOQuvsRJ8gu+yr/E0c3Af2b+PyL
         b03t78izGtz1B6xTMTCeu4hpU+J1/rB4wgWq20PJfLGHrzfeZhE4SNMPL9/1Ii2BLqNU
         rslA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sm0LVra1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pLoCst1laa1Uf+KaT90+ZWFtY0kI20rrn+UPpn6xqlc=;
        b=bCgLV3PIhGME64uGiqmes8S0pdg6aaPOfMGoaOhQs6Kl4ncGHJrkFh+YWP8AcRh73X
         Is8fHnCzuNY66YxL14S/b4x3mTDg3cdgYm5XrSVGk3fvY5Y+pCDjxx55JrErenC2VBac
         tjG2jHLl8U50bvsTe8OMF4uBURIZhJOxkwuql1yUrNXa45nFtUR3NuD1Kbase5C+jHMZ
         XU5sj31z6BOsB9fPyTiXiWTlT9pEYlmNU3qrnmF2DCdxnsMeQ9nLewjwSDjW5gCUMOp1
         Gw5R44ME0BkN2vXZuZ7WFPq5gYMcgt4GeNLnGgBtLJErZXSHQygRRDpGKaCep4DbtVBH
         bCAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pLoCst1laa1Uf+KaT90+ZWFtY0kI20rrn+UPpn6xqlc=;
        b=Zq4gko6o6HMSJV8jpPsTn9PTIkw2afEP1arXezPvh8rTuA4ch3ymvD9yXf8RMAGQZu
         PnbTJ6bEKE/o546GP0ruxh5UmPTfj+LfDSe8IofdNMrXi0TxYEsndJhAxjhdzMWvXTCv
         j+ROuU/e8mwTl3Q0JMm4q5uhYvKUPMT29zU7sts4APFzevSxuQr07/FqPJaG9BX9q604
         2LMoacbPpdTV3CWtRG5/i9jP8d7lEE3NBp1qCBfJRcPPRGRoO7p8GQwfRUCJBRYxssSD
         Uc5Un0YlC65QO91vALHxkaFf9MLqkHhkRsMn9hyhe1urMdEyhtnuxM//9DuxIxUZN4UR
         tcaA==
X-Gm-Message-State: APjAAAW/G9mYwsn7A6Bi6/8WhvD0iiHo5rYONxxf4yt5HDd8Apz6D0wP
	CwDoNsfwU0sHsRjCaa0eI4s=
X-Google-Smtp-Source: APXvYqzLmusiATtC9AJNcb3pf8u8FZB7zkbXS8Z+/8WMKtC4W+PiPkCuVe4XFnJPXFrulGUsG+of0w==
X-Received: by 2002:a17:902:d698:: with SMTP id v24mr17735693ply.340.1571953583354;
        Thu, 24 Oct 2019 14:46:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9357:: with SMTP id 23ls2228170pfn.12.gmail; Thu, 24 Oct
 2019 14:46:22 -0700 (PDT)
X-Received: by 2002:a63:6989:: with SMTP id e131mr241860pgc.190.1571953582741;
        Thu, 24 Oct 2019 14:46:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571953582; cv=none;
        d=google.com; s=arc-20160816;
        b=dxtzJXVBiHForyFHjNcncL/UzgLKZx4K7Bie0EtmTYXkvGSWcRaHGkIei5X7VQpiNZ
         66Ph2jujls+nzoWIc4+U7SKYmG4xN4+kvUxPby49wZIsZ4EenOQVVIFRcFeUlw8FF14d
         GAadv7LHNHrP3TLgyPPRjYdgdQziSyUkVN0uW/CmqVu6ufBHjKQdfNhQkppHpwdqZrWT
         PwRJS9+dkQxocWpHKBlcMC+xFSTCl3/DMoLjM9vglAl2vs71eXTEU3hhApGmDUkCiWmt
         fmJIgzv4JRGNAo7M50ccFGYE7UhKIqrKC1N13sTOU3vwqbjF1EwgACan3/iEy57oa+aj
         a78A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ylg2MBhMeUrtylr2iEwM0Lf6LZuEbMgXeAE0LFqAQ+Q=;
        b=JTjtHifkChT/6IVN80Rmi7TmyU6qh1kAPIfWNL2I+NKnydPARYcAVXMLenSfJzj1tm
         Q4BnQU99zYtOtee5tOjCh8Mm3Zp3imsdPGrqgrHzUfJJHn34T/aAqwx4sBIN7V6/KLdw
         Al8VZ8856Dih/YVB2OfXCu2tqHyUuHupByNqZDZsSja4vPJ6dnSK25/WQxsAtXU5ZqWJ
         jWawum3nhBiAhc51XVaI1MBgnMA7t4zRjoSg5kWv7CvQqC2+5mlXU43GaBs1YiQHp05j
         wqNxMofIP1/KpBrFWebUMUIdq4rhHpmhMhFvNtHjZnKTj11lr2dZzoCrDG41PTTmh0vu
         tG9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sm0LVra1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x137si8128pfd.1.2019.10.24.14.46.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 14:46:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id x28so101129pfi.12
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 14:46:22 -0700 (PDT)
X-Received: by 2002:a17:90a:17e1:: with SMTP id q88mr9863054pja.134.1571953581844;
 Thu, 24 Oct 2019 14:46:21 -0700 (PDT)
MIME-Version: 1.0
References: <20191024202803.47613-1-natechancellor@gmail.com>
In-Reply-To: <20191024202803.47613-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 24 Oct 2019 14:46:10 -0700
Message-ID: <CAKwvOdmw+fSNfksLtiAKF8upAuQB+rOzWP010cC-ivF5z=XuYA@mail.gmail.com>
Subject: Re: [PATCH] dm raid: Remove unnecessary negation of a shift in raid10_format_to_md_layout
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Alasdair Kergon <agk@redhat.com>, Mike Snitzer <snitzer@redhat.com>, dm-devel@redhat.com, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sm0LVra1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Thu, Oct 24, 2019 at 1:28 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> When building with Clang + -Wtautological-constant-compare:
>
>  drivers/md/dm-raid.c:619:8: warning: converting the result of '<<' to a
>  boolean always evaluates to true [-Wtautological-constant-compare]
>                  r = !RAID10_OFFSET;
>                       ^
>  drivers/md/dm-raid.c:517:28: note: expanded from macro 'RAID10_OFFSET'
>  #define RAID10_OFFSET                   (1 << 16) /* stripes with data
>  copies area adjacent on devices */
>                                            ^
>  1 warning generated.
>
> Negating a non-zero number will always make it zero, which is the
> default value of r in this function so this statement is unnecessary;

Yep, thanks for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
(algorithm should be an enum, and there's some code duplication
between ALGORITHM_RAID10_OFFSET and ALGORITHM_RAID10_FAR cases, but
this patch is good enough).

> remove it so that clang no longer warns.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/753
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/md/dm-raid.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/md/dm-raid.c b/drivers/md/dm-raid.c
> index b0aa595e4375..13fabc6779e5 100644
> --- a/drivers/md/dm-raid.c
> +++ b/drivers/md/dm-raid.c
> @@ -616,7 +616,6 @@ static int raid10_format_to_md_layout(struct raid_set *rs,
>
>         } else if (algorithm == ALGORITHM_RAID10_FAR) {
>                 f = copies;
> -               r = !RAID10_OFFSET;
>                 if (!test_bit(__CTR_FLAG_RAID10_USE_NEAR_SETS, &rs->ctr_flags))
>                         r |= RAID10_USE_FAR_SETS;
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmw%2BfSNfksLtiAKF8upAuQB%2BrOzWP010cC-ivF5z%3DXuYA%40mail.gmail.com.
