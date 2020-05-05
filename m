Return-Path: <clang-built-linux+bncBCR6PUHQH4IMDGGH6UCRUBCDP7Z6E@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A5E1C6200
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 22:27:47 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id v1sf941698vsi.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 13:27:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588710466; cv=pass;
        d=google.com; s=arc-20160816;
        b=H/IcttuWflt389gwlFmEgDjcwife47AW00hJyFAyow5yE6DTqMxp91dwkdATQdNb5/
         /51MVmKqiD4aLg8FT21hSsjzsBEJJvaRdApu4vn0DZePeYh/AMmBCStat7wPcE66eFEN
         UF03D8y+jcJPlvwVSMMPQdMtmzCjraWZonP9fWh6b+XyjZIaKkPno6UI6POh5A0o4SCP
         5j/7Avzcka/KfJ21eV9+AsCV2kXG62K+zaTSTVJbkzGhqfMfPIyEgwcQcNqBMHeKZYCW
         ItQzydlsTHODUedxxjcYhrUcEKLyq4pBIDs5qQ5ZfXXvzzGMX/i9LmomyX8zDZlO3tOR
         0iqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:thread-topic
         :mime-version:subject:references:in-reply-to:message-id:cc:to:from
         :date:dkim-filter:sender:dkim-signature;
        bh=lAvfeOKlaeIJbbYSo7O/IbA17FTMtq9hdQv+nbhvtpo=;
        b=idXBUU7H3WoU5VAlymDNalp86/DI2EV65s7jsppNfIvTJR8Z0pTCFmd0HTct77koJY
         DN7wQjJZ+8h/QLK6vDLTFOoylVvLO3oZJbTzPcQ0IVL30Oie991s+fx8creDMPkSbKkx
         dGhLMtnYkIK8XFlS7MqKjcU326PlbvsDC2vTp7ZznB+LHDDJI5fzPO6MdCOa6c3TTKQ1
         /WRGKNsv7jBNj6o6sCvne6ZtsiGuiPpvLYQxLSQyT4xZJprsPCWL+apm6Cfh7es8Hk2J
         dIXSLaOcfoGrEqtU9jepBK+hWvcYtsg2CTQEeWDgZKBbYNG2ig6+pD4mABuoco/TiKtt
         ShcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@efficios.com header.s=default header.b=Lp4rHoS4;
       spf=pass (google.com: domain of compudj@efficios.com designates 167.114.26.124 as permitted sender) smtp.mailfrom=compudj@efficios.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=efficios.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:thread-topic:thread-index
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lAvfeOKlaeIJbbYSo7O/IbA17FTMtq9hdQv+nbhvtpo=;
        b=XLd3ZNbY/ULOMiMz8CrMdogiHsX1+UoAFl9FiXHt/IN7X/QDm0KnxVAiSIE3nN63/a
         qzqygqchX5xpSCvGmcSn4Sr8DmdDJKid320WWhe4Kh53/l6Ldl0Urh9NfKO9VPf7MhCV
         qeFSECTpIG66lcZE7kqUIbhKLbtZJUBQ6MiKtwWe3xytMdoPC2l7AfXvCwtztELr/A8A
         w3LzX/rXdDrxlXILZ7aoQzS8LA8y3fNZQzb0LaQxMy5TTk/+e5r8vn3hvFoHSaNATwlS
         fmdE1H4DPtwxYSrzwtKX1qBdBhb9FWPpybdSnO+yAzZMEllBcmNbSPS+kmeT6lTVVF5r
         REIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:date:from:to:cc:message-id
         :in-reply-to:references:subject:mime-version:thread-topic
         :thread-index:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lAvfeOKlaeIJbbYSo7O/IbA17FTMtq9hdQv+nbhvtpo=;
        b=p5JukkPcQ1Fc0IJ7dWSzQiEK9kPy4Uzr1BMvPb73VBMVnCKAGddmr8OQBiGh0Vnv59
         aJE3AjY4SGUQX1KPSv72KD84qR9MrmZnhzgUSVecSWXfubXPccB7ABCzRNhkkAl4cxk2
         VVP2xGpDAhboDNV6NjObeQi6pCPBqVxrfwQKKKEBZzJpbaomNGy/+kmuE1HsvtCIzZ6L
         IIzdvYH6MmR+VTHBfpSfXlmx1MQfxK2Ua9YhUoYSblBtSMqSIxNPETWhRh0TRyeOGfVW
         W/8b6plvrS+8BLGaeaFL/xB/fA7OMNSsK35XDVZbhEpG5LSBFFCmpZOSLOc3Qc4WM86p
         KUWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZeMf86301SDnoykDnVBOcaCqlXlyyzFKG06HxlxIFnQDT0Gl75
	POpCMvuYL4K/lKes6x7wMdw=
X-Google-Smtp-Source: APiQypJND3jaXMFeDcH/DB4NZszX1ZxJ5ESNuEX2evVihyGoOZnLKQkJMnCmN7f+rdpfgQbiQbnChg==
X-Received: by 2002:a1f:a009:: with SMTP id j9mr4458371vke.60.1588710465997;
        Tue, 05 May 2020 13:27:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f316:: with SMTP id p22ls634904vsf.1.gmail; Tue, 05 May
 2020 13:27:45 -0700 (PDT)
X-Received: by 2002:a67:6cc3:: with SMTP id h186mr4751573vsc.78.1588710465502;
        Tue, 05 May 2020 13:27:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588710465; cv=none;
        d=google.com; s=arc-20160816;
        b=ByY+nmIdjY16xvdiQU+CBwPBkObK+frFm/7VFmDE38WF/fiD9frM+3g8i+rTyGdhQD
         6pQDOpmpPZdOplueiPz7zJ0WCmcMvTgVJL4V6DKmlJf8aIN12Mc8z+QcgaHK20mW2mMv
         k076dSyr/sjDnjPqSm7uYq5cl9QoTAAwfRNG6LBMkl3JA3q0J5ey2Ghssu6t2kjcGz0G
         JDRpJlzvlrqz66zj1D0I5UNan++skctJ5WNaBWusUNcoJtpy9kfCMcn80sf2v8QOaDOv
         qFKcU4ONiNct+YeC1OgqXIq+zKt1p+aAADECemokyNvENByOa2Brwn5EPQxb46uBOcGJ
         Zy2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:thread-topic:content-transfer-encoding:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature:dkim-filter;
        bh=GrEmWaFbMd1zFTo9Cuyp79HV+BYqRIRTCdvEBTTf208=;
        b=pxhP/LTWyjVLVGR/dO1jhtL7KQ5kjnRbgkCbSVkvOhXUpdnDmowC8O3P4b3xBiX7IE
         /LTAF6Sna77iHtlGuZ/4sIyBOPaHX4dWB23nFO3jmfLSMJnkUaXcP/dIvpYSkpbnNuwW
         MFVIpcmcRyTPGCr+dY2PKkVr16g5Sz5S2aL40P3mXtiyvJMqp0UqTxYai2cOplaiOCl9
         VoGJrnp9A/f1qMPjbs2uR3iSX1/+WqoAySQdmOihdsR1nirnRafUYTTlcT7el/s7dFvg
         j9ITTp0jcNSYCyVHMPcW09ago6ZOwZh7e0D2qlpNRvnfa7qQBpnZZygqighk+6Agqbdz
         rhLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@efficios.com header.s=default header.b=Lp4rHoS4;
       spf=pass (google.com: domain of compudj@efficios.com designates 167.114.26.124 as permitted sender) smtp.mailfrom=compudj@efficios.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=efficios.com
Received: from mail.efficios.com (mail.efficios.com. [167.114.26.124])
        by gmr-mx.google.com with ESMTPS id i21si248474vkp.5.2020.05.05.13.27.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 13:27:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of compudj@efficios.com designates 167.114.26.124 as permitted sender) client-ip=167.114.26.124;
Received: from localhost (localhost [127.0.0.1])
	by mail.efficios.com (Postfix) with ESMTP id C60762A228A;
	Tue,  5 May 2020 16:27:44 -0400 (EDT)
Received: from mail.efficios.com ([127.0.0.1])
	by localhost (mail03.efficios.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id 4EYqnJQ3nAPy; Tue,  5 May 2020 16:27:44 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.efficios.com (Postfix) with ESMTP id 508502A2289;
	Tue,  5 May 2020 16:27:44 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.efficios.com 508502A2289
X-Virus-Scanned: amavisd-new at efficios.com
Received: from mail.efficios.com ([127.0.0.1])
	by localhost (mail03.efficios.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id cCHThXy3vm1O; Tue,  5 May 2020 16:27:44 -0400 (EDT)
Received: from mail03.efficios.com (mail03.efficios.com [167.114.26.124])
	by mail.efficios.com (Postfix) with ESMTP id 3CBD72A213F;
	Tue,  5 May 2020 16:27:44 -0400 (EDT)
Date: Tue, 5 May 2020 16:27:44 -0400 (EDT)
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
To: ndesaulniers <ndesaulniers@google.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, 
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
Message-ID: <470458191.1021.1588710464160.JavaMail.zimbra@efficios.com>
In-Reply-To: <CAKwvOdnLze0e3Vwmb1Xdqwcwe9h6gnAwGnt3ksiNX7ENb_3Y9w@mail.gmail.com>
References: <20200501202849.647891881@infradead.org> <20200504201445.GQ3762@hirez.programming.kicks-ass.net> <20200505093625.GE5298@hirez.programming.kicks-ass.net> <CAKwvOd=cP8UCX0+5pZ3AqzvOM8LKzLJJ_heDhrghqJdOnHoGMg@mail.gmail.com> <CAKwvOdkL+2Gvn2mkZ8cdHN=1F5cHQHii57ocD0RFeLJxEt=TUQ@mail.gmail.com> <CAHk-=wiUd=fcpegFLK4VK9iFfrO5BmpGKDszGpuyJkDdz4JaoQ@mail.gmail.com> <656098739.766.1588705237442.JavaMail.zimbra@efficios.com> <CAKwvOdnLze0e3Vwmb1Xdqwcwe9h6gnAwGnt3ksiNX7ENb_3Y9w@mail.gmail.com>
Subject: Re: [PATCH v4 14/18] static_call: Add static_cond_call()
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [167.114.26.124]
X-Mailer: Zimbra 8.8.15_GA_3928 (ZimbraWebClient - FF75 (Linux)/8.8.15_GA_3928)
Thread-Topic: static_call: Add static_cond_call()
Thread-Index: LKX/yK89nuESaon3x7N5kSfc1EEjRQ==
X-Original-Sender: mathieu.desnoyers@efficios.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@efficios.com header.s=default header.b=Lp4rHoS4;       spf=pass
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

----- On May 5, 2020, at 3:57 PM, ndesaulniers ndesaulniers@google.com wrote:

> On Tue, May 5, 2020 at 12:00 PM Mathieu Desnoyers
> <mathieu.desnoyers@efficios.com> wrote:
>>
>> ----- On May 5, 2020, at 2:48 PM, Linus Torvalds torvalds@linux-foundation.org
>> wrote:
>> [...]
>> >
>> > Your initial reaction that "you can't compile away the read and the
>> > test of NULL" was correct, I think.
>>
>> I suspect this pattern of "if (func != NULL) func(...)" could be semantically
>> changed to just invoking an empty function which effectively does nothing.
>> This would remove the need to do a pointer check in the first place. But maybe
>> I'm missing something subtle about why it has not been done in this context.
> 
> Good idea, this eliminates the check: https://godbolt.org/z/Xugo9w
> but you still have an indirect tail call (I think a direct tail call
> is the desired solution?)

Actually, if the goal is to do code patching of the call, I wonder
what makes it OK to "guess" all the call patterns generated by the compiler ?
AFAIU this is not an ABI in any way. For instance, a new compiler version could
choose to add some no-op instructions within this pattern just because it feels
like it.

For static jumps, we worked with the compiler people to add "asm goto ()" so
we could express a jump in assembly which would branch outside of the asm.
Emitting the jump in assembly allows us to control the exact code pattern,
which can then be patched, and the asm goto operands allow the compiler to
be in control of all the allowed branch targets.

I'm again possibly missing something, but it looks like this proposal of static_call()
(especially the static_cond_call part) is trying to just assume the common call
patterns generated by the compilers, and patch those. What is the expected behavior
if a compiler ends up generating unknown code patterns in future versions ?

I would think a more robust approach would be to, again, work with the compiler people
and introduce something like:

asm call ("asm goes here" : : : funcA, funcB, funcC )

which would allow patching the call emitted _in assembly_ between the various
available targets. Bonus points if the compiler can let the asm know whether
it's a standard call or tail-call.

Then once we have that, we can start doing fun stuff like adding a conditional
within the assembly, but I don't see why the conditional should be the same
variable as the actual function pointer: each can be changed independently as
long as the function pointer always points to a "valid" function (not NULL).

Thanks,

Mathieu

-- 
Mathieu Desnoyers
EfficiOS Inc.
http://www.efficios.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/470458191.1021.1588710464160.JavaMail.zimbra%40efficios.com.
