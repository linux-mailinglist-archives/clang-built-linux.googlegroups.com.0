Return-Path: <clang-built-linux+bncBCR6PUHQH4IKTBWL6UCRUBEQDGA7W@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA681C7258
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 16:01:14 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id j21sf2797566qtq.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 07:01:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588773673; cv=pass;
        d=google.com; s=arc-20160816;
        b=mgEOf8bRryWz1+6yI8A8leJ26jkgHmAZ6mBmgeKMX5p8WUSifn0yBMz6BrJi/xufBO
         PNTNm0uxTn0Q1Vl1LZZfotKsyE2G8COwK9d5CMBHaQpCPMNHiWC7ltOmZ/PH701ZnUJZ
         x2kgKlyJ8lSPMjqsDKlWp0/EwEcoP4tYlKPHTzI2ptCA/J4BaoJ9rkS/S8Tytad79/7C
         BV0TxDXZAL5M1ax/8h60mVQTNf/Unk29yPtuP/CaPeXIKkZ+Tv2ZM8bc/o5MpkZFE6b5
         vLY8yZp/ip6P0v/z9Kw86nqFuBeosZqOOGmWmMTG4xrMH53C8RozUoiJcQRXzOYGR6vb
         PtMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:thread-topic
         :mime-version:subject:references:in-reply-to:message-id:cc:to:from
         :date:dkim-filter:sender:dkim-signature;
        bh=qdJAGfzUJxtzst7KAbHz1jqeih0Qp2wA7SttW+GnyLI=;
        b=J381imvbfIrqYYRtVX/Kj4Cr6LqqHavzhivSMITlDVwHE/ovSfHAYGjlRqYgthMwU4
         aRJkb4U2XTXdVSIq3WTNGgQi36jthxzvLbJt0DhrCVE//SjMXE+OHlIu5VFqSMvvEt3N
         wZXrk7qEiQuHHMaAGrAACbVSr+8qICNWSpdlvaaZjqw39rAZSsMoCQRD1p1mA5lqdwot
         jD/9YPcABUpZ7+8uYv77dMQW/kUxgC8m8k+B8IrXw8HptLVXht0bZWj+yD+UXNCHeS9f
         l0Fwlb6m0gHpTs3DTwwKh9LiVhqCfUMna6EPr6pMf3lbdjczcob6gQhI6pl+bIlTTrV4
         f+hw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@efficios.com header.s=default header.b=n06LmP07;
       spf=pass (google.com: domain of compudj@efficios.com designates 167.114.26.124 as permitted sender) smtp.mailfrom=compudj@efficios.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=efficios.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:thread-topic:thread-index
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qdJAGfzUJxtzst7KAbHz1jqeih0Qp2wA7SttW+GnyLI=;
        b=JcG93E+0sU0sCcS+ujEQQ0C6oPvozXZp7ZVZDOMEwSOFMlII70Ev0z35RYGL3jcjXd
         Dh5SnBSN+B7R1FDIRX7KP7mg3WH8med9tu8SvDUS5OyyG380Hb1e/aQH8wAyTX95wQ9g
         O3OmnVIplhBC/ICCRfc2gJorrY4YRgl3zF3zrhRRmB0f/YTPWx7z+ucH3EMyLS+b7TaP
         D8TC7Pl7IXRegKU0LqYiNkMrJCBnzgV0fsMSR8Sak8gHGnd8rFcI2xZk2Qodbvb8Xb7H
         GmNmDiFuXbQjwJRPcuEPeiZNikOBo8pJNIZKifiT4OArvZLjgbwFo6EeF5rIdpDewdM9
         cuLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:date:from:to:cc:message-id
         :in-reply-to:references:subject:mime-version:thread-topic
         :thread-index:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qdJAGfzUJxtzst7KAbHz1jqeih0Qp2wA7SttW+GnyLI=;
        b=YKLShGH3tT2vT4VQfIrDLZnQaDHp5vTNr7D/s2dwvf9mKyxBPKUwjipXsBHui50XFE
         qcGeOZ/966xoDFAyK4gI+TYCAW75sXTQ2iDAp9Lj6vEETRx9bpGdBJtsw5I2CpZj/MV9
         4LV9LTKCYhMIpHDrt7s+NtAJc2nPpSsjtcmIgSb8XsckZQ355YceMpGdsevh9JGrdARW
         aDdcWcXXM6/ujgyBn0feXAglUq667wbsX+oOVPRJMcvbMDqRwv1rTNChvWJIDAJGNXR2
         VRQaWpI9bzkIiQlzblaKtqcq/1C1EPJYg8lrfmxl0njfhBigmTtNv0bQcvNrovlQB+V+
         HDRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua2sQypISmvHY3LGQzLzMxSgMf92REVjgDJ++m/UXS0sZHQsiHp
	c+7nzAoG4dz9MNzMfUy0SB0=
X-Google-Smtp-Source: APiQypJWwKQtN2PjggKUihV5nL4hqxNENWgf5Y4dcpv/Gxo1M7hZqFAuqaftMZh6xqNsn7FVbms5Zg==
X-Received: by 2002:a0c:eb8b:: with SMTP id x11mr8049535qvo.33.1588773673494;
        Wed, 06 May 2020 07:01:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:22f7:: with SMTP id p23ls1944706qki.5.gmail; Wed,
 06 May 2020 07:01:13 -0700 (PDT)
X-Received: by 2002:a37:496:: with SMTP id 144mr7297336qke.50.1588773673138;
        Wed, 06 May 2020 07:01:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588773673; cv=none;
        d=google.com; s=arc-20160816;
        b=DhtwFXCuoLIWN8DOETzaf0CsK0GEcmJai7nMWAvSEVQIXJjOqMjrPKdRd8zMsDivb6
         g2V+om8Y5nPM99dOXbPW9y9m30JW/FYg8CmCbc2QHYv92hqZHxvfcu1eja3iZqiVjPf0
         EtaBRo9k/04E0xwW7tqmGgAOmbjrur93MdE4GEEpK39VfSBROViJa9zKQ7bLhvY4A2Tn
         FVW0p+U98iunFZFQpk5eA1cBFKbssfnqBwOR00rB1M0u0o9f5ZmFeIx14mbGkb9rZuP6
         nyl9gDoI8HUrYP/SixlMSiUOGK28IEUlPbekrwfMJxNR5iMadkQHgG+XJfKqxHW9c8jt
         bpiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:thread-topic:content-transfer-encoding:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature:dkim-filter;
        bh=EQM02SNu2SWhvvdUmRvLNrhRarRYmDp/3bLLVv2cp1A=;
        b=T6Tg3IFuXas55xwHs0DkGL6CY1lCFKXD21AGyX4rYdRaYJUeQ30/ssCyey1uQKJ9nd
         u89XsnWhslFV+Ka5BPiXplht402r5JV8m7YRzErsByTps0iYIe60NS+GNsh7A8oWew5F
         P1Iacrw+YdZXzya3pyfeVUsjhFUOGDKOa3sDVL3Ry/eIV6kFhhsnwDx2nkFLZao8fRBR
         U8ZF9N0bmSQjXP2TKGrXXIymv7gvk+tdJXv+SSncuD3o+5zMZPGGqOS9cdfu4jeB2VFb
         TkORblkxX5sAqkuHkn2/7U1SCXuYZMXa10uMyW3By++saz4Mss5MR/nuEYqz+RWBZtCp
         V0AA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@efficios.com header.s=default header.b=n06LmP07;
       spf=pass (google.com: domain of compudj@efficios.com designates 167.114.26.124 as permitted sender) smtp.mailfrom=compudj@efficios.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=efficios.com
Received: from mail.efficios.com (mail.efficios.com. [167.114.26.124])
        by gmr-mx.google.com with ESMTPS id f16si158109qte.3.2020.05.06.07.01.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 May 2020 07:01:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of compudj@efficios.com designates 167.114.26.124 as permitted sender) client-ip=167.114.26.124;
Received: from localhost (localhost [127.0.0.1])
	by mail.efficios.com (Postfix) with ESMTP id 9251D2A8F88;
	Wed,  6 May 2020 10:01:12 -0400 (EDT)
Received: from mail.efficios.com ([127.0.0.1])
	by localhost (mail03.efficios.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id eG7yUYehepJm; Wed,  6 May 2020 10:01:12 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.efficios.com (Postfix) with ESMTP id 534CC2A8F87;
	Wed,  6 May 2020 10:01:12 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.efficios.com 534CC2A8F87
X-Virus-Scanned: amavisd-new at efficios.com
Received: from mail.efficios.com ([127.0.0.1])
	by localhost (mail03.efficios.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id DcBuXVV67e_q; Wed,  6 May 2020 10:01:12 -0400 (EDT)
Received: from mail03.efficios.com (mail03.efficios.com [167.114.26.124])
	by mail.efficios.com (Postfix) with ESMTP id 3CB602A87FC;
	Wed,  6 May 2020 10:01:12 -0400 (EDT)
Date: Wed, 6 May 2020 10:01:12 -0400 (EDT)
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: ndesaulniers <ndesaulniers@google.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
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
Message-ID: <482526608.2543.1588773672085.JavaMail.zimbra@efficios.com>
In-Reply-To: <20200506135502.GS3762@hirez.programming.kicks-ass.net>
References: <20200501202849.647891881@infradead.org> <CAKwvOd=cP8UCX0+5pZ3AqzvOM8LKzLJJ_heDhrghqJdOnHoGMg@mail.gmail.com> <CAKwvOdkL+2Gvn2mkZ8cdHN=1F5cHQHii57ocD0RFeLJxEt=TUQ@mail.gmail.com> <CAHk-=wiUd=fcpegFLK4VK9iFfrO5BmpGKDszGpuyJkDdz4JaoQ@mail.gmail.com> <656098739.766.1588705237442.JavaMail.zimbra@efficios.com> <CAKwvOdnLze0e3Vwmb1Xdqwcwe9h6gnAwGnt3ksiNX7ENb_3Y9w@mail.gmail.com> <470458191.1021.1588710464160.JavaMail.zimbra@efficios.com> <20200506135502.GS3762@hirez.programming.kicks-ass.net>
Subject: Re: [PATCH v4 14/18] static_call: Add static_cond_call()
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [167.114.26.124]
X-Mailer: Zimbra 8.8.15_GA_3928 (ZimbraWebClient - FF76 (Linux)/8.8.15_GA_3928)
Thread-Topic: static_call: Add static_cond_call()
Thread-Index: /XazMzaob2R7RnrpgfiHRnqwczHCZA==
X-Original-Sender: mathieu.desnoyers@efficios.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@efficios.com header.s=default header.b=n06LmP07;       spf=pass
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

----- On May 6, 2020, at 9:55 AM, Peter Zijlstra peterz@infradead.org wrote:

> On Tue, May 05, 2020 at 04:27:44PM -0400, Mathieu Desnoyers wrote:
>> Actually, if the goal is to do code patching of the call, I wonder
>> what makes it OK to "guess" all the call patterns generated by the compiler ?
> 
> We're not guessing, have have objtool read the compiler output and
> record the location for us. The compiler can generate whatever it likes.

So is the plan to adapt objtool if future compilers change the generated
instruction patterns ?

Thanks,

Mathieu


-- 
Mathieu Desnoyers
EfficiOS Inc.
http://www.efficios.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/482526608.2543.1588773672085.JavaMail.zimbra%40efficios.com.
