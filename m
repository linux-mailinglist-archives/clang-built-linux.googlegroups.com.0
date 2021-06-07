Return-Path: <clang-built-linux+bncBCJP7WOE5UIBBTEI7KCQMGQEJT2BV3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9214539E891
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 22:40:47 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id o11-20020a62f90b0000b02902db3045f898sf8278915pfh.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 13:40:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623098445; cv=pass;
        d=google.com; s=arc-20160816;
        b=ijyeKibxc1J+UQcIwuUIsSwmZ1/JjcvKQ8Dc8tloKkE2b1lTKTkyGllZP1ILZk0Kaa
         t0ML0w7wZAURtHmKX2Ad4j7KFzz914OJ9wpr8CYai2qUR6Qrk6GuP1p5F95xo+qmLInk
         dpvjNkviMJSC831c5qpd+0ozEsOjoLxozSsDWD2XNK6R1wsUfsRrqf0PPdMEL45Oxb0Q
         XegRIRL8C6+y0eELWa53fOY5rvgjkHgOmTPHXw6iReYURMRjCw/N6holX3SxL45ZZMgp
         +CWVOmmSi/eVBFdnN0GPq/EUUBtQiJ+WsJw78v7ila2/8uc+zH59Ck0MwIAp9FWDGhPo
         qFMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=FxwERN3u3DoDmH0DDD+uhaKkpudlFS2+QiV29S7Nauw=;
        b=jXtsVxcfEmxaZ3nZ1o8FIQvePiJchkRZuuqWgGFCsNOuW5/iC/9Kl55YkbIrl/k0Sy
         /WrbKLJ6gFhNg7fGQQrx93I3+Jw+Qckx9NKAgkOmeyzMyuGxApMEEgLdJDFKGY0zT8Kn
         RBzWisRyeCwWlmGqQDFIvMYMl+fjUVcJMqPNRGbre7HIrIRLADs4NGzBNUTDK6Inc2DI
         1cXMGxkV6cUSKQZO8tXSiZca8HAuKQq08rqF4X5hswmE7ilWLUQM7n7MGjwJ3JqwMAaa
         nS+XMjnQWchn3z0yJHkmt6xYwIJaoy8FbSOMLRPC7FRqFXV5q15+nIVVLT5XYXNXJpnR
         0Qug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UAeMsV9y;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::32a as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FxwERN3u3DoDmH0DDD+uhaKkpudlFS2+QiV29S7Nauw=;
        b=Kf4eNM4zee109ftCP3h8tObojR46tzZtT2MPKdj7rB2t/Wg0vzU0xAFwdkwv4OE+yj
         VECjZEQFkWzLCY50XRmamcBlXt290nhUcplb8bH1SZo0bbe6YSsHdoYNF0KmsIQfWqGH
         QvIRij7l0b/zxo4VxJcO57ZsjE2o1hYdaDus5nSyAHMdMe4xnsORV/5lGOBfj6id5egI
         mJyByDN9X1/7z1irzlUPBIoQb5tlrbB8jf1O+asQeH26kvWtETfe+IpSkkb8+u1oqdvG
         vCkFPYUzfe3M0NyANlg1+GPcBnOFPuY/dvCud0kzXZcPphxajV447qN5iRrTaxfTqw99
         QfjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FxwERN3u3DoDmH0DDD+uhaKkpudlFS2+QiV29S7Nauw=;
        b=ts/KRu0VS+ndkhr8L52RY/XC/7u1j2me2r91Kd5tZn9gx0y/V8bfBDrIdJRMMfUBf0
         KCEIVDyXs696Uem1sSeqhkuPRFMQesVnQppEAJh9aFGa91yoqw84Y6jkXxgo5m93bB/G
         ee14e6sJodyk2zMge8yVbbdQ4OpgT4o3WMOc6lkhTwT/Dh1MFyebgPl4CwK9moFaquKC
         /Bj8UvwBVo+jm/CPaEZzOxeSHM6/UnYLj5IlC3OO4k6NEDLmKL5IQGBfdSdMZkc8adRl
         93oXtuqimB0C/M9pvaCSKH3a79GwDQXF6EIz6rDUKIAPQr3Wcvd5g6X+gKsNah85ltEM
         fkpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531d6pXBQ1ERYxyRzCOT66/T5wtRoRg4TDMuisCDW6jRRECTLdUK
	e3N8DOndDqLHxINI3DV/HeY=
X-Google-Smtp-Source: ABdhPJwMqmUK4GGgl2gfYIX+abIa8Jo+LnJAr9Xjbu800tS3mlKTtpu9me/JuW0b7G1yDu2/qW0bFQ==
X-Received: by 2002:a17:90a:1b68:: with SMTP id q95mr997010pjq.116.1623098444473;
        Mon, 07 Jun 2021 13:40:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:dacb:: with SMTP id q11ls4865571plx.2.gmail; Mon, 07
 Jun 2021 13:40:44 -0700 (PDT)
X-Received: by 2002:a17:90a:fd15:: with SMTP id cv21mr1011992pjb.46.1623098443948;
        Mon, 07 Jun 2021 13:40:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623098443; cv=none;
        d=google.com; s=arc-20160816;
        b=NbbUgS9KzR4SOlVBsz0tELSUvX0TsDtSxYy0lA28PUxDdzOxPX/1oS7EjlsUyD7kk8
         SAQjSUhD839hy/T9A+6RUtpgAKtKaVB6UbJcb57xIqYeg2SyZnqOKO2a/2a1AL9Jb2QV
         hzJjTFRURKlJ6zM98bNksWo8eex9D3sStQFuPqBiL5aC8rVfbA/Fy7xQcG4QGysvTqT3
         4qU6O+qThWX9UCynIMt4L2Ix5n0MSTG7JiHokg+3beBE92DnXN+NjDxbLwhLDqqdStxC
         FK+trkDxRSx9H7ig5iPjwtuQo0D8MJOKizH8+NSD5e4eHyybVgfxTjDypTuTxKZh3kIi
         ZxTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZMWLwrT3tzkNROjejSZHkSJGqtLsxOXJijLmp+N+WUA=;
        b=FGqtBHPNtKIIVgd+T2lTAQeU7mxnuaKaYpMwwHux1o4tzkHRB5xi+JzB8sd1SdDBfk
         BArW1tGUk3yC/Kt2WVcmpB3aRO5cGPulWw1vuz0zkVEDqainZNnZVnez60MTcvaulu+5
         d6W2FNxo+YwCIK0186hQxXz6UMlzjQRJJk5B0+fCYJxFyNZjOUj6UjlYFTw23r2DRvAu
         BjNULQsjK0qK3xruDTkmEVnE8Fu3SYb83mlzPisSX45eUisciNUzW6WhQXAeiaR5i4bq
         wALZP8vlNolARcEb1kv7RVcwDiGe/1I1bbP45IU0Bp3YKqNSNUOpKjhxB9udIaguUmCP
         rlJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UAeMsV9y;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::32a as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com. [2607:f8b0:4864:20::32a])
        by gmr-mx.google.com with ESMTPS id mu6si51639pjb.0.2021.06.07.13.40.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 13:40:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::32a as permitted sender) client-ip=2607:f8b0:4864:20::32a;
Received: by mail-ot1-x32a.google.com with SMTP id w23-20020a9d5a970000b02903d0ef989477so13695140oth.9
        for <clang-built-linux@googlegroups.com>; Mon, 07 Jun 2021 13:40:43 -0700 (PDT)
X-Received: by 2002:a9d:3e5:: with SMTP id f92mr15216641otf.181.1623098443458;
        Mon, 07 Jun 2021 13:40:43 -0700 (PDT)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com. [209.85.210.41])
        by smtp.gmail.com with ESMTPSA id l2sm1454305otn.32.2021.06.07.13.40.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 13:40:43 -0700 (PDT)
Received: by mail-ot1-f41.google.com with SMTP id j11-20020a9d738b0000b02903ea3c02ded8so4502961otk.5
        for <clang-built-linux@googlegroups.com>; Mon, 07 Jun 2021 13:40:43 -0700 (PDT)
X-Received: by 2002:a5b:54a:: with SMTP id r10mr26455324ybp.476.1623098107901;
 Mon, 07 Jun 2021 13:35:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210507205513.640780-1-dianders@chromium.org> <20210602175559.GC31957@willie-the-truck>
In-Reply-To: <20210602175559.GC31957@willie-the-truck>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 7 Jun 2021 13:34:56 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X1XjyfEG5H+OsCBZb_Acf1Z3PsSTUvO8sKcSD4BWsNbw@mail.gmail.com>
Message-ID: <CAD=FV=X1XjyfEG5H+OsCBZb_Acf1Z3PsSTUvO8sKcSD4BWsNbw@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: perf: Make compat tracing better
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Seth LaForge <sethml@google.com>, Ricky Liang <jcliang@chromium.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>, Jiri Olsa <jolsa@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Namhyung Kim <namhyung@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-perf-users@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dianders@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=UAeMsV9y;       spf=pass
 (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::32a
 as permitted sender) smtp.mailfrom=dianders@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Hi,

On Wed, Jun 2, 2021 at 10:56 AM Will Deacon <will@kernel.org> wrote:
>
> Hi Doug,
>
> Thanks for posting this, and sorry for the delay in getting to it.
>
> On Fri, May 07, 2021 at 01:55:10PM -0700, Douglas Anderson wrote:
> > The goal for this series is to improve "perf" behavior when 32-bit
> > userspace code is involved. This turns out to be fairly important for
> > Chrome OS which still runs 32-bit userspace for the time being (long
> > story there).
>
> Watch out, your days are numbered! See [1].

Yeah, folks on the Chrome OS team are aware and we're trying our
darndest to move away. It's been an unfortunate set of circumstances
that has kept us on 32-bit this long. :( BTW: I like your suggestion
of "retirement" as a solution to dealing with this problem, but I'm
not quite ready to retire yet.


> > I won't repeat everything said in the individual patches since since
> > they are wordy enough as it is.
> >
> > Please enjoy and I hope this isn't too ugly/hacky for inclusion in
> > mainline.
> >
> > Thanks to Nick Desaulniers for his early review of these patches and
> > to Ricky for the super early prototype that some of this is based on.
>
> I can see that you've put a lot of effort into this, but I'm not thrilled
> with the prospect of maintaining these heuristics in the kernel. The
> callchain behaviour is directly visible to userspace, and all we'll be able
> to do is throw more heuristics at it if faced with any regression reports.
> Every assumption made about userspace behaviour results in diminishing
> returns where some set of programs no longer fall into the "supported"
> bucket and, on balance, I don't think the trade-off is worth it.
>
> If we were to do this in the kernel, then I'd like to see a spec for how
> frame-pointer based unwinding should work for Thumb and have it agreed
> upon and implemented by both GCC and LLVM. That way, we can implement
> the unwinder according to that spec and file bug reports against the
> compiler if it goes wrong.

Given how long this has been going on, I'd somewhat guess that getting
this implemented in GCC and LLVM is 1+ year out. Presumably Chrome OS
will be transitioned off 32-bit ARM by then.


> In lieu of that, I think we must defer to userspace to unwind using DWARF.
> Perf supports this via PERF_SAMPLE_STACK_USER and PERF_SAMPLE_REGS_USER,
> which allows libunwind to be used to create the callchain. You haven't
> mentioned that here, so I'd be interested to know why not.

Good point. So I guess I didn't mention it because:

a) I really know very little about perf. I got roped in this because I
understand stack unwinding, not because I know how to use perf well.
:-P So I personally have no idea how to set this up.

b) In the little bit of reading I did about this, people seemed to say
that using libunwind for perf sampling was just too slow / too much
overhead.


> Finally, you've probably noticed that our unwinding code for compat tasks
> is basically identical to the code in arch/arm/. If the functionality is
> going to be extended, it should be done there first and then we will follow
> to be compatible.

That's fair. I doubt that submitting patches to this area of code for
arm32 would be enjoyable, so I'll pass if it's all the same.

Given your feedback, I think it's fair to consider ${SUBJECT} patch
abandoned then. I'll see if people want to land it as a private patch
in the Chrome OS tree for the time being until we can more fully
abandon arm32 support or until the ARM teams working on gcc and clang
come up with a standard that we can support more properly.

In the meantime, if anyone cares to pick this patch up and move
forward, feel free to do so with my blessing.

-Doug

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAD%3DFV%3DX1XjyfEG5H%2BOsCBZb_Acf1Z3PsSTUvO8sKcSD4BWsNbw%40mail.gmail.com.
