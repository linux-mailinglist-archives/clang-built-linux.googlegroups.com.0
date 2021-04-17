Return-Path: <clang-built-linux+bncBDAMN6NI5EERBGWL5CBQMGQEAQKNS4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA1E362C2C
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 02:02:35 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id h18-20020ac25d720000b0290172c83ca83esf4568725lft.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 17:02:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618617754; cv=pass;
        d=google.com; s=arc-20160816;
        b=xzSbTMvauNyZv0n3cs0oesDPoooqPQLFPFfp8GAcSIaADiuryx7gQOQzvoVSenxURM
         GGnBlOJZOK2MNy7lzsVeiOuh5JbD4Pwe4VfLvNKyfgrbYlZVdS9mDROkWDeTTCXO/eat
         IZM/cwFAs88tPWaDMkAcz3T12Rvrg+AzZnggdqUN97mg1Bge+yxfia3Oc9FgIgpu3/Zv
         Af2V81racHxndNks5o0XcvoPUlVCMIgSkzy8iFmc3rkZe5nZ8LWttwBKKUv0wkH4emRU
         z1MXbltAnLoRwcISImaewDMThgnNcKRrHMKPQHlFWyvg9fKoML12xUPSOd5AeNCl3oHc
         Z+fQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=AVO+q9TutooANm+8LFdRI9IZbl8dlT1Lbl66g52xvtQ=;
        b=lf+ehzxmYLEouwO0Gafa8nwWq/xA2lIf2bff37iU9FXViMoruCbV54PZ5M+dKNCwyO
         NifUjOYeTrkHAzHRpcwMSUuzAeRTmM/DdWNsbpTU4fm8EsU4I+YobJCET0plWFg4TO+j
         E1e0K+gOe5plhQxwG9i8G8eTxXPn7za9T6JYP54zvr5ojDzuL350KjL01O4MRrsbRdtf
         A9LiToPDH6wRg5iy/dlg125VIimqkgGbJ9s5I4DfUn34svHYb7Y6lftc83+JHzxSEtoH
         E8na+klYj8CD5Bxtxh5X0WH3joQ7t1BXSGktHD+QIajvSj4AvC3JLCG/+fUBhe1BkcXw
         OpBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=BQXVF4t3;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=IRiiJJW6;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AVO+q9TutooANm+8LFdRI9IZbl8dlT1Lbl66g52xvtQ=;
        b=MDO8F4vbzNJewf1ZVQSijBh2tterlTMPMUKAAyOuMz0TdfukmdMUQD7mijJ8HEo8kK
         VejJ7Erej7Y+5hBgSXtEaXULIlkPJyLYZF7oiqymbruTtTD8H/0bnpl0EJrikNqBCd9t
         piMpKEClrU7YHailW8bc5cqY2OP31cCtdWEJkJrzzFUY1LRK4JTQu2sTdN3/SRCJc4cr
         Br17YWCPbrmNkQvbuz4eaJZYBz1TArdXVXAGuUz3h3kYwjbFPqMAjk8O1n5w7zFZ/eqI
         d7vJheIETXVjEG7lozcoJ/LAfJFB84QfYH071e+pmlglZevGPV1cFfn96cj8ymQV1x+k
         d1Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AVO+q9TutooANm+8LFdRI9IZbl8dlT1Lbl66g52xvtQ=;
        b=rI1O1oglU+ETZN7Lef1lLZXF+dcyWhpqJryU87/FMcfPr4ZRu32dBIhfwFbcpGPpWI
         AbXtNrWu5TW0fugHr/Dh2zzUmx6mXhKfIt/qajh0aDkUuevJls13yvRPfmPw7Dilshaz
         WRuWxUSkbtX38mJdaYoNFwLrvr7nQ5yim/qvSQN900xGV3/m3onBQwc4JAMpTW5lLxju
         WMdxDp+V55O+HBHY05ZI0o1jXqdUYqpFoAS47+idVdfBnXnH/mem+HjLYOUCkHenu/Ma
         QNIwDuz35VcH1Dw0ZSuw4sg7bUjEKhPyf4W2RoB84FYkRfg8UN1s8yPaE0uNrcm6+yal
         jZ1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532jT2a9IedA7aljEm3k0+gfNy/Wp5Qv44knzoRs32bNOrHLS9C6
	XENdNs3cLOb9e7SEtTVv3Mk=
X-Google-Smtp-Source: ABdhPJz13sfck696QGsPiM7Ior2W5uVI4AJY4UhfscUTNYucTUXOdQR7+HJM9IncA20d40/TGTUh/g==
X-Received: by 2002:a05:651c:1053:: with SMTP id x19mr4060109ljm.332.1618617754588;
        Fri, 16 Apr 2021 17:02:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:c22:: with SMTP id z34ls2520556lfu.2.gmail; Fri, 16
 Apr 2021 17:02:33 -0700 (PDT)
X-Received: by 2002:ac2:43a1:: with SMTP id t1mr1686425lfl.493.1618617753606;
        Fri, 16 Apr 2021 17:02:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618617753; cv=none;
        d=google.com; s=arc-20160816;
        b=fk5DVcZEon1NdN7xJfSctAo0YS8M5+VkalnMA4EcFgzOeJ7ibzg1Lizn071UHQ13vu
         N8Rs11f0zulYcbId0ekzcZfyzUrkIeY9uGHOlEFg4HWrTFq6AYJiBXzhGjydB5u+vbuC
         nX/EqmlBbpHWabLBSfX8NVQiKuRNnaoZfrCb49jRW4L28mIDBM6mBiYFnl1keb0AM92m
         EVfDCpjJHJGtSeyXLTdCr0cTkC403SZTb+N2R8W5Iu6wm4xy1l9mPtNg0eOytbhO3B7z
         u0opwabg+ZJQnurSt535v43W4Y588P5xS+HT9ko2vEN9LyYUIner7RjupzK0/JAmo3+a
         u67Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=xAJKO8dWaz92ciG9zIlL+Ikr/RFMxTd4id9MFoOL6bc=;
        b=yiyuZmNUYz296SmR9P6EztVNUIwc7sysHtojEYY4Cl+hlgoO3J+1e+O+vJg5x7xONF
         YWGkQNKp8QIbnfz7YqaCzmQyO0ppHyu9EjiA/eqcVvB5b2MPkUSaQrPD6NofkvlqwIia
         KAsXfdKq/QOb75aiBPwGExZKI4BRrD5e2GOA/at7A2VuAc4qzbIIRVAd26KjhWEFF+zQ
         U02V8KcSfEAIXZ2/IvpPIs/s1ossZf1AzfClZWmFld1akjW1FLIxlp4w5V+fClwjSVav
         zgKOoqXRQ0H+h6zJSKvtERZWnwt7q/d5U52jfruMr5NwDBy0BP7wNBI7FYtv8rM7B53U
         1E4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=BQXVF4t3;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=IRiiJJW6;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id r2si123916lji.7.2021.04.16.17.02.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 17:02:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, x86@kernel.org, Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 06/15] x86: Avoid CFI jump tables in IDT and entry points
In-Reply-To: <202104161642.B72BD68@keescook>
References: <20210416203844.3803177-1-samitolvanen@google.com> <20210416203844.3803177-7-samitolvanen@google.com> <87im4luaq7.ffs@nanos.tec.linutronix.de> <202104161642.B72BD68@keescook>
Date: Sat, 17 Apr 2021 02:02:31 +0200
Message-ID: <87czutu6aw.ffs@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=BQXVF4t3;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=IRiiJJW6;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On Fri, Apr 16 2021 at 16:56, Kees Cook wrote:
> On Sat, Apr 17, 2021 at 12:26:56AM +0200, Thomas Gleixner wrote:
>> Where is the analysis why excluding 
>> 
>> > +CFLAGS_REMOVE_idt.o		:= $(CC_FLAGS_CFI)
>> > +CFLAGS_REMOVE_paravirt.o	:= $(CC_FLAGS_CFI)
>> 
>> all of idt.c and paravirt.c is correct and how that is going to be
>> correct in the future?
>> 
>> These files are excluded from CFI, so I can add whatever I want to them
>> and circumvent the purpose of CFI, right?
>> 
>> Brilliant plan that. But I know, sekurity ...
>
> *sigh* we're on the same side. :P I will choose to understand your
> comments here as:
>
> "How will enforcement of CFI policy be correctly maintained here if
> the justification for disabling it for whole compilation units is not
> clearly understandable by other developers not familiar with the nuances
> of its application?"

Plus, if there is a justification for disabling it for a whole
compilation unit:

 Where is the tooling which makes sure that this compilation unit is not
 later on filled with code which should be subject to CFI?

Thanks,

        tglx


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87czutu6aw.ffs%40nanos.tec.linutronix.de.
