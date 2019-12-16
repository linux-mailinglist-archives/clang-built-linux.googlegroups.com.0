Return-Path: <clang-built-linux+bncBD66FMGZA4IKPFXA54CRUBBG4D5AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 759AE121E96
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Dec 2019 23:54:32 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id p12sf5713555qtu.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Dec 2019 14:54:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576536871; cv=pass;
        d=google.com; s=arc-20160816;
        b=EQ3zMzeIlBWZZovynNtGzxjXEp8hFPV9FypmiVGkS2uFv9cdw8ZN/3W0v4mIRRBJd7
         MKgssqONEDu+BmvVzjbPKZiDPPTVK0ajOsWtP5+wZwhIwm6tGgwkmYpAmYJcfO106nAe
         CsHzymMNY72Eh4GnwiUjI7bjtJgx4US9BMBlfbXMnYRKveh4YZYQRDQcZLWfh5F7bTsR
         Ox6TnJXl7UXBYe0nUAgQ+cIFhgfrbyoMd0l62gBeOZrhMOsGOWfHioub8ZwgBkRf7aea
         JAXGtMjvxrtaglg9Hv8aPXKL3qi0LW/A9fc5tx1/XL091vg0jsQ2Uk0stocSjldoJmB2
         47Zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:date:message-id
         :references:reply-to:mime-version:dkim-signature;
        bh=PsHQQHbMU39SvhpBPRUPK6bezp3q6b4bs9YB81iys9M=;
        b=KMzx7pVzHAMgB49Znc4qcIYiItpAFZm3TimlYk0yCnHUw8+eZ3gaPtDSu5/qrx5ecK
         vJVdFxSaAB1UuNh0ImSrQr0n7vHxlal6NPXA14Q6mMlgDBkxjNFsD3O5eCrLG4yU7Oxn
         Z3rR2ni9pdYZoEFII7f/qq+qQ90UbJqdTxXqWoHjmCzwGsonrdAkzo2TCm236AokyL/5
         7ZHbZAPFdcnjvTQmBdY3Wuo3YVoAdsNlU2K1NiyJm2Gi9hDtwakxDLoW/bdt2I8QZn7a
         iFttzb7ESfIEG9g6YFqw4y2ZiN5bTPh6UaVeqJ27ZUn2RsLet0ChPrQ+30xLi8Ts/7FW
         6Biw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M5AHI6Yu;
       spf=pass (google.com: domain of 3jgv4xqukerm57au7z77z4x.v75v4t6z-ud14c-416dgz77z4xza7d8b.v75@doclist.bounces.google.com designates 2607:f8b0:4864:20::c46 as permitted sender) smtp.mailfrom=3Jgv4XQUKERM57Au7z77z4x.v75v4t6z-uD14C-416DGz77z4xzA7D8B.v75@doclist.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:reply-to:references:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PsHQQHbMU39SvhpBPRUPK6bezp3q6b4bs9YB81iys9M=;
        b=AHizZEHvMKtX+J1s2OvuG9zShOaa3WGPmhcW9QAd7UhQXZBdzzraioxQr0QT+5CLcU
         6f88VIw7IS3kHn2sU3vKIYgA9ASFzVWPn16g+6GldG7EUt8s/amAgxC3wZZPdhLbaAXt
         X9KfyL5hueFrsOAwt95yxo2j1JlVRWAslNtDtm5QEku+cS2JDWyA5OXC+1FR8SVyWdgd
         iynGTuaPYMBWtUKb93xPS+Us5kVMNKdjastFbYt+VOmXrL2fcEHEC/qrmY1+dlaGjILf
         tCSu6E9ZiGXBB79hokwVPzjYWQ9oP4BB7zcCMX3RtNGGVG73TaMRkMElXkxB6AE4DW5e
         ojCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:references:message-id:date
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PsHQQHbMU39SvhpBPRUPK6bezp3q6b4bs9YB81iys9M=;
        b=tnjqxOV20AOvE17LwrNa0hWYWvWRydzhSSZrJ5ukf5QmtrpuDALAn6bodwiBuSYE/h
         5srvPQJZ1y/VKC/nISqCBtBhNaEdqNW6/yNpQ52C/fohVhRjThCCDzanj982hcVHVDMD
         u+eQeL3pvRqKIk3JoLZKqfCr8DaMYP3XoJVUCTq9E+KdH9TYn+jrySz/hQoqIRsd4N01
         WUbfdQnVMckWkh5cFicQ13268YK54/wWIQE18vgIHgR3rfDDvMWkpMwa9ptfl6cSGeQ2
         D8T0bGKVikF0VCId6Bw8vNj3lL8Zv+PY/IfPEKIYw057MWct4AwY4+9jIkOsm+6S6V+S
         lb1Q==
X-Gm-Message-State: APjAAAXw2N+1tYPbLq2hJJgDKAPA3mCa0RFshp6V/tp3wVl2nYFEF9vy
	F0P/aEIeidyR9mGNjd7vHqw=
X-Google-Smtp-Source: APXvYqznUSenOZTnSLTaQG/DFrza+ggtBtwKb2ua2A+n20fIjV6wTo8XCBMh497SvY47e/NvOnqnmA==
X-Received: by 2002:ac8:5206:: with SMTP id r6mr1731658qtn.214.1576536871319;
        Mon, 16 Dec 2019 14:54:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9ec3:: with SMTP id h186ls6000990qke.3.gmail; Mon, 16
 Dec 2019 14:54:31 -0800 (PST)
X-Received: by 2002:a37:8e45:: with SMTP id q66mr1947150qkd.129.1576536870947;
        Mon, 16 Dec 2019 14:54:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576536870; cv=none;
        d=google.com; s=arc-20160816;
        b=JmXOgXkqBHH/NlSQAE3g9y/Z6Ep8LLwRSiIlQoUmA8LoOoaz9az2w9MAvAYpZHZ2ui
         CNN6D4YlOanrHQl/78TI2XInbq9xGYEXb7YhWiR55AQTbUEDn11OssCRRbm1S1ZH+5YR
         hN7JsRuftMc/V722ShmYJJ4nF7ApETDEGVo0iVZRsAW+fku9GhqeBn/UVugE8PrGOt/E
         Xowurwzzj9gIOB3y0luMSnTE6jSOU+Fy06vYBu7WCx2l09YaYwdemodp/ApQbO1RQPPo
         Z9RnH0LJLrghMgl0yc5xH6mBOZ0EM5SxWm3Aji8rvTiyVvDphihhQcNDLmfqntOtbLuR
         cqhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:references:reply-to:mime-version
         :dkim-signature;
        bh=dW+ruv2GqJ7m4YT8mew7eWfr0/oMhz1a3XvBJDjIR+c=;
        b=E0SkhklwUtj0i6yL6xl5TchLs3W2eF1EwxXroE4f7grz55WhZ8shxnZS3pEXwhqaJ3
         LMEyz2vkttG7re2IPbo6tWyRKHiabdxZ7mOtPy3fZ0FzDaELc21w4uNM9kVOtqT2a+f5
         CeJYsaJGUm0jOPp48HQXRV2tW7+XPC+DINwGul5REWBWC2Qfo0Qf7hp/ImTZzRcfSfCI
         9Bi1snAgES5J61cP9eSqUqO5TRew3eNrkfL+Qv4VTiOVQFmmQ2qmuVf/IS4woHit44d/
         gj/8U/LtlJeaXOmoEZJjAJZcMSLyqi3irevNleonmoGuvu1bgHz/wAlGkJdzim9jbntM
         pY9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M5AHI6Yu;
       spf=pass (google.com: domain of 3jgv4xqukerm57au7z77z4x.v75v4t6z-ud14c-416dgz77z4xza7d8b.v75@doclist.bounces.google.com designates 2607:f8b0:4864:20::c46 as permitted sender) smtp.mailfrom=3Jgv4XQUKERM57Au7z77z4x.v75v4t6z-uD14C-416DGz77z4xzA7D8B.v75@doclist.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yw1-xc46.google.com (mail-yw1-xc46.google.com. [2607:f8b0:4864:20::c46])
        by gmr-mx.google.com with ESMTPS id y2si343682qtj.5.2019.12.16.14.54.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2019 14:54:30 -0800 (PST)
Received-SPF: pass (google.com: domain of 3jgv4xqukerm57au7z77z4x.v75v4t6z-ud14c-416dgz77z4xza7d8b.v75@doclist.bounces.google.com designates 2607:f8b0:4864:20::c46 as permitted sender) client-ip=2607:f8b0:4864:20::c46;
Received: by mail-yw1-xc46.google.com with SMTP id q185so3822726ywe.3
        for <clang-built-linux@googlegroups.com>; Mon, 16 Dec 2019 14:54:30 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a0d:df57:: with SMTP id i84mr21060213ywe.345.1576536870156;
 Mon, 16 Dec 2019 14:54:30 -0800 (PST)
Reply-To: Bill Wendling <morbo@google.com>
X-No-Auto-Attachment: 1
References: <f4ef922f-b364-468f-b75f-ac4df1609191@docs-share.google.com>
Message-ID: <0000000000001f84280599da18e4@google.com>
Date: Mon, 16 Dec 2019 22:54:30 +0000
Subject: Clang-Built Linux Meetup - Invitation to edit
From: "'Bill Wendling (via Google Sites)' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000001f84130599da18e1"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=M5AHI6Yu;       spf=pass
 (google.com: domain of 3jgv4xqukerm57au7z77z4x.v75v4t6z-ud14c-416dgz77z4xza7d8b.v75@doclist.bounces.google.com
 designates 2607:f8b0:4864:20::c46 as permitted sender) smtp.mailfrom=3Jgv4XQUKERM57Au7z77z4x.v75v4t6z-uD14C-416DGz77z4xzA7D8B.v75@doclist.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: "Bill Wendling (via Google Sites)" <morbo@google.com>
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

--0000000000001f84130599da18e1
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

I've shared an item with you:

Clang-Built Linux Meetup
https://sites.google.com/s/1AW97JDMj8Q8K9dnWYEm8DbIV0XF2pvfU/edit?ts=5df80b26

It's not an attachment -- it's stored online. To open this item, just click  
the link above.

The Clang-Built Linux Meetup Schedule.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0000000000001f84280599da18e4%40google.com.

--0000000000001f84130599da18e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><script type=3D"application/json" data-scope=3D"in=
boxmarkup">{"publisher":{"api_key":"1e6ef4c2b3e67680225868caeb59b7ad","name=
":"Google Drive"},"api_version":"1.0","updates":{"snippets":[{"icon":"DESCR=
IPTION","message":"Bill Wendling : The Clang-Built Linux Meetup Schedule."}=
],"action":{"name":"Open","url":"https://sites.google.com/s/1AW97JDMj8Q8K9d=
nWYEm8DbIV0XF2pvfU/edit?ts\u003d5df80b26"}},"entity":{"main_image_url":"htt=
ps://www.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/smartmail/bt_googl=
e_drive_1600dp_r2.png","external_key":"1AW97JDMj8Q8K9dnWYEm8DbIV0XF2pvfU","=
avatar_image_url":"https://www.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71=
C11/smartmail/bt_google_drive_avatar_224dp_r1.png","subtitle":"shared by Bi=
ll Wendling","action":{"name":"Open","url":"https://sites.google.com/s/1AW9=
7JDMj8Q8K9dnWYEm8DbIV0XF2pvfU/edit"},"title":"Clang-Built Linux Meetup"}}</=
script><div style=3D"width: 100%; padding: 24px 0 16px 0; background-color:=
 #f5f5f5; text-align: center;"><div style=3D"display: inline-block; width: =
90%; max-width: 680px;min-width: 280px; text-align: left; font-family: Robo=
to,Arial,Helvetica,sans-serif;"><div style=3D"height: 0px;" dir=3D"ltr"></d=
iv><div style=3D"display: block; padding: 0 2px;"><div style=3D"display: bl=
ock; background: #fff; height: 2px;"></div></div><div style=3D"border-left:=
 1px solid #f0f0f0; border-right: 1px solid #f0f0f0;"><div style=3D"padding=
: 24px 32px 24px 32px; background:#fff; border-right: 1px solid #eaeaea; bo=
rder-left: 1px solid #eaeaea;" dir=3D"ltr"><div style=3D"font-size: 14px; l=
ine-height: 18px; color: #444;"><a href=3D"mailto:morbo@google.com" style=
=3D"color:inherit;text-decoration:none">Bill Wendling</a> has invited you t=
o <b>edit</b> the following site:</div><div style=3D"height: 10px;"></div><=
div style=3D"font-size: 18px; display: table;"><div style=3D"display: table=
-row; border-bottom: 4px solid #fff;"><span style=3D"display: table-cell;">=
<div style=3D"height: 32px;"><img src=3D"https://ssl.gstatic.com/docs/docum=
ents/share/images/services/atari-1.png" aria-label=3D"Item" style=3D"vertic=
al-align: middle; max-width: 24px;"/></div></span><span style=3D"display: t=
able-cell; padding-left: 12px; word-break: break-word;"><a href=3D"https://=
sites.google.com/s/1AW97JDMj8Q8K9dnWYEm8DbIV0XF2pvfU/edit?ts=3D5df80b26" st=
yle=3D"color: #3367d6; text-decoration: none; vertical-align: middle;">Clan=
g-Built Linux Meetup</a><div itemprop=3D"action" itemscope itemtype=3D"http=
://schema.org/ViewAction"><meta itemprop=3D"url" content=3D"https://sites.g=
oogle.com/s/1AW97JDMj8Q8K9dnWYEm8DbIV0XF2pvfU/edit?ts=3D5df80b26"></div></s=
pan></div></div><div style=3D"height: 16px;"></div><div style=3D"height: 1p=
x; background-color: #eee;"></div><div style=3D"height: 24px;"></div><div s=
tyle=3D"display: table-row;"><img style=3D"display: table-cell;" width=3D"5=
0" src=3D"https://drive.google.com/c/photos/public/AIbEiAIAAABECOeX45-qvIqX=
0QEiC3ZjYXJkX3Bob3RvKig1Yzg2ZTQxNjliODkzYTIzMGEwNmExZTcyOWFmMDgxNDZhOTEwNTk=
4MAEMGzN7YEwzBsbcGWIikny_fD1K-g" alt=3D"Sender&#39;s profile photo"><span s=
tyle=3D"display: table-cell; vertical-align: top; padding-left: 16px; font-=
size: 13px; line-height: 18px; max-width: 496px; color: #262626;">The Clang=
-Built Linux Meetup Schedule.</span></div><div style=3D"height: 32px;"></di=
v><div><a href=3D"https://sites.google.com/s/1AW97JDMj8Q8K9dnWYEm8DbIV0XF2p=
vfU/edit?ts=3D5df80b26" target=3D"_blank" style=3D"background-color: #4d90f=
e; border: 1px solid #3079ed; border-radius: 2px; color: white; display: in=
line-block; font: bold 11px Roboto,Arial,Helvetica,sans-serif; height: 29px=
; line-height: 29px; min-width: 54px; outline: 0px; padding: 0 8px; text-al=
ign: center; text-decoration: none">Open</a></div></div></div><table style=
=3D"width: 100%; border-collapse: collapse;" role=3D"presentation"><tr><td =
style=3D"padding: 0px;"><table style=3D"border-collapse: collapse; width: 3=
px;" role=3D"presentation"><tr height=3D"1"><td width=3D"1" bgcolor=3D"#f0f=
0f0" style=3D"padding: 0px;"></td><td width=3D"1" bgcolor=3D"#eaeaea" style=
=3D"padding: 0px;"></td><td width=3D"1" bgcolor=3D"#e5e5e5" style=3D"paddin=
g: 0px;"></td></tr><tr height=3D"1"><td width=3D"1" bgcolor=3D"#f0f0f0" sty=
le=3D"padding: 0px;"></td><td width=3D"1" bgcolor=3D"#eaeaea" style=3D"padd=
ing: 0px;"></td><td width=3D"1" bgcolor=3D"#eaeaea" style=3D"padding: 0px;"=
></td></tr><tr height=3D"1"><td width=3D"1" bgcolor=3D"#f5f5f5" style=3D"pa=
dding: 0px;"></td><td width=3D"1" bgcolor=3D"#f0f0f0" style=3D"padding: 0px=
;"></td><td width=3D"1" bgcolor=3D"#f0f0f0" style=3D"padding: 0px;"></td></=
tr></table></td><td style=3D"width: 100%; padding: 0px;"><div style=3D"heig=
ht: 1px; width: auto; border-top: 1px solid #ddd; background:#eaeaea; borde=
r-bottom: 1px solid #f0f0f0;"></div></td><td style=3D"padding: 0px;"><table=
 style=3D"border-collapse: collapse; width: 3px;" role=3D"presentation"><tr=
 height=3D"1"><td width=3D"1" bgcolor=3D"#e5e5e5" style=3D"padding: 0px;"><=
/td><td width=3D"1" bgcolor=3D"#eaeaea" style=3D"padding: 0px;"></td><td wi=
dth=3D"1" bgcolor=3D"#f0f0f0" style=3D"padding: 0px;"></td></tr><tr height=
=3D"1"><td width=3D"1" bgcolor=3D"#eaeaea" style=3D"padding: 0px;"></td><td=
 width=3D"1" bgcolor=3D"#eaeaea" style=3D"padding: 0px;"></td><td width=3D"=
1" bgcolor=3D"#f0f0f0" style=3D"padding: 0px;"></td></tr><tr height=3D"1"><=
td width=3D"1" bgcolor=3D"#f0f0f0" style=3D"padding: 0px;"></td><td width=
=3D"1" bgcolor=3D"#f0f0f0" style=3D"padding: 0px;"></td><td width=3D"1" bgc=
olor=3D"#f5f5f5" style=3D"padding: 0px;"></td></tr></table></td></tr></tabl=
e><table style=3D"padding: 14px 10px 0 10px;" role=3D"presentation" dir=3D"=
ltr"><tr><td style=3D"width: 100%; font:11px Roboto,Arial,Helvetica,sans-se=
rif; color:#646464; line-height: 20px; min-height: 40px; vertical-align: mi=
ddle;">Google Drive: Have all your files within reach from any device. <br/=
>Google LLC, 1600 Amphitheatre Parkway, Mountain View, CA 94043, USA</td><t=
d style=3D"padding-left: 20px; vertical-align: middle;"><a href=3D"http://d=
rive.google.com" target=3D"_blank"><img src=3D"https://www.gstatic.com/imag=
es/branding/googlelogo/1x/googlelogo_tm_black54_color_96x40dp.png" width=3D=
"96" alt=3D"Logo for Google Sites" border=3D"0"></a></td></tr></table></div=
></div></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/0000000000001f84280599da18e4%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/0000000000001f84280599da18e4%40google.com</a>.<br />

--0000000000001f84130599da18e1--
