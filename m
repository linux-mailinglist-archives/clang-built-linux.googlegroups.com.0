Return-Path: <clang-built-linux+bncBCM2HQW3QYHRB7U6UODAMGQE5L27FJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id A385A3A8604
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 18:04:15 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id 76-20020a190c4f0000b02902e8d879d2f2sf7252153lfm.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 09:04:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623773055; cv=pass;
        d=google.com; s=arc-20160816;
        b=PYF2ckSGnIHihLnUp7B7pi4ZRCjLKQq8b1Si2/m36OoN8mx1GeaI32adwy0SfUcISb
         oL0O4FovZHxm2ZGvwjaRk2nYFj8zObBdx2kmaEc2CZ1jGY/4lgU06iXsnO3kq0+st8Un
         BBAKqs0IFxvmis5MByYVI5kol9IZrE4yDED+A07aYJYmR+wuNNrCYyWXHAM0Tqc6l3p4
         Mg0+Ym0EjGJpFlCUt8AKXX2xtVlQbA+9aoR6CJ+xHqXGcPOPDK61hIbuZOhmp6+8wSO5
         aPevyEoW0G/yPRWMj5tb9DvA0h0g1/5vuJyA8G8fmpYw0qg0SNt1UuPD1QliYmojE/Rf
         QezA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kU3Ke3/QVS5cVqZ90EQXBCA7kKeRG9SjK0Z/y2HMPmI=;
        b=tTSlBjpxHm5/SJM3qT411FbbUI9JroQkjQi7OQWkULLvSMDnVOiyAtmhMfkz5nNKSN
         pT0+gLoeWFqLLSb2kgWj1K3DvqkXGSqUbDKsjBXWQO4xXmOQU1NYmMIgYuMN0GqgHj+h
         IEsX06/zeBFPDbkacL308/V5zK/I45cenjAWx8MZ9eJ6KmmDcB1dQMFanpH1lx8lMenC
         3sfAX3vwHFqBns9h6T8hOVqLxZPvNdSnDrCpmwsLxnDu30Y6BZ8/64SnG1OocYUFPTd6
         8hJtJgnaNvdoqozM8F8rJshrEbLUCNqdKqF7rlLpsCyXFXovKBQK5oLirKsa1v4Em595
         yldQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=QW8LsKzd;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kU3Ke3/QVS5cVqZ90EQXBCA7kKeRG9SjK0Z/y2HMPmI=;
        b=HQDQb0pDivEgTVuZnIH4VQEznQQz13AUw5J1FSZc2cjyy6NnpEniSv3e/1l8BtFTwW
         27zMmS49NbOtu4S1uTtXk2gpjxl3eGnmc0eW5MJ5vzA+8DZfe+bVnQzzjqyjBeaoR65O
         ETUFsLJ+PB2ShFoEShalOWUub6ieAxkutrL7rXmyAPC3kmxJCEMX0IdQyP7EFj/SFVH4
         wfJfjkrmem1h/3EtQFCYrf8QpLpgK0zEFamg5BR6+PB6gruy666bzUlMh63My4vR9YwI
         4lRQNOf8gOHaFp8NyTRmcfcb6D8nIi5v/ruDeBN4XXbaRNkvJvZNd1FAexet5gCBSewZ
         XQfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kU3Ke3/QVS5cVqZ90EQXBCA7kKeRG9SjK0Z/y2HMPmI=;
        b=OjmvSvhWHEdQowPc65WMUjaFu3GjZUDHFHV97WvFPH6mXvCnLCVdSbuZzuoH26d7Yp
         bpfav05H8WAh3Y7BTW47ySHaeh0CXOaR3cFBMrqmtshABi7Opp/Wz7vIFZgDHujSkCc0
         5UsYxAMbppTLOmSKBdUScNLMSRrT8DOMdBNHKPCV92iBVUXnQO84Qy/uJ9fstefp9oXn
         Ui4ndJCp/Rwvy/BjFpP4zi3j8VlK6cwtjEfu7BZEu6B452Vt39iJw67YG07sNV7P03F8
         KwH6j/K7Yot1TnEVwhLubopRuJ8Mo4Wuq7HuX6fEwdZmEwiNJDUJu0S4tQF0tgO0DJlz
         81lg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530nhXiXBKeVuXgbr5HvPZ1nzUXnOhtqBjNXNAhZuQipVIba5KCt
	WcW05rIeSHkeU7r7SvnTibI=
X-Google-Smtp-Source: ABdhPJwev4tv9NiqrgyTZBGOcvkZYWGpxUrlT9w0apMGMjxkV2tM48lyk3ec4o21dxtCviBRMzRnTw==
X-Received: by 2002:a2e:9887:: with SMTP id b7mr315251ljj.78.1623773055095;
        Tue, 15 Jun 2021 09:04:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b99:: with SMTP id g25ls923016lfv.2.gmail; Tue, 15
 Jun 2021 09:04:14 -0700 (PDT)
X-Received: by 2002:ac2:53b8:: with SMTP id j24mr105154lfh.292.1623773054067;
        Tue, 15 Jun 2021 09:04:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623773054; cv=none;
        d=google.com; s=arc-20160816;
        b=ID23BSt/iJSOF4hXKsSF30tv9cfKkkO3xu1pnhpFXgJJhaJ8jfyEs10OPlVsqdQC9j
         1uvAysTjMNoqG3v+jo4umlklZY/hZYfbafPPgZ6jbK9QVA2uoNApPy2QnZ1DvYzEmdnx
         CDYXGf4KFhgHIrIBVvFWhEpcGuL0r4iGm0TH+IEwbztou97d0r6Ui0k7MuJKSoglTToa
         1RJ8b/NUhS2uyFpQLhUHuvcZ+d+xhjPf0YsbmhMJ0bj/EZQaOUN05CEfYsCs62QKgAmw
         ppSEVdmQ1pGN++mYaylCtfw6iEs2r05mCHs1TN38uY+S4E0zXK44WIqr7alb046eQlZc
         RhUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RSxTZhrCVvlPH6TBm6FnRJTJu75hcXLGuCqA5vyGd3E=;
        b=ySgQW9NoBs7acaMnSXk+wIc85/gRcaRLpT4V3MO56pPCF96pUCULyN7QGd6JqWdd86
         H5q5p8jU4jz6K6sunL45Mk06TAr9xkeMxzD8f4Bz47iOSDK409f+YHrnQK15kqZz3gTH
         abibmQdXxPjeG7dblVL0ygiVuN2kKe1QMMnadq7W3GxjBOQACzMgaLaQZboU5+GDRb6W
         0LEp6nDso9KJKb7ffbu8J1CesEc6ZgYRNzm+OJaw6+w0WBrqyx4Mbncni+7fMk65yYRu
         KcGrKc1DCLDoC777uHFOooKCl3StajfPREZQn+P/K3x3YuhZxyWx9g84dWEqkV3RupTD
         oxww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=QW8LsKzd;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id bn2si89134ljb.7.2021.06.15.09.04.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jun 2021 09:04:13 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltBXQ-006zD1-39; Tue, 15 Jun 2021 16:03:46 +0000
Date: Tue, 15 Jun 2021 17:03:40 +0100
From: Matthew Wilcox <willy@infradead.org>
To: kernel test robot <lkp@intel.com>
Cc: Hugh Dickins <hughd@google.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [linux-next:master 9529/10007] mm/hugetlb.c:1591:9: warning: no
 previous prototype for function 'hugetlb_basepage_index'
Message-ID: <YMjPXKrHfqZKDisp@casper.infradead.org>
References: <202106152328.Mh5S48hE-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202106152328.Mh5S48hE-lkp@intel.com>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=QW8LsKzd;
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

On Tue, Jun 15, 2021 at 11:58:36PM +0800, kernel test robot wrote:
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> mm/hugetlb.c:1591:9: warning: no previous prototype for function 'hugetlb_basepage_index' [-Wmissing-prototypes]
>    pgoff_t hugetlb_basepage_index(struct page *page)

So clang requires the prototype to still be in scope, while gcc doesn't.
Does one of our clangers want to file a bug about that?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMjPXKrHfqZKDisp%40casper.infradead.org.
