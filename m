Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBGHTT2GQMGQEUSBDVII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id EF42B4654BC
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Dec 2021 19:06:17 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id s16-20020a170902ea1000b00142728c2ccasf10608857plg.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Dec 2021 10:06:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638381976; cv=pass;
        d=google.com; s=arc-20160816;
        b=cj9D7jubx0lwXvzJkGnzDJFPabFfQMAgSALkS/Fq4eYRpT+zptQzLeSaKTQ316oPKY
         pdkG+Dl4J94pzjCPi0FLXWi8slAjJ5Ul4waRUePBDLe4pXOZ4kjLffNvjY6ssZSXh+Gz
         oqeAEZadfXdgI6sU4tCERUZPnNWPIaCrIrZ1eS1vwlFgm7TEyVPUkMfUtgNMM6T72Mv3
         gunj9vIhb0MmXq4sFmCdVtY+yUHoqWEXKbADqP+AI9MceZSFCCcnfUaF6dNmnhy/EHDJ
         AUvl9j3VsFDKx81rwR9V7ueZpwr3cFh1k/b4M4R40evoAlAKXFtDBcPqlSH/M3uxgAds
         hTLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=WnUhqOeaZ24R8NrSyF7nLRmvEL+4W7dCGMw86V0bSnA=;
        b=Wcl5ou0KUZ8sCndlEparKHONAdNCdZ6oY1VnmMB1eumg5f9zB4aQ1CNfJfyWuumyYY
         IqrbQu6i9irUDd6v6675k68AhGKwZrKWyXi8MzzPS2ek3OUPlabr63g4Zy6hoyi5yR2i
         dMdthRHBzaiC3lPkk3A92cJlEy4ZaffIrjAYxTI3WO/rcwmawQLBeTHPhCcETpK0UBw3
         2W8I3tNYshXfgGL8eu8/dVCkG9A3AOhrK3aw9dZArEsMUdmJ1TUXiLMQA8guNAbjejbj
         0uDi2Ktz/+OCnaC7+IJlLF8CPd6e+adIycOhlS/PUabKu6qMga5KKujtARkfzJy/QZuU
         6Y4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=q6A1D0Tq;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WnUhqOeaZ24R8NrSyF7nLRmvEL+4W7dCGMw86V0bSnA=;
        b=RJSZ+YWy/DTqByVxWugFTAEsxi7cm5I3t3TMo3rnR5V/UD7joJVi+7LJq2IympGvvL
         6NCNTQkD9iQv9Dq1BGrCfPd7iOca3yvnM58sKA5fw/OrMnPwFYUwv0TMFbNF+q3mJF6c
         B8dFKoLp4BM59PNiWtgjnQMIkKCBFpmMHSbIhIYNIXSUuL7pLO9gfREIVKE+3sYxZTjK
         0gp38zHcdYl+YXawrgirorVEVAygapLT9JReN2xl6SSlAxXk3qQ3MDLkj6jsiAM0c5XO
         qI4XtDkJ/QmiUhe0YJNuL6B3Z8n0ypx37oml1wNBcsi7pG/m8Zc+InJ4qVWxzoHSGnLe
         tw3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WnUhqOeaZ24R8NrSyF7nLRmvEL+4W7dCGMw86V0bSnA=;
        b=AddHYCF3e0Mw09KecoGGqLcHztW0t6IKUKKRSV3JHHqgK3VipLbeGnF22cZIJ9rCEa
         OEdMbpE3ADQnLNtvHdhG3MPaUZnhlrtw5azQuJLxjUryUaBr1SEk+/v7KhXfLUbCOTpN
         /bglaRDhCN7SOk8FPZjhG53FnLYGiSMF3eNTO7Z1RpE+UVojpJFLaRhJPoFP5GIShCH5
         Np/5RQisG6PRVkf3OjeOMj1e1Q1xwcOoln2qM66a5RB3j1ukjxBTZ/ez8CxJejTarVfr
         S51wydy01u6Cp4o29DJKUxdm7eKLTrUtDzlBCvPNklOUCkEZPslr3G+51rZzh1jqOoCZ
         1BqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WnUhqOeaZ24R8NrSyF7nLRmvEL+4W7dCGMw86V0bSnA=;
        b=tvt4g0XvRPVDo6KfZct7utgf6OrbWxyVuogs0rLWq8fJzFp/ir1isoQqF589x1eCWU
         IokyWXru15/jTQ1eNL5vRRgVO62Wdg2c+JVSdpUlXl6brUReQd65Q8EgKXpch6BhEMzX
         jTOZGXP9fYeJrnmciJqJRkcMRTkOdMlvepIc0OT7UcShoK/tESE3212ekV/mlIbBTWLw
         HQ4TRm81tXt0aw+0kRQCf3XGsNbl3BjDE4/kUSaLZrR8mUXM+EHXJLR1hqlF+s88QOmN
         70l1LfM5TH0ZS6Fp6v1IiMIQQuh2PueG5/eHUDHYYG0cqGsjOK/Xf48DDNfnYnQzMocv
         kVhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326VuKZwqKA1pCtG3YGchjdfes3ZNtS2IJ0pb6mjxyqo/5Qhc3u
	apxCZpa1a98sRXimlX0E8VQ=
X-Google-Smtp-Source: ABdhPJyXP+yP7n+7Dw285+NqPMMItuMxsRoQ5rdaCrvWITdbBnc7YPuBFRsraIWXzKzRh6t3Df39RA==
X-Received: by 2002:a17:902:e5c9:b0:142:53c4:478d with SMTP id u9-20020a170902e5c900b0014253c4478dmr8930748plf.33.1638381976614;
        Wed, 01 Dec 2021 10:06:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:1bcf:: with SMTP id oa15ls3487761pjb.0.canary-gmail;
 Wed, 01 Dec 2021 10:06:15 -0800 (PST)
X-Received: by 2002:a17:902:bd06:b0:143:aa76:faf0 with SMTP id p6-20020a170902bd0600b00143aa76faf0mr9398524pls.88.1638381975835;
        Wed, 01 Dec 2021 10:06:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638381975; cv=none;
        d=google.com; s=arc-20160816;
        b=Erco1uyxVLSYTDVOJp0PHyLG4pkhqn2XQqoG/UrLt9L9RcI829p/lCVe4cGgsyb2VR
         ZpJ36DZUC9wmKcBUXJgRPgf9YAm7UGzjYJyyiCYRW06BrEf2jYfDkT31nui2CCA/J5Jj
         UjR0eAFGohyje7QpeYtixaR7XynFaHh+ds/VxcqfUHeV26lha/0vnGjtpYRNAdVb6yI3
         8+7/hBcz4CP4SMDTM/20ZJCNkqrLQ4HkDnxw5CUCsQUptTgLXsc88B67+Jh7tlYxzYeA
         y1fJhQXHFeBy12RzBV5PgNWc3IIFDteX0NwxHuAx4TUukcF6ZsqNjLGEB23x0HdP8AwV
         N/uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nDftlED1JHWOwIY0c1q3Lh3qalRW5ur7uVqjd0m0XaU=;
        b=zqCCtKXJiCK8RIgRXrwLPtYeuoOoo7eTilb3+fZzupZ/42siMUr04utmFzJTVwc/6T
         b+c9XWSrPronMUxjto4cmej7JXi5xBCmEyZ8U+lI/GMIBjrwadjbvEGVU5mvZ3yEz6Lh
         eZ5qKIjStz/QdWKI35/xIUGdG4qACz0s3UTzGvftHhBQNRvaNXjAL012aNLRem4rNuAJ
         h2s3Mqi9LU8ecND614SzlfIZ7PBhEX0VQxuHwaKsmba0DYadL4R/9afNhkig46T/dOMI
         GZge2MEGxY3mJSvdJjWz591qaYN6keW8kAvXoSzvsiFg38QvIPMmb3GNlqNZu0586acq
         mo/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=q6A1D0Tq;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com. [2607:f8b0:4864:20::b2d])
        by gmr-mx.google.com with ESMTPS id na11si1228824pjb.2.2021.12.01.10.06.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Dec 2021 10:06:15 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) client-ip=2607:f8b0:4864:20::b2d;
Received: by mail-yb1-xb2d.google.com with SMTP id y68so65980484ybe.1
        for <clang-built-linux@googlegroups.com>; Wed, 01 Dec 2021 10:06:15 -0800 (PST)
X-Received: by 2002:a25:54e:: with SMTP id 75mr8846537ybf.393.1638381974946;
 Wed, 01 Dec 2021 10:06:14 -0800 (PST)
MIME-Version: 1.0
References: <20211019144655.3483197-1-maximmi@nvidia.com> <20211019144655.3483197-10-maximmi@nvidia.com>
 <CACAyw9_MT-+n_b1pLYrU+m6OicgRcndEBiOwb5Kc1w0CANd_9A@mail.gmail.com>
 <87y26nekoc.fsf@toke.dk> <1901a631-25c0-158d-b37f-df6d23d8e8ab@nvidia.com>
 <103c5154-cc29-a5ab-3c30-587fc0fbeae2@fb.com> <1b9b3c40-f933-59c3-09e6-aa6c3dda438f@nvidia.com>
 <68a63a77-f856-1690-cb60-327fc753b476@fb.com> <3e673e1a-2711-320b-f0be-2432cf4bbe9c@nvidia.com>
 <f08fa9aa-8b0d-8217-1823-2830b2b2587c@fb.com> <cbd2e655-8113-e719-4b9d-b3987c398b04@nvidia.com>
 <ce2d9407-b141-6647-939f-0f679157fdf7@fb.com> <0a958197-67ab-8773-3611-f8156ebdb9e0@nvidia.com>
 <4f895364-a546-c7dd-b6d2-2a80628f2d9a@fb.com>
In-Reply-To: <4f895364-a546-c7dd-b6d2-2a80628f2d9a@fb.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 1 Dec 2021 10:06:04 -0800
Message-ID: <CAEf4Bzajt1Q-aYD1uecd9crtKcOxNe0_XsNcJ8VPX4fJ+D8JtA@mail.gmail.com>
Subject: Re: [PATCH bpf-next 09/10] bpf: Add a helper to issue timestamp
 cookies in XDP
To: Yonghong Song <yhs@fb.com>
Cc: Maxim Mikityanskiy <maximmi@nvidia.com>, =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>, 
	Lorenz Bauer <lmb@cloudflare.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Eric Dumazet <edumazet@google.com>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, 
	David Ahern <dsahern@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Brendan Jackman <jackmanb@google.com>, Florent Revest <revest@chromium.org>, Joe Stringer <joe@cilium.io>, 
	Tariq Toukan <tariqt@nvidia.com>, Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=q6A1D0Tq;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Tue, Nov 30, 2021 at 10:40 PM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 11/29/21 9:51 AM, Maxim Mikityanskiy wrote:
> > On 2021-11-26 19:07, Yonghong Song wrote:
> >>
> >>
> >> On 11/26/21 8:50 AM, Maxim Mikityanskiy wrote:
> >>> On 2021-11-26 07:43, Yonghong Song wrote:
> >>>>
> >>>>
> >>>> On 11/25/21 6:34 AM, Maxim Mikityanskiy wrote:
> >>>>> On 2021-11-09 09:11, Yonghong Song wrote:
> >>>>>>
> >>>>>>
> >>>>>> On 11/3/21 7:02 AM, Maxim Mikityanskiy wrote:
> >>>>>>> On 2021-11-03 04:10, Yonghong Song wrote:
> >>>>>>>>
> >>>>>>>>
> >>>>>>>> On 11/1/21 4:14 AM, Maxim Mikityanskiy wrote:
> >>>>>>>>> On 2021-10-20 19:16, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
> >>>>>>>>>> Lorenz Bauer <lmb@cloudflare.com> writes:
> >>>>>>>>>>
> >>>>>>>>>>>> +bool cookie_init_timestamp_raw(struct tcphdr *th, __be32
> >>>>>>>>>>>> *tsval, __be32 *tsecr)
> >>>>>>>>>>>
> >>>>>>>>>>> I'm probably missing context, Is there something in this
> >>>>>>>>>>> function that
> >>>>>>>>>>> means you can't implement it in BPF?
> >>>>>>>>>>
> >>>>>>>>>> I was about to reply with some other comments but upon closer
> >>>>>>>>>> inspection
> >>>>>>>>>> I ended up at the same conclusion: this helper doesn't seem to
> >>>>>>>>>> be needed
> >>>>>>>>>> at all?
> >>>>>>>>>
> >>>>>>>>> After trying to put this code into BPF (replacing the
> >>>>>>>>> underlying ktime_get_ns with ktime_get_mono_fast_ns), I
> >>>>>>>>> experienced issues with passing the verifier.
> >>>>>>>>>
> >>>>>>>>> In addition to comparing ptr to end, I had to add checks that
> >>>>>>>>> compare ptr to data_end, because the verifier can't deduce that
> >>>>>>>>> end <=3D data_end. More branches will add a certain slowdown (n=
ot
> >>>>>>>>> measured).
> >>>>>>>>>
> >>>>>>>>> A more serious issue is the overall program complexity. Even
> >>>>>>>>> though the loop over the TCP options has an upper bound, and
> >>>>>>>>> the pointer advances by at least one byte every iteration, I
> >>>>>>>>> had to limit the total number of iterations artificially. The
> >>>>>>>>> maximum number of iterations that makes the verifier happy is
> >>>>>>>>> 10. With more iterations, I have the following error:
> >>>>>>>>>
> >>>>>>>>> BPF program is too large. Processed 1000001 insn
> >>>>>>>>>
> >>>>>>>>>                         processed 1000001 insns (limit 1000000)
> >>>>>>>>> max_states_per_insn 29 total_states 35489 peak_states 596
> >>>>>>>>> mark_read 45
> >>>>>>>>>
> >>>>>>>>> I assume that BPF_COMPLEXITY_LIMIT_INSNS (1 million) is the
> >>>>>>>>> accumulated amount of instructions that the verifier can
> >>>>>>>>> process in all branches, is that right? It doesn't look
> >>>>>>>>> realistic that my program can run 1 million instructions in a
> >>>>>>>>> single run, but it might be that if you take all possible flows
> >>>>>>>>> and add up the instructions from these flows, it will exceed 1
> >>>>>>>>> million.
> >>>>>>>>>
> >>>>>>>>> The limitation of maximum 10 TCP options might be not enough,
> >>>>>>>>> given that valid packets are permitted to include more than 10
> >>>>>>>>> NOPs. An alternative of using bpf_load_hdr_opt and calling it
> >>>>>>>>> three times doesn't look good either, because it will be about
> >>>>>>>>> three times slower than going over the options once. So maybe
> >>>>>>>>> having a helper for that is better than trying to fit it into B=
PF?
> >>>>>>>>>
> >>>>>>>>> One more interesting fact is the time that it takes for the
> >>>>>>>>> verifier to check my program. If it's limited to 10 iterations,
> >>>>>>>>> it does it pretty fast, but if I try to increase the number to
> >>>>>>>>> 11 iterations, it takes several minutes for the verifier to
> >>>>>>>>> reach 1 million instructions and print the error then. I also
> >>>>>>>>> tried grouping the NOPs in an inner loop to count only 10 real
> >>>>>>>>> options, and the verifier has been running for a few hours
> >>>>>>>>> without any response. Is it normal?
> >>>>>>>>
> >>>>>>>> Maxim, this may expose a verifier bug. Do you have a reproducer
> >>>>>>>> I can access? I would like to debug this to see what is the root
> >>>>>>>> case. Thanks!
> >>>>>>>
> >>>>>>> Thanks, I appreciate your help in debugging it. The reproducer is
> >>>>>>> based on the modified XDP program from patch 10 in this series.
> >>>>>>> You'll need to apply at least patches 6, 7, 8 from this series to
> >>>>>>> get new BPF helpers needed for the XDP program (tell me if that's
> >>>>>>> a problem, I can try to remove usage of new helpers, but it will
> >>>>>>> affect the program length and may produce different results in
> >>>>>>> the verifier).
> >>>>>>>
> >>>>>>> See the C code of the program that passes the verifier (compiled
> >>>>>>> with clang version 12.0.0-1ubuntu1) in the bottom of this email.
> >>>>>>> If you increase the loop boundary from 10 to at least 11 in
> >>>>>>> cookie_init_timestamp_raw(), it fails the verifier after a few
> >>>>>>> minutes.
> >>>>>>
> >>>>>> I tried to reproduce with latest llvm (llvm-project repo),
> >>>>>> loop boundary 10 is okay and 11 exceeds the 1M complexity limit.
> >>>>>> For 10,
> >>>>>> the number of verified instructions is 563626 (more than 0.5M) so
> >>>>>> it is
> >>>>>> totally possible that one more iteration just blows past the limit=
.
> >>>>>
> >>>>> So, does it mean that the verifying complexity grows exponentially
> >>>>> with increasing the number of loop iterations (options parsed)?
> >>>>
> >>>> Depending on verification time pruning results, it is possible
> >>>> slightly increase number of branches could result quite some (2x,
> >>>> 4x, etc.) of
> >>>> to-be-verified dynamic instructions.
> >>>
> >>> Is it at least theoretically possible to make this coefficient below
> >>> 2x? I.e. write a loop, so that adding another iteration will not
> >>> double the number of verified instructions, but will have a smaller
> >>> increase?
> >>>
> >>> If that's not possible, then it looks like BPF can't have loops
> >>> bigger than ~19 iterations (2^20 > 1M), and this function is not
> >>> implementable in BPF.
> >>
> >> This is the worst case. As I mentioned pruning plays a huge role in
> >> verification. Effective pruning can add little increase of dynamic
> >> instructions say from 19 iterations to 20 iterations. But we have
> >> to look at verifier log to find out whether pruning is less effective =
or
> >> something else... Based on my experience, in most cases, pruning is
> >> quite effective. But occasionally it is not... You can look at
> >> verifier.c file to roughly understand how pruning work.
> >>
> >> Not sure whether in this case it is due to less effective pruning or
> >> inherently we just have to go through all these dynamic instructions
> >> for verification.
> >>
> >>>
> >>>>>
> >>>>> Is it a good enough reason to keep this code as a BPF helper,
> >>>>> rather than trying to fit it into the BPF program?
> >>>>
> >>>> Another option is to use global function, which is verified separate=
ly
> >>>> from the main bpf program.
> >>>
> >>> Simply removing __always_inline didn't change anything. Do I need to
> >>> make any other changes? Will it make sense to call a global function
> >>> in a loop, i.e. will it increase chances to pass the verifier?
> >>
> >> global function cannot be static function. You can try
> >> either global function inside the loop or global function
> >> containing the loop. It probably more effective to put loops
> >> inside the global function. You have to do some experiments
> >> to see which one is better.
> >
> > Sorry for a probably noob question, but how can I pass data_end to a
> > global function? I'm getting this error:
> >
> > Validating cookie_init_timestamp_raw() func#1...
> > arg#4 reference type('UNKNOWN ') size cannot be determined: -22
> > processed 0 insns (limit 1000000) max_states_per_insn 0 total_states 0
> > peak_states 0 mark_read 0
> >
> > When I removed data_end, I got another one:
> >
> > ; opcode =3D ptr[0];
> > 969: (71) r8 =3D *(u8 *)(r0 +0)
> >   R0=3Dmem(id=3D0,ref_obj_id=3D0,off=3D20,imm=3D0)
> > R1=3Dmem(id=3D0,ref_obj_id=3D0,off=3D0,umin_value=3D4,umax_value=3D60,v=
ar_off=3D(0x0;
> > 0x3f),s32_min_value=3D0,s32_max_value=3D63,u32_max_value=3D63)
> >   R2=3DinvP0 R3=3DinvP0 R4=3Dmem_or_null(id=3D6,ref_obj_id=3D0,off=3D0,=
imm=3D0)
> > R5=3DinvP0 R6=3Dmem_or_null(id=3D5,ref_obj_id=3D0,off=3D0,imm=3D0)
> > R7=3Dmem(id=3D0,ref_obj_id=3D0,off=3D0,imm=3D0) R10=3Dfp0 fp
> > -8=3D00000000 fp-16=3DinvP15
> > invalid access to memory, mem_size=3D20 off=3D20 size=3D1
> > R0 min value is outside of the allowed memory range
> > processed 20 insns (limit 1000000) max_states_per_insn 0 total_states 2
> > peak_states 2 mark_read 1
> >
> > It looks like pointers to the context aren't supported:
> >
> > https://www.spinics.net/lists/bpf/msg34907.html
> >
> >  > test_global_func11 - check that CTX pointer cannot be passed
> >
> > What is the standard way to pass packet data to a global function?
>
> Since global function is separately verified, you need to pass the 'ctx'
> to the global function and do the 'data_end' check again in the global
> function. This will incur some packet re-parsing overhead similar to
> tail calls.

Now that the bpf_loop() helper landed, it's another option for doing
repeated work. Please see [0].

  [0] https://patchwork.kernel.org/project/netdevbpf/list/?series=3D587497&=
state=3D*

>
> >
> > Thanks,
> > Max
> >
> >>>
> >>>>>
> >>>>>>
> >>>>>>> If you apply this tiny change, it fails the verifier after about
> >>>>>>> 3 hours:
> >>>>>>>
> >>>> [...]
> >>>
> >

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4Bzajt1Q-aYD1uecd9crtKcOxNe0_XsNcJ8VPX4fJ%2BD8JtA%40m=
ail.gmail.com.
