Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYH4QSBAMGQEEQ2BDLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E90D32DADB
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 21:09:05 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id j21sf5860827ljg.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 12:09:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614888544; cv=pass;
        d=google.com; s=arc-20160816;
        b=aBeW0iJoad2EoEUzrjX0f+pAbWXBTu9Ma9QZAQv3FlbPncs9zjJ1HIis7/GXjbcpUy
         xWLCUHWFYFri2vvbbeYbQbZh9frK32YyaQk2dSbxM+/IyXmXekHtE2RDe4b4RlvNB7Oh
         n4672nFS0RWdcGuA8/pZevCEp1WVLhiFNRMSEG3jFQqVnr0yQT9Q23qK7y4+JtuHFZfD
         ChArQ8NJpPufkd2kWg4ZLPQw2BSNikJitCX7GanSfdOM3ORfVhf2Sa+6901fXHCed2uT
         ispHeevIO2TIIPsbS7ZaVsahNAVZbxvihhjZfXQBoHsg2dwXzov1F02ukgW+Vm730Q26
         tPoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WqjJ+rJX2gTeRJPAUHz8MPY7CJ8jpYFCERND++d8Dqs=;
        b=XxgldR/qcaiJ31SEM+2qXatOTw4fxodgEl2xirUNDlLxJqSiKdPHYebZDUFIS5oKEl
         cLF7S7w4Mq0qKjYS5HiC+WyXprSKYxS9zmtIS6kpUiCjzPVxjf2B1GaVKsta9G6bcjkX
         u1Y0sH3VhDLtZMB5qPAUXjuai9dFBOzGf3+LJles2n/ump+OiIn/A9qzdvwnEFls3nrn
         JQvi1MJNzHyy4m9gldwTlVnXO9qle04PfNU6WJJAYpfgKu/JhvlL8Y3sHlVzp1YLGyAA
         IZL33awXbk8IgXGPpjAf6bH2gwkIvDXGKuYxF2YjTMj/MkSsv3o2VK18yy+dVZZfZwEg
         0G/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HC2DSxt1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WqjJ+rJX2gTeRJPAUHz8MPY7CJ8jpYFCERND++d8Dqs=;
        b=Kf0NmKzL/jQsOI/uFM6aChDs4VWjtccP5UP6N5dj/Lv/rHnQvWA+EcCIiMrQtcVesD
         Os5kMECMMZtmkzcGEmYudifBWUfSAStlzM6+431+rS2vP/lbisbXoeJkFLO37qU8SbBP
         AOkJdidlm4M47A6Nk34mnczlHy29skPXUuBCnHdCSFOXbTLoLoJpgWUAGEaRK5X8AV0W
         10Liw4nJcmEbuRDtGZLNaLleJRfcyy9G2mndYKQGI5LXGkeUY9TVCEYcEPkJIB8UFE12
         852IlTP8sqbOy3plmQzAlJaR/JNKcXGbEhrbeMFDwfYUp0uDyfFFN1KAPy/ygh34pVzS
         U3rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WqjJ+rJX2gTeRJPAUHz8MPY7CJ8jpYFCERND++d8Dqs=;
        b=EcrTXBiesujAhsaFf1W4rX2puhrn77+MRsYYfvk8E5orGw7MH463OJrml9iwThY/NS
         hCLINiwbt6KU75XvfDCHY4ecM8UEblVHv4hPrtPf/FWh9OHAf9mMG0OVBhqQFrs3mBj1
         dHrLk+cY3zHpzGhiH1IO6ogc/34YI8eMAa9uskry0UtJsDqSaGcyVAf52rGa++EjFvW2
         Be2Mzw4ugXm5GX8N4DConRKeudOR5t0F9ycRo7A9eP83TXf9sDznDBWhOgZGsID4zJMO
         4fNrhFqaCHsS3phO4UB/kUXr0bxNPzrZ9plglZR6+NLM5SE8WnUhHgB4OBnOloKVoM4z
         eVBQ==
X-Gm-Message-State: AOAM530fOd/qIa8xFXHCHsIgHh3m+K2oxhqkCht/xUAuX/Ron8fRhmrf
	9emx0zEZlL9U+cMZQV9DxRE=
X-Google-Smtp-Source: ABdhPJzELn+mO0g44v4+WMKc5LZc/jbJAeYtS73aZJHtN1APXu13/0R7skclFn9bF9KSsFs/0OP7aQ==
X-Received: by 2002:a19:8854:: with SMTP id k81mr3307450lfd.366.1614888544823;
        Thu, 04 Mar 2021 12:09:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6d4:: with SMTP id u20ls1955204lff.1.gmail; Thu, 04
 Mar 2021 12:09:03 -0800 (PST)
X-Received: by 2002:a05:6512:34c3:: with SMTP id w3mr3107585lfr.437.1614888543814;
        Thu, 04 Mar 2021 12:09:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614888543; cv=none;
        d=google.com; s=arc-20160816;
        b=wej88X0nvrl4CybsnmvGhzw0WgTjIT93jYgVmpKT6KXNyKwIVrlwGKxrxDeWdrfbVY
         qYQC0e9IJgpRGG+H+rPME4M3BbYFuGnOA8XhE1KHGrEY759bMgFTL5fSczUSJzG0zH7o
         GxaqFXBekkA6YA23MD4nZSif7eoCmH7pXs4fimkJuVmBidvLlBVBPEQOZOF13Uo/kAm9
         8Vip3RJl2OgYAzuEd9Rhsq6o/KTHetKMpg3phJpkGemikaYh1yVUIaEl7eBSXWGXZpfb
         QLHDGeRVEDMZADvz2qnSD/QOutQ3YcEGrdmlCfd6WbIyFDJjVCLSsNPwYG0bXsw0j60o
         WPNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=78PiX4iDkW3NYiWRZO38aCamYcWLnJ+1dhK0TdRiSeU=;
        b=tQ3qdP2ykn7j4X9CE8QxTyrIHPuIWvrnC5TZxB2wsbKVFkwAvHJnIzGJMRSI5WQUk+
         f2kqMY++BZmBT6w+PSpZrj4ZcytCV2TM4CKYA8zWrf21nhSTPZTbbcW6hV7EWHVHBpTy
         pOXl201L1ArJTgDAZBeP4oahu47tZEqf13eyBKn6tc9Bi7k/uBWE7V+oljhRYPFXeGV9
         xwnMvs691dqs5Z1R7YOWnwCGQTg+yNfd+pMJMdGpIzdYBNTrsRs5AKgcQmDecyyO8gxL
         ZFPlD2wiiDUIl67/q8tSxTVchXYAfQgNdA9GH31qnNk++hKHmbIvO+BlHuZjZmePl8w6
         JdZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HC2DSxt1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id p18si15984lji.8.2021.03.04.12.09.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 12:09:03 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id y12so22017049ljj.12
        for <clang-built-linux@googlegroups.com>; Thu, 04 Mar 2021 12:09:03 -0800 (PST)
X-Received: by 2002:a2e:868e:: with SMTP id l14mr3235989lji.479.1614888543363;
 Thu, 04 Mar 2021 12:09:03 -0800 (PST)
MIME-Version: 1.0
References: <202103041153.F42B50404F@keescook>
In-Reply-To: <202103041153.F42B50404F@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Mar 2021 12:08:52 -0800
Message-ID: <CAKwvOd=DkVdDDr0+ZKnf8a4Hc1zrW79L3UPErBX+3MUrVghPNQ@mail.gmail.com>
Subject: Re: per-task stack canaries for arm64 (and riscv)
To: Kees Cook <keescook@chromium.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HC2DSxt1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b
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

On Thu, Mar 4, 2021 at 11:56 AM Kees Cook <keescook@chromium.org> wrote:
>
> Hi,
>
> Is there anyone that might be able to give this bug some love?
>
> https://bugs.llvm.org/show_bug.cgi?id=47341
>
> Right now Clang doesn't support per-task stack canaries on arm64 (nor
> riscv), and I think this is sad. :) Notably, Android doesn't benefit
> from the recent work done to enable this in the kernel for GCC's
> implementation.

see also: https://github.com/ClangBuiltLinux/linux/issues/289

I'm heads down on trying to get LLVM_IAS=1 enabled in Android. Once
I'm done with that sprint, most of the machinery is in place in clang
to get this working, so is probably not too bad to implement next.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DDkVdDDr0%2BZKnf8a4Hc1zrW79L3UPErBX%2B3MUrVghPNQ%40mail.gmail.com.
