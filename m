Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBWH4XD2AKGQEDTZ3STA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id A03B21A2ADE
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Apr 2020 23:12:56 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id v5sf2291555ljg.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Apr 2020 14:12:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586380376; cv=pass;
        d=google.com; s=arc-20160816;
        b=K6Aph1kS0ATJRC6HY2xPfIrtikiTzwPg36Ao1VlOmUVwk8uNuTSUFv6CGT7n3ZATWc
         XuFuh4GydGUrlJ7wlJ/VZ9Hx1pXahZRqEwPtXgji2UPsSY0RLjdZzoEZrwXamSE6GwPS
         Bdz3anmEXGyGWKacryiBtqr610lSqL9hon4J4LtoduXEOQhmGmoLFGWozcSw6Ww+68M+
         ruC2ZYTkoYuRIO+pbEAmaUnYXcH9UKSoU4BMq3c+2a6i/he+82jvAvvGZ3Jnk1Eod+gk
         6YBeOKQGr546vQsI9D0H9Mt6I7CqKIvlQD4taBa/DDCh78MTPHCTNVmArnAZRDe2sQI8
         jxcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Fl0V+CEIPdn8d1yn8tXpsdXzut3O//EsGZruOOwSs8Y=;
        b=OIZU9KL7C6+Kg/BCq/Rqk67i65YFJ9Jd7sbwpi5YIixCzDuhSVvnymZ5GQOZlj5xhd
         zgmSL5iu9exRh07uO444Ef3AVgBDqRJRloCRsX3Nd1wy7iCpd7/OaAv/F+V/81UyMYCj
         fke2Xt+4vowgrW/Qovi3hDssH6VOzzYwAcZBYYWDOdsedtgpluFbIiEQgHSqolil6EaA
         ZUzfmHbwYz1+3sewHttRcDlbjBgAWG+r+tsYx5a94zoRVGbhOwcvc+xLeQPnA8AgQwA0
         KSWJqXUfTvXQGSahmttO88YBXGxjPzqXq06bMQsXIRAx4W/fs+j/UEBa5XQpyrKDmVJv
         a2sA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HkZV9t2h;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fl0V+CEIPdn8d1yn8tXpsdXzut3O//EsGZruOOwSs8Y=;
        b=Fng16tOZsApxUEG4ebFYkTkSoozthvDJWrie1XxhlEBqGnUlc5/EShu4TY0/oNplow
         tx1xyC1T7smw70SgGW3SWR1IwV0wTgBs3tjoW/XW72skSb9fCQQ1VFCD+N1TNH54+2TL
         1zWY5wklj9FDbj/ZqHILGw/X9ENI33bj4dzUlKS9iocxtwHvSxELDsbF5BftZ/R9I+cq
         gWsP0gcGDm5r/bQSix5m6GgFHribxEGsaE3beeI1TkGgAI8Zx01VXJsB/qnQH6aFQ/CP
         sDbo0kNjxj7KQOJ539q7AiM1XiB8XOjL3a2YeW6SgutScpwdtvrjsIQkVFuH2pwx11oc
         O0QA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fl0V+CEIPdn8d1yn8tXpsdXzut3O//EsGZruOOwSs8Y=;
        b=P4SEypgD6YL9XuZ6c3Bg+gBkyEMY4nVSH4CegDnFPn1lHAlbkhjHL23inzvkTGL5a2
         xBksgDgti+1pR5R+t7F7jooRBUXUaehUDFdrxIseoJcp+NQKK9XcITINOsqw9uBQmov7
         1anJNJc+Lp3EhZCD6wb+/8/vtgOA19xCp4UtV3+dvkXwgxhkXB+YU0y8phZ5nvse4txI
         ZhP25UKFBZthlCCWficfTDacy1BA1wcAX+HmiRUy7KanFbsbOgNu9O/jcbXr0gJHlYtj
         TqZuyivYVl/KBdFq6xYAczA4iGZiCXX0qQteY73SkHLwVHjyrChaYBwpG0WBzgzMFBrf
         kMAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fl0V+CEIPdn8d1yn8tXpsdXzut3O//EsGZruOOwSs8Y=;
        b=iDt2jYlprqTqt5kA8SF49OQZpTbLeq3jrzmWlsRiBBhuX626p8ZHa/KpMfcgqhCQtP
         9RcXUqhwsGCGp2b1T1o8drCIJUxnoFcE3dRQu9SlP3MdXookg9XwHfdM7LQdLCTVC4hS
         qQAfm8utK0+R6sqfigGILK1nqv5+TpzwKm1QDxjnZkfsqi5QYlrszdzZE4+xk7htMpwI
         vsJPPQ23shLdXffeP32eQutdv6ZgaTm1TgsmJgcZPC5owxExnTezAza6ZeLqLy7DoTGD
         hFYcJ+IvJfH2PU3vBQAzXPELK5qWdwcm1+NHRa5iTpoaL+0FQq66eA/YXITFkrdeJTiP
         aoyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYeq+QvqP683OitnLOTxFdt2uZ0gcU0/9PUkHCOeffFG596h01N
	cWLj13F6Mg4TjPHfnTPd++o=
X-Google-Smtp-Source: APiQypKPrCP/EXhyo3T9L9mQFs5dQSiXusnP9ksLrhsJ9sqY8ZOUwJOPbTsnSrcEhGelDsk4MB9fmw==
X-Received: by 2002:a2e:a362:: with SMTP id i2mr6119411ljn.52.1586380376106;
        Wed, 08 Apr 2020 14:12:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4c6:: with SMTP id r6ls943745ljm.0.gmail; Wed, 08 Apr
 2020 14:12:55 -0700 (PDT)
X-Received: by 2002:a2e:7a0a:: with SMTP id v10mr6326711ljc.143.1586380375365;
        Wed, 08 Apr 2020 14:12:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586380375; cv=none;
        d=google.com; s=arc-20160816;
        b=y51G1fY33YrhDTGpI5DQGkSg6xE7/AL+1DTugDKFpS1FvHL+S6XwGN2/mmoVaQW+pw
         uv8svdxbD5lqp1f0NhTXbyI5UDY5HFVMYwONyt3NTQh4XpJQ0QaVXiVSJ6CNsNMpkRKk
         BPaWm7bpIuk+Tj4yPOAKdLa09BZEYqqSQqMsKweWC3021SUcsvxEp/jcrj9K60pYIhTw
         iJdNom9LndJOCpVO+hJKiDtYNXd23BWiE0DC6uPfxrhuwqX9VMQmweFOeeTFyf3JNZYG
         IYp34LZg9TGDB2g492YormfS2qsDtOV2224KwqvbofREs/0kQgRTqq8iyiVwfDgWcNDf
         6/EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+AwwgEHFD5bilNHg0VD/JP6P2YBOrf+uHd0tB2xL4pE=;
        b=CWmK8EdFAeZ98z+2gbicwmDDXeqtRd3OhoTplPAFzS3ihlIt4UCcsk1ffwrsunj8Uz
         pa+7iV/uFhBWYFmxoTanKHphTh/WfZMBll5+Z+HC+VX56PR+nn7EhFsGfqBnPbvrOxPt
         BRB47kAOFFvGlddzGZCxBDnbdxnyq3ukiyUuHKLiLM3LjrGTdCoGdkbzwHpZE8kgFn19
         llCpdXNLG87pJmXdHtR559DLafu7SP/XARAWy1xNA5GVJr7C6E4+p+Poj+JAyYuPKaDG
         dstBzOnqylIuwHzUlVNGlbpSa6iIGk+J46MYIDwE27pJtiPqt1/Ydp0zHM1/flEgCYZr
         FiAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HkZV9t2h;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id j13si381107lfj.1.2020.04.08.14.12.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Apr 2020 14:12:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id h2so1317102wmb.4
        for <clang-built-linux@googlegroups.com>; Wed, 08 Apr 2020 14:12:55 -0700 (PDT)
X-Received: by 2002:a7b:c927:: with SMTP id h7mr6424887wml.122.1586380375005;
 Wed, 08 Apr 2020 14:12:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200408205323.44490-1-natechancellor@gmail.com>
In-Reply-To: <20200408205323.44490-1-natechancellor@gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 8 Apr 2020 23:12:43 +0200
Message-ID: <CA+icZUUTEEZww3qT0jfFP0ZgUPXoF1_uOHMT4ZecrQxumE1Zmg@mail.gmail.com>
Subject: Re: [PATCH] x86: mmiotrace: Use cpumask_available for cpumask_var_t variables
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@kernel.org>, 
	Karol Herbst <karolherbst@gmail.com>, Pekka Paalanen <ppaalanen@gmail.com>, x86@kernel.org, 
	linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HkZV9t2h;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343
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

On Wed, Apr 8, 2020 at 10:53 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> When building with Clang + -Wtautological-compare and
> CONFIG_CPUMASK_OFFSTACK unset:
>

Hi Nathan,

thanks for the quick patch.

I can confirm I have no CONFIG_CPUMASK_OFFSTACK set.

Regards,
- Sedat -


> arch/x86/mm/mmio-mod.c:375:6: warning: comparison of array 'downed_cpus'
> equal to a null pointer is always false [-Wtautological-pointer-compare]
>         if (downed_cpus == NULL &&
>             ^~~~~~~~~~~    ~~~~
> arch/x86/mm/mmio-mod.c:405:6: warning: comparison of array 'downed_cpus'
> equal to a null pointer is always false [-Wtautological-pointer-compare]
>         if (downed_cpus == NULL || cpumask_weight(downed_cpus) == 0)
>             ^~~~~~~~~~~    ~~~~
> 2 warnings generated.
>
> Commit f7e30f01a9e2 ("cpumask: Add helper cpumask_available()") added
> cpumask_available to fix warnings of this nature. Use that here so that
> clang does not warn regardless of CONFIG_CPUMASK_OFFSTACK's value.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/982
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/x86/mm/mmio-mod.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/x86/mm/mmio-mod.c b/arch/x86/mm/mmio-mod.c
> index 109325d77b3e..43fd19b3f118 100644
> --- a/arch/x86/mm/mmio-mod.c
> +++ b/arch/x86/mm/mmio-mod.c
> @@ -372,7 +372,7 @@ static void enter_uniprocessor(void)
>         int cpu;
>         int err;
>
> -       if (downed_cpus == NULL &&
> +       if (!cpumask_available(downed_cpus) &&
>             !alloc_cpumask_var(&downed_cpus, GFP_KERNEL)) {
>                 pr_notice("Failed to allocate mask\n");
>                 goto out;
> @@ -402,7 +402,7 @@ static void leave_uniprocessor(void)
>         int cpu;
>         int err;
>
> -       if (downed_cpus == NULL || cpumask_weight(downed_cpus) == 0)
> +       if (!cpumask_available(downed_cpus) || cpumask_weight(downed_cpus) == 0)
>                 return;
>         pr_notice("Re-enabling CPUs...\n");
>         for_each_cpu(cpu, downed_cpus) {
>
> base-commit: ae46d2aa6a7fbe8ca0946f24b061b6ccdc6c3f25
> --
> 2.26.0
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUTEEZww3qT0jfFP0ZgUPXoF1_uOHMT4ZecrQxumE1Zmg%40mail.gmail.com.
