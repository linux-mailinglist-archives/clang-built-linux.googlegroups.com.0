Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLHB72CQMGQEGMMSYBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC0A39FE58
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 20:02:20 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id j2-20020a2e6e020000b02900f2f75a122asf8248230ljc.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 11:02:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623175340; cv=pass;
        d=google.com; s=arc-20160816;
        b=t4gjLz/5cG8RlufxKWzauBedUHj7bFIp2+F09WckdvcmQfnwUPHwmtDXZ0EE7FvUx2
         2mRdKCTH12Dhc9EMTdqpBY9Nl31yRzHVhtDx5+c0r0MJaJbYmqWkY+YtrI/z55lSzFiq
         cje5U7u1SB1M4rIrEG/RzI5GwNdih9H2nC0J3ESJU6rmt1OZWlSuf1jam0DeNW/q+AOS
         0xsOm85mE5e2mbZMZUm/OFi50dyvWCa0CMR15oJ1EeDUP36SJjxGaGjuowHoqBjcY5Ls
         gqAS8g7kb9lBql3Ak1fEPzZUgC2pX9xKj5+MORqqJJ9k3L+PtHqA64iE+A9AnwRN5iHj
         brEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4VkpEfSZSKdtntJISq62v8qVwGvnUevU7blTidl9jwY=;
        b=J/Nqv09ezpPfwpw8ho1TRkXYBMpbeUVkWYZXGZoAdu0TdjyxYNItQMA0OjBEy9sS+L
         DWLdcIz2Zbx98Hmxvkr9w2RMI0Mp+eFtRFfbn5NEFIH5RaWZJ4g4QSSO4KcWNSSpwxxK
         nMLVBqahDgcJi2Jfh2quukDDPpZsmiWdoFSPzYdAHcM+tNK+v3i4DPMvXhKu9claAkLF
         ibq0xYrlkwUXDo8CxDy72v8CNvMN6TF2KJmb/FVCgHPmUPaALcRUvnsnmXhLiOF/cviZ
         IJijwjQoE256VEoWE3XnySHBWJ4DVelt0Yt91Lru95B/eowWedXys6nvJvh7djDtk1lm
         eVOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rFGOjeiB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4VkpEfSZSKdtntJISq62v8qVwGvnUevU7blTidl9jwY=;
        b=pLtZvUc0k6GV6yru9ogJwJq0WyCa3nPLQV5uMIE1z78IYlDkBfenYqqYmCg0/F9/mv
         UMDPE0t1nDainpg6mwcmQXiOX1Npn9WIVLdcsDCu4RqRzHTn03X/CpZ35kiHhkMSYcu+
         HN49Uhc8tSf0BIAo5GtEvK+yOduY5/dHTtrlyPuXM9o2ZWplWxjFJyeU8eIenNYizDEh
         4mQ3nREZR8tcSOnQpblXjExrQHtl0i3NzFcXI0LNtPmhjGjeq8LT9TRX7XWccgKcJ46m
         h+lTk4jpFLKZ3ccijZIbatziEtTbQ9lQ4YEBY7n+j+Ulvu8tVS+K4mou8qgA9aPualGE
         7wSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4VkpEfSZSKdtntJISq62v8qVwGvnUevU7blTidl9jwY=;
        b=pYQ7UCRjvCCTAwKp/IrZticaW6RZnqhQIHQLJzkBpWmAoGn44P8PRfSM7DHhmr/Qrq
         ShTIV7NCFd1h+ovYc56UkDPJMAErr72gvQWHyBqmheX9dzofCKP35s7KyjVnVI/bg+vg
         GhEVsenoreN/TTP745HwjNXst9KcrJRTmt7M6TZ7WLXmuqGAerRhRtqbUtQmOUX+1QlH
         716I0+KkmPzgZHbVmXKVcOpjhB9z9Jy0a9YYWuFs3uVp+AOjp17NUvX/R1Vp3RHwP+MP
         qXgjMJBFoLljRbomtL8ty9tcrJH66rgQB27NFz2lagKuvJbvW6xmraaYIUlyySGACWD5
         JjsA==
X-Gm-Message-State: AOAM531Kb4CSC240B/HjDnUAfSVk7Polj64qW3KSdrQSylCB3T5txeun
	jbULxT3IqkTH16BJkxsp09g=
X-Google-Smtp-Source: ABdhPJx0r9JCcZwmz7JHC67jOpEDyNMc4N+CJ0bccVrGfpIpCVvZegm+v3vNqwAcp2Ia+ygZDI4OpA==
X-Received: by 2002:a2e:9dce:: with SMTP id x14mr19581804ljj.154.1623175340206;
        Tue, 08 Jun 2021 11:02:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b0e:: with SMTP id f14ls1511485lfv.3.gmail; Tue,
 08 Jun 2021 11:02:18 -0700 (PDT)
X-Received: by 2002:ac2:5e28:: with SMTP id o8mr16384858lfg.460.1623175338780;
        Tue, 08 Jun 2021 11:02:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623175338; cv=none;
        d=google.com; s=arc-20160816;
        b=daEcaznN+pPVctpXSK0JXlDgEPMJUHKXOMnkMKajibyieu+pH1NTESiiqHrGhTl6KH
         JBt69y4hrBiuT/KIcoXU/oJhrovpTeqgu7geT369X5bFYgcHLOG73glTV6OOuFXocBBv
         mVY6eJYDq1sbDOnh6AzVbHyYQsfAxV9OA7AW93ROfoJTnj4KH0LTl6bpnzfSNA59XsHW
         rEN/r0j+lJCifpwL+JqX3NAmEnuTawX1huEF4iSm1XMYRuo5jMy0JdOaW1/Y4zFqeBkZ
         Y8PcWwwq1kBJWcutXn3R++ebPkszrvqQzLpUP/dm0THN0eDGNfcx5jo9IG1UNLlk5ctw
         z1ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Y0v8TWawlc0xsARrULDRYgNxYnOCMAWaJylv+Uephv8=;
        b=YPGuQGN6dni6eXXl8V3SJNI1CF9oT3fzsD+PfZdHOP/NlafXBOzUDAeC5cPNpiHcCd
         7eQIH9Qg7VKgl4saLTi1nYEhqDyiBXvF9xn4wTDPwJAXKxnuL8Xr92SiP3fQVwHnaBCw
         SLxgGj+SPWdbknpJcACfzhpDkn927JoXIogDz1vO7W8nLvE6H+3U14DIJsQIfPg1XMnD
         97jqC7jOk/8njVsu/yjW9KtPQqgWKllEjmRc6YSELzLSAlpFsQBpqsOIjk+yPRYsEF1D
         WPX21PHOTW91GtKGQEPNFk7yl9CPbtQ5jTBLEeQkRy16afsPqVhlmBvoLhA2G4f8grdn
         V26w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rFGOjeiB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id 79si13067lfd.1.2021.06.08.11.02.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jun 2021 11:02:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id u18so8019998lju.12
        for <clang-built-linux@googlegroups.com>; Tue, 08 Jun 2021 11:02:18 -0700 (PDT)
X-Received: by 2002:a05:651c:604:: with SMTP id k4mr17163976lje.244.1623175337836;
 Tue, 08 Jun 2021 11:02:17 -0700 (PDT)
MIME-Version: 1.0
References: <8aae1be7-d9bc-8a55-0bbb-0d94e6719baf@redhat.com> <202106081050.623BC5C44@keescook>
In-Reply-To: <202106081050.623BC5C44@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 8 Jun 2021 11:02:06 -0700
Message-ID: <CAKwvOdnukRtNwG+OLYakDK-9aKJX=0mCf9nA=49XxYxVUZx8zA@mail.gmail.com>
Subject: Re: Recommendation for LTO type (thin or full) to use for Fedora
To: Kees Cook <keescook@chromium.org>
Cc: Tom Stellard <tstellar@redhat.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rFGOjeiB;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235
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

On Tue, Jun 8, 2021 at 10:51 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Mon, Jun 07, 2021 at 12:36:23PM -0700, Tom Stellard wrote:
> > I'm working on adding an option to enable LTO in the Fedora kernel builds.  I'm
> > not sure if I should use thin or full LTO, does anyone have any recommendations?
> > What do most people use?
>
> ThinLTO is used by Android and is much less resource-heavy at build
> time. Full LTO exists as an option mostly to be able to a/b test results
> and bugs. :)

No. FullLTO is used by Android. Android Common Kernel made this Full
LTO for S (within the past 2 weeks or so).  Every pixel that had an
LTO kernel has shipped with full LTO.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnukRtNwG%2BOLYakDK-9aKJX%3D0mCf9nA%3D49XxYxVUZx8zA%40mail.gmail.com.
