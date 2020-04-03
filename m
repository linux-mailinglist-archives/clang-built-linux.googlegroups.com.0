Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBYWETX2AKGQEI36HYYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECB319DB61
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Apr 2020 18:20:51 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id r42sf6966708pjb.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 09:20:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585930850; cv=pass;
        d=google.com; s=arc-20160816;
        b=MsKIjV3Ng7x+576/ybRe0iAAUh+g9a+00kXZFN8CZPS+F4XCEhTSqeF9RqyOONapm4
         VzSD5IM4CUy19m/7VRx7tHMDh55WV7wJ2AbsgYWAT1CnTZo3MC0E4ZOuNjp7mFlBHMaj
         Hi2SZRWsrKKGY/DHkKq7tKDah78RsKWCn0K9oReW/4uX56+fQ8fypu2VYjy/zuKhfe1F
         N6jVsqo8F3IBllmYl4JM6juaXZ5CQiPSWvirTyJRmemr/TcV2N3tAQAvbC/uzZMzaxYs
         6pTBuhSMoFVc9oL9ny3P0mmkJBH9mfMeF7TnLl8v8r3UdEVsgklE+1tZ91hkIHiInsc0
         2EmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HYV7kyuYBNK195vVpVvU71jnNjdH0Wf5JZKT5XGUNMw=;
        b=LIyzePF03w5VSy333t44UTqhP8UY1pn2+i9Yw2fETH2hkZuWxnFd967NSA5xUw01gD
         kzDIXgRvbI0pmeiDNknQ7M3hvwVNv4pNi3k3VsVdMcLXG1X5Z8xCtU78je0JyStggpOz
         DiKauzFBWUi2Mrv+u3OBqDWTvY6m64BjqaweXVHi7CBxHu73fLefArW1x9y5HkK6+pTS
         QLJTXnWN8gI/1r8nE2vZaazipWBDAoz7DjW0onSHrEj0R6KSirg3XlD9B59fMjo4Ho4m
         qNJPbb+FmJVB6GJ8ZnyLICFKLEW+UBONg3FMIFzixLQb1b1h07mUVXTXf2NlSdGkBzzC
         pjWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=T3Upy+I8;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HYV7kyuYBNK195vVpVvU71jnNjdH0Wf5JZKT5XGUNMw=;
        b=IlwiCpd/DywYOQD836FjrTY6g1Oa8vpscfMoqVDTFzznEAdKjLaQwR3FNBUzV2oRn1
         wRqLJeZLjXWXBqSyoJ1MsRBZH5tRxXZ3KHGdnwaB+P8OjFBJxQF4KKIPDb4iLIN2lKnH
         BIc7PAGlX0RNWjAFbAcBugexVpKto6L+EH35Rk/MWcTechmrxojWSxmnAVVaXQduU3Qg
         f12B8Sewfk7LT8nQblrLNi6I0FQPlGYzewyilm6ZhB7L0GkF9MU5t103o2Q9U9IPfQxf
         YNUy5DyVScjJ1x0S1mPuh5W5da5cOfPWICL07+BavaKCBYFVNVXiYx5m4E6kpioAHPbL
         PCNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HYV7kyuYBNK195vVpVvU71jnNjdH0Wf5JZKT5XGUNMw=;
        b=jhUj2B9guzdwpaaGPQEv2dfEyyjhSVk8ek5zJgiBfBtiJed31akRSKrS8HmyOJG4aD
         X/7jK8qOyeP83Akwuq9VCmJLaWLzJVpCBRmY8lCD72YVJzjwKkwpw6Gc3ZZJ2LIXUpuh
         hwR+MCeQPVjfkA6eILn4UDZ5zeJq/nHF6wzM1DVWQ7Fczhlesy64P9ZSH1lywMzq4GRL
         e2enPI39z0G6ehvxAFlqNoYYQlLpIzh4BqtdctJtK3Ze98pcV8I4+KWXDuN3kqKRPX2o
         znmAZ2aaRSK8DHu9os6JvOlaOVVwTfE/EqdpDuq+9c8w7I1a7yEFceL8JnDCTaHrN6vz
         AeNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuadHCkpeiji5qR0tSK18z2ICWBGpmqjH3lPuTziyKYGFASPCFzq
	Ci3xTOCJO+90BaQSxUtcxNQ=
X-Google-Smtp-Source: APiQypIFXSUAPEa91v9nBs3iLmTt+na/UXyRNQd/fJ5IXq54omjpkLuJeahWuc7/rJR8r+AEepr8fQ==
X-Received: by 2002:a17:902:b40f:: with SMTP id x15mr8667036plr.266.1585930850216;
        Fri, 03 Apr 2020 09:20:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:86c7:: with SMTP id x190ls5243985pfd.4.gmail; Fri, 03
 Apr 2020 09:20:49 -0700 (PDT)
X-Received: by 2002:a63:d904:: with SMTP id r4mr3078234pgg.323.1585930849599;
        Fri, 03 Apr 2020 09:20:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585930849; cv=none;
        d=google.com; s=arc-20160816;
        b=WTCSdfE7zH3vYNAjHLtSvDFaj7knZTcQ8qynC1U+erkJwOxtWFNnv2SAgekrGOoPy7
         +wkfRDu3cw9oLlnf6QP1Qry0ybUac1FR7fdpXetystsI/jNJ9EmUTs19AwR8N0CMcYN9
         0NY+ybD5phw+3CMAqwpalKY9YvBaoMYVqWB/HumB0OvqIKBUsfXJMylXed6FtYJI1OR1
         FdQEvMVV61TJ8fVoT5suEOyMlEPRKTjsDO8dDHaUR689WvFa5ntsaRuBmL6YJSLKaVQe
         g9aSesLPYEQqEeJIByDVKXOHMESi5ssdZNAZk79AAQhAo1y6mObX3pOVrnWNgFHRCIiz
         5L3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LluwbzYPZTeVhlFwEl3Fq8+v9AvRnqXZTrSsmeMHE2I=;
        b=00+NKU4dZqYZ9dS+dyotcwUsiGQ5L+DZUKgHoy3lzrY6cF3Pc7t9IZdzcb/6vseb8s
         Bx5JP+r6g3J9dNKu/GS+u3eA1/ZDvGyxRItVnk22kUBQv3Gvj2DfOniaBRicuV7j1mf3
         4mgnm059eodEyROeZA48zCFHQGdlGLCsg1iBJsxltiDeNwpZnmfcRmdhygvP9ebDiPA/
         WrBwVW3enQu6WhJQ8su+DO8XB/v1+a9kDfEQZCPa4Df0rxH+tBpnyvMmjggbfE7U7nJO
         bx28eOuWjnPxu2PizrhCAv2iOEs7/EjgIDu9d0YH/x8XYqbz5hnvsfD61vHuF5n7YsSa
         kLpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=T3Upy+I8;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id w18si769664pfi.4.2020.04.03.09.20.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Apr 2020 09:20:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-98-oxMaVJn4NUuZOhmFbeg-Xg-1; Fri, 03 Apr 2020 12:20:44 -0400
X-MC-Unique: oxMaVJn4NUuZOhmFbeg-Xg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E58B1100550D;
	Fri,  3 Apr 2020 16:20:42 +0000 (UTC)
Received: from treble (ovpn-118-100.rdu2.redhat.com [10.10.118.100])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 356CB18A85;
	Fri,  3 Apr 2020 16:20:41 +0000 (UTC)
Date: Fri, 3 Apr 2020 11:20:39 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: peterz@infradead.org, Kamalesh Babulal <kamalesh@linux.vnet.ibm.com>,
	Matt Helsley <mhelsley@vmware.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Petr Mladek <pmladek@suse.com>,
	Raphael Gault <raphael.gault@arm.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] objtool: Documentation: document UACCESS warnings
Message-ID: <20200403162039.fubfeblv3x5pmphn@treble>
References: <20200326134701.GA118458@rlwimi.vmware.com>
 <20200326183707.238474-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200326183707.238474-1-ndesaulniers@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=T3Upy+I8;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Thu, Mar 26, 2020 at 11:37:06AM -0700, Nick Desaulniers wrote:
> Compiling with Clang and CONFIG_KASAN=y was exposing a few warnings:
>   call to memset() with UACCESS enabled
> 
> Document how to fix these for future travelers.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/876
> Suggested-by: Kamalesh Babulal <kamalesh@linux.vnet.ibm.com>
> Suggested-by: Matt Helsley <mhelsley@vmware.com>
> Suggested-by: Peter Zijlstra <peterz@infradead.org>
> Suggested-by: Randy Dunlap <rdunlap@infradead.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V1 -> V2:
> * fix typo of listing uaccess_enable() twice rather than
>   uaccess_disable() as per Matt and Kamalesh.
> * fix type of "should called" to "should be called" as per Randy.
> * Mention non-obvious compiler instrumentation ie. -pg/mcount
>   -mfentry/fentry via tracing as per Peter.
> * Add sentence "It also helps verify..."
> * Add potential fix "1) remove explicit..."

Thanks, adding this one to the queue for tip.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200403162039.fubfeblv3x5pmphn%40treble.
