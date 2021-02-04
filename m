Return-Path: <clang-built-linux+bncBDRZHGH43YJRB7XR6GAAMGQESX6OPIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 40AA6310048
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 23:45:20 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id n14sf1345809vkq.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 14:45:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612478719; cv=pass;
        d=google.com; s=arc-20160816;
        b=gYM0zfCLhs6LN6jFzHNnBnoVnWM09e0vvLsALhUMi9SNa/XMyrohogA1Iu2lwj+FQz
         EP6yb2FKamdOMSUzytLEVuEwXhXT3Yyjr6GxMVrDMPdOrijH4gEufbRS/aPrrh/+x1MJ
         IT4SB2hizyavhCpcLPPhVp0UorBRFvxyjkpleszvOZr8K50v1apivHar6uCLBPXayERA
         5n0YkHXR2fEUIwgXlLA4bntttm+3HG7dedqhlAh89umFbIcUw1kw8jY+NJpGSvUW4tv5
         GaT5r7v8RuGVamCn73JcMM3luFbH1nGI9oJ0ek3HThX4U9OTxIZNGxO+dj3M3SiZV6/7
         6oTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=uXg73x1wxPiCfJjyKrG+YavwhPvj06KWjlVlxhCN70o=;
        b=QH4PDQGqbLXa3etf2PlagYp1mrhS46GE8OSxvh8IvRA+oBzP0lgAVsyebftLb3OIkq
         e39SxswRhLNKZStBwWfycaBFF67MbsnELOYQfNu3Zd9QqgGvNeM+4fp1ldnUVKoJN8QQ
         mU16bPpaaa3+wRYsFCI4iUtZnPGbnALGUG3c3HH+SrOEhkQBl7t/i/Q+77I+fRRY2u7d
         SHoc3epOaLpZrpPYpuNug/ic8G6WoAWAGlI5lJBP9pS8uaoODpAxgOEBZJnl7qAawoqm
         drVq9BJMrcdwLZPBW38rwOfIJhHJemNstv2FyJYGCQEuDj8VUzn4i9IK/dGN/KP61E6J
         wgXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pViFests;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uXg73x1wxPiCfJjyKrG+YavwhPvj06KWjlVlxhCN70o=;
        b=bbtKgUb+xzFiws3lc+w8BHm4QfwtsChpwmbS149HXSmUy5OZ3mCHl7kTgSzGBCBPNX
         PzLLJ9erR9nAt1awHtoJ0byevgFtIkoio252Rsl/TmCN2GqmqaT3XQDBeYhCKHCynNC0
         SH2GerrYRVh0vOpckW5EyHC9Bcyzs0vDMvFotJUnQjr5fqEu+gtQTJEiB1rb/h8W0i5u
         KUypJlE8tx3HDzslQ2pO3w5HQMu1Met8PZgk38mCmiVK12i4pkycyLBJJQQD7+pNxizt
         ddBnfEBBifxkLjpp4AxweFG+ivcGfkuXfemgrB1mZZS9/OGk4prM79YYT2HyrTfIF9HJ
         5v4Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uXg73x1wxPiCfJjyKrG+YavwhPvj06KWjlVlxhCN70o=;
        b=BvBOEQN52SrX/BF/1EwNgeNtFCmCCMWaqhk6N/FGE5j9S2RweLnt8ADtZMPPhM42XQ
         6jr/Q5OUOsFkqM8ziOQ33QqRsUxBw2ezrypqsv3uiAhzLRn+JHckiX81N+E+EXKtlHXy
         lYXSYMfprNbtdyAJulCcEDTKP3D0oE1jxsSvo8PoeHJieqC/rGkZbkxkDKZOxpjap+xL
         W3a3omSNPykf9Ov3PjYjsbr7MrPdvWRga6zyrsG5ltK3mNB3HJdBj/wQZNRXB9ypkMBq
         XNFRCMDxEL4DhE2Bcymoced86jkx1gtG5OrgqkNS1sfg0QtphEDE37VSZojhfq6cru4v
         yelQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uXg73x1wxPiCfJjyKrG+YavwhPvj06KWjlVlxhCN70o=;
        b=hVQzQE6a5OQjl8UjIKGW+gfo8ifrIZtZyiMsWcwBDxExHikLquqXWigV7AYZ7rsazn
         CVWZd+B33EPibE3cQSBkQP94EjuCENnnk3NTQPe13HyrpixShf5fnN0mL+MqTPS7KxV3
         pLciLlQxMo9xgVMmR0/IsyyiQXj+mTS/Fu24magcvNvmKfw4OW0FniHirNhXH44QRmcz
         DUOLdeIrl4OR5yQpJHijoGj6StuKHfe1jAXyNsi+u1CH0pBYJ55SJahSwI6eLF1xS8Fp
         LD5goWESs7xGfqlXZ0ZKAVt3Fg65tegkSvejlnsx/WAoix+vULMazVu0SZVuhn5ruo+m
         Mbew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328EYQ0qo47ZhjvF3BzQzqZkY8fuuH56yW8W9sFIhK9aMKdRR31
	mOrWvlCPZZlmE0nk1VvqfsQ=
X-Google-Smtp-Source: ABdhPJy45vNFnqWwF2D+9cR20+SQHk8nXkjurjF90at/GIQbuA/kbHoHFdD2F4vGVY2NCrwHTfcLzw==
X-Received: by 2002:a67:2b84:: with SMTP id r126mr1167425vsr.14.1612478719050;
        Thu, 04 Feb 2021 14:45:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:e982:: with SMTP id g124ls415909vkh.7.gmail; Thu, 04 Feb
 2021 14:45:18 -0800 (PST)
X-Received: by 2002:a05:6122:12b9:: with SMTP id j25mr1237831vkp.10.1612478718570;
        Thu, 04 Feb 2021 14:45:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612478718; cv=none;
        d=google.com; s=arc-20160816;
        b=UQNd+S5OIxqOfv4iuOpLzwiJIAOUsZwuf3RRNr2xEfwdNCDWZXYy6gD2sXErW1ftV6
         ak58XranN9EPwyTyDZ+uegG9d8sWTuqGJwsuonnRfbqRRkpmGxx0SPRS/ZhdzLTkQEa8
         O/8LHg9TBVpW6tcA/WVXkhZx876dfA6jCJ23CR107M9gcaOKsUnWrUHFSN79isz+d49i
         OGmR08hZg8VQqNuMTiVb5P15WOTlKgUFKxPdB5hwg9j9eskM+hdqwt00FKpAP/118DTQ
         234VX/aLIGCGcH6DBp29jSvl27r6jG60M9MX83MpSo0X1MIoRku+N6rqd5iJ88Trjnmo
         r6zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=akAd9K8p2BUZV6NN65Cdox3wJXapT/Jxou/PVeBg6Ns=;
        b=0yUj/1MlDV5DTVyqjBwT1V0RaNjx14cjrQTZffD/B9eo4I+O1Y2AEFn2bQOqao3a3q
         5ivgA1EykpA9kHGRa3uAsKZ5GrKMPoj04XDgy4uN6ygxvI5olzOTHgsNkhXHLISn7Zef
         MisCFt13JaLwFBBJhPrKZRQT8i+StVtDaoQ0ebOhm/uxJikKanUP4LgwTno0I57/2Gwf
         S0wvaakrkGjOoR0pfwL/h6mwapHC5ljuBcRaMpY/lIxv/PX5sTpGNEFjyw1HTv1kupTZ
         KS1PdkYXf1QbRnzSjmtZwhYMb48kVvv15lhE61/mOU5NAQ6AeEg2IjtfVn5D9lYzYPwh
         lvgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pViFests;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com. [2607:f8b0:4864:20::b2f])
        by gmr-mx.google.com with ESMTPS id p73si369680vkp.3.2021.02.04.14.45.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 14:45:18 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) client-ip=2607:f8b0:4864:20::b2f;
Received: by mail-yb1-xb2f.google.com with SMTP id w204so4879687ybg.2
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 14:45:18 -0800 (PST)
X-Received: by 2002:a25:31c2:: with SMTP id x185mr2193543ybx.93.1612478718395;
 Thu, 04 Feb 2021 14:45:18 -0800 (PST)
MIME-Version: 1.0
References: <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com>
 <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
 <20210203220612.GA1738694@localhost> <CA+icZUVjeGq0UzCrJbf9qMYtR56woJ_XtFGiAzhvHnt0zEbD7A@mail.gmail.com>
 <20210204175010.GA2988776@localhost> <CA+icZUVV3q3Jr8HEi=LmqYucOWK8b3zOEvfGsk8Mn5FS--8bnQ@mail.gmail.com>
 <CAKwvOdmqF=wXxFgUNyjJnCPtFnMrnbnuxP2APyOLimVbBqK0JA@mail.gmail.com>
 <CANiq72kN+tpC2J4rBrtT=ANhcs6F-RTpjGPFuowW+SdFgJF6-Q@mail.gmail.com>
 <CA+icZUWPN_fjpWyQN1oW+0y0naf_iajD9TzkfyxyMmHTnaS9Nw@mail.gmail.com>
 <CAKwvOdmOKvzHOBAichsZe6HQfJ=q0j+Gp_7QkhBDAKdZE9Y3Kw@mail.gmail.com> <20210204223504.GA428461@localhost>
In-Reply-To: <20210204223504.GA428461@localhost>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 4 Feb 2021 23:45:07 +0100
Message-ID: <CANiq72kHrEiYi-=rU6AXfi0TbWePCgKJSoW-PJPutJbWH5E0YQ@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IPCfkqUgUEFOSUNLRUQ6IFRlc3QgcmVwb3J0IGZvciBrZXJuZWwgNS4xMS4wLXJjNg==?=
	=?UTF-8?B?IChtYWlubGluZS5rZXJuZWwub3JnLWNsYW5nKQ==?=
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pViFests;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Feb 4, 2021 at 11:35 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Yes, that is fine with me! We tried to submit a request for a
> vger.kernel.org list once but I do not think that we got any response.
> Maybe now that the project is bigger and more relevant, they will be
> more responsive to our request.

I will give it a try then.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kHrEiYi-%3DrU6AXfi0TbWePCgKJSoW-PJPutJbWH5E0YQ%40mail.gmail.com.
