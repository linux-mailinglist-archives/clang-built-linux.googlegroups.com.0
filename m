Return-Path: <clang-built-linux+bncBD66N3MZ6ALRB34RUP2AKGQEX7HWEKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F6619E6DC
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 19:50:40 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id t206sf4171509vke.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Apr 2020 10:50:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586022639; cv=pass;
        d=google.com; s=arc-20160816;
        b=NvlFJDcIaXy9vd2IVdRF7I1mMxNnlZXJlfl7XMJWhV9BpK/aSAtoAn6gdhRwzO91G9
         EEyuekX6ZcqS4zd2Q0c2xbBbzlZRYKw7biDT0QijiqgbdFc9So/F7ohbaodomW5M8w7L
         KIX13mGJ/oB0xUqdBPefKfphAjrG+IKWQEWAp1wqWxnFgQO83Vwbi1x0jP/urfdv0pWt
         iQeQXFOoFyeURdG/Gp+SOrnc6WUzxApW8n+YpJ0Mvooufv7Z6CFceSWnK7CjUVSm/FIs
         p3lM6k1Qivv7sRctrKsmK6SE4Sedy4exj2icISZOqTS9TM7lbsGZLzMPus2GwZ+8fnMM
         3nIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Pyy2+/MCgXLfV0wxRpoqx9R5Q/B9B90kLgXKpaE+49g=;
        b=VZ7D1mNgiLcU9Xo64pIWI5HvIMV/9sH80Q5sZQr+heNBUHkTZd46KZyTKcWtlwu6rB
         pTRGoBRj122I2J1/zdKIOR+pn78ETpe2kZcAXH/qyptAg8k71hBbT0S95RTaBuk1iHZz
         EuWr451aVdB8X2AvXqbkpio0MaO3UwSYLpaZP9tSH04YgOSoJjgBr1cVnNlEJeGesz89
         8rbRgBbXqjs6q146mqqd1tOunWGJNQBwdYxKXyy2LXQvRYxt5uQu0T+UR9OSOkHFGbf3
         /vmha5eSm6tevtyOHzfFRnCQcQ1/4D+jWqfkM7ZTGsWBZTH0W2GrQFm9xXdFHgaa3+GJ
         PMXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GZfF0Aas;
       spf=pass (google.com: domain of oleg@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=oleg@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Pyy2+/MCgXLfV0wxRpoqx9R5Q/B9B90kLgXKpaE+49g=;
        b=ft+N91JVdKhJKrbvV/jHKHHfUAhg9W3ZnUjaQKK1rA+zkOGDUwD2pTpt+xlW0zBWzq
         PRHocj3grvU+WD2D96azKyO34IAuBPs/Bf81MjBTL2+CkEyeWPHFyOsD4RML0IOXqrvy
         QC3BZsvqIoK4ovhl9KREcj6tjZu7RRStdLMfRUSlbZ8VfCs4gUXXkIk6f5b/3v1zND8P
         GuDXwca7ENwSkNJsd3g1eZy2sG1wxniJlLu5236akc5fePl88hb0+Xlr9wulVTUcVsY6
         EJvBq0WfwkiKHTn/4mL0xFZL0jaYAi3AcBhzs75X+THpbU9rwOtu5ZwkDuOB4hJRRhRg
         HaLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Pyy2+/MCgXLfV0wxRpoqx9R5Q/B9B90kLgXKpaE+49g=;
        b=gWWJ0EezxHWxGSx8LW/a/6LbcuQ/TQe/zLDFi1SSCCCR6EKOGAgP61F8TD+9icF5Ma
         MaPIAyH/1ZAYQThFwg+1Qa3Vq5IGwHuwHUMx49cWsKhHBBKZZ+WWlCaCLWVUwVVOdGbq
         rEtpNLeybUUbdfsEgZttSgxp7DPc9XDuM0ITq+RSx7dtBY0LpVGOjJWGtHawDc6m/VOv
         9gBRpfgf0VMKa1DbueBip35frkKTAzvZMWJQipSzITCqIPHgkMf5KrxP8JyfrBKFEcA/
         2ezHo0aHgUz3/Jd+F2EIBXvb/T+oyBwQIwvNPsRWJaGMYmbaEU7JUrgAPGtmvRPUhrtS
         hDFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubtlG2x3cQxGGh2T4fbcyonUXAJlsTbCiSgzgPVwjluHE3gaBMa
	X0OB0+pihxDkiOE2ofs9yQQ=
X-Google-Smtp-Source: APiQypJ8jAktrso7ojar+oaoqALihr73SH6uCcTDNmj1OWfYcfAx+xKrE/bCvtki0ddrcKqawoePbg==
X-Received: by 2002:a67:1587:: with SMTP id 129mr11671276vsv.146.1586022639619;
        Sat, 04 Apr 2020 10:50:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f9c3:: with SMTP id c3ls662493vsq.1.gmail; Sat, 04 Apr
 2020 10:50:39 -0700 (PDT)
X-Received: by 2002:a67:328a:: with SMTP id y132mr10980246vsy.4.1586022639214;
        Sat, 04 Apr 2020 10:50:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586022639; cv=none;
        d=google.com; s=arc-20160816;
        b=HDJxX87/pzt2rIwiTdsfxBYZISTfKmTv3VwdwhJFzjyc81GAq7ny8q8LKG7awR2CdQ
         X7gQ7QOA+GcybfVg6ulRM5w9Gx20OKOFxV8P8r64AgZ42YxsdqjV2+AEItLZM6C2QyRW
         DccbuGnO2gH0XdJEOVyib+ej6lWtSpQbL2jlvItW2EOF+6wrfkr4ruA+HF37+wSyx0Ac
         3meIMmLRoeInf3CsiOwcQeTQrEWYUY1NR/g63fVt2O1yJ4CvgMUKZyGjuwsqFrloFrtI
         3zhpEedJV3XJvoP3c9QQtzyY282vCHtsLtfZDhRMczTWRnvhlDktYkElpQ0uK2TtuZ5q
         tKJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=XpIFvMqlAZPPaPuZTXJXVsC8D8YnUvdMZglxGAOu27U=;
        b=MbXcyu6h0RS8Ck8B4UdOwJppuUxWwHbvQCbhG0jQlxYA0/NEZnJtTYaMQkyd6wBwtZ
         HzzvuvQiQp2ds2KjXPXophTDnEKdhiCfHLMRpZsX2XAXYWYr5ptw3d9yZYFOQg5WLdkl
         Ev8QnSOJ7OWqgWlm3mcCWdjhL+k0I8bohtT9phCSin7saOvqVrPc4LJCMigTUtiz+o3q
         qx+/ZTZE5R1wso9urH3QvbrSkwaScGeHziu0QwiO17Qsh9+KCtqznQUEwSyAPHClQthB
         NeBWOTj3eAAd/rDMTBjK3BNTbKoDRBTvWDxfGCx9V2rBX1WY8d/LrBmTQJv8lR6uF6yK
         rlBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GZfF0Aas;
       spf=pass (google.com: domain of oleg@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=oleg@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id d20si900836vsf.2.2020.04.04.10.50.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Apr 2020 10:50:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of oleg@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-453-Ihhp-RW2NgOWfPBvLNLeEQ-1; Sat, 04 Apr 2020 13:50:33 -0400
X-MC-Unique: Ihhp-RW2NgOWfPBvLNLeEQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 84432DB20;
	Sat,  4 Apr 2020 17:50:30 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.40.192.53])
	by smtp.corp.redhat.com (Postfix) with SMTP id 7252DB19B5;
	Sat,  4 Apr 2020 17:50:25 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
	oleg@redhat.com; Sat,  4 Apr 2020 19:50:30 +0200 (CEST)
Date: Sat, 4 Apr 2020 19:50:24 +0200
From: Oleg Nesterov <oleg@redhat.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Cc: Nick Desaulniers <ndesaulniers@google.com>, tglx@linutronix.de,
	mingo@redhat.com, bp@alien8.de,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux@googlegroups.com,
	Linus Torvalds <torvalds@linux-foundation.org>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Marco Elver <elver@google.com>, Brian Gerst <brgerst@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] x86: signal: move save_altstack_ex out of generic
 headers
Message-ID: <20200404175023.GC26298@redhat.com>
References: <20200324220830.110002-1-ndesaulniers@google.com>
 <20200403231611.81444-1-ndesaulniers@google.com>
 <20200404160100.GB26298@redhat.com>
 <20200404170604.GN23230@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200404170604.GN23230@ZenIV.linux.org.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: oleg@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=GZfF0Aas;
       spf=pass (google.com: domain of oleg@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=oleg@redhat.com;
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

On 04/04, Al Viro wrote:
>
> On Sat, Apr 04, 2020 at 06:01:00PM +0200, Oleg Nesterov wrote:
> >
> > Nevermind, Al has already suggested to use signal_delivered()...
>
> FWIW, I propose to do is the patch below (against the current mainline);
> objections?

Looks great, fwiw

Acked-by: Oleg Nesterov <oleg@redhat.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200404175023.GC26298%40redhat.com.
