Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5WRTCBQMGQE7D44MGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D04352071
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 22:11:35 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id r19sf3380318edv.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 13:11:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617307895; cv=pass;
        d=google.com; s=arc-20160816;
        b=PmBDvD4Xax5Oov+eglOHEonX//SvDvO56c4XNHFQCj0LkTy0okd2lWfOPVYj5b5WNf
         Berp7RnWsG9Jv8Qm+A95UHckNLmJ1+0AFfABSZya0SY50QVj724f9WV4z2I84lPRu6Zq
         AqLFpI/R++HaN8KDSEaSucMglOWBNi0AWFqeWNW+DnZfbehmE9GiVmVuAijcVzhp5yiA
         7EBQdrKBWQuQzZAc3T58eHPQ/w+42acshocek2xQ/W5L606rFyIcTKXB/z4wdTe5DzGG
         1GUAW6mfMqfqRnXijmMEm/APEme/ZqXas/8ztSA2iT3QqiMD4NziJ77x85Es2Tdwew9h
         V4IA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hN1fwBjFgz1MaIBnfTIrwGqUrDCP8CSof30DYSYFdVE=;
        b=Csz795SATzBMkOmm6WgX7wkMsrjR5pPcQZUqjbhw7QdLe6dbC6sZZnvcJe5bMyd9bi
         ozjbVsCLQu4UI1IVv/yZ1KIb2hanJ2OtVsA9IoE8dnzNQ8DDFm5Dn3t3QPH8oTmPOMKx
         YNZUy6CxZ5FF841mGrnUYYsKU5FW6BAFfQ09+qJbm+QE2uXQoJKtNdnIlgqFsXuRBX3E
         5+ZMaULPFub1ee1XpGeeEMSjd/oD5dRbRNm2Ej1uGV+b9Wsg07iDi7coEfymOBjSlhOR
         ynHbMRX6zpEV20HndHiRUh5MItq9wmLwQAMAJzCjfwD34AZZxD7qQbJQFivGWDmPvE33
         B69g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aJWYheXy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hN1fwBjFgz1MaIBnfTIrwGqUrDCP8CSof30DYSYFdVE=;
        b=hOcHckH5zxJVzQ8Qos531/xhmoreL86QGzr06tQs7sMlEEZ2dyk2X5XF75WcKcaC0d
         LZo6NwDW6ZWtB7mjLT+sThx+jmtq71LtEvn0IiiFUkiJukVP2znAWnNKPktKm4qXEsRY
         gmxg5f09JT7GU7TSGntdaY579QGJFA2+mpPjqjlxL5zWRkSX6hnRraikLaL4yWWolPuS
         sUhZZLMRc9IoQr5JAxwudQ502d7VaMch1GjF3U8uTL8hqgHP9LvBWNEltSgb3mj74SyK
         dGJrugslHa5EAjqLfM3CLExrfTOEZp8yxUR/4IEZr4LpedGWRTJkAhsnwyj2/jAAp503
         +QBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hN1fwBjFgz1MaIBnfTIrwGqUrDCP8CSof30DYSYFdVE=;
        b=WSId/mZ1Zv+NKVxKwtjbbb2rQc/4u38AKxefVCHrIMBm4pxgDgAMASL/B5MGrL6Dz5
         zhL2bhDnXBHELa3ucm6AP9mTMzx8sNF3iEZo8GXnFG4Fge7B25+cTCgwZoJPS9xyqV2O
         uCiLDXBB9NlXughMM5wnzuEeGu3zIt4Ok0Vx+hvgCtvdY5vUiNFWjvt4RvXlqtCjEIwA
         9xWvyGDxdwEfmmGrDXui3zfonfX/p8cBiuzgu7QgMjsPZsp6DiBTpq1DFZpS6mtGOWtu
         af8xjBpsSPJ6e0Tl6MxbPaQKvAZh2NMq/x/sVxc3hLDyCHzhmkQssW9FnbJ+2DnorVyy
         ob+w==
X-Gm-Message-State: AOAM531i9s+7TX7jElY1jyxNSYpqxxg3ss5vZ2tmcU281kLkSiU9J9uG
	rPy6f2hHxAO4GmJSDNJlXlU=
X-Google-Smtp-Source: ABdhPJyWCVcttFZCUzayitIDJrRlPNgMrwsHnUmbnqlJDtgcxWtmRZZbttqhllAZROqtS3RO5cdQxQ==
X-Received: by 2002:a17:906:b20b:: with SMTP id p11mr11101823ejz.0.1617307895073;
        Thu, 01 Apr 2021 13:11:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d788:: with SMTP id s8ls1056336edq.1.gmail; Thu, 01 Apr
 2021 13:11:34 -0700 (PDT)
X-Received: by 2002:a50:ec81:: with SMTP id e1mr11816366edr.0.1617307894146;
        Thu, 01 Apr 2021 13:11:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617307894; cv=none;
        d=google.com; s=arc-20160816;
        b=u+aVTSYGJAe8UAhCg2jTTnNFstG/4kE5tiCRBRGuquBhdnK863+svZeuf4rnF5Uqys
         BovkT7jvkQyI0694MW2/hCmnraa3DqSo82AyVZVSWl44Gr62et+8isvjPqjI5etywVCY
         gX+k5poujFZlTSfAxnqnkg6ajHWCddP1wolhUNbEYGgQAXhDX/F8e1TYLsaVTQqpvDnf
         soSca8MuD5/Pr+CzgzhBEtXHEvV8YYN7ydPGKw6iT4s+wAHLPvuqw7u910CxaDDxJg+Q
         PYtplv9nBKSjF+y/NBBoMFYqgW+m2/FnpUloMZN05+bnx3U/r9EA8ILGBCfsuDueKjsI
         MR9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GhLRmu0zRkS5+CQv/Ijd32sE0WcWmEsVVfX1YUmswBM=;
        b=UsbNy4iP63uRKZ6QrLWOn2elZJAZn5UQjIEBRG6jZ8Xbb0InRP/SJlnA8OgPiruHS+
         MH6JmXHB3PYN4roH04I/SLHTODMK5dIeYh/Uem9rNaD997A+/WmjF9yidkb6Tz//Am6H
         QR61wtxoOOVBtVMGJ3+9lemNBeNGzVUTeh0gEDzsA50JNqudQhk3K99FiMUebXUQJ1VP
         5BuQC1iLoakwlYJ6PHlCwIMNjgNZZrwhiYYhL9CEs4Qw52Vrydbdzt21IZsKIDNR5QiD
         zSOptokniVbODA5m2PNJTrK/X7dETgW/MAO2kO+HYpg6caI6dhUAiTFqveZK8WvCIIy4
         +Bkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aJWYheXy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id ck26si709840edb.1.2021.04.01.13.11.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 13:11:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id g8so4588085lfv.12
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 13:11:34 -0700 (PDT)
X-Received: by 2002:a19:5055:: with SMTP id z21mr6464428lfj.297.1617307893432;
 Thu, 01 Apr 2021 13:11:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
 <87o8fa3oua.fsf@gnu.org> <403153ed-7953-c42e-40a2-6ad313acd661@oracle.com>
 <CAKwvOd=aCn9WqcZe8KgvvZmW0C0nUVL9+sjE_xh0A-ru-995Hg@mail.gmail.com>
 <20210401092935.43d3ed54@gandalf.local.home> <fd5d8059-69ea-cc6f-d8a6-0467906235ab@oracle.com>
In-Reply-To: <fd5d8059-69ea-cc6f-d8a6-0467906235ab@oracle.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 1 Apr 2021 13:11:21 -0700
Message-ID: <CAKwvOdnCD+6ACo0F7Zui-Poy2e6YWPogCz9dWXVrW5h2fiefaQ@mail.gmail.com>
Subject: Re: Plumbers CF MCs
To: Steven Rostedt <rostedt@goodmis.org>
Cc: "Jose E. Marchesi" <jemarch@gnu.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>, 
	Florian Weimer <fweimer@redhat.com>, Christian Brauner <christian.brauner@canonical.com>, 
	nick.alcock@oracle.com, Segher Boessenkool <segher@kernel.crashing.org>, 
	Elena Zannoni <elena.zannoni@oracle.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aJWYheXy;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f
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

On Thu, Apr 1, 2021 at 6:50 AM Elena Zannoni <elena.zannoni@oracle.com> wrote:
>
> > Since it sounds like there will also be a toolchain track, I don't see why
> > you would need multiple MCs along with it.
>
> Just like last year the toolchain track would be a substitute for
> Cauldron and it would be a completely different thing 100% focused on
> the toolchain. Here we are talking about discussing topics of interest
> to the kernel as well. IIRC last year we had a llvm toolcahin MC as well.

Precisely, recall last year there were 3 toolchain tracks.
https://linuxplumbersconf.org/event/7/timetable/#all

1. GNU Tools Track
(https://linuxplumbersconf.org/event/7/sessions/90/#all). This was a
substitute for the GNU Tools Cauldron conference that got cancelled
due to COVID. (https://gcc.gnu.org/wiki/cauldron2020)
2. GNU Toolchain MC
(https://linuxplumbersconf.org/event/7/sessions/95/#20200828).
3. LLVM MC (https://linuxplumbersconf.org/event/7/sessions/84/#20200827)

What we're discussing here is combining 2 and 3; it sounds like you're
suggesting combining 1, 2, and 3. I don't think it would be
appropriate for me to suggest LLVM specific topics (or kernel specific
topics for that matter) for what is effectively a replacement for the
GNU Tools Cauldron, and GNU Tools Cauldron isn't specific to the Linux
kernel (where as 2 and 3 very much are, or were).

While I suspect we can fit all relevant topics for GNU and LLVM
specific to the kernel in one MC, we would like to first get a sense
of CFP volume from potential speakers to decide whether to combine any
MCs at all this year, or repeat what we did last year.

Knowing when the deadline is for MC track proposals would help us help
potential speakers have a deadline to notify us.  But it's not clear
when MC proposals for the MC tracks themselves are due, which is what
I'm asking.  Not deadlines for an MC track's actual talks.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnCD%2B6ACo0F7Zui-Poy2e6YWPogCz9dWXVrW5h2fiefaQ%40mail.gmail.com.
