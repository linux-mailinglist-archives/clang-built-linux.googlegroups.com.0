Return-Path: <clang-built-linux+bncBDAMN6NI5EERB6GR5CBQMGQEGINEX5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5F4362C5A
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 02:16:57 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id z4-20020a2e8e840000b02900bdfc3b5c07sf3473284ljk.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 17:16:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618618617; cv=pass;
        d=google.com; s=arc-20160816;
        b=TiIZmlNATBsYqqYeMSzfAdtO5NuuY1z5mt69kt53B9Jqd/Lqb9eeLbLRdBjr6ldqbm
         Hj8d+rMsVwmq/hxw7OcDQRDpCZN913tdF9emy9IGtnfHv5evUeJHtWmI6EQVOllsQXfv
         CalAEL3ovWmylWb3ev5OiBOv7g8pr9GPA73xYemeFLCKu/5cMUmuvgkiEEd8DdqKvB2X
         HduD367aFFkyNWz8yqeJ64hLrAHNOgBe8nHYpXSL6Z2olrdLEU+LrfL7MPJS+aoN1FuE
         EzX5iCmvUXR+1c3krPqJGy8K4E11oyz8+xjgQaeLFJW4mmv4FgBRIv48qzPUsJO+yMVE
         9fSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=wOJTRSYOmLsQ7OJtq1eERe0acSu4xb+LYHERN8ac3qI=;
        b=iH+ybcmBfWgNeS3GQUFDxUlybhgi52BJV+6b7zyZJcZ2gnFVhNj69Dud3FihQA2OlD
         qtELs6ZfveBHHKLThktjHvpaa6NG+ifAo8KiOFnloJ7/4FgJ8WOwerDtQJ7nZa4rFKGh
         z80AQuIIvI+6/SkfOYMWVLXmzb/mKJiuF9wJrY2FXJWBWePeg6psb41VslFnXLlvkktN
         UxMFPwrWlYNonqZ3bJF0QB7ZUKLvSfgbwQpVNcMnvQXt19VlrhfOZJvxDx17nltq1mBW
         CHhl9duM8kVSN6Ci8OnPzrQdy8SkdEQzenwqGjGaY+zXewerTXIwvCeQxTTHkosCLB8E
         2yeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Toijv6Eo;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=d7wOCppm;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wOJTRSYOmLsQ7OJtq1eERe0acSu4xb+LYHERN8ac3qI=;
        b=mxZ+pLgldNuHmMv7e9xg+NoO7DGDDSUu7+1n/3Ra530koQoaQMj/q7eKwyUBxU2H7U
         qUvgku+YjQNxVMXKqhhu/0lmmEwMM73edpkfBh08oV0+1yAIe09ZlWooCx6fs+kuhpXH
         D4V3pDR7K7GtHyF8m31fljBmyNOdqXvc2Toi/B4rWSNHwpvhlqkCkm7rJfTzmZd+C5JA
         vmpMHfKDQR4eQffGzwEOhMl0aitXWNcCyhs7rBqGJnbDgGlUjw5FT/q7Q6HGAa5i73GN
         g+SRkZJxhRmdgns6Dfpcv8SNyxmEeJCtu6RNhejNoE1WxYKuF1sO39tk5LOY2B4htxXI
         Ob5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wOJTRSYOmLsQ7OJtq1eERe0acSu4xb+LYHERN8ac3qI=;
        b=PYYrbyC+M/YsC9g3fxn1TR7bhN2niSn67D+GkJR2RuCd9xlf8XKKg7z6dl8hxJ2D1N
         lk06a/npf0jQenE0Jbj/MnOpCrOn8m4oqkRZlsqiRtwJAeNCPqCqWgD3gJgSfEMRx1g0
         F/kgR+dQjDzWbiAVbjZEv7gyUh3d6ZfrRiiVZdHcckEa2Yu5nBYfUVoJqk6jrT2tY7Zk
         KHfI1ZLXOiyYioIUATHIhn1vncMIU2Z7N5qrgvbxSBjlCKtb3Zsg46MY/Zd7FJnVPHHr
         SIsmXmIYODoXzKQEd4zajmgpbRawfrquIY/cOOZnLekEWOUFAVx5B2NTTXQlSpasdAq0
         uOSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533GhwcJgqj+2gOesqCwrS+Mcpi8QKZwDlqsatdf48+e7lyeqFSf
	o9XxO4rId97IOzyTCHXdHvc=
X-Google-Smtp-Source: ABdhPJxL4+OdI3EZgRXw35MBYp1w2LIuvp7o5AtYwSp4SWHWSVqF2Yz5umJb8cWLV5YkvszYThSWaQ==
X-Received: by 2002:a05:6512:929:: with SMTP id f9mr4591983lft.153.1618618616901;
        Fri, 16 Apr 2021 17:16:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls2570656lff.3.gmail; Fri, 16
 Apr 2021 17:16:55 -0700 (PDT)
X-Received: by 2002:a05:6512:b26:: with SMTP id w38mr4587014lfu.152.1618618615891;
        Fri, 16 Apr 2021 17:16:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618618615; cv=none;
        d=google.com; s=arc-20160816;
        b=tAQRTqSBckKLpnKtQa04JQE0kdn6hRx6ty/S/hF/1Y9LnMaeMizzMniAqqgX7MYUoO
         9NCZbqdwFs6I8w/yCbGkOpNw621qsbW+FtwoglFoEWduqyrSHXTvPF3cTfGCOEOpB6qk
         t3bXcq8xSnT3IoWmLvksPBJ5uC6cn/cNZWcr96nQbe1LbiOqN/Ozhadjv1R3whU0d/Nn
         BXojKsLwEQMEAmEQt6t/8jz/Y3MJVd4jmjgOLlkyK3hOiRSIQDwRG9928ghquThudhcs
         6NzIlOSzU52bGGN/qUeAFivv57+tPWXWtqKhXm9lYXyLpHtBkar35+2dEsLkY3T7f2TB
         ZBBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=Awmw6FQX3kMFpHwcJJpDjpnUIkXDM9qU4F7z0EY9BOQ=;
        b=Jgr51w6T0tgcRONfsqVoC55MNmoBnI7U/awsIGtziaqAONLiWO1a84TVsyx0BDLPet
         yA3ewWAr1TWunYafFOp9v+KgAw1pFcWIzvPuTFuK473fXLVTJ37jov0NQ1AMjEW4nf3b
         RsWEHeg9uUvbkMETzL3+AN/jwJysUIn9hzycRMM4bJwmO0TAm97cPYGC2LnMEJyAjfIL
         SiqYsRREX5KHkmrNVaXb20YlKbVViZdJStg5L7UY5wtqdXowTHW/gFfBsMGRUw9N0y3+
         tkiz+zQ4SJNCy+0doqKJRfPgPVH+72OFs1H6t89qdihVoqUV/pZYnE/gLV+ZRwMp73Hm
         6Mgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Toijv6Eo;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=d7wOCppm;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id z2si287161ljm.0.2021.04.16.17.16.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 17:16:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Sami Tolvanen <samitolvanen@google.com>, x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH 04/15] static_call: Use global functions for the self-test
In-Reply-To: <87v98lud0z.ffs@nanos.tec.linutronix.de>
References: <20210416203844.3803177-1-samitolvanen@google.com> <20210416203844.3803177-5-samitolvanen@google.com> <87v98lud0z.ffs@nanos.tec.linutronix.de>
Date: Sat, 17 Apr 2021 02:16:54 +0200
Message-ID: <878s5hu5mx.ffs@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=Toijv6Eo;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=d7wOCppm;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
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

On Fri, Apr 16 2021 at 23:37, Thomas Gleixner wrote:
> On Fri, Apr 16 2021 at 13:38, Sami Tolvanen wrote:
>>  #ifdef CONFIG_STATIC_CALL_SELFTEST
>>  
>> -static int func_a(int x)
>> +int func_a(int x)
>>  {
>>  	return x+1;
>>  }
>>  
>> -static int func_b(int x)
>> +int func_b(int x)
>>  {
>>  	return x+2;
>>  }
>
> Did you even compile that?
>
> Global functions without a prototype are generating warnings, but we can
> ignore them just because of sekurity, right?
>
> Aside of that polluting the global namespace with func_a/b just to work
> around a tool shortcoming is beyond hillarious.
>
> Fix the tool not the perfectly correct code.

That said, I wouldn't mind a  __dont_dare_to_rename annotation to help
the compiler, but anything else is just wrong.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/878s5hu5mx.ffs%40nanos.tec.linutronix.de.
