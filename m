Return-Path: <clang-built-linux+bncBCR6PUHQH4INN36G6UCRUBBPENOAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 108761C6093
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 21:00:40 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id w9sf2905028qvs.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 12:00:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588705239; cv=pass;
        d=google.com; s=arc-20160816;
        b=QEZ9DDLyi9d7swsya1MUOpmZj6npJjNgYmKxX48xLLJyZf0mTMkEkzqnRqJNMth5Kl
         Jg37PXJgypS6OcUZPZ4lbPX1Aw6788IOzusMv2oc85KnKerhMB+iy0H06TSultpIN/bB
         ee1Qfsat8G2SkiM+tvx2QusQdLbWahgXjykNr+JADAyqQ4wHpiDmbz3IQBvHsrdop2eX
         LhPP5VbIvSwnJ/oavI2kBa3urd75ZgfoLeOaBdoBEXMlBGkLRDBlAAvIe4TKAny4l8+h
         iGDSdF8gFcazAkt94xC0cUaYSw9R/R4WAH6bygl5jAr3Xktx3/YD/BIJ40BTaAxyF4rk
         hxOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:thread-topic
         :mime-version:subject:references:in-reply-to:message-id:cc:to:from
         :date:dkim-filter:sender:dkim-signature;
        bh=pvCBbaMvJEjERCz20gBzpQz9ac0E90/uvemgJisrcC4=;
        b=ryKFmTRcO/Obu7jezJbcu/cSGmbiFz3GwH8QVYFRf25Tu6s81rzI3KFOdnojMcc7FU
         3GvgE9JsqTmDzmOT4rTu5ej6sg036MKYit/r4XXY8q0A4qPDabLRBYc0I6Ukn+zM97wT
         vgtnaU6pTcb5bLJpFsZggGCJv2bB5pXlBcZ1uxYKaNXVPD5KK4fKNpNO0PnvNmVLX0hM
         N12dh2ZGX0ETy9D0EC7/O8hWQCxLyWTcBp/KbNk+0RBBQI566aC6hnMUYTfZOG/vvtmi
         990NJY5dM1PImMQRrwFPp095JhwA1OOUgmZlz2gq0P7g/EAleF8QRRj2AYOKIbRCN9F8
         kZ3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@efficios.com header.s=default header.b=ayOAwVtM;
       spf=pass (google.com: domain of compudj@efficios.com designates 167.114.26.124 as permitted sender) smtp.mailfrom=compudj@efficios.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=efficios.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:thread-topic:thread-index
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pvCBbaMvJEjERCz20gBzpQz9ac0E90/uvemgJisrcC4=;
        b=NlsME1mUV8RhmkmLvsKmeELZUKRJC/rVrELWoH7KOs1TNbfVY6z2+pXgHO/ZrH8S4d
         LhelFZ2oN5r1Z1Dob/l3ErAc2fC1YwX8On993zhEez1xtsCWRu7Q7r8D7kdtZcBxGH1v
         o89Uf5dEccld3wyNHy+TX1ryiNVyxMmJMWyx11MkHN6vIlo/lD3WqeR6Bas/FUX/ww+r
         Fk6k2asQoIp+TosK/dt6B1svEugxXoeirpI49pMOk+n6zb/88BeOZUAbat0Oo8nS4kHx
         Od1sKizjEQYzw+691qhVnfRfXQSXRXT/jYtw3E2caASCTyl525Be4g+J5qzgEGFQ/7Qy
         TSOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:date:from:to:cc:message-id
         :in-reply-to:references:subject:mime-version:thread-topic
         :thread-index:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pvCBbaMvJEjERCz20gBzpQz9ac0E90/uvemgJisrcC4=;
        b=rU16AhpPq9RnSAOBTiNocSp8FaA0smaJtftREH2DkOGVK60WdXYssn0nj2ooXFHIpL
         TMoqHNe6NBEvaTN1ppGv1PyTYUgGWltAjqtbQKz6NeoBEcaab0B5RhvvbIlPxo1JgrHb
         wlM4M44DkEpWMxQTtpRdnt2tvn0Mp4tQwLQq2Ch84B1pJcnpC7npWSmvQWUO4E3t17/T
         3QFZV/Qsud6xllMiBTKUSTGqne89Tv3gUxnpuaoSnDKb2D3oKuYcPIG5Lq1QbFpSvfTk
         f52qqbw30nqMQwOeuYWc5EHB5D2P6VCkfF16mKMirkNtQedbzR+7dQI8j/3EUKbQHH1y
         TaHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYvbn1oBtpU+GyAP9YDfp64htOrN+UVWiF3FW9VWj61FQJfleIL
	GD0EHuRPP9YbxpyHgd7hdnA=
X-Google-Smtp-Source: APiQypIar19GnNpZf/hr8kk3/O3JrTaQ0wTJ7YOwR3jmSLthtP/cCvAh7UM4s02auIh4ZBIbrKqE4g==
X-Received: by 2002:a05:620a:2285:: with SMTP id o5mr4687940qkh.489.1588705238840;
        Tue, 05 May 2020 12:00:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:468d:: with SMTP id g13ls333589qto.11.gmail; Tue, 05 May
 2020 12:00:38 -0700 (PDT)
X-Received: by 2002:aed:2144:: with SMTP id 62mr4244453qtc.260.1588705238441;
        Tue, 05 May 2020 12:00:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588705238; cv=none;
        d=google.com; s=arc-20160816;
        b=pa7mrdknn+YacLJmCL0tEHLEB6Jj80ZIxZxSf7cZObBSa7JwA/Q5kmiu4Y8z9kj2mi
         udAU12+Zq9H+YJeSDhE+NAEJjOLBg3iVeQurEd2KXnhn9bARTxE4/kT+YeTH2nBXCrqy
         G9F/RdD/sTIuzZHdm6t3/zNazl3c609JiaOUSqfo4cFFUenCKJ9pptgXh9ArXqM3sVJu
         7UpA1QPIF83aDqpkjfAG3htlNVUadNQZy5bhZVwKymqNMn/Tqq45IrUJget0GKais6Xg
         hnNKQvIc4HnEDxno9RpLOzPlUTYZ305tMqZ+s83hQzcb5dKv88qxu5+bsM19kApqfDOG
         VXEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:thread-topic:content-transfer-encoding:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature:dkim-filter;
        bh=Rjfz5xymzYaDcKUScYp/x3NNVUdXiC7q7LLU5PE9Yq4=;
        b=s0OrHiRx3fwI014GzBgXeNaPvLq+xlMOdf8v4UX4fqZ5Pyl94NF1Ql0cg0GfhAcaM8
         zXHv7M9FmZKHhG0WawPOPaA5x/XGtCmswwVQyag9gprPmV7wB4ZRx1EHVWoADgyLsOQ1
         e5I6SW3kmm8hksuo53QPeLN7IQ+45AYnxyCCjsXsDjMbQypbk3utl6c9OZQjNC/x/s7h
         IwazI8jF/bPvQ8FelmqsVIxY+feuu/FMXGJt4euTk0ZP7xo0ikMQN/hLqrBBwuaqhAAR
         1JhpaUdOjS1Uql0Klgms0J/zY6L7kMhRGNEn3ZcyGWfoXjvydCOWYIfpDgQiLZsfrxC7
         sKUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@efficios.com header.s=default header.b=ayOAwVtM;
       spf=pass (google.com: domain of compudj@efficios.com designates 167.114.26.124 as permitted sender) smtp.mailfrom=compudj@efficios.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=efficios.com
Received: from mail.efficios.com (mail.efficios.com. [167.114.26.124])
        by gmr-mx.google.com with ESMTPS id e7si302802qtc.5.2020.05.05.12.00.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 12:00:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of compudj@efficios.com designates 167.114.26.124 as permitted sender) client-ip=167.114.26.124;
Received: from localhost (localhost [127.0.0.1])
	by mail.efficios.com (Postfix) with ESMTP id ED9C62A1541;
	Tue,  5 May 2020 15:00:37 -0400 (EDT)
Received: from mail.efficios.com ([127.0.0.1])
	by localhost (mail03.efficios.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id nv6F0bF46OsB; Tue,  5 May 2020 15:00:37 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.efficios.com (Postfix) with ESMTP id A03BB2A1540;
	Tue,  5 May 2020 15:00:37 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.efficios.com A03BB2A1540
X-Virus-Scanned: amavisd-new at efficios.com
Received: from mail.efficios.com ([127.0.0.1])
	by localhost (mail03.efficios.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id mo_UgZ0kehgb; Tue,  5 May 2020 15:00:37 -0400 (EDT)
Received: from mail03.efficios.com (mail03.efficios.com [167.114.26.124])
	by mail.efficios.com (Postfix) with ESMTP id 89D572A1819;
	Tue,  5 May 2020 15:00:37 -0400 (EDT)
Date: Tue, 5 May 2020 15:00:37 -0400 (EDT)
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: ndesaulniers <ndesaulniers@google.com>, 
	Peter Zijlstra <peterz@infradead.org>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, x86 <x86@kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, bristot <bristot@redhat.com>, 
	jbaron <jbaron@akamai.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@kernel.org>, Nadav Amit <namit@vmware.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, 
	Paolo Bonzini <pbonzini@redhat.com>, "H.J. Lu" <hjl.tools@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Message-ID: <656098739.766.1588705237442.JavaMail.zimbra@efficios.com>
In-Reply-To: <CAHk-=wiUd=fcpegFLK4VK9iFfrO5BmpGKDszGpuyJkDdz4JaoQ@mail.gmail.com>
References: <20200501202849.647891881@infradead.org> <20200503125813.GL3762@hirez.programming.kicks-ass.net> <a53369f3-665a-af0e-efad-09ae456af847@rasmusvillemoes.dk> <20200504201445.GQ3762@hirez.programming.kicks-ass.net> <20200505093625.GE5298@hirez.programming.kicks-ass.net> <CAKwvOd=cP8UCX0+5pZ3AqzvOM8LKzLJJ_heDhrghqJdOnHoGMg@mail.gmail.com> <CAKwvOdkL+2Gvn2mkZ8cdHN=1F5cHQHii57ocD0RFeLJxEt=TUQ@mail.gmail.com> <CAHk-=wiUd=fcpegFLK4VK9iFfrO5BmpGKDszGpuyJkDdz4JaoQ@mail.gmail.com>
Subject: Re: [PATCH v4 14/18] static_call: Add static_cond_call()
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [167.114.26.124]
X-Mailer: Zimbra 8.8.15_GA_3928 (ZimbraWebClient - FF75 (Linux)/8.8.15_GA_3928)
Thread-Topic: static_call: Add static_cond_call()
Thread-Index: TBBGZFVyha9Zhc3xVPg/xpFfwyTxwg==
X-Original-Sender: mathieu.desnoyers@efficios.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@efficios.com header.s=default header.b=ayOAwVtM;       spf=pass
 (google.com: domain of compudj@efficios.com designates 167.114.26.124 as
 permitted sender) smtp.mailfrom=compudj@efficios.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=efficios.com
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

----- On May 5, 2020, at 2:48 PM, Linus Torvalds torvalds@linux-foundation.org wrote:
[...]
> 
> Your initial reaction that "you can't compile away the read and the
> test of NULL" was correct, I think.

I suspect this pattern of "if (func != NULL) func(...)" could be semantically
changed to just invoking an empty function which effectively does nothing.
This would remove the need to do a pointer check in the first place. But maybe
I'm missing something subtle about why it has not been done in this context.

Thanks,

Mathieu

-- 
Mathieu Desnoyers
EfficiOS Inc.
http://www.efficios.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/656098739.766.1588705237442.JavaMail.zimbra%40efficios.com.
