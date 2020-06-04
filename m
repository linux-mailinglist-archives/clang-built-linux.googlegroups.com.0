Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGUX4X3AKGQENYC7FHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1781EEB21
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 21:29:31 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id y2sf5338647qvp.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 12:29:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591298970; cv=pass;
        d=google.com; s=arc-20160816;
        b=n8J/z2QBDkSj/jHuMAEf0A4IhrhPIh7qQTlp89iJd7lmT9wTL6e45eogAonwMoVh0Z
         N7+HRkBdXdxWgVhCDwGOHP6JA+v4eN4fiXSuAgHVEMuFSOKSdxY0PfLqTDUj4Iqy6DKv
         1lJB8s6GhxBX3H8OjljKQoL4fhDc/gz5poDRpwZ1RsHjx2ER3h+3se5tRFXFKz3tbyd7
         TevzcNtzWsx6ta3lLxW1XIzxpIW6K6cOb6Vw2/b+9C8mh6aD2bW6V3Tlhec5I+UJWDpe
         98K7yxPDF7DpfBTXXCNqxStlqEFzA7u2xzEOkWPxO1u0bTd2QOmblq0KHW7r7IyKQQtu
         Vuew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=m6Z7/mUYSqTFJmrji2apfKmG56PZj4Yvz/H6vQy/MVU=;
        b=VSZevKTpyqnMznoxQSAhlNVaisB8jRsi1xYZpWb+0l1ay+ycP2jQA2aNqj8QbXDRJw
         Prfk/Ma/sp1kCm1dtHZWLlw6LH+DmbzblQXuujUI3X6DQpoRVe68K5EGw5T8bEgtj7l/
         4Sv96HDIAxM7rJYiQb2PiGqe5dT5C+/6nO54K3wDGma8n5O1rj9fPYcEt7vwu6TQG7yx
         5gm7b640x0ACzvJI+SvAbndGgjWqTIO9z3IE1UAgw47q7zUX9ztsc+Xu7s95y8mF2wCh
         fNhVVq9iiLDZBpa5085hIllJwdIdz7fpM5jRAVCOffOBJbZuM/hAgj0w65V5G6cHER0F
         z79g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qNWdjuwt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m6Z7/mUYSqTFJmrji2apfKmG56PZj4Yvz/H6vQy/MVU=;
        b=HTCoiegWuMOJRQg+VS9/WHStEjdUC+kUChGiVE4w8Y09rtRBFXgCmWgkNy4STf43qo
         RTbLwjalq1Nw0aeYeGMuPvCD12c559W6TNVbH1WFzLAVwEPpbbg4EvxpPZGHQrMn/G4b
         h6CxZUv+nLAQirPUCgPqa0jA6PRiPJDMQKjjwTEo/+IdWoyt4emGkTSTYdAgzyJplGlI
         kVGTvgOVl7ewD1gaPWTMGvxGHMzG62UOxzwc5mRcdNerVfXpQcIF6PKr5QxF/bQF8jqW
         ahRITF+rb+aw2gPNfczwfdFFlXBQIl7Bz1ahF4UiwAjyUIg762WsJTU+dqicVZp3exnW
         XIig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m6Z7/mUYSqTFJmrji2apfKmG56PZj4Yvz/H6vQy/MVU=;
        b=O2xZ/IEhvfNUFTIGV9iMrxBNAy5hl9OPTGEiowBRli17tSHmTmsjJ/y2/hwpejVEcN
         VNzQlnVI4f5aLZfQUn3Q9QefMvZ5ZdNYwOPV24gHeXcBo7cWZ3LZ0Rj/ixc7igi5zSPt
         hq9d6QiM2BdeWiGXfb8peGuuKeV39hLwgc6xGtuoE4h2zcI4oJbrxE+9AKa5IyFAtcXO
         I0B7guqJ6KW3EJezn/x/OIYCnIDUC1t1M625AzPUm1E35gijYVIOvD3okSRB147NakrC
         cO08wMvALvqmW7GtPQSXE6ODlTHkzTwbSgclPX/O2S5aQCvfhaDDRukEjj5uKvcrsDlr
         S+eA==
X-Gm-Message-State: AOAM530wZ2M+O12eNyjtW3Otw7nzmGPBAN1fRI66Dhz2EKwfu4o8tFpM
	+9o3Jc3SSgbZ97eNDgwz3tU=
X-Google-Smtp-Source: ABdhPJyVmSeXKRheM/wBeTAuRzOhlusAWAqaUnebnZn7P6/FPtaE/h9symAdSYAt5hQ3+PgCqK1afg==
X-Received: by 2002:ac8:969:: with SMTP id z38mr6250525qth.77.1591298970397;
        Thu, 04 Jun 2020 12:29:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4e56:: with SMTP id e22ls2342632qtw.3.gmail; Thu, 04 Jun
 2020 12:29:30 -0700 (PDT)
X-Received: by 2002:ac8:7182:: with SMTP id w2mr6345627qto.115.1591298970060;
        Thu, 04 Jun 2020 12:29:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591298970; cv=none;
        d=google.com; s=arc-20160816;
        b=gLXevmfTOeuutbClkPamQXdRG7E+metp/UUxznRphPrBhupiL6K8fYpWPY8KCqGToB
         BWlVf6FDHA2qz/hgqiKkbM9tYIuNlOYuwXVaBuV84Z6D7KYF0Eb+z1yGu7ciRTDLpjxD
         MwlquD6qCNfvQYxdZ7A7LizwSWVOyClzs9gNVHxPlDP7M6ByP/jXNy9edSrJThLGuYcE
         baCwJmviXROFyRD9fqGqrbykXSVViLIiSv4o+GbVI9M7l0BCJO5gAIjebs0d8Srk+1o4
         jxQebpdxkG50pdJWWKD6h6B/2K/s+BvtKAbWsg3jhCOqO8SU/D2geUSl5fLlrup26q0c
         X8MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BN0NA5oXxaJmgloA0bV1VuRl7DweslwGb9BXC5tlSZI=;
        b=O+cniaGG3rJ14bjAM5W43Uy/cK8pTv8GNpooMQ0/PCLkoXWfZIb8H6rM5OyRdn63oJ
         cKcsiSXV3sX4Ntf70KiiDLKICbl6QJw1x/onQfZWcscOYOr527ez9PNBJbGaZ/jXffdz
         Ge+IOateFFiLuz2FVfXENLH9tC42ef3vKvabeKqkVy/W3//ymcWuRTNRkKn2jMx50kUt
         9IFQvJwq+PfvRUwlnDE2bV0vfHiOjWhbauYzxR4RhdUrNkj814+B6/XG+PvcVX1Jm0yM
         hLHdN9tUxf2/E5BSV6uHegL+speVjJvRAhkILrQ90b6e0VSJQuXAteNdDRfbHN7Ahm93
         wuCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qNWdjuwt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id z202si262656qka.6.2020.06.04.12.29.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 12:29:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id bg4so2622697plb.3
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 12:29:30 -0700 (PDT)
X-Received: by 2002:a17:902:724a:: with SMTP id c10mr6119344pll.223.1591298968901;
 Thu, 04 Jun 2020 12:29:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org> <20200603233203.1695403-6-keescook@chromium.org>
In-Reply-To: <20200603233203.1695403-6-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Jun 2020 12:29:17 -0700
Message-ID: <CAKwvOdm5zDide5RuppY_jG=r46=UMdVJBrkBqD5x=dOMTG9cZg@mail.gmail.com>
Subject: Re: [PATCH 05/10] ide: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, Network Development <netdev@vger.kernel.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, linux-ide@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, 
	Linux Memory Management List <linux-mm@kvack.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qNWdjuwt;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Wed, Jun 3, 2020 at 4:32 PM Kees Cook <keescook@chromium.org> wrote:
>
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings (e.g.
> "unused variable"). If the compiler thinks it is uninitialized, either
> simply initialize the variable or make compiler changes. As a precursor
> to removing[2] this[3] macro[4], just remove this variable since it was
> actually unused:
>
> drivers/ide/ide-taskfile.c:232:34: warning: unused variable 'flags' [-Wunused-variable]
>         unsigned long uninitialized_var(flags);
>                                         ^
>
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Fixes ce1e518190ea ("ide: don't disable interrupts during kmap_atomic()")

> ---
>  drivers/ide/ide-taskfile.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/ide/ide-taskfile.c b/drivers/ide/ide-taskfile.c
> index aab6a10435b6..a26f85ab58a9 100644
> --- a/drivers/ide/ide-taskfile.c
> +++ b/drivers/ide/ide-taskfile.c
> @@ -229,7 +229,6 @@ void ide_pio_bytes(ide_drive_t *drive, struct ide_cmd *cmd,
>         ide_hwif_t *hwif = drive->hwif;
>         struct scatterlist *sg = hwif->sg_table;
>         struct scatterlist *cursg = cmd->cursg;
> -       unsigned long uninitialized_var(flags);
>         struct page *page;
>         unsigned int offset;
>         u8 *buf;
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200603233203.1695403-6-keescook%40chromium.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm5zDide5RuppY_jG%3Dr46%3DUMdVJBrkBqD5x%3DdOMTG9cZg%40mail.gmail.com.
