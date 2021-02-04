Return-Path: <clang-built-linux+bncBDRZHGH43YJRBY726GAAMGQEFU5ERRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E1C310070
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 00:04:04 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id l1sf1749232oib.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 15:04:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612479844; cv=pass;
        d=google.com; s=arc-20160816;
        b=qh7CWWZ40vgOm3XCB8zMuOoVI+kqLFIhKzBNzByw88b/5FAUJrRmMT+yHyt4nWO6vx
         me+0ExgplEN5cXbk7zLYaIiNNxVk2b+zdymFgK6zOr030XaauPLzWpn1kc10tNCUJkJp
         hyjrWkpsCa97zl1aiwhGTq5cQgEsZYEjMWgUd8Z6cfkTF5BB4wJaeURIBEPsVpiqWAS2
         4XdLjvKbLAPIQX/7PHh5wzojtLmQbl3XJrEjZYVO01fSXI/lgkAw1i4Wz0waxHIQp10I
         VAf77spf7s/rJ7I86LOK2nHFOnxOi/u2jZ2wU+UZeYoq/5cFi5I5V+Qz6Zfem3ExCO5I
         nVaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=WYEokRR8DNbMEjX8Iikhg7h0+e4HldDiWBoNKyOwRBU=;
        b=LtQG5aOXD1+/0V52JfXbqJmVrMNkG0NHK7V07CJ8FFfHfErivJ5aQ+pmVbDqRhKj/Y
         2t+x748wd02YFDKDRWkXa8DNeu3eiI0rCt7cYHDKOOgcSq44ixehxxLMl2WT9HWaLxlI
         QWV6eKp6/TF0rKoQ6xp0IVojsgwkKRwfIVon6r+X8CXwnI4lLCmFbVTdqSoLNGKdroH/
         9lw/avRp1hMH8SeStEhI2j6czpJLlN3SeUpSUSssumdwHRSm3AB5JPK7BQ7cDO1KHLne
         pyrt+Ws4t4+KbsFmv19z5DuUkqVQVlOeCFosDazyVHamIA6THJhG7qszTsg1wTJQ7kS5
         uT+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BijZQntq;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WYEokRR8DNbMEjX8Iikhg7h0+e4HldDiWBoNKyOwRBU=;
        b=cOTBiSgEMgkL8XyZ23nKbUOyOOxvj3AJp+sgk2nggIbJSJIAvYa3zn33OQisstVeFF
         /WHkU+EPymu9p7n3F2q8qUFSBw80gE4Ke73tkfAYgNMKMcR/XFBpDfetMavL1ArwFjvg
         ZNA1kt9NqjcFgi9CyS/dovNrNPbKwRl+rXum2gIbJ1QpbqxvqnpJE/jDOVii57ji8Sxw
         ovrnSG1Jn0u9Mx8QjaHdCMXJ1FDrOhq4TL9QcfUq4mpOudF1uMq+Tm10bTp7bq6j7N5c
         G1U0oUVpVMfLoZ3DtFs36QoKeO1dUK0hhk2+MSPD+b10KdAF3NZ2nV5NhPtQ3fUqXOh6
         R30g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WYEokRR8DNbMEjX8Iikhg7h0+e4HldDiWBoNKyOwRBU=;
        b=RzyNRn8Jx9c6wb+f9Y5Z8vBLRCUunxLAtuBkThyZcuMmKObmVLrX44nhcNu97Jqwzl
         vsSnNbZqAP4FlHLGfZ5YrWMXU/fRUHl3A5xjYcqPiR7+/hqSoIh1l25CO4Wb1badUcYO
         1vMgysDCxQRD2uNTw5MV/170QSgHbsJ/S91G5zlUVXi1docFW6T+VZ42aHBOTCT6JCBP
         XwYys5FCmIyEOTtBsOQjiKtFRsIxbUGd6exaTXv6i3DxbLs8lFktnhQyASTW3JS0XZxN
         46Ifz5iBaDlBTQr32Pbw/JSZKQlQlvj4OIWnpwtorkV5tySWY0ALz8ZAm5WbjcGF+gWf
         bHGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WYEokRR8DNbMEjX8Iikhg7h0+e4HldDiWBoNKyOwRBU=;
        b=fPKUXLyaglHcfsbcI6OOmsgkdbYctiE0FZZ2c3uR+BffiJESTDzvjYO0w4IL53yoaJ
         FGfTIhmAwXPjOxXENjgJvA3FfK45OYhLYb/g/UxkgFEfCKBFD+AZq7tuuQzNqbQqJk9W
         oGe353COgX1VVfAfO1DmLQxPt11umQQ/gtAj4a00sEbHpKQQhEbtIG6YADATmiRQ+OcK
         zvvy9ozBebQqmiIlGsZqHYwUq1iRmxmDVtwsrxSldn7FjzrJFA3ZHGkjIXEIF89LU/oN
         X4ps0m2cwti98o9LjJyZtUYf6c8kDZAOiwFsMpqFTHLQJioaSAnGFW/YHlo1CXb4Vkfp
         OVHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cxwk4ftU4/yJVSlnGhQbZYpa980/MRiJtMhA9Q8q+JNV7ysKK
	MEjtn4dg3bskW5b8CpTPfjI=
X-Google-Smtp-Source: ABdhPJyPaHVjvUE9XxWi4VDQl3uLv9QXEHTKCV1EqO1pOMPVh9rH5Y12b4q4vpnz+s0GI7VXyp0YEg==
X-Received: by 2002:a9d:4587:: with SMTP id x7mr1288740ote.274.1612479843948;
        Thu, 04 Feb 2021 15:04:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:9243:: with SMTP id g3ls444629ooh.11.gmail; Thu, 04 Feb
 2021 15:04:03 -0800 (PST)
X-Received: by 2002:a4a:8c6b:: with SMTP id v40mr1348155ooj.23.1612479843569;
        Thu, 04 Feb 2021 15:04:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612479843; cv=none;
        d=google.com; s=arc-20160816;
        b=uu4hTQ8r+Oi4ooZrBhuKBqwu1yp/x132K5uqmS+HGvhq/l44IStJ0t6sPcoh/EGkl4
         nyQiaXRyD9tw4/JZPAkY5jFwfgSHArciMSmtJd7gdOPoNabh3cQgSCsiY/QS069NAKXW
         qa7M/R+JUwBF07ga7bGP6hMrlpdH4c5azufUIHOhCl/qj6Vubw0H/XMZFMtjJJ76nVQS
         zGC/DU63qs33tl3YbYO417c6r+/CsB7GpQisDp6JzCb8BoP6E3WPZiSFoYvVRWaLghdU
         9axrv1SOLO1j2G7vIcLaOiPgHDQC+h1MMClQSYfl2duWcX4rIBtz7FGGHzTtXEkE2e3c
         LIbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6tjagxLJIp15XMpR0Wu9ornaRNIMOfLQlpx8bn6gMgQ=;
        b=I+gT0oeX95wlDE9xyvn23cAEuruWfKIyOAsuFntFoteab8nzpqh4/S68foM2ZdoyE8
         kZstdTdKg096NbC7zK5B0HOSDJt95jwIID03OeHdDORjbgzJ3ZzCcWekXZ794LL/RkNF
         G9qeuglRRCP7/Y2GiVJghLAYgNkjwizz0dPss3AGQ/2w2vJUQcfTCOajBKrLQZC5V1Eu
         pLtpBv1iFphI74NVYGbsJB9ubKEP7B6b2zOi5Vp4pdyRNMoB9NEP6uo9p7Un6DSwhvys
         6xF9iqHwqxVdG6xDYPRj8TlNRNGrKFUOaHF3NGsr03ntC2ES/hWGoTmK93cH6hXNCO+1
         wJag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BijZQntq;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com. [2607:f8b0:4864:20::b29])
        by gmr-mx.google.com with ESMTPS id f197si724880oob.2.2021.02.04.15.04.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 15:04:03 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) client-ip=2607:f8b0:4864:20::b29;
Received: by mail-yb1-xb29.google.com with SMTP id e132so4866477ybh.8
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 15:04:03 -0800 (PST)
X-Received: by 2002:a25:d9c1:: with SMTP id q184mr2370754ybg.115.1612479843216;
 Thu, 04 Feb 2021 15:04:03 -0800 (PST)
MIME-Version: 1.0
References: <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com>
 <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
 <20210203220612.GA1738694@localhost> <CA+icZUVjeGq0UzCrJbf9qMYtR56woJ_XtFGiAzhvHnt0zEbD7A@mail.gmail.com>
 <20210204175010.GA2988776@localhost> <CA+icZUVV3q3Jr8HEi=LmqYucOWK8b3zOEvfGsk8Mn5FS--8bnQ@mail.gmail.com>
 <CAKwvOdmqF=wXxFgUNyjJnCPtFnMrnbnuxP2APyOLimVbBqK0JA@mail.gmail.com>
 <CANiq72kN+tpC2J4rBrtT=ANhcs6F-RTpjGPFuowW+SdFgJF6-Q@mail.gmail.com>
 <CA+icZUWPN_fjpWyQN1oW+0y0naf_iajD9TzkfyxyMmHTnaS9Nw@mail.gmail.com>
 <CAKwvOdmOKvzHOBAichsZe6HQfJ=q0j+Gp_7QkhBDAKdZE9Y3Kw@mail.gmail.com>
 <20210204223504.GA428461@localhost> <CANiq72kHrEiYi-=rU6AXfi0TbWePCgKJSoW-PJPutJbWH5E0YQ@mail.gmail.com>
 <CAKwvOdnbFxge108d1ka14WH=OJ6aqHKJa8==Kuq50RHfKWkY1Q@mail.gmail.com>
In-Reply-To: <CAKwvOdnbFxge108d1ka14WH=OJ6aqHKJa8==Kuq50RHfKWkY1Q@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 5 Feb 2021 00:03:52 +0100
Message-ID: <CANiq72nsSxCjhmOhTVXxH1qyAftRbK5db0OCR7U9YcZx81PsbA@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IPCfkqUgUEFOSUNLRUQ6IFRlc3QgcmVwb3J0IGZvciBrZXJuZWwgNS4xMS4wLXJjNg==?=
	=?UTF-8?B?IChtYWlubGluZS5rZXJuZWwub3JnLWNsYW5nKQ==?=
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Behan Webster <behanw@converseincode.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BijZQntq;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Feb 4, 2021 at 11:51 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Now would be the time to use llvm-linux@vger or linux-llvm@vger if we
> want to consider a rename.

Let me know if you prefer that (I already sent the request with the
same name as the google groups one, but these things usually take
time, so I guess you have time to change).

On one hand, linux-llvm looks best (and follows the other linux-*
lists). On the other, people know the project by clang-built-linux...
So, up to you!

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nsSxCjhmOhTVXxH1qyAftRbK5db0OCR7U9YcZx81PsbA%40mail.gmail.com.
