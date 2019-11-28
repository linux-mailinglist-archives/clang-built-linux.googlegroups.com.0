Return-Path: <clang-built-linux+bncBCR5PSMFZYORBJFI7XXAKGQEGYXDGTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3839110C34E
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Nov 2019 05:59:18 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id f21sf15478127pfa.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Nov 2019 20:59:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574917156; cv=pass;
        d=google.com; s=arc-20160816;
        b=w16lHMiuf2uDBlVfYVeP9THt8hU1tQw5OGhokTc9AU6dggfcQoF9uUbpqXUxPe+z2G
         3O4zjLc0kN56k9TGYhlpmmLmjO8uD5p9qhWjskkX3cf4TvwBH1oHjOnGFmM8t+duEUBl
         oEjG0CL20yk++xOoWUB8ucRHR6Ri1Q8tK/6vva48S6qM3MaOEcHoTYmPtF+VEY4ld6l1
         bsE1WVLtSkmzF+HKYZ5d17NaI2kwFqInPthSX30nHzi0sQsl7j9/+OQENzX3vnztuiAr
         wlmnb7mmogsRUiDxCjd0ZR38QNt/kCDdnTfNSeNzPrETSitRBKuPf3D71p34cSmFO77o
         IiuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=ysfFoY3Sncko9e1nBv0o+DG4a+9dtifxEtOKPOLZRR8=;
        b=gTNCLmMaUoLnOohf46Wb1TegV0VNhs6gssNZG2Y8tRXn3FnZBe77XJFI8wlHnLaC31
         5NDq53AIHhtFup3KWVUYtczG5oMwJVKE9CieeVUAVUW4G32wHNhYnuvwCcKbosRhvfjt
         Oz+VJu5RgDl10SJt9iqTUdfJvT3vwktmC213dA6rY6T6vfbrrAxciXSiqaYbtHFhvypc
         LsdRYK+9D2thrdwPqWPtGF5d5z2O5nQLJ9AvE0zG+uLAMNKSZZozAi7pX5z9R5o19rHg
         lk6CQw4oSSvVJfN+/qA4sckyQBheIM29c5QBadXvWW6U0NYh7orTDhXriuqcgDV1p9qR
         kVTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b="Ssvgjrk/";
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ysfFoY3Sncko9e1nBv0o+DG4a+9dtifxEtOKPOLZRR8=;
        b=sLoF0urkGz1dazjWP87tMOH5/eV6AuK8rLM9LLD+gFektDE6OpjN6fQgy8EVqbpKaz
         iACXFu8PyvY5P8OwRDFIeevI+P40NKorpOC73rdnnAl843Yv8e9rchrCqDGAKqRzff59
         6ViignZ9bJbk2YMtvNiUKTRtbEdIBQsrTl1d6rthF6tUGozyD4GhK8ObKNYaYD51Ij8G
         RA+ChodgI/VabVyTkGciT1vRjvTvNp5JCLjeHLd8lY6us64WEA9422WVvUWKUniiQ2Ck
         UgQmGW0g6stGk3zQgw2eLk5OoyO0oXPTaUJP7GV6yaTg3K3QZv6vBwGHnN8akFvYDK4j
         Z2/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ysfFoY3Sncko9e1nBv0o+DG4a+9dtifxEtOKPOLZRR8=;
        b=b/D8H04OoJ2JFwA3h5vUrZdost9pEG8C/84fas2YFQyjjDr1y9mXmyKyMnktyWrNTi
         2Hu/vM1K3gNa6lsSMD7YL+llKzG57yXv+NbtZsHUJ6EsNGwqYwA/CNzxsbprjK/LelzW
         ReazKkcqUSPl7u7Jp71cTQOAQSnP+2AF6BUYg7u6RMKLQ7yJ12Ew7J9AI3LuxZfMxRzu
         ybm3dHmx1RMtKsAyKhQZcKJzl2owWVNLlJqtH4zElubDvQJbKyLLvEzw+Z4sBb4mV0TH
         nPsglnkV961xQOibAPgtIlL+j89GZ4j/EXfVaSBscZUjvrssjPLIrvtNAP8gIvDDe4m0
         f33A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVoek0vJoILSUFxeGy1fSVt4IPfCsUjwVh2vrE3B6tjlKfd2mnP
	Wp4ndi7SvSLIA63eT5luNvE=
X-Google-Smtp-Source: APXvYqyqMv4wKa4o8m7GwBRfdoEi9BbKnqyWXiG/sWfgTRnx76OH2TDabkyzq5zHVPPmyEUw4ml4Zg==
X-Received: by 2002:a65:450a:: with SMTP id n10mr9514513pgq.262.1574917156549;
        Wed, 27 Nov 2019 20:59:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6c87:: with SMTP id h129ls6144420pgc.3.gmail; Wed, 27
 Nov 2019 20:59:16 -0800 (PST)
X-Received: by 2002:a62:5585:: with SMTP id j127mr51199273pfb.236.1574917156153;
        Wed, 27 Nov 2019 20:59:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574917156; cv=none;
        d=google.com; s=arc-20160816;
        b=X/YkGm5ydjAj60jALWGqOgCR/VyqhEuZKbhWjITandP7e2qw5wih1grpsJGM14TkFW
         wB4yS280S3+JqSg5CnGIHMqSsM99zld/32ln9m4r73r6L2WFu9HCJTVsYysBvzghDx5O
         e1sJKHpTrDUOydtaxw2i1b5g/fpl6zDVOcxCDLW1mamgfGmPuK+G8qxa3njMK4d4Rfqq
         wwCnmIKwZKZdPfIgaPTRfygbXcRu5RVRKzA/eQeSmcGrAYaVaW/s+lyRkfVqnX1e34hk
         ViK2Gwd98KIRlW6dCzMMlr6F2CI3hEb4vj1ksFAN8n7KXd3hKD5UwMKaPMdjxlKZchRc
         OJBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=yljyNg7p3b80TBctztn1t0DnYqDVSJ9zFpzgi9t+n0M=;
        b=c6dTL13IxoEWmINKO9SQl++katpGYQOc/lbo0gG2XYYHklkvXPWbvEIrpGEu/fYIki
         +GxuXbYd+P4ejD+5qQwYYVD1R/iMSpaNYEpfe7ZJGnBV4mxkzmWo9AwfnQ8KCjoGVygC
         UpPcBpYmEq95Y9FU5bgDPf5h6VhLsBIu+jiEQUD2ZRC32kcdT5kmXKbI3HLSVU0GHQtR
         xG16DofVyqOclReKCjikffRfThKerjsFTyh51+JgGl0P8FAxYyvA+4OVHdP0358DmEnJ
         +sxzy99UYpqt8J+cBTXjS6+5q1F+JL4CT3UrnZWLSuotNlRE03ZghKTdx5uMfQwY93oy
         W8Qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b="Ssvgjrk/";
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id o9si438718pfp.0.2019.11.27.20.59.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2019 20:59:15 -0800 (PST)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 47NlmG4J8Vz9sPK;
	Thu, 28 Nov 2019 15:59:10 +1100 (AEDT)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, LKML <linux-kernel@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v5 0/3] LLVM/Clang fixes for a few defconfigs
In-Reply-To: <CAKwvOd=3Ok8A8V30fccK5UzWFZ7zwG_zvGQV44S2BK4o2akbgw@mail.gmail.com>
References: <20191014025101.18567-1-natechancellor@gmail.com> <20191119045712.39633-1-natechancellor@gmail.com> <CAKwvOd=3Ok8A8V30fccK5UzWFZ7zwG_zvGQV44S2BK4o2akbgw@mail.gmail.com>
Date: Thu, 28 Nov 2019 15:59:07 +1100
Message-ID: <87v9r4zjdw.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b="Ssvgjrk/";       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nick Desaulniers <ndesaulniers@google.com> writes:
> Hi Michael,
> Do you have feedback for Nathan? Rebasing these patches is becoming a
> nuisance for our CI, and we would like to keep building PPC w/ Clang.

Sorry just lost in the flood of patches.

Merged now.

cheers

> On Mon, Nov 18, 2019 at 8:57 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
>>
>> Hi all,
>>
>> This series includes a set of fixes for LLVM/Clang when building
>> a few defconfigs (powernv, ppc44x, and pseries are the ones that our
>> CI configuration tests [1]). The first patch fixes pseries_defconfig,
>> which has never worked in mainline. The second and third patches fixes
>> issues with all of these configs due to internal changes to LLVM, which
>> point out issues with the kernel.
>>
>> These have been broken since July/August, it would be nice to get these
>> reviewed and applied. Please let me know what I can do to get these
>> applied soon so we can stop applying them out of tree.
>>
>> [1]: https://github.com/ClangBuiltLinux/continuous-integration
>>
>> Previous versions:
>>
>> v3: https://lore.kernel.org/lkml/20190911182049.77853-1-natechancellor@gmail.com/
>>
>> v4: https://lore.kernel.org/lkml/20191014025101.18567-1-natechancellor@gmail.com/
>>
>> Cheers,
>> Nathan
>>
>>
>
>
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87v9r4zjdw.fsf%40mpe.ellerman.id.au.
