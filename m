Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV6QU7WQKGQEI7EPO3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F13CDCAFC
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:29:12 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id 22sf5018859pfx.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:29:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571416151; cv=pass;
        d=google.com; s=arc-20160816;
        b=uWgDJmJR4Rp8CvVGyx9dQbsj7ltIzdANnKDDtouAHbw4N+RLHchEsCP4ylMrM+A5gb
         OJEr3+uhz7xnpKpmyu4UIr+vR+P/atwly7ew1msrLoFm6d2A3MKCywYds21uunlMaeS5
         rIlHFTzq4NE9GNVbt/QleHiqB51UHwmmQB6CFx5mxwohRDv9rqCBa6V7t186pqQF9lJC
         WfkAknuWrpeI5JenC9Ah0lKAcCJ5PM6s/1TQaUQi38lMdXitLOarloMEur9VwH6+/Kgr
         ABG7vrDqlw7gQqT3lOAhTKFmOHJZgLCeEP0vampJ7y0lMekym04r2PNRR5eUu7a48ebV
         HUlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TsvM439m/M/AZz0fMHMWOtFyTFvlpEp8IXnBjUlML/A=;
        b=DQnXvCtxMe9VsndfOdytxXT227e0kH3nzFgCZ8DxVyCQsbDrO5X3eN8aVWjgZD6Ptr
         r7jt47v0KzQGH6TwDSGLJkuBLVFIaprrNePIhW+6qkMkNFXliKX+Y37NVQf3d+wfb+Cw
         OkKJ70cEKLHvttDqYqs9YO5MUX/swaEovNrOuVpJRzz6LIX1tTiVp8h31q9kXp+a118T
         ojZFVNNN8F8bnfZG3rRa6NgUw1gJpOXD2T8zVV5TvdrSHJjcFegT8bmM87kThMMqjN80
         DkblfuFkq6Jeeiy7+cSVVq8TP1I8OthmZNEng6s627ePGsvXapnOw/Zzw8i5g3u6zIzi
         RAmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l3FmNZpv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=TsvM439m/M/AZz0fMHMWOtFyTFvlpEp8IXnBjUlML/A=;
        b=XFEB1b3d5QZlbAsER1gomvrRLo0293xokgSKTH4b1q9hSvCsydkcxn9XEhBMW3pw6w
         yTxQOlKrw5/nR/W46SHX6unnMUogZedxRGnh5eNK1m4o01buh2F6TnZYAL1Dcs6OVA9e
         9AyKFBj0NSb+oK74n+NzyQKDGrMIdntkuBh7XhsDJHJj9U+cPKhZZWRA+WusJcsq/T+F
         +d14JlMJX3bBv+9bB4TEombPq7cAIqNFUZ4T5ft5eUeqvWJNEhzXo6PvQ798Z9yXwakL
         eLa9brYNIMVB5jzn/G22YO4Fg2wDbRwxLvaTezMo6UE3b9FDsEj5bhIhttB4DNeXqu4y
         wPyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TsvM439m/M/AZz0fMHMWOtFyTFvlpEp8IXnBjUlML/A=;
        b=jpaQHlPUUN60GvtWJIaCneoatK+nZ/FpUi7zuEnPfA6HM14c9xDcQG+CEx62IN/usC
         66IWUEfEKtORZuE9S5rYn0CCTqw0ZyaMMhXw0qArN8L/UkJY7T0g3/2qyOAeG0v4aQqn
         m3GzL0hhz/cbBurxVzB+KhSYWhuppAct8CPgryy9D+/LDqaTmimjgcH8GfqkkXRUkhDe
         Capk1xewtfL22YVXm70o46Gtgl7ARDJNlNDY4Wf7AztfCptIKpB5a9BJbBTRXstd8Z7f
         KyAd5AOtvd8MMp/x9iJXoBik6NmdDxXyfdL+26qt2Ijn9JkJtEgDPbkKwK2MSaBkkkgK
         OYCg==
X-Gm-Message-State: APjAAAXyLcAZddc+HdcoZ2pwcy9KNWevoxAX9YpsBZNHeHPA+hqmK2i8
	d48Vi2kSprusy6gLi3Gz+dE=
X-Google-Smtp-Source: APXvYqw75CcVZEH1rRYLKFCy5LodFEPIZvg0rMpuJ3C5saSeCE4wRhw/GRZkut1SrTDDHXe8XEHMgg==
X-Received: by 2002:a17:90a:2ec5:: with SMTP id h5mr12380910pjs.87.1571416151071;
        Fri, 18 Oct 2019 09:29:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2a06:: with SMTP id q6ls2085914pfq.14.gmail; Fri, 18 Oct
 2019 09:29:10 -0700 (PDT)
X-Received: by 2002:a63:7405:: with SMTP id p5mr11291203pgc.264.1571416150582;
        Fri, 18 Oct 2019 09:29:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571416150; cv=none;
        d=google.com; s=arc-20160816;
        b=KnWLt1Hp77RpLrTQA95NDTOr4CqyXZ0zU2v1+zpo6J4J40J+1XXc/pT28mmMhPkTh7
         7slvVe2WDsr/GnZ9PTBYxSSRfsMI94wNf1/LAACEJrN5jJHa24WJomf7GLsDSiKjITlp
         72sm/IJsXnzOb1tUEnrZCgTov3wi/SqKnRzqfHYylhKI5S8mlNP8xe4DuTYjXSwrDRfM
         NwNsMOR28KZ9NSFMa5BH+JiKKgp7Qv4NHvA3fn6zcPu/1VOtrXMzYiV3PcWxaqnnkeT0
         WiBhUzp96JW9b3m3jZueJDSNHYnAapvvEIfE+5Ldde956uz1j7XfWCh2ZXIIgoidYaLD
         xueQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2wpqKYgqS1BkiorV4FohVUrj12ksHYUyybev2uqGPeY=;
        b=VsWAL7IfQykKnhIGaIgS26+3L6UZWJvXHmI8uuyN3uV/kpYOJuA2RAAPregKqHuQbc
         R0noiYcFzhk8xcHZcQ/noS90l1hVbtTyYZH7uGTTB3JpD37DuLObj60HIO66pS3J6ITC
         d50toVEljw8XPU+w9ckFyKb9fgeCEhfvk5tJrzBSrRexPSEvsVrJKc7zu6jBzYVP86G+
         qpKG1fM59DrBvOGSDPSGaFkgiVGyD/qQsx5psHPvB9Z2hpU7+Zs4pEkyCJWHQKVURljh
         E0gr1wZ8tow4NN0f0PXWY+1Y0xw2rRZ6KAqzHsABFqpFc2TzE9MMi2KCSo3OhRGUGt/1
         E9bA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l3FmNZpv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id o23si354702pjt.2.2019.10.18.09.29.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:29:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id e13so3646724pga.7
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:29:10 -0700 (PDT)
X-Received: by 2002:a65:464b:: with SMTP id k11mr11317125pgr.263.1571416149678;
 Fri, 18 Oct 2019 09:29:09 -0700 (PDT)
MIME-Version: 1.0
References: <20191018134052.3023-1-thomas_os@shipmail.org> <20191018134052.3023-2-thomas_os@shipmail.org>
In-Reply-To: <20191018134052.3023-2-thomas_os@shipmail.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Oct 2019 09:28:58 -0700
Message-ID: <CAKwvOd==mdqaEQZU3YYn2CjzZcW6Nfjjva_RijMMOywA8a-Lqw@mail.gmail.com>
Subject: Re: [PATCH 1/2] x86/cpu/vmware: Use the full form of INL in VMWARE_HYPERCALL
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m_=28VMware=29?= <thomas_os@shipmail.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Thomas Hellstrom <thellstrom@vmware.com>, 
	Sami Tolvanen <samitolvanen@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>, x86-ml <x86@kernel.org>, 
	Borislav Petkov <bp@suse.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=l3FmNZpv;       spf=pass
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

On Fri, Oct 18, 2019 at 6:41 AM Thomas Hellstr=C3=B6m (VMware)
<thomas_os@shipmail.org> wrote:
>
> From: Thomas Hellstrom <thellstrom@vmware.com>
>
> LLVM's assembler doesn't accept the short form INL instruction:
>
>   inl (%%dx)
>
> but instead insists on the output register to be explicitly specified.
>
> This was previously fixed for the VMWARE_PORT macro. Fix it also for
> the VMWARE_HYPERCALL macro.
>
> Fixes: b4dd4f6e3648 ("Add a header file for hypercall definitions")
> Suggested-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Thomas Hellstrom <thellstrom@vmware.com>

Thank you for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> Cc: clang-built-linux@googlegroups.com
> Cc: "H. Peter Anvin" <hpa@zytor.com>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: x86-ml <x86@kernel.org>
> Cc: Borislav Petkov <bp@suse.de>
> ---
>  arch/x86/include/asm/vmware.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/x86/include/asm/vmware.h b/arch/x86/include/asm/vmware.=
h
> index e00c9e875933..f5fbe3778aef 100644
> --- a/arch/x86/include/asm/vmware.h
> +++ b/arch/x86/include/asm/vmware.h
> @@ -29,7 +29,8 @@
>
>  /* The low bandwidth call. The low word of edx is presumed clear. */
>  #define VMWARE_HYPERCALL                                               \
> -       ALTERNATIVE_2("movw $" VMWARE_HYPERVISOR_PORT ", %%dx; inl (%%dx)=
", \
> +       ALTERNATIVE_2("movw $" VMWARE_HYPERVISOR_PORT                   \
> +                     ", %%dx; inl (%%dx), %%eax",                      \
>                       "vmcall", X86_FEATURE_VMCALL,                     \
>                       "vmmcall", X86_FEATURE_VMW_VMMCALL)
>
> --
> 2.21.0
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/20191018134052.3023-2-thomas_os%40shipmail.org.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3D%3DmdqaEQZU3YYn2CjzZcW6Nfjjva_RijMMOywA8a-Lqw%4=
0mail.gmail.com.
