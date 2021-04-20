Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBJMB7KBQMGQE2BEQV3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 26750365317
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 09:20:06 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id c2-20020a1cb3020000b029013850c82dbcsf624073wmf.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 00:20:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618903206; cv=pass;
        d=google.com; s=arc-20160816;
        b=AzX7kbWA9sfCXT6FgR4MFwcg0VMlECOASuFy5GvQvVQLhLjVTZvUSR/ghjiq1upEos
         MgUe2WoCnfBwqqRgnTpVS4Zqr38qo3kdYBu074ca2USXA0Jl1shZsvP8CSElSX9ypeTD
         tCRX92+lTkT859CBpw6iaxzrNIpMX2k+xAPJKYYV1/wE+DnHgZpRdRrfj/Rw6eqaz8dz
         b6B285TlJ1jteNmkR/u9d4QUCvLRZcT0d12VgI78L7/eiiuSBQUC1AUnB+g4Oq7TleTe
         iKYUL1KTs+LI62up//EdI2hT/zQ9Gw6XKoU1BLo8CcW/rKD3SfBewsHCCyj+U4zsEO6U
         IzmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HSpVlsU1jLjVWaYThe3u3Do3JEp5rt9cWsSosAVSSdk=;
        b=K+7+SgF/kVBRZMtJcKrxBX69dS0OadGHpnYmP21qarDRPjHOQZWH5AAF4fLh2tDv0k
         RzB8+BaaOwfxi9MQgQys+arM48lMIawTkLwW3H9/WBjTpmXenk+sdLn/q0PuGkH+vipl
         asNko2nRINruMPmNUQjbhkzMUlSmlvkDvqkqfgHqmVZuzMUYWABVL5Wx2vdrKOtwRnQq
         A4rh6UHjrwwejx0TwAdRUJt4gyPGIxXLjHVCp8kskjRnlY7qBhq1u19CKTiJJV3RS/er
         QWZZMzMAmVHArf1fyOF/t6Ogubvnz0Px21yGAxfQMXvNGdhjNp5T11v5L/+CZwJsQt10
         ZUgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=MlFnyvGu;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HSpVlsU1jLjVWaYThe3u3Do3JEp5rt9cWsSosAVSSdk=;
        b=Psc51BQ2zGtDOqrjUVcW/4WYCOwI8pk2YQXwvyrvfrcp66d3QcbQ42BabXQrPf9/cX
         NEqraDXsjXxlDXo3OaxMxC7hygTZd8mMaYPPuEbd7cZDwnZADPFxUvkjqU/6iq6nNtpv
         em25woKdJ32rC70cXbzLwxmXS0Q0acNEArz2bGE0Z4bYQ70V73cEdEka6nu1CUmF4cgq
         GxSIQo4WTVi6JD+/xqu3GNTILs5oNogaSxEaFji//pyTYRZuJdY3qCtKLVWI/iS1qZRl
         rPM0I/u60aFeaJt7TFFjEzGRnLo3TRlFqmxlJ4ZUrRh5MzykWvzWPRpcDrr/MVmNSeuu
         lvNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HSpVlsU1jLjVWaYThe3u3Do3JEp5rt9cWsSosAVSSdk=;
        b=cMUwK2kdm4o9iB6KrkJFoOfJxTBKsS3Y0+QLyUdOUdLbuLOxKV9f/S4VFqPoOG02T0
         5kLNKVcRsw79bvubvMzdOTQuVjTpXjTLdHoVSq5JlJO+WrFCBxOj2anKPtTMVsUTOijg
         nN1LnDmibS0v+SFptuoY2E37MkIxSdc9WolaSn75/viftfBoX9Z54oIhGqt4kODUXYZK
         lZfzAgrXoxtNTlHaV3/IPrOTPSbCrO35R8T5uvjG3rLxs7W9pEBRj+ymx0qMA1NDIkXt
         Mz9HBQlBTuHmoYpFb8ktK6mDrCwUpr5VeNPqUFN6jJGr6NzDsDcJE1ono0JBUo1Yijvr
         0tFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532jdRzdy5SPVvI8yUQCzv/DuxkNmGxEdJwHON5DfBuZ8kwSwHXF
	7MdSYibvZIz1zAEmz/5BYU0=
X-Google-Smtp-Source: ABdhPJwfEAkmUaYshgI6CCJGmQmxDNY7ynlwkMNOlJWbFIXDHQadqZaTQ0LWkgvw+7cZ6klCsX/bGQ==
X-Received: by 2002:a7b:c8cf:: with SMTP id f15mr2914245wml.135.1618903205895;
        Tue, 20 Apr 2021 00:20:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fb47:: with SMTP id c7ls11246285wrs.0.gmail; Tue, 20 Apr
 2021 00:20:05 -0700 (PDT)
X-Received: by 2002:adf:b608:: with SMTP id f8mr19637441wre.338.1618903205130;
        Tue, 20 Apr 2021 00:20:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618903205; cv=none;
        d=google.com; s=arc-20160816;
        b=bDyAliV+qnZ0LY1vku2hmGl4aKzT64YFOiUaWLXjPfJYkqrrcQ1Xq0SVu3zo9IpmwW
         AIklNq0kvJblGB1zPFDWK5Ig6I4s78lUPztgCcGDJR0Wgi/Cjdt8GBXKjKrBEKsLAhzN
         CZx4yQlVgjkQFpPXph/uPCAcyQtvVQZjRR3Ud5Gurv1/ioWJNOG67bFr3cz81NAmikTd
         Grn+zK1HWtpePO2yn6g9K10P2HO2oAM6rdqEq4oR4KtxEuhq6k3HmbqBzPRQyhfCdMSE
         czrG8xIf7m9cNexeAI+LTQk7C5LQFXZnawMLvvx9RSLm8NADXYwJDv8+4MMPN3ADmgxJ
         y/Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PheP7FkRkfVSr8ZX7xF4EBpL6tBzEmE1WwGIjQKRjck=;
        b=y84L17pOxFhuBoTAoyRzletej1NMy5eq5KsXgid7F8KIWc8Ue7rMt4iQKfKUZQmNXh
         biqrnM2Yzw73C8B25pzmvqspkIXGLE/XTXPSqhqIFBjebGzHC19qhfl7JpacPcEhrssa
         Ju4tMrUFjFjkNZFnosMLJCrLbItGwd1DeNrciB7f5FWohc7S+7zm598Ti6jQRxZ4SP+5
         NvZe5ftRRzJDHpVjzBqYSzUwSo/a7EFFMXBPP1ZcT6tuJBjG8EGPmRW7etoKUlNbMhmR
         inIzffYOF06EAMCAH4/xm/QwycasI6JLHxilvMXz4CaV62To8W2DhL0PAV2/cOR1B/zS
         43gQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=MlFnyvGu;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id e17si1556949wrx.1.2021.04.20.00.20.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 00:20:05 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lYkf4-00EqqF-Fo; Tue, 20 Apr 2021 07:19:17 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id BA93F30013E;
	Tue, 20 Apr 2021 09:19:04 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id A5BAF2CEB52BC; Tue, 20 Apr 2021 09:19:04 +0200 (CEST)
Date: Tue, 20 Apr 2021 09:19:04 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 09/15] x86/alternatives: Use C int3 selftest but disable
 KASAN
Message-ID: <YH6AaBY5A+x2pmqI@hirez.programming.kicks-ass.net>
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-10-samitolvanen@google.com>
 <YHrIc0L5AQukw525@hirez.programming.kicks-ass.net>
 <CABCJKuevfuVbKZPtLrFacXZLk+VtbFgebbyLeK8Xxe7Z3YmwQA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKuevfuVbKZPtLrFacXZLk+VtbFgebbyLeK8Xxe7Z3YmwQA@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=MlFnyvGu;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Apr 19, 2021 at 08:26:36AM -0700, Sami Tolvanen wrote:
> On Sat, Apr 17, 2021 at 4:37 AM Peter Zijlstra <peterz@infradead.org> wrote:

> > The problem is that the call-site does not respect the regular calling
> > convention, so calling a regular C function is just asking for trouble,
> > which is why it ended up being asm, then we fully control the calling
> > convention.
> 
> Ack. The problem here is that we can't declare an extern static
> function in C. How would you feel about making int3_magic a global
> instead to match the C declaration?

Works for me.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YH6AaBY5A%2Bx2pmqI%40hirez.programming.kicks-ass.net.
