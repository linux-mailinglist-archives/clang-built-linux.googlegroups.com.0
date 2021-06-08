Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIPZ72CQMGQEILMZRNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2783A010B
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 20:53:21 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id a25-20020a7bc1d90000b029019dd2ac7025sf1125166wmj.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 11:53:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623178401; cv=pass;
        d=google.com; s=arc-20160816;
        b=VTGVMjmS2VMqwEXbcbfEHpAo4Z8034UFfBvvYlNJhPAgMfMcplH4frjHU5DU4ambIW
         jEf3arXztvMbjPvkT/7AW+GLoegBeGtpHxQRRT9q5ZDbMOZGnbWR0Qggch9RZG2G2p0C
         8k+nQ0MRJpyZW5uAW+hK2ksyPqP97j84S/uMiteRplvio19zVBdnb3NyIk8baP0zT0Ez
         ZA9qkdTGLLM9qqiiyoUyKTZ/rz4amzrJUCA7WSaicKJRP71f5BUJ0SeeiM7ZHVyV1PSg
         QlqtVb8e/ACv9+7GtXtBnT7K39iAiYsxV9r70r0bappetQHvCPjEkmbUQF5rpCN5deon
         cAHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=39LAyzaxb8l9KbsgyN/yLZlelkXCMCrn504gMsg6zYY=;
        b=HQZGjYkzN+GjMBCZxuN/RhmA6LDdHiyVgaR9sc7JqGXaO1YjxgFje4O1xorp2+bF8R
         GQ8nocLI13Bb0kT5EVeJdXh5RYUOOVDEAkZ9voYnnLZInookcHeFGWtDvzIupNMF1I47
         zml3YKhD1FxTKhDCVg2UMiPtVrsBhFke/MF2mnuTjpTbT9iuqHEjMVO+ORulXsCF8/xw
         n3K9+Pzu/qsrXHemdxnEepMbiCKjB8l8kWtWc7mVLjkaC7Rf7UU3CL+c9OfHCywEL5fG
         ZKbZEF7bL1YjAWG21tVIacTJFqK0UNysbapE5Amfiz04m3/rHCYYxHpdQeekOu9WBSTA
         15vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CbTtmukj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=39LAyzaxb8l9KbsgyN/yLZlelkXCMCrn504gMsg6zYY=;
        b=RwkYqn7QNoOCbmYznrdZMMwMenWA/MENiAW2vDuUhc+hEwmVbZspXF6fSYFmJqCwBK
         rCALjeQWfcKb+vv0ukJx8YFRJ39DPO59sVKSQEjaS3P540Zoe7E/7bQfc60TEFkWeAvP
         nNG6XNO2lwdqT05+4zO2EbXL8npdfzFE6synR47sXnwWg1HNbafOFvlfqFWOuqj1/daU
         hrkW1vKRA0Cf34AAksMG7kvm2UOO64McQ4zYylUnbBuxxwTVJ2/29ejQLn+sFbWZFgJU
         yM0qSwiknoXcyaXfxIDaQTIV7dLMoFOxF3cUBz0WceWQ5rp1Ak/Cx/zzaj6lsp9nAb9S
         yLiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=39LAyzaxb8l9KbsgyN/yLZlelkXCMCrn504gMsg6zYY=;
        b=Ltilvxp0cW9jMMtTrfvqLCUqhqUs0RobhD0VXz14IK3Y0ToFk6jbSEABwpCoKedohJ
         tOkJnHXCRcxB6/Nc6ym0SUdrIItJoxV8y/CAis6pbR/JzPTlDM6wqiZyC1NC/v/9cN3K
         gKVUyC8/bmMUcjXODav4ipwCk9lxNFpp9ywaqn4RYUV+eLbWUqVOjzbSeqnkqVX0k/hr
         QegJfqJQabKwfbKpuRILGPERNQxXI8bvHnaaDkLh0ZhgPWnY/MNWWwdGsAD7cyzQETdY
         +dvapKCoEvTqqovazwN40jhuti8lwL4k3QIQ+NArWxyHfnf/nKL0ML7nDGeAey9YCzLH
         l1eg==
X-Gm-Message-State: AOAM531SMGt/FfQ1odtzKI/lZSMHVr/uzJNOZ4tU05DbNzHFkkmQemF6
	0u4l/LUZj5TtosF1JeMPFjs=
X-Google-Smtp-Source: ABdhPJx6Nc+S2JbKZgmLK8JSUYKQAZ2/WCfDvzL6VTHf4Br3XBRxmIaZ4LkHtXP6BdNZbT+jwnkPlg==
X-Received: by 2002:a05:600c:3789:: with SMTP id o9mr5937950wmr.78.1623178401482;
        Tue, 08 Jun 2021 11:53:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:358e:: with SMTP id p14ls2021373wmq.0.canary-gmail;
 Tue, 08 Jun 2021 11:53:20 -0700 (PDT)
X-Received: by 2002:a1c:e907:: with SMTP id q7mr5927003wmc.1.1623178400687;
        Tue, 08 Jun 2021 11:53:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623178400; cv=none;
        d=google.com; s=arc-20160816;
        b=nIviJhGDiHrDTJuATAEtKR6pINybyWg5Toa4XyG62Wn0Qwa9SN/q8sGX4TJHocQSDa
         SgITolTgMxREkDePHspa/V/4MUOpnJkW3Ae0Gz7viT4wnQf/dgfmtRELQqWuGe1i++96
         etEXvWaV3mQnyAUttxDfuDRhW4cn8yNhrapOkRERba8X/sMQ3taW9cNbDpcdiQbXZCCJ
         GQ7zF96gtN/MwL8y7z1dR2ek470gJmsjuQH0unodeFn+gDUJTajPgXAEBBRMstLozNsv
         Y6ZlzlYzMrtlraN8WcYv6ar5mZdWWsblETARos8w2lpgRHXrZJnN3lEccUXBt5jq3JhT
         TTnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XH/3SBzhXEZinQRmZMjAfIGu0JUbJo2MQXLpr1qwFmk=;
        b=oH2s4B9NnsUAakqCoe+063T1hWFGepUeFxeqBOIyrdhk1d1bY3P9G+Kiowebzi4FKM
         WiysZPYK4Tmn9vX7RgP7Dw5MvuwhITDiQw2UoOCdsK51N+0sMPB0iz90Jn2Z9rJgAHzm
         tTgApGmUI0RuvFmfnttlhhTF7dCf5M1fmTmIUq6AyKjh9qESuOvsJPEBQ+nWTm1yeTOt
         cOA/Xz5qVDDs/XJzCH2iwpidCDJ+pk9jbzoAJUdU4eVkXAkLAw/mgqlARuhVdqrzg8yg
         /huGcXzR/lni93dacw9z22KaBK6bpobBHEyjOoOYwQ/ZU0XCQmPKmSyjNfkKdnHbuQC/
         8Fwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CbTtmukj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id z70si19752wmc.0.2021.06.08.11.53.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jun 2021 11:53:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id t7so26646091lff.0
        for <clang-built-linux@googlegroups.com>; Tue, 08 Jun 2021 11:53:20 -0700 (PDT)
X-Received: by 2002:ac2:5cd6:: with SMTP id f22mr17251433lfq.73.1623178399858;
 Tue, 08 Jun 2021 11:53:19 -0700 (PDT)
MIME-Version: 1.0
References: <1623145562-111662-1-git-send-email-yang.lee@linux.alibaba.com>
 <CAKwvOdmyXV09ZxcDqQ6x43f+Eze4h40W2AoKcCmUhGM2gUWsnQ@mail.gmail.com> <6335deba-9e94-61e0-89a1-8905be0e35a1@kernel.org>
In-Reply-To: <6335deba-9e94-61e0-89a1-8905be0e35a1@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 8 Jun 2021 11:53:09 -0700
Message-ID: <CAKwvOdmOOvOBzZ+fNaOxMSDVonkTETmowtD5-4FTFGniNjbObQ@mail.gmail.com>
Subject: Re: [PATCH] thermal: devfreq_cooling: Fix kernel-doc
To: Nathan Chancellor <nathan@kernel.org>
Cc: Yang Li <yang.lee@linux.alibaba.com>, Zhang Rui <rui.zhang@intel.com>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, amitk@kernel.org, linux-pm@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CbTtmukj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131
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

On Tue, Jun 8, 2021 at 11:49 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 6/8/2021 11:39 AM, Nick Desaulniers wrote:
> > On Tue, Jun 8, 2021 at 2:46 AM Yang Li <yang.lee@linux.alibaba.com> wrote:
> >>
> >> Fix function name in devfreq_cooling.c kernel-doc comment
> >> to remove a warning found by clang(make W=1 LLVM=1).

Ah, good find. In that case I'd be happy to sign off on a V2 that
replaced s/clang(make W=1 LLVM=1)/kernel-doc/.

> >>
> >> drivers/thermal/devfreq_cooling.c:479: warning: expecting prototype for
> >> devfreq_cooling_em_register_power(). Prototype was for
> >> devfreq_cooling_em_register() instead.
> >>
> >> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> >> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> >
> > That compiler warning doesn't come from kernel-doc.  Your diff looks
> > good (the comment was wrong), but the commit message is curious.
>
> No, this is indeed kernel-doc complaining. Clang should not even be
> mentioned in the commit message:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/scripts/kernel-doc?h=v5.13-rc5#n1228
>
> The warning could probably be improved to say "definition" instead of
> "prototype" in certain cases but *shrugs*.
>
> This warning is similar to -Wmissing-prototypes from clang but refers to
> the fact that the comment claims it is documenting one function but it
> is really documenting another.
>
> Cheers,
> Nathan
>
> > Usually that warning is from when the function prototype does not
> > exist for a function with extern linkage.  It looks like that's always
> > provided though in include/linux/devfreq_cooling.h.  Can you share a
> > link to the original report?
> >
> >> ---
> >>   drivers/thermal/devfreq_cooling.c | 2 +-
> >>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/thermal/devfreq_cooling.c b/drivers/thermal/devfreq_cooling.c
> >> index 3a788ac..5a86cff 100644
> >> --- a/drivers/thermal/devfreq_cooling.c
> >> +++ b/drivers/thermal/devfreq_cooling.c
> >> @@ -458,7 +458,7 @@ struct thermal_cooling_device *devfreq_cooling_register(struct devfreq *df)
> >>   EXPORT_SYMBOL_GPL(devfreq_cooling_register);
> >>
> >>   /**
> >> - * devfreq_cooling_em_register_power() - Register devfreq cooling device with
> >> + * devfreq_cooling_em_register() - Register devfreq cooling device with
> >>    *             power information and automatically register Energy Model (EM)
> >>    * @df:                Pointer to devfreq device.
> >>    * @dfc_power: Pointer to devfreq_cooling_power.
> >> --
> >> 1.8.3.1
> >>
> >
> >



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmOOvOBzZ%2BfNaOxMSDVonkTETmowtD5-4FTFGniNjbObQ%40mail.gmail.com.
