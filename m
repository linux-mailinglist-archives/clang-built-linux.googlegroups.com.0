Return-Path: <clang-built-linux+bncBDRZHGH43YJRBVUAXH6QKGQESSRIIIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EDA2B1704
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 09:14:15 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id w16sf5545496ply.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 00:14:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605255254; cv=pass;
        d=google.com; s=arc-20160816;
        b=bDn33LPhmoTRApO7hodF/eX5fJGlGz2QVPRDrhYn7//bWtLKG4mES24Gs9eo/1Gx78
         qcgxBu5PBeQlgxGGywKI/51wJ3LxH9TKtUn8EsgAakLJLFzRlDH1SRagTvYBJeLQIzwf
         UE8+p4aW9eMCTT05X8C+8MYOwBFPH8kuExJ3jWZt1EuKTq/80ga3lxQyRN3FRZEv9J6V
         eTeZzlftLQW2HM6fGY1dKHR1o2BxrP4dBPEzTSn8ReqejiH9FGFFFfKH9knA/ogIH/YO
         5Aglh/CPBqELJIUjrWM3DwGKxzcfiHmNLaN9LCs4FLawFAruvh+3EVFhEASUQA+2BcbQ
         DcgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=w0c7BUntpUTimxnJlVjtp4y1mCO5V34S0Yl1NF7Rsic=;
        b=AydC4+fa9lY2u2ToC4GcX0oPIvHECErSJP42Hw1fb4OfPBAm1OP0VtXRetBVPAF1To
         YEuIdTNirLMBY4dq0TcXlwC/cV0oW1h3kvQYVO52+ITKctWNzfwCimb0T4It/Ih6QkFP
         /YxUcJEbM4Yh+XyBzX7gPT8hJ5YFsEOUz2Ew40EYa8oWe11rO5QEyozMUOucB8FNvT90
         ES0bvmgybzNrv11iaXn1JEFbDuYo/SFX6J+pTRmCzFx9zzTvqRiEM1vGOPo0M0/1oZzD
         xQBRoFBdOTIGuUI03uJipoYDq02VmE2OcC8RUeuodkqEBigMQlJiXUn8uaYNwXRHLBsf
         Acbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c8RAUBDE;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w0c7BUntpUTimxnJlVjtp4y1mCO5V34S0Yl1NF7Rsic=;
        b=QYNm+WBeAlUsJX9+iTVE7RuPo80R/lZIUh+cJuItVQT44BxE1rqjikZkKLJKMh8dWz
         aQDau98bxp8/X2E2J2Hfm9gbu4dp6G4OUL3Racm7NPZaGPkhhSmI8IM9xHJp6IxHXVoE
         zRhNADCGTaC/LLXwjiZHX/OZelWX+7U5rq1ZqvIMLYKkvkG//qZexapaHQMOx+Dpf5WH
         /k+or1l9kBfqI1OQSe8ymPG//LmVOVjT73mwKJxkjDjva329cR9Gx4M1Lr8T+RjNAD6m
         i0KHM6JOZjlbOM9TsQf2buR7LvbXdpp3qReTzogynvSMe2tURW5vNqyxH0MUeI/3aAad
         h9Aw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w0c7BUntpUTimxnJlVjtp4y1mCO5V34S0Yl1NF7Rsic=;
        b=K+kh4wWwPYJWHO6GijnfaxQSguvzUQ/ngyyhOcbvEQ7+jVA3tZ71a0uUHdBJY1afZX
         WA+lbClBfXbmEavk4Tv/1BYmXjTaRUcpTAh7osvxwPubjLwa1mTUtAklh325PNWA22M+
         ETj4z4vr4JYFo/0vZeQnyyLAQXYItuMxDKtv7Q9SmP06xZwVCIt7P+wdripGC01/ugOF
         WJH60dZ9oQGR2+vsxmkHciTWj2gF52wkQofWVnMtF2MvHqraIyF7Rb63dXyIuLZF0m8m
         iv8ryX06N183/pUIRM+JvOwtOjkHYrrbEk5byujrOrS5YXfefYc1ozW5+NZcLdxzPDv8
         vVvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w0c7BUntpUTimxnJlVjtp4y1mCO5V34S0Yl1NF7Rsic=;
        b=VvdmJD8NEgTS68zB0SOVAmpV7XNDSnJZGnMGgHqLNXexDz4zTzjSWo/RiQBj2VK/Zs
         o+NKFccJmkKqQpX+itRKOPM5ZdMeHsNAR3GGF8vNWI8E8z30yHl+/2IzbTvWD+EfzvVQ
         9t5d7sVNICsdDmyaH00eriD5TcXDiSP5JUYm8zfZeRyFrKx21R8tjm6la+i/wQ4oLVLc
         6QDHQHmxyPQ2RUT1xv0Zj0J8Rkom/d6lB46RS3d4bAlUMmKY34QfVMsa4CK7+DjMnjD4
         gL3wDscZTdId44ymE3uvxYOBldQy9v9/Tf81LD34XAb1hQhKdaU7N5gOojJVIBgYEiIM
         Zu2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qr08tNVMv05u96byTImf269KwP+xlY4fPEHQQ9ne9bzr3KLiL
	2c6lhDjUtSXtvWEeGJb+lUc=
X-Google-Smtp-Source: ABdhPJz2gce1wG1AyiAnSbsYVFjbPQpT8rYsabJO+8O70QbEFGutNapcTEetjp8aVsKDTHjGmSPeRg==
X-Received: by 2002:a17:90a:1696:: with SMTP id o22mr1625680pja.44.1605255254177;
        Fri, 13 Nov 2020 00:14:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bd46:: with SMTP id b6ls2756926plx.10.gmail; Fri, 13
 Nov 2020 00:14:13 -0800 (PST)
X-Received: by 2002:a17:90b:316:: with SMTP id ay22mr1724908pjb.8.1605255253598;
        Fri, 13 Nov 2020 00:14:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605255253; cv=none;
        d=google.com; s=arc-20160816;
        b=wls6Ukjx3cvQc3B2IU4+CL5RKvajsymJX+EcZ0TpxuSwQX89qrA/A3Td687sAS9m3v
         ZvWMd0kUKy5SQWakB2sf1MBuqmf0ImXPTZbGwPuJNNNvUOd+K+EL+q5bWsfVEPdlNMCJ
         IvJ57TY5Njj0RhLKbvqUDcPihUiIdrUg30s1SlKURue/9RsFgRwjNBqPFqM8ShtYgb8s
         taoH61UguGkhT7eGzbeU/sTZtpyqYrhrGmLazS9SEvNXKcCl2Hw9cR+5B/xdV0zK6edY
         k9n1IS0GVpv7BCjXfZgoWUScrSfCWknGxx8/oAjT6ZqX2x9HP90pMNSzUlE8M1uecSX5
         mZDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IGuhm4DDjXM82cBc9tqmhMIUTIMqD4s7kPGRRYpiNzs=;
        b=nkZCxESqpYzKT7GPFV7VSUGmXoiL8NPkZU9Q50aoWfmtxm9Tl8i9ydbBf+OFexm4IJ
         gm+uxMJcJjSJcVjjqFakH49YDuPhE1xZr5axhX98GICkfvbdwqGk2F48niAk3oCwp+I+
         g0Ycvhc8+E2JTd+gswc2sXDp9Bf9+KZ9pyXx7PpKNB/MIW/u6SV+QVWJT2tdhmUrc32a
         Cw+OWwBxEx2wspZtsz1aleSgo874XSs53V8PuqugsQFSHEpJePqR8VeetU8KSb2GGFX1
         wd2qCnkeO99UFwzgRJDb+k1y1uSpzYt3oCHLOLlulzgM6hiC0lythav06fzcTgQ8LTcc
         N57g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c8RAUBDE;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com. [2607:f8b0:4864:20::b41])
        by gmr-mx.google.com with ESMTPS id t126si515722pgc.0.2020.11.13.00.14.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 00:14:13 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) client-ip=2607:f8b0:4864:20::b41;
Received: by mail-yb1-xb41.google.com with SMTP id v92so7956392ybi.4
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 00:14:13 -0800 (PST)
X-Received: by 2002:a25:338b:: with SMTP id z133mr1271346ybz.33.1605255252936;
 Fri, 13 Nov 2020 00:14:12 -0800 (PST)
MIME-Version: 1.0
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <BYAPR11MB3256E0C1DCB4F01D18DF709F87E80@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdk2U5+DcXYyMoBAhyaa67EukhB6QMEUbRPcOF7P3Sz21w@mail.gmail.com>
 <BYAPR11MB3256C9711620932685C368F887E70@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdnu07S8ZtGVe0eVFP=6hLSRa58EtDYOJUK_zGWFaqUboA@mail.gmail.com>
 <BYAPR11MB3256BEF30840D4AB440A359C87E70@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdnYpmf=ydFVWSqVkWeUpn+M2v9PfdQd71T3oqQ9_1WQaQ@mail.gmail.com>
In-Reply-To: <CAKwvOdnYpmf=ydFVWSqVkWeUpn+M2v9PfdQd71T3oqQ9_1WQaQ@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 13 Nov 2020 09:14:01 +0100
Message-ID: <CANiq72k13K_zA5aH5hameoe4TSf2o5cA294bA4UEZG0M6S3DXQ@mail.gmail.com>
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Moore, Robert" <robert.moore@intel.com>, "Kaneda, Erik" <erik.kaneda@intel.com>, 
	"Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, 
	"Gustavo A . R . Silva" <gustavoars@kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, Len Brown <lenb@kernel.org>, 
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=c8RAUBDE;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Nov 13, 2020 at 1:09 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Thank you for the explicit diagnostics observed.  Something fishy is
> going on though, https://godbolt.org/z/Gbxbxa is how I expect MSVC to
> handle include/linux/compiler_attributes.h.
>
> The C preprocessor should make it such that MSVC never sees
> `__attribute__` or `__fallthrough__`; that it does begs the question.
> That would seem to imply that `#if __has_attribute(__fallthrough__)`
> somehow evaluates to true on MSVC, but my godbolt link shows it does
> not.
>
> Could the upstream ACPICA project be #define'ing something that could
> be altering this? (Or not #define'ing something?)
>
> Worst case, we could do as Joe Perches suggested and disable
> -Wfallthrough for drivers/acpi/acpica/.

I agree, something is fishy. MSVC has several flags for conformance
and extensions support, including two full C preprocessors in newer
versions; which means we might be missing something, but I don't see
how the code in compiler_attributes.h could be confusing MSVC even in
older non-conforming versions.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72k13K_zA5aH5hameoe4TSf2o5cA294bA4UEZG0M6S3DXQ%40mail.gmail.com.
