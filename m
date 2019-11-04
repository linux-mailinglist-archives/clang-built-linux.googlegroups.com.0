Return-Path: <clang-built-linux+bncBC2ORX645YPRBENKQHXAKGQE742NIKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF25EE4ED
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 17:42:59 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id t28sf13000154pgl.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 08:42:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572885777; cv=pass;
        d=google.com; s=arc-20160816;
        b=LosQM7MlKtRrgF9+9oJkDqjZv/B6/2XFdq/AgGdZkrtrfl2MnohUaigttmyzBkKwAe
         CTPTMYyefVlr4DhQuFi0rvWloUGDsi7s1/PkI2SKJOcUY36/i6bx4n+0DE7He0HLlZex
         kwotP729/WX6+RVWaOiUGLwPkSN3Na0ozMa9zaaOof8XfZssC+btobf4n0g2ANKYSWKW
         VNIEHzbnnohI8PoYIs3GRXJj3kElBlZs1LlNZTShwGsx0LQWUyI2vIWqUZBOl/Xh7+0d
         NHGafZ0sgb3jaQlBq0Y6mdr9may5D4rM1CQjbsW2ER97RMFkUg27ldNk+nHemK6GxrLI
         rFIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=U2bCF+BzEURnLBloCSoXhiEbH4tlN9PweB/lAFNkK6o=;
        b=0xqnw4v8RxJGXyBqSIoRtEMoY+e/Q2grdXCZqphvfHejkyc6lPnK0LrUQM38dt+IL8
         YvM7Gj0xOtHczA2sTe0X0Kajfvp8Q52ZvaKI0Su351Dvekrl+Wzaj4MFuJapwBMosUKF
         X0d82m1AubPNASxC+iNgPyOktEs1Ly+Y7Qh/meeVImvHHGtD46fx1s2ujYiIxa+sDKFM
         1gYNAeMyk7j7KzXb6aNPphbtzCS0OIgf5QoeRjQcy6Sy/TEZDLbliOQOBcFA/S/zuL8g
         htej+z8xnPsStFIVLaqx3Kw/YH5luPbNTFRKxiqccfe8YBxsW0GkUiQZeNNbjfgis/t/
         +4dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PjhxObLS;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U2bCF+BzEURnLBloCSoXhiEbH4tlN9PweB/lAFNkK6o=;
        b=QzsqsH56ee8gBCngULTjF/wHir0IynCF8PefXVzJMk9sP0jPtg2B2qVt2v2rHswfAw
         at/0kVKNBUFXyRlj8sNVLw0OPhd1eSuD6WavII5MxDDLZzOxlMil2Xhhh8On9tFYxB6s
         RcGUZS8ELZOrFPwdmB9IMQFz4ydFJ2ZdfYc3GCB9/NJxR9widZvM61VOxGka9a/wBLTa
         oq9b9ljvnWqimCbNd8aEMOA7Kpwqdq9owVXV7jHD7j2TAyR33TSf+DM+15jX6Gl8eEBd
         An6wUtmY5sj0I21+zcQyOPTptGBmK39k+YDMYq53YZw+QXIBaWyvQN6yMIOwrJrh/17l
         bfaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U2bCF+BzEURnLBloCSoXhiEbH4tlN9PweB/lAFNkK6o=;
        b=M0gHjAXQH85EOQ/K8nVfKQvUM+IbnKCzAWj24s0hqcCrHYlDZFpSVv0vooKrKjRUeR
         bP8c5+hHTyj4+dXJM3N9+IIBIpu8ZXh0bUpuZM0VMHzLo/uiXDt6J7H4RXQuymlYe2/O
         l3HsV3Lgtwd4kvOF/ucqrJaQmVas9dmpn1TuStVN7s6Wg5JhxxpFfcNqtJKa8wJSsgl8
         ILPMJYtY6ZagdJbBgoRNI4tjdco1tXjsxMyHQTqVptBZSNUd14qXQmp6zDDqKdKxDUxH
         up+rSTW6xgg2pNJ7l5V7pVrw0K7s3ZHjNvmzFiPcqyXHyDZCY6CncWjzTVrRwcKrSBz7
         ELHQ==
X-Gm-Message-State: APjAAAU8IekGCkqhCRZZQ9RUmMRSlhMZzTaAox0hVgJJT8AeypNw1sXM
	J2hBwc3RGpiA26+/SGyOkGU=
X-Google-Smtp-Source: APXvYqyhVUXsH/YlNKrm9HYv3Okbg8vMcRg5twS50h/ZwsKs3EM9iwpjdpfC1BVtauy0hyF2fWZCTw==
X-Received: by 2002:a17:90a:e38c:: with SMTP id b12mr29824pjz.136.1572885777744;
        Mon, 04 Nov 2019 08:42:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7785:: with SMTP id s127ls3580336pfc.4.gmail; Mon, 04
 Nov 2019 08:42:57 -0800 (PST)
X-Received: by 2002:a62:ce41:: with SMTP id y62mr981529pfg.34.1572885777349;
        Mon, 04 Nov 2019 08:42:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572885777; cv=none;
        d=google.com; s=arc-20160816;
        b=HN/K7cUOGgazC0yIjg5qd4qbf5qafIXsVdV2z4Fo4OH4zZeg34VDKPKtAPswVlOl9X
         g+vYaOMlxl3rAR6C9jTXSXFh6mmyraW3pnyrxybxODiBSKSit6CdY1mFJzooqzS3YLiA
         J3ytj0GOX/cSHVXqolMbyhansx9zCnTONZodE+BQWEfYj4vCuNDNqntXvaeMf0jR/eiw
         nEgmlJbfCMPTP5U+T6faqMn4138I3n9AhSHcRxkZwpLnKtZYtMe4muretO3N28zM6ybH
         qDVLIa7ubaDKLqoH55zB5kXL+ghZx+hV9fO0n0sdpTmyB6A3y+vZE8IgLrvqjbZ8NGYy
         aiPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z61Nf+IXfPnYSf/CB16houpRDee1KdZw1ehNvN59rnE=;
        b=tnISavC+cHQWOL2pCmlDgWbXVHqz4eQZ+5sxYXtWttwop523ok3bSRPOgXnu3eXi0h
         712THbNrihIe8rkcTkjzrF44D6fnvowbTjokPCiOL+s/enoUaJ5ZwriIB6SNq9thaJx8
         HHAlad7V6GAgv0MkG1BKmF2PCUXa/LKTHsPbHmnm2ed6kVx93WTNmhCk81lgbIRERiTg
         f0XhMIkeqhfuLTW505MBkFGnWOtc3pjx2e74lQK1Uwxp/0Kj5tE5agQtp0D1G89KqzS4
         k2WIiJc3nWD09NoyaV6woQXIsfT36jys3YPlMSMbaXsUdeURGSgq//iOgG/nEKRnGSFh
         WblQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PjhxObLS;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com. [2607:f8b0:4864:20::e41])
        by gmr-mx.google.com with ESMTPS id s26si911008pgn.5.2019.11.04.08.42.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 08:42:57 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) client-ip=2607:f8b0:4864:20::e41;
Received: by mail-vs1-xe41.google.com with SMTP id m6so4866390vsn.13
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 08:42:57 -0800 (PST)
X-Received: by 2002:a05:6102:36a:: with SMTP id f10mr8580793vsa.44.1572885775766;
 Mon, 04 Nov 2019 08:42:55 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com> <20191101221150.116536-7-samitolvanen@google.com>
 <791fc70f7bcaf13a89abaee9aae52dfe@www.loen.fr>
In-Reply-To: <791fc70f7bcaf13a89abaee9aae52dfe@www.loen.fr>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 4 Nov 2019 08:42:43 -0800
Message-ID: <CABCJKuegREpQiJCY01B_=nsNJFFCkyxxp63tQOPT=h+yAPifyA@mail.gmail.com>
Subject: Re: [PATCH v4 06/17] scs: add accounting
To: Marc Zyngier <maz@kernel.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <dave.martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PjhxObLS;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Mon, Nov 4, 2019 at 5:13 AM Marc Zyngier <maz@kernel.org> wrote:
> Is there any reason why you're not consistently using only one of
> "#if IS_ENABLED(...)" or "#ifdef ...", but instead a mix of both?

This is to match the style already used in each file. For example,
fs/proc/meminfo.c uses #ifdef for other configs in the same function,
and include/linux/mmzone.h uses #if IS_ENABLED(...).

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuegREpQiJCY01B_%3DnsNJFFCkyxxp63tQOPT%3Dh%2ByAPifyA%40mail.gmail.com.
