Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBAXXZSBQMGQEXGM4IXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id E269135B681
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Apr 2021 20:10:11 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id k15sf11301552ybh.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Apr 2021 11:10:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618164611; cv=pass;
        d=google.com; s=arc-20160816;
        b=JKkLSASGPWFf1V3BgTLBb9BsvOGvdTc1UctiYkLFffySsrTHozrNqgB9JoT2iBC7tk
         DDbFlv7eTznaNE0DEK3pc2qQHMWCBZTHbpEplmaGFISRgbrGTfJeL20yXQ0ZmvmgDWP3
         OZn3byAz5FXOsmhVQFQ+wtIDDfzu3OKhawlRuZR58zqv4Xv/7y9HPex1iNscLWaNYa5P
         zoTiJaZnKNaOhZpjIcsvr7FJ4j/tayczOnqsL7bUNpjWGXD4yTlsCoyFuZwovx4M8fzK
         0pdAOTd3DBNnmyuou9TtKRBuGsTw8XSQd1ucerM0H+xgG5QNQ2RG9BYf5+BmYW7Vhw41
         tCwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=/m2Or40KtjKnJhC84zDaTvWCslagmvAZPakvE/2BlPU=;
        b=Jj6qIHqxrU70xf4AXRM6/JhNwVKOx4NZWJVEE5yaxVyhL0L0BIYzXBtntGZM32WZ/J
         C6an2GIh67k8z7rsj35oocI7c7/idLx7I1IebURxXch70/BrdRrytK41pQOeKwdIaOiO
         jUtAcEm0+PVB+ZnRRC/AE8JbMADHnId4uVBN6lLcQlMnP1nsPzZ2NPW6y4IDgVnocVJf
         qkFZehmWURJfzimm+Tn3LCyev9teQr0tjHOeCBmmgEdhSsUUlwxkEp7cHBFUqhiXBWd1
         AXXZAclG+7XAcGBpO8RyRiC5m6YDaAdK4/sP98+uyhcVNjA1U+UY4p7FTZgXBXd1dA79
         nqJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j2bdZ8wK;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/m2Or40KtjKnJhC84zDaTvWCslagmvAZPakvE/2BlPU=;
        b=EMe8eN063qFBRGTI8pbTa/N671PP+gY54JIsTukHgjSFlPpH+zImyBgXSXkRFDh2F2
         bEPJ8fehSTyEKa7XfxXMCq9wFuvDbbgdVhGG0d7XuBHT0FCo15z+8wTdPwOsmk9zMaAz
         vptsI/QiZhWeijwHFM4SVz/NpNmF15LbeiWrIUbXCA/vTqdR3lODoiuCSWgO+Hm+zvRW
         RP1q0NR7NH2ok8mp8FRGmqTzEQFcSKKYjoslMgiiyBtzEj68N3PZD5KgFrE69IPndqVY
         zt0B9Zah05dxkIbzUXi5xmur7MBO4po5YLUlg+MAnnoYUnBAw/e/1Wa61qkDgaDVcA3f
         VWDw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/m2Or40KtjKnJhC84zDaTvWCslagmvAZPakvE/2BlPU=;
        b=MZo4a1dCTeTuVVc/KwlWMWi11pYrDCRHGibxkqeDZtHc0LjAysoZkzJOV7xELXLNjj
         nVb8XzYdxHc3srUh46Bw8iT5oYQLVK0rPiGJyXXvD8AiqojUFxbQoWDvxWKvA1CJ1FCk
         qcKYhQ19jPNsgAXssckXGpbcj38PdXfYECPyNGilH9YJK7ztw2nHKjaFkYk0gioCRLCp
         lWoE8q1IVULGDmB6TcGOHuSwOnCCYBwc20DFJVoO5gL86ze7Q6ubLeylZtxeH96iQdLN
         gsAxBGayC3u0wUd+QU2DHaMHLCHI9hCHPNP1lrpE/gX26Y8kcMMZLyhZV8HHzh7I3mfr
         Jwlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/m2Or40KtjKnJhC84zDaTvWCslagmvAZPakvE/2BlPU=;
        b=ou+keeqzXSO6/onhVGY5n+zUIVsnEWyac8dcYJQx6oe1XlE5Ie2MACP0Ubw/pFWA0c
         gVCEYyNc66+WcWHPWAFW6FyXGVLToHI/p3y+liMIBTWDQdtMHWFs93RZcoCaDg/9I20K
         sJXTGZMYN3DpTifa9y4d0EXxAFBN/YQC5Q/Sj1ao1gk+jro9chT/yo9V5d1DO6NxrQG7
         53oUgIsfkg1DLx007v2lHHHm6/DKtI2RbfL2L9F3YDQM0wWpDmt5Rujpi34p9CHHVGhK
         kNHPF2gBCQLPfknL+8LnC18tsgRuh1BDtCM7DQFIIB0oY5GnwsDNzFsT65A7Ow6No91L
         6Ujg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TJYAb5zqTQgHe/ggmnP1xSxRfPFjdjjKdsHqqVw/TrR70IP/5
	ygFA43AsiOQdVW/u4MBVu5M=
X-Google-Smtp-Source: ABdhPJzDadIRibfiqieCmEl2p5yAW5pUEey+LxPNnVNBuJarPueVQGK6A/T/xnBwJilvoVcmQNNM0g==
X-Received: by 2002:a25:e00f:: with SMTP id x15mr14407105ybg.85.1618164611043;
        Sun, 11 Apr 2021 11:10:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:240a:: with SMTP id k10ls988586ybk.10.gmail; Sun, 11 Apr
 2021 11:10:10 -0700 (PDT)
X-Received: by 2002:a25:7e01:: with SMTP id z1mr34554258ybc.253.1618164610534;
        Sun, 11 Apr 2021 11:10:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618164610; cv=none;
        d=google.com; s=arc-20160816;
        b=O0EJZgXsckh2FfIdvKNvLMfu/8xaYkHnW9s8lYDWhIYS89vGAF5bysuDzl72vQW4sE
         Gfyp8lgtLCSS8JTV/FknSjRel48D92L6YiiEUqG17ySrfrL2TZcJQqBAuwuTX5pOZb3x
         66KkjEXRb1C3kKk1F8X4X2r+x4u6ZIDi7YwRwdAScP/oAD1W0iVYX+xDMKsV2JwTM9U4
         HYP87aHwp9bZ6/1XKyL7tDizvPXMcVY/LiUSlP+hSOouhwbcr0bYHI0TCOS6V4DMbsXj
         K58fFL4StPEnNJf5YanYQiLK3m8oEj48HAjHkCXRzBd+ThNHvlzpein7lyWNLgfdPNTU
         Vvtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JQNvXT9pWRklR4Ey6+A9cehyQgEPTnJS6fNOvtK8e5w=;
        b=mfS2a7Iy/RcaSEMxLUVeBU64bCBHnIFyGpIpHATa3Eqec2PIaoeqV71qCIAiF4Z9l7
         bA9WlHW2F1kvDPfn+h4Ef2ZjeLOvRPqr4TbX4VINzMuZ0kVaHaYKbmK080CckwMnATIk
         DwzJUPSBlOljJawcq5Bz9rdnVDh0rCxABRIppanslIDyLbQOVr/7wl7QzFz5R8IXaBhU
         OFx1+/c4O2zqN7hMZUs1bb+8fWJ5N6Fcwa78Ibhan6udDK424zFfLGRZXXbHAwr30Tp8
         uNwjmY7S5blHYFpsbA9Iwt+xMddLi6Matvnq8BK85yqBUbfLJs+BNBxO/K9V3sDxnJkR
         Wn0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j2bdZ8wK;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com. [2607:f8b0:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id i10si638029ybj.3.2021.04.11.11.10.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 11:10:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) client-ip=2607:f8b0:4864:20::12c;
Received: by mail-il1-x12c.google.com with SMTP id r5so893410ilb.2
        for <clang-built-linux@googlegroups.com>; Sun, 11 Apr 2021 11:10:10 -0700 (PDT)
X-Received: by 2002:a05:6e02:dea:: with SMTP id m10mr12772025ilj.112.1618164610166;
 Sun, 11 Apr 2021 11:10:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210401232723.3571287-1-yhs@fb.com> <CAKwvOdmX8d3XTzJFk5rN_PnOQYJ8bXMrh8DrhzqN=UBNdQiO3g@mail.gmail.com>
 <CA+icZUVKCY4UJfSG_sXjZHwfOQZfBZQu0pj1VZ9cXX4e7w0n6g@mail.gmail.com>
 <c6daf068-ead0-810b-2afa-c4d1c8305893@fb.com> <CA+icZUWYQ8wjOYHYrTX52AbEa3nbXco6ZKdqeMwJaZfHuJ5BhA@mail.gmail.com>
 <128db515-14dc-4ff1-eacb-8e48fc1f6ff6@fb.com> <YG23xiRqJLYRtZgQ@kernel.org>
 <08f2eda5-2226-d551-d660-dba981b6ced8@fb.com> <CAK7LNASUkLi4gu-9TY7p7kaLFKtEFA1qA0kc3VtOcgH9xJgsfA@mail.gmail.com>
 <d43d8804-ff30-fa38-b9d0-5dc20df2d795@fb.com>
In-Reply-To: <d43d8804-ff30-fa38-b9d0-5dc20df2d795@fb.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 11 Apr 2021 20:09:34 +0200
Message-ID: <CA+icZUXac=XVvyPDxvKHVpd2FWyTkBNp2zcFizA0DbCmfrDTUw@mail.gmail.com>
Subject: Re: [PATCH kbuild v4] kbuild: add an elfnote for whether vmlinux is
 built with lto
To: Yonghong Song <yhs@fb.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, bpf <bpf@vger.kernel.org>, 
	Kernel Team <kernel-team@fb.com>, Bill Wendling <morbo@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=j2bdZ8wK;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12c
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

On Sun, Apr 11, 2021 at 7:44 PM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 4/11/21 5:31 AM, Masahiro Yamada wrote:
> > On Wed, Apr 7, 2021 at 11:49 PM Yonghong Song <yhs@fb.com> wrote:
> >>
> >>
> >>
> >> On 4/7/21 6:46 AM, Arnaldo Carvalho de Melo wrote:
> >>> Em Tue, Apr 06, 2021 at 11:23:27PM -0700, Yonghong Song escreveu:
> >>>> On 4/6/21 8:01 PM, Sedat Dilek wrote:
> >>>>> On Tue, Apr 6, 2021 at 6:13 PM Yonghong Song <yhs@fb.com> wrote:
> >>>>>> Masahiro and Michal,
> >>>
> >>>>>> Friendly ping. Any comments on this patch?
> >>>
> >>>>>> The addition LTO .notes information emitted by kernel is used by pahole
> >>>>>> in the following patch:
> >>>>>>        https://lore.kernel.org/bpf/20210401025825.2254746-1-yhs@fb.com/
> >>>>>>        (dwarf_loader: check .notes section for lto build info)
> >>>
> >>>>> the above pahole patch has this define and comment:
> >>>
> >>>>> -static bool cus__merging_cu(Dwarf *dw)
> >>>>> +/* Match the define in linux:include/linux/elfnote.h */
> >>>>> +#define LINUX_ELFNOTE_BUILD_LTO 0x101
> >>>
> >>>>> ...and does not fit with the define and comment in this kernel patch:
> >>>
> >>>>> +#include <linux/elfnote.h>
> >>>>> +
> >>>>> +#define LINUX_ELFNOTE_LTO_INFO 0x101
> >>>
> >>>> Thanks, Sedat. I am aware of this. I think we can wait in pahole
> >>>> to make a change until the kernel patch is finalized and merged.
> >>>> The kernel patch may still change as we haven't get
> >>>> maintainer's comment. This will avoid unnecessary churn's
> >>>> in pahole side.
> >>>
> >>> So, I tested with clang 12 on fedora rawhide as well on fedora 33, and
> >>> I'm satisfied with the current state to release v1.21, Masahiro, have
> >>> you had the time to look at this?
> >>>
> >>> Yonghong, as we have a fallback in case the ELF note isn't available, I
> >>> think we're safe even if the notes patch merge gets delayed, right?
> >>
> >> Right. That is why I separated the notes patch from other patches.
> >> We can revisit it once the kernel patch is settled.
> >>
> >>>
> >>> - Arnaldo
> >>>
> >
> >
> > Applied to linux-kbuild. Thanks.
>
> Thanks!
>

Great to see this applied.
Thanks.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXac%3DXVvyPDxvKHVpd2FWyTkBNp2zcFizA0DbCmfrDTUw%40mail.gmail.com.
