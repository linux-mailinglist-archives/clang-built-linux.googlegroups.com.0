Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB4OV42BAMGQER2I5HEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 279CF345A0B
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 09:46:42 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id a26sf616546edt.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 01:46:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616489202; cv=pass;
        d=google.com; s=arc-20160816;
        b=j0DdmKEdBgB9GC7j42EbXjFXeZqKTEdjOqwshfug2QkMv4PfEmcwZSSLdFCWXvl2wN
         CKS+jnJWQi9h2iB/pYbQb5Y0XyzfslT/AM9D4ZsWfNwtAkSxMTWN8C87onsENXRB/1bn
         biiJ8ZRdCDqCzXqWwvCEdhSBBrnMCdhYKmNSe3nu5O6nJAwpLkHIMKkLq+DqbEYRxVuL
         ArfNUsOjYKryasvvPshRwXvS1GAIlREBRLk/Z+DUvgey8+CevJAJ03zxMcS9iN6KOqgq
         jMGXXz0+XxXeNoPodQlN4IrZo+9//shlNmd1/VsAJ4hnTbIxd+4bOrZrKX7x/hjCs1t4
         3rxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ssL5ICcTW3rk0sXElca6ME/lrTmErd4yib/FQDZkFoM=;
        b=HEGrfA0VhVf4Eog4wcV62ymgPpcwKFxDxWvpykRgWoZ1yHz8CoFZpgj67h09emP4W4
         yBQk7CYubmSrB0zxwHd2Vvlp9lZCbSXU3N4aBpnBTIIyxQuC2ZJJ3Z1J0IVXq47Ja6x6
         XS/RnacIPF1Lk/IyZedhDNsf/a/mCTkhMk4Gz7SDvCDA3Z9jS9PPBZfkVeO0xMdnAKMR
         UKrNIy6ML/pJn7rLXRKIBOTwHElfnUBNnL1VF4zl/8oX+sZ3W5KN7t9k+S7J56FMXUCw
         lv0eXsV9UUL5Axi17HlAyODYOBJCD4VW8wC+AElUF3L+AR4pK8hkt/LaF6zcK/AZLrrS
         Ngww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=WJSBX7tk;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ssL5ICcTW3rk0sXElca6ME/lrTmErd4yib/FQDZkFoM=;
        b=mO2DMB7CKxufVxYMbi+sFNsZpnxMXg8njWRbvwZjFtcPdia/eUrVMvpTxdeOiw5dC0
         arAgCA7wWPIojmqhCwy5Xf2qs+PAwojQewFD7Ioq7vQoL+aLM7D74WezdaKwhdif10eP
         7WdMuUGsX2brQjwyEhLVvJ7hfTiqFLintR8dK80iEuBidNwUTnuZMvFZpXX4ooBL5Gq5
         46aYf1flplybRzTEWp4cXaeXxmCBbIh7YXSJ92kW2tGYrOcHLtGPu27p/x0bKEk4VHD0
         dTpmeXj9f19H6nNxnNcjhertBSh8vmjd9BYqGuLzUK+H8FBk/ryaLs2DapF9vdwg+6d8
         FSwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ssL5ICcTW3rk0sXElca6ME/lrTmErd4yib/FQDZkFoM=;
        b=OnDOLAYXT/bDZMcRazMohP9SW7KwfEKc7k9UicLY2qJGvsCteHR0ZtOUX01CJY5GQV
         NsJhjsdS5dyyWPhch6ZYT/bML91ZgmtVP7jSqnX2/nKNZwv5SwZOrI8QaDcC/njwfRE+
         4fvZo4fEJD9OJiSaojHs1+mTUeoFIbOLLCNVJHoEP4jR7z2yaaSHnfXj7PlPCe5ZUQKi
         0A682O9pTtGwOSWO8iH+0gvJ/w0bRZ0wJGQzuBMd8eS0zSV3F3hYvidzbBItvTHcNg/C
         1nUjPiZ8NaLQJFtwAOdSF5kDI+kNYcWsoGCswdBe76hzdPgeRL5sdCLDi1f0MqTvFfaS
         rVdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kweKYs8IXK/YDPIPhQpYV1L3bmutUtiEnxTXwGdXdCRilXxNy
	GgWs9PTdXGbLRkrJtOGFT98=
X-Google-Smtp-Source: ABdhPJys42guGMocfk84JMdf1seYaxptN7LBIwvGEkPt1aDGY7SrbybQYHjsjjFn+TpXAfLwE5gPGA==
X-Received: by 2002:aa7:c497:: with SMTP id m23mr3564038edq.74.1616489201955;
        Tue, 23 Mar 2021 01:46:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:16d7:: with SMTP id t23ls8647191ejd.7.gmail; Tue, 23
 Mar 2021 01:46:41 -0700 (PDT)
X-Received: by 2002:a17:906:358c:: with SMTP id o12mr3961363ejb.156.1616489201089;
        Tue, 23 Mar 2021 01:46:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616489201; cv=none;
        d=google.com; s=arc-20160816;
        b=E7Qg5JdokuFzDMZFkjaZ/9KzWcbzRg16OiaF5Z34u/DZS7V5rgRU+RNPbsfRDD9rFZ
         7DTycF8WbkVtYUgMEtWWDoN9wwrUe6hLPvtjtcVU2y84bYkuz6bWNw705fn5pHpGqdig
         QU6Itx9ZTXwOD/jzCylglU05R9GuxxNlkmH+0o4QNxgR4fvl2MWTHQTSesEbqWrOa58F
         YEI7nrVU8SWe2kHSL3FZpw3bC8Zho7ATdOC6I8eRNePyS7kuodLoEzTOu1EL4A869VkP
         xeB6wP64wB2A1aiwwSCrjoTow/4cTY5dWPnIaVGbuf08AEzEl9wSDlkOvzH/YMlSefDv
         vOdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fKxgSwHD8OagbxisfzH0NWSImbk2McuY6JB0A1nDb+c=;
        b=BsbqxM8ZXR84GaEp1IL6voyaBKX/+x490DRATWLwuiQ5Dha/1ApavvYDNYqXMNPXDq
         rNS5HFFtpD98V6IsGcNXLApADAoGZuUDvLGVXcvlkgyii0qJAfDfPloz3HwoRXKNQ7ER
         VdG7LpZaQpIF7tGpQCjFv0Ie+Y3COerBhElerhCHBdEyDU3V4byxii8DHop6l1psfVoR
         HHb8YxiQB+ynogOTqGZkQlb9I6MvPqdVgGaYaZECUbthiG4QA7wfMPD6b5uLGCr2Xhb+
         /WNyrLL71SrDblDXDGoh64qC3Iv69f7xj2y1PZ+GToZelH3MpCaciApsghoPCAfhirnE
         vD2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=WJSBX7tk;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id f25si668115edx.4.2021.03.23.01.46.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 01:46:41 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lOcfg-009nHf-Rr; Tue, 23 Mar 2021 08:46:00 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id B436F30477A;
	Tue, 23 Mar 2021 09:45:51 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 93D8B23601889; Tue, 23 Mar 2021 09:45:51 +0100 (CET)
Date: Tue, 23 Mar 2021 09:45:51 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-toolchains@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	"Jose E. Marchesi" <jemarch@gnu.org>,
	Kees Cook <keescook@chromium.org>,
	Florian Weimer <fweimer@redhat.com>,
	Christian Brauner <christian.brauner@canonical.com>,
	nick.alcock@oracle.com,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>, Will Deacon <will@kernel.org>,
	andrew.cooper3@citrix.com
Subject: Re: Plumbers CF MCs
Message-ID: <YFmqv1kZocZf6Kay@hirez.programming.kicks-ass.net>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
 <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=WJSBX7tk;
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

On Tue, Mar 23, 2021 at 09:35:10AM +0100, Peter Zijlstra wrote:
> There's the endless UB debate... can we define more to reduce the UB? I
> mean, we're already bound by architecture ABI on the one hand, and
> actual use on the other. It would be so very nice to be able to get more
> -fwrapv and -fno-strict-aliasing knobs that define UBs away.

One that might be nice is -fcdecl that tells the compiler about the
calling convention and gives us leaway to abuse function pointers (like
we already do anyway).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFmqv1kZocZf6Kay%40hirez.programming.kicks-ass.net.
