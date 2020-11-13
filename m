Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVHJXP6QKGQEYAN4AAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FC42B262F
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 22:04:21 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id b20sf7042927pgh.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 13:04:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605301460; cv=pass;
        d=google.com; s=arc-20160816;
        b=KDqm1zWz5ery2+j7WfLmYfK+BbMMigWvUzEs3ZUwxWirOYDvsu2uPIRlGRwAMNS/LE
         d1ebC0d6nHdYhhh7wnzMHaeKSLw00PLWzY6YRx78sSXhOGmZ4CIgDHj0R7HkZ2Vm3MXP
         N4IPAWLvMOTT98OWhW+bCCjX4Y67JY99RNdPjYqYYk9JpscR+1R89WA3YkuVb1AfrEPw
         GwF9F/a/+gFeWqMe/IA8v4DNL/uq5kKgFWix4KPtJ4zAKBHtUTKjv6VSmFqsu4D4fjg6
         0h0i462Enapx7jzjhDfDvhKFLKv788knPmogtrnKxtgS1hZhsG4dQ+IZkIdmr3wvLA/Z
         0FUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=G/ZEKt/Ha5np9znsPbtmYDLLSND1U6Is2gQvBU6bR4E=;
        b=queV+GsMeXB2y4PE65N3ml7pUTvZf7LonP8wbPuNTzflxNplGC6WeQL2NAus4Z05Zu
         YawcAuaD0rWXwvtp7s5fui5JsFFk1yuU/AevpwHJBXtAHryaoos2RR3qPw8rCww2x9iu
         sSAC4hiMFYDKDZ109ZqmCajEjxDMJnLcfiGa/JZcLNsbZrmsEaayIywydV8oU858vai5
         1cBxfN8KNoJgJ5rxWfL8ukFTguVjXU+gzp6U478KPx6Cxjn/CDmAuaLUW6YuQuB4jGug
         06X0C2UQ3lTXAhXpTCAl4vCJOYdxGUwsfkT8M+WKKvGenRiUjWDNLLBo9tHQcTumIV8q
         HSjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gtpsQ8e6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G/ZEKt/Ha5np9znsPbtmYDLLSND1U6Is2gQvBU6bR4E=;
        b=Lxl3zw8tb/WSuzPxGLKsh/qg2BX9WDvO/BLnk2hHOfDzRJAn7bTjFn9ArpEwBWnWYt
         BbH049EmmVzVODKydg9aOPAWlbCq1j31/hEEw2EMNgRQhk3wCdqNS0gFdq8lefTs3AEP
         uxBzuarb5wLxAqnoquBWE9J//TJLXMZsp0tglLX4XfihWDjGniiKaQdf0AZrk+Nl90EV
         /r++FP0A+JCxdOMFQj9oJkBUd0XG2SjsqxcPN72BkSmyelAmEbsU9TyM5ny0R4SnZGfR
         HdxzUzD9T5I5G10dtt67if7BKJpq06fwz8eSImKD89jUqNawPAHto5tXwpUCSQ+f+3/F
         luCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G/ZEKt/Ha5np9znsPbtmYDLLSND1U6Is2gQvBU6bR4E=;
        b=RbyI48rQ42QBywA1K3IfNkt9VRnEif92BDE+RYD/6wMeVaRDDn32+HJG4ZcayikysI
         ZPmSgt4lP963HMAyAc+DVcLkUE8iH1UA3m+g087KzkWzlQPpjHnjKeP4lyO8n0KnpW9l
         eouCAOW20DdVzFq6airgO1kJUrlPOIv4YJoazGiYKSGXb8asHJcc4VJtnOhfSuucGjBB
         FSDCSHORkTdgDO95LLSGqsuAoNmaSysZOeFlmZTj/IRnXEJfJiY1eB65aQ00P+RV9H+s
         qQvnrs6Wi0oDG0TWTv1At3QaD8ZC4lxc2+eSh17ob5kXxKMaXRNBsoqsBrRSpbysFd2l
         Unng==
X-Gm-Message-State: AOAM532eOMiJTV7FuSXZN3sCOpSQXV4qcHJfpjfSjYfDHx+nIRqIm2jn
	e5BzjEUom90Bgefrs6JxKoo=
X-Google-Smtp-Source: ABdhPJyS3Nc2TdWnLdgnCR24PtqJiWiLu95TuhZcDZJIcK01l8THgt7rsTkyvDtN8r+sT4ZfVrpZkQ==
X-Received: by 2002:a17:90a:5d93:: with SMTP id t19mr4705959pji.220.1605301460293;
        Fri, 13 Nov 2020 13:04:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:483:: with SMTP id 125ls2650655pfe.6.gmail; Fri, 13 Nov
 2020 13:04:19 -0800 (PST)
X-Received: by 2002:a65:4c01:: with SMTP id u1mr2897994pgq.35.1605301459725;
        Fri, 13 Nov 2020 13:04:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605301459; cv=none;
        d=google.com; s=arc-20160816;
        b=sPJ7+sPaKNBCu8boXLqY9wfOb8LR9YzMFOQ+lfQR30HtL5eN9u1XwUPPNoKMZPcymO
         li7Gg7oZbec/u+S9bgOKwMXemDYbBYqpDrQSxDXksNJJWI/rJsibF2BgqxfFAC5DPtLR
         sHnx+TcCaGunyFdI03XJGyExRrpShJidvYL91z1KFUdHL7BtQQIzK6AeX/5d6DtxlrnU
         LRoZAL5+0SPAd9WTetE9ixPRF/Sj5IWIXj93AGy2rw86Egk6bo2am9Kx5QLSkRgp9Dk2
         PEjovg7MUIP4KUjOlVw3SRTdgqDCMMPEcj7PCJiAi9rJvdKS64xGKZ7ux5NslSxDybJD
         i2Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Bu54NTDDzZAvafBN0qstmnnIgcbv3/RJ0zdchAkmdlc=;
        b=EcCauJ0h4WQSDt060DmXm6lo9oDCO0gL9naP4eLtlIwXgCjDktTr7FrEbPFOunRcKp
         95yLSagoiPvkXSYLPakLQCaR9LSF5Udqeinoa7O0S+Pq6R/3vSIyvzttscBLYW8d96iN
         feL2/ocV0GZg68SU5Ne6BnEvOJHTBahx7uo1ErXORbseDjfQx+5wAm2A+WpBuxJSmvNj
         qb6OtNi5znuszQGt9Jd/HgI3XQixHgk1LYIlDGo8i2QU+mKPvrXGZqvGWCkR5dW42iz5
         3ReE3CHmYAc6fsqFycyRPrD4tkr4v43rzKOX6jARi9oJiopHWfWbQddx42QyWuuwUu9U
         er/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gtpsQ8e6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id o24si713738pjt.3.2020.11.13.13.04.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 13:04:19 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id a18so8670234pfl.3
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 13:04:19 -0800 (PST)
X-Received: by 2002:a63:b55e:: with SMTP id u30mr3314262pgo.381.1605301459249;
 Fri, 13 Nov 2020 13:04:19 -0800 (PST)
MIME-Version: 1.0
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <BYAPR11MB3256E0C1DCB4F01D18DF709F87E80@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdk2U5+DcXYyMoBAhyaa67EukhB6QMEUbRPcOF7P3Sz21w@mail.gmail.com>
 <BYAPR11MB3256C9711620932685C368F887E70@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdnu07S8ZtGVe0eVFP=6hLSRa58EtDYOJUK_zGWFaqUboA@mail.gmail.com>
 <BYAPR11MB3256BEF30840D4AB440A359C87E70@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdnYpmf=ydFVWSqVkWeUpn+M2v9PfdQd71T3oqQ9_1WQaQ@mail.gmail.com>
 <CANiq72k13K_zA5aH5hameoe4TSf2o5cA294bA4UEZG0M6S3DXQ@mail.gmail.com>
 <61039da395c8a28444e2f3958d29deda4c0d49b3.camel@perches.com> <BYAPR11MB3256ECDE31F1900EE1D9254687E60@BYAPR11MB3256.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3256ECDE31F1900EE1D9254687E60@BYAPR11MB3256.namprd11.prod.outlook.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 13 Nov 2020 13:04:08 -0800
Message-ID: <CAKwvOdn4-CYtszj324JoOL6GBtUAeieTocc3cQyVUJJvd9AG6w@mail.gmail.com>
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
To: "Moore, Robert" <robert.moore@intel.com>
Cc: Joe Perches <joe@perches.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	"Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, 
	"Gustavo A . R . Silva" <gustavoars@kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, Len Brown <lenb@kernel.org>, 
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gtpsQ8e6;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Fri, Nov 13, 2020 at 1:01 PM Moore, Robert <robert.moore@intel.com> wrote:
>
> I can do it this way:
>
> In the global header actypes.h:
>
> #ifndef ACPI_FALLTHROUGH
> #define ACPI_FALLTHROUGH
> #endif
>
> In the gcc-specific header (acgcc.h):
>
> #define ACPI_FALLTHROUGH        __attribute__((__fallthrough__))
>
> This would not be #defined in the MSVC-specific header (acmsvc.h) -- thus using the default (null) in actypes.h (The per-environment headers are always included first).
>
> (We do all macros in upper case, prefixed with "ACPI_")
>
> If you can update your patch to use ACPI_FALLTHROUGH, I can do the rest (above).

Sure, I can do that.  I'd need to wrap it in a little more logic for
__has_attribute to support old GCC versions, but that should be
doable.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn4-CYtszj324JoOL6GBtUAeieTocc3cQyVUJJvd9AG6w%40mail.gmail.com.
