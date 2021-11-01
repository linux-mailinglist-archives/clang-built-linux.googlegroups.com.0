Return-Path: <clang-built-linux+bncBD52NB4QTQARB36V7WFQMGQEW4V3QDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2225C4412B9
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Nov 2021 05:20:01 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id e5-20020ab04985000000b002cad81164cbsf8376358uad.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 31 Oct 2021 21:20:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1635740400; cv=pass;
        d=google.com; s=arc-20160816;
        b=wMneVEdIic2ZQmf5N8iw6Awn+Jc6qZGFJ8ckzviJCSgYqloJaXeV21r0cXcyndz67n
         4gaM+xIIKY5YNhoUYr+cPKWwO4qmeyRPlfxENMBWMMJDREX7zmp5Cj3HnVmm8r4B5uCm
         RHAh7ez7Dy0hD+BGygv6JNDyNsa5oDg2SNeK5YWv9TvZzviANSW720hA9PcJDN1HDrTD
         ossJ+JbV5KRsPBysee4amYx4Rpv54jF1OCEctNA4cfGPm2r8Thw2QEObNhzxym3cl0S1
         +SWqCXcprOcYAUPg2SnudjaYXwXWA2o6cfZjytQOinZQWdZPY2i7SbS4NKgiZnP6ZbFF
         HOlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=CQhbg6vxWh8TZlCAZCdVa713Z4Je5Hwy1s7KJ4WZO2w=;
        b=szwW2yg3FuHxWEzfMY5px/qTsnDyx0W3ymNzDLsaz/QY6BP+hDgJD5vYVZb7sI9AvG
         0ksb0eGvrIH6fTSSicoaeZJSodHzu16/56bpCOaV0MOgyT17lsAp9xQjEqj3pmlePgoC
         jzOWT7nvJXU5HJmXdWFI769CdcVe6sHSgyYL3Kjj4rjA/qKz5x75c7OcoRA0UUrThGvH
         e5egKY5PtWawUaxODlBPDLZOAy0K9c8hzWaAl7y/i8zoBdoKC31oZN3sxHyhhevAPpkr
         5qhd+rgyP/Lcp1tiJeiTiB2uEzHpv3Lal1qVF+2ap34E17rT4Yti8xTqZbW7JPubFEnB
         PiWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="etOLEF4/";
       spf=pass (google.com: domain of intermstores38@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=intermstores38@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CQhbg6vxWh8TZlCAZCdVa713Z4Je5Hwy1s7KJ4WZO2w=;
        b=hgle5sl6Jx2mAlsElq97a5VNpGdWkAHCL3vgzMflxKxOgmaFdsmuNNBLtGVyiK/huW
         xhvGeUSvV30JYdzrUvoBfg/+oYULpRkf/EdDUIjEAEQEnUDe3p0K3Al+jvhcufoTEv6T
         mDBRs6/1/brP4KH1Ld+hcTgAgyk9Ld2K9SH+HH3URA5QpTWzMEhJGyor+77sEMyzkULU
         e5jrR84GfIYM0AOTTBLjNCO9kOv+jipnwoTb21eaFr0CQM+Tdw0CpZjdw1us0KnfZTC5
         NfpAgxLGNWVq3OXE7fe9vLhuVEYgBTncSzOiiz3BCe2/7zdMbkh0R8zEOgCSVq4j2+xm
         ubjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CQhbg6vxWh8TZlCAZCdVa713Z4Je5Hwy1s7KJ4WZO2w=;
        b=QEDjdmtHFXK8+So7Gb8BYPlufZ/CHvM7aXNjya+cdok673OlRSL6VXnurRDsw7rtU0
         uRgTOKyhWT7+aLfUmedn7MnT5h5Rv/0VbW6Z1HF9rP1KLOCBDIjsIMpM2XxJUhPH4cMp
         V6msAAArVzJb27rptYICQSeo8G37ZGFYY665rxpulzuJ2nkkllS9iaxC3BqlEZxCFhW5
         2jTp4keqlfpI3LkP/CYqKdi2Q8dBHAz+GUsE/aJTSIg2aeWlCwQuPFr6LsA4AD/7+Kq7
         A4ssWt5Eo0xXHzJf1HldQpi5WBnG8rAy/9QoFCMhXSF2pdpiYi9sLrqMmFXTdviewggw
         XVhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CQhbg6vxWh8TZlCAZCdVa713Z4Je5Hwy1s7KJ4WZO2w=;
        b=7XDHnFLEMTZdH/0G0qYUHjEmcCEBEpjMI1dM5NPtdGojbHDmto/V7V2QyaEUsasbnQ
         acsdNmQj3lBzqWQ6KGKMUgZdxvZcLtptJ2YOoHYqQwfLtYJs1GrW4GVpAMsN/DOp7LKb
         yUKV0sSjpnXLH58tIOI8mZviCJOb0DEORgWHd9/YYiSNdHRZhzJ19GtijlX6grQ+r/a5
         PPkJ77H0bAPxLzwUisJTSq2gSNnPb7VSIBB+RAYauNJiiDiCY4o88LiV4ktybQwrywYN
         NT+znUSGdNHJjvkA9dPFiJgKQYhvwu1n2UGzo7gOTMgq5d5t7dhbFKNKH5QmT8X0nwtC
         L+yw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530x2O6/GIMxdkMHJzqKEn0kd0f9097DG9AXr5kqFMwmv+RMuNx1
	NMbfYP9DdOjcgYZZaeP763w=
X-Google-Smtp-Source: ABdhPJzd4NFmG0fvfQs7HM6dnTB93U6+HHgvo38/TfBLNxnzYG4SkQLwe2qtpxkz02RogPd+Zd7gzA==
X-Received: by 2002:a67:ee88:: with SMTP id n8mr26829017vsp.58.1635740400002;
        Sun, 31 Oct 2021 21:20:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6122:8cf:: with SMTP id 15ls1419805vkg.8.gmail; Sun, 31
 Oct 2021 21:19:59 -0700 (PDT)
X-Received: by 2002:ac5:c757:: with SMTP id b23mr11541400vkn.21.1635740399502;
        Sun, 31 Oct 2021 21:19:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635740399; cv=none;
        d=google.com; s=arc-20160816;
        b=VfuPrHwqkaKLNt083KEmyobMuIXWuS/SrsDwYoCb2FncPsVRLibblMikMb0B6P/9sX
         JZmF8875e1GYB6FiDuMaRGHg4CfJXDrywTLoDX6OaOnnipy5hh7ht3j8ApzCDj3zMq9K
         ljDBao4gORHbXQ+XeulO0mEDjwJxz8v1NanC+b5w9WQ2LiS3uFWTFfr657T28X9lOPS6
         HE9jrqq4gd0c2UeWJw3QEHXYZF9jiPWA+KMnSSC9WPZZ7jArSIfOMq0GbUfCXSL9tD2r
         +XbkFeDEXIxQpfxGJhmDB4CqJeh8JyBqDLe3UXoNPI14wk8tYtQKN8HfqwrTYQE4C3Nr
         RMew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=jD52UBxgMH7/wiDOJj4/6rqqFU8210TnM6SD2/Alo5c=;
        b=XipZ+dDerM4STVO8JKwyh7xeccW5AZ9zoBPowv8aabGAM5w7XgAgBzhloYI5Hlpn1j
         BkfFiKMGNMOaC31nI1j8uDUOocnfmwVPe4FtgDkJzaPayRJ72kpDTycSk5FQi/pRMO+P
         AK6NPCxp2mC5twNF4W8yWQykbq7jwzx3FlImISPwVyM+7DqvnqYMokTx2/v7sFMj2YLI
         c4o7PiLWOhgFcl1IOGtLfTdbmBhIWfceCqM6oGwmSdc8BE4dWujrHzOlcabNgUOWVJUw
         DP0B9dSzGzOIfN505sJ2T0LLu3izSDqxsfAgMCDzuCFlaA7s5NakGhj3gv8xzd00Ny6Y
         AWWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="etOLEF4/";
       spf=pass (google.com: domain of intermstores38@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=intermstores38@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id f26si636098uaq.0.2021.10.31.21.19.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 31 Oct 2021 21:19:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of intermstores38@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id r28so16175484pga.0
        for <clang-built-linux@googlegroups.com>; Sun, 31 Oct 2021 21:19:59 -0700 (PDT)
X-Received: by 2002:a65:62c4:: with SMTP id m4mr20317694pgv.453.1635740399098;
 Sun, 31 Oct 2021 21:19:59 -0700 (PDT)
MIME-Version: 1.0
Reply-To: paulantony516@gmail.com
From: "Mr. Paul Anthony" <intermstores38@gmail.com>
Date: Mon, 1 Nov 2021 04:19:45 +0000
Message-ID: <CACuitkv2yWJe_ZfW+cDXOiOescb9tfSbxvMEphRR4zU0pDpkAg@mail.gmail.com>
Subject: INQUIRY ON PRODUCT PROCUREMENT AND SUPPLY.
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="0000000000006ee08a05cfb27d27"
X-Original-Sender: intermstores38@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b="etOLEF4/";       spf=pass
 (google.com: domain of intermstores38@gmail.com designates
 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=intermstores38@gmail.com;
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

--0000000000006ee08a05cfb27d27
Content-Type: text/plain; charset="UTF-8"

Attention Sir. I am Sr Paul, currently working in the Marketing department
of one of the leading pharmaceutical companies in the United kingdom, a
major manufacturer of Anti-Viral and Retroviral Vaccines and pharmaceutical
products here in the UK.

I need a reliable foreign business associate to partner with me in
procuring and supplying a rare raw material used by my company in
development/manufacturing high quality anti-viral vaccines, cancer
treatments and various life-saving pharmaceutical products. The scarcity of
this raw material has hindered product developments in the company.

The previous supplier could no longer meet our company's huge demand due to
the recent economic meltdown caused by COVID-19 pandemic, a retired
colleague informed me of a source in India. I made inquiries and found out
that the manufacturer actually exists in India and the raw material is sold
at a cheap rate, in fact very cheaper than the company's previous purchases
but my ineligibility as an employee has hindered me from participating,
hence my reason for contacting you.

I can understand if this line of business may not be your area of expertise
but it will be another good income generating stream out of your specialty
for the next 24 months and beyond.

Here is my proposal: I seek your consent to step-in as the direct supplier
(middleman between the manufacturer and my company) to execute this project
and you hand me a commission. I cannot bid for the supply contract myself
due to my company rules and regulations and I wouldn't want my company to
have direct contact with the manufacturer in India.

This will enable us to work together as partners and share profits,
completely legal. We will discuss the profit sharing ratio, and crucial
details you need to know about this raw material if you are keen to close
this deal with me.

Note: You have the right to quit by the end of my detailed explanation if
you don't feel like moving forward with me, but trust me, you would be
proud meeting a partner like me and won't regret venturing into this deal.

I look forward to hearing your thoughts, and further discussions.

Thanks for your time.
Sr. Paul Anthony.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACuitkv2yWJe_ZfW%2BcDXOiOescb9tfSbxvMEphRR4zU0pDpkAg%40mail.gmail.com.

--0000000000006ee08a05cfb27d27
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Attention Sir. I am Sr Paul, currently working in the Mark=
eting department of one of the leading pharmaceutical companies in the Unit=
ed kingdom, a major manufacturer of Anti-Viral and Retroviral Vaccines and =
pharmaceutical products here in the UK.<br><br>I need a reliable foreign bu=
siness associate to partner with me in procuring and supplying a rare raw m=
aterial used by my company in development/manufacturing high quality anti-v=
iral vaccines, cancer treatments and various life-saving pharmaceutical pro=
ducts. The scarcity of this raw material has hindered product developments =
in the company. <br><br>The previous supplier could no longer meet our comp=
any&#39;s huge demand due to the recent economic meltdown caused by COVID-1=
9 pandemic, a retired colleague informed me of a source in India. I made in=
quiries and found out that the manufacturer actually exists in India and th=
e raw material is sold at a cheap rate, in fact very cheaper than the compa=
ny&#39;s previous purchases but my ineligibility as an employee has hindere=
d me from participating, hence my reason for contacting you.<br><br>I can u=
nderstand if this line of business may not be your area of expertise but it=
 will be another good income generating stream out of your specialty for th=
e next 24 months and beyond.<br><br>Here is my proposal: I seek your consen=
t to step-in as the direct supplier (middleman between the manufacturer and=
 my company) to execute this project and you hand me a commission. I cannot=
 bid for the supply contract myself due to my company rules and regulations=
 and I wouldn&#39;t want my company to have direct contact with the manufac=
turer in India.<br><br>This will enable us to work together as partners and=
 share profits, completely legal. We will discuss the profit sharing ratio,=
 and crucial details you need to know about this raw material if you are ke=
en to close this deal with me. <br><br>Note: You have the right to quit by =
the end of my detailed explanation if you don&#39;t feel like moving forwar=
d with me, but trust me, you would be proud meeting a partner like me and w=
on&#39;t regret venturing into this deal.<br><br>I look forward to hearing =
your thoughts, and further discussions.<br><br>Thanks for your time.<br>Sr.=
 Paul Anthony.<br><br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CACuitkv2yWJe_ZfW%2BcDXOiOescb9tfSbxvMEphRR4zU=
0pDpkAg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CACuitkv2yWJe_ZfW%2BcDXOiOescb9tf=
SbxvMEphRR4zU0pDpkAg%40mail.gmail.com</a>.<br />

--0000000000006ee08a05cfb27d27--
