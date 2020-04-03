Return-Path: <clang-built-linux+bncBDYJPJO25UGBBG7KT32AKGQE7BCJPUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E8C19E0E2
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 00:13:48 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id t6sf7894601qtj.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 15:13:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585952027; cv=pass;
        d=google.com; s=arc-20160816;
        b=rg7YGL6SpOhEk+tfk4Nm0FlgNV3YZI15EDMny9ZuaBBQriXvOgwgZEp26XW5me3TN1
         8aNanVE8E2UWCxhuJpmiGEfGdqQsHfKa6PH+X6BTTLOuAOgYvrsH/7ciu9G41fK5sPo+
         BZWfYLNKh1mBAYyBTVNV1im2Z+ZMi666xZty49LZOUuMvH0RlIEYk9JzrD7nz79nc4Mh
         m7y/HxESX4Hg/gJOvK+d5YBWUxjvHCRk+5d01cc7EYGNBbz4mgXK1cTfjKutwpPoF+oN
         kdngtIzwuRSUhvttyvrLH36IE6GyNVlWI+HlWMbxVfTyodz11O8LlV8KoFFawENvjxdw
         FKAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Gq2MqKy5le9J/u9ej9PrfkF9lXuV7Wo0IrQyVQg2tUw=;
        b=RdeG8nwfvIlhUcAZQZ3Sgv2DEqSxlgxzuRLy1ZclhPptb/vZNm323Z3I8Q2rROzAb/
         x+8YpQaVsuWYl1ggNBhNHy1qZlLfScTD1yuuRA4J1NDCmGN/EeLgCGKaKq/BrgoT50xw
         XlSpvaOpoYkZ/bAhOWE5aF3m4PnXfZz5beL0JIQNey2d6j2WDLvX0ZhlELzHf98EW3kZ
         kQBN9f9BFpEjaLFkobgRdpzvlPTrAO/bOTd7p+1dHYEufR4SARb6qa2UNmLv5u3bg/g7
         hC4bUfxwxGCXC5YUZMLyC6VwNHi5yFoCEkY3D29/qYHGS2/aeoNM+frnQzCC69pL5W5h
         1CcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Hx3rOB44;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gq2MqKy5le9J/u9ej9PrfkF9lXuV7Wo0IrQyVQg2tUw=;
        b=CMjjiGrHvEER7Ykga5WomC5MM4IzIenurUHMNLB9Kao3U41A6TBFfWXqXnx5g6c2Hc
         OJ/zmDppXn2bCqLOV18V4C04S+iUvkxF9How2lC2/VAxd3N9L/O1WOSHz5/FHNo11baa
         4Dhr/EKd9TRfNOpfw+y9suwJ2LhILkW5SrbyDbVhUU1Fj67XIIzjy1CWxqJBa5f5renW
         Rqop9G9ufVxFjZgB83fpvTC04p5zS/m50bn6HDS3hCaMH+6pPdtJpiIg0tD7KxotmsaR
         SbrChf8TQx7e/faSOsoDMjRa/T7ILfvUjQusCm1j2X3zlSY6uBegz11Y47e4LlFMnaqg
         QCSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gq2MqKy5le9J/u9ej9PrfkF9lXuV7Wo0IrQyVQg2tUw=;
        b=YK4j15tHcWbyLxWfXMvSvecHpCZsiLtthvqUMoKMFGzHTEt1H448/MavrkJdJRdd3L
         M/bnpAdELjXPJhHtIjvIouXMcnbT3OhtG3OpMyvXKLZ3xxYJW3iFSf27pS8ubPF0WoIJ
         etZiaNBlTAvPTfu5T04akFqTip1IZ6LL9JRmUFPCVuNQ3An3YOhKo+dXnbjALD4iihUG
         pYwexRof04nHzMSqtMm/AuXQGh5TVk6gg0hB5LIEVySFbNf4BksirAkWSMELke44s3WY
         ngrrxJhetTAMxtCtHSjlVrA1AbrRvGRZ3nHHavnOFAcA6/Eh+QF642Rydn2eCw31U05K
         mEXQ==
X-Gm-Message-State: AGi0Pub8K5y5pUNpoYDryAL8Z9z8Za76iWm3d/NeUf1MEoeucOf3arz4
	3o68zAcxWQZmAQd3vFyR8qE=
X-Google-Smtp-Source: APiQypKkYI0/TK9a7Zi8wxS7efcAqauuyO0iawVPjIZXjY2+NhjIcv7R9PeushOF6eP/dhVlSeX7aA==
X-Received: by 2002:ac8:68c:: with SMTP id f12mr10650078qth.100.1585952027214;
        Fri, 03 Apr 2020 15:13:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4452:: with SMTP id r79ls5764153qka.3.gmail; Fri, 03 Apr
 2020 15:13:46 -0700 (PDT)
X-Received: by 2002:a05:620a:579:: with SMTP id p25mr6007354qkp.36.1585952026677;
        Fri, 03 Apr 2020 15:13:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585952026; cv=none;
        d=google.com; s=arc-20160816;
        b=QuFGlfn49f3WtWgICH6BMNR6hmJaW6fkSOWqjE8TrjWDd+cLb18gITeJOV8AFU6wga
         FzIE9CjyCuwf+dVuejQIOZV1nl2s0B+CjAOctGioj6lsjDr43JCiB52DLhVTabuaCO3z
         pJk92mBxeB2tX1nBtNJXIFPIK5+BKBxeMaNSQucMpl0X0j4Q9v25Tf0qWGOY3kxMJrEq
         TfbPpvnwdbfKthzA8WuX+HzWI3bfc1kNXvVHZlYAQavCy2zuqhMJiCD6smiVTG4r2lWt
         gGZzii2Qrvdac1pJSa+66ETOf3gvuipVKgUlpRd3Q3NoCF2LLfuDS2OvNHH0yXDe4nXJ
         j2wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KG760e3FMnxv8FnXQXJos6didPWpKWfKfgbzSvtqHEQ=;
        b=BDOI0tTU5ZlHvYDUyDvdHw/nPnJDrMBuMWUO9BOuU/6I7mn5xViEW+U1AO/pFwUx2I
         EsTfxrgGv4PrF64WVg/aQ+1WxPZau5+WdNfBg5AK9nwSjzmLprR0TImM/01uz1V1lMUD
         O0sAS/+97ZLs29JMZJhMuabiy6nXqSpCljum5VBHhJJ5L4AhJqIwgXoP9ZbkvJg1VzHg
         MlaD1OPky1LhrT86lwtNICgKa4YOJPVYJAwiq0g6F479JGO7Zj9DRNjfHzQgppvgjXVw
         YTfCRsc70eETsbT+X4+XOo4R1dIBYWwcXH5+Yvxyh70LkPfS+gVBPwuo71pxUalszXbH
         OXlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Hx3rOB44;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id x11si663628qka.4.2020.04.03.15.13.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2020 15:13:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id m13so219511pgd.8
        for <clang-built-linux@googlegroups.com>; Fri, 03 Apr 2020 15:13:46 -0700 (PDT)
X-Received: by 2002:a63:aa02:: with SMTP id e2mr9458612pgf.263.1585952025437;
 Fri, 03 Apr 2020 15:13:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200325231250.99205-1-ndesaulniers@google.com>
In-Reply-To: <20200325231250.99205-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 3 Apr 2020 15:13:34 -0700
Message-ID: <CAKwvOdm8tQaa6BW7EQAz4TxFZETnJCS3z9isY4HvcU7UYqWZUA@mail.gmail.com>
Subject: Re: [PATCH] elfnote: mark all .note sections SHF_ALLOC
To: Thomas Gleixner <tglx@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Hx3rOB44;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

dropping Jeremy; I got bounceback from the email address. Ping for review?

On Wed, Mar 25, 2020 at 4:13 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> ELFNOTE_START allows callers to specify flags for .pushsection assembler
> directives.  All callsites but ELF_NOTE use "a" for SHF_ALLOC. For
> vdso's that explicitly use ELF_NOTE_START and BUILD_SALT, the same
> section is specified twice after preprocessing, once with "a" flag, once
> without. Example:
>
> .pushsection .note.Linux, "a", @note ;
> .pushsection .note.Linux, "", @note ;
>
> While GNU as allows this ordering, it warns for the opposite ordering,
> making these directives position dependent. We'd prefer not to precisely
> match this behavior in Clang's integrated assembler.  Instead, the non
> __ASSEMBLY__ definition of ELF_NOTE uses
> __attribute__((section(".note.Linux"))) which is created with SHF_ALLOC,
> so let's make the __ASSEMBLY__ definition of ELF_NOTE consistent with C
> and just always use "a" flag.
>
> This allows Clang to assemble a working mainline (5.6) kernel via:
> $ make CC=clang AS=clang
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/913
> Cc: Jeremy Fitzhardinge <jeremy@xensource.com>
> Debugged-by: Ilie Halip <ilie.halip@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Ilie has further treewide cleanups:
> https://github.com/ihalip/linux/commits/elfnote
> This patch is the simplest to move us forwards.
>
>  include/linux/elfnote.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/include/linux/elfnote.h b/include/linux/elfnote.h
> index 594d4e78654f..69b136e4dd2b 100644
> --- a/include/linux/elfnote.h
> +++ b/include/linux/elfnote.h
> @@ -54,7 +54,7 @@
>  .popsection                            ;
>
>  #define ELFNOTE(name, type, desc)              \
> -       ELFNOTE_START(name, type, "")           \
> +       ELFNOTE_START(name, type, "a")          \
>                 desc                    ;       \
>         ELFNOTE_END
>
> --
> 2.26.0.rc2.310.g2932bb562d-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm8tQaa6BW7EQAz4TxFZETnJCS3z9isY4HvcU7UYqWZUA%40mail.gmail.com.
