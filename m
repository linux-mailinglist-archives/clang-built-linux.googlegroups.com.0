Return-Path: <clang-built-linux+bncBCT4XGV33UIBBYXE62AAMGQE4TP33AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6A13112FB
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 22:02:28 +0100 (CET)
Received: by mail-qv1-xf3e.google.com with SMTP id j4sf5986875qvi.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 13:02:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612558947; cv=pass;
        d=google.com; s=arc-20160816;
        b=goY9AtEp8AkC8GwtEfU0Qt5FbwhNq7FTbJUlMFJ/Y95eOxnG9kgL+/nOUPF0SKk+6a
         Fbr3wJuR69whV4/93fzHN/GRqCSdLC2P3a4wg9dWaxSXag14eDciJSBBepDt1unUSMT5
         JI+nxhWulK8+fqNchU89e3lETUDVnJFA+8spdcGPAZtTP9/exc+xcWZQvVjUh95FQSB+
         Ux9gfWiwyuhfgVnRHST+4msYiif1nohZfI5So317aoQuhl91uwQjG7APSFIxcNw4pDMG
         agZdb8FdXUXxyZfPTT2troDWjSCg/pfzix54zHLcyh1vQx69dFDjiNnDvrfjYgqt08ZV
         gMBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Yic1ZccLL9WlhzF+D09jU45TFIwSXCrsp/q9MDiWR8I=;
        b=xIEIHZIlk5jIE7Ri/TGVB1VmPFITMbsQGKF7XpbeO3xp8eLiyfDr9R7bXH2iXPJ1Zo
         rbqkzHAlDNagJO9yZZ1jnAuvzBxyrewCvTEYgeqs8Em1LSYhBUu0hMfxwP2uyy+f+lwN
         nRGZN5K3fc8GCZOxlh1Al7YFc4kMZu+aDxtSpcC7WFpDNwATg3mc/h7sT0WyVDroDxXA
         WRzhGTjWCiJ7ow5QOwWSkN0rq6TR/iJctEGs6UueUJXnG4ASb9g802cL8noNmJof6Psl
         iTrmfR91Us1GByYRyDapbvIH65Iz2Vb1SRVED+aiqWO7LbRuXPYjqP4vn+ts2YMA2Yfr
         SJww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=2IMkEBmn;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yic1ZccLL9WlhzF+D09jU45TFIwSXCrsp/q9MDiWR8I=;
        b=K43Gwg0mTfAHkGtc3Nh/XgGsnD9ne9fAFzQZTdtxSYLM6ScjKtircPWZTQQ3j69WS+
         JqfdUsV5YSL4RmuUbpsgTAXkuP5godo9v8kMAyAZhYqglpmzK6knN4E52JLWr1BeSAF2
         cjOQmxXZ664J37lHTNr2iOJ3cYxoeWXQ9ZmSAIlQAJhp6rcMMghjhlqr6tg8rX8E5Tol
         2Qoy98at6WlKjQWU+lhVJTXkbdtKfYUi+FB8AmDpohYOGtf+MBRVI/MumVJx54M8YV9P
         TE8oiDcGH904AmPHhzRLxR1sume+yVoWhloLS6dG6AmJI5VGPZzm5O5ox6XGvKKUYf2+
         83PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yic1ZccLL9WlhzF+D09jU45TFIwSXCrsp/q9MDiWR8I=;
        b=Lwjevgqu/re9MEJ19pdLiTw6jHNCjY0zAQD+CmkIGvBC8xTLzZiaoALbhWboAgldRu
         Y/7k81b6BaL0jFwo6N2EvmzFEbb3MvG0odXtfZe9AXE5PrAraYeNzywC7B37z/6aSvRE
         Yjp61qBlsaPwGJX8pv418Rsvc+MOCr+NwVxfVpGZc+ivZ4skUXmgv7nzHsxpKDxclzeF
         W89ipqFOHrInYs0f+qco98NyBSHi1fpve+1n+BZlt2MkWlLdQnrZQKQ8C0ScVleRcwnN
         thCueplvGTg7j8t0umCkIZaeVKEUC1Moy+Xa1ZZAj2mHP8VdYoxM+XXCTrSOH/RFPUcz
         QDJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532u9yAeZPDdoLPiBjqBavYUYj8xbgF3SPKXkzyW/aHTpy3f3lS+
	CIBELa6plwSdPJUP38+wrLY=
X-Google-Smtp-Source: ABdhPJywgUSWAVU2AQSSckyO5eMAo9W3MYOjdE6n9zf9siFYCRvjJO8p5fcsNlIu+yBq8knrB6s29Q==
X-Received: by 2002:a0c:a9c7:: with SMTP id c7mr6385881qvb.53.1612558947022;
        Fri, 05 Feb 2021 13:02:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5d10:: with SMTP id f16ls2148669qtx.6.gmail; Fri, 05 Feb
 2021 13:02:26 -0800 (PST)
X-Received: by 2002:ac8:7482:: with SMTP id v2mr6000680qtq.69.1612558946400;
        Fri, 05 Feb 2021 13:02:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612558946; cv=none;
        d=google.com; s=arc-20160816;
        b=UNKweCa0SNwBDqK1pYKB+zlcp3niB2kfDu3KGi48qMX8GC6pGUCBMxUK6GUqjct52T
         NgS1myn+Vyrq30YT8AfiCeYXH1oxkcczEEl96Td628l1+seNDhHPPJPEKABjxBDosXlg
         StJ+GCdNxHSu/ML9lwI5T9kWgqkKBXwo9g5ri73J0/ECRKhsSgSV6FuEY/3scP8nAoKq
         zQcF8xSXBDJRU0ZSJ1rggMOsOlLZn6iA1ww51gF6C7y4uImvy8iteY8eBGIQvuwff+0O
         tJ1JDdbAJyInQVsBMd8YLsxKVOXB+fL7OFMDS0ylpdsj/c4rdUsb0dFGncRxV2drVwrZ
         /fNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=88eqM8WCL4ZXuE00p5NPmRm8JHtU1I38BmnseffrzlE=;
        b=gmFrsmjVGKgnuzU/AqPmzIdnn+scvRIoZKtxvP0UrcrXTUlFhhwAGSZNQge/a8hlgX
         hHkbpvBUB6876/qVnFdFFEovSIPKa7p6FYnekUJ0Zce3RSJGYuiij5JtZ+xYmk8t65ar
         yHnPHIHgqUXWelRD7a2+TUJVJaK+b5ePe1DerlkWbxk8uny+xOUuMi2zn+LP2EZBxc/8
         k1+uKYA4hRzKzX/6yCHjiPydR/mfAeBmfw8xfwUxWFu08gHyRO6LTQKMN43eo9vfj5+f
         cYhycwPAayGAMA3BrHiCAI2uCh0ipT8NuzIC/141lmaDNAwrn0nSCNwZG3ue5dSeoBvU
         Mw1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=2IMkEBmn;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m8si741091qkh.4.2021.02.05.13.02.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 13:02:26 -0800 (PST)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6E13C64FB1;
	Fri,  5 Feb 2021 21:02:24 +0000 (UTC)
Date: Fri, 5 Feb 2021 13:02:23 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@kernel.org>, Nick
 Desaulniers <ndesaulniers@google.com>, "Kirill A. Shutemov"
 <kirill.shutemov@linux.intel.com>, Wei Yang
 <richard.weiyang@linux.alibaba.com>, Arnd Bergmann <arnd@arndb.de>,
 Vlastimil Babka <vbabka@suse.cz>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Brian Geffon <bgeffon@google.com>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mm/mremap: fix BUILD_BUG_ON() error in get_extent
Message-Id: <20210205130223.37e6bf7fb8bfc773db9b5fda@linux-foundation.org>
In-Reply-To: <20210205190005.GB461042@localhost>
References: <20201230154104.522605-1-arnd@kernel.org>
	<20210112191634.GA1587546@ubuntu-m3-large-x86>
	<20210203184840.GA1711681@localhost>
	<202102031202.F0AEC4A7@keescook>
	<20210205190005.GB461042@localhost>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=2IMkEBmn;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Fri, 5 Feb 2021 12:00:05 -0700 Nathan Chancellor <nathan@kernel.org> wrote:

> > > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > > 
> > > Ping? It is pretty late into the 5.11 cycle and this is still broken.
> > 
> > I think we should just do the __always_inline. Who can take this?
> 
> This should probably go through -mm, unless we get an ack then Nick and
> I could take it.

I added it to -mm on Wednesday. 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205130223.37e6bf7fb8bfc773db9b5fda%40linux-foundation.org.
