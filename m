Return-Path: <clang-built-linux+bncBCMONT7K4IHBBB5DSOOAMGQEJ3LEWWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F4963AC0C
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Nov 2022 16:19:37 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id i8-20020a170902c94800b0018712ccd6bbsf10327859pla.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Nov 2022 07:19:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669648776; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jsr7QDRa0pEKqa4SGR39OfWcI5hjZi7j9e6F9BE+dq6T0kkkz6gZoQUXSDefYAtX7V
         1ELdN2uK7eE9FhRfIZFEim2SeG3RPygPhIGyJUyUrQ1PwG1VGjP/fmbAWpNf7+aL3K9m
         0QczOD9KSBk5Xt8mxeA99KF4X0DFT74oUb5IDF276zZk20t3kDLuzUZyw21A7ONbB12i
         KaT4ZKY1NgxRATvmBrLgO7ZYmj7xpJztyWwJO+oepOjn7uRqc+OHCAouEwZdtuMOUQKz
         IqYkWBce8XBrX07dFsBn/RxEiW/+T+Wb6wwX0WvS0C7AN2jl87EI3//32WzUtQYixNVr
         mo8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=rI3a7a6BQvBg9yViiIMm3CSijp6MkaMOutuS/wZqu+I=;
        b=v16pIy7IbEis5yCfryG3K03quKs4tBOxb9MNSJJtvUExRq4Fdomngl3MgbTEY+HpBW
         iPIqaq1zYUENSId32KGbXL0Mkq55bnewrZ73ubxS4DBhP6QpmqkK0TdlMtXizD5RBl5k
         R7jVclnfoNYHn2tUNlFlhfthYDsTfwvcn4/6Hm/lEVVG8WBpfvy0JyYA/Z+qbB1iVIlr
         E3Zz77+A6iTnTxj/Y8/eJSCB51yNWjuiRzTPxTd5rY5D7dHdpjTg0UM4XZkRCaNc2ESO
         coHo2Kd19iiyj7zdvHp3hKEluPY2OHrGWAkvQU7Y4jjDmdf6ky1pAf/DX/PN2kJZbiEY
         Hpmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=QSAe3M37;
       spf=pass (google.com: domain of kathrinebrown1@gmail.com designates 2607:f8b0:4864:20::92c as permitted sender) smtp.mailfrom=kathrinebrown1@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:reply-to
         :mime-version:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=rI3a7a6BQvBg9yViiIMm3CSijp6MkaMOutuS/wZqu+I=;
        b=O7q29kijVGQEqkUDSDzcj+duxaQT6dNx3n6LaNs6T+WifZF7li4kpNVfZu5G4FZC6B
         bRVQBgnHj5ELItu7rwH8OBbtql6RNM27N92dqeI6E4ymxMnRqVaedt4IiRAVKASUrNTt
         5kvsN9O82u/F04Y6z5lk8lSClLKFrQ5fWvjEVMCPsQDmgCyXXlZlbJJCqFskjoeomuzz
         UUTBt2+l9lpcMXUmAc6q9KvIxDVoAOaHbUOLaNaCTCVl824f6Kyns2djtnN/hJ6zpAsK
         2+w8TDOzNAoGpLAla60RacSOoOs6u6A3li4iH+7XlK1Nlxx3A2y0ynIyyfP3k5926JZq
         cuJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rI3a7a6BQvBg9yViiIMm3CSijp6MkaMOutuS/wZqu+I=;
        b=g9i2VZ/Aubbomk8nn1iLWhyCeHGp6TmkEI+qOrivca2JFR4+ycVVg/QaS2KnaFBj1E
         hxUDQSim5+2PUzrCTg6XCm7DXGp/m19B90jkavSW66M+QFfsxJ51lmIcSZ2MepeB4Vll
         WZY9MfnrNwr0GVD+5jR5AY08yr8ahHSgII6sJSbKZP9RHNwofj/B6heZxUOkdN998dUY
         P9beCVNiyp1IZomnkgPGoR7rEHogKnxCQVxlmFnvr67jYOigXUCCYIF/V8KEU276DpkK
         cf5TPOF7KAt1dmFEL9HwAqgsPuqN7em5xskApv9W028QgW7lIGzLyFdnLe8kC4rJvYIr
         +DKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:reply-to:mime-version:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=rI3a7a6BQvBg9yViiIMm3CSijp6MkaMOutuS/wZqu+I=;
        b=CuIqLkha15KLhbpODbr/JwT0JQUQvQKqmRyVA7NmH8Y7NujiHfpn18cCRywzm48CxU
         YvZ58MuuUQNbdghxFHSk3AN5hIsepRyrpFJ06qZFS1hXXroUaomGEDKg3sUZ7jzha+fW
         EfB81XJGE4XeqXPTLwn9T8l3EI/Ixy90yCw2qQFT7V66krAqtGw8nSWzi7kF20rcevRt
         QeUVWmnEc77XwL2pmKBP85dAHvlORNnI35422+aDWdqtv9WMhv8Hrme85PEM/CPA5Tjq
         1gqsk9j4z3xnorkZP2YPKkEEPCN4waXU7+uLwwOP3635ctF/zt4/Qow5fOGlbM3b+Fd1
         6ASg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANoB5pnsHklnfh6Bmh0n6j93WdpoJY0pIrNbqxFF/Ew7w5BHmUk9fOrr
	aqKHa11JFuh2rjgRm2Q5y/8=
X-Google-Smtp-Source: AA0mqf7dd68CEYCcNPnNeund7QR7fSF9pe5JT6gdoibn/kgCAFuQuj/mZzpQ1S8RBWTMyYD59yfUqQ==
X-Received: by 2002:a17:90a:be0f:b0:219:21c0:8e32 with SMTP id a15-20020a17090abe0f00b0021921c08e32mr10632140pjs.101.1669648775896;
        Mon, 28 Nov 2022 07:19:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:8a93:b0:210:6f33:e22d with SMTP id
 x19-20020a17090a8a9300b002106f33e22dls9223088pjn.2.-pod-control-gmail; Mon,
 28 Nov 2022 07:19:35 -0800 (PST)
X-Received: by 2002:a17:902:8212:b0:187:2430:d37d with SMTP id x18-20020a170902821200b001872430d37dmr44892891pln.28.1669648775095;
        Mon, 28 Nov 2022 07:19:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669648775; cv=none;
        d=google.com; s=arc-20160816;
        b=yxLkXJ7vf0I5B7eDem6Q25ytoI2tI+RYDgcnHPvwdB7yPh6zfBju81anIkkkZgqbqg
         nk5RKOiKjeXNudbi4v2FeDVV053bi+ieW73QnNWlkWcVaVqyc2DEbAgnRFELW4IjD6GJ
         dc1OK5ObXW+/OH48DkmDGCrvAQc7igfFfNDSUNFa4JvMCe/n/XejDj/8ZFOyEbsLqzPf
         1xQDmHWqM8N4R4p+IbD1kOCFijxd1KoYYuHD7B5G/IsMCJppGad8HGgw4VyMRFcfmonq
         V93UQT6yiZt9cCy2qlhdZfOkvsECaYFYVPEeHaj4ZGdQXLzw/yiSmUhFI1UqtHQK5U+T
         cRPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=X4e749q2EV8aU6pI2R7qqgNrvCbhWCLhab2Y7N6cXHo=;
        b=HFdCtQZZobjtQWpFP6PGJH6Qr41YWtz1Uau12Gj0+CSJVKjIsbKI7AedcTi5QOKjU4
         pq2qEXsyZ2Am70zYjYidu6Cv+3nUkgX1UcyVcvYbNP0hw3X6abNsSZsNwNh3Gzjkjqee
         i6GCP2noW07dQjuvDruu533xWFvf3xMTdbOnTzk2P7i8Cl2IweFszWs+9yTOxiAV8hsd
         nnyD33EGPDVvC1NQ9UgHPs/C/9Wh8ALE1WvN4uOGHgsPpqmB91Z/mTPFyL27fr/Fr/Y/
         20taUaLfDsX6u3dJH8sEyGwFyHeGzR1QQa0kd4ZHHMferqpsYthAenwDAJ+fOSNWFAsi
         Rssw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=QSAe3M37;
       spf=pass (google.com: domain of kathrinebrown1@gmail.com designates 2607:f8b0:4864:20::92c as permitted sender) smtp.mailfrom=kathrinebrown1@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ua1-x92c.google.com (mail-ua1-x92c.google.com. [2607:f8b0:4864:20::92c])
        by gmr-mx.google.com with ESMTPS id s4-20020a17090a880400b002025f077b2csi647989pjn.1.2022.11.28.07.19.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Nov 2022 07:19:35 -0800 (PST)
Received-SPF: pass (google.com: domain of kathrinebrown1@gmail.com designates 2607:f8b0:4864:20::92c as permitted sender) client-ip=2607:f8b0:4864:20::92c;
Received: by mail-ua1-x92c.google.com with SMTP id y18so3958539uae.8
        for <clang-built-linux@googlegroups.com>; Mon, 28 Nov 2022 07:19:35 -0800 (PST)
X-Received: by 2002:ab0:1626:0:b0:3b3:e759:ed55 with SMTP id
 k35-20020ab01626000000b003b3e759ed55mr20979866uae.106.1669648773611; Mon, 28
 Nov 2022 07:19:33 -0800 (PST)
MIME-Version: 1.0
Reply-To: fedroor@hotmail.com
From: Consultant Bond Street Investment Advisors <kathrinebrown1@gmail.com>
Date: Mon, 28 Nov 2022 16:20:02 +0100
Message-ID: <CALiQTueAoea39GvwLa+KEN-w52iNm6o4m+Ee6vJ_YKjnYoqOnw@mail.gmail.com>
Subject: Solicit for your Assistance
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="0000000000000d0db805ee896657"
X-Original-Sender: kathrinebrown1@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=QSAe3M37;       spf=pass
 (google.com: domain of kathrinebrown1@gmail.com designates
 2607:f8b0:4864:20::92c as permitted sender) smtp.mailfrom=kathrinebrown1@gmail.com;
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

--0000000000000d0db805ee896657
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am Chief Operating Officer in the accounting Unit of Bond Street
Investment Advisors, a team of Wealth Management Advisor and Investment
Brokers, I represent Ultra High Net worth (UHNW) Individual Clients,
Venture Capitalists, and Business Angels to expand their financial
portfolio globally.

I am writing on a private note, I wish to seek your consent as the
beneficiary to the total sum of =C2=A315,000,000.00 GBP in the intent of a
deceased Client.

Therefore, I am soliciting for your assistance to come forward as the next
of kin. I have agreed that 40% of this money will be for you as the
beneficiary of the provision of your account and service rendered, 60% will
be for me. Then immediately the money transferred to your account from this
bank, I will proceed to your country for the sharing of the fund.  If you
think you are capable and will be committed to making this deal a success,
send me an email as soon as possible to confirm your interest.

Upon your response, details will be made available.

Sincerely,

Mr. Christopher Smith
Consultant Bond Street Investment Advisors
Station Yard Park Avenue SOUTHALL,
UB1 3AD United Kingdom

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CALiQTueAoea39GvwLa%2BKEN-w52iNm6o4m%2BEe6vJ_YKjnYoqOnw%4=
0mail.gmail.com.

--0000000000000d0db805ee896657
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>I am Chief Operating Officer in the accounti=
ng Unit of Bond Street Investment Advisors, a team of Wealth Management Adv=
isor and Investment Brokers, I represent Ultra High Net worth (UHNW) Indivi=
dual Clients, Venture Capitalists, and Business Angels to expand their fina=
ncial portfolio globally.<br><br>I am writing on a private note, I wish to =
seek your consent as the beneficiary to the total sum of =C2=A315,000,000.0=
0 GBP in the intent of a deceased Client.<br><br>Therefore, I am soliciting=
 for your assistance to come forward as the next of kin. I have agreed that=
 40% of this money will be for you as the beneficiary of the provision of y=
our account and service rendered, 60% will be for me. Then immediately the =
money transferred to your account from this bank, I will proceed to your co=
untry for the sharing of the fund.=C2=A0 If you think you are capable and w=
ill be committed to making this deal a success, send me an email as soon as=
 possible to confirm your interest.<br><br>Upon your response, details will=
 be made available.<br><br>Sincerely,<br><br>Mr. Christopher Smith<br>Consu=
ltant Bond Street Investment Advisors<br>Station Yard Park Avenue SOUTHALL,=
<br>UB1 3AD United Kingdom</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CALiQTueAoea39GvwLa%2BKEN-w52iNm6o4m%2BEe6vJ_Y=
KjnYoqOnw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CALiQTueAoea39GvwLa%2BKEN-w52iN=
m6o4m%2BEe6vJ_YKjnYoqOnw%40mail.gmail.com</a>.<br />

--0000000000000d0db805ee896657--
