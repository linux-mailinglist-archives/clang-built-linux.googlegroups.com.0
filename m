Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB7EHXH2AKGQE25AJ22I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7271A2B51
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Apr 2020 23:37:01 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id i61sf8240909edc.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Apr 2020 14:37:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586381821; cv=pass;
        d=google.com; s=arc-20160816;
        b=L9Gk1iWNqCc7/LKq8MHTMHvZAyOk8WNMMeRkDqq2hma2B6Zd9Cjm9/W/lAKa/kJaJ9
         gLV5sYC7bmxsZq8ClgGv4VNi/s1r07k7J7N/vaDaQtWyf0+mmdCm10UnxFhaFAMCTJ+I
         rw1qaEn5RXkuOjBuqYk9qBApVX13qLJpgTPrVD69cExGLCfBCxk1k03fIh5oEtBVfV11
         s44DKL/f3uFhdl1v5w3UAk7H10xiIKV+UCIdZM4xyBp/mW5fhRePogLDgOWCZikydMX4
         wOqI3EM6NJq8YViE+nbdZHJG3qCwQlVAKJxtoxnU0RHhRqQ/xj3GryHS6c5LkuuJI16m
         4hcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=YPQOB8fD5hr6PJ196GKhFJEMV+Nc6fhEI7mg/2DxU3g=;
        b=NY+ZwAI4iWMuKNvPLIVq3YF34erk6K+pZzm5bKXgy/4KrjmdIWGSUutDEVf/bjsDyp
         ik2+g7kdEWzZTDu74/LPBNCqo6ERfiJpCWSmZYUQU+b6ISbht0ke9PG5w312nTHiCQkT
         yEh4J/kdyq7n3wEleso78RFcyzbDN6ifQDt7+nuzi4IyMmyiZH1mxBTu4N+gHCMXhgzy
         UJEyGU40f8sRRmz7UrGpnR9lfYMHSxNhqaUnnN1JomYgahUVRuPSg8LFCXEOje8nsBbi
         KRZ3jEztRC8UnVyQo+jee6Hwf9xKZPLSjPzoURhMGSpL/IE00IXWdSEcWueX/og4eqSr
         Gyvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hco7MSfh;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YPQOB8fD5hr6PJ196GKhFJEMV+Nc6fhEI7mg/2DxU3g=;
        b=hSz+oJjZ1WVrlgPgTt5dBVAAJig0fQITAbiSa5cGqjGec50Cxk13jec3XRI19ZHcS1
         x/CVrm1dQb5GzzzAMfGcxul6Sn7jjYheAPr7rJWmDyB1mQC0wlBfNPWtaBmzPzojU6Tn
         xRslJ3DZfFNPT9qdLTHCy0+CN1Dz0/AQatKNBtS2vm/TjZpbzSEc04cB9q9O6/5P6dWh
         7Qpnpg+OXggt4gJMhC/o+TRhuabKatpPY+oeuiibEWwm4C18hdDMOUf2kfGmOpcxM7Q4
         X91xQsbmZgpeItpbRA3Yb9znBE8h0sgBey2ox0VtHT3clFL2cVSpVz+UH1s04zd0jos4
         pusw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YPQOB8fD5hr6PJ196GKhFJEMV+Nc6fhEI7mg/2DxU3g=;
        b=UT3nTtcnzQtUC7JdrYKcxt8HhU2K/BeToh2zHwJhGsX+sk2CV3s44mGiPShGc+UJbG
         7/aRWswdOytoRnkP5AdiWTuuUJXVkQ5orovdBW+RVN+UyKzyKgdrSfzeQjRh6qU++qoR
         bxlCdPMB3X9Bh2xnn3Q+avML6Co9CsJxO0XgZcar683nPvSF2C4f1a0th1ygvzCQRzFc
         o/ztsRBek/SdcAfMObdSrU0Nlq+JEI7g6miQeIYn4uDJsSM4Q9oVYUGe41gB7UBHLmR1
         iekXWCsby6P+Ac2DveZTkfHGboVPFl+bc1WFiRORzlyHgBDuzBx0g9puY6KTh4i+bhL2
         a5vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YPQOB8fD5hr6PJ196GKhFJEMV+Nc6fhEI7mg/2DxU3g=;
        b=lq2vbzWgSPRaVZC8PKklnBgLkgsZi5FFDng2CT2DrcUsVYOXv8qvtza9bzIsnrMxLq
         cR1JOoUUByIje/G7a8YihWcTq+Pik6eCWH8WIx0Q0ys7qYNZC4J1K78n7wtcLmcCSmV/
         3oRgwT+pBCFVm3UwwFGI76fCVZk2pX4dzkhFxXd7NqLvRrVZRAIh8m2XuC14XJ4/XSzE
         nNKLFS3Hx05nB2gRvDkYKlYMY7nLiWrJ+1criidYAcAO/vx4Q7eOD+Y1VRulPza5JSni
         W0ixs9WAC9ptYetj8sExYSJoGBUAletwQ3SDwh38A8vvmMi8r3m1uwo3axcnF7Eo7JSy
         YVEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubpfgNazOlPFESwt+Uc7orxiAaS3Z9g+43vo41SaS24qJJc+kLa
	2EFwSkSAxgxnzjrawxx7nOs=
X-Google-Smtp-Source: APiQypLT487nFlJpsXxf9AEbZyGdqFcnMeYlN23f4lme/UYlQKihQEaJTYG7PB3jHwwQip9QFNpL7A==
X-Received: by 2002:a17:906:8da:: with SMTP id o26mr8825678eje.288.1586381821048;
        Wed, 08 Apr 2020 14:37:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:f290:: with SMTP id f16ls7124968edm.6.gmail; Wed, 08 Apr
 2020 14:37:00 -0700 (PDT)
X-Received: by 2002:a50:af85:: with SMTP id h5mr8575314edd.300.1586381820358;
        Wed, 08 Apr 2020 14:37:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586381820; cv=none;
        d=google.com; s=arc-20160816;
        b=q4zcMY5l+axcxjJ2K/T7+wtV5DTBDBk24VHMuc11MIVR2sFpSIeDNJQqJ27SN5b92M
         mzKEPmmgIo4+qwiq3F8ElwZ5O5Su/eXKnfMpENE3aSna72TWeNUlgeEobEvBhpe5XXri
         ndKvBb210MxKfZyo527bSyPFqKZQ+vtcOnZh6z8PwHe5a3Yfo5Wn7o2gyJPvjq4A416e
         0yk8ePGQiQGLCwLlcyVBOKPUxPpUkO5FNM2B80hB2OlASSaSPeCz9ydeaON/8G3Kfphy
         mD1BoJuKc5YzMdKnXrG3FNYuABd0aPQcivCtfORtpn92mFl+TQHhv9bGvo9JzDlJ+F3d
         vU8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q4sLyktfrOExuEZEYqjNYRWtmjYeOihRLdSqSzM0jBQ=;
        b=x54Ur++Bq0N3Tz8qcGU/IvP9zjeHVrRVpGeJUTohsWdfzx6wNo7aFArAEhdcYdzqf5
         +KRbsb4MNbf/JhRLXSzLa9GhVJUzk+VEGs5SnKlIHHKxuwYlIUyfyJUfvEn4TXiS06tr
         sLfFq2bhSBj/mBllDJP3WS84Sy8IeqUaheBKmAQWbj6o4fHZrQMQij9a3TPRqKsK3lQC
         MYbKdtA2v75xIqNsrAkL09C17GI/Fy/r361+G/ZTPo+WLJ1/GOuVKs1+lgUTC1hDmG5f
         NLGBq0gHfUYmlqnhKUB8vTWam1hnUHIPwM8JS3kqDmiJlqFIMNp+yH0s/M0CW19bTIhr
         ehgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hco7MSfh;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id w13si373076edv.2.2020.04.08.14.37.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Apr 2020 14:37:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id h2so1476042wmb.4
        for <clang-built-linux@googlegroups.com>; Wed, 08 Apr 2020 14:37:00 -0700 (PDT)
X-Received: by 2002:a7b:cb86:: with SMTP id m6mr6258988wmi.64.1586381820060;
 Wed, 08 Apr 2020 14:37:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200408205323.44490-1-natechancellor@gmail.com> <CA+icZUUTEEZww3qT0jfFP0ZgUPXoF1_uOHMT4ZecrQxumE1Zmg@mail.gmail.com>
In-Reply-To: <CA+icZUUTEEZww3qT0jfFP0ZgUPXoF1_uOHMT4ZecrQxumE1Zmg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 8 Apr 2020 23:36:47 +0200
Message-ID: <CA+icZUWq=_qjvAf40PqQAj3tQ0WAZ2QAR9hojTuYqZH_=RWd_w@mail.gmail.com>
Subject: Re: [PATCH] x86: mmiotrace: Use cpumask_available for cpumask_var_t variables
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@kernel.org>, 
	Karol Herbst <karolherbst@gmail.com>, Pekka Paalanen <ppaalanen@gmail.com>, x86@kernel.org, 
	linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Hco7MSfh;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344
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

On Wed, Apr 8, 2020 at 11:12 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Apr 8, 2020 at 10:53 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > When building with Clang + -Wtautological-compare and
> > CONFIG_CPUMASK_OFFSTACK unset:
> >
>
> Hi Nathan,
>
> thanks for the quick patch.
>
> I can confirm I have no CONFIG_CPUMASK_OFFSTACK set.
>

Feel free to add appropriate credits:

   Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

Regards,
- Sedat -

>
> > arch/x86/mm/mmio-mod.c:375:6: warning: comparison of array 'downed_cpus'
> > equal to a null pointer is always false [-Wtautological-pointer-compare]
> >         if (downed_cpus == NULL &&
> >             ^~~~~~~~~~~    ~~~~
> > arch/x86/mm/mmio-mod.c:405:6: warning: comparison of array 'downed_cpus'
> > equal to a null pointer is always false [-Wtautological-pointer-compare]
> >         if (downed_cpus == NULL || cpumask_weight(downed_cpus) == 0)
> >             ^~~~~~~~~~~    ~~~~
> > 2 warnings generated.
> >
> > Commit f7e30f01a9e2 ("cpumask: Add helper cpumask_available()") added
> > cpumask_available to fix warnings of this nature. Use that here so that
> > clang does not warn regardless of CONFIG_CPUMASK_OFFSTACK's value.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/982
> > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  arch/x86/mm/mmio-mod.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/x86/mm/mmio-mod.c b/arch/x86/mm/mmio-mod.c
> > index 109325d77b3e..43fd19b3f118 100644
> > --- a/arch/x86/mm/mmio-mod.c
> > +++ b/arch/x86/mm/mmio-mod.c
> > @@ -372,7 +372,7 @@ static void enter_uniprocessor(void)
> >         int cpu;
> >         int err;
> >
> > -       if (downed_cpus == NULL &&
> > +       if (!cpumask_available(downed_cpus) &&
> >             !alloc_cpumask_var(&downed_cpus, GFP_KERNEL)) {
> >                 pr_notice("Failed to allocate mask\n");
> >                 goto out;
> > @@ -402,7 +402,7 @@ static void leave_uniprocessor(void)
> >         int cpu;
> >         int err;
> >
> > -       if (downed_cpus == NULL || cpumask_weight(downed_cpus) == 0)
> > +       if (!cpumask_available(downed_cpus) || cpumask_weight(downed_cpus) == 0)
> >                 return;
> >         pr_notice("Re-enabling CPUs...\n");
> >         for_each_cpu(cpu, downed_cpus) {
> >
> > base-commit: ae46d2aa6a7fbe8ca0946f24b061b6ccdc6c3f25
> > --
> > 2.26.0
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWq%3D_qjvAf40PqQAj3tQ0WAZ2QAR9hojTuYqZH_%3DRWd_w%40mail.gmail.com.
