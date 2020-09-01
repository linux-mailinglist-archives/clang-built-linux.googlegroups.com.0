Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBN5IW75AKGQEAX5JTKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A85C25870D
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 06:55:20 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id c78sf11724440ybf.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 21:55:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598936119; cv=pass;
        d=google.com; s=arc-20160816;
        b=C2iPzhD5a9D5MwimwXqS+P7jvDdlDyVveBHmK3p4Niz5SPuO+5zkEark/gQVVmkzYJ
         qCLHxz7Z+Ccuhzzb9N3DMPi4bN7DEfaRJ0WbP1YWLf8P29ibkoSzamzCFIe7Xjf5enAC
         tjFymjd3Grp/1upuf2sIXhm5qjEOeT2DLZiJ/qTAQbi1m8go/qgB4pXhfwTL9OyGsm02
         1LqxKr03hI128AwaHQVc0a2zFYUvjxWVadsc9z2jhF2QUy8FsXqsBcnN8KpxVa3HWoZl
         6hIg6l41vBWwVxU2JUlFSVOccOBlrJlsZ8+E97BP2pFB6kTjtZUzxcN37NgCRF0ILCoz
         YI9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Gyn3mTE3iJuDm1lpCgpomS/o4k5gzcAuQa7GndjLQ6M=;
        b=Fiw2Fnw1JFbjmMTQvxORTK429KqKAfjpfwtFbEtEMtoN19otjwqTSd2jWo9sHClccd
         3P97GmAAlERqyfuEEW5w6fxmcHUcdRVd7uG5xuKGIf6BDZyVnVjVzF/qbni7rKmItRTm
         MqGAyqLIWEteQ0t4E1sABoxBXYF7x64sMKm8dVb2+OgDAT2h7OugVPxVI4VHZapqfcqR
         WS0BQH9IN1sOlnKZqKsSrk+pc/cD/Jpp0hNL15sccDFbpHdFoZ12cD6PzQn22hxs9TXJ
         TSYEdufup/7ryJLJWXjfHveyWbLBcK2jhmvBdxAqi1a2quXJeAB2gwdp6ysUY/UlkeVv
         gFaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VMsAx4YO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gyn3mTE3iJuDm1lpCgpomS/o4k5gzcAuQa7GndjLQ6M=;
        b=Avm+rAb1kELyLGTiggfIU5nw7dP2TtDBlCkO0ewWKrc+eb9PbGf7Tq7mHUN0SE32mj
         EoLNH1kUFXti69zAer83gryjbrsjsjyQknoqoGAwCWHNAiB9shGggi+5neqtMvm2zcoa
         tHl57WDy3GnEXqRT0E35KeyuumoMkTr3BKioL3X2EZUZzZpGzDh8w6HUAMEU3ymN/ac1
         vf8BMYpSMZeCxksT6djiX4LLzZ/abIfO/zz1Ta2DA28yOfq8VcpSD2dFE4Ow+7Z7KnU1
         lWOPOUCFj/UIHipqxL18pwMOLynOoxR/Y1XyFWGfEJhhMS4BrgWsltPDENnWzpo5Gtj8
         Ahsg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gyn3mTE3iJuDm1lpCgpomS/o4k5gzcAuQa7GndjLQ6M=;
        b=lrv8H3cx5BZrareeBXgSuvMr/PD8wYI1CetE2WHJ0HoW1OUwGu20q/C3RgL7UZWwwe
         w9nHfLbKR1I77qOGVxgFtLIXj71csMIIEDSx2nF8UNPLljr1rI6IMPJAzQZtbJ/WTXRJ
         p9wc9O+3Ofyi3VTXheTtq9E4CEzgtJIsP6ccT1IVK31nwyEbuKAgREGLHLGswT7UtJK6
         LqnDHp5sZkHeeVcIacS3XLu8dXATATnZ1opWj19MzzH6p/YdrA3F90YwIBGNM1UkvEq1
         9rOMNfYY981blkp3ydLhpop4SUzD/uXbKalyAHS7XNZpFKelaie2VPykd1cyB75KhPgv
         1hHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Gyn3mTE3iJuDm1lpCgpomS/o4k5gzcAuQa7GndjLQ6M=;
        b=iAcls1vVvOK6JTw7rK148E2C9nZxv9v9SX3isGYj59prsa6yRt25VMk6lGuWHM0tp6
         qoamW5GzyylwW48nO66WXmuKSOBB5h7Bf6S+TInvFag8ptVfPKrGozbK0Pd6Rog7Z9E7
         NllmD+oCxZu34QeCPYqVvCkRLPMqNHovNSMYFnojuDihYY3b2AkKEwON1VbCIf9OV72w
         ePwCsgqUT0ynvvPZ/OFy/1NjrghoIJrWS8ePZ6c5vYp5cARJKk8R9xfZaoA+rTo1Be4E
         gSyo7U+oxr18gduN0aKIxr0vDhuDK4BMj2P1RnPWWnqtrlgZZri4ceY8CFrfrCdHsT7x
         7o8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Brxd7AkqJ3d/kEo/q0wHKKOnF1UFMuMiIcb3mgWGNG39oKb+I
	ASwALST3qUfs40mahVSbxRk=
X-Google-Smtp-Source: ABdhPJywGBxQZAW9/3kbWpI+6dM6tpDIT20j5nsILbkO0EL4228PfBHXieDp7MWZB7XRyg2Jq31BjQ==
X-Received: by 2002:a25:bfc8:: with SMTP id q8mr119834ybm.156.1598936119513;
        Mon, 31 Aug 2020 21:55:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:840a:: with SMTP id u10ls4343709ybk.0.gmail; Mon, 31 Aug
 2020 21:55:19 -0700 (PDT)
X-Received: by 2002:a25:da84:: with SMTP id n126mr129638ybf.34.1598936119107;
        Mon, 31 Aug 2020 21:55:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598936119; cv=none;
        d=google.com; s=arc-20160816;
        b=vGhyKJG0ZDl78ThkC3WhWA9fW19Ny3YHg9ndLKLIbLAG/IqZMlG6DVCIsRiYFFyPBp
         ef8zlFw8EKhCZfgZRb4OBEzxrKghWbYLyMc2rnpWYb+oW88SfT3nXPnCBBWWqnKOLz64
         h4xdkFKhoIA5bGv4Z8qTcmd/1Ln46Sj+UUPal4RWsJHflojfZTkeoNIUgAC7eD80E5SO
         pEwpqf6eTkwVz54oSduzgrSTKpYbffA9asyAZ8ewyEAUe8tMGo7ZjJTsgpCdeZROlM/a
         eNWW/pxDvabsehW8wnzECTxmXbO2vcYdxlZW23CkYQZvewF2iT4lQMEg0auF6WpEyAtM
         AHQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SBabfCNAUI4ewVyTSFqp+WOZnMi5DObO4PTNnRnBepI=;
        b=TSv1pceVDfoY6htj8CIpAGzmKzhu6qOYhsjxxPrEpe/8eZ98KKsZrJAUwnCHNMIJt9
         aG0eu/Y/ua9/UVuOo/u60mAE44f/hGsK8GtKRJZN64hbc9TbwK6KcqUyi5Qo6NqtMIRJ
         jSVEimHh+Lggl3VDn2fv9e5H8IUuL3yj1Gq6IbY9p4GJRbiaHswWEJOpb4CEO9WsZGku
         cRzEP5vYDPFkVu2whxV/azitXvT7+XwBHXaCxgPl7n08OjxvBb0N1EwgXExQtiSQcUWs
         9gnk+u17wBVicRM17Q6I/AKZhUDmrACz7eJpKAFExlaEKhTJH4aeawiG9jS0sXRSdsbm
         RZsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VMsAx4YO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id p14si12321ybl.4.2020.08.31.21.55.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 21:55:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id p65so37501qtd.2
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 21:55:19 -0700 (PDT)
X-Received: by 2002:ac8:6e99:: with SMTP id c25mr4782540qtv.324.1598936118715;
        Mon, 31 Aug 2020 21:55:18 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id g4sm8567152qth.30.2020.08.31.21.55.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2020 21:55:17 -0700 (PDT)
Date: Mon, 31 Aug 2020 21:55:16 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>, Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/7] Revert "kbuild: disable clang's default use of
 -fmerge-all-constants"
Message-ID: <20200901045516.GA1561318@ubuntu-n2-xlarge-x86>
References: <20200901002326.1137289-1-ndesaulniers@google.com>
 <20200901002326.1137289-3-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200901002326.1137289-3-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VMsAx4YO;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Aug 31, 2020 at 05:23:21PM -0700, Nick Desaulniers wrote:
> This reverts commit 87e0d4f0f37fb0c8c4aeeac46fff5e957738df79.
> 
> This was fixed in clang-6; the minimum supported version of clang in the
> kernel is clang-10 (10.0.1).
> 
> Link: https://reviews.llvm.org/rL329300.
> Link: https://github.com/ClangBuiltLinux/linux/issues/9
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  Makefile | 9 ---------
>  1 file changed, 9 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 37739ee53f27..144ac6a073ff 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -932,15 +932,6 @@ KBUILD_CFLAGS += $(call cc-disable-warning, maybe-uninitialized)
>  # disable invalid "can't wrap" optimizations for signed / pointers
>  KBUILD_CFLAGS	+= $(call cc-option,-fno-strict-overflow)
>  
> -# clang sets -fmerge-all-constants by default as optimization, but this
> -# is non-conforming behavior for C and in fact breaks the kernel, so we
> -# need to disable it here generally.
> -KBUILD_CFLAGS	+= $(call cc-option,-fno-merge-all-constants)
> -
> -# for gcc -fno-merge-all-constants disables everything, but it is fine
> -# to have actual conforming behavior enabled.
> -KBUILD_CFLAGS	+= $(call cc-option,-fmerge-constants)
> -
>  # Make sure -fstack-check isn't enabled (like gentoo apparently did)
>  KBUILD_CFLAGS  += $(call cc-option,-fno-stack-check,)
>  
> -- 
> 2.28.0.402.g5ffc5be6b7-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901045516.GA1561318%40ubuntu-n2-xlarge-x86.
