Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBMN6TX5AKGQEVBW2ELY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E83253EF7
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 09:22:27 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id l6sf2281525pgm.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 00:22:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598512945; cv=pass;
        d=google.com; s=arc-20160816;
        b=ksfn2pkWacVwBmk3X4oYtm7npQOc+ky6L2jv/nRCSV7UKpV0NkXe3tPGnDGWUW7Je4
         lNd7EU7hLCEPTp1vGDDMSPpqkYaQc+LY2eQaXjHE5ivddYQ7yaKtcKymEF9Y62U1xFov
         xNqjDC8yYKmbztZRJF/FI3zX5LPB6zyGOptzydrsrSOxM+2/fAgRbfHvqTi0Ju7UxzUZ
         bjkDOIHF0J6Eszon3Uma4c3L8/jtHwbiqBgJ/Z0ZLUdNflGJQHVdKi7kLVYllJLkyid7
         xd/tMxhh1RGRUDXXA7MAABzYNtYl2SPxOVY87WhEoEGkSTbGakBmS3GB3/9LgEk+lj45
         VSaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=j9sN14oN81rzmdaqTqyC9+qEjBp4s0ujQzKh505gLWY=;
        b=Yebf0UUmQdOPdjKc9eE+TTZHzbEgktu5DjsPhu40G+RYzsyAuzExacXkfPDnz57Tg6
         of0JQ8YFq+jCnTz97SCB15ptMGFMbh+X5OSuWE8Kq82f4+TyIFhjL3GQs6ixRQrLAAUn
         fMLy7sKROsZzezXUSUHLlDI5jk7wGv/6psdHM4eVlZH30UOHFR8H0lcRoEOOEm0l7Nb/
         jDNh7jKyHqbyu/yyR7DIH3SYaDEaSEjnVZkdAnMO/UOhXsr6Au+zFDskZD+267fkwV4v
         VShy0GWQGV6lh8/T9ZXhan5hpH7QbpYMZOmp86OAWXl8DTZGHW5CP5Q0h1nDih5es7ig
         UFMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cAgk5+wH;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j9sN14oN81rzmdaqTqyC9+qEjBp4s0ujQzKh505gLWY=;
        b=NiQVtdJDfBiQm7E8pODt2uIbZD/hUj3WE8uLL3U9J1jrPNRW8kizZYnGR3/7rZrsXH
         RIB5nlrHLfjr0cwcoHNab8JIWPXUT0w43pYVNZ1FwBNRHaiezZqDYWDwGzn7ekoTr2RM
         bEFEycCO1y6RM+xQT83FOrAN5J8Wmy/5YjGsssFCjGVAaMnYLlxHGhXjYh6aOeqTR1fE
         e8Z23AKPfSzjUmmWjDWBgLB6MORbnm+iiOcme3EnkEoj3BEm5/sijgNP1kX0KIz4OkOj
         CXvAiHF6xA4WSv6h6iBCO2Z63yhixYGOQhfukz4abQjZiYzdvo90peoR/Z6nW9JCFzh+
         dKfQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j9sN14oN81rzmdaqTqyC9+qEjBp4s0ujQzKh505gLWY=;
        b=CzpCyTdEtXPqw06P4H4zSdeiDFR4G+G2qQtZtmcyJ1oHYALXZBESpmUZnPbxe+lvGl
         w76OsDSvSGn9lclnzPRoVWQMV+maX/FmGkps/7Ipm0LttgVSxXhWXsK5dvF5H8+9D4Hj
         bLplP9yMYE6CSJv1V665qJqfjVleghdZlZE4KtMoxYZYrQQt6tyyl+n3zZOPW4jPCYbe
         4dyWwEAsKm+IO/liJ+sLNnsJiWnQv+5zuYqtgOKvBiswFsqKf4bNh9FwG3R2P0xPqA2U
         97kV4Bog7XMZjj30VCYFts8hth+u0X+KwEGb2kFhyrvHVx/NfAo0i8sOK2zOgEHC6svk
         1xvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j9sN14oN81rzmdaqTqyC9+qEjBp4s0ujQzKh505gLWY=;
        b=XdmH21jRTPGOFc50vGdj0b4OuIujA4WA674M/mgxiy2rkMGzVQWsE3Fkqjk+JCVi2d
         ZZwt4P/UhpYepU1Fz+lcdSRcw1pmava/MgGDlZ3/KGoRycU+ldHqw9G9f15N3bWxc/jy
         e9S95ybP5N6wtuGyz2xT+TytWW3tg9LEamaYCWXaU1PCcW9bcjYGYHKYkAFOc60dRCJE
         aPnkpCKKDI1EnC03IaRZcW8OKnkIz/m2DtLmVfwBF3G6ci56UqBpmnw6nrp5nG9mTHMW
         ldB/pqjy5+RMA/y5OGwpWcScfshxaq9eTM3nUXTmCe+Ec2w+WHb5dSmLxwmRHCfbIXUN
         gN/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533666Cek6jCP6uT/tj+7Q72QDMktKdJqIkeO4nUk9jva7uTy7vI
	ms36/8Ms1h6htPnPBUSsLXM=
X-Google-Smtp-Source: ABdhPJwvKLSUXo/wq2wDskRoZna57/knosWYllnKi3Vmx1Bf1QwTOPLRKLeiiIBz0pAfiFKoMDaLRQ==
X-Received: by 2002:a17:90a:b00e:: with SMTP id x14mr9119869pjq.203.1598512945448;
        Thu, 27 Aug 2020 00:22:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f158:: with SMTP id o24ls550318pgk.4.gmail; Thu, 27 Aug
 2020 00:22:25 -0700 (PDT)
X-Received: by 2002:a62:838a:: with SMTP id h132mr15478770pfe.72.1598512944931;
        Thu, 27 Aug 2020 00:22:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598512944; cv=none;
        d=google.com; s=arc-20160816;
        b=zNj54cIwJYICDacxIBT+Vezw6IRl56s1ChHC3ULQFDBp2tzBeVb6tNLBw9P3ECiREQ
         4eonw4UbRp64DRlQ+XWaJdXrs1rNY0maB1yZ/MHi8fV3/3YpyGQ+fckLEvvDBzT9HQ7G
         aVtTLbaPUSrSSV6Q7LtmHRzLY7vynmKrJaJrwZKy+Qp7W0eFYwu/CRWoM+Opo43uHj1/
         m/h8Q4hyW9KQhgOKmOenVLicxqfqIajz25AUKefxZOzDLJQCzmG4EFW7Ny1uI0GWd6nI
         0ha9OVS3q2N078mcK2pCOAbJ5OjfFU9L3HFiZUWL6fJ2P1c/jlaccwbPEsQ5yO1Y3mHu
         b9Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nHYyDnDGU0SstXAm4qaNf6rFQtn/4uEmUBDoFdDHiDI=;
        b=G2qhNhtSC9LHFiyvnDgEh5q8GOvWQ/4/ts1lBy6HhDO0EDQcUAH6dfQnAGHX4JrmJF
         sk+SlAbwvS3KtIjktg+NZpxFM8Rn9fQUtitkpReGMzUo/9hUyPpNNXWXQHD3gxUTRUHQ
         XlwGJ/Kn9RxEAol7KfBCham3B/npj587kmvg2dXgDiYlFxX+tYFOt2Ij+T8sBjA5/MzS
         zPl+FWRYAcHEM9umQ3OHucja/pMJMwBpFiCcAWfSo2JsqSOpyC5HbmkB2s0nSKNq4Z2I
         XSYyc8P00ibGPyZuAma6Qqnsoj38BjcWV6U4JyB+iMfbUUWIDTQ7KrRbQjWU8XD8UpZ5
         Qm9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cAgk5+wH;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id v17si85412pjy.3.2020.08.27.00.22.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 00:22:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id j21so3808154oii.10
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 00:22:24 -0700 (PDT)
X-Received: by 2002:a05:6808:311:: with SMTP id i17mr6336757oie.72.1598512944261;
 Thu, 27 Aug 2020 00:22:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200826201420.3414123-1-ndesaulniers@google.com>
In-Reply-To: <20200826201420.3414123-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 27 Aug 2020 09:22:13 +0200
Message-ID: <CA+icZUUKqMaN5rUjz+U9itZ9-3_4EoqdBTP+41+WUjr=UzPN-g@mail.gmail.com>
Subject: Re: [PATCH] compiler-clang: add build check for clang 10.0.1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Marco Elver <elver@google.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, 
	Ingo Molnar <mingo@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cAgk5+wH;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244
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

On Wed, Aug 26, 2020 at 10:14 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> During Plumbers 2020, we voted to just support the latest release of
> Clang for now.  Add a compile time check for this.
>
> Older clang's may work, but we will likely drop workarounds for older
> versions.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/9
> Link: https://github.com/ClangBuiltLinux/linux/issues/941
> Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Nice to see This Is Happening!

See also my other replies to Kees and Nathan comments.

Acked-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

> ---
>  include/linux/compiler-clang.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index cee0c728d39a..7338d3ffd240 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -3,6 +3,14 @@
>  #error "Please don't include <linux/compiler-clang.h> directly, include <linux/compiler.h> instead."
>  #endif
>
> +#define CLANG_VERSION (__clang_major__ * 10000 \
> +                    + __clang_minor__ * 100    \
> +                    + __clang_patchlevel__)
> +
> +#if CLANG_VERSION < 100001
> +# error Sorry, your compiler is too old - please upgrade it.
> +#endif
> +
>  /* Compiler specific definitions for Clang compiler */
>
>  /* same as gcc, this was present in clang-2.6 so we can assume it works
> --
> 2.28.0.297.g1956fa8f8d-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUKqMaN5rUjz%2BU9itZ9-3_4EoqdBTP%2B41%2BWUjr%3DUzPN-g%40mail.gmail.com.
