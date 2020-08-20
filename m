Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3HM7P4QKGQEFQL6FEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E8024C7A9
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 00:17:18 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id r1sf69349ybg.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 15:17:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597961837; cv=pass;
        d=google.com; s=arc-20160816;
        b=yFZMkswZcT9hlfMB68rXRci4PR1GtYyX2+hN1xwBkfxYqv0lmWRFs2tfxwAwomzf0y
         Rh5RwKIuQUEctq6tEm/ODRdoVlg0DeiqF6jMACuHURmWGTnGto5nJ7PmqTMaI4Kl0ces
         d229vxEZsPVYKZY3/j6fXaNO4KoXiWQ/X/LYwcm4WG3yHI1KSn6BfiPFfNlsdM3xGIjI
         TROSWl+3V0rn5el1TmXNn7eih2K+ayv2rN7vqADmmNtTd5cZLrFwgwPRj/g0tSLSOpNl
         I9HPcrXZb3A0SPPl+/3QDXwUV9L7Daqr1Hb9kogWFIDF3WjoX9WrlIOqc+wvviFNtrzc
         qpsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=YEAUpl784eUzExQww0NL1Oq1ylfoFAsXpcz/I2F/4V8=;
        b=vMQigOKo+qV36m5DDboSjUOYmCNwmCQm9HQaYKAyfVo3ahaD7lvrB7nzm7SXwi7zql
         nPCm4dJ8vHYaroTHE1TJA/z8Mkm+p7nxSoE+KkCntBjLU1yb9Q3P09hAliL4F7hwNjvL
         4UOALetjD3KRbEDr1wy3/GaANDo0tLheGQnk6f4H501Pn53K9qhdV7ON4aN6uhxuS4c3
         Znj4rvwLqOaDcRvMYffrslZfftWoLxLnyNC5MYFEkRTy37FQbMGjLw7oAURNf3N7hjpM
         8QL0nzFRuBoxdNS2u2zmbU6zHD/tr9QUvB4jtk55/jd//lE/YkcypHBfKPvM355N77ZQ
         nGiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W3yEqigV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YEAUpl784eUzExQww0NL1Oq1ylfoFAsXpcz/I2F/4V8=;
        b=UkYiENNU9BIVQwgzWnh09hHhactOneHB0ORGJR25kbehPZFZWKmdH8HaPC+F9YTXXt
         IqDMkehColFKdRRT3mJujbfrVkUBTmM5EvnuIAndE2LfuJDKt5YJslHAvLEZNkPJqYI7
         /RBsuwbRG0FHI+4MHQhua9t6Dzv8gFkotZizmzDQimzdM17yE4GbL8731I3MYjKYbGsD
         fD5g1cMzcx9GJNUkcv9jMFKPiOJmg2sgjrgN5GdifZzMzQhHa/TLETpfshnQWcJN51w9
         xuxq7S1ed+VT4yMOqpQGfNvue2yD6GOwQ2R/MqhYScWAjLqQtt0fD2bYcmyTLOMrwhsj
         VMUA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YEAUpl784eUzExQww0NL1Oq1ylfoFAsXpcz/I2F/4V8=;
        b=RE97o8hisasYwv6DHVR+27nAfdI4QnE1jxOYJBN4L6FVbaP46GRO5wv9Y/dWktybRf
         ag1zijQwl2xPmliGEB/Wk7zmDYsM/09TUzwGOhkAz8pEvdc+uM7NqI8z2APvRbx/ynwc
         SUVjwq8ZBmRGJ4FiQCm6jjOXdb3ne0+84V5XHAzhtVN+EP1ZZJAhUYgrEn+T/8gyEcYQ
         9XD0FGVKEeYLcboGuQdV4HZGDx55THC9vLJ5iBNCK+XcIIjhLvPuXW3fKySUhoJEPOxV
         mDybViYtJ5k7wH9UQ9A5UfeHn5sm7c/+wtwgYnq/kFPPRXSE4fIL+PKS2wbxgtwB1NMR
         XtCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YEAUpl784eUzExQww0NL1Oq1ylfoFAsXpcz/I2F/4V8=;
        b=R0xIFceCCX21U9nlZKtlib6QqjFlwICuTFRmGhEecnwi5DgcvO9WaA+9u13Pp+lz1e
         jQ+RFj+4PA5Mvu6LJlSeCkkHiL3IZ3n1bj3SauyYXCwfmijOQqIfAlBK0cWyFnOgv2Tz
         iVBFm+KFAy/7s4cRjhXSTIwAHX68q+Li7zVmxaY/0eN+CMMSS1rYboFqWtTSMff9Y8H8
         Kpuw35x4Q3PHKDl7Tu2jU1YbfI/R0W9dD2NThefidftY/NX8CRi8GKo78+AmqnHpQIV5
         /hIxx+t29yuaTenQrFrPvkQDweND+5LJV52ecauHLT/iONA7z4eQvRy8X91hk/QCK6wA
         v4Pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ikiKsrW7w3t9f0gIzKGeacGWaKwZJNTwT1CHqFjjPuzAHgMrK
	o/icI+xE3HsPAd85wL9Tzjc=
X-Google-Smtp-Source: ABdhPJzEG+XJiL9Usrfyw7S7694+UExEDEMuj/qNk/InFpWYGu0uN/BumyTGm1IBEPABXCE0/NpUEg==
X-Received: by 2002:a25:6409:: with SMTP id y9mr540225ybb.447.1597961837119;
        Thu, 20 Aug 2020 15:17:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6cc1:: with SMTP id h184ls18433ybc.4.gmail; Thu, 20 Aug
 2020 15:17:16 -0700 (PDT)
X-Received: by 2002:a25:e684:: with SMTP id d126mr563039ybh.332.1597961836718;
        Thu, 20 Aug 2020 15:17:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597961836; cv=none;
        d=google.com; s=arc-20160816;
        b=059Rt5AnZUaOnAmU1ojHsbVLpxErpjahOvhdebLtjOdQ41pv4xkl23fPcxDOFcpG4D
         9XX0Wc7XNT4QSF1caUTIVUGVaCuFFULZBtz2RWrxr8F233mkxj81+fClGmvroTHT6/NN
         6ES2+NasbDaRtQ9gv/HxJpEwwaK+wJQxx9xt0MKtjO89p2dNHr7HjYaESjDHsrJ4HY+q
         6GkLs37/vbmh44NF3B8xciwF86ffBWRJaq5DcppHwkXnXZSOlk0YwpHtLdR1JtMFFNdA
         WRjIpc8UrlFkebxrMJIxfsnsaT1BnIWWuAdc2YhRIIRhAFs6+0icVHu7p92a5asO7cnw
         H+jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fdaSqiYtFrEiaJmZIAOdnXuw3UlSm403gFoNqHFcjWU=;
        b=Ve+G6peqpqvY+K6fZRNePdSQXAYdEnYhoCeLDOsQER8y+x72JUHc2+AjClotO+bK0t
         iPAwYJJlpnkPe62zOhb5Ah5BW8vQM4l2Gx9oXz4hlKgEo9bDcoqRW2TaGORT6Rn9fmt8
         eWgfGojP48loEeURRaVs931lq/8iniKDByKtQ1niDKaFGw1F8wWWDKMnB/DhevNK/j90
         0uisryXwC90N+ldUXyMG43QcMtRVCAmdCzbjGTdMNXG3F7Cs3YnNdM00+lUUjZPGwgnL
         I35WnGREE8gKD/YMdcta4gHF8j7OlbXr/efLGJtR2OarM8Vt5JAWfmuzaXKSXqSDmPea
         tqoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W3yEqigV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id i144si173079yba.4.2020.08.20.15.17.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Aug 2020 15:17:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id q93so55020pjq.0
        for <clang-built-linux@googlegroups.com>; Thu, 20 Aug 2020 15:17:16 -0700 (PDT)
X-Received: by 2002:a17:902:aa91:: with SMTP id d17mr401005plr.27.1597961836259;
        Thu, 20 Aug 2020 15:17:16 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain ([89.46.114.77])
        by smtp.gmail.com with ESMTPSA id t14sm30350pgb.51.2020.08.20.15.17.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Aug 2020 15:17:15 -0700 (PDT)
Date: Thu, 20 Aug 2020 15:17:14 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: gustavoars@kernel.org, keescook@chromium.org,
	linux-kernel@vger.kernel.org, torvalds@linux-foundation.org,
	clang-built-linux@googlegroups.com, miguel.ojeda.sandonis@gmail.com
Subject: Re: fallthrough pseudo-keyword macro conversions for 5.9-rc2
Message-ID: <20200820221714.GA10326@Ryzen-9-3900X.localdomain>
References: <20200820220210.GA14894@embeddedor>
 <20200820221511.3328330-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200820221511.3328330-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=W3yEqigV;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Aug 20, 2020 at 03:15:11PM -0700, Nick Desaulniers wrote:
> 
> Hi Gustavo,
> Just noticed this on lore.  I'm curious if you'd had a chance to test your PR
> with e2079e93f562c reverted?
> ~Nick

There will still probably be a decent amount of noise due to
https://github.com/ClangBuiltLinux/linux/issues/636 but it is certainly
worth exploring if this gets merged.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200820221714.GA10326%40Ryzen-9-3900X.localdomain.
