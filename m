Return-Path: <clang-built-linux+bncBAABBOX2USJAMGQEMX6R4XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B45A4F080F
	for <lists+clang-built-linux@lfdr.de>; Sun,  3 Apr 2022 08:22:52 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id l7-20020a2e8687000000b0024b04e9c912sf1574378lji.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 02 Apr 2022 23:22:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1648966971; cv=pass;
        d=google.com; s=arc-20160816;
        b=DarkT6nRRGWw8sUhSxB22fKsGSsRdN4D1BJBcqy7IpLHuuv1PGztztbO/wnzlo2Bub
         lUO4VkjkFLcNhjbH9uOX8aYw5IdO23oAuDX6N9/uAy8WHXt8WtqPDORJgMDc4wI4m9Qk
         bpZAAHd3+umae4cOHk+bGRHaqtFsNV39NHxSybmFiH4Gs6Kf7UxdluR33TEB2x1MCZsQ
         TlOIWXoiW3gZ5FeDVeSq6OhSqg1Z33bvEpIXFefzso9Gwm+lw7E8iHMs1Kue9lecpqXv
         c+uVDzMMwG3zfhycxjW+htZ5KQf3UVrIjiH3jqb1bKwe3fNnKdAqpz64AsJTA7VwgC6S
         ecuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id
         :from:date:sender:dkim-signature;
        bh=1UtZbdXmzOd8MLVuOgtLHW2bLMzYZ3Z9gXJXYWBwyac=;
        b=0urU/mqvuYJAh3egKVeBslAGATIsWMTpy+4Vv7024LcVIM5/hfJbt7FOXYfV+pYXzk
         NBGQjaq7gC1JznLP+XfJmPRBm/tP2m+D/FSE/7ugKAhtvCC2J0bMA3vn4J8Iq5xi9EpF
         7jopoQLL2NEelki3LH7m5fuMokEEF3OXe7oRS1W5L5C0eFC/6PdPSEKj8YzrvpSmH8S+
         9mL0D3N9owVn5MTG0agHi1+AhblHC8Oin54q5PwQhNdgF+8fkpRjevJFtgt+lFveUxm+
         JkTk0LXTRoybYf/rFMrJZCX6kgjC7Wl49vggqYuT1cPMNWDD/QtXlxA2uOwuiUsTtuq8
         ydtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of info=emjtpisc.com__0-1r12zvjmnf8rqu.l9azxrxo3x5g2pzm@xqfk2ane5qjq38ec.gpawymg.8d-3trx3eag.um8.bnc.salesforce.com designates 161.71.6.232 as permitted sender) smtp.mailfrom="info=emjtpisc.com__0-1r12zvjmnf8rqu.l9azxrxo3x5g2pzm@xqfk2ane5qjq38ec.gpawymg.8d-3trx3eag.um8.bnc.salesforce.com"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:message-id:subject:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1UtZbdXmzOd8MLVuOgtLHW2bLMzYZ3Z9gXJXYWBwyac=;
        b=TsDr4bTx+YhNZ6ovZ5vNshxGgcwsamV9bbtG4/vEI7hZz8G/qROKIA3/WPTZ30a1V4
         bcWzC8WJfVyqYfow1tqGi1G9j+cGO9xtX/WzAiqrFnaNXYpOzZlBWo/EABwx/JDJdf6E
         fNLmlJ5FKETq8HaNpptIAZOjQsH8EaKMMJkTRwdWuYP9Xhjj2YToCqXK8uQN/Ksrc/fJ
         4HK+LVK7mFyU3HOexDrD4MB0X3H+mQWTzCHbBfjbFgGfjeKAwNcMfeWtBy1oHbBIerzS
         f9aerz4IFqwJ+s3jDJ1oy688z9mQuJ4hLVXU5naiirija6TxPy+cWHzycKcwwG03us1w
         Y6Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1UtZbdXmzOd8MLVuOgtLHW2bLMzYZ3Z9gXJXYWBwyac=;
        b=fdanr+fOBjCyy0JMdypn3L3OxavmrbTNWr+xoszhAh22yQ2j6uFthVjkrye+F06iei
         Anu7CuVQT8qWI+WPT33TSXUa5PXpyme1/CEeA9hrHXuAxVPz3WFWdhutvXEnxZmcudmQ
         9M9PSc1NMmksfu03wL6LfjXYt684NdDCH7VeNe8ZsagRVhFngusY6h5FS4K7TupsiXNK
         nUbB2cxsbfldcGOJz7VJoFMs62Rk//yrdJfoo9uurLSGDYR+9aMsHE2de41mSa6tn7cZ
         OHAlHFDX1ByYtAG2yUfxhH7Ls84rUg6LTd7BCpDktp6SzGIWx96dCKDkst7J3nv90E8j
         WUWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306GYAwWrZf49agNEAN6V3GSQpeJJMDDmikl9TBiufAVsMpbfte
	qyfeNWVrQ6s1PEXZ0X40NQ8=
X-Google-Smtp-Source: ABdhPJyyltYcMYQQI1clDV9AqWm/7gV/Y5wbT6PXAHFcV0dp783tnlyRnjbx1AhZGw6HSrbSzHjy2A==
X-Received: by 2002:a2e:8189:0:b0:249:7d3a:ceb0 with SMTP id e9-20020a2e8189000000b002497d3aceb0mr17163751ljg.367.1648966971382;
        Sat, 02 Apr 2022 23:22:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:1693:b0:448:3742:2320 with SMTP id
 bu19-20020a056512169300b0044837422320ls7660lfb.1.gmail; Sat, 02 Apr 2022
 23:22:50 -0700 (PDT)
X-Received: by 2002:a05:6512:3193:b0:44a:b555:b724 with SMTP id i19-20020a056512319300b0044ab555b724mr17904354lfe.459.1648966970172;
        Sat, 02 Apr 2022 23:22:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1648966970; cv=none;
        d=google.com; s=arc-20160816;
        b=MN9qMUhCsYrFdsfZYgxtpydPM7fZ8hbkIrLjsQvr0lyGLbBy9NAyT7qHwIsPZVZqRO
         RFajTolz2FTm5BA6lUSc6SDI3JM5Lx4Kbu12CKO5tff4r4ZZYWLBAszKO8jTQfV3rV3U
         2gdpb/9Y2RwU/R1adjU8Y4fLkR2djFRfZZD00mt/2YenkyKXJ8uaZ1hOUrZPBMDD4h7+
         jld55tJ8/KJZarV1pah/2GaksaJB8NBk/p3MgHQlcT3m4eaG6FlFd2z2EPnjwBHYmD0/
         ijAu0Y0nollH16kiasnlK125cvn/PLN2rs6gyzto3K6bfiO2CeSw7W229Iil3g7y2dfy
         AM3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:from:date;
        bh=DZakqzoPZkMeeJIDTrOsCQ5CRGgbBiaXF1TSK4JC/F8=;
        b=y6hshtzRR8QGz+3BD+leVVEn8/RhqLP0NaBl1c071DGhnrKtgZuh5gBD1TFG/b8/Wb
         gRJqFRjRHVYiNYeWQjM4MMgFW04K30u1HU0xwslp50bnPxI2G+/TVZkaMM9Lg2K+RlPP
         3kYCKoLP9HNK8n3TxuTfTIZKn9iPmo2+r38LyQVhVr15SsgiOOmHPnTePbmbxKQrFGqh
         7hIASBoUrrPZziTBQagfCGfW/FpmzjChyfuicXI/JZDPV5LVdHYAGqyklR9ESqorzka+
         8roquc9tgEEdEzUkL9nr+1sDbE069zk5U43ARS+ftTrVGtsLRfIeuMs6SaiwMOFxmXtN
         XFWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of info=emjtpisc.com__0-1r12zvjmnf8rqu.l9azxrxo3x5g2pzm@xqfk2ane5qjq38ec.gpawymg.8d-3trx3eag.um8.bnc.salesforce.com designates 161.71.6.232 as permitted sender) smtp.mailfrom="info=emjtpisc.com__0-1r12zvjmnf8rqu.l9azxrxo3x5g2pzm@xqfk2ane5qjq38ec.gpawymg.8d-3trx3eag.um8.bnc.salesforce.com"
Received: from smtp09-lo2-sp1.mta.salesforce.com (smtp09-lo2-sp1.mta.salesforce.com. [161.71.6.232])
        by gmr-mx.google.com with ESMTPS id c5-20020a2e9d85000000b0024b16acae2bsi11290ljj.8.2022.04.02.23.22.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Apr 2022 23:22:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of info=emjtpisc.com__0-1r12zvjmnf8rqu.l9azxrxo3x5g2pzm@xqfk2ane5qjq38ec.gpawymg.8d-3trx3eag.um8.bnc.salesforce.com designates 161.71.6.232 as permitted sender) client-ip=161.71.6.232;
Received: from [10.161.193.114] ([10.161.193.114:40046] helo=um8-app2-22-lo2.ops.sfdc.net)
	by mx4-lo2-sp1.mta.salesforce.com (envelope-from <info=emjtpisc.com__0-1r12zvjmnf8rqu.l9azxrxo3x5g2pzm@xqfk2ane5qjq38ec.gpawymg.8d-3trx3eag.um8.bnc.salesforce.com>)
	(ecelerity 4.2.38.62368 r(Core:release/4.2.38.0)) with ESMTPS (cipher=ECDHE-RSA-AES256-GCM-SHA384
	subject="/C=US/ST=California/L=San Francisco/O=salesforce.com, inc./OU=0:app;1:lo2;2:lo2-sp1;3:um8;4:prod/CN=um8-app2-22-lo2.ops.sfdc.net") 
	id 61/B8-07121-73D39426; Sun, 03 Apr 2022 06:22:47 +0000
Date: Sun, 3 Apr 2022 06:22:47 +0000 (GMT)
From: Emirates Islamic Investment PJSC <info@emjtpisc.com>
Message-ID: <8YU9R000000000000000000000000000000000000000000000R9R31Y00ztLLVGN0TEuaMVq4oPjHGg@sfdc.net>
Subject: Flexible and interesting
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1494_508150770.1648966967114"
X-Priority: 3
X-SFDC-LK: 00D8d000003TRx3
X-SFDC-User: 0058d000002CGqS
X-Sender: postmaster@salesforce.com
X-mail_abuse_inquiries: http://www.salesforce.com/company/abuse.jsp
X-SFDC-TLS-NoRelay: 1
X-SFDC-Binding: 82eopsuF2FE0HK7B
X-SFDC-EmailCategory: apiSingleMail
X-SFDC-Interface: internal
X-Original-Sender: info@emjtpisc.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of info=emjtpisc.com__0-1r12zvjmnf8rqu.l9azxrxo3x5g2pzm@xqfk2ane5qjq38ec.gpawymg.8d-3trx3eag.um8.bnc.salesforce.com
 designates 161.71.6.232 as permitted sender) smtp.mailfrom="info=emjtpisc.com__0-1r12zvjmnf8rqu.l9azxrxo3x5g2pzm@xqfk2ane5qjq38ec.gpawymg.8d-3trx3eag.um8.bnc.salesforce.com"
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

------=_Part_1494_508150770.1648966967114
Content-Type: multipart/alternative; 
	boundary="----=_Part_1493_1738632582.1648966967114"

------=_Part_1493_1738632582.1648966967114
Content-Type: text/plain; charset="UTF-8"

Greetings,

We invite all interested project owners and investors to our project
financing programme.
I represent a financial company in Dubai, we are ready to
fund projects outside Dubai, in the form
of debt finance, We grant loans to both Corporate and private entities at a
low interest rate of 2% ROI per annum.
The terms are very flexible and interesting.

Kindly revert back if you have projects that need funding for further
discussion and negotiation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8YU9R000000000000000000000000000000000000000000000R9R31Y00ztLLVGN0TEuaMVq4oPjHGg%40sfdc.net.

------=_Part_1493_1738632582.1648966967114
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
	<title></title>
</head>
<body style=3D"height: auto; min-height: auto;">Greetings,<br />
<br />
We invite all interested project owners and investors to our project<br />
financing programme.<br />
I represent a financial company in Dubai, we are ready to<br />
fund projects outside Dubai, in the form<br />
of debt finance, We grant loans to both Corporate and private entities at a=
<br />
low interest rate of 2% ROI per annum.<br />
The terms are very flexible and interesting.<br />
<br />
Kindly revert back if you have projects that need funding for further<br />
discussion and negotiation</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/8YU9R00000000000000000000000000000000000000000=
0000R9R31Y00ztLLVGN0TEuaMVq4oPjHGg%40sfdc.net?utm_medium=3Demail&utm_source=
=3Dfooter">https://groups.google.com/d/msgid/clang-built-linux/8YU9R0000000=
00000000000000000000000000000000000000R9R31Y00ztLLVGN0TEuaMVq4oPjHGg%40sfdc=
.net</a>.<br />

------=_Part_1493_1738632582.1648966967114--

------=_Part_1494_508150770.1648966967114--
