Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBTHH36BQMGQE4CE34IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id AF55E3603D6
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 10:05:33 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id e7-20020a67e1870000b02902194e0620cesf2478886vsl.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 01:05:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618473932; cv=pass;
        d=google.com; s=arc-20160816;
        b=xL58XpFTTyenY/FTOulyqnQ7YL0KozbMyRtffRYpsYVryjTTe9+9xmEVKj2w73PfKh
         2DHmkPCvpcPH+sy598wwljaTULx8BawgFVHTv7rkwK2vi7cjxX/TAat5x2KLT1YML33W
         JauDeAHBwinKxhpsrF+TswxGsavLxSpyLDliIVLMF+QKakddb+J+P0WAZzP1BgWj6y62
         qvlbhDalvlbj6R5ldsnXq+KQqTyLkrK1gTWLDr19U0Sy/+OuAiCNKrHpUlUgfodSQExs
         5DONNRT0KXm3j0K8V9KGgZ+j8c5emObpHklSZ++n5aYdmR6i3coAWsH26S+L0tKcO2nk
         sVug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=wnR+px+j9HIBDykOt/DjfGVwV8qVD4Mh1TdWtKBZ8tA=;
        b=ghql1ETcIjzYnFqRqeNLSDEuNLbjx/cnCPbjjkDSgJUbc3tJ5hQKVA0rMaWCD/muwz
         iqWwBHAS9kT/IoxuOvdastAViHkqlcd5ry3xykaSYMgaq9AguFNrenBuBL5y1wuP04by
         +ck5IGJSkVA1IkvM9ekOP/vsYWvidOgMAybi6bwh7hC/OX5oE84d1BCbzIAamEKV6iOn
         0TqGbap5eDg04d9FJjSkSPO9Nhk11t5CnO1GwIXyG3GWo9gY0xsnu/z6DgA63T4UKxOC
         hfoNrGa1cREPn15go7m2C+JgzxRG7u9hAqKPkICdJacVOPn30BAXkiTCwI4woU+aPYXY
         V4Ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=da54tceN;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wnR+px+j9HIBDykOt/DjfGVwV8qVD4Mh1TdWtKBZ8tA=;
        b=S1jBdS4ifEO3neyuQSOJVCYchVc5WwCaANzXmLlWTr93JN+vj0racUZ3EnAvD+acZS
         c+izI/LhaxfKc15L6IRpGhf6iyn+zRRBA0e/WtGQhhjHS5sB0szdcD2QW7WY6hkmOnnd
         WCOgWmajMB8u5CNsM2xek7yHvASoBJ0dqT6FdKAsEgQYrg8BhexjX8Txe1Vedqy8/g8k
         nAeE8AQiS9Mocqlks1XWCOIyF0p0uMZfNaWUg6qHiyue2UD+KI2ObdYI2CQnyiKkL996
         Sfm/wuJLoVZERCEJ1Nm57zuLu0XcvaOwO7jnxJolQ+hwHbd8WbZvb+dRi6KsvweIE1I1
         J9fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wnR+px+j9HIBDykOt/DjfGVwV8qVD4Mh1TdWtKBZ8tA=;
        b=VVitwmNBrntt1aKLU/YLqbwrTIHe4kOTevsSdPAnCef0KfUrjv1X2uY9HzBhDwF8NJ
         gKENdTYbQI1RWlHY8AGCgiqcwDtAzkMjfAtDE64VgehKoL7nsU0DjfIBhH0DVtLTKTaL
         /zb+8zAKRSsu4eOMU4NICsMXeuSAqBj9RCigy+jAcRnJJfbM3NSPTdSRnVEOBl5HS/Be
         8tvHEOwmpieCA0boFoiboqBD7u1aYbJGKJFzrvyq7v1lU2zR/8+nTpO4QTY+fq6+6b/i
         Z0bRN6xqQUbFijx0t3z00hd+qMgAj43G9dLPDTHiMGzhZ3FQXGaLLH1TQX2g92Orfzja
         XXNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533v1T5QJZs8svy4f3/ZJbjhKNw6evLS27qogl/6wRPMuESGmcEt
	tlzFLAKzf4NZCVSQi6yFg9Q=
X-Google-Smtp-Source: ABdhPJxGbBy0RDLZe8yD8WOyoSfyHG/+oNVTFfmcWG+EGujaXzvvlR6vI5nYdhWOkHoUQHjlSn3Hsg==
X-Received: by 2002:a67:df8c:: with SMTP id x12mr1221004vsk.12.1618473932676;
        Thu, 15 Apr 2021 01:05:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:242b:: with SMTP id l11ls736025vsi.11.gmail; Thu,
 15 Apr 2021 01:05:32 -0700 (PDT)
X-Received: by 2002:a67:bc13:: with SMTP id t19mr955069vsn.24.1618473932213;
        Thu, 15 Apr 2021 01:05:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618473932; cv=none;
        d=google.com; s=arc-20160816;
        b=qQjIc+Y5lNCSS+DuOi6KRqowZAC9EJFuh96+JWMv7Icooak4JbVUgn8+ROaQFqD5Td
         rc7UD/kBgkIMbCJmIVXL24jcAdnSXRPSWLcrWz8ZRsVFyUFBTdbm3nSsO7LB5Ow023Ql
         mtBtUJ1uYjO3yrAQ5m5JlmCJv4naV2iPNVBFghJs9YMiNZpL8SbIMN9xiF7nv3mkRiRn
         WOA+YbuDk9aWD2b/NdIxLWnhZhrCoYkn8eKAcuHFpG+tWNdyD9JmqSNwP2ZTkQ57pvIY
         Y/QRerEZuJOO5b3UeSLRIHHGlqNsK0JKNhS/HTZlLALAQizkAsqoneJmQVgQwjB3SGVt
         40rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=LC1wwORrxX4s+QOHO85pxZXBS/KtIoUE4bsRAFozad4=;
        b=eVk0FYpvJRvruhWeQwOg1VW3nZT2w730zA4V2ijUlmGUXFwaKVnsDnidTO2V8zunL1
         KeU2r2VuEThlycm5XNTnjgbcykNk/E0ZCl7uQz/VUpJUMqCCU83hunsY6tWPtFR6o8jB
         gUB4k1/wfVQrMWqelO+dzmB7mN/vQ6CtxLhVKBEytu+xTZ3q9J+y5GibIlyIIfB0SzO7
         ZK+HTcaA+n/yeShDHKc9KrwF8KngFVsR7HD4OHqV6MXsLWtAPS6UZrBxauQlt8oTHlOq
         LSlSLXHpbcFd6Rr73A9fOJAClxab+5vroribt9vCHIYqOkAaF+ldmDk0AJ4+NpG2KLSb
         k/IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=da54tceN;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id u13si175176vkl.5.2021.04.15.01.05.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 01:05:32 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 13F856mi011959
	for <clang-built-linux@googlegroups.com>; Thu, 15 Apr 2021 17:05:06 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 13F856mi011959
X-Nifty-SrcIP: [209.85.210.169]
Received: by mail-pf1-f169.google.com with SMTP id o123so15541735pfb.4
        for <clang-built-linux@googlegroups.com>; Thu, 15 Apr 2021 01:05:06 -0700 (PDT)
X-Received: by 2002:aa7:946b:0:b029:24c:57ea:99bf with SMTP id
 t11-20020aa7946b0000b029024c57ea99bfmr2063757pfq.63.1618473905663; Thu, 15
 Apr 2021 01:05:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210415072700.147125-1-masahiroy@kernel.org> <20210415072700.147125-2-masahiroy@kernel.org>
 <9d33ee98-9de3-2215-0c0b-cc856cec1b69@redhat.com>
In-Reply-To: <9d33ee98-9de3-2215-0c0b-cc856cec1b69@redhat.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 15 Apr 2021 17:04:28 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQupbmeEVR0njSciv0X9FD+MofeB2Xm=wprEdNaO4TQKQ@mail.gmail.com>
Message-ID: <CAK7LNAQupbmeEVR0njSciv0X9FD+MofeB2Xm=wprEdNaO4TQKQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] tools: do not include scripts/Kbuild.include
To: Paolo Bonzini <pbonzini@redhat.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Janosch Frank <frankja@linux.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        Alexei Starovoitov <ast@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Daniel Borkmann <daniel@iogearbox.net>, Harish <harish@linux.ibm.com>,
        John Fastabend <john.fastabend@gmail.com>,
        KP Singh <kpsingh@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Paul Mackerras <paulus@samba.org>, Shuah Khan <shuah@kernel.org>,
        Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
        bpf <bpf@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        kvm@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        Networking <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=da54tceN;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Apr 15, 2021 at 4:40 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 15/04/21 09:27, Masahiro Yamada wrote:
> > Since commit d9f4ff50d2aa ("kbuild: spilt cc-option and friends to
> > scripts/Makefile.compiler"), some kselftests fail to build.
> >
> > The tools/ directory opted out Kbuild, and went in a different
> > direction. They copy any kind of files to the tools/ directory
> > in order to do whatever they want to do in their world.
> >
> > tools/build/Build.include mimics scripts/Kbuild.include, but some
> > tool Makefiles included the Kbuild one to import a feature that is
> > missing in tools/build/Build.include:
> >
> >   - Commit ec04aa3ae87b ("tools/thermal: tmon: use "-fstack-protector"
> >     only if supported") included scripts/Kbuild.include from
> >     tools/thermal/tmon/Makefile to import the cc-option macro.
> >
> >   - Commit c2390f16fc5b ("selftests: kvm: fix for compilers that do
> >     not support -no-pie") included scripts/Kbuild.include from
> >     tools/testing/selftests/kvm/Makefile to import the try-run macro.
> >
> >   - Commit 9cae4ace80ef ("selftests/bpf: do not ignore clang
> >     failures") included scripts/Kbuild.include from
> >     tools/testing/selftests/bpf/Makefile to import the .DELETE_ON_ERROR
> >     target.
> >
> >   - Commit 0695f8bca93e ("selftests/powerpc: Handle Makefile for
> >     unrecognized option") included scripts/Kbuild.include from
> >     tools/testing/selftests/powerpc/pmu/ebb/Makefile to import the
> >     try-run macro.
> >
> > Copy what they want there, and stop including scripts/Kbuild.include
> > from the tool Makefiles.
>
> I think it would make sense to add try-run, cc-option and
> .DELETE_ON_ERROR to tools/build/Build.include?


To be safe, I just copy-pasted what the makefiles need.
If someone wants to refactor the tool build system, that is fine,
but, to me, I do not see consistent rules or policy under tools/.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQupbmeEVR0njSciv0X9FD%2BMofeB2Xm%3DwprEdNaO4TQKQ%40mail.gmail.com.
