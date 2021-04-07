Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUW5W6BQMGQETRNMJIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BDC357359
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 19:41:38 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id h19sf2277697ejk.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 10:41:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617817298; cv=pass;
        d=google.com; s=arc-20160816;
        b=RMIoafXu220UeUwwfWwuffvW3FnObzD45o1V/m62N3qvZnQDanHUW593kzZ/+7+zly
         lia9t/BDANORjyR+6cQKIaR2unUkUkZ440ieTFvOIWRisTysk7FVWuu/E4wUC3gCkgNi
         NcZvzE1Z4QfCyMghHKm/QPiBHNZszxkQ+iihBUzjJZFQRGh3hyT5xtbWVORwqEJlQWpS
         yoendwCJ0/BMyrKRcOqvKDrY+7zVCeKAAqXppoJ6V4a3ynY+YTBFHpA8JB1Dch1sFvBf
         tYKQFKBasd9wYAE/73phuooLPno9pQRuPVKnC+GD2uP0oCDF9sy5iLoY/q0vQ+e178Nr
         oetw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=XBy4DgGxCX2DVGxCqGba4AX4qR7SqD91N2IgBolicLM=;
        b=lM9A1bCI/RrVivK89rZwqpmK1hKqqc4tnD/3g85TaShDTuf80NfX1Cu3R3VvxuNrbL
         NzI8XrY4EfSHMVMTe9KHLWOTsYVQ+jzY5qwePV6EDJLhYDjVJ0WKbc7hsJzRS2YSVWu1
         bqejSj8xl1ez3/sBePsjXBDGGC+cO//KV4rco7J3zYh65AE+6MhJJemxmuSRxfu9LdV2
         XuLi2PcNI4T9QmokX1a9LZZEHzrnD/cAjmvkRheD5e/mcsZ3ClsCVRyz5dJn1RGBLT9p
         eJyLpaCNY3CYGVnChVNSQdxRnjxhH01SE4aZ9RsioUuZQ+5gKycjQWfN11sISn9wu26p
         q4TA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=npDspJwO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XBy4DgGxCX2DVGxCqGba4AX4qR7SqD91N2IgBolicLM=;
        b=iX3+Jj325dFztj0UDspz1YT2M4Bi3dHKpew79EtyHu+N+3x1fkyK/6b/pQnXun4ogl
         +FqWahBec3VTdVufAH5Avbj5qQcqDsfZd+HEwy9csLFfnug9bhkrXtLBy1S9EJjbvBDZ
         n0+ztkZRWVlo939YG/QoIBH7K98zPQY4DQ9tHwn3EojD8uAEXzvL8Nn37S68UVPtY2dm
         gsCzawGGI4nJsMUp9ZuNJ2ff5I9YFfzv7MZiERbldiX0T2+zO9PJ/0iRgBtneL2wZp8L
         SUPcMkeFkgigPuXh5NLnIX1gP4eHfORwK+73SoIixwVbs7wCi+i92iKwMiSM160UPXhE
         mkug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XBy4DgGxCX2DVGxCqGba4AX4qR7SqD91N2IgBolicLM=;
        b=TxgHwWW7/zdnLcs/MPEmX/TbvDbhxF9M+VbddlDpI7e5h2V7V8WKrsC0gqPm3KiNNk
         HjwvVYL1A5NCo+ISO1+MFG17lbnvyl8ru6HPUZzC+9HhYaNwu1k4WDvlTNp3PeAUhda1
         ZGfONqzPtuEbYkB17T6ahgpRPenRJ4UpO56lT43PcyJ3msoMy6eKLfKrkU9iOXUHOb7V
         B2Y1oM65nvD4/Uble6zNiWJjrkBTEJBdLkcoLDSVjtwAKHnGP1jaBQhctZuNNxFGtdUe
         yhVL73ffFo5UbCmiS0vV1xkCGvGNBWtxs73sgkIkC3HxLn/OXKu6fUjx2MyULMcZixNU
         6Aow==
X-Gm-Message-State: AOAM530I00DRffPUw4NyJHZVVCT6XcQI2YNa9HlGSVQhfurTobjfcD1f
	/O5HZUSIkiqCL2OAeNToYrw=
X-Google-Smtp-Source: ABdhPJzcKSsYgV/T0VVsrocc1hhoXyS4y032S3duID3XIMDmcO0AU3awgPqxVtd58rm22WFDz0JASw==
X-Received: by 2002:a50:85cd:: with SMTP id q13mr6007555edh.114.1617817298611;
        Wed, 07 Apr 2021 10:41:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:86c9:: with SMTP id j9ls1138499ejy.10.gmail; Wed, 07
 Apr 2021 10:41:37 -0700 (PDT)
X-Received: by 2002:a17:906:af09:: with SMTP id lx9mr5234966ejb.58.1617817297666;
        Wed, 07 Apr 2021 10:41:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617817297; cv=none;
        d=google.com; s=arc-20160816;
        b=CgDlR63dW+K8xrUZK5opB6UgQWJqDBtK61id8mQaPGApf7k/YyxMhtoU+NtZRKQrdm
         /2IGBtpLk/32jzhkXWFQuWBHzFDohXgKtZEd0903SP9MYj/5wMJ5MgmUA6lT7QiELIXd
         Q83HoD7OxJ+Jp//PuGpBVCVtgtu07qbsQJmf1GBfjfzPsNYFyNMlByQnZ7YfvyjhZh6A
         o3G3FmPEnR0a9L4wb+IkS7nFizh9JDLxfl83fL40Y8jHx8ozFDxUgYhfm5qAIKrRjB0b
         UX9/bNhKc4DAuOV83safCWekMOjEaMDYmEGKEEnv/cH+fEbHT0ApXiaOlpjdcxofjcJN
         weYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7+euRwjWu1ptFFLYu9J3PaklSiZs0mpcK4M0WlO9vvE=;
        b=E7473Y/NVXkV+dh0vlr596rbThXULy43WbX+tVN+q2XR3ElYaJvwvKobPfP6y8wdlh
         WHHQ1GOSHMpHC690GFPhvW79Hbp5YL3BtwW1QOYfisz7SV4rAK67ivMVqcqOymaC5hQi
         TVDZvrTcQLuCGzdPMznanWTeriaL1EqHwswyEUH2XtRrjwe08y6WkAnSzAwhVgXvh8Tr
         EtcnCBWL0SS/XTaGxwnSWaE6jj26ZjHWwGxFIbTV6tfYLcQEld7/UtCqUzqy9xSuz5cZ
         J7JvIUrRxuWRw9dPoG5EaZ1VGlAHgFSRFIv+EA04Gvrh7tnaG/h230k/B6O8P5kvsk4c
         fChA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=npDspJwO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id r21si2376969ejo.0.2021.04.07.10.41.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 10:41:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id r20so21723358ljk.4
        for <clang-built-linux@googlegroups.com>; Wed, 07 Apr 2021 10:41:37 -0700 (PDT)
X-Received: by 2002:a2e:3603:: with SMTP id d3mr2801174lja.495.1617817297133;
 Wed, 07 Apr 2021 10:41:37 -0700 (PDT)
MIME-Version: 1.0
References: <1617177624-24670-1-git-send-email-yang.lee@linux.alibaba.com> <20210407120239.GD25319@zn.tnic>
In-Reply-To: <20210407120239.GD25319@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 7 Apr 2021 10:41:26 -0700
Message-ID: <CAKwvOdnuKazNhqXAM9Qj7DgCW=PqVHkyyfYWytmkyBzv0QeYsw@mail.gmail.com>
Subject: Re: [PATCH] x86/kernel: remove unneeded dead-store initialization
To: Borislav Petkov <bp@alien8.de>
Cc: Yang Li <yang.lee@linux.alibaba.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Nathan Chancellor <nathan@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=npDspJwO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230
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

On Wed, Apr 7, 2021 at 5:02 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Wed, Mar 31, 2021 at 04:00:24PM +0800, Yang Li wrote:
> > make clang-analyzer on x86_64 defconfig caught my attention with:
>
> I can't trigger this here using:
>
> make CC=clang-11 -j16 clang-analyzer
>
> I get all kinds of missing python scripts:

<snip>

> FileNotFoundError: [Errno 2] No such file or directory: 'clang-tidy'

You do have clang-tidy installed right? `which clang-tidy`?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnuKazNhqXAM9Qj7DgCW%3DPqVHkyyfYWytmkyBzv0QeYsw%40mail.gmail.com.
