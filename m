Return-Path: <clang-built-linux+bncBCUY5FXDWACRB4EW6T3QKGQE7M352XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6812B2115B8
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 00:17:20 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id t18sf25550982wmj.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 15:17:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593641840; cv=pass;
        d=google.com; s=arc-20160816;
        b=hROFJVGO9cBoPiflj/HpCnk2V6EYltTbgMV3wJuDGEGl9qvsZfrrs90L2SPRv9G6FO
         L1AkmNBlwwy8aehq/Ks6TVMXa0KK6hIdZauyF27X3ukCGXbZdkYUJ/LnGiPoTNLxW2AS
         SyN+BeRvslpjMAUTGsTlP7qGIptCMuKVZbhGYRybWJVGHtRPoCenBAToxfOk334Tt+Be
         vVrNwKSmQTe424zcBqzYLL9QB4CRQOclCufLN3fx3obhVqY0ABaoklFAGHr46/ONe6uP
         /Mu54G4NvpH2X7djDx5lq4LAhFbz8YUbily7eWe8qlZFlhoN5qD68KTwqkrsBVH6kgo4
         UT1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=vTgKK7Uml1ZemYYCO2agII0IzYhk54sn1zXsypBLBGk=;
        b=zJipJxEdbNk98p9rM4/XS924vw//7oDiD/AVGSOcwda9eZGZ0tJrwiTmrxm/KHQmIf
         OOs2UurvfIrocKuCNp/shkuGx434epyCQ+uFhAcgGJSS4H2KCToFdyDNTnZTu9SPJQ5m
         dHb8X655+OIh6wUYS5ClN54QyxPC8i0xnGywZWf8848hQPttZVMxlWGP4DcD1WiD9fw5
         zUI5WebJfnUxbmbSXjf285dmMAIMg5KWZ//2vwZ0lhHCO0a9S6N5LYjtYLYPjNvuIo0q
         4NkSe55h+RgXDyud9ZChyhLG+BCq5BtU/NLsHBH/1607T4vj22WUIz0z3TQDEk0KS5BC
         SpOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xgu2wjxM;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vTgKK7Uml1ZemYYCO2agII0IzYhk54sn1zXsypBLBGk=;
        b=rqsJ0rEoapRbj0IsdT/526/xdaz9k6XYtHuiiNoibB/+xTAypJooHTMYgI4XhxzJl2
         k8s/HhpRFLgYJSCAnAOYeMPIetI2lWfNrRn6aKKcpb+fSEp3igvIk7XB0OriMXCz9rxh
         8W+NKNd2coGz1thToK+bHcmYiv54KELYrGsJWLrrzZ7xCJKYOaVCCcMI40mlxi5xKHdd
         7VCCNFwZgssMQ60e3tcZ+kfJabi6C9lTpZ7x9Lu3ETIX+4PmwsB4wFYRsEc89SJJlqkP
         fNgMuSHBhp9596FIpIWrRA5SWIhmPIsQ2B2JymwgYxnfyVnUYgP+BMw5wIRyurAt79cu
         WXtw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vTgKK7Uml1ZemYYCO2agII0IzYhk54sn1zXsypBLBGk=;
        b=JPK/S28H+1h7D0x7s2sr5gJzvGlx1cH7iKd7vmIB3S6XuwrxkfA3z/ayh1QAVWfmhV
         ZrCT7NdnOvCkihrlxqgk/1FpvtNv0sLDABsPKUHDkiouIzaIyd3uYHAJxSFVrvZ9FER9
         rb36tSFIN49WnzWwgDwXEINRfzDWJvSEnQRTSN396fyfDSQbSnci7BiMvXgptmxBHFoE
         qOa7Zl/WowsAWdihZtFhk2n1aaaLtTuAj4CMXWyhN96heQFq9FxSZFoeH0yMWx4nfhNl
         fizEmfaGE8aPG3BdEPFMmjXqy4KFqRKZ8dowTH38d2kFwlO74Ec7d0pzA5Fz1eRHSbTO
         PWbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vTgKK7Uml1ZemYYCO2agII0IzYhk54sn1zXsypBLBGk=;
        b=lyxCrrc0Xv577sAvUItkP4jKV0fEo7mCO0MT3rINju6M77jNe49qbw2iLw9q6U+LSx
         8UocmWT4ee6YZH/SYRIFzfEELroBZq4Jr9mDm/Q9N+YnOZIQFh/VkqmwPqE3pzJiDFmy
         yKv3Hlmoiv1Stz+FDoMfHOvK3Z69FuwV8iVVbtigOKhI+ZGP7LdsGxHX1LkxMMwNQW2g
         t0E1sDx5S7ViuRo5cTdqdRYaC+jiySRF0BNcUbWHFutPrOUpVYfPSFaU9mZFA5gPlOJk
         A3Q29tbO/t/jBVnLRdq7cDbeGaHqKyWHbyHblbM+ByM3yAUS20RCewHLylPNBTb+yNxM
         JOwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301Up9DAW+0ixrFLkygaZZez6RM4rDbTmyJj7lUjEOLcsWBpcU9
	cjwXxDXCuXUW2bswbA+wB2M=
X-Google-Smtp-Source: ABdhPJxVm/IhInvJgC3QEq9GoDGzWepsmZtqW4wjY0DAN8O4H5TysnyoyfuzemTe56QfKDRnTF3YwQ==
X-Received: by 2002:a5d:4687:: with SMTP id u7mr30163956wrq.357.1593641840106;
        Wed, 01 Jul 2020 15:17:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f58d:: with SMTP id f13ls4655301wro.1.gmail; Wed, 01 Jul
 2020 15:17:19 -0700 (PDT)
X-Received: by 2002:adf:e7c2:: with SMTP id e2mr30490604wrn.179.1593641839510;
        Wed, 01 Jul 2020 15:17:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593641839; cv=none;
        d=google.com; s=arc-20160816;
        b=An3b2kKASRhRSSkmSsf3hqiimtHOs4WhBJ6jfk/rvVkCJnOUQ7TGYX+9PzjUICQv3J
         ET6YeBH4IcMRNTpBfo8KD/wKQIVSg/32W2Ea+y3d5AEWzo756bDWWs3oLLHFunGuS45E
         9Kpd+VSqAY7/1Aind2YZGk5madXxBKWYQvwomfWULQXtBspgyOvnZYD1Pr9jKz2BiAV+
         YTcEW+vZL3Mf5i5XAwaP2vkw6s5DylxbwNGdNTMpQI7Q7fpyqjQqMpmzh4uDYDVTmC5V
         /pkXminQH2649wm28KVnGFAITsb3kf9GYs3oWrlxxK13IZF/RSKNDHScama1PyXH206D
         BTiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0hjOP2xWJYBFB1lJ44pZ1iwrgg794l/jK5E/p4AXI4Y=;
        b=R5ayglYoLfrErfj3ssZdbaidkyEzPBTeE86fH0MiiU/eHDhS/X6EfIZ4l53+nCfY9d
         BSQNQ2TVYc384LsAXv5xeNnaGBifilAEVzlnsU4v+9eNuLv8NGkBbkHte6aduFpRLClg
         vhWj5TCVPqO2xVI39XtJLZsoGngvw2kfnXV71NXcet/94/be3CQnrQPiRlfKijeljK2b
         oY02piYCzd9SN3nhM+sO663YErT5QwaybI1oqXm2xbaegDXD14R7155lev7KIW5CoIOP
         F0417Xe2wMb2S9lySD+H2k97F7cH+XOA2EmfMRWFZFYt0ChRlSkZfCyvE6+PSiiNUuQw
         yO5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xgu2wjxM;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id l4si370647wrw.2.2020.07.01.15.17.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2020 15:17:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id s1so29125087ljo.0
        for <clang-built-linux@googlegroups.com>; Wed, 01 Jul 2020 15:17:19 -0700 (PDT)
X-Received: by 2002:a2e:9bc3:: with SMTP id w3mr6345365ljj.121.1593641839001;
 Wed, 01 Jul 2020 15:17:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200701175315.1161242-1-haoluo@google.com> <aab03e4b-2779-3b71-44ea-735a7b92a70f@fb.com>
In-Reply-To: <aab03e4b-2779-3b71-44ea-735a7b92a70f@fb.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Wed, 1 Jul 2020 15:17:07 -0700
Message-ID: <CAADnVQK5o1uhJOXLKAbf9Hp_Y0fVsowD3DwRWwBd_++KTTOJHw@mail.gmail.com>
Subject: Re: [PATCH bpf-next v2] selftests/bpf: Switch test_vmlinux to use hrtimer_range_start_ns.
To: Yonghong Song <yhs@fb.com>
Cc: Hao Luo <haoluo@google.com>, Network Development <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Stanislav Fomichev <sdf@google.com>, 
	Shuah Khan <shuah@kernel.org>, Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andriin@fb.com>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Xgu2wjxM;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
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

On Wed, Jul 1, 2020 at 11:04 AM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 7/1/20 10:53 AM, Hao Luo wrote:
> > The test_vmlinux test uses hrtimer_nanosleep as hook to test tracing
> > programs. But in a kernel built by clang, which performs more aggresive
> > inlining, that function gets inlined into its caller SyS_nanosleep.
> > Therefore, even though fentry and kprobe do hook on the function,
> > they aren't triggered by the call to nanosleep in the test.
> >
> > A possible fix is switching to use a function that is less likely to
> > be inlined, such as hrtimer_range_start_ns. The EXPORT_SYMBOL functions
> > shouldn't be inlined based on the description of [1], therefore safe
> > to use for this test. Also the arguments of this function include the
> > duration of sleep, therefore suitable for test verification.
> >
> > [1] af3b56289be1 time: don't inline EXPORT_SYMBOL functions
> >
> > Tested:
> >   In a clang build kernel, before this change, the test fails:
> >
> >   test_vmlinux:PASS:skel_open 0 nsec
> >   test_vmlinux:PASS:skel_attach 0 nsec
> >   test_vmlinux:PASS:tp 0 nsec
> >   test_vmlinux:PASS:raw_tp 0 nsec
> >   test_vmlinux:PASS:tp_btf 0 nsec
> >   test_vmlinux:FAIL:kprobe not called
> >   test_vmlinux:FAIL:fentry not called
> >
> >   After switching to hrtimer_range_start_ns, the test passes:
> >
> >   test_vmlinux:PASS:skel_open 0 nsec
> >   test_vmlinux:PASS:skel_attach 0 nsec
> >   test_vmlinux:PASS:tp 0 nsec
> >   test_vmlinux:PASS:raw_tp 0 nsec
> >   test_vmlinux:PASS:tp_btf 0 nsec
> >   test_vmlinux:PASS:kprobe 0 nsec
> >   test_vmlinux:PASS:fentry 0 nsec
> >
> > Signed-off-by: Hao Luo <haoluo@google.com>
> > Acked-by: Andrii Nakryiko <andriin@fb.com>
>
> Thanks!
> Acked-by: Yonghong Song <yhs@fb.com>

Applied. Thanks

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAADnVQK5o1uhJOXLKAbf9Hp_Y0fVsowD3DwRWwBd_%2B%2BKTTOJHw%40mail.gmail.com.
