Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZ6B7GCQMGQE6HTZVVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EDA39E63C
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 20:09:43 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id k25-20020aa7d8d90000b0290392b78ab340sf5022983eds.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 11:09:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623089383; cv=pass;
        d=google.com; s=arc-20160816;
        b=YH336M+c2EgB4GbhzPe4iJIUF8wL0Tf4k/sFBK7mU0sllwOAr4FOfm5uSzdKRu/e/b
         B2nPNKO4GWYcv4/SMRNspUMFywpR+XqDHzKKWQnWe+lVRWNMp6a6CB9F4D54mo/6TFMS
         Gh/ygTOUXfOnT/kZJdH3cO2GXbeQrkeNP4SUIFvBLtGxScmjj/iw5ZNmefc9ijYMQ3Ne
         hbdOeGJpoLtkI26/meMpeBMk9SaUWFp6LVuGGCX1OPBQ2aEzYJLt3RDT//xx5vPt/JCW
         8frRZXCXjc3sKPj2Hsju+GysRMyso29YbschX/9KuPGsEqCIeyqDNtq4fBK4vFRk1P8L
         rD5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dViYb2AeROii5dS+uPPUaCKL0iSSOsGVRxb3c9NIysQ=;
        b=Tt6dvS7by0PuMsu07wTyAi3ftr4Cf2DWTqmctJgpkgjpEDtPDWcgA1XZ2PFGW31OOD
         HXuGcdE3CnscmnNNTV/qlDhgNaHp7opCzSZ2wozVB7Wj1YJUYGnyEWK8ImJS8iiO3VHa
         saRXneobKYD7TZCF5Z+vm0s3+yUdizbEU38TBdR3ffy8B/xJArYNqSTNZw1PYsokBFKD
         UFAX7GOpDZ7Dls28Bc/aMl5Yondn/rsMzdSyoeGD//PCSRfz6uBs+iZ4t6oBxy0+WErQ
         P7KEi4m5wZRiZoOga2Tx1h1CAYi3b+Ot9mhtnO8qAMvBn68ncdoM+Xbr0pjcwwRl1DlG
         o6gQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YLS89ijg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dViYb2AeROii5dS+uPPUaCKL0iSSOsGVRxb3c9NIysQ=;
        b=Q7ouc++sEv9Vjt76u5i1CyjYcPy2sNyYkPdgp/NgKZdRnklxhcNk/TV45I9KxKwT7q
         HHHwcJq2Y/mkHrpenmLdyj4vepJuMjMBNKrXjyMvbP0oVVYYGWvaJgSdhXZv9T4dklRr
         QPmY6N+1+1IRDPBYisKcsvh8hdD+vu+XUnMFoR7fDPM+9aX68w/WlBwstmj3p3+Eotin
         nMjtbFpjIhLGiSjAkMgRK72mtSq6GcV0flAEh+mMsfTfWbb0vDbjxCqvOb5CyNE7IDBq
         XBKJ82o4TjhJpakH4qwCLEmQsHUYCq/1oTA02jTQLosuSc8HBzCGsoZF66ts1cxTM7tT
         Mbig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dViYb2AeROii5dS+uPPUaCKL0iSSOsGVRxb3c9NIysQ=;
        b=KP3LgEnHqi6GLogveo18FcSFO0XXEq2zDkvU501ZtUCkGFWmKmyN14ncaQbiDZCZcZ
         w3tuZ/rHxvRVzVtJtMGKK6G1Mosb1k3np2/xbtAOofmEXkul1/R5vkz9/QdWSHxlJRsD
         yXoOxcz7dWX+5IDF4l97efYrUJ2EqWpwyC5i5bHyorKEiZPgTCmj2Km1KZLXh/P2DXmV
         fns73Ge9SiNMQOHxBnAmt7z/A91Ych8/lpSkQ5VSUaJtMqOI6pBCMwem4NMFlJfF08YF
         NUXtPV3REcl7YhbFQ2ermeEJqDeB6x+nNw0uA0k9GD8DQsyTJe6bxw/6bDwQ409km/wp
         LyJA==
X-Gm-Message-State: AOAM530on0zbZAFapSehS7hiAa2/V048z8g73L+TQbXZp6FR6iSMNyUE
	7hcZbz/nyZ2zLicXjg8m9ZU=
X-Google-Smtp-Source: ABdhPJxo2qSOjRsTTgDEEpGAsdhDK1Sm5xJMP/zi+ctITBdaqPX0ROtP79ub3bkquBGTZuWL5beuBQ==
X-Received: by 2002:a17:907:1de6:: with SMTP id og38mr17946642ejc.471.1623089383281;
        Mon, 07 Jun 2021 11:09:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fa91:: with SMTP id w17ls6051879edr.2.gmail; Mon, 07 Jun
 2021 11:09:42 -0700 (PDT)
X-Received: by 2002:a05:6402:2049:: with SMTP id bc9mr21428044edb.298.1623089382392;
        Mon, 07 Jun 2021 11:09:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623089382; cv=none;
        d=google.com; s=arc-20160816;
        b=CZSEglteknmd5tia7EUUuIEkCxXSh0i/l9Az+tXx9oF3ED3JMSzbVJYvWnKHLVCdb3
         asKr7uJB8EUqDwLFmaBkaxYmKEYCZyjCTYkcFCgaOJJbYt+yly3OjDxmYkGB1jxRRHHs
         gDH6qsrixMj8dtla5+Rw4eCVBV8llxAhZYtcOesXSAZRdu+2UuWuPzUVD5dCo09qtTF3
         zGStflFyxRFeIpWfPUJzcFMapMrjRlQCeIRWvtKlPP4cUh72zfWT1vMsdiDMSs7CsWmK
         GrgivTB5/dusq0FveXsyqtIP7xXpdNIQL0YYIg4AMy5Vc+OG0isWpldKhWVUKzOA+K4p
         vZFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QgRGeSTuEVBeq2KNxTAgCCQLzA+mDvKZWPTe/zO5+7A=;
        b=Zc/BKTB7iD93dzIZvptx5XsPBAfLe1s1q0itSFg9aufe2CtLKsT01tkYRMmMrOAZZR
         nZwm/tXrJnXtVfQOhwYF8QuvEp0HITHIbB4y1byrb2DAC2uVH/hWcdO2yKA0pao6vxIe
         ayPxMLioe/jEwUWlrGy2Pj/9muDkIbxQuDVb4rr9twvbfR2ZjITmzKv+ZWaNvhnZSfyS
         qKqWnkodeA7YiGob5/gh7L4kkj38jvbiWx8R+VeG7z9vLlSDb3VjVuJrls++jTvV51ca
         Y4qFtgAI0LI3XDAkkh80pLu/D/tL0ieYQU8KEI9bT/XB71n0/thq+LKZUGXqiqWZvhFQ
         DNYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YLS89ijg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id x10si738484ejy.0.2021.06.07.11.09.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 11:09:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Received: by mail-lj1-x234.google.com with SMTP id n17so6311199ljg.2
        for <clang-built-linux@googlegroups.com>; Mon, 07 Jun 2021 11:09:42 -0700 (PDT)
X-Received: by 2002:a05:651c:b1f:: with SMTP id b31mr16016788ljr.0.1623089381898;
 Mon, 07 Jun 2021 11:09:41 -0700 (PDT)
MIME-Version: 1.0
References: <5a9bf050-0671-3273-cc4f-1b131445c1fe@redhat.com>
 <CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g@mail.gmail.com>
 <d4c587c2-7eca-043f-06b3-7e1cfa125b38@gmail.com> <CAKwvOdkFqFoNUczEiTKY6o2E78bHLkMjeHjtQWKm=Qdg7-v26Q@mail.gmail.com>
 <0e70beb7-49fe-efba-ef41-a35fa996bdcf@redhat.com>
In-Reply-To: <0e70beb7-49fe-efba-ef41-a35fa996bdcf@redhat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 7 Jun 2021 11:09:30 -0700
Message-ID: <CAKwvOdkoCzf2+-Z2K8e22OF9odo21RxXJu3gkGxweSePoBRaVg@mail.gmail.com>
Subject: Re: #KCIDB engagement report
To: Nikolai Kondrashov <Nikolai.Kondrashov@redhat.com>
Cc: Nikolai Kondrashov <spbnick@gmail.com>, kernelci@groups.io, 
	"automated-testing@yoctoproject.org" <automated-testing@yoctoproject.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Vishal Bhoj <vishal.bhoj@linaro.org>, 
	Antonio Terceiro <antonio.terceiro@linaro.org>, Remi Duraffort <remi.duraffort@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YLS89ijg;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234
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

On Mon, Jun 7, 2021 at 4:13 AM Nikolai Kondrashov
<Nikolai.Kondrashov@redhat.com> wrote:
>
> Hi Nick,
>
>  >> We don't have a ready-made UI for this, but I think I can add a Grafana
>  >> panel/dashboard for that rather quickly. What would be most helpful?
>  >
>  > I think so.
>  >
>  > For a given tuple of (tree, branch, configuration), it would be neat
>  > to be able to link to a deterministic URL to quickly check who else
>  > may have built this recently, and what was the result.
>
> I made a stab at it. I added "Repository" and "Branch" dashboards, showing
> revisions for a particular repository and branch respectively. They are
> accessible from the dropdown menu in the top left corner.
>
> Repositories are also linked from the "Home" dashboard, branches - from
> "Repository" dashboard, and both are linked from "Revision" dashboard.
>
> Additionally, "Home", "Repository", "Branch", and "Revision" dashboards now
> allow filtering builds by architecture and configuration name. Please be aware
> that neither are really standardized across submitters yet.
>
> Finally, whoever is reading this, please be aware of the time range selector
> in the top right corner. It affects every dashboard.

Cool.  Some notes from playing around with it:
- might need to de-duplicate
git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git vs
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
- consider sorting list of branches in drop down
- "tuxsuite" seems to get truncated to "..." for me.
- builds over time are useful, but it would be more empowering to know
which of those builds were green vs red.

I'm not sure quite yet how to drill down to see which builds were from
which toolchain, but this looks pretty close to what I had in mind.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkoCzf2%2B-Z2K8e22OF9odo21RxXJu3gkGxweSePoBRaVg%40mail.gmail.com.
