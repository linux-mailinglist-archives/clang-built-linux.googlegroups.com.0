Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYPM6DXAKGQE47GY5AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A498109496
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 21:15:31 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id l6sf6688148plt.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 12:15:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574712929; cv=pass;
        d=google.com; s=arc-20160816;
        b=YnY91VUS6QTLdzClmhrjPBeUzDzCmu+CFelqOO0sCSs9khsmJnUqGzTb4NznvDTgWx
         RmmuNyEdCWrDMs59mTJwSrb/jnxrtubSi76g/tIRJL1SzCExvaBARGyX6pe1aBzeWiQb
         1s1aVKBlAUARV/awIi2B4wMAzLN/wU9DIYFbncOilYH+nQhqMnJNti5aXegsWyW5EwdQ
         2ItiB+CAvIbooF2ZtFYtRz6yw1Kpvw0XZiamrz+E8XSyBkXJWvYqETFaQl03DvrX1A0u
         v6DaZyg6830fbc2WGdVPDQfLvlEQvqGxsoq+vmce3V7j19PYiF0/n7pc223JvE4Paekg
         l32w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AUwa7bp1K/jYDTmJBGp6iu2X7GfUjpwbk0FcFT8DIbM=;
        b=Blz0NpyVxJgOc/6aU0PnsZueMVrHYtV84FxJWDyh4zNqt7zdy0cCmHPRYJYUsD8GME
         ytQjYNH3+agluqDTUYqw/6o7ul/T3cuuqv9KRg12PxKgcgHv8r2y0LsqpPohdwIKUF8u
         Vcfkq6fgo+zu4QaK06625tXx4Q7e7T4aMVjZlDi9I9QchOOhp9I5v8mDybKq/aCIgoGs
         iJ1R1XbKZp+RUmQjSGEXFCrm1tykJMeCWYF/A38ze71M5JIjEiI25zAIXK3aEa877Soo
         ULhLXWAXvXa38kkwmJ0rW3P5h8lHhXuQkSl+Qn13Gq9Ym7ziC2rdC9AiEdDf3FgvhZFa
         J5tA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Tvfmu6fN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AUwa7bp1K/jYDTmJBGp6iu2X7GfUjpwbk0FcFT8DIbM=;
        b=rKB8J70+QaT16NJYbruKS+2VtJAIh2EJznbbTn0xb1TBaURMlLjNAyx2arI7gdyYEB
         MAnPkqDO6s3JS07fzHoAn+VZ3lupn9fuqUZFO7m6OJUexB3bdyCgDKkawNsRiKtzM5Lu
         uDe3zIdHOD8kwLSdsekv4tax+gFEK6DpZ66x8ucIopxT6i+Z46hUfRcCJSCQuP2sNhRZ
         5x+fQ9Ayt+YIoNYAWrUolFj5kaaqzS42sPy+NTwAmYWQLqJi5XYkxH0mB75FY/kCeDrf
         VI61r0qcE2QaeqwKf4rY01HDd5yITQH7LcAr8K9QOHNfPK5IUs2qavR17DMLIq5uHSkj
         MIIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AUwa7bp1K/jYDTmJBGp6iu2X7GfUjpwbk0FcFT8DIbM=;
        b=Rf2C+gqUDVgUiG6rHuq2B+ow+qDCVMNfAo/Pfz6jFR5g1MpeeZlMzDs5i3fF/NPT2s
         kv5wuDl0tjKK4KClnj5VsWNiNXcqvGjvHxsuxmkvfgKc9dWAF4j1s+0BGT3CLYX0HCaT
         5qWZE0PBaYTCveavMPGFdOBBmLm2HjS568cTgc48+uafwT+O6zLr3/SpIsQ5U2yh7tJU
         vRxymQUD28OExnZS4KLMX8UsbTnNcuA3Dg6gsQUsAbfvLoSkhIsKdAYJAER/51xVbXzW
         sNpuXbHrNzY5pnVfum79DuYmbkM2VOuKsDzQR07ZVXxug1PpmWH7Fa7SzvSPjvn9oq6v
         41vA==
X-Gm-Message-State: APjAAAUUO1+dUkxtBJwepSguDzBJzHhv+fM7inwE5nT6xZnkGeXfL7Fc
	TJ0GzqOFYPEp5Z/qU4tEitY=
X-Google-Smtp-Source: APXvYqw7+Mf+mE8N2KhCNVfyfvarAn1Z7sY6bz0DdbJb0s4WF4EgoaUqPR6l8cCgbtu0XUw+J2Ci+g==
X-Received: by 2002:a17:90a:be05:: with SMTP id a5mr1039409pjs.73.1574712929640;
        Mon, 25 Nov 2019 12:15:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:dd05:: with SMTP id t5ls4176677pgg.8.gmail; Mon, 25 Nov
 2019 12:15:29 -0800 (PST)
X-Received: by 2002:a65:620d:: with SMTP id d13mr35245399pgv.64.1574712929116;
        Mon, 25 Nov 2019 12:15:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574712929; cv=none;
        d=google.com; s=arc-20160816;
        b=MLGVPs3ImH7vbGr4307VlAyYhEC0KkojZ/6uZAk4sNTFMMBLN1RZa/lyrWtjpap6cT
         3fnKA2l0Azyj2p8siimOHzpdGizmprFPBiEhRYwF7X0GbDeq2gErB45YluCGvfTamq8S
         S41Uv+CWzw//78xE4ilRVaRsxg3234LjWE3dRfp3xwPcB1Uxd0M4E1zvTVP6pEyKBD43
         j91qBs0fXUnO29S4CUDGk9TLu7dugK4LvG5+8AL07dQZliqaJF9iW5oRTStAymUVbYCu
         zhr3nS6/4WtOyWdIHRze945xZtdixntaeg9dnFXWxyG9UMInAYuQgFLM0hO/ioUq6Pur
         wP1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XE60qzqDDu/QSjZjM0/sTKyHZau5FHQqXZ2FkpPYMQ4=;
        b=ZxkmAPQaPAnlun1/nsDzmhZcsXADsZ9rIPe3dbfrQ6MMT7xW3t5GV/ueWsSJQNCo48
         eTViHy9P/oTLOc1ESd5/n53eUnzmD1ZR05gVjCtp2THJu0FiX7K4NrNGA1IQ77nXPCVs
         G9aEMtVNGEP8AD2zfEOphKoN08PWxAZvlydGtApyfl4mfGZUJYjGqb4mwPAOBpEUehqX
         NDelB+7wOr3/Z6BtAMAT5bJyyycCXXas3rX/Y3ZJVFP1WZj0QCLia8dR3FNJT2jsObmO
         WymDchCTrfyi/JCAwKS/WrEnLkwn3jnu3nlcPO/aphNb4SG5B4HPfKrzJrP14qyysqMz
         QWkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Tvfmu6fN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id x1si296820plo.0.2019.11.25.12.15.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2019 12:15:29 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id a16so7090915pjs.13
        for <clang-built-linux@googlegroups.com>; Mon, 25 Nov 2019 12:15:29 -0800 (PST)
X-Received: by 2002:a17:90a:be05:: with SMTP id a5mr1039257pjs.73.1574712928322;
 Mon, 25 Nov 2019 12:15:28 -0800 (PST)
MIME-Version: 1.0
References: <20191014025101.18567-1-natechancellor@gmail.com> <20191119045712.39633-1-natechancellor@gmail.com>
In-Reply-To: <20191119045712.39633-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 25 Nov 2019 12:15:17 -0800
Message-ID: <CAKwvOd=3Ok8A8V30fccK5UzWFZ7zwG_zvGQV44S2BK4o2akbgw@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] LLVM/Clang fixes for a few defconfigs
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Tvfmu6fN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

Hi Michael,
Do you have feedback for Nathan? Rebasing these patches is becoming a
nuisance for our CI, and we would like to keep building PPC w/ Clang.

On Mon, Nov 18, 2019 at 8:57 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Hi all,
>
> This series includes a set of fixes for LLVM/Clang when building
> a few defconfigs (powernv, ppc44x, and pseries are the ones that our
> CI configuration tests [1]). The first patch fixes pseries_defconfig,
> which has never worked in mainline. The second and third patches fixes
> issues with all of these configs due to internal changes to LLVM, which
> point out issues with the kernel.
>
> These have been broken since July/August, it would be nice to get these
> reviewed and applied. Please let me know what I can do to get these
> applied soon so we can stop applying them out of tree.
>
> [1]: https://github.com/ClangBuiltLinux/continuous-integration
>
> Previous versions:
>
> v3: https://lore.kernel.org/lkml/20190911182049.77853-1-natechancellor@gmail.com/
>
> v4: https://lore.kernel.org/lkml/20191014025101.18567-1-natechancellor@gmail.com/
>
> Cheers,
> Nathan
>
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D3Ok8A8V30fccK5UzWFZ7zwG_zvGQV44S2BK4o2akbgw%40mail.gmail.com.
