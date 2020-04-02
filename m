Return-Path: <clang-built-linux+bncBAABBBNVTD2AKGQETQSPGCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id BA86D19C787
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 19:01:58 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id o32sf1500029uae.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 10:01:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585846917; cv=pass;
        d=google.com; s=arc-20160816;
        b=AGS2wjmejj+tY5toxRU0WPzSlcy6z84t2yvP/TFU31cqXBMRy6Qu5WMkr665Xglhxj
         h9pVRCH+jBqxJDeH7gS+3QvJPfaVPxlrLjXmqVzdlbGZ9G78yVsdAehdF80DehBpROp7
         9TRxUAb8wUF7bhq3CyE/LMyvQGwKhCwu+EstgxW7YVugsJSuX846EGOJsN8vi4B7ZWoI
         0TyIzGphJPLa1wHMi+nvTu147WyM2ipsy/gHGfnReqSe3BfWgZswCSOVksgEnl/3mYkP
         n+uxsppRAbAt2P7D+FJmGuDm0yQsQwuJYI6l6qfFwX1ZrfIhwWyStuJ3bQiDtXBdGdDC
         NrmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=kwEuDLNGg149l13sYYBNb158H6dK6IOkJXwx2Zq0Ocs=;
        b=S6WlKlKLXkUbyz79vnz6MmA3rbWZyed+y5x5BR7XSz/wnKMQ4p28a0V1RUtPSLiz47
         PqLwQa1+E3lHeG2C0+ipGmA4YDdob7HXpo6/sQeabuQc1YQx9Yoxepl6eXFJ/5NuuRwC
         D4pN1qdIzDruvoAypGJ+n853XmFklgcBoqPyjPjnLszQcGsiROXEV2+Uiij43FjstnSp
         kKryXnwGzweyALG2h7PZKY7PqdjMY+jV9W8fFkSi6eO2C44Ay/mpBY1sBclpwHLEovK1
         Z7FbMWfMnnDfqe2egYTeRS9whOqx8uFTYU7llPsjwajjLPAlVMuPajVSu3M4l6XabB2q
         tm7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=rrl7k6aV;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kwEuDLNGg149l13sYYBNb158H6dK6IOkJXwx2Zq0Ocs=;
        b=rywkfrt0hGAKe7tZDFp/57jpY4/7jwKahFpASTEwjbrIl27GPhXr+3ihB2DpLrhCtq
         ynLmwcDpCirgVoPVYpenp9dRUKxgPp9lod/2RRhMmiWQadW3f2JWGy3WTajK3mPjM8Vv
         GYuz+SzXvs7oiehwiiJqb+mgaxq/J8kF9aKi9r0jOcU2iVTkh3QH4+4p+SeMEDNvRt2c
         CTTW2PuD1LtWVjkQ70LxA/F2cYrsm4zBvM0jAFZ+4/HvjUJNpxGzaV4qjTXO/8Tf8MmP
         yOavGEqqXWrQd4U/nYS1q9pDn6DkzBx9Za3i4fpW40ZB0EjPV5NfWqHtb2VN2JtYbDr3
         02Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kwEuDLNGg149l13sYYBNb158H6dK6IOkJXwx2Zq0Ocs=;
        b=VnEk4unnHOiRjRuXoL/8jZYHT7wFVjcqwPqy8oBDWF4AcpZFBi5QhAogyEvzV6j0Ew
         Xwb6Z5hUrdziZARl2lY0/agFlSZc5uQgmgD9hMSShuNu8YjxS7vVyoW1cH5IMham8cbf
         aX/C9EkElGrCPOf4Rq5iZi4belAEnlqKihpxWfQhti/q8yqilngqlevm6M3aOjZUO/hP
         cIegTFBdj3YkdQHtLtUL0A6cKObN4GUgRc1bGbIgDsBufZLvUYV6IcNulDbD/jhfW2AP
         Tz8L8olbIO3859Qz2pNv9iM+FoG5eJpJHEh+3bjMsr56Zo0vrBRdyLGJg6LZTwW+h6K7
         G1dg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua/VIkMUsJewY7+3EtUMAdMsio+QT9nycd+JUFrNDdYKAYfsNlP
	oIsGY9cxVRahJw5an5aDiR0=
X-Google-Smtp-Source: APiQypKOsV/kGS87wpao71ZnsSFb/ofMz57kjBqf0WQm3BUMUm2roiHa0yNC4Bu/LGjIL5n1uddIbA==
X-Received: by 2002:a67:fa85:: with SMTP id f5mr3007653vsq.65.1585846917765;
        Thu, 02 Apr 2020 10:01:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:8e:: with SMTP id t14ls668397vsp.5.gmail; Thu, 02
 Apr 2020 10:01:57 -0700 (PDT)
X-Received: by 2002:a67:33cb:: with SMTP id z194mr3177834vsz.155.1585846917268;
        Thu, 02 Apr 2020 10:01:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585846917; cv=none;
        d=google.com; s=arc-20160816;
        b=ZsaGx2XBTNGHTHU4MoleSjZ1SGLJL/X6qCRB1XdxUH4yRTDjApiqeoNRZHT+QNqWn8
         kpnuQUR84HlZPAtW3mJDsxh+v1ejRwyAEnEbYEg/KgZkeFJFAf1ZELevPYimZ2mcmmVQ
         zpDhCuFbYfvmjgQG7j/dG1AQW3XaaxQrlMp/Qrh6FdN+Hpaz2pdrp/SG/jWhxpdOPefF
         e2QJguGtolBQtz4wVAgCfa7oZJ7eRbrjQFP/uBJpq0juEjZlmoWIX+v/TPALg03djUyh
         Ys3MRRu6y5eXaqQU5f2dn8CjgxLTwPUqpKVKO8EdRV2PBqKJfCxztAHaJ4EbAPqF1iIC
         6TGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=1mH4cw2yYcVZRUVlvx7GMUbn2oki49fXdwmWN7fbBsc=;
        b=XG5yixfq/XfGM0EnQAjIhC1bged/hx1vJLXkQh+Keyu71g7yEEnO4VxM09jDhK4NKq
         zeBAXqgwuGcVqSLiAPFbRPOqXdBzvg8KO53GXobZL3LfclHYKvTEwft7fDWn0IdC9X+C
         u4dSsqVYU2z/b+GUJBuYKOfMDFSueEcqJKFpA1dAE3z7CsTzxnELX+xTyL0YRnkEvotY
         Y02rLNlAmbXMItdxP4YBdH2hm4DmYORx1XkvvdEKu8qNPLaZ8UUsttRJoZCW1e3VcKjR
         OOfX9Uqz+tA8Nf/pNqw0//lGX9R0Z9GUBiR8/vvQZtrUvXyXU+eTk3L69r+mmW9zRQyf
         k/iA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=rrl7k6aV;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id h6si485407vko.4.2020.04.02.10.01.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 10:01:57 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 032H1TXH030219
	for <clang-built-linux@googlegroups.com>; Fri, 3 Apr 2020 02:01:30 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 032H1TXH030219
X-Nifty-SrcIP: [209.85.217.41]
Received: by mail-vs1-f41.google.com with SMTP id e138so2816104vsc.11
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 10:01:30 -0700 (PDT)
X-Received: by 2002:a67:33cb:: with SMTP id z194mr3175293vsz.155.1585846888868;
 Thu, 02 Apr 2020 10:01:28 -0700 (PDT)
MIME-Version: 1.0
References: <202004020117.6E434C035@keescook>
In-Reply-To: <202004020117.6E434C035@keescook>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 3 Apr 2020 02:00:52 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQGTAgtADfY4H-k8X1J9nTMeOWvo8ZFfrUSHQUbhgcLKw@mail.gmail.com>
Message-ID: <CAK7LNAQGTAgtADfY4H-k8X1J9nTMeOWvo8ZFfrUSHQUbhgcLKw@mail.gmail.com>
Subject: Re: [PATCH] kbuild: mkcompile_h: Include $LD version in /proc/version
To: Kees Cook <keescook@chromium.org>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Thomas Gleixner <tglx@linutronix.de>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=rrl7k6aV;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hi Kees,

On Thu, Apr 2, 2020 at 5:18 PM Kees Cook <keescook@chromium.org> wrote:
>
> When doing Clang builds of the kernel, it is possible to link with
> either ld.bfd (binutils) or ld.lld (LLVM), but it is not possible to
> discover this from a running kernel. Add the "$LD -v" output to
> /proc/version.
>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  init/Makefile       | 2 +-
>  scripts/mkcompile_h | 8 ++++++--
>  2 files changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/init/Makefile b/init/Makefile
> index 6246a06364d0..82c15bdb42d7 100644
> --- a/init/Makefile
> +++ b/init/Makefile
> @@ -35,4 +35,4 @@ include/generated/compile.h: FORCE
>         @$($(quiet)chk_compile.h)
>         $(Q)$(CONFIG_SHELL) $(srctree)/scripts/mkcompile_h $@   \
>         "$(UTS_MACHINE)" "$(CONFIG_SMP)" "$(CONFIG_PREEMPT)"    \
> -       "$(CONFIG_PREEMPT_RT)" "$(CC) $(KBUILD_CFLAGS)"
> +       "$(CONFIG_PREEMPT_RT)" "$(LD)" "$(CC) $(KBUILD_CFLAGS)"
> diff --git a/scripts/mkcompile_h b/scripts/mkcompile_h
> index 3a5a4b210c86..f98c07709370 100755
> --- a/scripts/mkcompile_h
> +++ b/scripts/mkcompile_h
> @@ -6,7 +6,8 @@ ARCH=$2
>  SMP=$3
>  PREEMPT=$4
>  PREEMPT_RT=$5
> -CC=$6
> +LD=$6
> +CC=$7


Just a nit.

If you just append 'LD',
you do not need to touch the 'CC=$6' line.


If you do not mind, I will fold the following
on top of your patch.




--- a/init/Makefile
+++ b/init/Makefile
@@ -35,4 +35,4 @@ include/generated/compile.h: FORCE
        @$($(quiet)chk_compile.h)
        $(Q)$(CONFIG_SHELL) $(srctree)/scripts/mkcompile_h $@   \
        "$(UTS_MACHINE)" "$(CONFIG_SMP)" "$(CONFIG_PREEMPT)"    \
-       "$(CONFIG_PREEMPT_RT)" "$(LD)" "$(CC) $(KBUILD_CFLAGS)"
+       "$(CONFIG_PREEMPT_RT)" "$(CC) $(KBUILD_CFLAGS)" "$(LD)"
diff --git a/scripts/mkcompile_h b/scripts/mkcompile_h
index 8b38a96163e2..5b80a4699740 100755
--- a/scripts/mkcompile_h
+++ b/scripts/mkcompile_h
@@ -6,8 +6,8 @@ ARCH=$2
 SMP=$3
 PREEMPT=$4
 PREEMPT_RT=$5
-LD=$6
-CC=$7
+CC=$6
+LD=$7






--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQGTAgtADfY4H-k8X1J9nTMeOWvo8ZFfrUSHQUbhgcLKw%40mail.gmail.com.
