Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBT6DYP3QKGQEM52MRLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 62EC4203D1F
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 18:52:33 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id m7sf1367131pgv.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 09:52:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592844752; cv=pass;
        d=google.com; s=arc-20160816;
        b=S60ug1Wpk7usSZffzrard8QKq1xggFGeVHbeqyVEaWeHgxeosXnmRF94s1JbabrYU1
         ioYFWUs6X8BklgB+Bac8KR1oQbh1QtOSdp82nanndybVa8dQu+QaYOkyAWzn7MamaM8h
         G3MjdW+GJKJhslilE0miMq0SLMd1SQi/7UcpflgnvC7fKpkQX4c6Y8S+qsZoMFBw2A0e
         /3XpRiVNvsP74YgML3aDYTzZcD5Mkfl9NTlDmeBItVMaiLeJ7aVNnr0Sl6xfDlEitEcj
         vzAUewd27bgU699IJeEevByfScwcPTjuX5yTfAbQQo07BRrlcKIbzRviIcsiodcIZf+8
         t3Jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ngN6R0qRB4T+rpaBDHcmoX6gKIbMQtFc+x5tYl27ty4=;
        b=iWq3FylesEWML9gZUfb0OucSd2SikHGHXYfwS/WTG8BrjGFN46+JZ86qzPr36z0dWZ
         GefEwy+xEOal5By+V+INVcuqM4YWuglBrFkuaqYwjCwJBTbo7aq15PEbGBqprMTQoAQV
         2Rdv9UjQ8ZGYw+sT14mPvqWUUiBkX73lvWYjeCyxJSQbi6jEa7R4URaS7dgUOWjFOCGI
         Ul53vFfYaTsd63gJpWIBEbwG1XVmoE6LIwPkMbmNlRu5ZMx3DmVUi9Z+OYlX1zGa9ERN
         5kyjX/Mvi95UHZ/5ygXbGZqTgb1xWDqusFgSc9CE6P3ZxsXEtTdgKI2RQ7XtTONAJNPf
         iHBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NZt31C1u;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ngN6R0qRB4T+rpaBDHcmoX6gKIbMQtFc+x5tYl27ty4=;
        b=kTxsoxK/P5Kvye/3aS3IN6hpZfBM794I1pTt5gfFFyOEvKdju3oxrjo4U3mQvYQLY9
         P1/fDQO/QkqY+eU0kGtUOkTPK5hXscSwHGQuL/YKo+bpzBb/SrEJ7HLJWzjLluz/yEyf
         Y/UrOOE0YbXslfOA3J98WZoJff7NioQiavLaate+2YWtXfaYH6o9D9Ib8xO5D/DRldow
         Jf8tqI4A7pomXXM9zEGrOAWkCgrASlK48LnlOZIsDYkij90KU7I4upPfGE9acMAfrNUP
         1MRvDaHT9L8WaBzNSv3W7VYKlyUdlBGfhtM/garnzfO6QVAdVPCH7GwuWJ8Zb7Y6so12
         0NHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ngN6R0qRB4T+rpaBDHcmoX6gKIbMQtFc+x5tYl27ty4=;
        b=ir3HNaRb+X/yXwbsGuwLgvWT4Tc3JLIklSH+0oyuAlEZe3Kr2lnbyqDNhdpv027jHi
         VCXNQJKLJyzb7vKinJVwbXU4VIQvkDgFHQRUvwjeOsghBHarzsBippJgsTWp9iTyG24H
         99XgmHWtEvq7YR19PheoQ2/pVV1AvF1mGODpNjW0TIUENIP4SJSHzwrD9ixsMnfLw6j5
         jGF2ltd+cDa5l3GVumLZPlGyTy6J1VXZpv+kaYGsgf4G9nYWr2cwA2lZougJV+338gHT
         PQvX/IB8BkARTfYvvnVUTOBvHebvUWAEF8F2r/f03T0pyKOK6ooaSyC08WnW81M+RfkF
         I9/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ngN6R0qRB4T+rpaBDHcmoX6gKIbMQtFc+x5tYl27ty4=;
        b=UH2O/cXCZ6pVhulq6e+XmXv3YQEKBbrOXhW+T9mTlFXY+YY9RnEaJ/xMo+yCzVoanu
         xb1keZIiVjamg5XB9J/eeOal8IHYbXuBpvzZXUoFn7/ExWJh6VO7UJ1O4zq+ARAUqk8O
         KKJW3VyDWHXnsqlo149oEfsw8xWwEjZ4bSMAa5XyAxhcVraJDFNSQYPIEaxkTQAKjY1k
         HRsvK8ktbShlFMU9fF6txoZdnJSDByWJlSS5gDdnJVdsmmL91+hJs9sVGIQ10VvnKR08
         JXa6io5hjGXxKh07ATraD8QOgt6LS3JF8cGvdYFrNVnfHU+9zpUchlENCAGdVtgncGZ9
         CV5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321lnVf9JToXNj2sHpy2XoOTKReiwfBypWCK8qjXMClFlDHkQA/
	GytYZeP4iR2rwERsdNxLlsk=
X-Google-Smtp-Source: ABdhPJw34k/5MvpIXPQBr6X3h3+v8CtNEvMGsLshz3G01No9HHxnaKcSxGvBK23H9uZMp7CxafH0GA==
X-Received: by 2002:a62:6286:: with SMTP id w128mr20554100pfb.117.1592844751941;
        Mon, 22 Jun 2020 09:52:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:582:: with SMTP id 124ls3220362pgf.6.gmail; Mon, 22 Jun
 2020 09:52:31 -0700 (PDT)
X-Received: by 2002:a63:c142:: with SMTP id p2mr13545929pgi.345.1592844751567;
        Mon, 22 Jun 2020 09:52:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592844751; cv=none;
        d=google.com; s=arc-20160816;
        b=eMSVAVJ9Cs3H6+M0WbPtNKvo7IfxyPerS5d1Ik+DmoA0E947W5bAmQ0fA6CjApSCg1
         5aYzwG7E/eqjrnUxDgiI859H3mwUCnUlMnT/Y6+4TKJP36OjnsP6MwRcXEMZMS6u0pb3
         yt4Xzxl5vv19nhDc7Wt3SopY+s3V7UEkWFJq7of5J8cT+6RUTSgKUm2j3qAyNCSdO261
         n/sZULsG2cG9AfWxJ+Lqr1NELesULRncaCI08mjZlQtqDQH34dd0rJBJGnq45qee8BBP
         HOkUMqaigRBvTGctpw2eomMA5koSNnx/Q2GPINpUKKC2SGHaExlWNF/npeFxosB84xp3
         6L7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ml4K+H93SeXCIMnxVi3/6PCWqKGjDCE1p4VhTbgYGy0=;
        b=0Jd2v83PPa3DpQh9hXi8DM3vnrkzQ2r6A7uJp0xRNnXhvxR0tNUcG07IiuhUIQm+sr
         nV5SfqF720Be6CUG5s9J1fqjsd8abo8ObJHMX+UTRzrY4aND3fSistqPtcMX1/gDr4cn
         1M+A//AwAXZXEK4GZPfIHmXetNQLL2Pd7VJWY5G49cPp0MuQgwHzX37DiR5TYlWXUCR3
         XDCHxQf1SCR5nRsHq+Bw61fyeL/ugwGFm0zX87YZTIFlxoN2R75jeAmKuRFCJKNTDS7X
         O3HcJ1FpS9bVRohoEbEYHSeiq4tx/0EaixiK9aWKCx20pg7xn31Pm/5HsLao85EP2EjN
         77fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NZt31C1u;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com. [2607:f8b0:4864:20::142])
        by gmr-mx.google.com with ESMTPS id q194si930574pfq.4.2020.06.22.09.52.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 09:52:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) client-ip=2607:f8b0:4864:20::142;
Received: by mail-il1-x142.google.com with SMTP id j16so4452633ili.9
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 09:52:31 -0700 (PDT)
X-Received: by 2002:a92:c0c8:: with SMTP id t8mr19085670ilf.176.1592844750896;
 Mon, 22 Jun 2020 09:52:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200622155018.6043-1-sedat.dilek@gmail.com>
In-Reply-To: <20200622155018.6043-1-sedat.dilek@gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 22 Jun 2020 18:52:23 +0200
Message-ID: <CA+icZUVGve+zN59_OOsW-G732uXmBGHha-+3dwE13OK338tH7g@mail.gmail.com>
Subject: Re: [PATCH 5.7] x86/crypto: aesni: Fix build with LLVM_IAS=1
To: Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Cc: Craig Topper <craig.topper@intel.com>, Craig Topper <craig.topper@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NZt31C1u;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142
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

On Mon, Jun 22, 2020 at 5:50 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:

> Craig Topper suggested me in ClangBuiltLinux issue #1050:
>
> > I think the "too many positional arguments" is because the parser isn't able
> > to handle the trailing commas.
> >
> > The "unknown use of instruction mnemonic" is because the macro was named
> > GHASH_4_ENCRYPT_4_PARALLEL_DEC but its being instantiated with
> > GHASH_4_ENCRYPT_4_PARALLEL_dec I guess gas ignores case on the
> > macro instantiation, but llvm doesn't.
>

> Cc: Craig Topper <craig.topper@intel.com>
> Cc: Craig Topper <craig.topper@gmail.com>

That should be a s/Cc/Suggested-by/.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVGve%2BzN59_OOsW-G732uXmBGHha-%2B3dwE13OK338tH7g%40mail.gmail.com.
