Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBT6E4L3AKGQE4FYIV4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9031EDE02
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 09:27:12 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id be7sf4051541plb.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 00:27:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591255631; cv=pass;
        d=google.com; s=arc-20160816;
        b=AEE3NBV+87nPSvKr35+4eBlHPjzk01GT7FQiwXwAs7Q+7Z7btNHa0KrXedahXnrm6c
         /so1O+uqxzmBJHTx2lKwnBDPrQk9eoEsDDD036l1p36I03JTPXu/wylZrYwTC+/oI6Uz
         5f4hnb05HMtylSzoYl860I96O+q4bTILZDVeWEOqegWEYTI+g5xmwUSqV6PzKiJu/qn2
         1LPz8+HqHpTFr4MEQcTfCsYP0Hz0pY9A/670ycmS2zsKODHxcuSPUMiUQlxgta+Dwq5S
         YbltCJUUt99z6yHnbMumQYuAEeqF0sL3J7cTxv2Q+otAWSnlgHDqMCSwV5dCDZxjHFCL
         Du3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=BkBvmEKxQ0vUuY5bx2oaGG+T8PtQlKh7XGmfooo67Lo=;
        b=HPBed6tR7qan4ZxGYTVAe3JaflYDjqfXQ5M4wdjprD0Fvu/vfubeH+MfLc12N3a3ue
         +CS1yyugCYUP1lY6h2akENYrrKVKosjeGr8r18DAzxVWjtHCJv45KMGeju53G9bD6cWx
         jHsvl7jFXOHSWYFIQL4rBSk4Cxc0wX4STIAkF+vKcBhJ1WZHBKwhL/jIbCw9B8Hry6LB
         3OcW8jrxXOx+OQCyrfglqjMpxgYz4Y+I5xxDEiaI6z73ISqsDAKRPKilJCIVbJzrRBA2
         y1nrmjbOqLPAwz9mo/7rlxKBd4zX9M1EW7fMFIfryy62EcMRpffewYznLbuvhdfZ1kLe
         Z4Aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZS4bR5yl;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BkBvmEKxQ0vUuY5bx2oaGG+T8PtQlKh7XGmfooo67Lo=;
        b=ELeGVNsy4gGln1ASCdf+KjmV8lvinbWruWhM9hA8vby2pIyA0eRofkiapasi7leyDi
         FWnQUJxwgGEnYJgWoZ+6lk8I6HqGI4tQKmBig8ykx3GcTSX7esdLWm2bnAyEhZ8G0C70
         rE0EbGveAhEgml5WAgrlhdBj/dXCx4Zfy4Jxut97SNaY24psPWsCQbZwLKO94cw4NPb5
         lhTjUSk4KTQqqNsLsaP/XV0gW4H5/hx4DowzqUIa7AHp5i75qRhL204cBeh+AkgRq6Qv
         EZalJuDO1KnPh3Mlo8U1gg4EmkJMV2LM2u8v3HXCmCVa33dgHmKO4b7/WqJvfjUB3yaI
         FWOA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BkBvmEKxQ0vUuY5bx2oaGG+T8PtQlKh7XGmfooo67Lo=;
        b=W6cnp//tUytDTRz9YbD9ZcbNI8MYiSaq4hB/3AuuSGlgqiAkSS08C3ZNfUnmfjspJq
         2X1ntcEmytGIy12GUzhKOVPYr7uY2qF8mfpzVLXXCqiG4cb5/6uI85BsG1QDVijryCej
         6ZCl8MXn1C0WqFidJL68p+N/ZS5hJ9auFRbFbTkObcPW6002W33ddmslOjBppsmg3Lub
         HIkoNI+V4nX6aC4mv9Fk3AJ0LC91XYkySfsG8eWEn2EPX55jDmLV18BQCSieKtTFsSWo
         FS/NPbOtaL1aMidgdFNHoM9VOckU+TrS9a2EpOACOwvbfZtXSKHfgEWibMMYrpTC01zi
         CcKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BkBvmEKxQ0vUuY5bx2oaGG+T8PtQlKh7XGmfooo67Lo=;
        b=dxRSy4EUBnHWa3ifsjv5uFUuBHL6TSYmHnQREyxAip31OJLJFjYcdaPwqBxRagQ3kE
         eRdsiFWr4UfK8SGY2A0mBKTrIK0NZOfC+qtmju8q4/eTh/WNmdi0L0kVTmPP7gd4vJvv
         UubARYhNufkReAEH1nV52OpbkJ6mXooxV/LJ6IBryzRjn+RtEGAjPyv5DP8z5xpb7xkI
         313blNFN+O5ZQQcVuJw/04tkcjfr/rKOhZrsC5ieePT8hVYuDQJTssDnmJSqUG6hF8zd
         XtVZ0VKiojU+UOTocBu+BwkD0P/TjaSw9Gg4dG/gRtNd05Q+c/Vv5hoa2v9ojpis6TRA
         54cA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eZ2HuLTBcKjyE78Sr7GkVzOL2wRsNkVKOoMrBvVA1i9FzqmN9
	TPE62JwXwliG2Wwy6K3la9g=
X-Google-Smtp-Source: ABdhPJzxeredGmg0b2f8pPNvIRVhzZnOTOBZ+qS+nD7rzFdhDMNiwd/cHrHPmhUcq5WHvG1wzGvgnA==
X-Received: by 2002:a17:90a:2686:: with SMTP id m6mr4499946pje.11.1591255631125;
        Thu, 04 Jun 2020 00:27:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:e312:: with SMTP id g18ls1574897pfh.9.gmail; Thu, 04 Jun
 2020 00:27:10 -0700 (PDT)
X-Received: by 2002:a62:3041:: with SMTP id w62mr2863031pfw.205.1591255630670;
        Thu, 04 Jun 2020 00:27:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591255630; cv=none;
        d=google.com; s=arc-20160816;
        b=udlNcg5sIqaM5gqhc4gWgWs8Z74H8G6R7oluTlSdWVjAQcWMvokjcrZtW9zS4Ec6lk
         a9GBh9RRs3NaBjeowM+f6pSCaK07RtYNl4IBITERaUYL1yj+t6a44W6F0u/xTWrrpXUM
         te2zgCslP9t8fN/gokgaLNKk9SF7lMeu6rcygH+MAmSaIi9UenCvkxHxuodioiugIvL4
         j0H0tl40FDO6CT9zDEqYkUB+CSBXgd8YNlUVti6BKM++FD/Goo0yehsyzgwWpuSXwKeb
         X5FpbYqGqsAlt94QtS7jrR+sLhXphZIgTRXNOWYS5xXU7znRBEZkKtgRXl4fS3D8YJJu
         zkbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mGOxjTCdefrrnR0hBKEqLE+5+y5wUx6BcOT52JEiO/w=;
        b=eb+TmjkyXt59uQ1OKftxMMERex0tFLLXS49vh+wWi9YcLrzQ2cfcclEiX8wiBDf/cO
         O4DY5eY/K94lCDxZpA3wrFFKnMijPUqlJYwf/8I01ZE9jHeqJdAUk9zgkqCLv0WvrzAJ
         VC8aXirwU8sd54ch3GcBqwVCEiCYkSyzgXPQbYh4EwM7jScrUFABHSixv22++KaARNpb
         ThNytrQRY8SYY6FchuQNA/M8K0hnr0IZ9BSOlDKC6eYLtxs5IUeKUN0c0NDhDsaaQsBj
         IxdOmSVwXQdGd0GYS2P7sUQuQW3sLEbgLONxo1362h/0xM+hGAB4yIFe2SOOTYPGRx3N
         zFnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZS4bR5yl;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id b2si249326plz.5.2020.06.04.00.27.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 00:27:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id k18so5262075ion.0
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 00:27:10 -0700 (PDT)
X-Received: by 2002:a5d:91cc:: with SMTP id k12mr2896278ior.135.1591255630008;
 Thu, 04 Jun 2020 00:27:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org> <20200604033347.GA3962068@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200604033347.GA3962068@ubuntu-n2-xlarge-x86>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 4 Jun 2020 09:26:58 +0200
Message-ID: <CA+icZUU4Re5g3rRJ=WF3_KiCEc3CUmbH_PibTunuK_E1QskEjQ@mail.gmail.com>
Subject: Re: [PATCH 00/10] Remove uninitialized_var() macro
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, x86@kernel.org, 
	drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, netdev@vger.kernel.org, 
	linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, linux-mm@kvack.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZS4bR5yl;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44
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

On Thu, Jun 4, 2020 at 5:33 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Wed, Jun 03, 2020 at 04:31:53PM -0700, Kees Cook wrote:
> > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > (or can in the future), and suppresses unrelated compiler warnings
> > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > either simply initialize the variable or make compiler changes.
> >
> > As recommended[2] by[3] Linus[4], remove the macro.
> >
> > Most of the 300 uses don't cause any warnings on gcc 9.3.0, so they're in
> > a single treewide commit in this series. A few others needed to actually
> > get cleaned up, and I broke those out into individual patches.
> >
> > -Kees
> >
> > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> >
> > Kees Cook (10):
> >   x86/mm/numa: Remove uninitialized_var() usage
> >   drbd: Remove uninitialized_var() usage
> >   b43: Remove uninitialized_var() usage
> >   rtlwifi: rtl8192cu: Remove uninitialized_var() usage
> >   ide: Remove uninitialized_var() usage
> >   clk: st: Remove uninitialized_var() usage
> >   spi: davinci: Remove uninitialized_var() usage
> >   checkpatch: Remove awareness of uninitialized_var() macro
> >   treewide: Remove uninitialized_var() usage
> >   compiler: Remove uninitialized_var() macro
>
> I applied all of these on top of cb8e59cc8720 and ran a variety of
> builds with clang for arm32, arm64, mips, powerpc, s390, and x86_64 [1]
> and only saw one warning pop up (which was about a variable being
> unused, commented on patch 9 about it). No warnings about uninitialized
> variables came up; clang's -Wuninitialized was not impacted by
> 78a5255ffb6a ("Stop the ad-hoc games with -Wno-maybe-initialized") so it
> should have caught anything egregious.
>
> [1]: https://github.com/nathanchance/llvm-kernel-testing
>
> For the series, consider it:
>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com> [build]
>

Hi Kees,

I tried with updated version (checkpatch) of your tree and see no
(new) warnings in my build-log.

Feel free to add my...

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

Thanks.

Regards,
- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU4Re5g3rRJ%3DWF3_KiCEc3CUmbH_PibTunuK_E1QskEjQ%40mail.gmail.com.
