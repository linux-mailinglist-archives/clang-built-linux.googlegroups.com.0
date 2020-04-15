Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBLFG3T2AKGQE54ZHXRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id D75181AA938
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 15:59:10 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id j15sf347507lja.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 06:59:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586959150; cv=pass;
        d=google.com; s=arc-20160816;
        b=tvUM+ED5wMuq55LD8wq63V1YxgbWwvLavfRV4j4m0f1fXdUyFRrpWFyma2hyJ24RXb
         AYCa4E1wbUSaa4m5tqzgsV/UTBojd+JgN+3HrkOTiy51zZxubZOhvUqYVsmIehdZE/Bx
         CRhKSf+4yoFjnTr6ZBIicctpXUeGU2J0XDNPRXAugulpndPWDD12YV0uPzMeTKqXrrjV
         +xgXFoMtNbSv5sjevQ50OwL68eL+nvp9ZzseHNg4qe9j3Xy0lM4GvUGPd8fF0Rej9jfV
         gBe3CPA92fSYPQe9d12WhuGIaZT9DHYi8ea73ihoWjPWPiNjtED+qFyrjF3Cc7Q6iX3U
         f/SQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=m3FLpdnsOvwH+QvunugqXnBjF6FN1KzQs4nN+tpd4bI=;
        b=1IlwkQlkvONrbjcQ3NiwAs/MCv1ciPPgvm5VMcuz+hdusUwed2aeckB6N1Cw8i5Lvd
         yHN9mku9cHijQXg5/E1g+La/xzYEg7N7yW6ShcHM8jJdHurHXQ+ALNPTGjhtFZLezy9X
         PGDWburJsstw252butR31NIdaT34rGb6dQxKV06Y4r9f8RK8A4NXi9D6nO42pSHxZrMD
         sPHHIDjzFUuSfjaUrZaUvNN2UFIbLhr22MRvkdxqerUD6Bn+hVXFogTNtq2rTKpPA6Pn
         VvCxpgnQWWuPPC4yFWWp36F5SNDeTn8Jlx/w2Y4iJyyuMzka2ZEtBkEFIgso5MU8nHh6
         aLbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NmifIXPz;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m3FLpdnsOvwH+QvunugqXnBjF6FN1KzQs4nN+tpd4bI=;
        b=Knp2CpohUnsGnUXtPa2aHXRD3XLjdqWKYbfEl9xRjMUMqHc58WcX1QkCheyqCYN6aF
         +MQhOlu7+KaOUHasMvD8TIDHlVBmroPwq7ThJXZEpsqu97CXS4k2nwlIJtmUIjvfkkJE
         4f74hGhAF2z+O099oI6YyxniTctFZtzNyQXDLpYKf/drhi2mUtwKPD2FufifMC/1ayy4
         ocp7hGH5w7nCJZo5ytEgAm7550GLvAIaRRgp6FQjcnuMDcGCRBHnfYpehEUt2dpYDdDv
         YqDGdCV225ayGFs3usWpylXV73TeURvw6QekHhdELMUU4xaSbboshmHz+Deg9jjwcCdT
         EGcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m3FLpdnsOvwH+QvunugqXnBjF6FN1KzQs4nN+tpd4bI=;
        b=PmPgdKY/F2aFj5lxSbP4fYdHbFg4S4zZZny3JwtHUgIhr03iKVC7vFQ1+PrFqJubc7
         bYUhXtZj3UYFyn4061SUbghsm3678BwACKVkzHRJz1evDFkfGNvLYQkum3KWgKf6nLSO
         p4Ojcdb4UzyhYyGBjtj0dQ4PF9vUL2vDZhnTdnerOrwz5NWHdcc1TMUTpZiULOsXizxR
         oN+8CkqAEAFB6ocGtXu5X3su2AHFB3b1Q28lHtt8eqQ/CJsxKMNb9gcho/9BQFwFkF8M
         JlCE5Nn1EIrndTe3oE1haQ0RK6MTNbLwVpJpexND/vmWfCRCSL2dW5cbk1c3tkem3zr8
         OJmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m3FLpdnsOvwH+QvunugqXnBjF6FN1KzQs4nN+tpd4bI=;
        b=Jr+MSSbjpjAlBKfu3w7qJwXWRoRqnpHJ11jWwNhpcePm9sPHgHGtEu/DxNfFnVkB5K
         8FQ6W5x1FI2+hN+ElXJ5rMpRawwjyTJZh9OJfWLslTr0Y9oD7G7GCbXAo+AAPRgNSrt6
         cfyV9tMZLDbuC8X16hXE/SbGbcB7J3Hnc6ryBwoXqmTD9ijCD5HpA0XKzdeX/pYMk3h5
         oc9Q8H4JvTeLBiAh9tHRLTrLWur0rs3YhCovLhfok907BArZPCAsOdewZw3J5tFL+tA9
         vqxqji52Fvy201XFUJTss/BNooaGVolkmnILOduvqM/F/mbs5ik5kxvmodstHICCuTZz
         LxOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ9bseAfsC3+3RMwTJ/SjLhWTpSzHKz7E/IHrJgD6Wxookp4e/n
	b1Jjl/TThRMSXeAwWc9xgP0=
X-Google-Smtp-Source: APiQypJyYrK6OuWq3mVHCC8F53HYj6Dx/8ciSfoiXMiOILT54A++SDMRgQUTqjxnZ1KmSWC9+jhh+w==
X-Received: by 2002:a2e:9dcd:: with SMTP id x13mr3163406ljj.120.1586959149061;
        Wed, 15 Apr 2020 06:59:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:488:: with SMTP id v8ls986521lfq.9.gmail; Wed, 15
 Apr 2020 06:59:08 -0700 (PDT)
X-Received: by 2002:ac2:522e:: with SMTP id i14mr3147544lfl.140.1586959148120;
        Wed, 15 Apr 2020 06:59:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586959148; cv=none;
        d=google.com; s=arc-20160816;
        b=ao4Arl8Fi3BpfvmvgBHSM0Xqeap4S3puj1zqUPjG9JvRWCHPdZ6fKbsqIM/rdTBsN8
         yjjVtXTgvaYZXxMyrf87grZ2f2/gTfC8OUdRDDtO1IlE0LGoGz8zDfe+Xx5FJt3ivWBw
         JJj0EThz5SbG2HOzOMb2gGPk5m7XmO0cG/tLLvGBPfIjnBDueTfbwrZ+8o6LI6dAyjyT
         ld+r8W0hgP6BJYOiy6A8Rg1RJgeoUTuI3pTxrGIbaCccOFk0lWsL8IhyigdbScaKciNQ
         /Mch6AdhFFYNtxOgud69WY2SN6XZy25jhaEDQC281x9l39Dgr5xyL80mexWpjHGNc1pB
         ZHGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oNzqr4W0kmnZFd2IVVOD4F7CEhwCqXToSvFcmKkrVR0=;
        b=SWQSEs44AJiaGEtyomz5BlUPgC1EZSiA3Vg3iCbl1S6H9sGHXEqP5x5OJsaL1mGCaq
         9JDa3DMxVMT2zdgvIqBCVrdgczAmwbpDdU1FcawN22scOn6jYLHFNgpIapQLBaW/HRJl
         ZEROXqgv0qa/1Um1oTZDPBt98SP2bwFi418yOvhkl13nMfz+wDqSsYgBSJz3Rf0AjJD0
         9ODQtVlSAtfeMC/bU9Mrh6QYth9zfNFmklPfbiIE+rdmIGc5FtgEDr5lIA1uuz4bJasQ
         aReb2VUSO/AWDSB5p/F14KWBRcJnFalU/pdct//VlbhW5Yh8vgWjDLldA03xApJkBg1L
         UIlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NmifIXPz;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id p5si892517ljj.3.2020.04.15.06.59.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Apr 2020 06:59:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id g12so11358210wmh.3
        for <clang-built-linux@googlegroups.com>; Wed, 15 Apr 2020 06:59:08 -0700 (PDT)
X-Received: by 2002:a7b:c927:: with SMTP id h7mr5303390wml.122.1586959147836;
 Wed, 15 Apr 2020 06:59:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200408205323.44490-1-natechancellor@gmail.com>
 <CA+icZUUTEEZww3qT0jfFP0ZgUPXoF1_uOHMT4ZecrQxumE1Zmg@mail.gmail.com> <CA+icZUWq=_qjvAf40PqQAj3tQ0WAZ2QAR9hojTuYqZH_=RWd_w@mail.gmail.com>
In-Reply-To: <CA+icZUWq=_qjvAf40PqQAj3tQ0WAZ2QAR9hojTuYqZH_=RWd_w@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 15 Apr 2020 15:58:56 +0200
Message-ID: <CA+icZUV336Y5YJ3OUYzXGfMZGbPSCt9YBVBRhiOnRCNQzc2z-A@mail.gmail.com>
Subject: Re: [PATCH] x86: mmiotrace: Use cpumask_available for cpumask_var_t variables
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@kernel.org>, 
	Karol Herbst <karolherbst@gmail.com>, Pekka Paalanen <ppaalanen@gmail.com>, x86@kernel.org, 
	linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NmifIXPz;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341
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

On Wed, Apr 8, 2020 at 11:36 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:

[ ... ]

> Feel free to add appropriate credits:
>
>    Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
>

Re-tested with Linux v5.7-rc1 which shows this warning - with GCC v9.3
and LLVM/Clang v10.0.0 (and snapshot/pre-release of v10.0.1) on
Debian/testing AMD64.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUV336Y5YJ3OUYzXGfMZGbPSCt9YBVBRhiOnRCNQzc2z-A%40mail.gmail.com.
