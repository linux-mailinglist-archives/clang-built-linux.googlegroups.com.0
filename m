Return-Path: <clang-built-linux+bncBDYJPJO25UGBBX73TKEQMGQEHTISARY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4E93F7E06
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 00:02:13 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id eg56-20020a05640228b8b02903be79801f9asf392950edb.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 15:02:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629928928; cv=pass;
        d=google.com; s=arc-20160816;
        b=e6wIEow0ECCsLoVSQ2TKiLEILF9c6b0JtLJtTMF+0cEqk3k4hbe6RQ6uoDnqDIEAFH
         XhaOECNk8SUp7a17SapRk9CA0/kP/tdlrufmhKUMno3PMTnxw9MrqG8GLnyXUVebG02M
         kcwTqaD/rxBHuO4V/GWmWnzYvq4+iIVpLJh5GKgNGv6L0fMsX+EGQM/Ct0tp1KO1Qgn7
         GEBa74eO+/oT5O4btOV2998jPpOCtcbw4761HRkwxkTdE0A7VQRVNCBjRx9vFB5Kj0qH
         lyceWNsZ6nVepjCGbc71pFNM/7Zx474029815wXcuUMbqhugRTq21U2SPPTeOzb5/n+l
         Pjsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YdzLCemtlE88r/cPLPpGBfTkcGARlgN2XTbSDXZuz9o=;
        b=cq/EFehCCnNJQAncxPWuH8Mrfx8GBYENOUS15Rlqj8wKUyMwhHLafLO8gN59ymoUyz
         oNhb6DBHg8YotZDiOA4k350glV4z/CIyExK/om4tMfuYGOJKuAHVaKgS0/T5mQDa0U0R
         s5maDFNfZ9MOILhxH1Tx6wZvH241WHiexN3iOmSOKYyB3uYarTvHOOPKSDbcyZXva319
         PKGuCYl1rIDXNiI/EUO5QQpdHU3PN3qvvh0rKKc0jyNFcaa7xBi6nMD1wWeOyPsXOxiZ
         2sMJPhsCR5B2GeQISSY8MLz/+m2PMzc2N30HpoPhsUqKQ/Q14uSGZgSibccBbdBYYQHs
         DGpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=V0RfDdAy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YdzLCemtlE88r/cPLPpGBfTkcGARlgN2XTbSDXZuz9o=;
        b=tpzCfi0c7zH0wrtHjDzArUPekntRwuXNlu4sf2ql/9rnttAUL3wgq41XhAMSEytAYe
         +Pg0MPzshQEUuAHOubP4V05x5JLwzBbQrizcTO5AalCPrB/1ZAorfRrkwrB9GDxuE6/l
         9BFrX9ujkYrjN3XDq0b8kvLOwnRujtrpf9l61WCifPKO1EPqFnZI48rNiJ4ctetC1z8a
         ysDoaRlnW4VsGsETtB/uvoy99vMGXFXXV1HFRSVRzvJAWVqYBCSitFTHVxKTEsNuBi6g
         ERSClUy/rclMBcCvQRtJqHGkjtbW3Y2eIRvwr6S/P+P+Hq6jXeLLm/FfPc+pACC38H3f
         9VCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YdzLCemtlE88r/cPLPpGBfTkcGARlgN2XTbSDXZuz9o=;
        b=hkA6nkIrtf9J0cRN07wqBkkdZ62j2iHLdhkPKs9e5O6/+4lY2fHhWjq9h35WDq+rnq
         EDScji9JMb8PICiUbIflxof5GR3TW890ZK/OJk7dZADgWL6M9vnG1nWSMfCmeD9C86C4
         OkbQLVjJJgGIBxYKRd/5lMMAXF94mLDcfrWHTwGKuwf6GxaPaJP4pzZAKGvqhm14/o9C
         Wlx2CPZh50VPd8qWD5ZKsmIXDa6exc0TcCJtEwnPBFYJzt9WSBMt6eTs6JBJ7Dw5P4wm
         J+Qz/uQxbap6dMQ+5pCGw2NsafToaQxMwtj9gEMz1kjjbqWRCXJkPSsVzbsERtjukNPt
         NaXg==
X-Gm-Message-State: AOAM532fyp5uabDabUyFJFwkfV9K9d45j47Ch1bMSUaCFVIGZ0XPVTHi
	zVCMPtnlqO6wZFfBxJe+C30=
X-Google-Smtp-Source: ABdhPJzfRcbBGcS0G60t8GMCnW6ShK9qO5zpFL0VbOB9m3Kv2q/V8RRCSRjZJDXA12MId2dMi1J09A==
X-Received: by 2002:a05:6402:1012:: with SMTP id c18mr717909edu.98.1629928928127;
        Wed, 25 Aug 2021 15:02:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:361:: with SMTP id rs1ls1795943ejb.4.gmail; Wed, 25
 Aug 2021 15:02:07 -0700 (PDT)
X-Received: by 2002:a17:906:3fc8:: with SMTP id k8mr789867ejj.217.1629928927196;
        Wed, 25 Aug 2021 15:02:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629928927; cv=none;
        d=google.com; s=arc-20160816;
        b=rYF6hgOJ0ir2ONA1WOlsEwqNdubpwB3KnHs55UKfjfYV55yDXBIoAs4jSss/qHYQTD
         hFYCRlqVT5FoKKma3YJ6XoaKJxBEHrseIwcyGQsExZMILXuYeWxHfUzZ+hhtZnUznSdq
         OIHtyME81JK3pbD6EBpqMt8LQAGEpDkzUR9zk5swJaB3W/zN9u2BFtxXH670Tuj2n5fQ
         TUl4G+kuQ07iamwvudHl/UOZ6PZvEXh7rYzjx+hYvcQubIDpdH/y22P0td2sud3U1uvn
         6VOs1dDw8LTrJkwLKBv1pB6qQvlV4Zlk3+dtIHSaY1XpRwDAeIoZwFeFhZFHEWCtnmFF
         laOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ap07zgvRCzHUWZsKzTqV0nv5eVeNrhiykOkW+2Q+N8I=;
        b=QDLEzC19eIT2JKCkdQpH7Xr8Z1FO0n4GnoVBAXDgRjpHwFz5rd4iXw7dXHStkitCzH
         RMEoqAoN6YIamo0OnZWa2xhsyPXg7zI4XQAf5QgGA4D+NXjQxX7opaB9//z6Nieot/bY
         7YKNucTQs2TjbX/KTX9DWuW8DhpcJPErJ1/OnnXLSouFiSi1sQ6jWH1WUWcbW9fYvm5g
         uAFejFz/PFSzuEqBVyKzK+nLmUS6GEkRdNPtULdpX16NppMS0bHjwz+MCQ8ZqV5MKr5I
         C/4/N6Y9RqubqthVLqYdmUJYsmRQcYWtxEmjdjWCbqpZ6FW+OrUeNfIpEuD1P3ecK+Os
         0cyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=V0RfDdAy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id s18si70973ejo.1.2021.08.25.15.02.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 15:02:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id o10so1945489lfr.11
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 15:02:07 -0700 (PDT)
X-Received: by 2002:a19:f017:: with SMTP id p23mr190205lfc.547.1629928926500;
 Wed, 25 Aug 2021 15:02:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210822075122.864511-1-keescook@chromium.org> <20210822075122.864511-19-keescook@chromium.org>
In-Reply-To: <20210822075122.864511-19-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 15:01:54 -0700
Message-ID: <CAKwvOdmYP=-SOpjEX+J8KzvkhpH9LXFrHEUob2w5LxiSMwn_0w@mail.gmail.com>
Subject: Re: [PATCH for-next 18/25] fortify: Prepare to improve strnlen() and
 strlen() warnings
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, 
	Francis Laniel <laniel_francis@privacyrequired.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Daniel Micay <danielmicay@gmail.com>, 
	Bart Van Assche <bvanassche@acm.org>, David Gow <davidgow@google.com>, linux-mm@kvack.org, 
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=V0RfDdAy;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129
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

On Sun, Aug 22, 2021 at 12:57 AM Kees Cook <keescook@chromium.org> wrote:
>
> In order to have strlen() use fortified strnlen() internally, swap their
> positions in the source. Doing this as part of later changes makes
> review difficult, so reoroder it here; no code changes.
>
> Cc: Francis Laniel <laniel_francis@privacyrequired.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  include/linux/fortify-string.h | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
> index 68bc5978d916..a3cb1d9aacce 100644
> --- a/include/linux/fortify-string.h
> +++ b/include/linux/fortify-string.h
> @@ -56,6 +56,17 @@ __FORTIFY_INLINE char *strcat(char *p, const char *q)
>         return p;
>  }
>
> +extern __kernel_size_t __real_strnlen(const char *, __kernel_size_t) __RENAME(strnlen);
> +__FORTIFY_INLINE __kernel_size_t strnlen(const char *p, __kernel_size_t maxlen)
> +{
> +       size_t p_size = __builtin_object_size(p, 1);
> +       __kernel_size_t ret = __real_strnlen(p, maxlen < p_size ? maxlen : p_size);
> +
> +       if (p_size <= ret && maxlen != ret)
> +               fortify_panic(__func__);
> +       return ret;
> +}
> +
>  __FORTIFY_INLINE __kernel_size_t strlen(const char *p)
>  {
>         __kernel_size_t ret;
> @@ -71,17 +82,6 @@ __FORTIFY_INLINE __kernel_size_t strlen(const char *p)
>         return ret;
>  }
>
> -extern __kernel_size_t __real_strnlen(const char *, __kernel_size_t) __RENAME(strnlen);
> -__FORTIFY_INLINE __kernel_size_t strnlen(const char *p, __kernel_size_t maxlen)
> -{
> -       size_t p_size = __builtin_object_size(p, 1);
> -       __kernel_size_t ret = __real_strnlen(p, maxlen < p_size ? maxlen : p_size);
> -
> -       if (p_size <= ret && maxlen != ret)
> -               fortify_panic(__func__);
> -       return ret;
> -}
> -
>  /* defined after fortified strlen to reuse it */
>  extern size_t __real_strlcpy(char *, const char *, size_t) __RENAME(strlcpy);
>  __FORTIFY_INLINE size_t strlcpy(char *p, const char *q, size_t size)
> --
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-19-keescook%40chromium.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmYP%3D-SOpjEX%2BJ8KzvkhpH9LXFrHEUob2w5LxiSMwn_0w%40mail.gmail.com.
