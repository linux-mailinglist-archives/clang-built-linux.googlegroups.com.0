Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4FOQSCAMGQECDTSJEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2353679E3
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 08:28:01 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id o18-20020a1ca5120000b02901333a56d46esf1276107wme.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 23:28:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619072881; cv=pass;
        d=google.com; s=arc-20160816;
        b=oickH0IRXYl0/BNBGEb7IaqGsoXYwZaWUfRslyTPG7uFaxgzbsPzMhF/LZyGfyq3nK
         SmFkScLRciHFm/auXlUZu/qO3PlYcO3a66FXei8BSDveRiHjU0g0auDt5jBxGTZZ/CVV
         rRtBAm36tTO3u/R6ehGGkNyH+QME1EPXQteY0DQj3wReVDvtK8hGlKrvnX2O5/vQipZy
         CIVfPLMFHy1y6R+LkleZsLqonTieM4AsIxkbK2DIxWNusRkHlGFOpPt5XFD62uXF/IHz
         WNrolJx6HFf0FwmDeS2y60fYltxgKXEoUoeM43NqhSfqwp3zRv8V2hd1KD4eaD+zwTji
         pWQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=UHQfLbNObr6vLGh0GnjuLuzSKsvKmWMeJP1xZ8ngw/Q=;
        b=UtlJRZxdX9NP38H+sp2sa9r8iB4mt8EPAl8rLY6lXs/Pb0D/iB409cZDobxyJuoyPX
         TjE4tuOphhRLoOKOyJwJMjW8MaLNJn+l3vSS9nzBqHTsdvKHiW3UkyVUFDkkkoywnPRr
         QmzCfareEoUXyJ8Bs14yCLEe4p5GcJpMvHJo4t2NPC1ipb8bvAKtyzxUCYjLBx3ycYKX
         C7NO8axRNUIH7vG62/yWNjkkAwegnqFoLjguwvPRfk7JLFu6FSjMrhk8bBGS9feCDfon
         Ad1lMR/T+3wtm/w7h6WPEzBthu/+JOCBk0pXEXzz3JRS7kNX9PeGDHYMxMPycPWwwtAS
         1uhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EhIzr8v8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UHQfLbNObr6vLGh0GnjuLuzSKsvKmWMeJP1xZ8ngw/Q=;
        b=reH1rELICvEMUgs6NWZcumDKBXL2QX6/c0R/5YaBZPlSlqezzeWZDlZspQV1B+hkKY
         Cxhg6hdGnekajV1kFq1Zr3c5CUOLRJg0FjuscX3vQu4hSMWGGQqktymOwhLmXDkrNcyO
         U1LJ14rY1OFBshOvr7T04+yfG24cSGo+P5mbBR8G734qUB86bm/gC15K0fumS5Fb+//o
         P/lpWNouTxgXPhqFeQi3eROQblTTBpdSeuep3H+EcemAOwi2KRNXhFyuQ8OfgXexXo1R
         mt1l0y0YClsQ+q5buAVFEE85X0kVFUvJobKitLxw47vXkr6i3iNtLj5DeY39kZVuLEEq
         BGeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UHQfLbNObr6vLGh0GnjuLuzSKsvKmWMeJP1xZ8ngw/Q=;
        b=SLBR9vjKqfGfHV1X3zcy5tm/8RtWuWi71DBLpgQmKbrE4qr2Hr7//Manb3ix2+U6Kw
         Dk1fO8dUU4KRQ2bGjOx7ojvttyLuG30c+VAbAZHFSAFqmKVr+pC5zwhOAXOGKn1EjAEy
         JDJuvjwDCSbKLkfut6YjjzluzIsaXBCqQo8xBD1qVw9m8Iwh2YWK2kGOvSfuN9kKkal7
         RUdDinuT/qnStypCswnRBjfaFwSMq4n3Nd1IqYouA/hDue/4Kew18u1kGpH5lMd2C6X4
         diQ9pN+Rk9xpS7dn+Ce3PPNqk0VBfLlZ2Q9egm36RcCur99TYNe2+Mc/8jQeSn+DQI9l
         iCXg==
X-Gm-Message-State: AOAM533Alp8RZe/bZynDbMh/bsLSU2uWvKPMVlwGyrx/qzD8yg1e69hC
	MwI8x2dGvR1HQFbZc2CQbeQ=
X-Google-Smtp-Source: ABdhPJznAqala7XNdJ9YnXt4hDAYktgIZypE69yaxtqxQ9tODHLZ0cRddY8AxM/mNz0sFNlNW0KvNg==
X-Received: by 2002:a1c:f701:: with SMTP id v1mr13766364wmh.69.1619072880853;
        Wed, 21 Apr 2021 23:28:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6804:: with SMTP id w4ls5519867wru.2.gmail; Wed, 21 Apr
 2021 23:28:00 -0700 (PDT)
X-Received: by 2002:a5d:6648:: with SMTP id f8mr2040374wrw.76.1619072879964;
        Wed, 21 Apr 2021 23:27:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619072879; cv=none;
        d=google.com; s=arc-20160816;
        b=dvDK9dL6k9aeEl11hRqF4EAtHuOP1ouSsSJ4Y3oLpelfxIPz5fycBzIz2L5/4JGQ18
         4U+rCuAnOmyKNVhyGoRctLK9VufkH6MwSV/ngS0R0ZA4l2dwcxQOfEoN6Bik221M1XrV
         wrZJUmbOXKx/XzP+ndsVlMJWF8k/aI7k01sKuX2S1dZ64OT7wcNzy9XtA228sRuthMl+
         ol31n8wuDK8pazrrG2a84d3k8GkCyuzab+aIm5LyDJN/Yptd2dFwPh5T4vlEsdn+9fqo
         3CxeP+GYPiALSpKOVIhp/yf8zLg0f6RTmwzn4xvoHTr1QkIa/x7gyjCRfmCH+DevzTc5
         8iuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=1LZ2Pgg6jYLjWodBKLO0cwxBGMZTzSRHmo18LWauLa4=;
        b=E3aeOdpvQDKxeXk0aukpCbm6Q645ecQ0hFNIUHWUw+sgoAQJUx8rGMqKkSjG/bNTts
         7xXKx6Fggm26MGv5ShcWyxtPTANEUfknIX3jYYbDmzM4YV05sB/U92DZ/1icUkIYy9f5
         U+vp5ZdY9fgLlD7BaaKopyxkPC5QIh3/SNB2lJG2u1PetL0NxVvomC+yYPfHWL2x/tsM
         S0jKnYIJm5h3r46OdYIEpUVzOu4e2NUbQlj/HGT5FfyYQltbA53BGiF0FJvwunWkpQyZ
         2MbvtwKH2fFiTTeUgFRIG4z5yVYVktsAKeQBRIBl9Ds0+su09R2vjrpR8FDsPni13ufb
         3Now==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EhIzr8v8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id 187si289498wmb.0.2021.04.21.23.27.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Apr 2021 23:27:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id x19so40006292lfa.2
        for <clang-built-linux@googlegroups.com>; Wed, 21 Apr 2021 23:27:59 -0700 (PDT)
X-Received: by 2002:a05:6512:985:: with SMTP id w5mr1372034lft.122.1619072879398;
 Wed, 21 Apr 2021 23:27:59 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000eff40905c0894ce8@google.com> <CAKwvOdnq+9wNZwhmKV3HBCL_CX_W3Cfer107yEsZKJqUpK1dXw@mail.gmail.com>
 <CAKwvOd=XixtbdYfwtUf7+ddxxv=h7eCX4-VP0XZNNFvFuxDSMw@mail.gmail.com>
In-Reply-To: <CAKwvOd=XixtbdYfwtUf7+ddxxv=h7eCX4-VP0XZNNFvFuxDSMw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 21 Apr 2021 23:27:47 -0700
Message-ID: <CAKwvOdnq7_Fw-fVR5-X7ijyCyF16X1cx9=9yaQoAR_iWJqjgug@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - April 21, 2021
To: Nick Desaulniers <ndesaulniers@google.com>, Android-LLVM <android-llvm@google.com>, 
	clang linux fellowship <clang-linux-fellowship@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EhIzr8v8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135
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

Also, I think we'll clear assignees unless someone IS actively working
on something, and close out issues tagged "question."


On Wed, Apr 21, 2021 at 11:10 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Apr 21, 2021 at 11:03 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Hey folks interested in tomorrow's bug scrub; if you have time come
> > join us at: https://meet.google.com/yvj-tmcy-jup any time 9am-5pm
> > pacific tomorrow.
> >
> > You'll probably want to rebuild LLVM tonight with all backends
> > enabled, and perhaps even the m68k backend enabled. ie. do not set
> > `-DLLVM_TARGETS_TO_BUILD`, do set
>
> Alternatively, you can set -DLLVM_TARGETS_TO_BUILD to:
> -DLLVM_TARGETS_TO_BUILD="AArch64;ARM;Hexagon;Mips;PowerPC;RISCV;Sparc;SystemZ;X86"
>
> > `-DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD="M68k"`.
> >
> > As a template for closing bugs that are not or no longer reproducible,
> > might I suggest the template:
> >
> > ```
> > Thank you for submitting this bug report.  I'm not able to reproduce
> > it using llvm @ <YOUR LLVM SHA HERE> using the following commands:
> > <COMMANDS>
> > Therefore, I am closing this bug report as obsolete; please feel free
> > to reopen with additional steps to reproduce beyond what was attempted
> > above.
> > ```
> >
> > The goal is not to close every bug, but to see if certain bugs are
> > still visible.  A good comment for one might be:
> > ```
> > I was still able to reproduce this failure using llvm @ <YOUR LLVM SHA
> > HERE> using the following commands:
> > <COMMANDS>
> > ```
> > The key point being the date on the comment will help us understand
> > which bugs have grown stale or not.
> >
> > Probably won't be closing out any feature requests.  Might even get a
> > few bug fixes in too for low hanging fruit; or new bugs filed.
> >
> > On Wed, Apr 21, 2021 at 10:53 PM <ndesaulniers@google.com> wrote:
> > >
> > > http://go/clang-built-linux-notes
> > > Meeting: Hangouts Meet
> > >
> > > April 21, 2021
> > >
> > > Ppc32 boot failures
> > >
> > > https://github.com/ClangBuiltLinux/linux/issues/1345#issuecomment-816864777
> > >
> > > Debian LLVM patches causing issues
> > >
> > > https://github.com/ClangBuiltLinux/linux/issues/1355
> > >
> > > Gcov shenanigans
> > >
> > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7af08140979a6e7e12b78c93b8625c8d25b084e2
> > > KCOV issues resolved
> > >
> > > CFI feedback
> > > Aarch64 per task stack canaries (Nick): https://reviews.llvm.org/D100919
> > > Alignment issue in blk still not resolved
> > >
> > > https://github.com/ClangBuiltLinux/linux/issues/1328
> > >
> > > Double CI, oops!
> > > Fortify source
> > > Merge window opening
> > > Bug scrub tomorrow!
> > >
> > >
> > > ________________________________
> > >
> > > Sent by http://go/sendnotes
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnq7_Fw-fVR5-X7ijyCyF16X1cx9%3D9yaQoAR_iWJqjgug%40mail.gmail.com.
