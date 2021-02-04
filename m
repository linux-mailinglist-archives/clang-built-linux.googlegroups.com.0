Return-Path: <clang-built-linux+bncBDRZHGH43YJRBH6C6GAAMGQEOVA2LNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D13330FEF9
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 22:03:29 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id fa7sf2934659pjb.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 13:03:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612472607; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rv6TgiGgzN2CtnAo34iO/gsc/O+c8qw8lsK0xz0sWCBYTqsKQVwm7Z6upOERcQD1st
         JoDE3qnYtktyt9MVVN/t/1bGF1GAlVxWKJSCcEuFWyKLZp+SBfeJhOljggF1XgpizUBm
         1IocbFS3mhbT4ozNxTiTcnOl9bqmmDHKp/PTu6Fs55ePQPB3YuprmAIlpCYh9dVlovYK
         8lpFquCBaaCZnSDYvA090TwaREwtHOZNrXj5ccBDQMqscubTpFwoj+SdbScA6mSdBM0q
         wWZns+vv3Iwc4vp2W8GjLia3vFyyJhO611Os8KmLf8LzLKASgFH2dTXd53ceWvRAjQ1E
         EysQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Z3RIhlr0GLtqPXuYkeV6cRnIgh3/tp/iNzL6pcKhy8Q=;
        b=wbWz9DkqMjlSB89DhwgY7/VS32bgh/BZVOtEcXsA5a9NvDjuE7roPnIKFXCzj4rVzo
         e2bv0BX84mfQAKYEZdMjauyQjQ7PBa7hFbnIVqV6P/2V+i61njg1TJg0VffiVJPbIc0g
         Uow04dRCa4N9GLxlxOXXiKAVaTxYifyCorbsAukjXv6+p32WtcoAztl/ex6i78rspGn4
         /HCBlYWw26uJYvaB7wuMEYu7lEIOrzWAMQEFXlBn8YNw5YEjioeGFtvdk2ek2Iolahft
         qZr+SEWLH5aa2qZ6yPFtfw7AlmeBD5KdJ1Hwq/KbRlQ4UpHWeW3EI43FI8+fnv53VnI2
         LY/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kfrAHG3y;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z3RIhlr0GLtqPXuYkeV6cRnIgh3/tp/iNzL6pcKhy8Q=;
        b=LhzFDkfdTk/bb1s4FqbSeyTDAlcry0ObEF8zpmoDsty7zmpf6wG92OKXnvTxIdDVrE
         F5qAj9Ps/z+vZKFeYU96rphoCNKUge98RnuMl56UQ35hdLKvKjMOrFPSZ/9TH5p/qtiW
         008sybDD5dGx4AtF7zU+rX1wmhyxdE2quzoRPzsOBAReD5XS1T+3ABCKJj4i4UHHZ9kV
         LerwFaOeet4bzlNpc7a8qe5iLJpmLPWvgJK9W3ZXPD+gvCZof+9zeV6TY0AAGnBecKrJ
         CmksEdh0VHBLuhURaVGjbmFFUAUsKnuYgAMQj/gbVKe44KDcN/vCA3FNQICDtBl4adeL
         H4TA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z3RIhlr0GLtqPXuYkeV6cRnIgh3/tp/iNzL6pcKhy8Q=;
        b=EMQZ56h5dwTSm2gESidxrv6v3H2nuvF1FmWGmALlTxhsD10Mys1lI/RTwCGPwVgPyP
         cUriyvRV7FIGVJDkKcGcEaO5Ee034JSqN0SxZZtCs1WBV0VbyaOk0OvVjiVT5E9mqz1N
         FCnj+4huNsIhWWy3K94TU3f1lyb9Hsdnyu4L9+G8Jmh5l63PRDRALAJz4CkiTdh/7ac3
         EqDIc1S9IoePSlPmLh03mbv34XCFb2OMDmXNGx/2r13/8pCeVe5lQrJeypmYnirsSa/D
         GZkeu/FXY5GJfveJYZrPwkJ9wrYBABW5BGm7n7c1bu/R3ZT9DaibbzZk9oX5TUQPaVFJ
         NDwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z3RIhlr0GLtqPXuYkeV6cRnIgh3/tp/iNzL6pcKhy8Q=;
        b=aXtvP0o9R0qmg4VPOgrG8i7Ewz0jT2whphLqdmFjYiOll5EMmL8Ntt5J4Rop1D0Nji
         g+SFTPSYfQQd3Ut+KoRF7TKYFS/J7hQRGQDHmWsb1P6smgrgdDxyWjoTRA0tXmUxsTXz
         EPslbqjDf3CCSp4oY1/fjVz8dn5Qscd1VhtOmlnAXrAzwXfUCQjUwEv/nH+tjPh0Tq/g
         JTE/WBCsfT7pJj4E6VdFzPIOha11uij18lS1x3UxQy1all5F/69k0Jw0tnUCcCMq9xJf
         sVZ5fx4MDjMykx6ntjUVga4Ov94zwSxq209OBDTjYjyxMlyrTuEIFL03ekfIcfIaO00B
         VEsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531067Ps+feDEF0wDy9LVbG+D8wr3RAegC11wrQyrylw9EKeIGsI
	Zd6qJpmhBEEusrdL66HzOzA=
X-Google-Smtp-Source: ABdhPJyCiqYYDTcGZBZKkXGOWZcvTHLhY1Op553NbUKCumfUip8GWYF6Cq+0bSHhqHGmgI5BAFck0w==
X-Received: by 2002:a17:90a:648f:: with SMTP id h15mr832651pjj.142.1612472607530;
        Thu, 04 Feb 2021 13:03:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:92cd:: with SMTP id k13ls503782pfa.5.gmail; Thu, 04 Feb
 2021 13:03:26 -0800 (PST)
X-Received: by 2002:a63:2217:: with SMTP id i23mr810851pgi.437.1612472606862;
        Thu, 04 Feb 2021 13:03:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612472606; cv=none;
        d=google.com; s=arc-20160816;
        b=wQ3RLmCtRvZq3+g7C210f+4sCdYYRgSlRLWe+X3ISlzoUdFiAuL8LTfX63Fn+1uSXZ
         CssfZjITDfuCWcLbZwKT2f16kIWAUsSC2RgxuqyWhSFrQcFm1op0buoTu78ZPOQ5OFlf
         Bk6o6ZxsNlN7QaIybyqhokq0usTWEsRwK9a+3Yetc0vh0RHJK1Gu6ofNn9mRBz8PUrHQ
         BiZHL6TXyIilQtv4f8g/+XCHadVlk+vAQPFfeA2yhn1VYqEg7ISo0F/kCfgG7mo4xYi+
         orlpqfmX+Oi+LWWYJuma+oS1+Mw6pWrSFbp0J6eZd8DO/k3WgEFZv1XSOhIlCW4iotWO
         fHQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Dl+zhcxm8o9f3OuYTRP+UCpfUsiWeAPMQoAHorGB1io=;
        b=ecz61yaAmtlwWCai9UDT09o+7aNHL6+nlY/5LTykID+75D+d+2xhqspiVSwTMv2oxY
         Siq/Nlfa/q2suY7oWpVu4Y0L4C94ifzuJrp+tEoDxbsiL8HKpcC6fkFhorGtW60suhk7
         Q/RrflL8m35q4a37DslujF0KgHc9eN2jN3uoTmhooy5WIx3OZPejk3hK3pJS92Kqiswm
         v9AggoRgvYj1N2Mn/ornnXB6o1v6vVyuuFYXVI0wlyl9aPKkyhBzovlPGy93tZIPwKsy
         Pqf7Rk+LK8SoE60cA3MbK4bM/u+otTUvZC5YSyoYj2tJg7p9bL0h3vTKDgXRH/BgufP8
         9GVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kfrAHG3y;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com. [2607:f8b0:4864:20::b31])
        by gmr-mx.google.com with ESMTPS id d13si350176pgm.5.2021.02.04.13.03.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 13:03:26 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b31 as permitted sender) client-ip=2607:f8b0:4864:20::b31;
Received: by mail-yb1-xb31.google.com with SMTP id j84so4630578ybg.1
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 13:03:26 -0800 (PST)
X-Received: by 2002:a25:c553:: with SMTP id v80mr1613719ybe.422.1612472606151;
 Thu, 04 Feb 2021 13:03:26 -0800 (PST)
MIME-Version: 1.0
References: <cki.C90653A6EF.V9S14CF2MY@redhat.com> <20210203180333.GA765672@localhost>
 <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com> <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
 <20210203220612.GA1738694@localhost> <CA+icZUVjeGq0UzCrJbf9qMYtR56woJ_XtFGiAzhvHnt0zEbD7A@mail.gmail.com>
 <20210204175010.GA2988776@localhost> <CA+icZUVV3q3Jr8HEi=LmqYucOWK8b3zOEvfGsk8Mn5FS--8bnQ@mail.gmail.com>
 <CAKwvOdmqF=wXxFgUNyjJnCPtFnMrnbnuxP2APyOLimVbBqK0JA@mail.gmail.com>
In-Reply-To: <CAKwvOdmqF=wXxFgUNyjJnCPtFnMrnbnuxP2APyOLimVbBqK0JA@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 4 Feb 2021 22:03:15 +0100
Message-ID: <CANiq72kN+tpC2J4rBrtT=ANhcs6F-RTpjGPFuowW+SdFgJF6-Q@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IPCfkqUgUEFOSUNLRUQ6IFRlc3QgcmVwb3J0IGZvciBrZXJuZWwgNS4xMS4wLXJjNg==?=
	=?UTF-8?B?IChtYWlubGluZS5rZXJuZWwub3JnLWNsYW5nKQ==?=
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Nathan Chancellor <nathan@kernel.org>, 
	Rachel Sibley <rasibley@redhat.com>, CKI Project <cki-project@redhat.com>, 
	Milos Malik <mmalik@redhat.com>, Yi Zhang <yi.zhang@redhat.com>, Filip Suba <fsuba@redhat.com>, 
	Memory Management <mm-qe@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>, skt-results-master@redhat.com, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Jan Stancek <jstancek@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kfrAHG3y;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Feb 4, 2021 at 7:09 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> We can move to vger+lore. Google groups was faster to setup, but has
> many downsides.  I don't have resources to pursue archiving the
> existing list, and corralling the folks to set up vger and lore, but I
> can point people in the right direction and would be supportive.

I can submit the request like I did for Rust for Linux if you want.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kN%2BtpC2J4rBrtT%3DANhcs6F-RTpjGPFuowW%2BSdFgJF6-Q%40mail.gmail.com.
