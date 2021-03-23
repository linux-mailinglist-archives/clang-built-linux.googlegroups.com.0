Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBD6Q5GBAMGQEX344B3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B964346BD9
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 23:13:36 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id v29sf84072ljd.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 15:13:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616537615; cv=pass;
        d=google.com; s=arc-20160816;
        b=v32hOloSIKF5t1JVv8mj+hUNlRAhD2i1xsuzK+TTbeNfGkpxJIbOcuq65GulhaLuYC
         PXcogbcMn8ZJ6cqNAi5D1HBGouTMLbghbm3YImrUTzm2+rnb69EX60vrjKMxVfglZ4Zn
         BkZFeM3c2YVaxu99xuLkyDZy9k3vsf6d9ppQ9F5c2usklUQ80G6Jtxohk3I+G9Fp2JEO
         WMK8DyuP7iyRSpEZkEHGYrklJ1+Sgkdls5GvnxwolrIioQYUU0jfZmWNXkg9AiwrwXCY
         4/90+yHZrV7W1qNU9G/TBsC2YAtXmBB/C8QXEYwMLool0KibBUzuAslspTPQyzniA7bH
         Gf2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=GT10A9XUCkvlVcm5xi89nuLi25tVGC/Aqlpum3l/f8A=;
        b=CXb3yUxXkxCMvVYHo0Lc8PYR/wp6XUxVcZeJ8vVGdyD/GUbvGHvONAcYmrkQBBnVRn
         QXSAJ8VGi40b7Tv5dREoSYc9Wk15PdAIQLJ51/OjTlwNv0IxF3mfnK4SqIyGDCU0iWR2
         irz7mgX6CvaIWVHj7yvmvnLE9onZzt1oSt98udMIQ7y52Lp6okgcUiLSlf1tG8dSSPkk
         +BPRVMtFFpRI3kv+d/2OcWWTekGmcC/J2DPr908xS+62FtU3CfwM5PSHOXCmeLfJKrVY
         uSE4egbkwlafpiVgGx+7Y2bxfxcJ8Kgc/2FoiJSbaX1t4J2pFn5MYMWhUik6taJnsUv+
         eHFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=AD3md6kq;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GT10A9XUCkvlVcm5xi89nuLi25tVGC/Aqlpum3l/f8A=;
        b=lsUekquSKMIyqYRIEkAeS34QK+PkeWrR8kMn2bPRtFg3zavkSewYWYlieSayOiwOAs
         5fqD5W9f5hbxWINp2YN8/7ewRMLRVzwuNVdPXHPvWwhuqktr+5G2YbsstQi1ixHzpusI
         FOJekU7Fp2mDiyq3YVcv+XcpszSjUhVihHd307bLnI5C0gYlDVB83AZU4ekTA260PfU8
         NKeQP/HUjz97SAbOAbbHPXq/wl/yyTerFRn5LW70OHEe2QutptEj7QPQP8ubbGsmzDCH
         MakTQr4U3xWlW/manA6xZ72T5JMlbui/QHHU0f3wtLxj5MlV0cdOwA43VFDmJ8p3NMlS
         KW2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GT10A9XUCkvlVcm5xi89nuLi25tVGC/Aqlpum3l/f8A=;
        b=nZYS9Zy8U4rR8JMdlAnWOjQ6QFR+D5Ja4f2ayXWFCMmwUt+SzBSxka22+IzMYWcOVN
         gtEFfrvaX7ZYtg1MnYmKo3EHzrLacs79kbPxZR7wbwB1nP/YZpRF4G2IoGJZXQWNzGvd
         7ZH1w7RbXj4bpUG9FBOBg4aZyrmkYT6wu+w+Xruvt4l3l4e9d5PlYl+mCDDRzLcGWSB6
         iPrzeKPdNFJ3RmgnvkNMxILWR/MxSbwLHQ3aYLXYd9PSAn5QbH+gJj2E2C5gPe4yjeXr
         vFo6oNAOf4oI2czsmqjcxASj3MsKEkT2TqBwurYxC27/u1OKy+angj1LOy0RquVfLFFP
         M9zA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530exRYprn9H5BgJ+t5ZtrlN4+Tci7tbfLZsSQhcF5mzzllTzR5G
	PCHNlhUEm8fTztCapONrnfU=
X-Google-Smtp-Source: ABdhPJw4SYrO+trsr1p617v2o6vWJ/oV2xhp9FeZF1+QjkebQ98p9zH8fD7oXN+1AQy7Qyba8dMZcg==
X-Received: by 2002:a05:6512:3ca7:: with SMTP id h39mr105659lfv.346.1616537615793;
        Tue, 23 Mar 2021 15:13:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls128322lff.3.gmail; Tue, 23
 Mar 2021 15:13:34 -0700 (PDT)
X-Received: by 2002:ac2:5306:: with SMTP id c6mr110360lfh.88.1616537614714;
        Tue, 23 Mar 2021 15:13:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616537614; cv=none;
        d=google.com; s=arc-20160816;
        b=gnFaOvw1J5XqqoeQPOTBknxPQGicLx6yZcVRgptXieTvgCUmgqzc20U3W7J6+ae66X
         gTijYGb8BHFQ3TzaNfOEQSNinc01NRJbsesDGZCnMKRnAhjOYOSR4xGr2FImL42cPR4/
         AjgX6cYpXyi6+Xj7FH/7SrZd/mwPsMTSVS3N9DFrx7J2xQ6uZod8N5puwE0fMWYJIuqR
         fhhawchqjsckYCuzXBNLkyhTkLprw7LoIo3vkFGpM6mj7su7dY8Y6aX934NauS652e/M
         D6Nsmuth2iWVUU+Hi/feMfgvR4gJZCOkoWnBvbo6zKp0HLH/+jGAwf4Cj/pchkM/Pf2M
         ZSVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RaxNNs9Y6YIP76zp1wZIN6hp64KantReS4YHOC/0Lb4=;
        b=GG5QRZoulx2MRv4zZ41NOwVfRwM4VPioSuLefi3BkZVRCL1sBYjFs+YCut0Bq+ustP
         Lbh8V1AQuhWHS5DikSMlX5S8/URXoKT6cmUDOYNeng0OXnZF1ZUmzMRLe5ohtPche9O9
         qrJMU8F3UV5+vgZdRUAI+my+9Voz9MTZeoqLBvvCkQH4lN9WHF1Vg1AHNF1C+zDozymQ
         ZhKMvnxi0Fhs5miw9bIzLeu8XQKpzNt8GoCz1bDX4ywrLUMXk1TFAecdwJocojzd8T0s
         urhSTGmNegwQ98YOX5Wrp0FGd+ZC6zoBtVsrt3eqDfnuwrrpCNJTl3U7Ko3q4RsAFR4T
         SRuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=AD3md6kq;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id f7si7902lfa.0.2021.03.23.15.13.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 15:13:34 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lOpGf-00Aakm-0U; Tue, 23 Mar 2021 22:13:07 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id B2ECE9864F6; Tue, 23 Mar 2021 23:12:46 +0100 (CET)
Date: Tue, 23 Mar 2021 23:12:46 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Andrew Cooper <andrew.cooper3@citrix.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-toolchains@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	"Jose E. Marchesi" <jemarch@gnu.org>,
	Kees Cook <keescook@chromium.org>,
	Florian Weimer <fweimer@redhat.com>,
	Christian Brauner <christian.brauner@canonical.com>,
	nick.alcock@oracle.com,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>, Will Deacon <will@kernel.org>
Subject: Re: Plumbers CF MCs
Message-ID: <20210323221246.GB5208@worktop.programming.kicks-ass.net>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
 <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net>
 <a60f83d2-75da-d147-ae92-47a5b474e162@citrix.com>
 <20210323195358.GB4746@worktop.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210323195358.GB4746@worktop.programming.kicks-ass.net>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=AD3md6kq;
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

On Tue, Mar 23, 2021 at 08:53:58PM +0100, Peter Zijlstra wrote:

> Another utterly disguisting option is to align all CALL instructions on
> 8 bytes and have it followed by 3 INT3s to make it 8 bytes long. Then
> have every function prologue round up the return address. This should
> work with tail-call optimizations because the round-up is NOP when
> repeated. The obvious down-side is that it will utterly wreck the RSB

Slightly less horrible: "CALL func; INT3" + "INC (%RSP); RET; INT3".
It still completely wrecks RSB, but isn't nearly as wasteful.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210323221246.GB5208%40worktop.programming.kicks-ass.net.
