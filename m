Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFXL6TYQKGQE7Q74T6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E66155530
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Feb 2020 11:01:59 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id v134sf764779vkd.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 Feb 2020 02:01:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581069718; cv=pass;
        d=google.com; s=arc-20160816;
        b=RykQEJpRDIL7txzBEIARmDfMTf5zgIxECT1D8XD51U5uFin436m2bF6Nj+knfoznMv
         MvH/8aJXIZfZqddF6iQcxlOBVsq4tm3HBpTEvGrQCpBIivSv3OFJpqqoW1ymZAsai4ze
         TYDza/10mUjYgfjDS2HjWLCyQSSE2n+L0AxsmfTusBcUzasVC+LoQ+GzGC5REQ7Budp6
         aYNBVOTd3WuAe/RXfIdi69eO6Eoyj0DXS6uzPn6t/6Flu7NfKdudOZ6KUSO1OnhYun1a
         oUinAoWa5aeHZuO2AQ/pr+SoUlFrdcfXGPAc5TDaGnX5OAZD75GFiSqLqGszwoNGmseD
         Wdog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:date:message-id
         :references:reply-to:mime-version:dkim-signature;
        bh=wkiGAUiHykWcyqFWfy2HtNFpw5NB5JIyLGYgTZokyzo=;
        b=nOThP4gxXdPOF3krs1A1W2kjZ44crIDnI5fRuFgIJic9HZW2NDxmYfpMM4ZWuCh0ep
         lFhuCle53S7j7MiW5dpaCw3OnU9KGIsyyX6dRPKI0pq/jgjiXzyRE+QkziJ4n8pa9sjq
         9BFLmkWjMBp2RBMAV5BKV46xL5Eec2vlGF1eSdgxwOq0+iEFjr5f9lvmXdAurZ5b8zuy
         aNJQMp+Lh4PZJXgjj6bbM7MORj2K8HDYPMJOCU2cnDsyArM4j9cZjdDdJk84vZPgb2jk
         /mKoxpvsfPgeQxDG4Sq1Wkeofk8f2zxW+XtmmOjwuscnSKMZAsttvJl/HzUgEUjh9dPA
         Jogg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wAdUb9xx;
       spf=pass (google.com: domain of 3ltu9xgwkaowbrsgoizbwsfguccuzs.qca@doclist.bounces.google.com designates 2607:f8b0:4864:20::a45 as permitted sender) smtp.mailfrom=3lTU9XgwKAOwbRSgOiZbWSfgUccUZS.Qca@doclist.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:reply-to:references:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wkiGAUiHykWcyqFWfy2HtNFpw5NB5JIyLGYgTZokyzo=;
        b=acpX6IzrDhlCPCyJZC0rRd8gyT/BVpBUKSJ3LmV0yHe50aqrqROEyqH88qaTmZLAvs
         5JSCT/WxiYeGQfJxKklrlKUiM4Agfr/Pgq0gea1dH2yu/U+LvwAz71JwpCeSlDVXXh7L
         mGcTPMzHQCP2LOYPnagCgQ+N7c9ULd1EhNc7orjVHPDy4t12E0axum8f16ijW+6/CNf2
         YYm+Fg9MGYE3zlvF6KQPnNEyxiTvhYhxYUhnbgb4ky6Ou33S3lFpMte851j/J4wlnMHt
         vy9PUAqzUkTaJbDuxaKSSOpCEU2aMTLkO46NunmuLm1KBBTd1HPpdUS+GBJrKaFZuMZJ
         AkoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:references:message-id:date
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wkiGAUiHykWcyqFWfy2HtNFpw5NB5JIyLGYgTZokyzo=;
        b=E1wRFxCCNZnkaJwKLcN+IzDykijq/zNcNSTFptLTcKZ59W3EJSA3pNo4f+B7iRCYTq
         A1OSzCSbUGuVOPuUKxpEKevdH18ICoiA5mUvPwdhlcL5TilJm3Lr3GAYiQNIZjUIj4Is
         WkENhIVykCoNX3tVYey6BnZ/DzP41WClQ4olOq3qcfxX4oxaOsBR8vb8+ILBDqRoV5wl
         ghMij03kLFkoxLPcW4/uOtEn3EXM+zOW5wMN3vlv6xz5yosH7WLxD3PL1dGy3kKgP9Yh
         e30ZSTA6USBKXCZkGnCB/bRueWIi066UFbRxEtW8nVBAOJdylk7BTDxMrTWzmHb6RFAa
         3znQ==
X-Gm-Message-State: APjAAAWBt6xv3my6Il3wRQrGusS3fXsKHBkyJ/KZon2/1MkcwUgc/joW
	T63zFmoggG6dHnNbDGPKFqs=
X-Google-Smtp-Source: APXvYqxa9LYvCF02ozLGAUtLAHY/jeCKKxOfoxtdO2a+4dehuw2V65v4zEllf7qJL3pPIK4qmLbGqg==
X-Received: by 2002:ab0:14a2:: with SMTP id d31mr4366205uae.106.1581069718601;
        Fri, 07 Feb 2020 02:01:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c805:: with SMTP id u5ls1298185vsk.2.gmail; Fri, 07 Feb
 2020 02:01:58 -0800 (PST)
X-Received: by 2002:a67:8c8a:: with SMTP id o132mr4452627vsd.111.1581069718164;
        Fri, 07 Feb 2020 02:01:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581069718; cv=none;
        d=google.com; s=arc-20160816;
        b=kOtIaF/PPJpNjDXG9y/GIfqCSfZtaSJW+cgoK2J97qceoZZa+O3fMsgVjLH/4Jq0TC
         dhIICHpZ6cgFYhsv3FD41fpEJn3oN5FC+05WIMhF7QaF3VQ9Eh1rc7jIdIdqmd0r/6Gj
         Nxo560xM6lWbKl2KuFsBrGbBsrmWvWnshwFNUZMtVSxo7v3mvM3ae4xjoRk3wfCXUjRT
         R2N0dHBmJlrOyFzALGaswSpwaIpxoWD3GcYXwAg8Lggjx2pbE0PRuwZlQpYisoHaZAO+
         lrKMOrkQxGZ3qi9janaKPyQUBMCJahcz1r4/RVlUJvYC5AUoNRg782I4vqEXrnOLxHxw
         mTFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:references:reply-to:mime-version
         :dkim-signature;
        bh=2wZ3TpBqMxU7yTgU+Hh7uZwANlh4B/q/W/9m8GxLqJk=;
        b=rXlnLn5rA5AekSAcfX8tinjeueEIAs6fN285ojEKYhAb64ibQCOpufIgbP9z8ElQhx
         2NIV0d9GvIZD76oTzp7RYNu3G0PoGEyezFHIQAYz7a3Hz1wX7w44rbJ1jlMKhElAjxhL
         57y/z4o4a0o3SehkMhB8+thNVK1jD4RCcVLrtjDtrcOqPOMq52MCTktFsa1Fdm0oa3tr
         L3UmFKaoK7l0wO0a5j67EJ4GVeCExETx4MMhUV9PxZewulGSYKTaa9vg/OrewbUuc9MD
         Bw97L6CqgxeNEZk8FRK1P8BGP+SQv9QgYuLRGiXEK47Rxdu+jzpyZaO5VlJAv0+o5Xyt
         eTKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wAdUb9xx;
       spf=pass (google.com: domain of 3ltu9xgwkaowbrsgoizbwsfguccuzs.qca@doclist.bounces.google.com designates 2607:f8b0:4864:20::a45 as permitted sender) smtp.mailfrom=3lTU9XgwKAOwbRSgOiZbWSfgUccUZS.Qca@doclist.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa45.google.com (mail-vk1-xa45.google.com. [2607:f8b0:4864:20::a45])
        by gmr-mx.google.com with ESMTPS id h6si116904vkc.3.2020.02.07.02.01.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2020 02:01:58 -0800 (PST)
Received-SPF: pass (google.com: domain of 3ltu9xgwkaowbrsgoizbwsfguccuzs.qca@doclist.bounces.google.com designates 2607:f8b0:4864:20::a45 as permitted sender) client-ip=2607:f8b0:4864:20::a45;
Received: by mail-vk1-xa45.google.com with SMTP id m25so757604vko.19
        for <clang-built-linux@googlegroups.com>; Fri, 07 Feb 2020 02:01:58 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a67:e952:: with SMTP id p18mr4645178vso.61.1581069717376;
 Fri, 07 Feb 2020 02:01:57 -0800 (PST)
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
X-No-Auto-Attachment: 1
References: <4139d320-6c28-49eb-9b6b-f962a331f05b@docs-share.google.com>
Message-ID: <000000000000def0bb059df97ac6@google.com>
Date: Fri, 07 Feb 2020 10:01:57 +0000
Subject: CBL 2020 brainstorming sessions - Invitation to edit
From: "'Nick Desaulniers (via Google Docs)' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000def0a4059df97ac3"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wAdUb9xx;       spf=pass
 (google.com: domain of 3ltu9xgwkaowbrsgoizbwsfguccuzs.qca@doclist.bounces.google.com
 designates 2607:f8b0:4864:20::a45 as permitted sender) smtp.mailfrom=3lTU9XgwKAOwbRSgOiZbWSfgUccUZS.Qca@doclist.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: "Nick Desaulniers (via Google Docs)" <ndesaulniers@google.com>
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

--000000000000def0a4059df97ac3
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

I've shared an item with you:

CBL 2020 brainstorming sessions
https://docs.google.com/document/d/1DjGOZPBrfjQkhivvPaEe871dpnBYDEEg94QB_q8oovE/edit?usp=sharing&ts=5e3d3595

It's not an attachment -- it's stored online. To open this item, just click  
the link above.

hello world

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000def0bb059df97ac6%40google.com.

--000000000000def0a4059df97ac3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><script type=3D"application/json" data-scope=3D"in=
boxmarkup">{"publisher":{"api_key":"1e6ef4c2b3e67680225868caeb59b7ad","name=
":"Google Docs"},"api_version":"1.0","updates":{"snippets":[{"icon":"DESCRI=
PTION","message":"Nick Desaulniers : hello world "}],"action":{"name":"Open=
","url":"https://docs.google.com/document/d/1DjGOZPBrfjQkhivvPaEe871dpnBYDE=
Eg94QB_q8oovE/edit?usp\u003dsharing_eid\u0026ts\u003d5e3d3595"}},"entity":{=
"main_image_url":"https://ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C=
11/smartmail/bt_google_docs_1600dp_r2.png","external_key":"1DjGOZPBrfjQkhiv=
vPaEe871dpnBYDEEg94QB_q8oovE","avatar_image_url":"https://www.gstatic.com/b=
t/C3341AA7A1A076756462EE2E5CD71C11/smartmail/bt_google_docs_avatar_224dp_r1=
.png","subtitle":"shared by Nick Desaulniers","action":{"name":"Open in Doc=
s","url":"https://docs.google.com/document/d/1DjGOZPBrfjQkhivvPaEe871dpnBYD=
EEg94QB_q8oovE/edit"},"title":"CBL 2020 brainstorming sessions"}}</script><=
div style=3D"width: 100%; padding: 24px 0 16px 0; background-color: #f5f5f5=
; text-align: center;"><div style=3D"display: inline-block; width: 90%; max=
-width: 680px;min-width: 280px; text-align: left; font-family: Roboto,Arial=
,Helvetica,sans-serif;"><div style=3D"height: 0px;" dir=3D"ltr"></div><div =
style=3D"display: block; padding: 0 2px;"><div style=3D"display: block; bac=
kground: #fff; height: 2px;"></div></div><div style=3D"border-left: 1px sol=
id #f0f0f0; border-right: 1px solid #f0f0f0;"><div style=3D"padding: 24px 3=
2px 24px 32px; background:#fff; border-right: 1px solid #eaeaea; border-lef=
t: 1px solid #eaeaea;" dir=3D"ltr"><div style=3D"font-size: 14px; line-heig=
ht: 18px; color: #444;"><a href=3D"mailto:ndesaulniers@google.com" style=3D=
"color:inherit;text-decoration:none">Nick Desaulniers</a> has invited you t=
o <b>edit</b> the following document:</div><div style=3D"height: 10px;"></d=
iv><div style=3D"font-size: 18px; display: table;"><div style=3D"display: t=
able-row; border-bottom: 4px solid #fff;"><span style=3D"display: table-cel=
l;"><div style=3D"height: 32px;"><img src=3D"https://ssl.gstatic.com/docs/d=
ocuments/share/images/services/document-4.png" aria-label=3D"Document" styl=
e=3D"vertical-align: middle; max-width: 24px;"/></div></span><span style=3D=
"display: table-cell; padding-left: 12px; word-break: break-word;"><a href=
=3D"https://docs.google.com/document/d/1DjGOZPBrfjQkhivvPaEe871dpnBYDEEg94Q=
B_q8oovE/edit?usp=3Dsharing_eil&amp;ts=3D5e3d3595" style=3D"color: #3367d6;=
 text-decoration: none; vertical-align: middle;">CBL 2020 brainstorming ses=
sions</a><div itemprop=3D"action" itemscope itemtype=3D"http://schema.org/V=
iewAction"><meta itemprop=3D"url" content=3D"https://docs.google.com/docume=
nt/d/1DjGOZPBrfjQkhivvPaEe871dpnBYDEEg94QB_q8oovE/edit?usp=3Dsharing_eil&am=
p;ts=3D5e3d3595"></div></span></div></div><div style=3D"height: 16px;"></di=
v><div style=3D"height: 1px; background-color: #eee;"></div><div style=3D"h=
eight: 24px;"></div><div style=3D"display: table-row;"><img style=3D"displa=
y: table-cell;" width=3D"50" src=3D"https://drive.google.com/c/photos/publi=
c/AIbEiAIAAABDCNO_8PC5ko7haSILdmNhcmRfcGhvdG8qKGI3ZmI3YTg2MDRiZDkzYmUyYmIwO=
GMyMzBhZjZiOTkyMWIzNmFlZDAwAd0EYprEAQ8UFw57N6Ot55AuJ75o" alt=3D"Sender&#39;=
s profile photo"><span style=3D"display: table-cell; vertical-align: top; p=
adding-left: 16px; font-size: 13px; line-height: 18px; max-width: 496px; co=
lor: #262626;">hello world<br></span></div><div style=3D"height: 32px;"></d=
iv><div><a href=3D"https://docs.google.com/document/d/1DjGOZPBrfjQkhivvPaEe=
871dpnBYDEEg94QB_q8oovE/edit?usp=3Dsharing_eip&amp;ts=3D5e3d3595" target=3D=
"_blank" style=3D"background-color: #4d90fe; border: 1px solid #3079ed; bor=
der-radius: 2px; color: white; display: inline-block; font: bold 11px Robot=
o,Arial,Helvetica,sans-serif; height: 29px; line-height: 29px; min-width: 5=
4px; outline: 0px; padding: 0 8px; text-align: center; text-decoration: non=
e">Open in Docs</a></div></div></div><table style=3D"width: 100%; border-co=
llapse: collapse;" role=3D"presentation"><tr><td style=3D"padding: 0px;"><t=
able style=3D"border-collapse: collapse; width: 3px;" role=3D"presentation"=
><tr height=3D"1"><td width=3D"1" bgcolor=3D"#f0f0f0" style=3D"padding: 0px=
;"></td><td width=3D"1" bgcolor=3D"#eaeaea" style=3D"padding: 0px;"></td><t=
d width=3D"1" bgcolor=3D"#e5e5e5" style=3D"padding: 0px;"></td></tr><tr hei=
ght=3D"1"><td width=3D"1" bgcolor=3D"#f0f0f0" style=3D"padding: 0px;"></td>=
<td width=3D"1" bgcolor=3D"#eaeaea" style=3D"padding: 0px;"></td><td width=
=3D"1" bgcolor=3D"#eaeaea" style=3D"padding: 0px;"></td></tr><tr height=3D"=
1"><td width=3D"1" bgcolor=3D"#f5f5f5" style=3D"padding: 0px;"></td><td wid=
th=3D"1" bgcolor=3D"#f0f0f0" style=3D"padding: 0px;"></td><td width=3D"1" b=
gcolor=3D"#f0f0f0" style=3D"padding: 0px;"></td></tr></table></td><td style=
=3D"width: 100%; padding: 0px;"><div style=3D"height: 1px; width: auto; bor=
der-top: 1px solid #ddd; background:#eaeaea; border-bottom: 1px solid #f0f0=
f0;"></div></td><td style=3D"padding: 0px;"><table style=3D"border-collapse=
: collapse; width: 3px;" role=3D"presentation"><tr height=3D"1"><td width=
=3D"1" bgcolor=3D"#e5e5e5" style=3D"padding: 0px;"></td><td width=3D"1" bgc=
olor=3D"#eaeaea" style=3D"padding: 0px;"></td><td width=3D"1" bgcolor=3D"#f=
0f0f0" style=3D"padding: 0px;"></td></tr><tr height=3D"1"><td width=3D"1" b=
gcolor=3D"#eaeaea" style=3D"padding: 0px;"></td><td width=3D"1" bgcolor=3D"=
#eaeaea" style=3D"padding: 0px;"></td><td width=3D"1" bgcolor=3D"#f0f0f0" s=
tyle=3D"padding: 0px;"></td></tr><tr height=3D"1"><td width=3D"1" bgcolor=
=3D"#f0f0f0" style=3D"padding: 0px;"></td><td width=3D"1" bgcolor=3D"#f0f0f=
0" style=3D"padding: 0px;"></td><td width=3D"1" bgcolor=3D"#f5f5f5" style=
=3D"padding: 0px;"></td></tr></table></td></tr></table><table style=3D"padd=
ing: 14px 10px 0 10px;" role=3D"presentation" dir=3D"ltr"><tr><td style=3D"=
width: 100%; font:11px Roboto,Arial,Helvetica,sans-serif; color:#646464; li=
ne-height: 20px; min-height: 40px; vertical-align: middle;">Google Docs: Cr=
eate and edit documents online. <br/>Google LLC, 1600 Amphitheatre Parkway,=
 Mountain View, CA 94043, USA<br/> You have received this email because som=
eone shared a document with you from Google Docs.</td><td style=3D"padding-=
left: 20px; vertical-align: middle;"><a href=3D"http://drive.google.com" ta=
rget=3D"_blank"><img src=3D"https://www.gstatic.com/images/branding/googlel=
ogo/1x/googlelogo_tm_black54_color_96x40dp.png" width=3D"96" alt=3D"Logo fo=
r Google Docs" border=3D"0"></a></td></tr></table></div></div></body></html=
>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/000000000000def0bb059df97ac6%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/000000000000def0bb059df97ac6%40google.com</a>.<br />

--000000000000def0a4059df97ac3--
