Return-Path: <clang-built-linux+bncBAABBBM6S76QKGQEWAEPB6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFAB2AA06D
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 23:32:38 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id y5sf1921696qtb.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 14:32:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604701957; cv=pass;
        d=google.com; s=arc-20160816;
        b=rAV5OQTz58NeQLcpVbH3wx8jlbUyUkrQM0V5o+poCAej6roPzB1dbG3FJAV/V9iRnv
         Eb63XacjLHlVM3XJtFOCOSh7EDo2K+o3wVdq/r3aP1XQ9hGOnplGdXf0WV8kg6tdvZbg
         vPc+6VlwjzGGWl/r7i3y8sH9hl08CUv7gjnvcfcDiE4KOGPKTnb2OvqTo4Rtdd6vnNWB
         8OVJY3rq6hODi8qj6Hlax2FohQKE793Yp+wC6MzlNnMZAXp5Yxs70Ns/vhMkjoGMRIPE
         W4ARJTWe2gPHml6wMc3zcTkMWLC91Y2FYCT8bJORwG8vYuxrYYPYCxLM28HDUSmWezZu
         ADrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pY7QPKYf3287GpwHSMU5b+QVjtqjEpvzE0i+HqFW+XY=;
        b=nTj4E+zcSBqwAUs6g6bLZOFhglTjZuCu1zGsPwS/LmpKbTG4WEcBTyPGEOvI+k8JFN
         X971zudGsTYn0cTr+wR7H8lV0grHpq5khDrkQaPqbLhtC0Tt8bXfwA7l/OaCu+L9xa1f
         sElxhkHd48k9FYADbHJ/jm9DgyF6pb73Av13ZBkdeVBxJ+NenXYoz81Ym25gLAJQKHhv
         haUR9ySyKbJqg5DfIUzk2HKUpLYzEsm4ahUwzDF173Tbf7lIyw9LJ5sGuXEQQM7C3Zb+
         xSc1uNdT/c5acSaE5+S2LimCFT9rdseBrFFqG8acHeHORcJSpJ8ie8INwzUPBmh1dArn
         Ul7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LX3odbfb;
       spf=pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jarkko@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pY7QPKYf3287GpwHSMU5b+QVjtqjEpvzE0i+HqFW+XY=;
        b=APSiH58k5Y6ke8V8VmM7+0cX1bObnZEJekdAm3mJG097OEHhsZjaW93dzR1KzzPCdc
         z6qibmMpcRLSiX3OorkjvwrwBQ+sl46jFaorbtE+gdUe1rw3k4do5979wcb+K4GJK367
         GTgZ8uII5JtDHHvX7AbwLy3mzbFDJ9VwV053f26JolgykcTs/PO7gXKEJ0pievCoXKgo
         7g2OSb4vghFBSHFQOgIcnfisyHDII1UWlusoubQbfX650s5H2O5m4tDPMIlTDDEgBp76
         uGZ7uuV49CQ2ylDQs1faMrlYA4PWIEZHK7odJsZoFYZ7T9RqQ3MvSDwoajDjsLf2PWfN
         MpiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pY7QPKYf3287GpwHSMU5b+QVjtqjEpvzE0i+HqFW+XY=;
        b=PoySiK6MDf22Yhl40cSAj53EPBoTnV6UDDBbqOOArbH+/+LB8b3nl5U6FBxr0jdHiy
         kXzV9ENt4i+ZWJ5X5Qp2HFZjU2O/2GVfh/ClL0pighFpGZ5NonsCnpBiMLIp7afPz0Fx
         gfPokBUKhESwa3F/3CA4PhsWxP8E5HmaK3SYJqg4nKOXfAR+feMESi8IJILmfzYoihSm
         j/XlFd9UnxOrj9BSFhfNdu/o4FQzPsfgpNk4FK5pH+L9fhMVD+ngxSK9hGGl6zU4jF4k
         up4WQRTGNJNxTLWZxm4OmGYn/oGhE8FzGXLb4FTs7+A/CG6xzIDyEaS64j37NF+HHdcJ
         /mAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530oyIlYNwrvvHIKwM35ifiTvU74jE8naIQ/fCU/eK6u2+Odrt8H
	5GbkuK6JRs88zYdstaoXCfE=
X-Google-Smtp-Source: ABdhPJw4wMTZ1SEFy1aqO07aB/Md51K92t2jvSaFKpQKaIEYraDdc43kaxDzCerriLIuTK8TAU0y6Q==
X-Received: by 2002:a0c:f7cb:: with SMTP id f11mr3855048qvo.34.1604701957837;
        Fri, 06 Nov 2020 14:32:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1248:: with SMTP id a8ls1285600qkl.11.gmail; Fri,
 06 Nov 2020 14:32:37 -0800 (PST)
X-Received: by 2002:a37:b9c3:: with SMTP id j186mr3903482qkf.327.1604701957434;
        Fri, 06 Nov 2020 14:32:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604701957; cv=none;
        d=google.com; s=arc-20160816;
        b=sZQw9ApKL4SQp6fyU7rPQt1m1BYok6QILIrnrg1FQSPYhTdyKDrX97f1St0m4v8AqL
         NHFzGPMZdWEndz1UxP65QxaQsDd775rJYUxYy+GldCNWTy/Il/P1jxXx4DRqsm3ZnWqO
         +YkzcH1KNkNYDn9YaNw+tKfDHJdWeHaGQ+1u2fITk9sa4UuxB9tCbcGnqvISQydeozku
         HnrWU4KgPXdTlV+wFCau2Atz33keowK9Mj8aUKZ2RjtxYtg8nP54FATm7rtlfeDBrMOE
         2NjDB7ggDHBS5okAX5IKQOJhuZtQMT1exJrngQJEw0BMIQZ+8S8pR7QfNUSLdVPZ5lEz
         Hkiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3q4tWH7ei/emVjaLhy4hyRSGUZiVQMKl3xcroNcLWjs=;
        b=nB1AROpJyHpAkzQu8AuYmT7NDWkYxs/1RJPMsxldFYAzdW+R4sGdXv8fRwErBhYH9q
         y0ysxefH/TjLiWx5kI2jq2TuHXwCxr0FgP1/mBttjubJzaQLEyhdH22j0vyEu6Xekkgj
         iKQMMHGTNxoyFm3xrMJOTfWm6WyeYRVYhjVnQV1nJMwgsdN0Qgo9QISpcRW+BEU5dIXz
         XVwZ3evgaXFYR01lnP95/IxGNRSjKo0rsafgjscICvhZsEdAuoK+bowhMejAEXnIiEcW
         Lx7m+6DyvEoMoaoLteeo+9xBlbPpRWGbmT0dYuo2+k95mLu7DYQjZcZx/z9LytiXVNQB
         UiWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LX3odbfb;
       spf=pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jarkko@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g19si181048qtm.2.2020.11.06.14.32.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Nov 2020 14:32:37 -0800 (PST)
Received-SPF: pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (83-245-197-237.elisa-laajakaista.fi [83.245.197.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4D89820704;
	Fri,  6 Nov 2020 22:32:31 +0000 (UTC)
Date: Sat, 7 Nov 2020 00:32:28 +0200
From: Jarkko Sakkinen <jarkko@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Alexei Starovoitov <alexei.starovoitov@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	stable <stable@vger.kernel.org>, Chen Yu <yu.chen.surf@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andrii@kernel.org>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Randy Dunlap <rdunlap@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ingo Molnar <mingo@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
	Network Development <netdev@vger.kernel.org>,
	bpf <bpf@vger.kernel.org>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] compiler-clang: remove version check for BPF Tracing
Message-ID: <20201106223228.GB56210@kernel.org>
References: <20201104191052.390657-1-ndesaulniers@google.com>
 <CAADnVQL_mP7HNz1n+=S7Tjk8f7efm3_w5+VQVptD2y7Wts_Mig@mail.gmail.com>
 <CAKwvOdk8DdKEuSYW2j0LUeNVoFa=ShXPKBTvpUHakG-U9kbAsw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk8DdKEuSYW2j0LUeNVoFa=ShXPKBTvpUHakG-U9kbAsw@mail.gmail.com>
X-Original-Sender: jarkko@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=LX3odbfb;       spf=pass
 (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=jarkko@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Nov 06, 2020 at 10:52:50AM -0800, Nick Desaulniers wrote:
> On Thu, Nov 5, 2020 at 8:16 PM Alexei Starovoitov
> <alexei.starovoitov@gmail.com> wrote:
> >
> > I can take it through the bpf tree if no one objects.
> 
> Doesn't matter to me. You'll need to coordinate with Andrew though,
> since I got the email that this was picked up into -mm:
> 
> >> This patch should soon appear at
> >>     https://ozlabs.org/~akpm/mmots/broken-out/compiler-clang-remove-version-check-for-bpf-tracing.patch
> >> and later at
> >>     https://ozlabs.org/~akpm/mmotm/broken-out/compiler-clang-remove-version-check-for-bpf-tracing.patch

Thanks a lot for quick response to everyone :-) This ebpf tracing has
been a great help lately with the SGX patch set. Hope I get chance to
contribute to this work at some point in future.

> -- 
> Thanks,
> ~Nick Desaulniers

/Jarkko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106223228.GB56210%40kernel.org.
