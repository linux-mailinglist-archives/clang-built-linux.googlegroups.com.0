Return-Path: <clang-built-linux+bncBD42DY67RYARB34D66BQMGQEOMPRYRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id BD72536492B
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 19:46:24 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id g7-20020a056e021a27b02901663a2bc830sf11970581ile.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 10:46:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618854383; cv=pass;
        d=google.com; s=arc-20160816;
        b=WqhC72jdMsZIaEwb/rytPkZYHiZDM/EcUWmmyeR97LQenL41OFJ+ZRg8NsovfK0/lb
         07tQC3LxUnkJTjkEWFtxhmytNovY0rysTqcYsfvo5A3z1/GsKeOD2nvMsJexUNjXYtSo
         QYRrToTBtVjsnBCf4FCnpanDMEdiMMUYmZeatv8CPWfN2jbES2ctz3aZ4HwBssSi20lc
         KUAQNTgX3xUiIQXqG2gRH7swQe259M9RcohfdV8SvkqyakS7YK5zChEr62FIu3M+A1Ky
         T1zbwyZ5UYLex4gVN+8NOIIczAS+cntGaaXAQWl4ey3X8KtVeZvd9BN7bRiSyThBOZji
         9bQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:in-reply-to:cc:references
         :message-id:date:subject:mime-version:from:content-transfer-encoding
         :sender:dkim-signature;
        bh=LTvXmL4YDKYPXDlHADxETbHeMuMoLer8Yn8glg2fwNA=;
        b=J3c3a1Xic/vg59zrq+FC3FuLlUxfyL1iXlypuWzPAXSZVUMGZe+9OcW8MYDqD7Jq2e
         6MQCiE1r4etvWGNMQfx1qFhULPKaMVpY1W+xE21mt4d0ncu3aeyrWmcEhYoJeDeikpCw
         aXSwZDJxgCmsBzGZrKzuG0AOV2W23M8udZWLjJgwipfLM6onXW+3az3cRxAea+LilMk9
         xFbIBx5Dc8Fdt7UWJQd7UK/NrMF4NDVO599CVX4SbAXuWusqG+gLLfRl3/Rse8sM2zjz
         8ahoQiEWzcK5oKGJRSDGdqcQLb8yzQi2IUrMnc1Z5gOtci7VoBhL7yTaFN31lAIpK5m2
         D57g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amacapital-net.20150623.gappssmtp.com header.s=20150623 header.b=uO8r42k6;
       spf=pass (google.com: domain of luto@amacapital.net designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=luto@amacapital.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:content-transfer-encoding:from:mime-version:subject:date
         :message-id:references:cc:in-reply-to:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LTvXmL4YDKYPXDlHADxETbHeMuMoLer8Yn8glg2fwNA=;
        b=D0zlhDQubbVd65nr8g8eIXTrZIlKPpwUDUxeLStDbw//5mTeTWOp/hbCPCDoh9rHX3
         6SeN9HiqG5hWLa1lfgsPWYN7NVX9KtOGHrVhhrCeFvT882GgBuLkE4C5fmvA9f/teFhw
         u0k38HEcKp5fx2telxqh3fICwgv2VxVwoj3dl5LUsBJO2xGfot9alEtm0eqvfmXUyM5+
         0yQbCi5dzmEWlsTzrD7P2pWO4P1wBGNICqbUvSzUs7NYKH5duTv4Pqw8rKI0XBftT085
         4v5y5mGdvM5t02HTQMVs0lFezNq3KZ7a1XB9GBNgNr+U6/QXMpYMYhSjzY9p1/siv+jN
         QB1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:content-transfer-encoding:from
         :mime-version:subject:date:message-id:references:cc:in-reply-to:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LTvXmL4YDKYPXDlHADxETbHeMuMoLer8Yn8glg2fwNA=;
        b=tEz/bNgaGrrRV22njZ2soYXUYAPumAo6oYYF8Xe/KBpFo3Mqnc0HtYE+qWNuMM8XZl
         VTsnxFG5s0mammtJW4OpOr31MEV+niUWQK/nbNuxuINyZcgZEsfNNoqZlpx522lTJbeB
         0sQxPbvGIzEO7JePJPh80dkdxxxyXNbGe/04g7pgh4hQ5v09vTFbLhNphccD58zORnzN
         L9ddHtZBACbsuNuwvgriN+eXw/LfOpS/EJzB71my20nWN7OUAaeFG4ZViYvrIvqFmEqx
         Kg000eUMfTT5x3dDpLEpfbwgzZCLN/0XuggaKIDlH8f5KPCgnfZITa6LMlH3nRp0e9HT
         3aUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337nkES0y1J0zWJPPynARkRh3MoDLoNgVf3+S7EDTUt9ojMZDqt
	w/hhJgocP5+YRotUtiLcVJY=
X-Google-Smtp-Source: ABdhPJwAoftClzf+QEv5LZvPQWPZcgslucW+RagXAPaqtAxbMZlAJi89YIp+fQgGD6Lpv9H5anwq8A==
X-Received: by 2002:a05:6602:180c:: with SMTP id t12mr15709235ioh.109.1618854383655;
        Mon, 19 Apr 2021 10:46:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6102:: with SMTP id v2ls2917602iob.0.gmail; Mon, 19 Apr
 2021 10:46:23 -0700 (PDT)
X-Received: by 2002:a6b:b4d3:: with SMTP id d202mr8244466iof.172.1618854383298;
        Mon, 19 Apr 2021 10:46:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618854383; cv=none;
        d=google.com; s=arc-20160816;
        b=fXYLRW/1owvK7PeVQyEOi2H+ieyyY3evYdV1ymSwxuJR/WgrvAYlkDk0rNcMoUK2e8
         panHhLMoLgVksC3bfLN68sYV9KsAlbIB1dUqrp/6bs1U9Ylo5QNKJO9z4YoV2Y9J5pmH
         LmaC+NTXcubr69VkwSwslB+NV2zJkiOdkKRnHodgcyL6MtlBZKEO/2shA9/S5O60IkRY
         0yyZOWHA8uKuPtGf37Jngtg6Dn2lAAl6kQJkV/C62fyWSOhFQj482mGqlaELSrzBooau
         k28rqxXzA3nNXICCwu3HaQyvN0Hvc477nTs+ZehHYQLbUVY6tJ2NlHA2qdZAMPWM4gSB
         wu0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:dkim-signature;
        bh=hwFvRMuVGIiNQ7GQsg0y4BTQQqFhJ+eITKyGtAkPN3U=;
        b=xkctpk9b8PVdl1WTplf0s6Rx49yDttrIYParafz9xVEWORVV7QFkrqxe1/p4ZLzfMO
         jbMtpXDnlN50lL+OmwioCxOP+wGHbU7+e9OHHuMwsyP2FtjorGKbnIfuK1cyFBAjHsPl
         nLEAtez7F4Be2fVAnQfH3sRDWG6pqbfMRgIKmtbjVIMHA9Rw5h6f3PPVb1BmdQ3AEidr
         Bbg2un7q3+3Gav2olv5YZNeJr7hIWo9AXyYY6cvB467tdgcO8sMSQwGzBRvnRKKVsUsf
         iS4PwE6QYJo9DtmzcZSRuHHFzV1KL3wIFEi9sbFtWmCzxgppyTBXxCs0bSEY72dttO+P
         uY+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@amacapital-net.20150623.gappssmtp.com header.s=20150623 header.b=uO8r42k6;
       spf=pass (google.com: domain of luto@amacapital.net designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=luto@amacapital.net
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id j1si1148016ilq.0.2021.04.19.10.46.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 10:46:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of luto@amacapital.net designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id lr7so2224194pjb.2
        for <clang-built-linux@googlegroups.com>; Mon, 19 Apr 2021 10:46:23 -0700 (PDT)
X-Received: by 2002:a17:90a:5885:: with SMTP id j5mr275773pji.102.1618854382622;
        Mon, 19 Apr 2021 10:46:22 -0700 (PDT)
Received: from ?IPv6:2600:1010:b018:f7a3:b93c:afa3:79ad:4736? ([2600:1010:b018:f7a3:b93c:afa3:79ad:4736])
        by smtp.gmail.com with ESMTPSA id p126sm12685306pfb.32.2021.04.19.10.46.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 10:46:22 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
From: Andy Lutomirski <luto@amacapital.net>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
Date: Mon, 19 Apr 2021 10:46:20 -0700
Message-Id: <2C6F783A-8337-48FE-86F3-5871BADF7BC2@amacapital.net>
References: <c0af9b5811cf4066b7297196bc46456f@AcuMS.aculab.com>
Cc: Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Kees Cook <keescook@chromium.org>,
 Borislav Petkov <bp@alien8.de>, Sami Tolvanen <samitolvanen@google.com>,
 X86 ML <x86@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
In-Reply-To: <c0af9b5811cf4066b7297196bc46456f@AcuMS.aculab.com>
To: David Laight <David.Laight@aculab.com>
X-Mailer: iPhone Mail (18D70)
X-Original-Sender: luto@amacapital.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amacapital-net.20150623.gappssmtp.com header.s=20150623
 header.b=uO8r42k6;       spf=pass (google.com: domain of luto@amacapital.net
 designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=luto@amacapital.net
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


> On Apr 19, 2021, at 8:26 AM, David Laight <David.Laight@aculab.com> wrote=
:
>=20
> =EF=BB=BFFrom: Andy Lutomirski
>> Sent: 18 April 2021 01:12
> ..
>> Slightly more complicated:
>>=20
>> struct opaque_symbol;
>> extern struct opaque_symbol entry_SYSCALL_64;
>>=20
>> The opaque_symbol variant avoids any possible confusion over the weird
>> status of arrays in C, and it's hard to misuse, since struct
>> opaque_symbol is an incomplete type.
>=20
> Maybe:
>=20
> s/opaque_symbol/entry_SYSCALL_64/
>=20

Cute. OTOH, I=E2=80=99m not sure whether that has much benefit, and having =
a single type for all of this allows it to be declared just once.  I suppos=
e the magic could be wrapped in a macro, though.

>    David
>=20
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1=
 1PT, UK
> Registration No: 1397386 (Wales)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/2C6F783A-8337-48FE-86F3-5871BADF7BC2%40amacapital.net.
