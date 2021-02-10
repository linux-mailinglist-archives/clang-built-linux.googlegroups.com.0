Return-Path: <clang-built-linux+bncBDRZHGH43YJRBEFCSGAQMGQES2KJW2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB5C317265
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 22:33:05 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id 7sf1703243otu.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 13:33:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612992784; cv=pass;
        d=google.com; s=arc-20160816;
        b=XNzvEw2+omW4xUzo8U6bzQ7nV6QRDhWn/oOWEDtXLKjsGXWjT4R2phRoHUngnfuJxM
         ED1PcAouFP8gnXkodSSHW6T7MQwB9bE7vHs/HsysbMLT8pC+M7XyjrulwyfJlrJlx6hW
         ObHyfpWe7QZ9sKq74Ly/vXd4lVzHl+oo9v0a6rhK0gcXtBuLqlryUogta+W+qr0l6jpE
         XjPadA0ESRv7SBjog4DPj+IVZ69CxE+9hxsnCHOUKbeDJGWKOrQ9s7u5g0k4qSNaAdxb
         rDBR2Ln31TBy8Bt4OXmP2lpSNaatezoXfHautS4CSThJQ959FYEk178lYzP2x7HhZe7V
         WWbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=f21vSBsPoujoix9FzijM6HNbc7ENeYN+FC4rhA4oq8Y=;
        b=DGDaxpoU+/5LE56ffOsUPrNVM+VtK7MW9r81j2OsTdCD2H/knuZS/Pb6OWiG5AohpM
         BguIP9niBf6HSrdWXpzj4CtphUXHqin7mn15ShDFgYJRkWzKU1iNf0rVosVbYEGW7ZHy
         tNNG7+CoDXAuta2ROxRQop5iGNxYfnLqsyrWqmoUE7AFb6EVvbvo7A7JdnldJLH1LKP1
         aDMkdizEnH27ChwAokDa0h3tmAC0NmuIHRWg04nl+sXsl2+BJ/jjfhtd/DhTIKYT0hHM
         R5t9FupptlRfXAs77u/oc7fYEXrhKyuMpos6lbTDjms4QpHOw3DH0/DTyDXTJ4pRNys4
         je1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pYlcOC31;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f21vSBsPoujoix9FzijM6HNbc7ENeYN+FC4rhA4oq8Y=;
        b=e/3sK1kKj6mGlbSLt+8YMl2ewpXtHB1wuob/Nybq5goiLeXcb91dsEHf9r7wvd7I7H
         pVPXZOzLL77xnEsr8zt62Nd6THx44mlN8DPaHAMa3Aw+UoQou8rCVsAhZI6PGT5vCt5I
         Sv0qjL3Sim+kds+mZSE3767D69gWub8ucSrTRuWoCoTap2lrJ/E8qVJBsSTQ/Vkk8+ZS
         eDwNKySRZmt+nKESFV342r2ZbI5hJ41emda7L6Yq1l/xI4Hgz1rh11AFb4CF0DpRsDDN
         vh028DP4gWArbU9ndOMeuIEZJ2GQdmlHGzBGVKSt0fzeaAYTz0ZZfS0WQ1h3Mz/unaO0
         YzCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f21vSBsPoujoix9FzijM6HNbc7ENeYN+FC4rhA4oq8Y=;
        b=XByEzSF6mcqZxkO5Ni8O32KlSJgKjk+uAIJDJnRXblo+5/h62HbHVzj0+ODsvYsX5S
         k7eb3YpE6qLiKf4EhQ3H+LUodXpnyw9lREWtMjQEV0eq+Nr7SRfY5134SrY3/IklQ2PN
         dwWo0vkQ7fkywF+8u833USnZXljg2IAdM4j5GpDeN37eezjr1lFHg0BiRtQiRNiy4Eo4
         uwuihE0rD92C2/FotIbiQOVEGbJGdCWFEGbGFeCQc6O/+O8mKR8+ztf0KFAS/adotJI3
         WTaK5HueNsIVFFYuByW0AS8CkMHWyaVNUN4PElR2+8Na05v7ye9I9HncEADFofaFi5dx
         0TiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f21vSBsPoujoix9FzijM6HNbc7ENeYN+FC4rhA4oq8Y=;
        b=IAuioVWPU4ltUUDdxbJ+NoOnW28vulyPgxxW//RWJ4rtNkIshYaMVeg5fyenHhcQSQ
         mhtNOLjlxTcfM8JqLvIubai6LAL8Wxekpj60wIVBdTJWzpB0LvnjFudadXw0Sggf5nnx
         e36rjsfDoyMv1EvPQ4IX+SRsMmmshKDTs8RHRVSKTfbkQ1svIZSufIHyHHFV++JUXLVf
         i6fxoGRlCe1v0a1p2w+Yyuq9l1uMnM2CN3fA1RcB6u/SFeG4HmqsBjNH70ZLIYPbWIZc
         jrEhyjl02A/t6ApYsoMRPbY/przmy749h950hEor9WvFXi6UGIpql9/K8LalOJ5cQopi
         2vJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531J9Ej+WDlKeIVCRgUs70WvzRNVvk/XWmHlYvVNpzua/HdGA/Oc
	74TTt2KTdDUawm4Zx6vHQIw=
X-Google-Smtp-Source: ABdhPJyJD2ZocoNJoe275ZJ7QbzWboVW8H0dtLyn4JNQm8VbduNKl9JOK2dnUMvTKZWxyeplYmmwFA==
X-Received: by 2002:a05:6820:165:: with SMTP id k5mr3523535ood.73.1612992784716;
        Wed, 10 Feb 2021 13:33:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1156:: with SMTP id u22ls940129oiu.6.gmail; Wed, 10
 Feb 2021 13:33:04 -0800 (PST)
X-Received: by 2002:aca:310c:: with SMTP id x12mr730095oix.72.1612992784396;
        Wed, 10 Feb 2021 13:33:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612992784; cv=none;
        d=google.com; s=arc-20160816;
        b=iSqF6jlQz7syHOeIHl/6dqmnHGG+6RhLcl0iJTV90sLzCqs42dsHVwm7Qkn2aL+cEE
         kYe3U6t0gCdfaleKpE/T3ql3waQiZ6EYEwLBJEMxfD039SpWDLZzqW58pTNXA804aFMh
         OXLZg49vTsA2LYUsmb17LXPKReyQJDuV6KCsuaggYkxC08ea+enlM3GOSzQyc5cDsTIs
         Hnk2W+sJJonVwWjOVuC8pE0X8VFmNxoAJ2bEYpucrc1iUHuhCuYshfS2b5zApDZBkvgE
         xBUk4c7NP73LmQCLrMAn0F36N1A5CAEdC8ze4d5fG5/ljnnyUBB5EgOzMUsk+TqVishS
         t2Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5LE7j5gplI8jND8kPdls3nHSnM1VI2W53Z3Ay9L0QwI=;
        b=UhHCcv6XMqP9kRP3oG1QS2D/6OnsNjB452/zmeFwdwkm2/6T7tNL3r0Gi4yIBuGoo6
         2IR0GmMb1G4XTcJjUsYdiZVULjbByFgDyqFV931+g6+mRt6bjxY2ohpmbJo3WlHe8M/c
         NjgaKJp8TyS/sgeMaHfarQuZDZ0/5PHUgQFtgpLGZzS/dSvsr4n523SSA/xAazjdT3Yf
         Egnc1KVSzRzOoO9VpvuDyZX8SiDw2jBY8Nu0mIKubDpavZlDdbZqWbgPh3TLqGOqEaVi
         8uuQwOok5ih9hPccG0MSZw2kgCAGBMHHZTaFAGIsYwkXZWmpF83lGWIZjV+pHIjwvRYJ
         XfpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pYlcOC31;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com. [2607:f8b0:4864:20::b2b])
        by gmr-mx.google.com with ESMTPS id b10si60950ots.5.2021.02.10.13.33.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 13:33:04 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2b as permitted sender) client-ip=2607:f8b0:4864:20::b2b;
Received: by mail-yb1-xb2b.google.com with SMTP id i71so3518289ybg.7
        for <clang-built-linux@googlegroups.com>; Wed, 10 Feb 2021 13:33:04 -0800 (PST)
X-Received: by 2002:a25:7cc2:: with SMTP id x185mr7154664ybc.422.1612992784118;
 Wed, 10 Feb 2021 13:33:04 -0800 (PST)
MIME-Version: 1.0
References: <0000000000003a897d05bb01d0f3@google.com>
In-Reply-To: <0000000000003a897d05bb01d0f3@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 10 Feb 2021 22:32:53 +0100
Message-ID: <CANiq72nwi93Rzng4kiZzAFWdebTO+DAoz9ytYDhsceaGfX7LJw@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - Feb 10, 2021
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: android-llvm@google.com, clang-linux-fellowship@google.com, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pYlcOC31;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Wed, Feb 10, 2021 at 10:09 PM ndesaulniers via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Mailing list?

linux-llvm is requested since the other day -- so it should appear at
some point.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nwi93Rzng4kiZzAFWdebTO%2BDAoz9ytYDhsceaGfX7LJw%40mail.gmail.com.
