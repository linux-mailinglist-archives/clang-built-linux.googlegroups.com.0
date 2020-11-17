Return-Path: <clang-built-linux+bncBAABBHFYZ36QKGQEMKPXRXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id C22512B5C12
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 10:47:09 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id 190sf14366003pfz.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 01:47:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605606428; cv=pass;
        d=google.com; s=arc-20160816;
        b=iazAJB2s/TE81Dg/B7YKBsRkpLKTgS0DilnA2hVEaZEEQ8YBfglgxB+FuoQkgqf9uo
         +ymT6jL0XtoM+lfqA+PGm+xsxDtufCez9Y9aVXA71o9lz3P8QU/tOesVukNLB71q/kSJ
         m3JVLtS3ZG/S+cKE4OWKPEwOPsL2etEl9bPn59KP/lv5zwbFP7e2aYWOMSvLIA/opCjE
         LknXw8Qyo4G8Un302HrG33qW9ZHryXjtItgozyDpoU+NvIbGK2qJ9sU4fINpQUUtVjRP
         6cP+/FegeehQ/MIU20aDsdVN2bt8vHh0UK4FUIccKEcp5K12iLcT8vnng9N0rc42F+aT
         CQ/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=hCTlSNRijeB/9jDr5JfmxOhEL644t/6wMsyvTPhGNaM=;
        b=jyUllR2bEmnLX7HyZftK68GpilMlewlJf4aib+aTkk6d4jqHz4u9gKkQ1mQoih2QA4
         uTPc0tnaBYJZh6z6XfqtgusOSWUPZ4U/28Ro0HaEaO8JzBp9KnC7T1PKKZkgK/r9Bo9H
         spm25nCKhNi9tAORLf4OasRRN1FvhvA1ih0a9JGnwfrJ9UUrdRrY9pfS2qf2BIR7JWUx
         2bFtT8RGhd4+9MH7QO9Bm6ArK7Z3Xba3JGdQy4WduciXv7pQPfta9h8KWREPOrBJiqFN
         9vttJpNUqo1pv2m1/HM/ZwJmpRsQqGkmyj3rVMNFBC8zEinFz7OpAh77fSw8KsO/qpKh
         4NAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jEsBo+Xc;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hCTlSNRijeB/9jDr5JfmxOhEL644t/6wMsyvTPhGNaM=;
        b=rjATK2sLHAy/Zc+hAcFYR+IouX42UVNDsKjOKBAWII+auYNC4pKqrkcZKccaIqRv/4
         lu+OXJi0WKvMWBDuvoHRTyfvNl9tGtS/T86Llk5aAKh/lgWaMwGj5GpUpWhZ3Zah6ZOY
         /Yy7ybd24eGB+d7zzldYWDLuQe3i/W/Ti6aQtWoAkJkzLhKv8S++szC/VswhfkLmqeVg
         U1vZkOfyWvPJFj3JZnHA88+dKz+PY8wkXlk2G8twpLx75XXVzHCm07uPBrolob3Fu8od
         LcnoyGQeJY8oNsuegB57GaM9N2YTqDTx80yOnjYu72PJKrrA69cz8Cxwx/26nSnDRAi+
         hCDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hCTlSNRijeB/9jDr5JfmxOhEL644t/6wMsyvTPhGNaM=;
        b=HuW7Y31BB8TjcR/aQjAIpXD9m6Yu5KEhTwToXFkR9XB3MbE/s813E1j5i3JosF0ljK
         p0i0l0dlRUjR08a2Eao1H8C71kcTnzyOURXL2RftOTIDVV+ccKsEuTnUWTZXcesD7RV1
         Nu2uGHOVtv1QgdQM0W+VoATroL4xwu9K5oRUBuaC31q9xRRZIjx0azCpfNi4j/E57Xet
         seEabuGj2LTEfQYSj3y4Pf3ixYMfZ0X0YSQCMuTDIpEK2ZbhTgz93ldHdPjv1NrROU+n
         th2AlsJ0VcC6gHK+OnAhwYpJQjMzoF1wp7mFP2h0tLfLtn+/TlbjLnXFz6Z/zMh9Ph24
         I/dw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533J7y74nvYxP6x8vK9e1aM4FdMXxlc7BIG2ejIzGFYxTtz4dUx7
	jeOqdAXxeH6mwub89xW/QEk=
X-Google-Smtp-Source: ABdhPJzQYfblw4jatbNj2d2Jt56patnPNeSjogPWnMFTU134s+nv9p22/uuIU/KWhgdXimI4QwnsJg==
X-Received: by 2002:aa7:8dc1:0:b029:197:5d15:279d with SMTP id j1-20020aa78dc10000b02901975d15279dmr381028pfr.71.1605606428230;
        Tue, 17 Nov 2020 01:47:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:be18:: with SMTP id a24ls1413219pjs.3.canary-gmail;
 Tue, 17 Nov 2020 01:47:07 -0800 (PST)
X-Received: by 2002:a17:902:402:b029:d9:1d4:1c88 with SMTP id 2-20020a1709020402b02900d901d41c88mr740182ple.16.1605606427718;
        Tue, 17 Nov 2020 01:47:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605606427; cv=none;
        d=google.com; s=arc-20160816;
        b=pXtJ5rYjt83VJeLGhTbxgOZlaDiv33OOdZngnpsDwfehSKv8VAMLza/8OLKqbK2ysC
         veGE3aOLyJTGpG/HTlq7YuYMvsu2/enfEFiJmv0PZ3HAtCmV4Fo3t/CRmwQVvmHvIP29
         y2VeCZwCo1Qqk8HqjLhjko+b6BE9WShT3UV4jnqtdkWWfGwqNGpdBJIDLwPAZvlyeftm
         L0N/9+tqwZr/V67ueK5q7BHQipm7g2PhLaIcprjv1X1p/FCLUQXH3uImhmOu4d/rZd5Q
         ZkiwfpUBBBi5hMVyejBqa00mKsOTMir4i3X5PD+k661Av4fzAgKiCncKJeL/JC10XaLb
         bAyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cUgkEyB5l1fPUy8edlUkLb9xCKMt/Ytg4b172td7Fhs=;
        b=TiF/DHlUV+Txy6XLW+w3YyJjzZSDtH6uBTv0KQYEceA0lUHQm5lDFfc93BiTflxGM/
         JSYlMvfHM+6wV/8HPE8jXQcSSouULnDn7jkSeqgFHYHkKGkA9o/58GDt8NPX3dW8LTXi
         K9YrO0LAhkT3pBRmXXX0T0IgXs7V+ZkgRP1BlkQka/PwWVzaIj4aglgmxz3NWVV4V3Ni
         kk/2E5d+kthGKBSb8/MljW/RS2H3H+/sMankOly7eTFySR5GgyXyCh52ibQFOukh5Cpt
         e/2LZ9yKkePcmJ0hysPgoY1HjngVBF5OvaWDcbWqzkJ6MLcNdurey8rTXlhkc9Ve0Q5/
         y/8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jEsBo+Xc;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id bi5si1150723plb.2.2020.11.17.01.47.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Nov 2020 01:47:07 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 212E12464E
	for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 09:47:07 +0000 (UTC)
Received: by mail-ot1-f52.google.com with SMTP id g19so18767701otp.13
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 01:47:07 -0800 (PST)
X-Received: by 2002:a9d:65d5:: with SMTP id z21mr2236766oth.251.1605606426366;
 Tue, 17 Nov 2020 01:47:06 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYssjT9+BBwGrjgVOwqVM923GmEtShQV8pVFnsu3X09-ZQ@mail.gmail.com>
 <CAK8P3a3DAVK2Vy-Hb7AbbFwfRnMCkwtmw1L5EivSRdoZ17hJ9A@mail.gmail.com>
 <CA+G9fYushaXDdg7CEU-CTmqpdGFNS_sMGPXXgiHj1RuUwxyK2w@mail.gmail.com> <CAKwvOd=gzo1eWADp+y0COoNz77Y51Rj0uWtmcYvJKOpjusJGsA@mail.gmail.com>
In-Reply-To: <CAKwvOd=gzo1eWADp+y0COoNz77Y51Rj0uWtmcYvJKOpjusJGsA@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 17 Nov 2020 10:46:51 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2_1xpdNHBas81ytUYS+LQRj3taHsT5B1zQhpDq+jZEAQ@mail.gmail.com>
Message-ID: <CAK8P3a2_1xpdNHBas81ytUYS+LQRj3taHsT5B1zQhpDq+jZEAQ@mail.gmail.com>
Subject: Re: [stable rc 5.4] arch/x86/events/amd/../perf_event.h:838:21:
 error: invalid output size for constraint '=q'
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>, Anders Roxell <anders.roxell@linaro.org>, 
	=?UTF-8?B?RGFuaWVsIETDrWF6?= <daniel.diaz@linaro.org>, 
	Arnd Bergmann <arnd@arndb.de>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Brian Gerst <brgerst@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=jEsBo+Xc;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Nov 17, 2020 at 12:57 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> On Mon, Nov 16, 2020 at 9:45 AM Naresh Kamboju <naresh.kamboju@linaro.org> wrote:

> If those all cherry pick cleanly; I don't view them as super high risk
> to request stable to pick them up.  As Arnd notes, we only very
> recently got i386 to build with Clang (thanks to Brian's series, and
> others' work); I'm personally curious though, what's the use case for
> 5.4+i386+clang?  If it's anything Android related, I'm curious whether
> 4.19 might be of interest, too? (That will probably be much more
> painful to retroactively support).

I'm fairly sure the only point is to maximize build coverage over
all supported configurations, not that anyone is asking for this
particular combination.

     Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2_1xpdNHBas81ytUYS%2BLQRj3taHsT5B1zQhpDq%2BjZEAQ%40mail.gmail.com.
