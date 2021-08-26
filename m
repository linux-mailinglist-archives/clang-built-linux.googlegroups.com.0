Return-Path: <clang-built-linux+bncBC2ORX645YPRBN5DUCEQMGQEZBOJX3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E703F906A
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 00:12:08 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id 30-20020a9d0da10000b02904cd320591a0sf1813297ots.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 15:12:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630015927; cv=pass;
        d=google.com; s=arc-20160816;
        b=aA/zPNNrpgg5gHzzj8wbaFAQrK8uuSf0vaLtnwe+nlsldLhzTidBehqHvQfSM0Jxnq
         Vgq5EjiyvVViseuP1rve8n47qqLyY7QraWUPsaRrlHkeqwX0edFhzgIlsxLlQ7fBLnkA
         gNNiQkpG8wkEA710CHi/U34g/FQYlkmWbl1pTKLFfh75LGtluUMHlAcMJJRgeJAAnToU
         uwWHga4ftoYmjgO07sDTJv/Lz7iifNUTe5W/4DbXp5hBW1rLh5hORxcFPqO0QLAY805o
         RG7ns8hT4Hd/0unZQeRWOZXK1PtkXyR6WlNS8b2+W018+PGbGIBYBtl+1E6CwWZ0w282
         4HVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=IEzoRBRIwwO04lbwu91Zdo5a57Jlxh4+4l/AMX/ZTNk=;
        b=cJ79b8ar1cckD7i88qn8vEURWF9hlMMAGR4DXnqgcGNxHS2zOH/B/WboKeSm1+DB1y
         6/xx16nqHb1+DaF9XvCIIb2AFxNJFyaKBdmYSEX35fWzof71mlt4MJMHuldeVdZUg0MZ
         KWlwD9mi1Hj/iSwkfBvvBsgtB1CBg6NsmtjdenHdXFhSamupDS1INLW/Omdem+ywQr5x
         rOfBAyntsKv9+13ZowA0AZHqv0X+O0yqBsDP7BLzc0OVeb2h+mFtRazcQK8yTuYrNDao
         E15d9Sfn1mFYhOO31/2bo6jz2ErHG59h8BoBKAjeTePBRQtmJGLUcuKDHsUkUd6KdFGR
         /wxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="BT//sK3m";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IEzoRBRIwwO04lbwu91Zdo5a57Jlxh4+4l/AMX/ZTNk=;
        b=N2IsT6EO/buAxLaU+ZZ+lEr+TtmbJ9bHlFcWm5k0RX3zRfUwVGqcshnmqrE1QDLqmo
         QrpDA8tApANr2rVH9S13kkGTAGh0Of9lDBvVzDSgco8F72lGECWGWc8EgZw7dHBHP5M8
         wUk+CRfWkAKczWmqAADjnPSZVnaCxNtAWVoTSVad6zepkkVE4m0s9mYW3efZXW994Pn5
         OdMNt6xroLtNS+A8VgixRNQosXUxRpbccinPEkmfIZKKc2nDQTiPIrZhLGRR/M61+mjx
         2DYNCRZ+c3Rw1S03KsLZWKZodjxjfhiscO/o2bRS/VL9xTmeN3nG2yzkW9gF1a+3wBEt
         cacQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IEzoRBRIwwO04lbwu91Zdo5a57Jlxh4+4l/AMX/ZTNk=;
        b=KHS5t/L9MIvO0gFFGZFZxOGnLYK2wIpKwYyVJupzUhFosL+6le33TZfNg5pfWliFSl
         +wuUDuf5/NNoeB8ececo7fVn5xRMt1doIn5LM8Hoz2RzGP0KOuWcyls6TMvKdL/r3oQR
         bIesoPkt2Qj9xKEcNTpqawf6g17J/RHzkRHoQS9/2FFW+ULdCEBTlDzKVey00iKFzdwG
         DkJwpHZ5qLfAv+AQM25hDKbd2X0EBQH6JNg3YOJDVhynckGqPgZHJ3Vz8wj6FwLiocRU
         IekRz1JtQuUBQ6gCmfCXUjd/Wyd5+WHJb/dT8mcinnpNyZ0u2hjCpG5/5Emo11cETKkq
         9Zsw==
X-Gm-Message-State: AOAM531I2i5H+R1WosGdjc3iPnzOLPSEgX1ux3cvXszsrwsqklDdUwIq
	v3mgGug1lFJsmAwhciRuWSg=
X-Google-Smtp-Source: ABdhPJwrdGEzJst7WYRHa5e56Vsebp4m/yTGA4EjD9aCLqeE0hZSOWYLnZRtEIFzd5BvaF2rq7Rjtg==
X-Received: by 2002:a05:6808:1d3:: with SMTP id x19mr4047701oic.137.1630015927471;
        Thu, 26 Aug 2021 15:12:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c15:: with SMTP id o21ls1986633otk.11.gmail; Thu, 26
 Aug 2021 15:12:07 -0700 (PDT)
X-Received: by 2002:a9d:3e5c:: with SMTP id h28mr592039otg.156.1630015927039;
        Thu, 26 Aug 2021 15:12:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630015927; cv=none;
        d=google.com; s=arc-20160816;
        b=ToG63rMjGcOpKdcuLhZPYI4XTdwKVbkKo1tkETTJ7Q8Q+wEbqvX7RqkjHHiW2tsGrO
         nWBuFXYsWuyqXDAeDoTjVoCMEN3e1FKfX/0Ak6LSGPO5WjyizDDty7njd8MFumVBOSaH
         pZ3OLRAxYGbEBEy8q3Feyh7HrB4TTDG3rYv5eXWThWrLM8qUhesQ2Qdm0HOLkESWpYV6
         AndIsMmeHXIVm94DOlZRa8OZN2SaZvjKQXB3XnBJIPhqNNNrbBvDv/4PG+aLsjxdteKT
         JUfeGBHiLaNIFi8wICIzUcbnpZfFuAQ4WihLwOwtCFGcpYMjn9i3sNpTcOLANmYX9mFl
         vhzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eVcnpfqelprXusUWBTWhyR8bc4iZP7g4UmNmH8P05EA=;
        b=MQ04jGQXIofRhkkpdIIXp3cvgRv/frwSUxXACrCQXkmjGv+H7jczEOklynasklLB15
         mN0Of5F6Hvb1FJ+E7mG2ydE8+yWnFM/9oFh5rnIWndxWSrK9QODsXcLQ9F5ZyDPCoIuD
         O3mHD1y1HFuR/DlpgMkzv7P3kxlFGAhh98WttEcoMccloZktBkBvwNRKE5gVbRQZvEIv
         GsJrPXnbhM5uJqNVfuV8g75AwGwXEm/bjbkFYdoIP6qUV35A0CcIjuIT55m8Y3Czr9qd
         nqYMV2qtgN87CJ7aldy4z+3ONwJ979f9qhKFEYCs+5MaJCbV5wqmaWFI6Cg7LHBDNKTa
         3GDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="BT//sK3m";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com. [2607:f8b0:4864:20::b33])
        by gmr-mx.google.com with ESMTPS id bf14si36116oib.0.2021.08.26.15.12.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 15:12:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33 as permitted sender) client-ip=2607:f8b0:4864:20::b33;
Received: by mail-yb1-xb33.google.com with SMTP id x140so8865799ybe.0
        for <clang-built-linux@googlegroups.com>; Thu, 26 Aug 2021 15:12:07 -0700 (PDT)
X-Received: by 2002:a25:4f08:: with SMTP id d8mr1199603ybb.476.1630015926488;
 Thu, 26 Aug 2021 15:12:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com>
 <20210823171318.2801096-8-samitolvanen@google.com> <b2b0247a-39ad-097b-8fab-023ee378c806@kernel.org>
In-Reply-To: <b2b0247a-39ad-097b-8fab-023ee378c806@kernel.org>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 26 Aug 2021 15:11:55 -0700
Message-ID: <CABCJKueE=_WCLkVDmPss-Bo-1VWaX7W6SSNx33rQCO+eEv_Lzg@mail.gmail.com>
Subject: Re: [PATCH v2 07/14] x86: Use an opaque type for functions not
 callable from C
To: Andy Lutomirski <luto@kernel.org>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="BT//sK3m";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Aug 26, 2021 at 9:54 AM Andy Lutomirski <luto@kernel.org> wrote:
>
> On 8/23/21 10:13 AM, Sami Tolvanen wrote:
> > The kernel has several assembly functions that are not directly callable
> > from C. Use an opaque type for these function prototypes to make misuse
> > harder, and to avoid the need to annotate references to these functions
> > for Clang's Control-Flow Integrity (CFI).
>
> You have:
>
> typedef const u8 *asm_func_t;
>
> This is IMO a bit confusing.  asm_func_t like this is an *address* of a
> function, not a function.
>
> To be fair, C is obnoxious, but I think this will lead to more confusion
> than is idea.  For example:
>
> > -extern void __fentry__(void);
> > +DECLARE_ASM_FUNC_SYMBOL(__fentry__);
>
> Okay, __fentry__ is the name of a symbol, and the expression __fentry__
> is a pointer (or an array that decays to a pointer, thanks C), which is
> at least somewhat sensible.  But:
>
> > -extern void (*paravirt_iret)(void);
> > +extern asm_func_t paravirt_iret;
>
> Now paravirt_iret is a global variable that points to an asm func.  I
> bet people will read this wrong and, worse, type it wrong.
>
> I think that there a couple ways to change this that would be a bit nicer.
>
> 1. typedef const u8 asm_func_t[];
>
> This is almost nice, but asm_func_t will still be accepted as a function
> argument, and the automatic decay rules will probably be confusing.
>
> 2. Rename asm_func_t to asm_func_ptr.  Then it's at least a bit more clear.
>
> 3. Use an incomplete struct:
>
> struct asm_func;
>
> typedef struct asm_func asm_func;
>
> extern asm_func some_func;
>
> void *get_ptr(void)
> {
>     return &some_func;
> }
>
> No macros required, and I think it's quite hard to misuse this by
> accident.  asm_func can't be passed as an argument or used as a variable
> because it has incomplete type, and there are no arrays so the decay
> rules aren't in effect.

I considered using an incomplete struct, but that would require an
explicit '&' when we take the address of these symbols, which I
thought would be unnecessary churn. Unless you strongly prefer this
one, I'll go with option 2 and rename asm_func_t to asm_func_ptr in
v3.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueE%3D_WCLkVDmPss-Bo-1VWaX7W6SSNx33rQCO%2BeEv_Lzg%40mail.gmail.com.
