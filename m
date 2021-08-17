Return-Path: <clang-built-linux+bncBCR5PSMFZYORBHV75SEAMGQEF5XRJ6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC0F3EE464
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 04:32:00 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id s4-20020a259004000000b005947575ac53sf4419097ybl.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 19:32:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629167519; cv=pass;
        d=google.com; s=arc-20160816;
        b=pdBSucG2JUg0PVVMYiCdBuVCk2rwqeMYlLkK6hbw5vyCn8f4/XZ4uJL1g4yUWBiEyP
         qe666j1cyq0G99qfD21hp7G2WQWbW5LrJTHa4Lgnq4mHgwuB+3xxqSRhWVjGG44pq3Uw
         k3ryv/zPSQ7Yroe84mSwV7Fp5BIbLj/h6zj+S/V8py1QdApqltluTSlKNVMI/zP7qF2p
         WP4RJQuK9w4YPvlWccGxrqQyZ8Jtua/fgZEiIPvuTgBV5fr+ZvV80rbYXd9xBZ6hFdkQ
         VJt6B026v9ocMD4FhU852tIwHWr4PoZzaUfiFMXih1aBqeUi96/tpCtYvYmMApMbKJrr
         hx+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=Uhe32uKjnuZkCBUqRtrHI/9yqmK+qkUhYFdKi/LJeHw=;
        b=rmNxjaz27cMKV1wuOEzzeWjIzV4tv3LArgYLFmby6b9339V7GvpmoYvlcjBYYXBM/o
         3J5BDG7dRLxT4jNxq1PXuDWrVaCZrv/M1NCYyaQs0Fd17PGuHNccxr6vQGcegsZQlYcv
         9aAabL8MajnsLi/UXDCARTalW6s8wd8MmWEyRF/Ll+Er7OCHqMwB2w5V4SLoFFi5GZ0C
         qEBFyHMIxYlAnovmtg+A/9wPg3IoGbO3oF4aZRc80jHA4Fb1ct5agf7SWvzOmV9tMwkI
         +7pZGL+X4FvQQDvAewkeHpQNAXQgvdbtMkNjV6SNylUv57m97TdR8ZXE3a/Vt9aEl2Wt
         0cLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=QafEecHq;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uhe32uKjnuZkCBUqRtrHI/9yqmK+qkUhYFdKi/LJeHw=;
        b=aq2IapiaQkALu/8HYIB3S8JEWDdUDtMIog7JSa5LYpicsVconeJ8Osboe/Ktw7+y+c
         1WlQH6fl6pAA5YypG16qRFA6yaj216W8TiRocchK9tMYCtqc9vLWUBbxSPquZYTOqNr/
         myGBWehgU71rmPOw87EVk8cugY/8DH80ltdic+GkMICUVLDaoNOdObJam12uDfwifT7E
         ycT2mMJgvDMw9mpXfF36LCHHZ45zvqShxQv4hX6UWyT1lA62gaZ4tpufrnlDAs3YsqRV
         xFfw7SBVwAofJ9M826dsRi4L7PNbNU0lgH8gqNj7ohjLpf6tjwHXNH6yAivPDRtYOa8e
         +2Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uhe32uKjnuZkCBUqRtrHI/9yqmK+qkUhYFdKi/LJeHw=;
        b=bqr/Sl7T2PiTJDCGZ4ZedK6WSQfdGqyYlgma2chYkUvuh2v3DzvNOOr2PEx6POVCyg
         g5BZQER06YDTdq67/kFrp05ME9MY1TiMuW+QLNeZwq4YvoM+d+ZMyh8MZfLtehD9N7aW
         RvMtW6iuQCEt+T/7t3NlMOeYshvbBiP6D2oedEFS/ACZ87KB3TkZWzgluhSEzMHIzdb/
         vXcPfODXUBewLotk/PRATWqkLGVsI8vcIF7X0R/9f+/GdiQYxjFZD/ItFmJpI2XBPABc
         iZaLFdGcqIOR7NiTdAa2EaTlaKGxq6SPA5Umlo/L2HmI4PV1mlB+lf6YV1o18PdkapzG
         BwNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312iz1+jmlA5rCgznXXEb/iWyj1s7uWrcQlYPe6ZBrWBd1h9fR9
	7DjwdLrNWMizQbNntsIjBDw=
X-Google-Smtp-Source: ABdhPJx8SXbGxIo0G5XSttDqviFFc26JH+LeFxMaKEviNDJvGLMVZUTIQm78AIrJQT8gMCQ7i/oF4w==
X-Received: by 2002:a25:d642:: with SMTP id n63mr1588132ybg.165.1629167519318;
        Mon, 16 Aug 2021 19:31:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:24ce:: with SMTP id k197ls369422ybk.3.gmail; Mon, 16 Aug
 2021 19:31:58 -0700 (PDT)
X-Received: by 2002:a25:44c:: with SMTP id 73mr1508272ybe.435.1629167518581;
        Mon, 16 Aug 2021 19:31:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629167518; cv=none;
        d=google.com; s=arc-20160816;
        b=GCtSihaqOjs59hUQjTD7gM1hmuTp/o104DsfUoT48dajhc3iPZdNOzVY3ID/1mx9rl
         4ilus2hcQUNeZ+CJ8vWKUSsnlqjn15KeKQyZorkMw2csAr8L+1qOkOLrtvfuR7jQ+5RF
         UreKI5Prfmbt25ZKjJBl/Y0S4W36o1KJKlRIUP1MUow0v+CSollkiy289TJpMNOwIJ5o
         Jr2sn5YiWmE68MaHDa353kUnWrEy0GXQSQYTN5ubpaqM1ElB/0xvaefvRUJWdptce8ek
         FDWi6jMdH98LvNICjhladnoJOYUQGsEbFOA+DBPbTwrsVCrOd546wYnhlt5TdSsGgZ+v
         tSzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=Sbl7iwvidphWnlv72t22to+YRD61jI5SCh+FcuNJUFM=;
        b=vkK8vzh0UVyu3FtoOSoAlCsxjEnalOHXNsC3EnmDwOlKNO1f6ihemhqTZwIYK6EVBO
         2f40hydLp76cSt74YSWUNxG50IMv9dHLtHxSFGxwOkDJSCEov8d0ucsxMAmw729OkU6Y
         rsBLuYWYY3krqmsMtNIAWcwz/LS8/cuBSqmNHn9rWJ1bbMQ8igjpksjrnbVglC+zhH1f
         f0sbzdwTgOrcP8lBVe2dmr0zSOSoDors0WVluvc6+Lrq7QaUfLsyZUdmJl/4syVFjr4t
         f6/X6xzf3txc9urzm452ktLp0kcvOpzbQ8LzMRYi/464PSxWedItM+Dt9KwpcU2z7a66
         Ictg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=QafEecHq;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id e137si73405ybf.2.2021.08.16.19.31.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Aug 2021 19:31:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4GpZmT47K3z9sSn;
	Tue, 17 Aug 2021 12:31:53 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada
 <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, Nick
 Desaulniers <ndesaulniers@google.com>, Benjamin Herrenschmidt
 <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>,
 linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH 3/7] powerpc: replace cc-option-yn uses with cc-option
In-Reply-To: <20210817002109.2736222-4-ndesaulniers@google.com>
References: <20210817002109.2736222-1-ndesaulniers@google.com>
 <20210817002109.2736222-4-ndesaulniers@google.com>
Date: Tue, 17 Aug 2021 12:31:52 +1000
Message-ID: <87a6lghkdj.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=QafEecHq;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nick Desaulniers <ndesaulniers@google.com> writes:
> cc-option-yn can be replaced with cc-option. ie.
> Checking for support:
> ifeq ($(call cc-option-yn,$(FLAG)),y)
> becomes:
> ifneq ($(call cc-option,$(FLAG)),)
>
> Checking for lack of support:
> ifeq ($(call cc-option-yn,$(FLAG)),n)
> becomes:
> ifeq ($(call cc-option,$(FLAG)),)
>
> This allows us to pursue removing cc-option-yn.
>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Cc: Paul Mackerras <paulus@samba.org>
> Cc: linuxppc-dev@lists.ozlabs.org
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/powerpc/Makefile      | 12 ++++++------
>  arch/powerpc/boot/Makefile |  5 +----
>  2 files changed, 7 insertions(+), 10 deletions(-)
>
> diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
> index 9aaf1abbc641..85e224536cf7 100644
> --- a/arch/powerpc/Makefile
> +++ b/arch/powerpc/Makefile
> @@ -12,12 +12,12 @@
>  # Rewritten by Cort Dougan and Paul Mackerras
>  #
>  
> -HAS_BIARCH	:= $(call cc-option-yn, -m32)
> +HAS_BIARCH	:= $(call cc-option,-m32)
>  
>  # Set default 32 bits cross compilers for vdso and boot wrapper
>  CROSS32_COMPILE ?=
>  
> -ifeq ($(HAS_BIARCH),y)
> +ifeq ($(HAS_BIARCH),-m32)

I don't love that we have to repeat "-m32" in each check.

I'm pretty sure you can use ifdef here, because HAS_BIARCH is a simple
variable (assigned with ":=").

ie, this can be:

  ifdef HAS_BIARCH


And that avoids having to spell out "-m32" everywhere.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87a6lghkdj.fsf%40mpe.ellerman.id.au.
