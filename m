Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBMV6SD7QKGQELVN2OAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C3A2E2439
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Dec 2020 05:55:16 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id s23sf948543ilk.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 20:55:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608785715; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xsezsjp2eCa3zgYeKeLMOHShRqKeJDzD8LeQndGyoGoSY55PYQljPlwb6uTW9rQo03
         mSe4hydDSLEeRqZWTnPZGjWxVpCdB2mH2Zlukn7GFA1EYmyav112fK0P8/7758woN4ER
         bSccvEzGfLACJDKQ07/mmtyVKrp7Q9BJNocoNmhkYY+MeZJ1zA/8hnknQu1sMLhwJrqi
         fe+5kt75XriM+BHEwbHBkeSRTQzBfDMqtop3QC/Nhham1sssAn/o+5ROMWMueQUX1Awr
         3cznh+I2nJQigcasd9T4kruo62zDzpKPJ0BB+26lpWY3bL13whE8uCtKZcmBFLlpH1+S
         ePvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sTFqlIdk/NzvliOEbes52tnjp8gMw6oYIJZZeLZUXq8=;
        b=RhcUsj0+a/gR8ebpbzWv0UbdrW5a2147w2KJdlqbE+dkmsvCHdBI1k4e/4KPlE+Uf5
         YfUfxjG6YgjXYl1TKT5WCMpHczVqS/nmayYApC2bdIVCgsKrGcmPcA9FvR+oPGlWOgD4
         r+DKAncqcGoAtNlMmsh/qwNe9Ab+XOLOsdf0V7ijkeHAHUwo18u0bwFwsix8saqOmVVs
         DlqFrn2jKt1mdgN5dRlMRuiTiiRLyKZqJ4jUrXCrPBiM09xFxxufiblteS0LOegieT3y
         sBWb/cJ8Eiyt3m4BpxJLx75sb18tANwwPzPlaHyGCRJuddgNMfgFCcuZ7swnXyKkRjQr
         nV/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VAl+6GJ3;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sTFqlIdk/NzvliOEbes52tnjp8gMw6oYIJZZeLZUXq8=;
        b=k1kqsSFmKxuz0JwUtfK5B2CjTLpfBp9GuicjCqmjf/P3n7MOJSCknFIJrDHOUMxKij
         r25hCdB35H1n7pIuFDFacz/74g6e/me5mn726eKQd4hRXLBgtGez8Oi1l4EZnOUsyeq5
         rEvcSqis1B2RPCmJfCVqBXtEXkt4R0iGT0Jx8ff2vTGjKPDahzjXzKtTPK9P3+pLHzRm
         yk0+FvglZxsFT6g/k2XIWAhQwFbvzH4Ivo2eHxrzVo9ito2YlVNmApIZXp/15E/1/IA8
         GJ1GpAHdNgc8w0YVF80telLdVYXoMGuE+yCocKNB9zGTnabuuWMOppR963LziihzEc5J
         pvgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sTFqlIdk/NzvliOEbes52tnjp8gMw6oYIJZZeLZUXq8=;
        b=SRO47jIHwpV/+pNjH4TWFsPM3eH6ZM8M8BIytnCgOM+a8TtFH4rdT7I4gidhDUkYWg
         WslBTCyEcXnHAG1Ck3FeDbs03Su1C7cy2HbatMRj/bSO9p6QTSwjK8VvRxobIFs5ByWa
         v8QKqnSnd4Pk/7I/B9dzOQ9US5lfWIQ+oPW0+A4+HuXhqJuPSerBTn6XUkjd/pDJAn0b
         MQ4cD21G7n0YTY+h2es45n1srdXOxTzLG+GEOWYUAG3LfsRjmRf6iCfn6oyPvcvaBUrN
         CmK3H8rlDWFEvxg6w9mmR6ET/QmK7hmmrx7I04ksvbVwCpw+MeHIpy7GZvODOT1MKfAE
         gpvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530S0pdzhvg4k+nQtC+ojuLUn0ddJASRmyPfQ3yHrFxK5ikc7QEf
	QKfn27q7EEHi2PIMGIg61Qg=
X-Google-Smtp-Source: ABdhPJxFO6xP1joLFIIy+WUn4qF6VoJazxkbevksvzdImCPpCaF8Sf1bMEj5mTRlvTSU3RKdvgZPtw==
X-Received: by 2002:a92:ca91:: with SMTP id t17mr27511109ilo.67.1608785714787;
        Wed, 23 Dec 2020 20:55:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d203:: with SMTP id y3ls12471326ily.6.gmail; Wed, 23 Dec
 2020 20:55:14 -0800 (PST)
X-Received: by 2002:a92:ca46:: with SMTP id q6mr28435907ilo.278.1608785714354;
        Wed, 23 Dec 2020 20:55:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608785714; cv=none;
        d=google.com; s=arc-20160816;
        b=BAW+54iZMtkqN7xwJC9wmdNuXOTBaSiKZ08dMFbgXavmQB1PJP05QK+cP6UM6Q3Kgf
         V0iFd1YzgoF5X5b1gxjBuKOQ5G9V/xO7g1em0YbXMkYKdKNnhjUiuOdBDY5BkIOOm/Xc
         Apq5NvC4rJx4n58X0mueNQssHGwkIXosc1W0LsSM6GN8bT8KnMlPA4AjKDWHKcT1D4hJ
         Omlj3GXDotvMsf5hm+YjfSlGW1+y+8HW/GbR1Qi2JUwlR9yPx0fyMlOkWFZ8kvAWV/t9
         JsOlx+GzppIoeaZhFMu81EjLrdOWos6cT7CayDxye/yDUekk3HMDPwN57ms9iv4n0KUf
         0GLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KxMGyDVUabqfaUQArhDMx1wL+LPwE8Hrvq2QXIAisfo=;
        b=QMkQG2P7ZG1bEJoimpo7p2h3Z13vIzIMq8BfT1ertgi8O4Hfyx7AhvfUb9id9umW25
         NDpHAPvyd+OM7Xja3KxTVEXSCUeLQvzp7SEpsDVUQfvE22jrDz7Ocu9sFwAIAzlS/KvI
         HVVPUtzjeCFncQEPgqv+1bvD/XCyVw/hParM03gq3SNhF0ZR9vYuIPvNDH4BPRYkhQCA
         zCrof1cGH+3j2I2aaLFDn30ptgtCAaxipgm3VIqa4CZLr+FvVz7xYPoBYiiPdLgvyTYx
         RW8YErdxnC01N7cg+JGsA7gkXeoM4V+Yay2XGRfNoSWgPDMtvhuHi3KFOuS8/xXBPi8I
         UpcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VAl+6GJ3;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id r17si2423979ilg.4.2020.12.23.20.55.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Dec 2020 20:55:14 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-123-PgAS-Z4qPvG7cIlDNuIt7Q-1; Wed, 23 Dec 2020 23:55:09 -0500
X-MC-Unique: PgAS-Z4qPvG7cIlDNuIt7Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7CA3E107ACFE;
	Thu, 24 Dec 2020 04:55:07 +0000 (UTC)
Received: from treble (ovpn-117-91.rdu2.redhat.com [10.10.117.91])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 28DC527C20;
	Thu, 24 Dec 2020 04:55:04 +0000 (UTC)
Date: Wed, 23 Dec 2020 22:55:02 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Fangrui Song <maskray@google.com>, Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86/entry: use STB_GLOBAL for register restoring thunk
Message-ID: <20201224045502.zkm34cc5srdgpddb@treble>
References: <20201223232126.759416-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201223232126.759416-1-ndesaulniers@google.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=VAl+6GJ3;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Wed, Dec 23, 2020 at 03:21:26PM -0800, Nick Desaulniers wrote:
> Arnd found a randconfig that produces the warning:
> 
> arch/x86/entry/thunk_64.o: warning: objtool: missing symbol for insn at
> offset 0x3e
> 
> when building with LLVM_IAS=1 (use Clang's integrated assembler). Josh
> notes:
> 
>   With the LLVM assembler stripping the .text section symbol, objtool
>   has no way to reference this code when it generates ORC unwinder
>   entries, because this code is outside of any ELF function.
> 
> This behavior was implemented as an optimization in LLVM 5 years ago,
> but it's not the first time this has caused issues for objtool.  A patch
> has been authored against LLVM to revert the behavior, which may or may
> not be accepted.  Until then use a global symbol for the thunk that way
> objtool can generate proper unwind info here with LLVM_IAS=1.

As Fangrui pointed out, the section symbol stripping is useful for when
there are a ton of sections like '-ffunction-sections' and
'-fdata-sections'.  Maybe add that justification to the patch
description.

We can try to support it, though I suspect other tools may also end up
getting surprised.

> Cc: Fangrui Song <maskray@google.com>
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1209
> Link: https://reviews.llvm.org/D93783
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Code looks familiar ;-)

Acked-by: Josh Poimboeuf <jpoimboe@redhat.com>

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201224045502.zkm34cc5srdgpddb%40treble.
