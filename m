Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGNKWP5QKGQEQ6TZLMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 86531277795
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 19:19:22 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id 139sf3482214ybe.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 10:19:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600967961; cv=pass;
        d=google.com; s=arc-20160816;
        b=Szs7YlTkd3J5zXGj89nlDJ4AzmUll5oWBHXSI7T0vEKuFvNYN8ZdJZJy2Hggt6i++8
         KgOT5vhhdJDStLIVy/A45czkTVdUm7fkye30MJylSmEKj3h0trnHLgEUHDb4VnyolhcD
         ArPgcoBG4rFwsxk54aaRdPll4Jk7T266j4daxKsAeqSqZJmyaLd+5AuWbvBoBlNy1XBW
         sJWEbCZMtgdtFg250gOwafmW2GK9Kk3OcIEsj49H/QsZPwwqShnVvKtblnlqDbPZU0jB
         f7tMkg7mJABiHVoDsfLqfZxvKk6pnuBp9s0QEUMhTR3fXASfnZAZiRqJXTD4hbsnx/+t
         NAaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vmnfUrPTpaLViEnSHgsHSrtt4RrUsmnmHLqWVW+waes=;
        b=PouGJviQMeGheBTAy17KzP/yPSRqDiTMxfIYw64t/uJBf4e4jWPLPgb17rmIefRJos
         nuzPpTI3TpS1z3SaW/6isdhuRYkCt20nnd/gJ/y43a/tZy6Xm0PfeYWBQdPpY3AfohvD
         d20Rb4NfJq8SQ6NZ+UKfnOFj0p7L/89gICc1CEEN9iXxMlBde2fb5w7B/MP+fWDLIfgq
         yLkCq0rEc6+MUx98rZAcYdKYFavL/x6vtfV+3hxVyGeDnLvNXEE+wmjt7gfP/2Ac/Yge
         VwiW3B3DJCltOw1FNlLSiQbWNoZnSnMR7Y5DPU9d/GXAXOJ6gszJFpyOlWQDvVaGUKi7
         aMaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jI1AzPsO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vmnfUrPTpaLViEnSHgsHSrtt4RrUsmnmHLqWVW+waes=;
        b=Rv3neqTedoVQdEM4PBPOMPiRsj1LqM3a1SVOWqY/UnFAVToM/akgZhaNZVsqagRwwP
         4gn8gA/zkDxCyVxytRF1R1C1MRqpf2VoI3osKt5q7n3BxdxVt+75FjGxyLr+nE+BB/Op
         1BuqQt7eVdeYet3Hiyga1Sr1PMNA3jvRPnNDBtwGeEBoO8hzGrV3tFDeY0A6LtLwWQ1t
         cA9xa65yE/NYzWuBfHlcJWnd666yNu/TvXchgLQcJxCAtmIN/YXj30nnBule95Sm95Mm
         2jM/5Dnr9nVoFGr04GfO5TjsCL1jH1LXmmBMJCOvtfHjMdQUCAd3embcsvmnHMNMfS4h
         SwFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vmnfUrPTpaLViEnSHgsHSrtt4RrUsmnmHLqWVW+waes=;
        b=lHp186cLd1wK/v2Yi/NGTxch+KBGtMGeNroIAPafZrvyLhQGuo3Qzo+76hFZMKttPV
         28ZdACnmpW+yEe34+i7wNkPKM5poHRjiZSBdfmP1ppOmyxlgfo2OgJ1e7Shb0GkF9v0r
         dp8L4EhoXVGXS52Jpp8avWqtRNb8MEIYqqLai3yv6om7lXcC9CjDRqFgYlZwsDwy0c87
         +S1kR6eWWT8i7/5QRoVm318GSG47YDEtkhw7eghc6EjfSxEgg19h9hsWuiF5rxygzdQT
         hGCEmlp/jUUOHx5P5i2NU+M2c7b93/JqbgV5Nm+4HVU7VNqwy/DVcsALfUHJovAg9KyM
         noyA==
X-Gm-Message-State: AOAM530kB9IYqu+2tFndaBK/j7oEhCMrqN8VnxIHNZM38VhQ4elHGZ29
	rBG8fFwyG6BNZ01mliLAy+4=
X-Google-Smtp-Source: ABdhPJz+oKk4LAaovTdak+82fS7Z8fdovJaSz5Q4nrdizWPT4xxhfcCKeQcp6nUIlas2ZEd94tYgzA==
X-Received: by 2002:a25:c305:: with SMTP id t5mr912416ybf.378.1600967961406;
        Thu, 24 Sep 2020 10:19:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8285:: with SMTP id r5ls1868538ybk.7.gmail; Thu, 24 Sep
 2020 10:19:20 -0700 (PDT)
X-Received: by 2002:a25:2a55:: with SMTP id q82mr941272ybq.160.1600967960928;
        Thu, 24 Sep 2020 10:19:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600967960; cv=none;
        d=google.com; s=arc-20160816;
        b=WEo1BLdjS4HlC/WW4oU/rlPr8WtTDEbhQoDlGvcI4tNXhDTSquph6prIC9CqA+IefG
         uTk/FPsO+X0WUB6i2TxxHKXsWCe8GXkpS6LLVU+4kVW8Tmsh7aOiJhRNIE98cWFNTgBQ
         8lLPx3yABGK2woWXdKM3tdD8x0GYNrOSmszwnJTpLoMkjpPEMxa98Sp3RVQvndUVPkaj
         k2QApm/fQRk/vi41xJRaXwyuhRwvuEqxW16lU1e7rwEhUTZM0Y49MG66sJBUBf4/JW+B
         DXrvo6xwOsqaoB3w8wqupDFyOcGNHhSExwoke8Jl0scKiZRXHJZaIaAGotycskNoE/Vu
         h92w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dA2zxHfO7uy8Ufgykgnn+hx3XJoAizz/URpCj3/0/1w=;
        b=Ic/bYQWKg0OI52Rxj/xvGdRUc5IGB9/m/1O4/5YBkf3GuSztlDADcgUhqVIwDW1YvZ
         YmlOdeNTV1CcOAq+aivEqglWF7l+t2MwRxx2KgbMeFlr2x/tJRcquJFC7qoBZRyxD4mg
         FJlg+/ULlt0IjrsFTopufTWxR3ccuIhiEnoSrdlWPELpRuhP4Htzl01E7EEzZLb9ZAc3
         HrJ97+4Y4fMsprH8z3DFMMxGTd5YyjHrMXwGfZI8EnsODzmJRmvAx4YRmuZm9LiVctxa
         qjWpQ4mQ4axvGYUc8opJf7SmU5HZ9k4RAN/qfD6kXvwUi31rkuIH5pPjSVF0FLhDqZY0
         b1wA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jI1AzPsO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id t12si5403ybp.2.2020.09.24.10.19.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 10:19:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id w7so2315823pfi.4
        for <clang-built-linux@googlegroups.com>; Thu, 24 Sep 2020 10:19:20 -0700 (PDT)
X-Received: by 2002:a62:5586:0:b029:13e:d13d:a108 with SMTP id
 j128-20020a6255860000b029013ed13da108mr137887pfb.36.1600967959929; Thu, 24
 Sep 2020 10:19:19 -0700 (PDT)
MIME-Version: 1.0
References: <ce28bb9bc25cb3f1197f75950a0cfe14947f9002.camel@perches.com> <20200917214545.199463-1-ndesaulniers@google.com>
In-Reply-To: <20200917214545.199463-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 24 Sep 2020 10:19:08 -0700
Message-ID: <CAKwvOdnziDJbRAP77K+V885SCuORfV4SmHDnSLUxhUGSSLMq_Q@mail.gmail.com>
Subject: Re: [PATCH v3] nfs: remove incorrect fallthrough label
To: Trond Myklebust <trond.myklebust@hammerspace.com>, 
	Anna Schumaker <anna.schumaker@netapp.com>
Cc: "Gustavo A . R . Silva" <gustavo@embeddedor.com>, Joe Perches <joe@perches.com>, 
	"Gustavo A . R . Silva" <gustavoars@kernel.org>, Miaohe Lin <linmiaohe@huawei.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Hongxiang Lou <louhongxiang@huawei.com>, 
	linux-nfs@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jI1AzPsO;       spf=pass
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

Hello maintainers,
Would you mind please picking up this patch?  KernelCI has been
erroring for over a week without it.

On Thu, Sep 17, 2020 at 2:45 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> There is no case after the default from which to fallthrough to. Clang
> will error in this case (unhelpfully without context, see link below)
> and GCC will with -Wswitch-unreachable.
>
> The previous commit should have just replaced the comment with a break
> statement.
>
> If we consider implicit fallthrough to be a design mistake of C, then
> all case statements should be terminated with one of the following
> statements:
> * break
> * continue
> * return
> * fallthrough
> * goto
> * (call of function with __attribute__(__noreturn__))
>
> Fixes: 2a1390c95a69 ("nfs: Convert to use the preferred fallthrough macro")
> Link: https://bugs.llvm.org/show_bug.cgi?id=47539
> Acked-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> Reviewed-by: Miaohe Lin <linmiaohe@huawei.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Suggested-by: Joe Perches <joe@perches.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes v3:
> * update the commit message as per Joe.
> * collect tags.
>
> Changes v2:
> * add break rather than no terminating statement as per Joe.
> * add Joe's suggested by tag.
> * add blurb about acceptable terminal statements.
>
>  fs/nfs/super.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/fs/nfs/super.c b/fs/nfs/super.c
> index d20326ee0475..eb2401079b04 100644
> --- a/fs/nfs/super.c
> +++ b/fs/nfs/super.c
> @@ -889,7 +889,7 @@ static struct nfs_server *nfs_try_mount_request(struct fs_context *fc)
>                 default:
>                         if (rpcauth_get_gssinfo(flavor, &info) != 0)
>                                 continue;
> -                       fallthrough;
> +                       break;
>                 }
>                 dfprintk(MOUNT, "NFS: attempting to use auth flavor %u\n", flavor);
>                 ctx->selected_flavor = flavor;
> --
> 2.28.0.681.g6f77f65b4e-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnziDJbRAP77K%2BV885SCuORfV4SmHDnSLUxhUGSSLMq_Q%40mail.gmail.com.
