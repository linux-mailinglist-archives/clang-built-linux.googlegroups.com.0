Return-Path: <clang-built-linux+bncBCM2HQW3QYHRBEWOZ6AQMGQEEKXCGXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id C3296321DE2
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 18:17:06 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id t14sf3041395wrr.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 09:17:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614014226; cv=pass;
        d=google.com; s=arc-20160816;
        b=UutthHSqpD38ozSDaiOaAIthX5TerTJn4R9sBpUt+ezxinZL/aYaeZdycYHTnCAHyD
         376kJUdIkj1QhN1QQnowIfIt6sGtGQh3DNA9V0/ePUoz/pZTX0YrdI/iYdR3MxwPEi9D
         gk5iHyj83O3OlYfcV0YuiXqEEzABrAoXQT10ikJagmFc7Dc6WwulGvxE8yMRiutX2LSR
         uqojc1YQURTa4s2AU23vXu0CoHpQVsegA2Ilw5b28XNoUAzXOKTgU4Jb5kcuNIfAxE6/
         p8w6zQzuxUDf886fXc8ASEpJIYTYs/BfqHv+XiptV/n4aLD/SWlAUF4LbhempiOpUPp1
         mS2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SNMwgCssaL76HQna1bZUrzj4Vs+Koq53/GC/GSbJqw4=;
        b=Z/kJ2RH7yKC4tXwTEvRtErjjHOrunQO1G5DEAlKBcfmKqaI+yWM0UKKLoPKxzAS5S9
         kSNWSonvAtO71QVbertd4XpdFQzeZzvK1GLs9ziq7YF3zs3Nf9BaJZvg/ch+LS/TuWu7
         V+I5YmK7Zf3ACCFfdjcmUN+ZML0joPbfxALdV7qqaoeEYQvEXh8F2WnP2Add/nL20dRZ
         sc1drYRMStdzQPw7fVll5Hdleb/pIfFFV5BLSAzApPtb4obXUQ1yUlXtpwZZkemSyfka
         KbKKkJCcadB9F44nQFhaU5FIvXPI+wknEw/+CO6CArfx632E4tHb5mOqxIPleAqtoWQL
         +LpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=wZXEpQux;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SNMwgCssaL76HQna1bZUrzj4Vs+Koq53/GC/GSbJqw4=;
        b=eO1pgwcEVSPqIATBm+lYc6nsjHCh/v2MV+StwOzDLtIc5UHQcwyxerm25bdDGog6Q2
         cVVEcloLfpWPqC1xr9yJNmEH+RuL9gqUX0SGSDgU73V7yBBn1RVvt+1zEHs3NsmeY6pB
         prQ+y2UC1W4Yr4scVlJBqYBEi/AJveXTCkbH+TAMCuO3qmlaHykHJFxEPhVZgxIWDZrD
         J1K6Fzduxm5rQn7EIb2CkuxyAaRLJe92N8jbyHUELHdA10ZRwtkPl8UU9smATniDnYhv
         ZzU6zz4udupIpaGiwbMAe6WjBGYK/do+N18gtwsGyd10ef1a5m6Lw3oIN2JKr5I9hTpn
         ANWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SNMwgCssaL76HQna1bZUrzj4Vs+Koq53/GC/GSbJqw4=;
        b=ZjERRYe/Y4YncO+PjeeJPfHc1QUBzbW6flkIj1EW6EQgAzgqG2zxIkpg4eBoqEuvuo
         u/M6RyyTJ47vd+rh6JFp3JjrW/p+Okx/eCVIH09LA10xALKa5SUzpsjRTDlbOHJfsDAB
         geIlimvJ8aOJfGjMvzkELccKKYwuFws09az6J3UX0G27WFPocjbW3m8dZOeqrSkj3Wi9
         /HDo+u/P3/uY3n/tYixfyf6qsJKExn9qFmrP65i+e7HhKk7+ws7Bu8Wjc9JM0lhtCaNr
         RrGTxyLS9TwXb0zw6+Fx0iRB0nCAhZMcdEQyNMy9xzAEpYMTGI39gK4wIipQ99RJ4Os0
         HkQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533BEjDn+wCAqjln6affLegQHgBIZJkS6IdoGEGC9jaMgXpiXeyc
	8dFfdHyM7c4Nqu/ZHCsE0tA=
X-Google-Smtp-Source: ABdhPJzZ1ZPbE+ErLZfFwioYABAwdTQ28PHvlZ7uHaXAa+VslaSvDZnjyEVSF96j9TLJWSQ1x6Sgkw==
X-Received: by 2002:a1c:107:: with SMTP id 7mr20849682wmb.28.1614014226599;
        Mon, 22 Feb 2021 09:17:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:60c2:: with SMTP id u185ls7955744wmb.2.gmail; Mon, 22
 Feb 2021 09:17:05 -0800 (PST)
X-Received: by 2002:a1c:2ed4:: with SMTP id u203mr21454425wmu.45.1614014225869;
        Mon, 22 Feb 2021 09:17:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614014225; cv=none;
        d=google.com; s=arc-20160816;
        b=IpkLPXb8ibM5UVk5qqF6qQmE+SSDLmFZgoDc+B7EYscMq125cXZRktuLsxz0DTmUPW
         i9PoGNPj1ZqH20c0l5DWtHK8QOFESYHK8AEH8Exw/D1cowJTVNE0vKU2/tZQ7nA3LV79
         AMO+HWZZGH/r27/iqwpLCHDDMnuKM8pJ7fgTJtB3LOKtqDHQdyUay8f4PMbIbuoTea8R
         I9JM8qWIeMdIR5ecFuTrf4PeNfeCdGtpVavGhd5WRmxXpibpi1Yj4NnBCYkGzHrPJIsO
         jUXJOz6kLFqopUTtPNdSlo24u4hr6XgsGQ3fH73qSbhM98+YcSO9cBn5d7VgAq2wjVY/
         t8rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yjnmp7q/Al8qcvbrBP0GUJzHgXzsT9AdC3uoX8Jc1ok=;
        b=v90HHcmS0bB2nvqy1hgXeim5MCJR7eYusTXsARCBVSHkJFsMYIHUT5OvBNJPIty2Ex
         fFj5ULaIwy7mUco9nB+5XMrJcFAjiX3cs/qtSfxjID3De6uzoxeWhVnuPaqA1N9WAlei
         HsN0AQ2fcC16PnRHyjHAi1PVdgxXd1fVICb2naw3+7frYbu1FG/CojobwYqYG+irjnzs
         Sox7lcibAN1yYcUME7QsWz735u3/a1irv2eNBxdljg+KUDAvF25KMi1DgVEFPIdmQZ1l
         OfIqylC1PD1MeFPOUuPLuClsG91Tn4BhpUDiCulqZqSDAlKhzXTeVjweF7lhXXhfJleO
         uTEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=wZXEpQux;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id v16si24742wmh.1.2021.02.22.09.17.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 09:17:05 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lEEpA-006qgU-0J; Mon, 22 Feb 2021 17:16:46 +0000
Date: Mon, 22 Feb 2021 17:16:43 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Mike Rapoport <rppt@linux.ibm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH] mm/gfp: Add kernel-doc for gfp_t
Message-ID: <20210222171643.GJ2858050@casper.infradead.org>
References: <20210215204909.3824509-1-willy@infradead.org>
 <20210219195509.GA59987@24bbad8f3778>
 <20210219205403.GX2858050@casper.infradead.org>
 <CAKwvOdkV91grirj+1+OHongQriLYgL9v8m4V8PsguHecVyBwuQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkV91grirj+1+OHongQriLYgL9v8m4V8PsguHecVyBwuQ@mail.gmail.com>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=wZXEpQux;
       spf=pass (google.com: best guess record for domain of
 willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
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

On Mon, Feb 22, 2021 at 09:04:40AM -0800, Nick Desaulniers wrote:
> #if 0 /* For kernel-doc purposes only. */

Yeah, I did that already over the weekend.  Not sure if akpm has published
a new mmotm that includes it yet.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210222171643.GJ2858050%40casper.infradead.org.
